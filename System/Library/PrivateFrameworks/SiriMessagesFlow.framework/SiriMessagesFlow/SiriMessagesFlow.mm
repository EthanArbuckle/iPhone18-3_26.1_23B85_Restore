uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_267B969DC()
{
  sub_267EF78F8();

  return swift_deallocClassInstance();
}

void sub_267B96A1C()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v0;
  v334 = v5;
  v335 = v4;
  v311 = sub_267EF68A8();
  v6 = OUTLINED_FUNCTION_58(v311);
  v310 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_45_0();
  v309 = v11;
  OUTLINED_FUNCTION_26_2();
  v317 = sub_267EF7458();
  v12 = OUTLINED_FUNCTION_58(v317);
  v314 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_45_0();
  v315 = v17;
  OUTLINED_FUNCTION_26_2();
  v320 = sub_267EF4498();
  v18 = OUTLINED_FUNCTION_58(v320);
  v319 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_45_0();
  v322 = v24;
  OUTLINED_FUNCTION_26_2();
  v306 = sub_267EF4598();
  v25 = OUTLINED_FUNCTION_58(v306);
  v305 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_0_0();
  v304 = v30 - v29;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802293C8, &qword_267EFD168);
  v31 = OUTLINED_FUNCTION_58(v303);
  v302 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_45_0();
  v301 = v36;
  OUTLINED_FUNCTION_26_2();
  v37 = sub_267EF4C68();
  v38 = OUTLINED_FUNCTION_58(v37);
  v326 = v39;
  v327 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v298 - v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_99_1();
  v325 = sub_267EF4BE8();
  v46 = OUTLINED_FUNCTION_58(v325);
  v324 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_45_0();
  v328 = v51;
  OUTLINED_FUNCTION_26_2();
  v52 = sub_267EF6718();
  v53 = OUTLINED_FUNCTION_58(v52);
  v333 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6();
  v330 = v57;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_77_0();
  v329 = v59;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_45_0();
  v332 = v61;
  OUTLINED_FUNCTION_26_2();
  v336 = sub_267EF4C08();
  v62 = OUTLINED_FUNCTION_58(v336);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_66_2();
  sub_267B9AB18(&v338);
  v69 = v340;
  __swift_project_boxed_opaque_existential_0(&v338, v339);
  v70 = *(v69 + 24);
  v71 = OUTLINED_FUNCTION_54();
  v72(v71, v69);
  __swift_project_boxed_opaque_existential_0(v337, v337[3]);
  OUTLINED_FUNCTION_54();
  v73 = sub_267EF45A8();
  v75 = 0x280228000;
  v76 = &unk_267EFC000;
  v318 = v45;
  if (!v74)
  {
    v81 = v2;
    __swift_destroy_boxed_opaque_existential_0(v337);
    __swift_destroy_boxed_opaque_existential_0(&v338);
    goto LABEL_10;
  }

  v77 = v73;
  v78 = v74;
  __swift_destroy_boxed_opaque_existential_0(v337);
  __swift_destroy_boxed_opaque_existential_0(&v338);
  v79 = *(v3 + 352);
  if (v79)
  {
    v80 = v77 == *(v3 + 344) && v78 == v79;
    if (v80 || (sub_267EF9EA8() & 1) != 0)
    {
      v81 = v2;

LABEL_10:
      v82 = v336;
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_110_2();
  if (!v80)
  {
    OUTLINED_FUNCTION_0();
  }

  v81 = v2;
  v83 = sub_267EF8A08();
  __swift_project_value_buffer(v83, qword_280240FB0);
  OUTLINED_FUNCTION_54();

  v84 = sub_267EF89F8();
  v85 = sub_267EF95C8();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = OUTLINED_FUNCTION_48();
    v331 = v3;
    v87 = v86;
    v88 = OUTLINED_FUNCTION_52();
    *&v338 = v88;
    *v87 = 136315138;
    v89 = sub_267BA33E8(v77, v78, &v338);

    *(v87 + 4) = v89;
    _os_log_impl(&dword_267B93000, v84, v85, "#MessagesFlowDelegatePlugin new request started, requestId: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    OUTLINED_FUNCTION_32_0();
    v3 = v331;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  *(v3 + 360) = 0;
  sub_267B9CA00();
  v82 = v336;
  v76 = &unk_267EFC000;
  v75 = 0x280228000uLL;
LABEL_17:
  v90 = v64[2];
  v90(v1, v335, v82);
  v91 = v64[11];
  v92 = OUTLINED_FUNCTION_46_2();
  v94 = v93(v92);
  if (v94 == *MEMORY[0x277D5C128])
  {
    v95 = v64[12];
    v96 = OUTLINED_FUNCTION_46_2();
    v97(v96);
    v98 = v333;
    v99 = v75;
    v100 = v332;
    (v333[4])(v332, v1, v52);
    if (*(v99 + 2072) != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v101 = sub_267EF8A08();
    v102 = __swift_project_value_buffer(v101, qword_280240FB0);
    v103 = v98[2];
    v104 = v329;
    v103(v329, v100, v52);
    v336 = v102;
    v105 = v102;
    v106 = sub_267EF89F8();
    v107 = sub_267EF95C8();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = OUTLINED_FUNCTION_48();
      v109 = OUTLINED_FUNCTION_52();
      v331 = v3;
      v110 = v109;
      *&v338 = v109;
      *v108 = v76[9];
      sub_267BB4430(&qword_2802293D8, 255, MEMORY[0x277D5F458]);
      v105 = sub_267EF9E58();
      v112 = v111;
      v113 = v104;
      v114 = v333[1];
      v114(v113, v52);
      sub_267BA33E8(v105, v112, &v338);
      OUTLINED_FUNCTION_25_0();

      *(v108 + 4) = v105;
      OUTLINED_FUNCTION_91_4(&dword_267B93000, v106, v107, "MessagesFlowDelegatePlugin received an NLv3 intent: %s");
      __swift_destroy_boxed_opaque_existential_0(v110);
      v3 = v331;
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v137 = v104;
      v114 = v98[1];
      v114(v137, v52);
    }

    v103(v330, v332, v52);
    v138 = type metadata accessor for SmsNLv3Intent();
    OUTLINED_FUNCTION_27_4(v138);
    swift_allocObject();
    v139 = OUTLINED_FUNCTION_53_0();
    v140 = sub_267EC41AC(v139);
    if (v140)
    {
      sub_267C2C16C(v140, v3);
      OUTLINED_FUNCTION_53_0();

      v141 = OUTLINED_FUNCTION_100_1();
      (v114)(v141);
      if (!v105)
      {
        goto LABEL_41;
      }

      goto LABEL_93;
    }

    v163 = sub_267EF89F8();
    v164 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v164))
    {
      v165 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v165);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_90_0(v166, v167, v168, v169);
      OUTLINED_FUNCTION_40_0();
    }

    sub_267EF3768();
    v170 = OUTLINED_FUNCTION_100_1();
    (v114)(v170);
    goto LABEL_94;
  }

  if (v94 == *MEMORY[0x277D5C150])
  {
    v115 = v64[12];
    v116 = OUTLINED_FUNCTION_46_2();
    v117(v116);
    v118 = v324;
    v119 = v328;
    v120 = v325;
    (*(v324 + 32))(v328, v1, v325);
    OUTLINED_FUNCTION_110_2();
    if (!v80)
    {
      OUTLINED_FUNCTION_0();
    }

    v121 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v121, qword_280240FB0);
    v122 = v323;
    (*(v118 + 16))(v323, v119, v120);
    v123 = sub_267EF89F8();
    v124 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_85_0(v124))
    {
      v125 = OUTLINED_FUNCTION_48();
      v126 = v122;
      v127 = OUTLINED_FUNCTION_52();
      *&v338 = v127;
      *v125 = v76[9];
      v128 = sub_267EF4BC8();
      v331 = v3;
      v129 = v128;
      v131 = v130;
      v132 = *(v118 + 8);
      v133 = OUTLINED_FUNCTION_114_1();
      v132(v133);
      v134 = v129;
      v3 = v331;
      sub_267BA33E8(v134, v131, &v338);
      OUTLINED_FUNCTION_25_0();

      *(v125 + 4) = v126;
      OUTLINED_FUNCTION_121_0(&dword_267B93000, v135, v136, "MessagesFlowDelegatePlugin received a direct action request: %s");
      __swift_destroy_boxed_opaque_existential_0(v127);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v132 = *(v118 + 8);
      (v132)(v122, v120);
    }

    sub_267BA3ED0();
    v171 = OUTLINED_FUNCTION_54();
    (v132)(v171, v120);
    if (!v3)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

  v142 = *MEMORY[0x277D5C160];
  v331 = v3;
  if (v94 == v142)
  {
    v143 = v82;
    v144 = v326;
    (v64[12])(v1, v143);
    v145 = v81;
    v146 = v327;
    (*(v144 + 32))(v81, v1, v327);
    OUTLINED_FUNCTION_110_2();
    if (!v80)
    {
      OUTLINED_FUNCTION_0();
    }

    v147 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v147, qword_280240FB0);
    v148 = v318;
    v333 = *(v144 + 16);
    (v333)(v318, v81, v146);
    v332 = v75;
    v149 = sub_267EF89F8();
    v150 = sub_267EF95D8();
    v151 = OUTLINED_FUNCTION_85_0(v150);
    v152 = v321;
    if (v151)
    {
      v153 = OUTLINED_FUNCTION_48();
      v154 = OUTLINED_FUNCTION_52();
      v155 = v76;
      v156 = v154;
      *&v338 = v154;
      *v153 = v155[9];
      (v333)(v152, v148, v146);
      sub_267EF9098();
      v157 = v145;
      v158 = *(v144 + 8);
      v158(v148, v327);
      v159 = OUTLINED_FUNCTION_50_3();
      v162 = sub_267BA33E8(v159, v160, v161);
      v146 = v327;

      *(v153 + 4) = v162;
      v145 = v157;
      v152 = v321;
      _os_log_impl(&dword_267B93000, v149, v1, "MessagesFlowDelegatePlugin received .uso parse %s", v153, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v156);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v158 = *(v144 + 8);
      v158(v148, v146);
    }

    (v333)(v152, v145, v146);
    v194 = type metadata accessor for SmsNLv4Intent();
    OUTLINED_FUNCTION_27_4(v194);
    swift_allocObject();
    sub_267DD5530();
    if (!v195)
    {
      v221 = sub_267EF89F8();
      v222 = sub_267EF95E8();
      v223 = OUTLINED_FUNCTION_36(v222);
      v3 = v331;
      if (v223)
      {
        v224 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v224);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v225, v226, v227, v228, v229, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF3768();
      v230 = OUTLINED_FUNCTION_50_3();
      (v158)(v230);
      goto LABEL_94;
    }

    v196 = v195;
    v197 = sub_267DD3068();
    v3 = v331;
    if (v197)
    {
      v198 = sub_267DD8B50();
      if (v198 != 37)
      {
        sub_267D6C0D4(v198);
        if (v200 == 6647407 && v199 == 0xE300000000000000)
        {
        }

        else
        {
          v202 = sub_267EF9EA8();

          if ((v202 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        sub_267C2B120();
        if (v257)
        {
          v258 = v158;
          v259 = sub_267EF89F8();
          v260 = sub_267EF95C8();
          if (OUTLINED_FUNCTION_27(v260))
          {
LABEL_90:
            v282 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_61(v282);
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_90_0(v283, v284, v285, v286);
            OUTLINED_FUNCTION_40_0();
          }

LABEL_91:

          v287 = *(v3 + 192);
          (*(*(v3 + 200) + 8))(v335);
LABEL_98:

          v296 = OUTLINED_FUNCTION_50_3();
          v258(v296);
          goto LABEL_94;
        }
      }
    }

LABEL_80:
    if (sub_267DD3068())
    {
      sub_267C29838();
      if (v261)
      {
        v335 = v158;
        v262 = sub_267EF89F8();
        v263 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_27(v263))
        {
          v264 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v264);
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_90_0(v265, v266, v267, v268);
          OUTLINED_FUNCTION_40_0();
        }

        v269 = v301;
        sub_267EF7058();
        v270 = v302;
        v271 = v303;
        (*(v302 + 16))(v300, v269, v303);
        v272 = v304;
        sub_267EF4588();
        sub_267EF3798();

        (*(v305 + 8))(v272, v306);
        (*(v270 + 8))(v269, v271);
        v273 = OUTLINED_FUNCTION_50_3();
        v335(v273, v274);
        goto LABEL_94;
      }
    }

    sub_267DD3FD0();
    if ((v275 & 1) == 0)
    {

      sub_267C2F218(v288);

      v289 = sub_267C2DD40(v196, v3);

      v290 = OUTLINED_FUNCTION_50_3();
      (v158)(v290);
      if (!v289)
      {
LABEL_41:
        sub_267EF3768();
        goto LABEL_94;
      }

LABEL_93:

      sub_267EF3788();

      goto LABEL_94;
    }

    v258 = v158;
    v276 = sub_267EF89F8();
    v277 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v277))
    {
      v278 = OUTLINED_FUNCTION_32();
      *v278 = 0;
      _os_log_impl(&dword_267B93000, v276, v277, "MessagesFlowDelegatePlugin User asked a Mail request, checking feature flag...", v278, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v339 = &type metadata for Features;
    v340 = sub_267BAFCAC();
    LOBYTE(v338) = 6;
    v279 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(&v338);
    v259 = sub_267EF89F8();
    v280 = sub_267EF95C8();
    v281 = OUTLINED_FUNCTION_27(v280);
    if ((v279 & 1) == 0)
    {
      if (v281)
      {
        v291 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_61(v291);
        OUTLINED_FUNCTION_45();
        OUTLINED_FUNCTION_90_0(v292, v293, v294, v295);
        OUTLINED_FUNCTION_40_0();
      }

      sub_267EF3768();
      goto LABEL_98;
    }

    if (v281)
    {
      goto LABEL_90;
    }

    goto LABEL_91;
  }

  if (v94 == *MEMORY[0x277D5C138])
  {
    v172 = v64[12];
    v173 = OUTLINED_FUNCTION_46_2();
    v174(v173);
    v175 = v319;
    v176 = v75;
    v177 = v322;
    v178 = v320;
    (*(v319 + 32))(v322, v1, v320);
    if (*(v176 + 2072) != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v179 = sub_267EF8A08();
    v180 = __swift_project_value_buffer(v179, qword_280240FB0);
    v181 = *(v175 + 16);
    v182 = v313;
    v181(v313, v177, v178);
    v335 = v180;
    v183 = sub_267EF89F8();
    v184 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v184))
    {
      v185 = OUTLINED_FUNCTION_48();
      v333 = OUTLINED_FUNCTION_52();
      *&v338 = v333;
      *v185 = v76[9];
      v186 = v181;
      v187 = v182;
      v186(v316, v182, v178);
      v188 = v76;
      v189 = sub_267EF9098();
      v191 = v190;
      v192 = v187;
      v181 = v186;
      v336 = *(v175 + 8);
      v336(v192, v320);
      v193 = sub_267BA33E8(v189, v191, &v338);
      v178 = v320;

      *(v185 + 4) = v193;
      v76 = v188;
      _os_log_impl(&dword_267B93000, v183, v184, "#MessagesFlowDelegatePlugin received a client action parse: %s", v185, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v333);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v336 = *(v175 + 8);
      v336(v182, v178);
    }

    v231 = v315;
    sub_267EF4488();
    if (sub_267EF7448() == 0x73656D5F646E6573 && v232 == 0xEC00000065676173)
    {
    }

    else
    {
      v234 = sub_267EF9EA8();

      if ((v234 & 1) == 0)
      {
        v235 = v299;
        v236 = v317;
        (*(v314 + 16))(v299, v231, v317);
        v237 = sub_267EF89F8();
        v238 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_85_0(v238))
        {
          v239 = OUTLINED_FUNCTION_48();
          v240 = OUTLINED_FUNCTION_52();
          *&v338 = v240;
          *v239 = v76[9];
          v241 = sub_267EF7448();
          v243 = v242;
          v244 = OUTLINED_FUNCTION_96_0();
          v235(v244, v317);
          sub_267BA33E8(v241, v243, &v338);
          OUTLINED_FUNCTION_25_0();

          *(v239 + 4) = v241;
          OUTLINED_FUNCTION_121_0(&dword_267B93000, v245, v246, "#MessagesFlowDelegatePlugin unexpected client action toolId: %s");
          __swift_destroy_boxed_opaque_existential_0(v240);
          v231 = v315;
          OUTLINED_FUNCTION_32_0();
          v236 = v317;
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          v297 = OUTLINED_FUNCTION_96_0();
          v235(v297, v236);
        }

        v3 = v331;
        sub_267EF3768();
        v235(v231, v236);
        v336(v322, v320);
        goto LABEL_94;
      }
    }

    v249 = v316;
    v250 = v322;
    v181(v316, v322, v178);
    v3 = v331;
    sub_267B9AB18(&v338);
    v251 = v309;
    sub_267EF6898();
    type metadata accessor for SiriKitFlowFactoryImpl();
    v252 = OUTLINED_FUNCTION_49();
    v253 = v310;
    v254 = v308;
    v255 = v311;
    (*(v310 + 16))(v308, v251, v311);
    v256 = sub_267C2F4F4(v249, &v338, v254, v252);
    (*(v253 + 8))(v251, v255);
    *&v338 = v256;
    type metadata accessor for SendMessageShimFlow(0);
    sub_267BB4430(&qword_2802293D0, 255, type metadata accessor for SendMessageShimFlow);
    sub_267EF36E8();

    (*(v314 + 8))(v231, v317);
    v336(v250, v178);
    goto LABEL_93;
  }

  OUTLINED_FUNCTION_110_2();
  if (!v80)
  {
    OUTLINED_FUNCTION_0();
  }

  v203 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v203, qword_280240FB0);
  v204 = v312;
  v90(v312, v335, v82);
  v205 = sub_267EF89F8();
  v206 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v206))
  {
    v207 = OUTLINED_FUNCTION_48();
    v208 = OUTLINED_FUNCTION_52();
    v209 = v76;
    v210 = v208;
    *&v338 = v208;
    *v207 = v209[9];
    v90(v307, v204, v336);
    sub_267EF9098();
    v211 = OUTLINED_FUNCTION_97_1();
    v204(v211, v336);
    v212 = OUTLINED_FUNCTION_50_3();
    v215 = sub_267BA33E8(v212, v213, v214);

    *(v207 + 4) = v215;
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v216, v217, v218, v219, v220, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v210);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v247 = OUTLINED_FUNCTION_97_1();
    v204(v247, v82);
  }

  sub_267EF3768();
  v248 = OUTLINED_FUNCTION_46_2();
  (v204)(v248);
  v3 = v331;
LABEL_94:
  sub_267BA800C(v3);
  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30()
{
  v2 = v0[108];
  v3 = v0[106];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[100];
  v8 = v0[99];
  v9 = v0[98];
  v10 = v0[97];
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_71(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_26()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_36(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_99()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_30_3()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];
  v7 = v0[18];
  v8 = *(v0[31] + 8);
  return v0[32];
}

void *OUTLINED_FUNCTION_30_5()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v3);
}

void *OUTLINED_FUNCTION_30_6()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 104);

  return __swift_project_boxed_opaque_existential_0((v0 - 128), v3);
}

uint64_t OUTLINED_FUNCTION_79()
{
}

uint64_t OUTLINED_FUNCTION_30_16()
{

  return sub_267EF9328();
}

uint64_t OUTLINED_FUNCTION_30_17@<X0>(uint64_t a1@<X8>)
{

  return sub_267C12290(v1 + v3, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_30_18@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 72);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_30_19()
{
  v2 = *(v0 + 89);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  v7 = *(v0 + 152);
  v9 = *(v0 + 280);
  v10 = *(v0 + 264);
}

uint64_t OUTLINED_FUNCTION_30_20()
{
  *(v1 + v2) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_22()
{
  v1 = v0[157];
  v2 = v0[154];
  v3 = v0[153];
  result = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_26()
{
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[34];
}

uint64_t OUTLINED_FUNCTION_30_28(uint64_t a1)
{
  *(v1 + 696) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_30()
{

  return sub_267EF3EE8();
}

uint64_t OUTLINED_FUNCTION_30_31()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_30_32()
{
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[26];
  v8 = v0[23];
  v10 = v0[19];
  v9 = v0[20];
}

void OUTLINED_FUNCTION_30_34()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 128);
  v3 = *(v0 - 144);
}

void OUTLINED_FUNCTION_30_38()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[24];
  v4 = *(v0[34] + 32);
}

uint64_t OUTLINED_FUNCTION_30_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return sub_267EF9FC8();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return __swift_storeEnumTagSinglePayload(v19, 0, 1, a19);
}

uint64_t OUTLINED_FUNCTION_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

BOOL OUTLINED_FUNCTION_27(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_32_0()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_3()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
}

void OUTLINED_FUNCTION_17_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[30];
}

uint64_t OUTLINED_FUNCTION_8_8()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
}

void OUTLINED_FUNCTION_8_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_8_14()
{
  v2 = v0[41];
  result = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[35];
  v8 = v0[36];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_8_17()
{
  v2 = *(v0 - 104);

  return sub_267EF9D88();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_8_19()
{
  v3 = *(v1 - 336);

  return sub_267BBE0C8(v3, v0);
}

id OUTLINED_FUNCTION_8_21(float a1)
{
  *v3 = a1;
  *(v2 + 136) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_8_24@<X0>(uint64_t a1@<X8>)
{

  return sub_267CF5008(v1 + a1, type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult);
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_267EF4CC8();
}

uint64_t OUTLINED_FUNCTION_8_25()
{
  v1 = v0[160];
  v2 = v0[159];
  v3 = v0[158];
  return v0[156];
}

void OUTLINED_FUNCTION_8_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8_27()
{

  return sub_267EF99B8();
}

uint64_t OUTLINED_FUNCTION_8_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_29(char a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = v6;
  *(v7 + 16) = a5;
  *(v7 + 107) = a4;
  *(v7 + 106) = a3;
  *(v7 + 105) = a2;
  *(v7 + 104) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_30()
{
  v2 = v0[30];
  v4 = v0[29];
  v5 = v0[28];
}

uint64_t OUTLINED_FUNCTION_8_33(uint64_t a1)
{
  v3 = *(v1 + 56) + 40 * a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);

  return sub_267BB7AA0(v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_8_34()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[10];
  v4 = *(v0[22] + 8);
  return v0[23];
}

uint64_t OUTLINED_FUNCTION_8_38()
{
  v1 = v0[160];
  v2 = v0[159];
  v3 = v0[146];
  result = v0[117];
  v5 = v0[115];
  v6 = v0[107];
  v7 = v0[87];
  v8 = *(v0[116] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_42()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3 = *(v1 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_8_46()
{
  v3 = *(v1 - 200);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_8_47()
{

  return sub_267EF89B8();
}

uint64_t OUTLINED_FUNCTION_8_49(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 2032);
  return *(v2 + 2024);
}

void OUTLINED_FUNCTION_8_52()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[12];
}

uint64_t OUTLINED_FUNCTION_8_53(uint64_t a1)
{

  return sub_267B9FF34(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_54()
{
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v9 = v0[26];
}

unint64_t OUTLINED_FUNCTION_8_55()
{
  v2 = *v0;

  return sub_267BA9948();
}

uint64_t OUTLINED_FUNCTION_8_56()
{
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[23];

  return sub_267EF4018();
}

uint64_t OUTLINED_FUNCTION_8_57@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v3[6] = a2;
  v3[9] = a1;
  v3[10] = 0x7453656369766564;
  v3[11] = 0xEB00000000657461;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_59()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[16];
  v8 = *(v0[17] + 8);
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_8_60()
{
  v2 = v0[56];
  v8 = v0[53];
  v3 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[41];

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_8_61(uint64_t a1)
{
  *(a1 + 8) = sub_267BF3768;
  v2 = v1[39];
  v3 = v1[24];
  v4 = v1[19];
  return v1 + 2;
}

void *OUTLINED_FUNCTION_8_63(void *a1)
{
  result = __swift_project_boxed_opaque_existential_0(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_2()
{
  v2 = *(v0 + 72) + 72;

  return sub_267B9AFEC(v2, v0 + 448);
}

void OUTLINED_FUNCTION_48_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_48_4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267C2FB6C(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_48_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_267C12290(a1, v3);
}

uint64_t OUTLINED_FUNCTION_48_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_10()
{
  v2 = *(v0 - 96);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_11(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267BB16A4(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return sub_267EF8348();
}

void OUTLINED_FUNCTION_48_19()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
}

void *OUTLINED_FUNCTION_1_0()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_20()
{

  return sub_267EF8358();
}

uint64_t OUTLINED_FUNCTION_48_21()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  result = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  return result;
}

uint64_t OUTLINED_FUNCTION_48_23(uint64_t a1)
{
  sub_267B9A5E8((v1 + 552), a1 + 16);
  sub_267B9A5E8(v1 + 32, a1 + 56);
  sub_267B9A5E8((v1 + 472), a1 + 96);

  return sub_267EF4C08();
}

uint64_t OUTLINED_FUNCTION_48_24()
{
  v4 = v0[42];
  v1 = v0[37];
  v2 = *(v0[38] + 32);
  return v0[39];
}

uint64_t OUTLINED_FUNCTION_48_25()
{
  v2 = v0[111];
  v3 = v0[109];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];

  return type metadata accessor for RequestIntroductionActionGroup(0);
}

uint64_t OUTLINED_FUNCTION_48_27(uint64_t a1)
{
  *(v1 + 120) = a1;
  *(v1 + 128) = 0xD000000000000012;
}

uint64_t OUTLINED_FUNCTION_48_28()
{
  v1 = v0[22];
  v2 = v0[19];
  v4 = v0[17];
  v3 = v0[18];
  v5 = *(v0[20] + 8);
  return v0[21];
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[17];
  v8 = *(v0[18] + 8);
  return v0[19];
}

uint64_t OUTLINED_FUNCTION_10@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

BOOL OUTLINED_FUNCTION_5_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_6_5(uint64_t a1)
{

  sub_267C8EC00(a1, v1 | 0x8000000000000000, v2);
}

void OUTLINED_FUNCTION_26_4()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

void OUTLINED_FUNCTION_40_0()
{

  JUMPOUT(0x26D60A7B0);
}

BOOL OUTLINED_FUNCTION_6_6(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

__n128 *OUTLINED_FUNCTION_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 7368801;
  result[2].n128_u64[1] = 0xE300000000000000;
  return result;
}

void OUTLINED_FUNCTION_6_9()
{

  JUMPOUT(0x26D608E60);
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_267CF2FFC();
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

void OUTLINED_FUNCTION_22_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_6_16()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_10_1@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_6_20(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return sub_267EF9C98();
}

void OUTLINED_FUNCTION_6_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_6_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_6_25(uint64_t a1, uint64_t a2)
{
  v4 = v2[17];
  v2[10] = a1;
  v2[11] = a2;
  v2[12] = 0x6F746C69616DLL;
  v2[13] = 0xE600000000000000;

  return sub_267EF2E38();
}

uint64_t OUTLINED_FUNCTION_102()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_26()
{

  return sub_267EF5E08();
}

uint64_t OUTLINED_FUNCTION_6_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_29@<X0>(uint64_t a1@<X8>)
{
  result = __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v5 = *(v3 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_30()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_33(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 184);
  v4 = *(v2 + 192);
  return v2 + 144;
}

uint64_t OUTLINED_FUNCTION_6_35(uint64_t a1)
{
  *(a1 + 8) = sub_267D668F8;
  v2 = v1[41];
  v3 = v1[42];
  return v1[45];
}

uint64_t OUTLINED_FUNCTION_6_37()
{

  return swift_once();
}

void OUTLINED_FUNCTION_6_38()
{
  v2 = v0[139];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[133];
  v7 = v0[130];
  v8 = v0[129];
  v9 = v0[128];
  v10 = v0[125];
  v11 = v0[124];
  v1 = v0[123];
  v12 = v0[122];
}

void OUTLINED_FUNCTION_6_39()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = v0[10];
}

id OUTLINED_FUNCTION_6_42(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_6_46()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];
  v8 = *(v0[16] + 8);
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_6_47@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  v3 = *(v2 + 72);
  *(v1 - 112) = a1 + 1;
  v4 = *(v1 - 136) + v3 * a1;
  v5 = *(v2 + 16);
  result = *(v1 - 88);
  v7 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_49()
{
  result = v1;
  v3 = *(v0 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_54()
{
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[29];
  v10 = v0[25];
  v11 = v0[26];
}

uint64_t OUTLINED_FUNCTION_6_55@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 104) = &a2 - a1;

  return sub_267EF2CC8();
}

uint64_t OUTLINED_FUNCTION_6_57()
{
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_58()
{

  return sub_267C01144(0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_6_59()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_60(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 24);
  return *(v2 + 48);
}

uint64_t OUTLINED_FUNCTION_6_62(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 240);
  return v2 + 16;
}

void OUTLINED_FUNCTION_6_63()
{
  v1 = v0[142];
  v2 = v0[141];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[138];
}

void *OUTLINED_FUNCTION_79_0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  result[2] = a18;
  result[3] = v23;
  result[4] = v25;
  result[5] = v24;
  result[6] = v19;
  result[7] = v20;
  result[8] = v22;
  result[9] = v21;
  v26 = *v18;
  return result;
}

int8x16_t OUTLINED_FUNCTION_79_1(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int8x16_t a21)
{
  result = vextq_s8(a21, a21, 8uLL);
  a1[3] = result;
  v23 = *v21;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_95()
{
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_79_3(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

id OUTLINED_FUNCTION_79_4()
{

  return [v1 (v0 + 2078)];
}

uint64_t OUTLINED_FUNCTION_79_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_79_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_79_8()
{
  v3 = *(v1 + 1272);
  v4 = *(v1 + 696);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
}

void OUTLINED_FUNCTION_79_10()
{
  v0[26] = 0;
  v1 = v0[14];
  v8 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[10];
  v6 = v0[9];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_79_11()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_79_12()
{
  v2 = *(v0 - 96);

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_79_13()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_79_14()
{
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_76_0()
{
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[105];
  v9 = v0[104];
}

void OUTLINED_FUNCTION_76_1()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = *(v1 + 80);
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

void OUTLINED_FUNCTION_76_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_76_6()
{
  result = 0.0;
  *(v0 + 680) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_7()
{
  *(v2 - 104) = v0;
  v3 = v1[157];
  v4 = v1[154];
  v5 = v1[153];
  result = v1[136];
  v7 = v1[134];
  v8 = *(v1[135] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_76_9(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a2;

  return sub_267BD997C();
}

void *OUTLINED_FUNCTION_76_10()
{
  v2 = v0[111];
  v3 = v0[110];

  return __swift_project_boxed_opaque_existential_0(v0 + 107, v3);
}

uint64_t OUTLINED_FUNCTION_76_13(char a1)
{
  *(v1 + 892) = a1 & 1;
}

uint64_t OUTLINED_FUNCTION_76_14()
{

  return sub_267EF8F48();
}

uint64_t sub_267B9A598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_123(a1, a2, a3, a4);
  OUTLINED_FUNCTION_22(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_267B9A5E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void OUTLINED_FUNCTION_29_1()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_29_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_18_2()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_28_0@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_267B9F98C(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_29_7()
{
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
}

void OUTLINED_FUNCTION_29_8(int a1@<W8>)
{
  *(v1 - 168) = a1;
  *(v1 - 160) = a1;
  *(v1 - 152) = a1;
  *(v1 - 144) = a1;
}

id OUTLINED_FUNCTION_29_9(float a1)
{
  *v3 = a1;
  *(v2 + 112) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_29_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 23);
}

void *OUTLINED_FUNCTION_13_1()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_0((v0 - 120), v3);
}

uint64_t OUTLINED_FUNCTION_29_11()
{
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[35];
  v6 = v0[31];
  v5 = v0[32];
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + v10);
}

uint64_t OUTLINED_FUNCTION_29_16()
{

  return sub_267EF8348();
}

unint64_t OUTLINED_FUNCTION_29_17()
{
  v1[7] = v3;
  v1[8] = v0;
  v1[9] = 0xD000000000000010;
  v1[10] = v2;

  return sub_267BB5034();
}

uint64_t OUTLINED_FUNCTION_29_18()
{
  v3 = v0[151];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[148];
  v7 = v0[147];
  v8 = v0[146];
  v9 = v0[145];
  v10 = v0[144];
  v11 = v0[143];
  v12 = v0[142];
  v18 = v0[141];
  v19 = v0[140];
  v20 = v0[139];
  v21 = v0[138];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[133];
  v25 = v0[130];
  v26 = v0[129];
  v27 = v0[128];
  v28 = v0[125];
  v29 = v0[124];
  v30 = v0[123];
  v31 = v0[122];
  v32 = v0[119];
  v33 = v0[118];
  v13 = v0[114];
  *(v1 - 168) = v0[117];
  *(v1 - 160) = v13;
  v14 = v0[108];
  *(v1 - 152) = v0[111];
  *(v1 - 144) = v14;
  v15 = v0[104];
  *(v1 - 136) = v0[105];
  *(v1 - 128) = v15;
  v16 = v0[99];
  *(v1 - 120) = v0[102];
  *(v1 - 112) = v16;
  *(v1 - 104) = v0[96];
}

void OUTLINED_FUNCTION_29_19(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_29_22()
{
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
}

uint64_t OUTLINED_FUNCTION_29_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x2821C4F08](a1, a2, a3, a4, a5, 0, 0, 0);
}

void OUTLINED_FUNCTION_29_28()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

double OUTLINED_FUNCTION_29_29()
{
  v1 = *(v0 - 88);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_30(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[5];
  v4 = v2[6];
  v5 = v2[3];
  v6 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_29_31()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_29_32()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  v3 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_29_33(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;

  return sub_267EF6798();
}

uint64_t sub_267B9AB18@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C2FB6C(v1 + 264, &v6, &qword_2802293E0, &qword_267EFD170);
  if (!v7)
  {
    sub_267B9F98C(&v6, &qword_2802293E0, &qword_267EFD170);
    sub_267C2FB6C(v1 + 224, &v4, &qword_2802293E0, &qword_267EFD170);
    if (v5)
    {
      sub_267B9A5E8(&v4, &v6);
    }

    else
    {
      v7 = &type metadata for SharedObjectProvider;
      v8 = &off_2878CEE88;
      *&v6 = swift_allocObject();
      sub_267EF4C38();
      sub_267EF3B38();
      sub_267EF3B28();
      sub_267EF4678();
      sub_267EF4688();
      if (v5)
      {
        sub_267B9F98C(&v4, &qword_2802293E0, &qword_267EFD170);
      }
    }

    sub_267B9AFEC(&v6, &v4);
    swift_beginAccess();
    sub_267C2FBCC(&v4, v1 + 264);
    swift_endAccess();
  }

  return sub_267B9A5E8(&v6, a1);
}

uint64_t sub_267B9AC80()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

void OUTLINED_FUNCTION_37_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return sub_267EF8348();
}

id OUTLINED_FUNCTION_37_8()
{
  v3 = *(v1 + 1376);
  v4 = *(v1 + 1368);

  return v0;
}

uint64_t OUTLINED_FUNCTION_37_9(uint64_t result)
{
  *(result + 8) = v1;
  v5 = *(v2 + 129);
  v6 = *(v2 + 736);
  *(v4 + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_11()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 192);
  *(v0 + 360) = *(v0 + 176);
  *(v0 + 376) = v3;
  *(v0 + 129) = *(v0 + 208);
}

uint64_t OUTLINED_FUNCTION_37_12()
{
  v2 = v0[59];
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[49];
  v6 = v0[46];
}

void OUTLINED_FUNCTION_37_13()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
}

uint64_t OUTLINED_FUNCTION_37_14(uint64_t result)
{
  *(v3 - 112) = v1 & 0xC000000000000001;
  *(v3 - 104) = result;
  *(v3 - 120) = v1 & 0xFFFFFFFFFFFFFF8;
  *(v3 - 144) = v2;
  *(v3 - 136) = v2 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_15()
{
  __swift_project_boxed_opaque_existential_0((v0 - 128), *(v0 - 104));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_37_19()
{
  v2 = v0[79];
  v3 = v0[76];
  v4 = v0[73];
}

uint64_t OUTLINED_FUNCTION_37_22()
{
  v2 = v0[86];
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[64];

  return sub_267EF70D8();
}

uint64_t OUTLINED_FUNCTION_37_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = v12;
  v10[1] = v11;
  v10[2] = a9;
  v10[3] = a10;

  return type metadata accessor for DirectInvocationUseCases();
}

void OUTLINED_FUNCTION_37_26()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[133];
}

uint64_t sub_267B9AFEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_267B9B050(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_5_0(v3);
  (*v4)(a2);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return sub_267EF3B08();
}

uint64_t OUTLINED_FUNCTION_56_10()
{

  return sub_267EF78E8();
}

uint64_t OUTLINED_FUNCTION_56_11(__n128 a1)
{
  a1.n128_u64[0] = 5.0;
  v10 = *(v7 - 128);
  v9 = *(v7 - 120);

  return MEMORY[0x2821BEEF8](v4, v6, v3, v9, v5, v1 & 1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_56_12()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_56_13()
{
  v3 = v1[75];
  v4 = v1[73];
  v5 = v1[72];
  v6 = v1[63];
  v11 = v1[62];
  v12 = v1[65];
  v8 = v1[60];
  v7 = v1[61];
  v9 = v1[59];
  v10 = v1[58];
}

void OUTLINED_FUNCTION_56_15()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
}

uint64_t OUTLINED_FUNCTION_56_18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_267BC9B04(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_56_19()
{
  result = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  return result;
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return sub_267B9F98C(v1 + 240, v0, v2);
}

uint64_t OUTLINED_FUNCTION_66_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66_4()
{
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[64];
}

void OUTLINED_FUNCTION_66_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return sub_267EF3D28();
}

uint64_t OUTLINED_FUNCTION_66_9()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_11()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));
  v3 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_66_12()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_66_14()
{
  v2 = v0[42];
  v3 = v0[25];
  v4 = v0[23];

  return sub_267EF4938();
}

void OUTLINED_FUNCTION_66_15()
{
}

void OUTLINED_FUNCTION_66_16(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_66_18()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_66_19()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return sub_267EF4748();
}

uint64_t OUTLINED_FUNCTION_120_0()
{
  v2 = *(v0 + 40);

  return sub_267EF3848();
}

id OUTLINED_FUNCTION_120_1(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_120_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_120_5()
{
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
}

void OUTLINED_FUNCTION_120_6()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_120_7()
{
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[14];

  return sub_267EF3CA8();
}

uint64_t OUTLINED_FUNCTION_120_8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 320);
  v5 = *(v4 + 296);
  *(v4 + 288) = a1;
  *(v4 + 296) = a2;
}

uint64_t OUTLINED_FUNCTION_46_1@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v1, v2 + a1);
}

void OUTLINED_FUNCTION_57(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_267BA33E8(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_36_1()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_46_12()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = *(v0 + 107);
  v6 = *(v0 + 106);
  v7 = *(v0 + 105);
  v8 = *(v0 + 104);

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_46_14()
{
  v2 = v0[161];
  v3 = v0[157];
  v4 = v0[154];
  v5 = v0[153];
  v6 = v0[130];
  v7 = v0[127];
  v8 = v0[126];
  v9 = v0[122];
  v10 = v0[121];
  v11 = v0[120];
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return sub_267EF4158();
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[8];
  v4 = v2[9];
  return v2[7];
}

void OUTLINED_FUNCTION_46_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[24] = v13;
  v12[25] = v14;
  v12[26] = a12;
  v12[27] = v15;
}

uint64_t OUTLINED_FUNCTION_46_23()
{
  v1 = v0[51];
  v2 = v0[48];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[41];
  v8 = v0[37];
  v9 = v0[38];
  v10 = *(v0[49] + 8);
  return v0[50];
}

uint64_t *sub_267B9B964()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267B9B9EC((v0 + 7));
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v2 = v0[21];

  v3 = v0[22];

  v4 = v0[23];

  OUTLINED_FUNCTION_67_11();
  return v0;
}

uint64_t sub_267B9B9B8()
{
  sub_267B9B964();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow020CarPlayClarificationC0C5StateO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  v3 = *(v1 + *(v0 + 24));
}

uint64_t OUTLINED_FUNCTION_70_1()
{
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v2 = *(v0 + 112);
  v6 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = **(v0 + 96);
}

void OUTLINED_FUNCTION_70_3(void *a1@<X8>)
{
  v3 = v1[87];
  v4 = v1[86];
  v5 = v1[85];
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1)
{
  *(v1 + 1312) = *(a1 + 128);
}

uint64_t OUTLINED_FUNCTION_70_7@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *a1;
}

void OUTLINED_FUNCTION_70_8()
{
  v1 = v0[160];
  v2 = v0[159];
  v3 = v0[144];
  v4 = v0[143];
}

uint64_t OUTLINED_FUNCTION_70_9()
{
  v2 = *(v0 + 344);
  v3 = *(v0 + 208);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_70_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 8u);
}

void OUTLINED_FUNCTION_70_12()
{
  *(v1 - 88) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_267B9BC5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_112_1()
{
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v7 = v6 + *(v5 + 20);

  return sub_267BD3DDC(v4, v7);
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_267BA33E8(a1, a2, va);
}

void OUTLINED_FUNCTION_112_4(uint64_t a1@<X8>)
{
  *(v2 + 704) = v1;
  *(v2 + 712) = a1;
  v4 = *(v3 + 68);
}

uint64_t OUTLINED_FUNCTION_112_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_267BA33E8(v12, v11, va);
}

__n128 OUTLINED_FUNCTION_112_6(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  a1[2].n128_u64[0] = v13;
  a1[2].n128_u64[1] = v14;
  a1[3].n128_u64[0] = v12;
  a1[3].n128_u64[1] = v11;
  return result;
}

uint64_t OUTLINED_FUNCTION_112_7()
{

  return sub_267EF8348();
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t result)
{
  *(result + 8) = sub_267C0DD7C;
  v2 = *(v1 + 768);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  v2 = v0[112];
  v3 = v0[91];
  v4 = v0[88];
  v5 = v0[87];

  return sub_267EF4198();
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 568) = a1;
  *(v1 + 544) = 1;
  return v1 + 544;
}

BOOL OUTLINED_FUNCTION_10_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_267EF89F8();
}

uint64_t OUTLINED_FUNCTION_13_12()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = *(v0[18] + 8);
  return v0[19];
}

void OUTLINED_FUNCTION_13_13()
{
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_23_1@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_13_14(float a1)
{
  *v2 = a1;

  return sub_267BA33E8(v3, v1, (v4 - 88));
}

BOOL OUTLINED_FUNCTION_13_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_17()
{
  v1 = *(*(v0 - 344) + 8);
  result = *(v0 - 152);
  v3 = *(v0 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_18(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_267BA33E8(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_13_19@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
  v4 = v2 + *(v3 + 48);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

void OUTLINED_FUNCTION_13_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_13_22()
{
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
}

void OUTLINED_FUNCTION_13_23()
{
  v1 = v0[213];
  v2 = v0[212];
  v3 = v0[211];
  v4 = v0[210];
  v5 = v0[209];
  v6 = v0[208];
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return sub_267B9F98C(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_13_26(char a1, char a2, char a3, char a4)
{
  v4[107] = a4;
  v4[106] = a3;
  v4[105] = a2;
  v4[104] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_13_27(uint64_t a1)
{
  v1[3] = a1;
  *v1 = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_13_30()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_32()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 8);
  return v1;
}

void *OUTLINED_FUNCTION_13_36(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v15 + 744) = result;
  result[2] = v19;
  result[3] = v17;
  result[4] = a12;
  result[5] = v12;
  result[6] = v21;
  result[7] = v14;
  result[8] = a10;
  result[9] = v16;
  result[10] = v20;
  result[11] = v13;
  v22 = *v18;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_41()
{
  v1 = v0[15];
  v2 = v0[7];
  v3 = *(v0[16] + 8);
  return v0[17];
}

uint64_t OUTLINED_FUNCTION_13_43()
{
  result = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  return result;
}

uint64_t OUTLINED_FUNCTION_13_44(uint64_t a1)
{
  *(v1 - 128) = a1;
  *(v1 - 160) = 12;

  return sub_267EF5128();
}

uint64_t OUTLINED_FUNCTION_13_46()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_47()
{

  return sub_267EF4DC8();
}

void OUTLINED_FUNCTION_13_51()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
}

uint64_t OUTLINED_FUNCTION_13_52()
{

  return sub_267DE77AC((v1 - 136), v0);
}

void OUTLINED_FUNCTION_13_53()
{
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[137];
  v4 = v0[136];
}

uint64_t OUTLINED_FUNCTION_13_54(uint64_t a1, uint64_t a2)
{

  return sub_267E8AEDC(v3, a2, v6, v5, v2, v4);
}

void OUTLINED_FUNCTION_65_1()
{
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
}

void OUTLINED_FUNCTION_68_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_65_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2;
  v6 = *(v3 - 112);
  v5 = *(v3 - 104);
  return result;
}

void OUTLINED_FUNCTION_65_9()
{
  v3 = v1[75];
  v4 = v1[73];
  v5 = v1[72];
  v10 = v1[68];
  v7 = v1[60];
  v6 = v1[61];
  v9 = v1[58];
  v8 = v1[59];
}

uint64_t OUTLINED_FUNCTION_65_10(float a1)
{
  *v1 = a1;

  return sub_267EF4938();
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_65_12()
{
}

uint64_t OUTLINED_FUNCTION_65_13()
{

  return sub_267BC9B04(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_65_14()
{
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v9 = v0[32];
}

uint64_t *OUTLINED_FUNCTION_65_15()
{
  *(v1 + 72) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 48));
}

__n128 *OUTLINED_FUNCTION_52_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 48);
  result[2].n128_u64[0] = *(v2 + 64);
  result[2].n128_u64[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1)
{
  v2 = (*(v1 + 56) + 16 * a1);
  v3 = *v2;
  return v2[1];
}

uint64_t OUTLINED_FUNCTION_52_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_52_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return sub_267EF7988();
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;

  return sub_267EF7B88();
}

void OUTLINED_FUNCTION_52_11()
{
  *(v0 + 32) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_52_13()
{
  v2 = v0[36];
  result = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  return result;
}

BOOL OUTLINED_FUNCTION_52_14(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_15()
{
  *(v3 + v1) = v2;
  v5 = *(v3 + *(v0 + 24));
}

void OUTLINED_FUNCTION_52_18(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_52_19()
{
  v3 = v1[53];
  v5 = v1[46];
  v4 = v1[47];
  v6 = v1[45];
}

uint64_t OUTLINED_FUNCTION_52_20()
{
  v2 = *(v1 - 128);
  v3 = *(*(v1 - 136) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_52_21@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

BOOL OUTLINED_FUNCTION_85_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 9, a4);

  return type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
}

void OUTLINED_FUNCTION_85_7()
{
  v5 = v0[160];
  v6 = v0[159];
  v7 = v0[143];
  *(v3 - 112) = v0[142];
  v8 = v0[108];
  v9 = v0[106];
  *(v3 - 144) = v5;
  *(v3 - 136) = v9;
  *(v3 - 128) = v2;
  v10 = v0[93];
  *(v3 - 152) = v0[87];
}

uint64_t OUTLINED_FUNCTION_85_9(uint64_t result)
{
  *(v1 + 56) = result;
  v2 = *(v1 + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_85_10()
{
  result = v0;
  v3 = *(v1 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_85_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_85_13(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
}

uint64_t sub_267B9CA00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20]();
  sub_267EF93F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_94();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  sub_267E8FA18();
}

uint64_t sub_267B9CAD4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_88()
{

  return sub_267EF3B18();
}

void OUTLINED_FUNCTION_4_4()
{

  JUMPOUT(0x26D60A7B0);
}

void *OUTLINED_FUNCTION_88_5()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 128);

  return __swift_project_boxed_opaque_existential_0((v0 - 152), v3);
}

uint64_t sub_267B9CC04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v259 = a2;
  v4 = sub_267EF4BE8();
  v5 = OUTLINED_FUNCTION_58(v4);
  v247 = v6;
  v248 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v246 = v10 - v9;
  v11 = sub_267EF8428();
  v12 = OUTLINED_FUNCTION_58(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v245 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v244 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v243 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v242 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v241 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0();
  v240 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v239 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_0();
  v238 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v237 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  v249 = v35;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0();
  v250 = v37;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_0();
  v251 = v39;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  v252 = v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77_0();
  v253 = v43;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77_0();
  v254 = v45;
  OUTLINED_FUNCTION_115();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v236 - v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_194();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v51);
  v53 = &v236 - v52;
  v258 = a1;
  v54 = sub_267EF4BC8();
  v56 = v55;
  v57 = *MEMORY[0x277D5D718];
  v58 = *(v14 + 104);
  v256 = v14 + 104;
  v257 = v58;
  v58(v53, v57, v11);
  v59 = sub_267EF8418();
  v61 = v60;
  v255 = *(v14 + 8);
  v255(v53, v11);
  if (v59 == v54 && v61 == v56)
  {

LABEL_8:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E71D90(v64, v65);
  }

  OUTLINED_FUNCTION_33_22();
  v63 = OUTLINED_FUNCTION_16_38();

  if (v63)
  {
    goto LABEL_8;
  }

  v257(v2, *MEMORY[0x277D5D6F8], v11);
  v67 = sub_267EF8418();
  v69 = v68;
  v70 = v2;
  v71 = v255;
  v255(v70, v11);
  if (v67 == v54 && v69 == v56)
  {

LABEL_17:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E723F0(v74, v75);
  }

  OUTLINED_FUNCTION_33_22();
  v73 = OUTLINED_FUNCTION_16_38();

  if (v73)
  {
    goto LABEL_17;
  }

  v76 = *MEMORY[0x277D5D700];
  v77 = OUTLINED_FUNCTION_11_46();
  v78(v77);
  v79 = sub_267EF8418();
  v81 = v80;
  v82 = OUTLINED_FUNCTION_73_0();
  v71(v82);
  if (v79 == v54 && v81 == v56)
  {

LABEL_25:

    v85 = sub_267EF4BD8();
    v86 = 0x6E6564496D657469;
    v87 = 0xEE00726569666974;
    v88 = v259;
LABEL_26:
    sub_267BB3824(v85, v86, v87, v88);
  }

  OUTLINED_FUNCTION_33_22();
  v84 = OUTLINED_FUNCTION_16_38();

  if (v84)
  {
    goto LABEL_25;
  }

  v257(v49, *MEMORY[0x277D5D728], v11);
  v89 = sub_267EF8418();
  v91 = v90;
  (v71)(v49, v11);
  if (v89 == v54 && v91 == v56)
  {

LABEL_34:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267BB5088(v94, v95);
  }

  v93 = OUTLINED_FUNCTION_16_38();

  if (v93)
  {
    goto LABEL_34;
  }

  v96 = *MEMORY[0x277D5D770];
  v97 = v254;
  v98 = OUTLINED_FUNCTION_11_46();
  v99(v98);
  sub_267EF8418();
  OUTLINED_FUNCTION_530();
  v100 = OUTLINED_FUNCTION_73_0();
  v71(v100);
  if (v97 == v54 && v93 == v56)
  {

LABEL_42:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E728AC(v102, v103);
  }

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_16_38();
  OUTLINED_FUNCTION_20_19();
  if (v97)
  {
    goto LABEL_42;
  }

  v104 = *MEMORY[0x277D5D768];
  v105 = v253;
  v106 = OUTLINED_FUNCTION_11_46();
  v107(v106);
  sub_267EF8418();
  OUTLINED_FUNCTION_530();
  v108 = OUTLINED_FUNCTION_73_0();
  v71(v108);
  if (v105 == v54 && v93 == v56)
  {
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_16_38();
  OUTLINED_FUNCTION_20_19();
  if (v105)
  {
    goto LABEL_50;
  }

  v111 = *MEMORY[0x277D5D6F0];
  v112 = v252;
  v113 = OUTLINED_FUNCTION_11_46();
  v114(v113);
  sub_267EF8418();
  OUTLINED_FUNCTION_530();
  v115 = OUTLINED_FUNCTION_73_0();
  v71(v115);
  if (v112 == v54 && v93 == v56)
  {
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_16_38();
  OUTLINED_FUNCTION_20_19();
  if (v112)
  {
    goto LABEL_58;
  }

  v117 = *MEMORY[0x277D5D748];
  v118 = v251;
  v119 = OUTLINED_FUNCTION_11_46();
  v120(v119);
  sub_267EF8418();
  OUTLINED_FUNCTION_530();
  (v71)(v118, v11);
  if (v118 == v54 && v93 == v56)
  {

LABEL_66:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E72B74(v122, v123);
  }

  OUTLINED_FUNCTION_66();
  sub_267EF9EA8();
  OUTLINED_FUNCTION_20_19();
  if (v118)
  {
    goto LABEL_66;
  }

  v124 = *MEMORY[0x277D5D750];
  v125 = v250;
  v126 = OUTLINED_FUNCTION_3_77();
  v127(v126);
  sub_267EF8418();
  v128 = OUTLINED_FUNCTION_0_68();
  v129(v128);
  if (v125 == v54 && v93 == v56)
  {

LABEL_74:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E7306C(v131, v132);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v125)
  {
    goto LABEL_74;
  }

  v133 = *MEMORY[0x277D5D780];
  v134 = v249;
  v135 = OUTLINED_FUNCTION_3_77();
  v136(v135);
  sub_267EF8418();
  v137 = OUTLINED_FUNCTION_0_68();
  v138(v137);
  if (v134 == v54 && v93 == v56)
  {
LABEL_49:

LABEL_50:

    v110 = sub_267EF4BD8();
    sub_267BB3D8C(v110);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v134)
  {
    goto LABEL_50;
  }

  v140 = *MEMORY[0x277D5C2E0];
  if (sub_267EF9028() == v54 && v141 == v56)
  {

LABEL_89:

    v143 = sub_267EF4BD8();
    v144 = MEMORY[0x277D5C2D8];
LABEL_90:
    sub_267E734E8(v143, v144);
  }

  OUTLINED_FUNCTION_5_64();
  OUTLINED_FUNCTION_20_19();
  if (v134)
  {
    goto LABEL_89;
  }

  v145 = *MEMORY[0x277D5C2D0];
  v146 = sub_267EF9028();
  v148 = v147;
  if (v146 == v54 && v147 == v56)
  {

LABEL_98:

    v143 = sub_267EF4BD8();
    v144 = MEMORY[0x277D5C2C8];
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_5_64();
  OUTLINED_FUNCTION_20_19();
  if (v134)
  {
    goto LABEL_98;
  }

  v150 = *MEMORY[0x277D5D790];
  v151 = v237;
  v152 = OUTLINED_FUNCTION_3_77();
  v153(v152);
  sub_267EF8418();
  v154 = OUTLINED_FUNCTION_0_68();
  v155(v154);
  if (v151 == v54 && v148 == v56)
  {
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v151)
  {
    goto LABEL_113;
  }

  v157 = *MEMORY[0x277D5D740];
  v158 = v238;
  v159 = OUTLINED_FUNCTION_3_77();
  v160(v159);
  sub_267EF8418();
  v161 = OUTLINED_FUNCTION_0_68();
  v162(v161);
  if (v158 == v54 && v148 == v56)
  {
    goto LABEL_112;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v158)
  {
    goto LABEL_113;
  }

  v169 = *MEMORY[0x277D5D760];
  v170 = v239;
  v171 = OUTLINED_FUNCTION_3_77();
  v172(v171);
  sub_267EF8418();
  v173 = OUTLINED_FUNCTION_0_68();
  v174(v173);
  if (v170 == v54 && v148 == v56)
  {

LABEL_122:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E736F8(v176, v177);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v170)
  {
    goto LABEL_122;
  }

  v178 = *MEMORY[0x277D5D738];
  v179 = v240;
  v180 = OUTLINED_FUNCTION_3_77();
  v181(v180);
  sub_267EF8418();
  v182 = OUTLINED_FUNCTION_0_68();
  v183(v182);
  if (v179 == v54 && v148 == v56)
  {

LABEL_130:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E73F70(v185, v186);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v179)
  {
    goto LABEL_130;
  }

  v187 = *MEMORY[0x277D5D720];
  v188 = v241;
  v189 = OUTLINED_FUNCTION_3_77();
  v190(v189);
  sub_267EF8418();
  v191 = OUTLINED_FUNCTION_0_68();
  v192(v191);
  if (v188 == v54 && v148 == v56)
  {

LABEL_138:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E7447C(v194, v195);
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v188)
  {
    goto LABEL_138;
  }

  v196 = *MEMORY[0x277D5D788];
  v197 = v242;
  v198 = OUTLINED_FUNCTION_3_77();
  v199(v198);
  sub_267EF8418();
  v200 = OUTLINED_FUNCTION_0_68();
  v201(v200);
  if (v197 == v54 && v148 == v56)
  {

LABEL_146:

    v85 = sub_267EF4BD8();
    v88 = v259;
    v86 = 1701667182;
    v87 = 0xE400000000000000;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v197)
  {
    goto LABEL_146;
  }

  v203 = *MEMORY[0x277D5D758];
  v204 = v243;
  v205 = OUTLINED_FUNCTION_3_77();
  v206(v205);
  sub_267EF8418();
  v207 = OUTLINED_FUNCTION_0_68();
  v208(v207);
  if (v204 == v54 && v148 == v56)
  {
LABEL_57:

LABEL_58:

    sub_267EF4BD8();
    OUTLINED_FUNCTION_21_31();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if (v204)
  {
    goto LABEL_58;
  }

  v210 = *MEMORY[0x277D5D778];
  v211 = v244;
  v212 = OUTLINED_FUNCTION_3_77();
  v213(v212);
  sub_267EF8418();
  v214 = OUTLINED_FUNCTION_0_68();
  v215(v214);
  if (v211 == v54 && v148 == v56)
  {
LABEL_112:

    goto LABEL_113;
  }

  OUTLINED_FUNCTION_2_65();
  OUTLINED_FUNCTION_20_19();
  if ((v211 & 1) == 0)
  {
    v217 = *MEMORY[0x277D5D730];
    v218 = v245;
    v219 = OUTLINED_FUNCTION_3_77();
    v220(v219);
    sub_267EF8418();
    v221 = OUTLINED_FUNCTION_0_68();
    v222(v221);
    if (v218 == v54 && v148 == v56)
    {
    }

    else
    {
      OUTLINED_FUNCTION_2_65();
      OUTLINED_FUNCTION_20_19();

      if ((v218 & 1) == 0)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v224 = sub_267EF8A08();
        __swift_project_value_buffer(v224, qword_280240FB0);
        (*(v247 + 16))(v246, v258, v248);
        v225 = sub_267EF89F8();
        v226 = sub_267EF95E8();
        if (os_log_type_enabled(v225, v226))
        {
          v227 = OUTLINED_FUNCTION_48();
          v228 = swift_slowAlloc();
          v260 = v228;
          *v227 = 136315138;
          v229 = v246;
          v230 = sub_267EF4BC8();
          v232 = v231;
          (*(v247 + 8))(v229, v248);
          v233 = sub_267BA33E8(v230, v232, &v260);

          *(v227 + 4) = v233;
          _os_log_impl(&dword_267B93000, v225, v226, "#DirectInvocationUseCases unsupported identifier: %s", v227, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v228);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          (*(v247 + 8))(v246, v248);
        }

        v168 = type metadata accessor for DirectInvocationUseCases();
        v166 = v259;
        v167 = 1;
        return __swift_storeEnumTagSinglePayload(v166, v167, 1, v168);
      }
    }

    sub_267EF4BD8();
    OUTLINED_FUNCTION_17_30();
    sub_267E74914(v234, v235);
  }

LABEL_113:

  v164 = type metadata accessor for DirectInvocationUseCases();
  v165 = v259;
  OUTLINED_FUNCTION_66();
  swift_storeEnumTagMultiPayload();
  v166 = v165;
  v167 = 0;
  v168 = v164;
  return __swift_storeEnumTagSinglePayload(v166, v167, 1, v168);
}

uint64_t sub_267B9DC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B9DC74()
{
  v0 = *sub_267B9DE38();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *sub_267B9DCC8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
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
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider));
  return v0;
}

uint64_t *sub_267B9DE38()
{
  v0 = sub_267B9DCC8();
  sub_267B9EF80(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_appName + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor));
  return v0;
}

uint64_t sub_267B9DEA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267B9DEEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267B9DF34()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E01490();
}

uint64_t objectdestroy_23Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  OUTLINED_FUNCTION_70_10();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  v1 = v0[146];
  v2 = v0[145];
  v3 = v0[144];
  result = v0[91];
  v5 = v0[89];
  v6 = *(v0[90] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return sub_267B9F98C(v1 + v0, v3, v2);
}

void *OUTLINED_FUNCTION_71_3(void *result)
{
  result[2] = 0xD000000000000011;
  result[3] = v1;
  result[4] = 0xD000000000000022;
  result[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_4()
{
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_71_6()
{
  __swift_project_boxed_opaque_existential_0((v0 + 128), *(v0 + 152));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_71_8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  *(v2 + 472) = v4;
  *(v4 + 42) = 2;
  *(*(*(v4 + 216) + 16) + 33) = 0;

  return sub_267E27360();
}

uint64_t OUTLINED_FUNCTION_71_9()
{
  v2 = *(v0 - 264);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 288, v2);
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{
  *(a1 + 8) = sub_267C157B0;
  result = v1[17];
  v3 = v1[14];
  v4 = v1[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_7()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  v2 = *(v0 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{
  *(a1 + 8) = sub_267C2358C;
  v2 = *(v1 + 728);
  return *(v1 + 688);
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_267B9EED4(a3);

  return sub_267C70584(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_0_17()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[7];
  v10 = *(v0[18] + 8);
  return v0[19];
}

void OUTLINED_FUNCTION_0_18()
{
  *(v0 - 272) = 1;
  *(v0 - 264) = 1;
  *(v0 - 256) = 1;
  *(v0 - 248) = 1;
  *(v0 - 240) = 1;
}

uint64_t OUTLINED_FUNCTION_0_20@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_4@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_267EF9E18();
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return sub_267CF5008(v0, type metadata accessor for TimedSentMessageContext);
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return sub_267EF9E18();
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_267BA33E8(v10, v11, va);
}

uint64_t OUTLINED_FUNCTION_0_28()
{
  v5 = *(v1 + 296);
  v4 = *(v1 + 304);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
}

void OUTLINED_FUNCTION_0_30()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_0_32()
{

  return sub_267EF9AE8();
}

uint64_t OUTLINED_FUNCTION_0_33()
{
  result = v0[44];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[28];
  v13 = v0[29];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_0_41(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_0_43()
{
  v3 = v0[160];
  v4 = v0[159];
  v5 = v0[154];
  v6 = v0[153];
  v7 = v0[151];
  v17 = v0[150];
  v18 = v0[149];
  v19 = v0[148];
  v20 = v0[147];
  v21 = v0[146];
  v22 = v0[145];
  v23 = v0[144];
  v24 = v0[143];
  v25 = v0[142];
  v26 = v0[141];
  v8 = v0[140];
  v27 = v0[139];
  v28 = v0[138];
  v29 = v0[137];
  v30 = v0[136];
  v31 = v0[133];
  v32 = v0[130];
  v33 = v0[129];
  v34 = v0[128];
  v35 = v0[125];
  v36 = v0[124];
  v37 = v0[123];
  v38 = v0[122];
  v9 = v0[119];
  v10 = v0[117];
  *(v1 - 176) = v0[118];
  *(v1 - 168) = v10;
  v11 = v0[111];
  *(v1 - 160) = v0[114];
  *(v1 - 152) = v11;
  v12 = v0[105];
  *(v1 - 144) = v0[108];
  *(v1 - 136) = v12;
  v13 = v0[102];
  *(v1 - 128) = v0[104];
  *(v1 - 120) = v13;
  v14 = v0[96];
  *(v1 - 112) = v0[99];
  *(v1 - 104) = v14;
  v15 = v0[87];
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{
  *(a1 + 8) = sub_267DB24E4;
  v3 = *(v1 + 72);
  *(v2 + 32) = 0;
  *(v2 + 40) = v3;
  return 0x636972656E6567;
}

uint64_t OUTLINED_FUNCTION_0_47(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, v1);
  v3 = *(v2 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_48()
{
  v1 = v0[34];
  v11 = v0[37];
  v12 = v0[33];
  v13 = v0[32];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v2 = v0[27];
  v17 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v7);
  v9 = *(v8 + 8);
  return v7;
}

uint64_t OUTLINED_FUNCTION_0_49()
{
  result = v0[74];
  v2 = v0[73];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[64];
  v11 = v0[61];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_50(unint64_t *a1)
{

  return sub_267DD28A0(a1);
}

void OUTLINED_FUNCTION_0_51()
{
  v2 = *(v0 + 24);
  *(v1 + 80) = 0x6E65697069636572;
  *(v1 + 88) = 0xEA00000000007374;
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_267BA33E8(v1, v0, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_0_54()
{
  v1 = v0[36];
  v11 = v0[35];
  v12 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[29];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v7);
  v9 = *(v8 + 8);
  return v7;
}

uint64_t OUTLINED_FUNCTION_0_55()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_56()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_58(uint64_t a1)
{
  *(a1 + 8) = sub_267DED7A4;
  v2 = *(v1 + 320);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_0_59()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = *(v0[8] + 8);
  return v0[9];
}

uint64_t OUTLINED_FUNCTION_0_62()
{
  v5 = *(v1 + 296);
  v4 = *(v1 + 304);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_0_63()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 9, v1);
}

void OUTLINED_FUNCTION_0_64()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[99];
  v4 = v0[96];
  v5 = v0[93];
  v6 = v0[92];
}

uint64_t OUTLINED_FUNCTION_0_65(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_0_66()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_0_68()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_69()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v13 = v0[5];
}

uint64_t OUTLINED_FUNCTION_0_70@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + ((v1 + a1 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_72()
{
  v1 = v0[35];
  v11 = v0[34];
  v12 = v0[33];
  v13 = v0[32];
  v14 = v0[31];
  v2 = v0[28];
  v15 = v0[30];
  v16 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v7);
  v9 = *(v8 + 8);
  return v7;
}

uint64_t OUTLINED_FUNCTION_0_74(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_75(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_76()
{
  v1 = v0[35];
  v11 = v0[38];
  v12 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[31];
  v16 = v0[30];
  v2 = v0[28];
  v3 = v0[27];
  v17 = v0[29];
  v18 = v0[26];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v7);
  v9 = *(v8 + 8);
  return v7;
}

uint64_t OUTLINED_FUNCTION_0_77()
{
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[39];
  v8 = v0[40];
  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[36];
  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[31];
  v16 = v0[30];
  v17 = v0[29];
  v18 = v0[28];
  v19 = v0[25];
}

uint64_t OUTLINED_FUNCTION_0_78(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v2 + v3[5], 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v2 + v3[6], 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v2 + v3[7], 1, 1, a1);
  result = __swift_storeEnumTagSinglePayload(v2 + v3[8], 1, 1, a1);
  v6 = v1 + *v1;
  return result;
}

uint64_t sub_267B9EEE0()
{
  sub_267EF79F8();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow0B12UserDefaults_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_267B9EFD4()
{
  sub_267B9F008();

  return swift_deallocClassInstance();
}

uint64_t *sub_267B9F008()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v0;
}

uint64_t sub_267B9F040()
{
  v0 = *sub_267B9DCC8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F094()
{
  v0 = sub_267B9DCC8();
  sub_267B9FF34(v0 + OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageNeedsConfirmationFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F118(uint64_t a1)
{
  v2 = type metadata accessor for SendMessageFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t *sub_267B9F1EC()
{
  v0 = sub_267B9DCC8();
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_sharedContextProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_preferences));
  return v0;
}

uint64_t sub_267B9F234()
{
  v0 = *sub_267B9F1EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F288()
{
  sub_267B9F2BC();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F2BC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  v5 = *(v0 + 112);

  v6 = *(v0 + 136);

  v7 = *(v0 + 152);

  v8 = *(v0 + 160);

  v9 = *(v0 + 184);

  v10 = *(v0 + 192);

  v11 = *(v0 + 216);

  sub_267B9F440(v0 + 224);
  v12 = *(v0 + 272);

  v13 = *(v0 + 296);

  v14 = *(v0 + 312);

  v15 = *(v0 + 328);

  return v0;
}

uint64_t sub_267B9F364()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F39C()
{
  sub_267B9F3D0();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F3F8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295C8, &qword_267EFDD28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B9F4A8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267B9F118(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory));
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs);

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags));
  return v0;
}

uint64_t sub_267B9F528()
{
  sub_267B9F4A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F580()
{
  sub_267B9F5B4();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F5B4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_29_10();
  return v0;
}

uint64_t sub_267B9F5E0()
{
  sub_267B9FFF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F658(uint64_t a1)
{
  v2 = type metadata accessor for SearchForMessagesFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267B9F6B4()
{
  sub_267B9F6E8();

  return swift_deallocClassInstance();
}

uint64_t sub_267B9F6E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_267B9F710()
{
  v0 = sub_267BA0068();
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow23ConversationActionGroup_conversation);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_58_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 608) = a1;
  *(v1 + 616) = v2;

  return sub_267BCE788(v3);
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_58_3()
{
  v2 = v0[117];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];

  return sub_267EF4838();
}

uint64_t OUTLINED_FUNCTION_58_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_58_5()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  return *(v0[32] + 48) + 152;
}

BOOL OUTLINED_FUNCTION_58_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_58_7()
{
  result = __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
  v4 = *(v2 + 36);
  return result;
}

BOOL OUTLINED_FUNCTION_58_8()
{
  v5 = *(v1 + 8);
  v6 = *(v0 + 96);

  return sub_267C00940(v3, v6, v2, v5);
}

uint64_t OUTLINED_FUNCTION_58_9()
{
  v2 = v0[33];
  result = v0[34];
  v3 = v0[32];
  return result;
}

uint64_t OUTLINED_FUNCTION_58_11@<X0>(uint64_t a1@<X8>)
{
  result = a1 + v1 * *(v2 - 192);
  v4 = *(v2 - 176);
  v5 = *(*(v2 - 184) + 32);
  return result;
}

id OUTLINED_FUNCTION_58_12(float a1)
{
  *v3 = a1;
  *(v2 + 216) = v1;

  return v1;
}

void OUTLINED_FUNCTION_58_14()
{
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
}

uint64_t OUTLINED_FUNCTION_58_17(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_19(unint64_t *a1)
{

  return sub_267C586C4(a1, v1, v2);
}

uint64_t sub_267B9F98C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_20_0()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
}

uint64_t OUTLINED_FUNCTION_16_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_2@<X0>(uint64_t a1@<X8>)
{

  return sub_267C269D0(v1 + a1, type metadata accessor for TimedSentMessageContext);
}

id OUTLINED_FUNCTION_20_1(float a1)
{
  *v3 = a1;
  *(v2 + 368) = v1;

  return v1;
}

void OUTLINED_FUNCTION_38_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_20_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = a1;
  v2[10] = 0x4468736153707061;
  v2[11] = 0xEB00000000617461;
  return 0;
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_20_5()
{
  result = v2;
  v4 = v1 + *(v0 + 28);
  *v4 = v2;
  *(v4 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_6@<X0>(uint64_t a1@<X8>)
{

  return sub_267BE855C(v1 + a1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_20_7()
{
  result = *(v0 - 120);
  v2 = *(*(v0 - 112) + 8);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_8()
{
  v2 = v0[91];
  v3 = v0[88];
  v4 = v0[81];
  v14 = v0[80];
  v15 = v0[82];
  v13 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[64];
}

void OUTLINED_FUNCTION_20_9()
{
  v2 = *(v0 + 16) + 1;

  sub_267BF4EE8();
}

uint64_t OUTLINED_FUNCTION_20_10(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  v5 = *(v3 - 112);
}

void OUTLINED_FUNCTION_20_11()
{

  JUMPOUT(0x26D6091A0);
}

uint64_t OUTLINED_FUNCTION_20_15@<X0>(uint64_t a1@<X8>)
{
  v4 = a1 - 1 - v2;
  v5 = v1 + 8 * v2;
  v6 = *(v5 + 32);

  return sub_267C74A34(v5 + 40, v4);
}

uint64_t OUTLINED_FUNCTION_20_16()
{
  *(v0 + 216) = *(v0 + 24);
  *(v0 + 232) = *(v0 + 40);
  *(v0 + 57) = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_20_17()
{
  v0[33] = 0;
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[13];
  result = v0[12];
  v8 = v0[10];
  return result;
}

__n128 OUTLINED_FUNCTION_20_18(__n128 *a1)
{
  result = *(v1 - 144);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_19()
{
}

uint64_t OUTLINED_FUNCTION_20_20()
{
  v1 = v0[161];
  result = v0[154];
  v3 = v0[153];
  v4 = v0[119];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[112];
  return result;
}

double OUTLINED_FUNCTION_20_21()
{
  v3 = *(v0 + 24);

  return sub_267C8F7C0(v3, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_20_23()
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_20_24()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
}

void *OUTLINED_FUNCTION_20_26()
{

  return memcpy((v1 + 16), v0, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_20_30()
{
  v5 = *(v2 + 48) + v1 * v3;
  result = v0;
  v7 = *(v4 - 104);
  return result;
}

void OUTLINED_FUNCTION_20_32()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_20_33()
{
}

void OUTLINED_FUNCTION_20_35()
{
  v2 = *(v0 + 16) + 1;

  sub_267C70CB0();
}

uint64_t sub_267B9FEA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267B9FED8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_267B9FF34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_267B9FF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchForMessagesFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267B9FFF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267B9F658(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent, &unk_28022BBF0, &unk_267F01C60);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_searchForMessagesCATs);

  return v0;
}

uint64_t sub_267BA0068()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_267B9FF34(v0 + OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition, &qword_280229110, &unk_267F08700);
  return v0;
}

uint64_t sub_267BA00B0()
{
  sub_267BA00E4();

  return swift_deallocClassInstance();
}

void *sub_267BA00E4()
{
  v1 = v0[2];

  v2 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  return v0;
}

uint64_t sub_267BA0114()
{
  sub_267BA0148();

  return swift_deallocClassInstance();
}

void *sub_267BA0148()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_267BA0178()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_267BA064C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow26OfferTransitionActionGroup_transition);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267BA01E4()
{
  sub_267BA0218();

  return swift_deallocClassInstance();
}

uint64_t sub_267BA0218()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return v0;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0_9(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroyTm_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t objectdestroyTm_2(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_12_15();

  return MEMORY[0x2821FE8E8](v2, a1, 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = sub_267EF2728();
  OUTLINED_FUNCTION_5_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  }

  v2 = v0[9];

  v3 = v0[10];

  OUTLINED_FUNCTION_17_23();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_267EF89E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267BA064C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267BA06B4()
{
  sub_267BA070C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_267BA070C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_1_22();
  sub_267BA0810(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory));
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation);

  v8 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager);

  v9 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_sendMessageCATs);

  v10 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider);

  v11 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState);

  v12 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished + 8);
  sub_267BA1BFC(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished));
  return v0;
}

uint64_t sub_267BA0810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267BA0888()
{
  sub_267BA1AEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_267EF9128();
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_3_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{
  *(v1 + 1168) = a1;
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  v5 = *(v4 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_10()
{
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[30];
  v6 = v0[28];

  return sub_267EF4018();
}

id OUTLINED_FUNCTION_3_11()
{
  v4 = *(v1 + 224);
  v3 = *(v1 + 232);
  v5 = *(v3 + 136);
  v6 = *(v3 + 144);
  *(v3 + 136) = v0;
  *(v3 + 144) = 1;

  return v0;
}

void OUTLINED_FUNCTION_2_3()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

void OUTLINED_FUNCTION_3_12()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
}

BOOL OUTLINED_FUNCTION_7_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_3_13@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

void OUTLINED_FUNCTION_3_15()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[98];
  v8 = v0[97];
  v9 = v0[95];
  v10 = v0[92];
  v11 = v0[91];
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  v3 = v0[30];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[25];
  v7 = v0[24];
  v8 = v0[23];
  v9 = v0[22];
}

void OUTLINED_FUNCTION_3_18()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
}

void OUTLINED_FUNCTION_3_20()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
}

uint64_t OUTLINED_FUNCTION_3_21(uint64_t a1)
{
  *(a1 + 8) = sub_267C9121C;
  v2 = *(v1 + 1216);
  v3 = *(v1 + 936);
  return v1 + 584;
}

uint64_t OUTLINED_FUNCTION_3_22()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = a1;
  v2[10] = 0x4468736153707061;
  v2[11] = 0xEB00000000617461;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_25(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_3_34()
{
  v1 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_0((v0 + 56), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_3_37()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
}

uint64_t OUTLINED_FUNCTION_3_38(float a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v4 = a1;

  return sub_267BA33E8(0xD00000000000001ALL, v5 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_3_39()
{
  *(v1 - 72) = v0;

  return sub_267EF9DF8();
}

uint64_t OUTLINED_FUNCTION_3_40()
{
  v2 = v1[34];
  v4 = v1[27];
  v3 = v1[28];
  v5 = v1[25];
  v6 = *(v1[35] + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_41@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_267EF9DD8();
}

uint64_t OUTLINED_FUNCTION_3_42()
{
  v1 = v0[64];
  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[54];
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v5);
  v7 = *(v6 + 8);
  return v5;
}

id OUTLINED_FUNCTION_3_43(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v3;
  *a1 = v2;

  return v3;
}

void OUTLINED_FUNCTION_3_45()
{
  v1 = *(v0 + 272);
  v9 = *(v0 + 288);
  v10 = *(v0 + 264);
  v2 = *(v0 + 248);
  v8 = *(v0 + 240);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v3 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 192);
  v15 = *(v0 + 184);
  v4 = *(v0 + 337);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 136);
}

uint64_t OUTLINED_FUNCTION_3_46()
{
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[152];
  *(v1 - 160) = v0[155];
  *(v1 - 152) = v4;
  v5 = v0[145];
  v6 = v0[144];
  v7 = v0[119];
  *(v1 - 144) = v0[118];
  *(v1 - 136) = v7;
  result = v0[114];
  v9 = v0[113];
  v10 = v0[112];
  v11 = v0[111];
  *(v1 - 112) = v0[109];
  *(v1 - 104) = v6;
  v12 = v0[92];
  v13 = v0[91];
  *(v1 - 128) = v11;
  *(v1 - 120) = v13;
  v14 = v0[90];
  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[87];
  v18 = *(v9 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_47()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_48()
{

  return sub_267EF5B28();
}

double OUTLINED_FUNCTION_3_51()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_53()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_54()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_57()
{

  return swift_getObjCClassFromMetadata();
}

uint64_t OUTLINED_FUNCTION_3_61(uint64_t a1)
{
  *(a1 + 8) = sub_267DFBB6C;
  v2 = *(v1 + 552);
  v3 = *(v1 + 544);
  return v1 + 256;
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return sub_267B9F98C(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_65(uint64_t a1)
{
  *(a1 + 8) = sub_267BCEA94;
  v2 = *(v1 + 280);
  return v1 + 96;
}

uint64_t OUTLINED_FUNCTION_3_66()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v3 = *(v2 + 16);
  return v1;
}

__n128 *OUTLINED_FUNCTION_3_70(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7453656369766564;
  result[2].n128_u64[1] = 0xEB00000000657461;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_71@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 136) = *(a1 + 32);
  *(v2 + 144) = *(a1 + 40);
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v4 = *(v3 + 24);
}

uint64_t OUTLINED_FUNCTION_3_72()
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_3_73()
{

  return sub_267BA33E8(0xD000000000000014, v0 | 0x8000000000000000, (v1 - 96));
}

void OUTLINED_FUNCTION_3_74()
{
  v1 = v0[102];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
}

uint64_t OUTLINED_FUNCTION_3_76(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2 + *v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_77()
{
  result = v0;
  v3 = *(v1 - 128);
  v4 = *(v1 - 120);
  return result;
}

double OUTLINED_FUNCTION_3_78()
{
  *(v1 - 144) = 0;
  result = 0.0;
  *(v1 - 176) = 0u;
  *(v1 - 160) = 0u;
  v3 = *(v0 + 1776);
  return result;
}

double OUTLINED_FUNCTION_3_79()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_82()
{

  return sub_267EF3F98();
}

id OUTLINED_FUNCTION_3_83()
{

  return [v0 dateSent];
}

uint64_t OUTLINED_FUNCTION_3_86(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 240);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_3_89()
{

  return sub_267EF9DF8();
}

void OUTLINED_FUNCTION_18_4()
{
  v0[28] = 0;
  v1 = v0[21];
  v9 = v0[15];
  v10 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return __swift_storeEnumTagSinglePayload(v1 + v0, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[49];
  v4 = v2[50];
  return v2[48];
}

void OUTLINED_FUNCTION_18_13()
{

  sub_267BF4EE8();
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_18_20()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);

  return sub_267EF3B68();
}

uint64_t OUTLINED_FUNCTION_18_24(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_18_27(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;
  *v3 = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_18_28(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_18_29()
{
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];
}

void OUTLINED_FUNCTION_18_30()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_18_31(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  return *(v2 + 56);
}

void OUTLINED_FUNCTION_18_36(void *a1)
{

  _os_log_impl(a1, v1, v3, v2, v4, 0xCu);
}

void OUTLINED_FUNCTION_18_38()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

id OUTLINED_FUNCTION_18_41@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 81) = 257;
  v2 = *(*(a1 + 168) + 16);

  return v2;
}

uint64_t OUTLINED_FUNCTION_18_45(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_267BA1948(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = OUTLINED_FUNCTION_18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_267BB16A4(a1, &v16 - v13, &qword_280229E20, &unk_267EFDCC0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_267EF78B8();
  (*(v5 + 8))(a2, v4);
  sub_267B9FF34(a1, &qword_280229E20, &unk_267EFDCC0);
  return v14;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow16ProcessedContentO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_267BA1AEC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267BA1B7C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider));
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_labelsCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags));
  v3 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager);

  return v0;
}

uint64_t sub_267BA1B7C(uint64_t a1)
{
  v2 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267BA1BFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_267BA1C0C()
{
  sub_267BA1C40();

  return swift_deallocClassInstance();
}

void *sub_267BA1C40()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  return v0;
}

uint64_t sub_267BA1C78()
{
  sub_267BA1CAC();

  return swift_deallocClassInstance();
}

uint64_t sub_267BA1CAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = *(v0 + 128);

  v6 = *(v0 + 144);

  sub_267B9EF14(v0 + 152);
  v7 = *(v0 + 248);

  v8 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  sub_267B9FF34(v0 + 344, &qword_280229128, &unk_267EFC860);
  v9 = *(v0 + 384);

  v10 = *(v0 + 392);

  v11 = *(v0 + 400);

  v12 = *(v0 + 416);

  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  return v0;
}

uint64_t sub_267BA1D84()
{
  sub_267BA1DB8();

  return swift_deallocClassInstance();
}

uint64_t sub_267BA1DB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  sub_267B9FF34(v0 + 40, &qword_280229910, &unk_267EFEB70);
  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);

  v7 = *(v0 + 144);

  v8 = *(v0 + 160);

  v9 = *(v0 + 168);

  return v0;
}

uint64_t sub_267BA1E38()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReadingOfferBehaviorFlowFrameResult()
{
  result = qword_28022C5C8;
  if (!qword_28022C5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13[29] = a1;
  v13[30] = a2;
  v13[31] = *(a13 + 96);

  return sub_267DB39C8();
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return sub_267EF81C8();
}

void OUTLINED_FUNCTION_45_2()
{

  JUMPOUT(0x26D60A7B0);
}

id OUTLINED_FUNCTION_51_3()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_51_4()
{
  v1 = v0[57];
  __swift_project_boxed_opaque_existential_0(v0 + 53, v0[56]);

  return sub_267EF3C48();
}

id OUTLINED_FUNCTION_51_5(void *a1)
{
  *v2 = *(v3 - 128);
  *(v2 + 4) = v1;
  *a1 = v1;

  return v1;
}

__n128 *OUTLINED_FUNCTION_51_7(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 7107189;
  result[2].n128_u64[1] = 0xE300000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_9(uint64_t a1)
{

  return sub_267B9FED8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_51_10()
{
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1336);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1232);
  v7 = *(v0 + 1160);
  v8 = *(v0 + 912);
  v9 = *(v0 + 896);

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_51_11(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_267BA2E04(v4, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_51_14()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_51_15()
{
  v2 = v0[35];
  v1 = v0[36];
  result = v0[33];
  v4 = v0[34];
  v5 = v0[31];
  v6 = *(v0[32] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_16(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v2[29] = *(v3 + 96);

  return sub_267DB45A8();
}

uint64_t OUTLINED_FUNCTION_51_17()
{
}

void *OUTLINED_FUNCTION_51_18(uint64_t a1)
{
  *(v2 - 88) = v1;

  return sub_267BE8B74(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_51_19()
{
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[42];
  v8 = v0[43];
}

uint64_t OUTLINED_FUNCTION_51_21()
{

  return sub_267EF4138();
}

void OUTLINED_FUNCTION_11_3()
{

  JUMPOUT(0x26D609CA0);
}

uint64_t OUTLINED_FUNCTION_11_4()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = *(v0[18] + 8);
  return v0[19];
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2)
{
  v4 = v2[14];
  v5 = v2[11];
  v6 = v2[18];

  return __swift_storeEnumTagSinglePayload(v4, a2, 1, v5);
}

void *OUTLINED_FUNCTION_11_6(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_0(a1, a2);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  v1 = v0[12];
  v2 = *(v0[13] + 96);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_11_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_11_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_11_11()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_11_13()
{

  return [v1 (v0 + 1272)];
}

uint64_t OUTLINED_FUNCTION_11_14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

void OUTLINED_FUNCTION_11_15()
{
  v1[27] = 0;
  v2 = v1[15];
  v11 = v1[16];
  v4 = v1[13];
  v3 = v1[14];
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[9];
  v8 = v1[7];
  v9 = *(v0 + 32);
  v10 = v1[10];
}

void OUTLINED_FUNCTION_11_16(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
  *(v1 - 200) = a1;
  *(v1 - 192) = a1;
  *(v1 - 184) = a1;
  *(v1 - 176) = a1;
}

uint64_t OUTLINED_FUNCTION_11_17()
{

  return sub_267EF47A8();
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_21()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;
  v5 = *(*(v3 + v1) + 16);
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_24@<X0>(uint64_t a1@<X8>)
{

  return sub_267D2FEFC(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_11_28()
{

  return sub_267EF8FC8();
}

double OUTLINED_FUNCTION_11_29(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return v5;
}

void *OUTLINED_FUNCTION_11_31()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 176);

  return __swift_project_boxed_opaque_existential_0((v0 - 200), v3);
}

unint64_t OUTLINED_FUNCTION_11_33()
{
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1008);
  v6 = *(v3 - 128);
  *(v6 + 16) = v2;
  result = v6 + ((*(*(v3 - 144) + 80) + 32) & ~*(*(v3 - 144) + 80)) + *(*(v3 - 144) + 72) * v1;
  v8 = *(v3 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_36@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 - 1;
  v4 = *(v1 - 112);
  v5 = v4 + 56 * a1;
  v6 = *(v5 - 24);
  v7 = *(v5 - 16);
  v8 = *(v5 - 8);
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  *(v4 + 16) = v3;

  return sub_267DB37C4(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_11_38()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_11_40(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_11_42()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_11_43()
{
  v1 = v0[14];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = *(v0[12] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_11_46()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_49()
{
  result = v0;
  *(v2 - 96) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_50()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  v3 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_51(uint64_t a1)
{

  return sub_267B9F98C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_11_52()
{

  return sub_267EF3F48();
}

void OUTLINED_FUNCTION_11_53()
{
  *(v1 + 16) = v0;
  v3 = *(v2 - 112);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
}

void *OUTLINED_FUNCTION_11_55()
{

  return __swift_project_boxed_opaque_existential_0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return sub_267EF8238();
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v7 = v4 + *(v6 + 20);

  return sub_267BD3DDC(v5, v7);
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return sub_267EF3F98();
}

void OUTLINED_FUNCTION_28_6()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_28_8()
{
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_28_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_28_13(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v2[30] = *(v3 + 96);

  return sub_267DB3B04();
}

uint64_t OUTLINED_FUNCTION_28_14()
{
  result = *(v0 - 120);
  v2 = *(*(v0 - 112) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_15()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_28_18()
{
  v3 = v2[28];
  v2[25] = v0;
  v2[26] = v1;
}

void *OUTLINED_FUNCTION_28_19()
{
  v2 = v0[80];
  v3 = v0[84];

  return memcpy(v0 + 17, v3, 0x71uLL);
}

uint64_t *OUTLINED_FUNCTION_25_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2);
}

uint64_t OUTLINED_FUNCTION_28_20()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
  return v1;
}

void OUTLINED_FUNCTION_28_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  __swift_destroy_boxed_opaque_existential_0(a15);

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_28_22()
{
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[33];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[21];

  return sub_267EF7C18();
}

unint64_t OUTLINED_FUNCTION_28_23()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);

  return sub_267DEED78(v3);
}

uint64_t OUTLINED_FUNCTION_28_24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + a1), *(v1 + a1 + 24));
  result = v3 + 24;
  v5 = *(v3 + 24);
  *(v2 - 112) = v3 + 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_26()
{

  return sub_267EF9EA8();
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_28_28()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 39);
}

uint64_t *OUTLINED_FUNCTION_28_35@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2);
}

void OUTLINED_FUNCTION_28_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_28_37(uint64_t a1)
{
  *(v1 + 352) = a1;
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  v5 = *(v4 + 8);
  return v3;
}

uint64_t OUTLINED_FUNCTION_28_38()
{
  v2 = *(v0 + 56);

  return sub_267EF7AE8();
}

uint64_t OUTLINED_FUNCTION_124()
{

  return sub_267EF83C8();
}

uint64_t OUTLINED_FUNCTION_124_0@<X0>(uint64_t a1@<X8>)
{

  return sub_267B9A5E8((v1 + 664), v2 + a1);
}

void OUTLINED_FUNCTION_124_1()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
}

void OUTLINED_FUNCTION_124_2()
{
  v1 = *(v0 + 329);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_once();
}

uint64_t sub_267BA2E04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_267BA2E60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_267BC1EAC(a5, a6);
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
    result = sub_267EF9BC8();
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

uint64_t OUTLINED_FUNCTION_27_4(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x26D60A7B0);
}

uint64_t OUTLINED_FUNCTION_27_7(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_267BA33E8(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_27_8()
{
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];
}

uint64_t OUTLINED_FUNCTION_27_9()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);

  return sub_267EF4918();
}

void *OUTLINED_FUNCTION_27_14(void *result)
{
  result[2] = v2;
  result[3] = v5;
  result[4] = v4;
  result[5] = v1;
  *(v3 + 48) = sub_267D24438;
  *(v3 + 56) = result;
  return result;
}

void *OUTLINED_FUNCTION_27_15(char a1)
{
  *(v2 + 129) = a1 & 1;

  return memcpy((v2 + 256), v1, 0x71uLL);
}

uint64_t OUTLINED_FUNCTION_27_16()
{
}

uint64_t OUTLINED_FUNCTION_27_17()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
}

uint64_t OUTLINED_FUNCTION_27_18()
{

  return sub_267EF89A8();
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821BB780](a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_27_21()
{
  v1 = v0[130];
  v2 = v0[127];
  v3 = v0[126];
  result = v0[122];
  v5 = v0[120];
  v6 = *(v0[121] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_22(uint64_t a1)
{

  return sub_267BE2930(v1, a1, type metadata accessor for ImageComponent);
}

void *OUTLINED_FUNCTION_1_8()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v3 = *(v1 + 8);
  return result;
}

id OUTLINED_FUNCTION_27_24()
{
  v3 = *(v1 - 88);

  return [v3 (v0 + 3515)];
}

uint64_t OUTLINED_FUNCTION_27_26()
{
  v2 = v0[86];
  v3 = v0[84];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];
  v8 = v0[73];
}

void OUTLINED_FUNCTION_27_28()
{
  v2 = *(v0 + 16) + 1;

  sub_267BF4EE8();
}

uint64_t OUTLINED_FUNCTION_27_29()
{
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
}

uint64_t OUTLINED_FUNCTION_27_34()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_27_35(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_27_36()
{

  sub_267DA4D44(v0, v1, v2);
}

void OUTLINED_FUNCTION_27_37(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_267BA33E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_267BA2E60(v11, 0, 0, 1, a1, a2);
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
    sub_267BA2E04(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_69()
{
  *(v2 + v0) = v1;

  return sub_267EF7998();
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return sub_267BBD0EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  v9 = v0[8];
  v10 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v2 = v0[4];
  v6 = v0[5];
  v3 = v0[2];
  v4 = *v3;
  *v3 = v0[3];
}

void OUTLINED_FUNCTION_31_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void OUTLINED_FUNCTION_69_2(uint64_t a1@<X8>)
{
  *(v1 + 536) = a1;

  sub_267BBB55C();
}

void OUTLINED_FUNCTION_69_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_69_5()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  result = v1;
  v4 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_7()
{
}

uint64_t OUTLINED_FUNCTION_69_8()
{
  v2 = v0[50];
  v3 = v0[43];
  v4 = v0[37];
  v5 = v0[35];

  return sub_267ED9A2C(v2);
}

uint64_t OUTLINED_FUNCTION_69_10()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);

  return __swift_destroy_boxed_opaque_existential_0(v0 + 52);
}

void *OUTLINED_FUNCTION_69_12(void *a1)
{
  result = __swift_project_boxed_opaque_existential_0(a1, v1);
  v4 = *(v2 + 8);
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

uint64_t OUTLINED_FUNCTION_40_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_32_5()
{

  return ConversationEventStore.Event.rawValue.getter();
}

void *OUTLINED_FUNCTION_32_9(void *a1)
{
  result = __swift_project_boxed_opaque_existential_0(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *(v12 - 80) = a1;
  *v11 = a11;
  v14 = *(v12 - 96);

  return swift_beginAccess();
}

__n128 *OUTLINED_FUNCTION_4_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "valueToConfirm");
  result[2].n128_u8[15] = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_11(uint64_t result, char a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t a8)
{
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  *(v9 + 101) = *(v10 + 32);
  *(v9 + 48) = v12;
  *(v9 + 56) = v8;
  *(v9 + 100) = v11;
  *(v9 + 99) = a7;
  *(v9 + 98) = a6;
  *(v9 + 97) = a5;
  *(v9 + 32) = a4;
  *(v9 + 40) = a8;
  *(v9 + 96) = a2;
  *(v9 + 16) = result;
  *(v9 + 24) = a3;
  return result;
}

void OUTLINED_FUNCTION_32_12()
{
  v3 = v1 + *(v0 + 36);
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_32_13()
{
  v1 = v0[161];
  result = v0[154];
  v3 = v0[153];
  v4 = v0[119];
  v5 = v0[117];
  v6 = v0[116];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_18()
{

  return sub_267EF8FF8();
}

uint64_t OUTLINED_FUNCTION_32_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_23()
{
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
}

uint64_t OUTLINED_FUNCTION_32_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_98_0(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_10()
{
  v1 = v0[107];
  v2 = v0[106];
  return v0[105];
}

uint64_t OUTLINED_FUNCTION_26_12()
{
  v1 = v0[24];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v12 = v0[8];
  v10 = *(v0[22] + 8);
  return v0[25];
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return sub_267EF9328();
}

uint64_t OUTLINED_FUNCTION_26_14()
{
  result = *(v0 + 192);
  v2 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_16()
{
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v5 = v0[55];
  v6 = v0[53];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[43];

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_26_17@<X0>(uint64_t a1@<X8>)
{
  __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v4 = v1 + *(v3 + 76);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_26_18(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_26_19()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
}

uint64_t OUTLINED_FUNCTION_26_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v7 = v4 + *(v5 + 24);

  return sub_267BD3DDC(v6, v7);
}

void OUTLINED_FUNCTION_26_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_26_23()
{
  v1 = *(v0 + 744);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = *(v3 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_26_24(uint64_t a1)
{

  return sub_267BE2930(v1, a1, type metadata accessor for TextComponent);
}

id OUTLINED_FUNCTION_26_26()
{
  v4 = *(v2 - 88);

  return [v4 (v1 + 3593)];
}

uint64_t OUTLINED_FUNCTION_26_28(uint64_t a1)
{
  *(a1 + 8) = sub_267E21DCC;
  v3 = *(v2 + 216);
  return v1;
}

void OUTLINED_FUNCTION_26_29(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = *(v3 - 288);
  v1[2] = v2;
}

uint64_t OUTLINED_FUNCTION_26_31()
{
}

void OUTLINED_FUNCTION_26_33()
{
  v3 = v0[102];
  v4 = v0[98];
  v5 = v0[96];
  v6 = v0[87];
  v7 = v0[63];
  v8 = v0[60];
}

uint64_t OUTLINED_FUNCTION_26_34()
{
  result = *(v0 - 176);
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);
  v4 = *(v0 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_36()
{

  return sub_267EF3B08();
}

uint64_t OUTLINED_FUNCTION_26_37(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_38(uint64_t a1)
{
  *(a1 + 8) = sub_267ED3FA4;
  v2 = *(v1 + 168);
  return *(v1 + 152);
}

uint64_t OUTLINED_FUNCTION_26_39()
{

  return sub_267EF9EA8();
}

void sub_267BA3ED0()
{
  OUTLINED_FUNCTION_48_0();
  v499 = v0;
  v3 = v2;
  v498 = sub_267EF4BE8();
  v4 = OUTLINED_FUNCTION_58(v498);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  v12 = sub_267EF8228();
  v13 = OUTLINED_FUNCTION_58(v12);
  v491 = v14;
  v492 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_60();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v490 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_45_0();
  v493 = v23;
  OUTLINED_FUNCTION_26_2();
  v24 = sub_267EF2BA8();
  v25 = OUTLINED_FUNCTION_58(v24);
  v495 = v26;
  v496 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_45_0();
  v494 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  OUTLINED_FUNCTION_18(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v37);
  v39 = &v490 - v38;
  v40 = sub_267EF7B88();
  v41 = OUTLINED_FUNCTION_18(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_0_0();
  v497 = v45 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v47 = OUTLINED_FUNCTION_18(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_60();
  v52 = (v50 - v51);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_66_2();
  sub_267B9CC04(v3, v1);
  v54 = type metadata accessor for DirectInvocationUseCases();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v54);
  v500 = v1;
  if (EnumTagSinglePayload != 1)
  {
    sub_267C2FB6C(v1, v52, &unk_28022BBE0, qword_267EFD030);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v66 = *v52;
        v497 = v52[1];
        v498 = v66;
        v67 = v52[2];
        v68 = v52[3];
        v70 = v52[4];
        v69 = v52[5];
        v72 = v52[6];
        v71 = v52[7];
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v73 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
        v74 = sub_267EF89F8();
        v75 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v75))
        {
          v76 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v76);
          OUTLINED_FUNCTION_21_1(&dword_267B93000, v77, v75, "MessagesFlowDelegatePlugin received a spoken message request");
          OUTLINED_FUNCTION_18_2();
        }

        sub_267EF7C38();
        OUTLINED_FUNCTION_16_1();
        v78 = sub_267EF7C08();
        OUTLINED_FUNCTION_82_0();
        sub_267B9AFEC(v74 + 16, v537);
        __swift_mutable_project_boxed_opaque_existential_1(v537, v538);
        *(&v535 + 1) = &type metadata for MessagesFeatureFlagsImpl;
        v536 = &off_2878D1228;
        type metadata accessor for SpokenMessagesFlow();
        v79 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(&v534, &type metadata for MessagesFeatureFlagsImpl);
        v79[15] = &type metadata for MessagesFeatureFlagsImpl;
        v79[16] = &off_2878D1228;
        v80 = v497;
        v79[7] = v498;
        v79[8] = v80;
        v79[9] = v78;
        v79[10] = v70;
        v79[11] = v69;
        v79[17] = v72;
        v79[18] = v71;
        sub_267B9A5E8(&v517, (v79 + 2));
        __swift_destroy_boxed_opaque_existential_0(&v534);
        __swift_destroy_boxed_opaque_existential_0(v537);
        *&v517 = v79;
        v81 = &unk_2802294A8;
        v82 = type metadata accessor for SpokenMessagesFlow;
        goto LABEL_122;
      case 1u:
        v274 = v491;
        v273 = v492;
        v275 = v493;
        (*(v491 + 32))(v493, v52, v492);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v276 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v276, qword_280240FB0);
        v277 = *(v274 + 16);
        v278 = v490;
        v277(v490, v275, v273);
        v279 = sub_267EF89F8();
        v280 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_27(v280))
        {
          v281 = OUTLINED_FUNCTION_48();
          v499 = OUTLINED_FUNCTION_52();
          *&v517 = v499;
          *v281 = 136315138;
          v277(v19, v278, v273);
          v282 = sub_267EF9098();
          v284 = v283;
          v285 = OUTLINED_FUNCTION_71_1();
          (v277)(v285);
          v286 = sub_267BA33E8(v282, v284, &v517);
          v287 = v273;
          v288 = v286;

          *(v281 + 4) = v288;
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_91_4(v289, v290, v291, v292);
          __swift_destroy_boxed_opaque_existential_0(v499);
          OUTLINED_FUNCTION_26();
          v275 = v493;
          OUTLINED_FUNCTION_32_0();
        }

        else
        {

          v415 = OUTLINED_FUNCTION_71_1();
          (v277)(v415);
          v287 = v273;
        }

        type metadata accessor for DoNothingFlow();
        *&v517 = OUTLINED_FUNCTION_49_2();
        sub_267BB4430(&qword_280229490, 255, type metadata accessor for DoNothingFlow);
        OUTLINED_FUNCTION_41_3();
        sub_267EF36E8();
        OUTLINED_FUNCTION_53_0();

        (v277)(v275, v287);
        goto LABEL_124;
      case 3u:
        v226 = *v52;
        v227 = v52[1];
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v228 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v228, qword_280240FB0);
        v229 = sub_267EF89F8();
        v230 = sub_267EF95D8();
        v231 = OUTLINED_FUNCTION_5_2(v230);
        v232 = v499;
        if (v231)
        {
          v233 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v233);
          OUTLINED_FUNCTION_21_1(&dword_267B93000, v234, v230, "#MessagesFlowDelegatePlugin received a carplay gatekeeper request");
          OUTLINED_FUNCTION_18_2();
        }

        sub_267EF7C38();
        OUTLINED_FUNCTION_16_1();
        v494 = sub_267EF7C08();
        sub_267B9AB18(v537);
        v536 = 0;
        v534 = 0u;
        v535 = 0u;
        v533 = 0;
        memset(v532, 0, sizeof(v532));
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0();
        }

        sub_267B9AFEC(qword_2802405A0, v531);
        v518 = 0u;
        v519 = 0u;
        v517 = 0u;
        v520 = 5;
        v235 = sub_267EF6A68();
        OUTLINED_FUNCTION_27_4(v235);
        v236 = swift_allocObject();
        v237 = sub_267EF6A58();
        type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_32_2();
        OUTLINED_FUNCTION_101_1();
        v238 = type metadata accessor for CommonTemplateProvider();
        v239 = OUTLINED_FUNCTION_49();
        sub_267EF3838();
        __swift_mutable_project_boxed_opaque_existential_1(v531, v531[3]);
        v528 = &type metadata for CATProvider;
        v529 = &off_2878CE7A0;
        v526 = &off_2878D54F8;
        v525 = v235;
        v524[0] = v237;
        v523 = &off_2878CFE90;
        v522 = v236;
        v521[0] = v230;
        v515 = v238;
        v516 = &off_2878D2530;
        v514[0] = v239;
        v512 = &type metadata for MessagesFeatureFlagsImpl;
        v513 = &off_2878D1228;
        v499 = type metadata accessor for CarPlayClarificationFlow();
        v240 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(v527, &type metadata for CATProvider);
        __swift_mutable_project_boxed_opaque_existential_1(v524, v235);
        OUTLINED_FUNCTION_28_7();
        v498 = v241;
        OUTLINED_FUNCTION_23();
        v243 = *(v242 + 64);
        MEMORY[0x28223BE20](v244);
        OUTLINED_FUNCTION_0_0();
        v247 = (v246 - v245);
        (*(v248 + 16))(v246 - v245);
        __swift_mutable_project_boxed_opaque_existential_1(v521, v522);
        OUTLINED_FUNCTION_28_7();
        v496 = v249;
        OUTLINED_FUNCTION_23();
        v251 = *(v250 + 64);
        MEMORY[0x28223BE20](v252);
        OUTLINED_FUNCTION_0_0();
        v254 = OUTLINED_FUNCTION_103_0(v253);
        v255(v254);
        __swift_mutable_project_boxed_opaque_existential_1(v514, v515);
        OUTLINED_FUNCTION_28_7();
        v495 = v256;
        OUTLINED_FUNCTION_23();
        v258 = *(v257 + 64);
        MEMORY[0x28223BE20](v259);
        v261 = OUTLINED_FUNCTION_5_9(v260, v490);
        v262(v261);
        __swift_mutable_project_boxed_opaque_existential_1(v511, v512);
        v263 = *v247;
        v264 = *v232;
        v510[3] = &type metadata for CATProvider;
        v510[4] = &off_2878CE7A0;
        v509[3] = v235;
        v509[4] = &off_2878D54F8;
        v509[0] = v263;
        v508[3] = v236;
        v508[4] = &off_2878CFE90;
        v508[0] = v264;
        v507[3] = v238;
        v507[4] = &off_2878D2530;
        v507[0] = type metadata for CATProvider.Kind;
        v506[3] = &type metadata for MessagesFeatureFlagsImpl;
        v506[4] = &off_2878D1228;
        *(v240 + 112) = v494;
        __swift_project_boxed_opaque_existential_0(v510, &type metadata for CATProvider);

        *(v240 + 168) = sub_267BB4A3C();
        type metadata accessor for GatekeeperCATs();
        OUTLINED_FUNCTION_63_2();
        *(v240 + 176) = OUTLINED_FUNCTION_83_1();
        sub_267BB5E24(&v517, v240 + 56);
        v265 = v539;
        v266 = OUTLINED_FUNCTION_60_3();
        __swift_project_boxed_opaque_existential_0(v266, v267);
        v268 = v265[1];
        v269 = OUTLINED_FUNCTION_16_1();
        v270(v269);
        __swift_project_boxed_opaque_existential_0(&v503, v504);
        OUTLINED_FUNCTION_16_1();
        sub_267EF3BC8();
        v271 = sub_267EF3D68();
        OUTLINED_FUNCTION_27_4(v271);
        swift_allocObject();
        v272 = sub_267EF3D58();
        __swift_destroy_boxed_opaque_existential_0(&v503);
        *(v240 + 184) = v272;
        sub_267B9AFEC(v509, v240 + 128);
        sub_267C2FB6C(&v534, &v501, &qword_280229450, &qword_267EFD2E8);
        if (v502)
        {
          sub_267B9A5E8(&v501, &v503);
        }

        else
        {
          v423 = v539;
          v424 = OUTLINED_FUNCTION_60_3();
          __swift_project_boxed_opaque_existential_0(v424, v425);
          v426 = v423[2];
          v427 = OUTLINED_FUNCTION_16_1();
          v428(v427);
          v272 = type metadata accessor for HandleIntentMessagesSearcher();
          v429 = swift_allocObject();
          sub_267B9A5E8(&v503, v429 + 16);
          v504 = v272;
          v505 = &off_2878D76E0;
          *&v503 = v429;
          if (v502)
          {
            sub_267B9F98C(&v501, &qword_280229450, &qword_267EFD2E8);
          }
        }

        sub_267B9A5E8(&v503, v240 + 192);
        sub_267C2FB6C(v532, &v501, &qword_280229458, &qword_267EFD2F0);
        v416 = v500;
        if (v502)
        {
          sub_267B9A5E8(&v501, &v503);
        }

        else
        {
          type metadata accessor for FlowLocatorPhoneFlowFinder();
          v430 = OUTLINED_FUNCTION_32_2();
          v504 = v272;
          v505 = &off_2878D76D0;
          *&v503 = v430;
        }

        sub_267B9A5E8(&v503, v240 + 232);
        sub_267B9AFEC(v508, v240 + 272);
        sub_267B9AFEC(v507, v240 + 312);
        sub_267B9AFEC(v530, v240 + 352);
        v431 = type metadata accessor for GatekeeperCATPatternsExecutor(0);
        sub_267EF7B68();
        v432 = OUTLINED_FUNCTION_83_1();
        *(v240 + 416) = v431;
        *(v240 + 424) = &off_2878D8FE0;
        *(v240 + 392) = v432;
        sub_267B9AFEC(v506, v240 + 432);
        *(v240 + 120) = sub_267BB60E8();
        LOBYTE(v431) = sub_267BC2DD0();

        __swift_destroy_boxed_opaque_existential_0(v530);
        sub_267B9B9EC(&v517);
        sub_267B9F98C(v532, &qword_280229458, &qword_267EFD2F0);
        sub_267B9F98C(&v534, &qword_280229450, &qword_267EFD2E8);
        __swift_destroy_boxed_opaque_existential_0(v506);
        __swift_destroy_boxed_opaque_existential_0(v507);
        __swift_destroy_boxed_opaque_existential_0(v508);
        __swift_destroy_boxed_opaque_existential_0(v509);
        *(v240 + 121) = v431 & 1;
        sub_267B9AFEC(v537, v240 + 16);
        __swift_destroy_boxed_opaque_existential_0(v510);
        __swift_destroy_boxed_opaque_existential_0(v537);
        __swift_destroy_boxed_opaque_existential_0(v511);
        __swift_destroy_boxed_opaque_existential_0(v514);
        __swift_destroy_boxed_opaque_existential_0(v521);
        __swift_destroy_boxed_opaque_existential_0(v524);
        __swift_destroy_boxed_opaque_existential_0(v527);
        __swift_destroy_boxed_opaque_existential_0(v531);
        *&v517 = v240;
        sub_267BB4430(&qword_280229460, 255, type metadata accessor for CarPlayClarificationFlow);
        OUTLINED_FUNCTION_41_3();
        sub_267EF36E8();
        goto LABEL_142;
      case 4u:
        OUTLINED_FUNCTION_67_0();
        v202 = v52[2];
        v203 = v52[3];
        OUTLINED_FUNCTION_48_2();
        v204 = *(&v518 + 1);
        v205 = OUTLINED_FUNCTION_108_1(v519);
        v146 = __swift_project_boxed_opaque_existential_0(v205, v204);
        sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_267BB41B0(ObjCClassFromMetadata);
        if (!v207)
        {
          goto LABEL_153;
        }

        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_62_0();
        v208 = swift_allocObject();
        *(v208 + 16) = v202;
        *(v208 + 24) = v203;

        OUTLINED_FUNCTION_39_1();
        OUTLINED_FUNCTION_56_1();
        OUTLINED_FUNCTION_120_0();

        OUTLINED_FUNCTION_98_3();
        OUTLINED_FUNCTION_54_1();

        v150 = sub_267EF7C08();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
        v209 = swift_allocObject();
        OUTLINED_FUNCTION_52_1(v209, xmmword_267EFC020);
        v152 = sub_267DE86F4();
        goto LABEL_50;
      case 5u:
        OUTLINED_FUNCTION_67_0();
        v142 = v52[2];
        v143 = v52[3];
        OUTLINED_FUNCTION_48_2();
        v144 = *(&v518 + 1);
        v145 = OUTLINED_FUNCTION_108_1(v519);
        v146 = __swift_project_boxed_opaque_existential_0(v145, v144);
        sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
        v147 = swift_getObjCClassFromMetadata();
        sub_267BB41B0(v147);
        if (!v148)
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
          JUMPOUT(0x267BA6C14);
        }

        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_62_0();
        v149 = swift_allocObject();
        *(v149 + 16) = v142;
        *(v149 + 24) = v143;

        OUTLINED_FUNCTION_39_1();
        OUTLINED_FUNCTION_56_1();
        OUTLINED_FUNCTION_120_0();

        OUTLINED_FUNCTION_98_3();
        OUTLINED_FUNCTION_54_1();

        v150 = sub_267EF7C08();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
        v151 = swift_allocObject();
        OUTLINED_FUNCTION_52_1(v151, xmmword_267EFC020);
        v152 = sub_267BBCF90();
LABEL_50:
        v210 = v152;
        OUTLINED_FUNCTION_82_0();
        v211 = type metadata accessor for SiriKitFlowFactoryImpl();
        v212 = OUTLINED_FUNCTION_49();
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0();
        }

        type metadata accessor for SearchForMessagesCATs();
        sub_267EF7B68();
        v213 = sub_267EF78E8();
        v538 = v211;
        v539 = &off_2878CFE90;
        v537[0] = v212;
        v214 = type metadata accessor for SearchForMessagesFlow(0);
        OUTLINED_FUNCTION_27_4(v214);
        v215 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(v537, v211);
        OUTLINED_FUNCTION_23();
        v217 = *(v216 + 64);
        MEMORY[0x28223BE20](v218);
        OUTLINED_FUNCTION_0_0();
        v220 = OUTLINED_FUNCTION_103_0(v219);
        v221(v220);
        v222 = *v146;
        v223 = (v215 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory);
        v223[3] = v211;
        v223[4] = &off_2878CFE90;
        *v223 = v222;
        v224 = v215 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
        *v224 = v150;
        *(v224 + 8) = v210;
        *(v224 + 40) = 1;
        type metadata accessor for SearchForMessagesFlow.State(0);
        swift_storeEnumTagMultiPayload();
        v225 = v215 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent;
        *v225 = 0u;
        *(v225 + 16) = 0u;
        *(v225 + 32) = 0;
        *(v215 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_searchForMessagesCATs) = v213;
        sub_267B9A5E8(&v517, v215 + 16);
        __swift_destroy_boxed_opaque_existential_0(v537);
        *&v517 = v215;
        sub_267BB4430(&qword_280229470, 255, type metadata accessor for SearchForMessagesFlow);
        OUTLINED_FUNCTION_41_3();
        sub_267EF36E8();
        OUTLINED_FUNCTION_25_0();
        goto LABEL_123;
      case 6u:
        v153 = *v52;
        v154 = v52[1];
        OUTLINED_FUNCTION_48_2();
        v498 = v519;
        __swift_project_boxed_opaque_existential_0(&v517, *(&v518 + 1));
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        v155 = swift_getObjCClassFromMetadata();
        sub_267BB41B0(v155);
        if (!v156)
        {
          goto LABEL_152;
        }

        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_62_0();
        v157 = swift_allocObject();
        *(v157 + 16) = v153;
        *(v157 + 24) = v154;

        OUTLINED_FUNCTION_39_1();
        OUTLINED_FUNCTION_56_1();
        sub_267EF3848();

        OUTLINED_FUNCTION_98_3();
        OUTLINED_FUNCTION_16_1();
        v498 = sub_267EF7C08();
        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_10_9();
        v166 = sub_267BB3BDC(v158, v159, v160, v161, v162, v163, v164, v165, 0, 0, 0);
        type metadata accessor for SendMessageState();
        OUTLINED_FUNCTION_89_1();
        sub_267BC963C(2);
        OUTLINED_FUNCTION_82_0();
        type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_49_2();
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0();
        }

        type metadata accessor for SendMessageCATs();
        OUTLINED_FUNCTION_63_2();
        v497 = OUTLINED_FUNCTION_83_1();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v496 = sub_267BB4A3C();
        type metadata accessor for ShareSheetProvider();
        OUTLINED_FUNCTION_32_2();
        OUTLINED_FUNCTION_119_0(&off_2878CFE90);
        OUTLINED_FUNCTION_117_2(v167, &off_2878D0D48);
        v168 = OUTLINED_FUNCTION_126_0(&type metadata for MessagesFeatureFlagsImpl);
        v499 = OUTLINED_FUNCTION_27_4(v168);
        v169 = swift_allocObject();
        v170 = OUTLINED_FUNCTION_60_3();
        __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
        OUTLINED_FUNCTION_28_7();
        v495 = v172;
        OUTLINED_FUNCTION_23();
        v174 = *(v173 + 64);
        MEMORY[0x28223BE20](v175);
        v177 = OUTLINED_FUNCTION_5_9(v176, v490);
        v178(v177);
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_28_7();
        v494 = v179;
        OUTLINED_FUNCTION_23();
        v181 = *(v180 + 64);
        MEMORY[0x28223BE20](v182);
        OUTLINED_FUNCTION_0_0();
        v184 = OUTLINED_FUNCTION_19_4(v183);
        v185(v184);
        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_113_1();
        OUTLINED_FUNCTION_43_4(v186);
        OUTLINED_FUNCTION_42_3(&off_2878D0D48);
        OUTLINED_FUNCTION_58_0(&type metadata for MessagesFeatureFlagsImpl);
        if (![v166 outgoingMessageType])
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v187 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v187, qword_280240FB0);
          v188 = sub_267EF89F8();
          v189 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v189))
          {
            v190 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v190);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v191, v192, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_13_5(MEMORY[0x277D83B88]);
          sub_267ECE290();
          sub_267B9F98C(v524, &qword_28022AEF0, &qword_267EFCDE0);
        }

        OUTLINED_FUNCTION_111_0();
        if (!v129)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v193 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v193, qword_280240FB0);
          v194 = sub_267EF89F8();
          v195 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v195))
          {
            v196 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v196);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v197, v198, "#SendMessageFlow non-shim intent request, marking as app selected by user");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_69_1();
        }

        OUTLINED_FUNCTION_38_4();
        v199 = OUTLINED_FUNCTION_24_1();
        (v166)(v199);
        __swift_project_boxed_opaque_existential_0(v524, v525);
        OUTLINED_FUNCTION_17_2();
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(v521, v522);
        OUTLINED_FUNCTION_17_2();
        sub_267EF42B8();
        if (v200)
        {
          v201 = sub_267EF8FF8();
        }

        else
        {
          v201 = 0;
        }

        v416 = v500;
        v441 = OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_92_1(v441, sel__setOriginatingDeviceIdsIdentifier_);

        v442 = (v169 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *v442 = v498;
        v442[1] = v153;
        OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_47_2();
        OUTLINED_FUNCTION_124_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        v443 = v496;
        *(v169 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v497;
        *(v169 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v443;
        OUTLINED_FUNCTION_123_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
        OUTLINED_FUNCTION_12_7(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        OUTLINED_FUNCTION_84_1();
        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_1_17();
        sub_267BB4430(v444, 255, v445);
        OUTLINED_FUNCTION_41_3();
        goto LABEL_141;
      case 7u:
        v294 = *v52;
        v293 = v52[1];
        v295 = v52[3];
        v493 = v52[2];
        v296 = v52[4];
        v496 = v52[5];
        v297 = v52[7];
        v490 = v52[6];
        v491 = v296;
        v497 = v297;
        v498 = v295;
        OUTLINED_FUNCTION_48_2();
        v298 = *(&v518 + 1);
        v299 = OUTLINED_FUNCTION_108_1(v519);
        __swift_project_boxed_opaque_existential_0(v299, v298);
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        v300 = swift_getObjCClassFromMetadata();
        sub_267BB41B0(v300);
        if (!v301)
        {
          goto LABEL_154;
        }

        sub_267EF3B18();
        OUTLINED_FUNCTION_62_0();
        v302 = swift_allocObject();
        v492 = v294;
        *(v302 + 16) = v294;
        *(v302 + 24) = v293;
        v494 = v293;

        OUTLINED_FUNCTION_39_1();
        sub_267EF3B08();
        sub_267EF3848();

        __swift_destroy_boxed_opaque_existential_0(&v517);
        v303 = v496;
        if (v496)
        {

          v304 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          v305 = v491;
          v306 = v303;
          v307 = 2;
        }

        else
        {
          v446 = v497;
          if (!v497)
          {

            if (qword_280228818 != -1)
            {
              OUTLINED_FUNCTION_0();
            }

            v482 = sub_267EF8A08();
            OUTLINED_FUNCTION_30_1(v482, qword_280240FB0);
            v483 = sub_267EF89F8();
            v484 = sub_267EF95E8();
            if (OUTLINED_FUNCTION_27(v484))
            {
              v485 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_61(v485);
              OUTLINED_FUNCTION_45();
              OUTLINED_FUNCTION_90_0(v486, v487, v488, v489);
              OUTLINED_FUNCTION_40_0();
            }

            goto LABEL_124;
          }

          v447 = objc_allocWithZone(MEMORY[0x277CD3E98]);
          v305 = v490;
          v306 = v446;
          v307 = 1;
        }

        v448 = sub_267E7605C(v305, v306, v307);
        sub_267EF2A58();
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v449, v450, v451, v452);
        objc_allocWithZone(MEMORY[0x277CD3E90]);
        v453 = v448;
        OUTLINED_FUNCTION_10_9();
        v462 = sub_267C7BD3C(v454, v455, v456, v457, v458, v459, v460, v461, 0);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v463 = sub_267EF8A08();
        __swift_project_value_buffer(v463, qword_280240FB0);
        v464 = v462;
        v465 = sub_267EF89F8();
        v466 = sub_267EF95D8();

        if (os_log_type_enabled(v465, v466))
        {
          v467 = OUTLINED_FUNCTION_48();
          v468 = swift_slowAlloc();
          *v467 = 138412290;
          *(v467 + 4) = v464;
          *v468 = v464;
          v469 = v464;
          _os_log_impl(&dword_267B93000, v465, v466, "MessagesFlowDelegatePlugin Got recipient from newMessageToContact direct invocation: %@", v467, 0xCu);
          sub_267B9F98C(v468, &unk_280229E30, &unk_267EFC270);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_40_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        OUTLINED_FUNCTION_94();
        v470 = swift_allocObject();
        *(v470 + 16) = xmmword_267EFCA40;
        *(v470 + 32) = v464;
        v471 = v464;
        sub_267C29C24();
        v473 = v472;

        swift_setDeallocating();
        sub_267DB6FD4();
        if (v473)
        {
          *&v517 = v473;
          type metadata accessor for SendMessageFlow(0);
          OUTLINED_FUNCTION_1_17();
          sub_267BB4430(v474, 255, v475);
          OUTLINED_FUNCTION_41_3();
          sub_267EF36E8();
          OUTLINED_FUNCTION_25_0();
        }

        goto LABEL_124;
      case 8u:
        v308 = *v52;
        v309 = v52[1];
        v105 = v52[2];
        v310 = sub_267BAF0DC(v105);
        if (!v310)
        {
          goto LABEL_120;
        }

        v311 = v310;
        v497 = v308;
        v498 = v309;
        *&v517 = MEMORY[0x277D84F90];
        sub_267EF9BF8();
        if ((v311 & 0x8000000000000000) == 0)
        {
          v312 = 0;
          do
          {
            if ((v105 & 0xC000000000000001) != 0)
            {
              MEMORY[0x26D609870](v312, v105);
            }

            else
            {
              v313 = *(v105 + 8 * v312 + 32);
            }

            ++v312;
            sub_267EF2A58();
            OUTLINED_FUNCTION_78();
            __swift_storeEnumTagSinglePayload(v314, v315, v316, v317);
            v318 = objc_allocWithZone(MEMORY[0x277CD3E90]);
            OUTLINED_FUNCTION_114_1();
            OUTLINED_FUNCTION_72();
            OUTLINED_FUNCTION_10_9();
            sub_267C7BD3C(v319, v320, v321, v322, v323, v324, v325, v326, 0);
            sub_267EF9BD8();
            v327 = *(v517 + 16);
            sub_267EF9C08();
            sub_267EF9C18();
            sub_267EF9BE8();
          }

          while (v311 != v312);
LABEL_120:

          sub_267C29C24();
          v434 = v433;

          if (v434)
          {
            *&v517 = v434;
            type metadata accessor for SendMessageFlow(0);
            OUTLINED_FUNCTION_1_17();
LABEL_122:
            sub_267BB4430(v81, 255, v82);
            OUTLINED_FUNCTION_41_3();
            sub_267EF36E8();
            OUTLINED_FUNCTION_53_0();
LABEL_123:
          }

          goto LABEL_124;
        }

        __break(1u);
LABEL_150:
        OUTLINED_FUNCTION_0();
LABEL_24:
        v130 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v130, qword_280240FB0);
        v131 = sub_267EF89F8();
        v132 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v132))
        {
          v133 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_31_5(v133);
          OUTLINED_FUNCTION_14_8(&dword_267B93000, v134, v135, "#SendMessageFlow non-shim intent request, marking as app selected by user");
          OUTLINED_FUNCTION_18_2();
        }

        v39[96] = 1;
LABEL_27:
        v136 = *(&v518 + 1);
        v137 = v519;
        v138 = __swift_project_boxed_opaque_existential_0(&v517, *(&v518 + 1));
        v139 = *(v137 + 24);
        v140 = v54;
        v139(v524, v136, v137);
        __swift_project_boxed_opaque_existential_0(v524, v525);
        OUTLINED_FUNCTION_25_0();
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(v521, v522);
        OUTLINED_FUNCTION_25_0();
        sub_267EF42B8();
        if (v141)
        {
          sub_267EF8FF8();
          OUTLINED_FUNCTION_25_0();
        }

        else
        {
          v138 = 0;
        }

        v416 = v500;
        v417 = v498;
        v418 = v493;
        v419 = OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_92_1(v419, sel__setOriginatingDeviceIdsIdentifier_);

        v420 = (v105 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *v420 = v418;
        v420[1] = v140;
        OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_47_2();
        OUTLINED_FUNCTION_124_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        *(v105 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v497;
        *(v105 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v492;
        OUTLINED_FUNCTION_123_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
        OUTLINED_FUNCTION_12_7(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        __swift_destroy_boxed_opaque_existential_0(v537);
        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_1_17();
        sub_267BB4430(v421, 255, v422);
        OUTLINED_FUNCTION_41_3();
        sub_267EF36E8();
        OUTLINED_FUNCTION_54_1();

        (*(v495 + 8))(v494, v496);
        goto LABEL_125;
      case 9u:
        OUTLINED_FUNCTION_67_0();
        v367 = v52[2];
        v368 = v52[3];
        OUTLINED_FUNCTION_48_2();
        v369 = *(&v518 + 1);
        v370 = OUTLINED_FUNCTION_108_1(v519);
        __swift_project_boxed_opaque_existential_0(v370, v369);
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        v371 = swift_getObjCClassFromMetadata();
        sub_267BB41B0(v371);
        if (!v372)
        {
          goto LABEL_155;
        }

        sub_267EF3B18();
        OUTLINED_FUNCTION_62_0();
        v373 = swift_allocObject();
        *(v373 + 16) = v367;
        *(v373 + 24) = v368;

        OUTLINED_FUNCTION_39_1();
        v374 = sub_267EF3B08();
        sub_267EF3848();

        OUTLINED_FUNCTION_98_3();
        OUTLINED_FUNCTION_54_1();
        v495 = sub_267EF7C08();
        OUTLINED_FUNCTION_72();
        v379 = sub_267BB3BDC(v375, v376, v377, v378, 0, v498, v496, 0, 0, 0, 0);
        type metadata accessor for SendMessageState();
        OUTLINED_FUNCTION_89_1();
        sub_267BC963C(2);
        OUTLINED_FUNCTION_82_0();
        type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_49_2();
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0();
        }

        type metadata accessor for SendMessageCATs();
        OUTLINED_FUNCTION_63_2();
        v498 = OUTLINED_FUNCTION_83_1();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v497 = sub_267BB4A3C();
        type metadata accessor for ShareSheetProvider();
        OUTLINED_FUNCTION_32_2();
        OUTLINED_FUNCTION_119_0(&off_2878CFE90);
        OUTLINED_FUNCTION_117_2(v380, &off_2878D0D48);
        v381 = OUTLINED_FUNCTION_126_0(&type metadata for MessagesFeatureFlagsImpl);
        v499 = OUTLINED_FUNCTION_27_4(v381);
        v382 = swift_allocObject();
        v383 = OUTLINED_FUNCTION_60_3();
        __swift_mutable_project_boxed_opaque_existential_1(v383, v384);
        OUTLINED_FUNCTION_28_7();
        v496 = v385;
        OUTLINED_FUNCTION_23();
        v387 = *(v386 + 64);
        MEMORY[0x28223BE20](v388);
        v390 = OUTLINED_FUNCTION_5_9(v389, v490);
        v391(v390);
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_28_7();
        v494 = v392;
        OUTLINED_FUNCTION_23();
        v394 = *(v393 + 64);
        MEMORY[0x28223BE20](v395);
        OUTLINED_FUNCTION_0_0();
        v397 = OUTLINED_FUNCTION_19_4(v396);
        v398(v397);
        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_113_1();
        OUTLINED_FUNCTION_43_4(v399);
        OUTLINED_FUNCTION_42_3(&off_2878D0D48);
        OUTLINED_FUNCTION_58_0(&type metadata for MessagesFeatureFlagsImpl);
        if (![v379 outgoingMessageType])
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v400 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v400, qword_280240FB0);
          v401 = sub_267EF89F8();
          v402 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v402))
          {
            v403 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v403);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v404, v405, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_13_5(MEMORY[0x277D83B88]);
          sub_267ECE290();
          sub_267B9F98C(v524, &qword_28022AEF0, &qword_267EFCDE0);
        }

        OUTLINED_FUNCTION_111_0();
        if (!v129)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v406 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v406, qword_280240FB0);
          v407 = sub_267EF89F8();
          v408 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v408))
          {
            v409 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v409);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v410, v411, "#SendMessageFlow non-shim intent request, marking as app selected by user");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_69_1();
        }

        OUTLINED_FUNCTION_38_4();
        v412 = OUTLINED_FUNCTION_24_1();
        (v379)(v412);
        __swift_project_boxed_opaque_existential_0(v524, v525);
        OUTLINED_FUNCTION_17_2();
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(v521, v522);
        OUTLINED_FUNCTION_17_2();
        sub_267EF42B8();
        if (v413)
        {
          v414 = sub_267EF8FF8();
        }

        else
        {
          v414 = 0;
        }

        v416 = v500;
        v476 = v495;
        v477 = v498;
        v478 = OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_92_1(v478, sel__setOriginatingDeviceIdsIdentifier_);

        v479 = (v382 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *v479 = v476;
        v479[1] = v374;
        OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_47_2();
        OUTLINED_FUNCTION_124_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        *(v382 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v477;
        *(v382 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v497;
        OUTLINED_FUNCTION_123_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
        OUTLINED_FUNCTION_12_7(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        OUTLINED_FUNCTION_84_1();
        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_1_17();
        sub_267BB4430(v480, 255, v481);
        OUTLINED_FUNCTION_41_3();
LABEL_141:
        sub_267EF36E8();
        OUTLINED_FUNCTION_54_1();
LABEL_142:

        goto LABEL_125;
      case 0xAu:
        v328 = *v52;
        v329 = v52[1];
        v330 = v52[2];
        sub_267EF7C38();
        OUTLINED_FUNCTION_108();
        v498 = sub_267EF7C08();
        type metadata accessor for SendMessageState();
        OUTLINED_FUNCTION_89_1();
        v331 = v330;
        sub_267BC963C(3);
        OUTLINED_FUNCTION_82_0();
        type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_49_2();
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0();
        }

        type metadata accessor for SendMessageCATs();
        sub_267EF7B68();
        v497 = OUTLINED_FUNCTION_83_1();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v496 = sub_267BB4A3C();
        type metadata accessor for ShareSheetProvider();
        OUTLINED_FUNCTION_32_2();
        OUTLINED_FUNCTION_119_0(&off_2878CFE90);
        OUTLINED_FUNCTION_117_2(v332, &off_2878D0D48);
        v333 = OUTLINED_FUNCTION_126_0(&type metadata for MessagesFeatureFlagsImpl);
        v499 = OUTLINED_FUNCTION_27_4(v333);
        v334 = swift_allocObject();
        v335 = OUTLINED_FUNCTION_60_3();
        __swift_mutable_project_boxed_opaque_existential_1(v335, v336);
        OUTLINED_FUNCTION_28_7();
        v495 = v337;
        OUTLINED_FUNCTION_23();
        v339 = *(v338 + 64);
        MEMORY[0x28223BE20](v340);
        v342 = OUTLINED_FUNCTION_5_9(v341, v490);
        v343(v342);
        OUTLINED_FUNCTION_86_2();
        OUTLINED_FUNCTION_28_7();
        v494 = v344;
        OUTLINED_FUNCTION_23();
        v346 = *(v345 + 64);
        MEMORY[0x28223BE20](v347);
        OUTLINED_FUNCTION_0_0();
        v349 = OUTLINED_FUNCTION_19_4(v348);
        v350(v349);
        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_113_1();
        OUTLINED_FUNCTION_43_4(v351);
        OUTLINED_FUNCTION_42_3(&off_2878D0D48);
        OUTLINED_FUNCTION_58_0(&type metadata for MessagesFeatureFlagsImpl);
        if (![v331 outgoingMessageType])
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v352 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v352, qword_280240FB0);
          v353 = sub_267EF89F8();
          v354 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v354))
          {
            v355 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v355);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v356, v357, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_13_5(MEMORY[0x277D83B88]);
          sub_267ECE290();
          sub_267B9F98C(v524, &qword_28022AEF0, &qword_267EFCDE0);
        }

        OUTLINED_FUNCTION_111_0();
        if (!v129)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v358 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v358, qword_280240FB0);
          v359 = sub_267EF89F8();
          v360 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v360))
          {
            v361 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v361);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v362, v363, "#SendMessageFlow non-shim intent request, marking as app selected by user");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_69_1();
        }

        OUTLINED_FUNCTION_38_4();
        v364 = OUTLINED_FUNCTION_24_1();
        (v331)(v364);
        __swift_project_boxed_opaque_existential_0(v524, v525);
        OUTLINED_FUNCTION_17_2();
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(v521, v522);
        OUTLINED_FUNCTION_17_2();
        sub_267EF42B8();
        if (v365)
        {
          v366 = sub_267EF8FF8();
        }

        else
        {
          v366 = 0;
        }

        v416 = v500;
        v436 = v497;
        v435 = v498;
        v437 = OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_92_1(v437, sel__setOriginatingDeviceIdsIdentifier_);

        v438 = (v334 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state);
        *v438 = v435;
        v438[1] = v329;
        OUTLINED_FUNCTION_35_3();
        OUTLINED_FUNCTION_47_2();
        OUTLINED_FUNCTION_124_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
        *(v334 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v436;
        *(v334 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v496;
        OUTLINED_FUNCTION_123_0(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
        OUTLINED_FUNCTION_12_7(OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
        OUTLINED_FUNCTION_84_1();
        OUTLINED_FUNCTION_93_0();
        OUTLINED_FUNCTION_1_17();
        sub_267BB4430(v439, 255, v440);
        OUTLINED_FUNCTION_41_3();
        sub_267EF31C8();
        OUTLINED_FUNCTION_54_1();

        goto LABEL_125;
      case 0xDu:
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229498, &qword_267EFD2F8);
        v84 = (v52 + *(v83 + 48));
        v85 = *v84;
        v86 = v84[1];
        v87 = *(v52 + *(v83 + 64));
        v89 = v494;
        v88 = v495;
        v90 = v496;
        (*(v495 + 32))(v494, v52, v496);
        sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
        (*(v88 + 16))(v31, v89, v90);
        v91 = sub_267E80978(v31);
        sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        OUTLINED_FUNCTION_94();
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_267EFCA40;
        *(v92 + 32) = v91;
        v498 = v91;
        OUTLINED_FUNCTION_10_9();
        v101 = sub_267BB3BDC(v93, v94, v95, v96, v97, v98, v99, v100, 0, v92, 0);
        sub_267EF7C38();
        v493 = sub_267EF7C08();
        type metadata accessor for SendMessageState();
        OUTLINED_FUNCTION_89_1();
        v54 = v101;
        v102 = sub_267BC963C(4);
        OUTLINED_FUNCTION_82_0();
        type metadata accessor for SiriKitFlowFactoryImpl();
        OUTLINED_FUNCTION_49_2();
        if (qword_2802286F0 != -1)
        {
          OUTLINED_FUNCTION_4_0();
        }

        type metadata accessor for SendMessageCATs();
        OUTLINED_FUNCTION_63_2();
        v497 = OUTLINED_FUNCTION_83_1();
        __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
        v492 = sub_267BB4A3C();
        type metadata accessor for ShareSheetProvider();
        OUTLINED_FUNCTION_32_2();
        OUTLINED_FUNCTION_119_0(&off_2878CFE90);
        OUTLINED_FUNCTION_117_2(v103, &off_2878D0D48);
        v104 = OUTLINED_FUNCTION_126_0(&type metadata for MessagesFeatureFlagsImpl);
        v499 = OUTLINED_FUNCTION_27_4(v104);
        v105 = swift_allocObject();
        v106 = OUTLINED_FUNCTION_60_3();
        __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
        OUTLINED_FUNCTION_28_7();
        v491 = v108;
        OUTLINED_FUNCTION_23();
        v110 = *(v109 + 64);
        MEMORY[0x28223BE20](v111);
        v113 = OUTLINED_FUNCTION_5_9(v112, v490);
        v114(v113);
        __swift_mutable_project_boxed_opaque_existential_1(&v534, *(&v535 + 1));
        OUTLINED_FUNCTION_28_7();
        v490 = v115;
        OUTLINED_FUNCTION_23();
        v117 = *(v116 + 64);
        MEMORY[0x28223BE20](v118);
        OUTLINED_FUNCTION_0_0();
        v120 = OUTLINED_FUNCTION_19_4(v119);
        v121(v120);
        OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_113_1();
        OUTLINED_FUNCTION_43_4(v122);
        OUTLINED_FUNCTION_42_3(&off_2878D0D48);
        v528 = &type metadata for MessagesFeatureFlagsImpl;
        v529 = &off_2878D1228;
        sub_267BCE788(v54);
        v39 = v102;
        if (![v54 outgoingMessageType])
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v123 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v123, qword_280240FB0);
          v124 = sub_267EF89F8();
          v125 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v125))
          {
            v126 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_31_5(v126);
            OUTLINED_FUNCTION_14_8(&dword_267B93000, v127, v128, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text");
            OUTLINED_FUNCTION_18_2();
          }

          OUTLINED_FUNCTION_13_5(MEMORY[0x277D83B88]);
          sub_267ECE290();
          sub_267B9F98C(v524, &qword_28022AEF0, &qword_267EFCDE0);
        }

        OUTLINED_FUNCTION_111_0();
        if (v129)
        {
          goto LABEL_27;
        }

        if (qword_280228818 == -1)
        {
          goto LABEL_24;
        }

        goto LABEL_150;
      default:
        sub_267BB3B80(v52, type metadata accessor for DirectInvocationUseCases);
        break;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v56 = sub_267EF8A08();
  __swift_project_value_buffer(v56, qword_280240FB0);
  v57 = v498;
  (*(v6 + 16))(v11, v3, v498);
  v58 = sub_267EF89F8();
  v59 = sub_267EF95E8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = OUTLINED_FUNCTION_48();
    v61 = OUTLINED_FUNCTION_52();
    *&v517 = v61;
    *v60 = 136315138;
    Parse.DirectInvocation.description.getter();
    (*(v6 + 8))(v11, v57);
    v62 = OUTLINED_FUNCTION_114_1();
    v65 = sub_267BA33E8(v62, v63, v64);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_267B93000, v58, v59, "MessagesFlowDelegatePlugin received an unsupported directInvocation: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_18_2();
  }

  else
  {

    (*(v6 + 8))(v11, v57);
  }

LABEL_124:
  v416 = v500;
LABEL_125:
  sub_267B9F98C(v416, &unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BA6C4C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_62_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void OUTLINED_FUNCTION_78_4()
{

  JUMPOUT(0x26D608E60);
}

uint64_t OUTLINED_FUNCTION_78_6()
{

  return sub_267EF9C68();
}

BOOL OUTLINED_FUNCTION_78_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_78_9()
{
  v7 = *(v0 + 408);
  v8 = *(v0 + 392);
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v6 = *(v3 + 8);

  return v2;
}

uint64_t OUTLINED_FUNCTION_78_10(uint64_t a1)
{
  *(v1 + 536) = a1;
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  v5 = *(v4 + 8);
  return v3;
}

void OUTLINED_FUNCTION_78_12()
{
  v4 = v0[34];
  v0[11] = v2;
  v0[12] = v1;
  v0[2] = v3;
}

uint64_t OUTLINED_FUNCTION_78_13()
{
  *v0 = 2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_78_14()
{
}

uint64_t OUTLINED_FUNCTION_78_15()
{

  return sub_267EF7B68();
}

uint64_t OUTLINED_FUNCTION_78_16()
{

  return sub_267EF8348();
}

void OUTLINED_FUNCTION_35_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[10];
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_267B9F98C(v1 + v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_35_3()
{
  *(v0 + 16) = v1;
  *(v0 + 40) = 1;

  return type metadata accessor for SendMessageFlow.State(0);
}

uint64_t OUTLINED_FUNCTION_35_6@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267C2FB6C(v4 + a3, v3, a1, a2);
}

void OUTLINED_FUNCTION_35_7(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_35_8()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_9(uint64_t a1)
{
  *(v1 + 16) = a1;

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return swift_once();
}

char *OUTLINED_FUNCTION_35_12(uint64_t a1)
{

  return sub_267BC7934(0, a1 & ~(a1 >> 63), 0);
}

uint64_t OUTLINED_FUNCTION_35_15()
{
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[152];
  *(v1 - 152) = v0[155];
  *(v1 - 144) = v4;
  v5 = v0[145];
  v6 = v0[144];
  v7 = v0[119];
  *(v1 - 136) = v0[118];
  *(v1 - 128) = v7;
  result = v0[114];
  v9 = v0[113];
  v10 = v0[112];
  v11 = v0[111];
  *(v1 - 104) = v0[109];
  *(v1 - 96) = v6;
  v12 = v0[92];
  v13 = v0[91];
  *(v1 - 120) = v11;
  *(v1 - 112) = v13;
  v14 = v0[90];
  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[87];
  v18 = *(v9 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_18()
{
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 40) + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_35_19()
{
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[31];
}

uint64_t OUTLINED_FUNCTION_35_20()
{

  return sub_267B9FF34(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_21()
{
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[67];
}

uint64_t OUTLINED_FUNCTION_35_22()
{
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[60];
  v5 = v0[61];
  v6 = v0[59];
  v8 = v0[50];
  v7 = v0[51];
  v9 = v0[48];

  return sub_267EF7C18();
}

uint64_t OUTLINED_FUNCTION_35_24()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  result = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_27()
{

  return sub_267C269D0(v0, type metadata accessor for DirectInvocationUseCases);
}

uint64_t OUTLINED_FUNCTION_35_28()
{

  return sub_267EF41C8();
}

void *OUTLINED_FUNCTION_23_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v13 + 944) = result;
  result[2] = v17;
  result[3] = v15;
  result[4] = v14;
  result[5] = v10;
  result[6] = a9;
  result[7] = v18;
  result[8] = a10;
  result[9] = v16;
  result[10] = v11;
  v19 = *v12;
  return result;
}

void OUTLINED_FUNCTION_21_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_23_4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __n128 a16, char a17)
{
  a16 = a1;
  a17 = 0;

  return sub_267C5C400(&a16, v17);
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_267C58880(v0, type metadata accessor for SmsContactIntentNode);
}

void OUTLINED_FUNCTION_23_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_23_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_23_9()
{
  v1 = v0[144];
  v2 = v0[143];
  v3 = v0[142];
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t *OUTLINED_FUNCTION_23_14()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_23_15@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = 0xD000000000000014;
  *(a1 + 40) = a2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_23_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v13[26];
  v15 = v13[19];
  v16 = v13[10];
  __swift_storeEnumTagSinglePayload(v14, a2, 1, a12);
  v17 = v16 + *(v12 + 20);

  return sub_267BD3DDC(v14, v17);
}

uint64_t OUTLINED_FUNCTION_23_18()
{
  result = v0[111];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[93];
  v7 = v0[87];
  v8 = *(v0[110] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_19()
{

  return sub_267EF9978();
}

void OUTLINED_FUNCTION_23_20()
{
  v1 = *(v0 - 112);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_23_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v25 = v16[46];
  v26 = v16[47];
  v17 = v16[45];
  v24 = v16[44];
  v18 = v16[43];
  v19 = v16[42];
  v20 = v16[40];
  v21 = v16[41];
  v22 = v16[37];
  return __swift_storeEnumTagSinglePayload(v16[52], a2, 1, a16);
}

uint64_t OUTLINED_FUNCTION_23_24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);
}

uint64_t OUTLINED_FUNCTION_23_28()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_23_29()
{

  JUMPOUT(0x26D608E60);
}

uint64_t OUTLINED_FUNCTION_23_30()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_23_31(uint64_t a1)
{
  *(a1 + 48) = v3;
  *(a1 + 72) = v1;
  *(a1 + 80) = 0x656E696C66666FLL;
  *(a1 + 88) = 0xE700000000000000;
  *(a1 + 96) = v2;
  *(a1 + 120) = v1;
  *(a1 + 128) = 7368801;
  *(a1 + 136) = 0xE300000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_23_33(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v1);

  return sub_267E583B0(v1, v2);
}

uint64_t OUTLINED_FUNCTION_23_37()
{
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
}

__n128 OUTLINED_FUNCTION_42_1(float a1)
{
  *v1 = a1;
  v3 = *(v2 + 256);
  *(v2 + 368) = *(v2 + 240);
  *(v2 + 384) = v3;
  result = *(v2 + 272);
  v5 = *(v2 + 288);
  *(v2 + 400) = result;
  *(v2 + 416) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_2()
{
  v2 = *(v0 - 280);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_42_3(uint64_t a1@<X8>)
{
  v2[82] = a1;
  v2[81] = v3;
  v2[78] = v1;
}

void OUTLINED_FUNCTION_42_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_8()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[8];
}

uint64_t OUTLINED_FUNCTION_42_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[6] = a2;
  v3[9] = a1;
  v3[10] = v4;
  v3[11] = (v2 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_42_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_14()
{
  result = v0[65];
  v2 = v0[61];
  v3 = *(v0[62] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_15@<X0>(uint64_t a1@<X8>)
{

  return sub_267BD3DDC(v1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_42_16()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 176));
  v3 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_42_17()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_42_18()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_42_20()
{

  return sub_267BC20F4(v2, 0, 0, v1, v0);
}

__n128 *OUTLINED_FUNCTION_42_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x796C7065527369;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t *OUTLINED_FUNCTION_42_23@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0(v2);
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = v9;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  return a9;
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_16_3()
{
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_267EF2CC8();
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return ConversationEventStore.Event.rawValue.getter();
}

BOOL OUTLINED_FUNCTION_16_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_15()
{
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[155];
  v6 = v0[154];
}

id OUTLINED_FUNCTION_16_17()
{
  v7 = *(v0 + 696);
  v8 = *(v0 + 680);
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v6 = *(v3 + 8);

  return v2;
}

uint64_t OUTLINED_FUNCTION_16_20@<X0>(uint64_t a1@<X8>)
{
  result = __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
  v5 = *(v3 + 28);
  return result;
}

void OUTLINED_FUNCTION_16_23()
{
  v1[11] = v2;
  v1[12] = v0;
  v1[13] = 4024639;
  v1[14] = 0xE300000000000000;
}

uint64_t OUTLINED_FUNCTION_16_24(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, v1);
  v3 = *(v2 + 8);
  return v1;
}

void *OUTLINED_FUNCTION_16_25@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v3 - 224);
  result[8] = a2;
  result[9] = v4;
  result[10] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_26()
{
}

double OUTLINED_FUNCTION_16_27()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[14];
  v4 = v0[11];
  return v0[23];
}

uint64_t OUTLINED_FUNCTION_16_30()
{

  return sub_267EF9A68();
}

uint64_t OUTLINED_FUNCTION_16_32()
{

  return sub_267EF3CD8();
}

uint64_t OUTLINED_FUNCTION_16_34(uint64_t a1)
{
  *(v1 + 96) = a1;
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);

  return sub_267EF3C28();
}

uint64_t OUTLINED_FUNCTION_16_35()
{

  return sub_267EF89B8();
}

uint64_t OUTLINED_FUNCTION_16_38()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_16_41()
{

  return sub_267EF8238();
}