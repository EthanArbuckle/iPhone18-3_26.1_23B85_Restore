void sub_2236D3640(uint64_t a1, uint64_t a2)
{
  v461 = a1;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F780, &unk_223731E10);
  v4 = *(v452[-1].isa + 8);
  v6 = MEMORY[0x28223BE20](v452, v5);
  v453 = (&v411 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v8);
  v451 = (&v411 - v9);
  v432 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
  v10 = *(v432 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v432, v12);
  v439 = &v411 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = sub_223729F78();
  v434 = *(v435 - 8);
  v14 = *(v434 + 64);
  MEMORY[0x28223BE20](v435, v15);
  v433 = &v411 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_223729F48();
  v430 = *(v431 - 8);
  v17 = *(v430 + 64);
  MEMORY[0x28223BE20](v431, v18);
  v429 = &v411 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = sub_223729F88();
  v437 = *(v438 - 8);
  v20 = *(v437 + 64);
  MEMORY[0x28223BE20](v438, v21);
  v436 = &v411 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v440 = sub_223729FB8();
  v442 = *(v440 - 8);
  v23 = *(v442 + 8);
  MEMORY[0x28223BE20](v440, v24);
  v441 = &v411 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v448 = &v411 - v29;
  v30 = type metadata accessor for RequestInfo.RequestRoute(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v34 = &v411 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RequestInfo.UserInput(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8, v37);
  v444 = &v411 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = sub_2237287A8();
  v449 = *(v450 - 1);
  v39 = *(v449 + 64);
  MEMORY[0x28223BE20](v450, v40);
  v454 = &v411 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = sub_22372A548();
  v455 = *(v456 - 8);
  v42 = *(v455 + 64);
  v44 = MEMORY[0x28223BE20](v456, v43);
  v447 = &v411 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v459 = &v411 - v47;
  v48 = sub_223727408();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v52 = MEMORY[0x28223BE20](v48, v51);
  v54 = &v411 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v52, v55);
  v446 = &v411 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v443 = &v411 - v60;
  MEMORY[0x28223BE20](v59, v61);
  v63 = &v411 - v62;
  v64 = sub_223729D78();
  v457 = *(v64 - 8);
  v458 = v64;
  v65 = v457[8];
  MEMORY[0x28223BE20](v64, v66);
  v445 = &v411 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8, v70);
  v72 = &v411 - v71;
  v73 = sub_2237287C8();
  v74 = *(*(v73 - 8) + 64);
  v76 = MEMORY[0x28223BE20](v73, v75);
  v78 = MEMORY[0x28223BE20](v76, v77);
  v80 = MEMORY[0x28223BE20](v78, &v411 - v79);
  v82 = MEMORY[0x28223BE20](v80, v81);
  v84 = MEMORY[0x28223BE20](v82, v83);
  v86 = MEMORY[0x28223BE20](v84, v85);
  v88 = (&v411 - v87);
  v90 = MEMORY[0x28223BE20](v86, v89);
  v98 = &v411 - v94;
  if (*(v2 + qword_28132A188) != 1)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v117 = sub_22372AC98();
    __swift_project_value_buffer(v117, qword_28132B680);
    v113 = sub_22372AC88();
    v114 = sub_22372B268();
    if (!os_log_type_enabled(v113, v114))
    {
      goto LABEL_23;
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    v116 = "Not executing yet because request is still in candidate mode";
LABEL_16:
    _os_log_impl(&dword_223620000, v113, v114, v116, v115, 2u);
    MEMORY[0x223DE8A80](v115, -1, -1);
    goto LABEL_23;
  }

  v428 = v49;
  v99 = v48;
  v460 = v2;
  v100 = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

  v101 = *(v2 + qword_28132B868 + 8);
  if (!v101)
  {
    goto LABEL_18;
  }

  v102 = *(v2 + qword_28132B868);
  if (v102 != v461 || v101 != a2)
  {
    v426 = v90;
    v421 = v34;
    v424 = v96;
    v423 = v97;
    v425 = v88;
    v420 = v91;
    v419 = v92;
    v103 = v101;
    v422 = v93;
    v427 = v54;
    v104 = v63;
    v105 = &v411 - v94;
    v106 = v102;
    v107 = v10;
    v108 = v95;
    v109 = sub_22372B6E8();
    v93 = v422;
    v92 = v419;
    v91 = v420;
    v88 = v425;
    v97 = v423;
    v101 = v103;
    v96 = v424;
    v34 = v421;
    v95 = v108;
    v10 = v107;
    v102 = v106;
    v98 = v105;
    v63 = v104;
    v54 = v427;
    v110 = v109;
    v90 = v426;
    v2 = v460;
    if ((v110 & 1) == 0)
    {
LABEL_18:
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v118 = sub_22372AC98();
      __swift_project_value_buffer(v118, qword_28132B680);
      v119 = v100;

      v120 = v460;

      v113 = sub_22372AC88();
      v121 = sub_22372B268();

      if (!os_log_type_enabled(v113, v121))
      {
        goto LABEL_23;
      }

      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v465 = v123;
      *v122 = 136315394;
      v466 = v461;
      v467 = v119;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
      v124 = sub_22372B038();
      v126 = sub_223623274(v124, v125, &v465);

      *(v122 + 4) = v126;
      *(v122 + 12) = 2080;
      v127 = *(v120 + qword_28132B868 + 8);
      v466 = *(v120 + qword_28132B868);
      v467 = v127;

      v128 = sub_22372B038();
      v130 = sub_223623274(v128, v129, &v465);

      *(v122 + 14) = v130;
      _os_log_impl(&dword_223620000, v113, v121, "Not executing trpId: %s because it's different from selectedTrpId: %s", v122, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v123, -1, -1);
      v131 = v122;
      goto LABEL_22;
    }
  }

  v111 = *(v2 + qword_28132B890);
  if (v111 == 2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v112 = sub_22372AC98();
    __swift_project_value_buffer(v112, qword_28132B680);
    v113 = sub_22372AC88();
    v114 = sub_22372B268();
    if (!os_log_type_enabled(v113, v114))
    {
      goto LABEL_23;
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    v116 = "Not commiting request yet: MitigationDecision not received yet";
    goto LABEL_16;
  }

  if (v111)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v132 = sub_22372AC98();
    __swift_project_value_buffer(v132, qword_28132B680);
    v113 = sub_22372AC88();
    v114 = sub_22372B268();
    if (!os_log_type_enabled(v113, v114))
    {
      goto LABEL_23;
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    v116 = "Not commiting request: Request should be mitigated";
    goto LABEL_16;
  }

  v422 = v93;
  v133 = v92;
  v134 = v91;
  v425 = v88;
  v423 = v97;
  v417 = v10;
  v418 = v98;
  v424 = v96;
  v427 = v54;
  v419 = v95;
  v426 = v90;
  v135 = v2;
  v136 = qword_28132B830;
  v420 = v102;
  v137 = v101;
  swift_beginAccess();
  v138 = *(v135 + v136);
  v139 = *(v138 + 16);
  v461 = v137;
  v140 = v420;

  if (!v139)
  {
LABEL_35:
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v153 = sub_22372AC98();
    __swift_project_value_buffer(v153, qword_28132B680);
    v154 = v461;

    v113 = sub_22372AC88();
    v155 = sub_22372B268();

    if (!os_log_type_enabled(v113, v155))
    {

      goto LABEL_23;
    }

    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v465 = v157;
    *v156 = 136315138;
    v158 = sub_223623274(v140, v154, &v465);

    *(v156 + 4) = v158;
    _os_log_impl(&dword_223620000, v113, v155, "Not committing request yet: request routing decision has not yet arrived for trpCandidateId %s", v156, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v157);
    MEMORY[0x223DE8A80](v157, -1, -1);
    v131 = v156;
LABEL_22:
    MEMORY[0x223DE8A80](v131, -1, -1);
LABEL_23:

    return;
  }

  v141 = sub_2236261A0(v140, v461);
  if ((v142 & 1) == 0)
  {

    goto LABEL_35;
  }

  v143 = *(v419 + 16);
  v144 = *(v138 + 56) + *(v419 + 72) * v141;
  v145 = v418;
  v414 = v419 + 16;
  v413 = v143;
  (v143)(v418, v144, v426);

  v146 = qword_28132B850;
  v147 = v460;
  swift_beginAccess();
  v148 = *(v147 + v146);
  v149 = *(v148 + 16);
  v415 = v99;
  if (v149)
  {

    v150 = sub_2236261A0(v420, v461);
    if (v151)
    {
      (v457[2])(v72, *(v148 + 56) + v457[9] * v150, v458);
      v152 = 0;
    }

    else
    {
      v152 = 1;
    }

    v159 = v63;
  }

  else
  {
    v152 = 1;
    v159 = v63;
  }

  v160 = v457;
  v161 = v152;
  v162 = v458;
  (v457[7])(v72, v161, 1, v458);
  v163 = (v160[6])(v72, 1, v162);
  v164 = v460;
  v421 = v34;
  if (v163)
  {
    sub_223626478(v72, &qword_27D08F770, &qword_223731DE0);
    v412 = 0;
    v416 = 0;
  }

  else
  {
    v165 = v445;
    (v160[2])(v445, v72, v162);
    sub_223626478(v72, &qword_27D08F770, &qword_223731DE0);
    v166 = sub_2236EF704();
    v164 = v460;
    v412 = v166;
    v416 = v167;
    (v160[1])(v165, v162);
  }

  v168 = *(v164 + qword_28132B8C0);
  if (v168)
  {
    v169 = *(v428 + 16);
    v411 = v159;
    v457 = v169;
    v458 = v428 + 16;
    (v169)(v159, &v168[OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId], v415);

    sub_2236D7D60(v420, v461, v459);
    v170 = v145;
    v171 = v425;
    v172 = v170;
    v173 = v426;
    v413(v425);
    v174 = v419;
    v175 = (*(v419 + 88))(v171, v173);
    if (v175 == *MEMORY[0x277D5CB90])
    {
      (*(v174 + 96))(v171, v426);
      (*(v449 + 32))(v454, v171, v450);
      v176 = sub_223728798();
      if (!v177)
      {

        v178 = v172;
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v222 = sub_22372AC98();
        __swift_project_value_buffer(v222, qword_28132B680);
        v223 = v413;
        (v413)(v134, v172, v426);
        v224 = v461;

        v225 = sub_22372AC88();
        v226 = sub_22372B268();

        if (os_log_type_enabled(v225, v226))
        {
          v227 = swift_slowAlloc();
          v452 = v225;
          v228 = v227;
          v453 = swift_slowAlloc();
          v464 = v453;
          *v228 = 136315394;
          LODWORD(v451) = v226;
          v229 = v426;
          v223(v424, v134, v426);
          v230 = v168;
          v231 = sub_22372B038();
          v232 = v172;
          v234 = v233;
          v235 = *(v419 + 8);
          v235(v134, v229);
          v236 = v231;
          v168 = v230;
          v237 = sub_223623274(v236, v234, &v464);
          v178 = v232;

          *(v228 + 4) = v237;
          *(v228 + 12) = 2080;
          v238 = sub_223623274(v420, v224, &v464);

          *(v228 + 14) = v238;
          v205 = v415;
          v239 = v452;
          _os_log_impl(&dword_223620000, v452, v451, "Received NLRoutingDecisionMessage with no rewrite decision: %s for trpCandidateId=%s. Reusing eager child request.", v228, 0x16u);
          v240 = v453;
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v240, -1, -1);
          MEMORY[0x223DE8A80](v228, -1, -1);

          v241 = v462;
          v212 = v460;
          v242 = v454;
        }

        else
        {

          v235 = *(v419 + 8);
          v235(v134, v426);
          v241 = v462;
          v212 = v460;
          v242 = v454;
          v205 = v415;
        }

        sub_2236D7F74(v459);
        v210 = v241;
        v293 = v428;
        if (!v241)
        {
          (*(v449 + 8))(v242, v450);
          goto LABEL_134;
        }

        (*(v449 + 8))(v242, v450);
        (*(v293 + 8))(v411, v205);
        v235(v178, v426);
        goto LABEL_148;
      }

      v452 = v177;
      v453 = v176;
      v178 = v172;
      if (qword_281328E58 != -1)
      {
        goto LABEL_155;
      }

      while (1)
      {
        v445 = v168;
        v179 = sub_22372AC98();
        __swift_project_value_buffer(v179, qword_28132B680);
        v180 = v413;
        (v413)(v133, v178, v426);
        v181 = v461;

        v182 = sub_22372AC88();
        v183 = sub_22372B268();

        v184 = os_log_type_enabled(v182, v183);
        v185 = v415;
        if (v184)
        {
          v186 = swift_slowAlloc();
          v451 = swift_slowAlloc();
          v464 = v451;
          *v186 = 136315394;
          LODWORD(v442) = v183;
          v187 = v178;
          v188 = v426;
          v180(v424, v133, v426);
          v189 = sub_22372B038();
          v191 = v190;
          v192 = v188;
          v178 = v187;
          v193 = v411;
          (*(v419 + 8))(v133, v192);
          v194 = sub_223623274(v189, v191, &v464);

          *(v186 + 4) = v194;
          *(v186 + 12) = 2080;
          v195 = sub_223623274(v420, v181, &v464);

          *(v186 + 14) = v195;
          v196 = v428;
          _os_log_impl(&dword_223620000, v182, v442, "Received NLRoutingDecisionMessage with rewrite: %s for trpCandidateId=%s. Creating 1 new child request.", v186, 0x16u);
          v197 = v451;
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v197, -1, -1);
          v198 = v186;
          v185 = v415;
          MEMORY[0x223DE8A80](v198, -1, -1);

          v199 = v457;
          v200 = v443;
        }

        else
        {

          (*(v419 + 8))(v133, v426);
          v199 = v457;
          v200 = v443;
          v196 = v428;
          v193 = v411;
        }

        sub_2237273F8();
        v461 = sub_2237273B8();
        v451 = v243;
        v244 = *(v196 + 8);
        v443 = (v196 + 8);
        v442 = v244;
        v244(v200, v185);
        v199(v446, v193, v185);
        v245 = sub_223728788();
        v247 = v246;
        v248 = type metadata accessor for RequestInfo.UserQuery(0);
        v249 = v444;
        v250 = &v444[*(v248 + 28)];
        sub_223728778();
        v251 = *(v248 + 32);
        v252 = sub_2237287E8();
        (*(*(v252 - 8) + 56))(&v249[v251], 1, 1, v252);
        v253 = v416;
        *v249 = v412;
        *(v249 + 1) = v253;
        v254 = v452;
        *(v249 + 2) = v453;
        *(v249 + 3) = v254;
        *(v249 + 4) = v245;
        *(v249 + 5) = v247;
        (*(*(v248 - 8) + 56))(v249, 0, 1, v248);
        (*(v455 + 16))(v447, v459, v456);
        v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
        (*(*(v255 - 8) + 56))(v421, 1, 1, v255);
        (v413)(v424, v178, v426);
        v256 = sub_223729D68();
        (*(*(v256 - 8) + 56))(v448, 1, 1, v256);
        v257 = type metadata accessor for RequestInfo(0);
        v258 = *(v257 + 48);
        v259 = *(v257 + 52);
        v260 = swift_allocObject();
        v261 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
        v262 = MEMORY[0x277D84F90];
        *(v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
        v263 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
        *(v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList) = v262;
        v264 = v185;
        v265 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
        v266 = sub_22372A098();
        v267 = *(*(v266 - 8) + 56);
        v268 = v260 + v265;
        v205 = v264;
        v267(v268, 1, 1, v266);
        v267(v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v266);
        v269 = v428;
        v270 = v451;
        *(v260 + 16) = v461;
        *(v260 + 24) = v270;
        (*(v269 + 32))(v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v446, v264);
        sub_223639818(v249, v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
        (*(v455 + 32))(v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v447, v456);
        swift_beginAccess();
        v271 = MEMORY[0x277D84F90];
        *(v260 + v261) = MEMORY[0x277D84F90];
        swift_beginAccess();
        *(v260 + v263) = v271;
        sub_223639818(v421, v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
        v272 = v419;
        (*(v419 + 32))(v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v424, v426);
        v273 = v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
        *v273 = 0;
        *(v273 + 8) = 1;
        v274 = v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
        *v274 = 0;
        *(v274 + 8) = 1;
        *(v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 0;
        sub_2236EA450(v448, v260 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
        v275 = swift_allocObject();
        *(v275 + 16) = xmmword_22372FCE0;
        *(v275 + 32) = v260;

        v212 = v460;
        v276 = v462;
        sub_2236D9818(v275);
        v210 = v276;
        if (v276)
        {

          (*(v449 + 8))(v454, v450);
          v442(v411, v205);
          (*(v272 + 8))(v418, v426);
          goto LABEL_148;
        }

        (*(v449 + 8))(v454, v450);

LABEL_79:
        v178 = v418;
        v168 = v445;
LABEL_134:
        v399 = qword_28132B870;
        swift_beginAccess();
        v400 = *(v212 + v399);
        v133 = v205;
        if (v400 >> 62)
        {
          v410 = v400;
          v401 = sub_22372B558();
          v400 = v410;
        }

        else
        {
          v401 = *((v400 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v402 = MEMORY[0x277D84F90];
        if (!v401)
        {
          break;
        }

        v445 = v168;
        v462 = v210;
        v468 = MEMORY[0x277D84F90];
        v403 = v400;

        sub_2236F1BB8(0, v401 & ~(v401 >> 63), 0);
        if ((v401 & 0x8000000000000000) == 0)
        {
          v404 = 0;
          v402 = v468;
          v405 = v403;
          v461 = v403 & 0xC000000000000001;
          v406 = v401;
          do
          {
            if (v461)
            {
              v407 = MEMORY[0x223DE7ED0](v404, v405);
              (v457)(v427, v407 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v133);
              swift_unknownObjectRelease();
            }

            else
            {
              (v457)(v427, *(v405 + 8 * v404 + 32) + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v133);
            }

            v468 = v402;
            v409 = *(v402 + 16);
            v408 = *(v402 + 24);
            if (v409 >= v408 >> 1)
            {
              sub_2236F1BB8(v408 > 1, v409 + 1, 1);
              v402 = v468;
            }

            ++v404;
            *(v402 + 16) = v409 + 1;
            (*(v428 + 32))(v402 + ((*(v428 + 80) + 32) & ~*(v428 + 80)) + *(v428 + 72) * v409, v427, v133);
            v405 = v403;
          }

          while (v406 != v404);

          v178 = v418;
          break;
        }

        __break(1u);
LABEL_155:
        swift_once();
      }

      sub_2236E4A34(v402);

      (*(v428 + 8))(v411, v133);
LABEL_147:
      (*(v419 + 8))(v178, v426);
LABEL_148:
      (*(v455 + 8))(v459, v456);
      return;
    }

    if (v175 == *MEMORY[0x277D5CB78])
    {

      (*(v419 + 8))(v425, v426);
      v178 = v172;
      v205 = v415;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v206 = sub_22372AC98();
      __swift_project_value_buffer(v206, qword_28132B680);
      v207 = sub_22372AC88();
      v208 = sub_22372B278();
      v209 = os_log_type_enabled(v207, v208);
      v210 = v462;
      if (v209)
      {
        v211 = swift_slowAlloc();
        *v211 = 0;
        _os_log_impl(&dword_223620000, v207, v208, "Unexpected routing decision. Ignoring!", v211, 2u);
        MEMORY[0x223DE8A80](v211, -1, -1);
      }

      v212 = v460;
      goto LABEL_134;
    }

    v205 = v415;
    if (v175 == *MEMORY[0x277D5CB70])
    {

      v213 = v425;
      (*(v419 + 96))(v425, v426);
      v214 = *v213;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v215 = sub_22372AC98();
      __swift_project_value_buffer(v215, qword_28132B680);

      v216 = sub_22372AC88();
      v217 = sub_22372B268();
      v218 = os_log_type_enabled(v216, v217);
      v445 = v168;
      if (v218)
      {
        v219 = v205;
        v220 = swift_slowAlloc();
        *v220 = 134217984;
        *(v220 + 4) = *(v214 + 16);

        _os_log_impl(&dword_223620000, v216, v217, "Received NLRoutingDecisionMessage with queryRewrite. Creating %ld new child request", v220, 0xCu);
        v221 = v220;
        v205 = v219;
        MEMORY[0x223DE8A80](v221, -1, -1);
      }

      else
      {
      }

      v145 = *(v214 + 16);
      if (!v145)
      {

        v308 = MEMORY[0x277D84F90];
        v212 = v460;
LABEL_103:
        v319 = v462;
        sub_2236D9818(v308);
        v210 = v319;
        v178 = v418;
        v168 = v445;
        if (!v319)
        {

          goto LABEL_134;
        }

        (*(v428 + 8))(v411, v205);
        goto LABEL_147;
      }

      v464 = MEMORY[0x277D84F90];

      sub_22372B4F8();
      v294 = *(v214 + 16);
      v295 = sub_223728838();
      v296 = 0;
      v297 = *(v295 - 8);
      v461 = v214 + ((*(v297 + 80) + 32) & ~*(v297 + 80));
      v454 = (v297 + 16);
      v450 = (v297 + 32);
      if (v294 >= v145)
      {
        v298 = v145;
      }

      else
      {
        v298 = v294;
      }

      while (v298 != v296)
      {
        if (v296 >= *(v214 + 16))
        {
          goto LABEL_151;
        }

        v299 = v452;
        isa_low = SLODWORD(v452[6].isa);
        v301 = v451;
        (*(v297 + 16))(v451 + isa_low, v461 + *(v297 + 72) * v296, v295);
        v302 = v453;
        *v453 = v296;
        v303 = SLODWORD(v299[6].isa);
        v304 = v301 + isa_low;
        v305 = v302;
        (*(v297 + 32))(v302 + v303, v304, v295);
        v306 = v462;
        sub_2236D6E50(v296, v305 + v303, v412, v416, v459, v214);
        v462 = v306;
        if (v306)
        {

          swift_bridgeObjectRelease_n();

          sub_223626478(v305, &qword_27D08F780, &unk_223731E10);
          (*(v428 + 8))(v411, v415);
          (*(v419 + 8))(v418, v426);

          goto LABEL_148;
        }

        ++v296;
        sub_223626478(v305, &qword_27D08F780, &unk_223731E10);
        sub_22372B4D8();
        v307 = v464[2];
        sub_22372B508();
        sub_22372B518();
        sub_22372B4E8();
        if (v145 == v296)
        {
          swift_bridgeObjectRelease_n();

          v308 = v464;
          v212 = v460;
          v205 = v415;
          goto LABEL_103;
        }
      }

      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v178 = v172;
    v277 = v425;
    if (v175 != *MEMORY[0x277D5CB88])
    {
      if (v175 != *MEMORY[0x277D5CB80] && v175 != *MEMORY[0x277D5CBA0] && v175 != *MEMORY[0x277D5CB98])
      {
        v309 = v168;

        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v310 = v205;
        v311 = sub_22372AC98();
        __swift_project_value_buffer(v311, qword_28132B680);

        v312 = sub_22372AC88();
        v313 = sub_22372B278();

        if (os_log_type_enabled(v312, v313))
        {
          v314 = swift_slowAlloc();
          v315 = swift_slowAlloc();
          v464 = v315;
          *v314 = 136315138;
          v463 = v460;
          type metadata accessor for RequestControllerBridgeRequestProcessor();

          v316 = sub_22372B038();
          v318 = sub_223623274(v316, v317, &v464);

          *(v314 + 4) = v318;
          _os_log_impl(&dword_223620000, v312, v313, "Unknown routing decision: %s. Ignoring!", v314, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v315);
          MEMORY[0x223DE8A80](v315, -1, -1);
          MEMORY[0x223DE8A80](v314, -1, -1);
        }

        (*(v419 + 8))(v425, v426);
        v210 = v462;
        v212 = v460;
        v205 = v310;
        v168 = v309;
        goto LABEL_134;
      }

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v445 = v168;
      v320 = sub_22372AC98();
      __swift_project_value_buffer(v320, qword_28132B680);
      v321 = v422;
      v322 = v413;
      (v413)(v422, v172, v426);
      v323 = v461;

      v324 = sub_22372AC88();
      v325 = sub_22372B268();

      LODWORD(v454) = v325;
      if (os_log_type_enabled(v324, v325))
      {
        v326 = swift_slowAlloc();
        v453 = swift_slowAlloc();
        v464 = v453;
        *v326 = 136315394;
        v327 = v426;
        v322(v424, v321, v426);
        v328 = sub_22372B038();
        v330 = v329;
        v331 = v327;
        v332 = *(v419 + 8);
        v332(v321, v331);
        v333 = sub_223623274(v328, v330, &v464);
        v178 = v172;

        *(v326 + 4) = v333;
        *(v326 + 12) = 2080;
        v334 = sub_223623274(v420, v323, &v464);

        *(v326 + 14) = v334;
        _os_log_impl(&dword_223620000, v324, v454, "Received NLRoutingDecisionMessage with no rewrite decision: %s for trpCandidateId=%s. Reusing eager child request.", v326, 0x16u);
        v335 = v453;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v335, -1, -1);
        MEMORY[0x223DE8A80](v326, -1, -1);
      }

      else
      {

        v332 = *(v419 + 8);
        v332(v321, v426);
      }

      v378 = v462;
      sub_2236D7F74(v459);
      v210 = v378;
      v205 = v415;
      v168 = v445;
      if (!v378)
      {
        v212 = v460;
        goto LABEL_134;
      }

      (*(v428 + 8))(v411, v205);
      v332(v178, v426);
      goto LABEL_148;
    }

    (*(v419 + 96))(v425, v426);
    v278 = v277;
    v279 = v440;
    (*(v442 + 4))(v441, v278, v440);
    v280 = v436;
    sub_223729FA8();
    v281 = v437;
    v282 = v438;
    v283 = (*(v437 + 88))(v280, v438);
    v284 = v283 == *MEMORY[0x277D5CF78];
    v445 = v168;
    if (v284)
    {
      (*(v281 + 96))(v280, v282);
      v285 = v434;
      v286 = v433;
      v287 = v435;
      (*(v434 + 32))(v433, v280, v435);
      v288 = sub_223729F68();
      v290 = v289;
      v291 = sub_223729F58();
    }

    else
    {
      if (v283 != *MEMORY[0x277D5CF70])
      {

        (*(v281 + 8))(v280, v282);
LABEL_125:
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v379 = sub_22372AC98();
        __swift_project_value_buffer(v379, qword_28132B680);
        v380 = v423;
        v381 = v178;
        v382 = v413;
        (v413)(v423, v381, v426);
        v383 = v461;

        v384 = sub_22372AC88();
        v385 = sub_22372B268();

        if (os_log_type_enabled(v384, v385))
        {
          v386 = swift_slowAlloc();
          v454 = swift_slowAlloc();
          v464 = v454;
          *v386 = 136315394;
          v387 = v426;
          v382(v424, v380, v426);
          v388 = sub_22372B038();
          v390 = v389;
          v391 = *(v419 + 8);
          v391(v380, v387);
          v392 = sub_223623274(v388, v390, &v464);

          *(v386 + 4) = v392;
          *(v386 + 12) = 2080;
          v393 = sub_223623274(v420, v383, &v464);

          *(v386 + 14) = v393;
          _os_log_impl(&dword_223620000, v384, v385, "Received NLRoutingDecisionMessage with no rewrite decision: %s for trpCandidateId=%s. Reusing eager child request.", v386, 0x16u);
          v394 = v454;
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v394, -1, -1);
          MEMORY[0x223DE8A80](v386, -1, -1);
        }

        else
        {

          v391 = *(v419 + 8);
          v391(v380, v426);
        }

        v395 = v462;
        sub_2236D7F74(v459);
        v210 = v395;
        v205 = v415;
        v168 = v445;
        v396 = v440;
        v397 = v442;
        v398 = v441;
        if (!v395)
        {
          (*(v442 + 1))(v441, v440);
          v212 = v460;
          v178 = v418;
          goto LABEL_134;
        }

        (*(v397 + 1))(v398, v396);
        (*(v428 + 8))(v411, v205);
        v391(v418, v426);
        goto LABEL_148;
      }

      (*(v281 + 96))(v280, v282);
      v285 = v430;
      v286 = v429;
      v287 = v431;
      (*(v430 + 32))(v429, v280, v431);
      v288 = sub_223729F38();
      v290 = v336;
      v291 = sub_223729F28();
    }

    v454 = v291;
    v337 = v292;
    (*(v285 + 8))(v286, v287);
    v338 = v439;
    if (v290)
    {

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v461 = v288;
      v339 = sub_22372AC98();
      __swift_project_value_buffer(v339, qword_28132B680);
      v340 = sub_22372AC88();
      v341 = sub_22372B268();
      if (os_log_type_enabled(v340, v341))
      {
        v342 = swift_slowAlloc();
        *v342 = 0;
        _os_log_impl(&dword_223620000, v340, v341, "Received NLRoutingDecisionMessage with Ajax. Creating 1 new child request", v342, 2u);
        MEMORY[0x223DE8A80](v342, -1, -1);
      }

      (*(v442 + 2))(v338, v441, v279);
      v343 = v432;
      swift_storeEnumTagMultiPayload();
      v344 = v443;
      sub_2237273F8();
      v453 = sub_2237273B8();
      v452 = v345;
      v346 = *(v428 + 8);
      v347 = v344;
      v348 = v415;
      v451 = (v428 + 8);
      v450 = v346;
      v346(v347, v415);
      (v457)(v446, v411, v348);
      v349 = type metadata accessor for RequestInfo.UserQuery(0);
      v350 = *(v349 + 28);
      v351 = sub_223728858();
      v352 = v338;
      v353 = v444;
      (*(*(v351 - 8) + 56))(&v444[v350], 1, 1, v351);
      v354 = *(v349 + 32);
      v355 = sub_2237287E8();
      (*(*(v355 - 8) + 56))(&v353[v354], 1, 1, v355);
      v356 = v416;
      *v353 = v412;
      *(v353 + 1) = v356;
      *(v353 + 2) = v461;
      *(v353 + 3) = v290;
      *(v353 + 4) = v454;
      *(v353 + 5) = v337;
      (*(*(v349 - 8) + 56))(v353, 0, 1, v349);
      (*(v455 + 16))(v447, v459, v456);
      v357 = v421;
      sub_2236397B0(v352, v421, type metadata accessor for IntelligenceFlowPrescribedTool);
      (*(v417 + 56))(v357, 0, 1, v343);
      v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
      (*(*(v358 - 8) + 56))(v357, 0, 1, v358);
      (v413)(v424, v178, v426);
      v359 = sub_223729D68();
      (*(*(v359 - 8) + 56))(v448, 1, 1, v359);
      v360 = type metadata accessor for RequestInfo(0);
      v361 = *(v360 + 48);
      v362 = *(v360 + 52);
      v363 = swift_allocObject();
      v364 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
      v365 = MEMORY[0x277D84F90];
      *(v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
      v366 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
      *(v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList) = v365;
      v367 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
      v368 = sub_22372A098();
      v369 = *(*(v368 - 8) + 56);
      v369(v363 + v367, 1, 1, v368);
      v369(v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v368);
      v370 = v415;
      v371 = v452;
      *(v363 + 16) = v453;
      *(v363 + 24) = v371;
      (*(v428 + 32))(v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v446, v370);
      sub_223639818(v353, v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
      (*(v455 + 32))(v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v447, v456);
      swift_beginAccess();
      v372 = MEMORY[0x277D84F90];
      *(v363 + v364) = MEMORY[0x277D84F90];
      swift_beginAccess();
      *(v363 + v366) = v372;
      sub_223639818(v357, v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
      v373 = v419;
      (*(v419 + 32))(v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v424, v426);
      v374 = v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
      *v374 = 0;
      *(v374 + 8) = 1;
      v375 = v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
      *v375 = 0;
      *(v375 + 8) = 1;
      *(v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 0;
      sub_2236EA450(v448, v363 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
      v376 = swift_allocObject();
      *(v376 + 16) = xmmword_22372FCE0;
      *(v376 + 32) = v363;

      v377 = v462;
      sub_2236D9818(v376);
      v210 = v377;
      if (!v377)
      {

        sub_22363B214(v439, type metadata accessor for IntelligenceFlowPrescribedTool);
        (*(v442 + 1))(v441, v440);
        v212 = v460;
        v205 = v370;
        goto LABEL_79;
      }

      sub_22363B214(v439, type metadata accessor for IntelligenceFlowPrescribedTool);
      (*(v442 + 1))(v441, v440);
      v450(v411, v370);
      (*(v373 + 8))(v418, v426);
      goto LABEL_148;
    }

    goto LABEL_125;
  }

  if (qword_281328E58 != -1)
  {
LABEL_152:
    swift_once();
  }

  v201 = sub_22372AC98();
  __swift_project_value_buffer(v201, qword_28132B680);
  v202 = sub_22372AC88();
  v203 = sub_22372B278();
  if (os_log_type_enabled(v202, v203))
  {
    v204 = swift_slowAlloc();
    *v204 = 0;
    _os_log_impl(&dword_223620000, v202, v203, "BUG: We did not start an eager child request at this point", v204, 2u);
    MEMORY[0x223DE8A80](v204, -1, -1);
  }

  (*(v419 + 8))(v145, v426);
}

uint64_t sub_2236D6E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v126 = a6;
  v125 = a5;
  v138 = a4;
  v124 = a3;
  v130 = a2;
  v129 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v141 = &v117 - v9;
  v140 = sub_22372A548();
  v128 = *(v140 - 8);
  v10 = *(v128 + 64);
  MEMORY[0x28223BE20](v140, v11);
  v139 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RequestInfo.UserInput(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v127 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_223727408();
  v137 = *(v131 - 8);
  v17 = *(v137 + 64);
  v19 = MEMORY[0x28223BE20](v131, v18);
  v136 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v123 = &v117 - v22;
  v120 = sub_223728878();
  v118 = *(v120 - 8);
  v23 = *(v118 + 64);
  MEMORY[0x28223BE20](v120, v24);
  v117 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_223728898();
  v26 = *(v122 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v122, v28);
  v30 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_223728828();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_223728838();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2237287C8();
  v133 = *(v143 - 8);
  v43 = *(v133 + 64);
  v45 = MEMORY[0x28223BE20](v143, v44);
  v135 = &v117 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v132 = &v117 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8, v51);
  v53 = &v117 - v52;
  v54 = type metadata accessor for RequestInfo.RequestRoute(0);
  v55 = *(*(v54 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v54 - 8, v56);
  v134 = &v117 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v59);
  v142 = &v117 - v60;
  (*(v38 + 16))(v42, v130, v37);
  v61 = (*(v38 + 88))(v42, v37);
  if (v61 == *MEMORY[0x277D5CBC0])
  {
    (*(v38 + 96))(v42, v37);
    (*(v32 + 32))(v36, v42, v31);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
    (*(*(v62 - 8) + 56))(v142, 1, 1, v62);
    v121 = sub_223728818();
    v64 = v63;
    v120 = sub_223728808();
    v66 = v65;
    v67 = v53;
    sub_2237287F8();
    (*(v32 + 8))(v36, v31);
    v68 = v64;
    v69 = MEMORY[0x277D5CB80];
  }

  else
  {
    v70 = v142;
    if (v61 == *MEMORY[0x277D5CBD0])
    {
      (*(v38 + 96))(v42, v37);
      v71 = v122;
      (*(v26 + 32))(v30, v42, v122);
      v72 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
      (*(*(v72 - 8) + 56))(v70, 1, 1, v72);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
      (*(*(v73 - 8) + 56))(v70, 0, 1, v73);
      v121 = sub_223728888();
      v68 = v74;
      (*(v26 + 8))(v30, v71);
      v75 = sub_2237287E8();
      v67 = v53;
      (*(*(v75 - 8) + 56))(v53, 1, 1, v75);
      v120 = 0;
      v66 = 0;
      v69 = MEMORY[0x277D5CBA0];
    }

    else
    {
      if (v61 != *MEMORY[0x277D5CBC8])
      {
        type metadata accessor for RequestControllerBridgeInternalErrors(0);
        sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v116 = *(v38 + 8);
        v102 = v38 + 8;
        v116(v42, v37);
        return v102;
      }

      (*(v38 + 96))(v42, v37);
      v76 = v118;
      v77 = v117;
      v78 = v120;
      (*(v118 + 32))(v117, v42, v120);
      v79 = *MEMORY[0x277D5CC50];
      v80 = sub_223728E18();
      (*(*(v80 - 8) + 104))(v70, v79, v80);
      v81 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v81 - 8) + 56))(v70, 0, 1, v81);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
      (*(*(v82 - 8) + 56))(v70, 0, 1, v82);
      v121 = sub_223728868();
      v68 = v83;
      (*(v76 + 8))(v77, v78);
      v84 = sub_2237287E8();
      (*(*(v84 - 8) + 56))(v53, 1, 1, v84);
      v120 = 0;
      v66 = 0;
      v69 = MEMORY[0x277D5CB98];
      v67 = v53;
    }
  }

  v119 = v67;
  v85 = v132;
  v86 = v133;
  (*(v133 + 104))(v132, *v69, v143);
  v87 = v123;
  sub_2237273F8();
  v130 = sub_2237273B8();
  v122 = v88;
  (*(v137 + 8))(v87, v131);
  sub_2237273F8();
  v89 = type metadata accessor for RequestInfo.UserQuery(0);
  v90 = *(v89 + 28);
  v91 = sub_223728858();
  v92 = v127;
  (*(*(v91 - 8) + 56))(&v127[v90], 1, 1, v91);
  sub_223634890(v67, v92 + *(v89 + 32), &qword_27D08F730, &unk_223731DB0);
  v93 = v138;
  *v92 = v124;
  v92[1] = v93;
  v92[2] = v121;
  v92[3] = v68;
  v92[4] = v120;
  v92[5] = v66;
  (*(*(v89 - 8) + 56))(v92, 0, 1, v89);
  v94 = v128;
  (*(v128 + 16))(v139, v125, v140);
  v95 = v142;
  sub_2236397B0(v142, v134, type metadata accessor for RequestInfo.RequestRoute);
  v96 = v86;
  v97 = v143;
  (*(v86 + 16))(v135, v85, v143);
  v126 = *(v126 + 16);
  v98 = sub_223729D68();
  (*(*(v98 - 8) + 56))(v141, 1, 1, v98);
  v99 = type metadata accessor for RequestInfo(0);
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  v102 = swift_allocObject();
  v103 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  v104 = MEMORY[0x277D84F90];
  *(v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
  v105 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  v106 = *(v96 + 8);

  v106(v132, v97);
  sub_223626478(v119, &qword_27D08F730, &unk_223731DB0);
  sub_22363B214(v95, type metadata accessor for RequestInfo.RequestRoute);
  *(v102 + v105) = v104;
  v107 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
  v108 = sub_22372A098();
  v109 = *(*(v108 - 8) + 56);
  v109(v102 + v107, 1, 1, v108);
  v109(v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v108);
  v110 = v131;
  v111 = v122;
  *(v102 + 16) = v130;
  *(v102 + 24) = v111;
  (*(v137 + 32))(v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v136, v110);
  sub_223639818(v92, v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
  (*(v94 + 32))(v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v139, v140);
  swift_beginAccess();
  v112 = MEMORY[0x277D84F90];
  *(v102 + v103) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v102 + v105) = v112;
  sub_223639818(v134, v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
  (*(v133 + 32))(v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v135, v143);
  v113 = v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
  *v113 = v129;
  *(v113 + 8) = 0;
  v114 = v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
  *v114 = v126;
  *(v114 + 8) = 0;
  *(v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 0;
  sub_2236EA450(v141, v102 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
  return v102;
}

uint64_t sub_2236D7D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MUXUserAttributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + qword_28132A1E8);
  v13 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId;
  v14 = sub_22372A548();
  v15 = *(v14 - 8);
  result = (*(v15 + 16))(a3, v12 + v13, v14);
  if (*(v3 + qword_28132A1F8) == 1)
  {
    v17 = *(v3 + qword_28132A208);
    result = swift_beginAccess();
    v18 = *(v17 + 48);
    if (*(v18 + 16))
    {

      v19 = sub_2236261A0(a1, a2);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);

        (*(v15 + 8))(a3, v14);
        v22 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        sub_2236397B0(v21 + v22, v11, type metadata accessor for MUXUserAttributes);

        return (*(v15 + 32))(a3, v11, v14);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_2236D7F74(uint64_t a1)
{
  v3 = v1;
  v123 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v4 = *(*(v116 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v116, v5);
  v115 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v117 = v111 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = v111 - v12;
  v14 = sub_22372A3C8();
  v119 = *(v14 - 8);
  v120 = v14;
  v15 = *(v119 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v118 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RequestInfo.UserInput(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2237287C8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RequestInfo.RequestRoute(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v3 + qword_28132B8C0);
  if (!v34)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v83 = sub_22372AC98();
    __swift_project_value_buffer(v83, qword_28132B680);
    v84 = sub_22372AC88();
    v85 = sub_22372B278();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_223620000, v84, v85, "Cannot commit eager child request: no eager child request is active", v86, 2u);
      MEMORY[0x223DE8A80](v86, -1, -1);
    }

    goto LABEL_36;
  }

  v114 = v13;
  v35 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  swift_beginAccess();
  (*(v24 + 16))(v28, v34 + v35, v23);

  sub_2236EF8D8(v28, v33);
  v36 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route;
  swift_beginAccess();
  sub_2236EA3D0(v33, v34 + v36, type metadata accessor for RequestInfo.RequestRoute);
  swift_endAccess();
  v37 = *(v3 + qword_28132B868 + 8);
  if (!v37)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v87 = sub_22372AC98();
    __swift_project_value_buffer(v87, qword_28132B680);
    v84 = sub_22372AC88();
    v88 = sub_22372B278();
    if (!os_log_type_enabled(v84, v88))
    {
      goto LABEL_35;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = "Cannot commit eager child request: no selectedTrpId";
    goto LABEL_34;
  }

  v112 = *(v3 + qword_28132B868);
  v113 = v37;

  v38 = sub_2236D9380();
  v40 = v39;
  v41 = v2;
  if (!v39)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v42 = sub_22372AC98();
    __swift_project_value_buffer(v42, qword_28132B680);
    v43 = sub_22372AC88();
    v44 = sub_22372B278();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_223620000, v43, v44, "Could not find final utterance, RequestSummary for this request will not have the utterance.", v45, 2u);
      v46 = v45;
      v41 = v2;
      MEMORY[0x223DE8A80](v46, -1, -1);
    }
  }

  v47 = type metadata accessor for RequestInfo.UserQuery(0);
  v48 = *(v47 + 28);
  v49 = sub_223728858();
  (*(*(v49 - 8) + 56))(&v22[v48], 1, 1, v49);
  v50 = *(v47 + 32);
  v51 = sub_2237287E8();
  (*(*(v51 - 8) + 56))(&v22[v50], 1, 1, v51);
  *v22 = v38;
  *(v22 + 1) = v40;
  *(v22 + 2) = v38;
  *(v22 + 3) = v40;
  *(v22 + 4) = 0;
  *(v22 + 5) = 0;
  (*(*(v47 - 8) + 56))(v22, 0, 1, v47);
  v52 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
  swift_beginAccess();

  sub_2236EA3D0(v22, v34 + v52, type metadata accessor for RequestInfo.UserInput);
  swift_endAccess();
  sub_223630E28(v34);
  v53 = *(v34 + 16);
  v54 = *(v34 + 24);
  v55 = qword_28132B848;
  swift_beginAccess();
  if (!*(*(v3 + v55) + 16))
  {
LABEL_30:

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v91 = sub_22372AC98();
    __swift_project_value_buffer(v91, qword_28132B680);
    v84 = sub_22372AC88();
    v88 = sub_22372B278();
    if (!os_log_type_enabled(v84, v88))
    {
      goto LABEL_35;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
    v90 = "Cannot commit eager child request: no request controller is found for the active eager child request";
LABEL_34:
    _os_log_impl(&dword_223620000, v84, v88, v90, v89, 2u);
    MEMORY[0x223DE8A80](v89, -1, -1);
LABEL_35:

LABEL_36:

    return;
  }

  sub_2236261A0(v53, v54);
  v56 = v113;
  if ((v57 & 1) == 0)
  {

    goto LABEL_30;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v58 = sub_22372AC98();
  v59 = __swift_project_value_buffer(v58, qword_28132B680);

  v111[0] = v59;
  v60 = sub_22372AC88();
  v61 = sub_22372B268();

  v62 = os_log_type_enabled(v60, v61);
  v111[1] = v41;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v121[0] = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_223623274(v112, v56, v121);
    _os_log_impl(&dword_223620000, v60, v61, "Committing eager child request with selectedTrpId %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x223DE8A80](v64, -1, -1);
    MEMORY[0x223DE8A80](v63, -1, -1);
  }

  v65 = *(v3 + qword_28132A1A0 + 32);
  __swift_project_boxed_opaque_existential_1((v3 + qword_28132A1A0), *(v3 + qword_28132A1A0 + 24));
  v66 = sub_22372A548();
  v122 = v66;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
  (*(*(v66 - 8) + 16))(boxed_opaque_existential_1, v123, v66);
  v68 = v118;
  v69 = v119;
  v70 = v120;
  (*(v119 + 104))(v118, *MEMORY[0x277D5D1C0], v120);
  sub_22372A4B8();
  (*(v69 + 8))(v68, v70);
  sub_223626478(v121, &unk_27D08F750, &qword_22372C960);
  v71 = qword_28132B888;
  swift_beginAccess();
  v72 = v114;
  sub_223634890(v3 + v71, v114, &qword_27D08E9D0, &qword_22372D1E0);
  v73 = sub_223729F08();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v72, 1, v73) != 1)
  {
    v92 = v117;
    sub_223634890(v72, v117, &qword_27D08E9D0, &qword_22372D1E0);
    v93 = (*(v74 + 88))(v92, v73);
    if (v93 == *MEMORY[0x277D5CF40])
    {
      MEMORY[0x28223BE20](v93, v94);
      v95 = v112;
      v111[-4] = v3;
      v111[-3] = v95;
      v111[-2] = v56;
      v111[-1] = v34;
      v96 = objc_allocWithZone(sub_223729B68());
      v97 = sub_223729AE8();

      if (!v97)
      {

        v98 = sub_22372AC88();
        v99 = sub_22372B278();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v121[0] = v101;
          *v100 = 136315138;
          v102 = *(v34 + 16);
          v103 = *(v34 + 24);

          v104 = sub_223623274(v102, v103, v121);

          *(v100 + 4) = v104;
          v105 = "Could not create StoppedListeningForSpeechContinuationMessage for requestId: %s. Missing fields?";
LABEL_47:
          _os_log_impl(&dword_223620000, v98, v99, v105, v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v101);
          MEMORY[0x223DE8A80](v101, -1, -1);
          MEMORY[0x223DE8A80](v100, -1, -1);
          goto LABEL_48;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v93 != *MEMORY[0x277D5CF28])
      {

        (*(v74 + 8))(v92, v73);
        goto LABEL_17;
      }

      MEMORY[0x28223BE20](v93, v94);
      v106 = v112;
      v111[-4] = v3;
      v111[-3] = v106;
      v111[-2] = v56;
      v111[-1] = v34;
      v107 = objc_allocWithZone(sub_223729AB8());
      v97 = sub_223729A58();

      if (!v97)
      {

        v98 = sub_22372AC88();
        v99 = sub_22372B278();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v121[0] = v101;
          *v100 = 136315138;
          v108 = *(v34 + 16);
          v109 = *(v34 + 24);

          v110 = sub_223623274(v108, v109, v121);

          *(v100 + 4) = v110;
          v105 = "Could not create StoppedListeningForTextContinuationMessage for requestId: %s. Missing fields?";
          goto LABEL_47;
        }

LABEL_48:

        sub_223626478(v114, &qword_27D08E9D0, &qword_22372D1E0);
        return;
      }
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v121, v122);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    sub_223626478(v114, &qword_27D08E9D0, &qword_22372D1E0);
    return;
  }

LABEL_17:

  v75 = sub_22372AC88();
  v76 = sub_22372B278();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v121[0] = v78;
    *v77 = 136315138;
    sub_223634890(v3 + v71, v115, &qword_27D08E9D0, &qword_22372D1E0);
    v79 = sub_22372B038();
    v81 = sub_223623274(v79, v80, v121);

    *(v77 + 4) = v81;
    _os_log_impl(&dword_223620000, v75, v76, "Unknown request type %s, do not know how to fall back on eager", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x223DE8A80](v78, -1, -1);
    v82 = v77;
    v72 = v114;
    MEMORY[0x223DE8A80](v82, -1, -1);
  }

  sub_223626478(v72, &qword_27D08E9D0, &qword_22372D1E0);
}

uint64_t sub_2236D8E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F778, &qword_223731E08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = v31 - v19;
  v21 = *MEMORY[0x277D5CDE8];
  v22 = sub_223729DE8();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v20, v21, v22);
  (*(v23 + 56))(v20, 0, 1, v22);
  sub_223729B18();
  sub_22372A728();
  sub_223729AF8();
  v24 = *MEMORY[0x277D5D280];
  v25 = sub_22372A4D8();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v15, v24, v25);
  (*(v26 + 56))(v15, 0, 1, v25);
  sub_223729B08();

  sub_223729B28();
  v27 = *(a5 + 16);
  v28 = *(a5 + 24);

  sub_223729B38();
  sub_22372A778();
  v29 = sub_223727408();
  (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
  return sub_223729B48();
}

uint64_t sub_2236D9170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v23 - v14;
  v16 = *MEMORY[0x277D5CDE8];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_223729A78();
  sub_22372A728();
  sub_223729A68();

  sub_223729A88();
  v19 = *(a5 + 16);
  v20 = *(a5 + 24);

  sub_223729A98();
  sub_22372A778();
  v21 = sub_223727408();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  return sub_223729AA8();
}

id sub_2236D9380()
{
  v1 = sub_223729D78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v32 - v10;
  v12 = *(v0 + qword_28132B868 + 8);
  if (!v12)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B278();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_223620000, v19, v20, "Could not find selectedTRPId, cannot get final utterance", v21, 2u);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    return 0;
  }

  v13 = *(v0 + qword_28132B868);
  v14 = qword_28132B850;
  swift_beginAccess();
  v15 = *(v0 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_2236261A0(v13, v12);
    if (v17)
    {
      (*(v2 + 16))(v11, *(v15 + 56) + *(v2 + 72) * v16, v1);

      (*(v2 + 56))(v11, 0, 1, v1);
    }

    else
    {

      (*(v2 + 56))(v11, 1, 1, v1);
    }
  }

  else
  {
    (*(v2 + 56))(v11, 1, 1, v1);
  }

  if ((*(v2 + 48))(v11, 1, v1))
  {
    sub_223626478(v11, &qword_27D08F770, &qword_223731DE0);
LABEL_14:
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_28132B680);

    v23 = sub_22372AC88();
    v24 = sub_22372B278();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v27 = sub_223623274(v13, v12, &v32);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_223620000, v23, v24, "Could not find utterance for selectedTRP = %s, this is an error.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x223DE8A80](v26, -1, -1);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  (*(v2 + 16))(v6, v11, v1);
  sub_223626478(v11, &qword_27D08F770, &qword_223731DE0);
  v29 = sub_2236EF704();
  v31 = v30;
  (*(v2 + 8))(v6, v1);
  if (!v31)
  {
    goto LABEL_14;
  }

  return v29;
}

void sub_2236D9818(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  v51[6] = __swift_project_value_buffer(v6, qword_28132B680);
  v7 = sub_22372AC88();
  v8 = sub_22372B268();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_223620000, v7, v8, "Removing eager child request from childRequests, as NLRouter has rewritten this request.", v9, 2u);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v10 = qword_28132B870;
  swift_beginAccess();
  sub_2236D9F5C();
  swift_endAccess();

  v13 = *(v4 + qword_28132B8C0);
  if (v13)
  {
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    MEMORY[0x28223BE20](v11, v12);
    v16 = objc_allocWithZone(sub_223728188());

    v17 = sub_223728118();
    if (!v17)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      *v19 = 0xD000000000000014;
      v19[1] = 0x8000000223736AD0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_35;
    }

    v18 = v17;
    sub_2236DC8B8(v17, sub_2236CFED0, 0);
    if (v2)
    {

      return;
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    sub_223729D88();
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    sub_2236E672C(v13 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId);
  }

  v20 = sub_22372AC88();
  LOBYTE(v21) = sub_22372B268();
  v22 = a1 >> 62;
  v49 = v4;
  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_16;
  }

  v23 = swift_slowAlloc();
  *v23 = 134217984;
  if (v22)
  {
    goto LABEL_43;
  }

  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v23 + 4) = v24;

    _os_log_impl(&dword_223620000, v20, v21, "Spawning %ld synthesized child requests", v23, 0xCu);
    MEMORY[0x223DE8A80](v23, -1, -1);

LABEL_16:
    v47 = v10;
    v23 = v22 ? sub_22372B558() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v3;
    v50 = a1;
    if (v23)
    {
      break;
    }

LABEL_29:
    v43 = *(v47 + v4);
    v51[0] = v50;

    v21 = v51;
    sub_22363AFB8(v44);
    v45 = *(v47 + v4);
    *(v47 + v4) = v51[0];

    v20 = *(v47 + v4);
    if (v20 >> 62)
    {
      v3 = v48;
      if (!sub_22372B558())
      {
        return;
      }
    }

    else
    {
      v3 = v48;
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      goto LABEL_41;
    }

    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v20 + 32);

      goto LABEL_34;
    }

    __break(1u);
LABEL_43:
    v24 = sub_22372B558();
    v4 = v49;
  }

  if (v23 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      a1 = 0;
      do
      {
        v26 = MEMORY[0x223DE7ED0](a1, v50);
        v27 = sub_22372AC88();
        v10 = sub_22372B268();
        if (os_log_type_enabled(v27, v10))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v51[0] = v29;
          *v28 = 136315138;
          v30 = *(v26 + 16);
          v31 = *(v26 + 24);

          v32 = sub_223623274(v30, v31, v51);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_223620000, v27, v10, "Allocating new child request: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v33 = v29;
          v4 = v49;
          MEMORY[0x223DE8A80](v33, -1, -1);
          MEMORY[0x223DE8A80](v28, -1, -1);
        }

        ++a1;
        v25 = *(v26 + 16);
        v22 = *(v26 + 24);

        sub_2236402A0(v25, v22);
        swift_unknownObjectRelease();
      }

      while (v23 != a1);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v36 = *v10;

        v37 = sub_22372AC88();
        v38 = sub_22372B268();
        if (os_log_type_enabled(v37, v38))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v51[0] = v39;
          *v22 = 136315138;
          v40 = *(v36 + 16);
          v41 = *(v36 + 24);

          a1 = sub_223623274(v40, v41, v51);

          *(v22 + 4) = a1;
          _os_log_impl(&dword_223620000, v37, v38, "Allocating new child request: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          v42 = v39;
          v4 = v49;
          MEMORY[0x223DE8A80](v42, -1, -1);
          MEMORY[0x223DE8A80](v22, -1, -1);
        }

        v35 = *(v36 + 16);
        v34 = *(v36 + 24);

        sub_2236402A0(v35, v34);

        ++v10;
        --v23;
      }

      while (v23);
    }

    goto LABEL_29;
  }

  __break(1u);
LABEL_41:

  v46 = MEMORY[0x223DE7ED0](0, v20);

LABEL_34:
  sub_2236DA034(v46);
LABEL_35:
}

void sub_2236D9F5C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x223DE7ED0](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_22372B558())
  {
    goto LABEL_20;
  }

  if (!sub_22372B558())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = sub_22372B558();
LABEL_16:
    if (v4)
    {
      sub_2236EA090(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_2236DA034(uint64_t a1)
{
  v3 = v1;
  v228 = a1;
  v4 = sub_22372A3C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v200 = &v198 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_223729728();
  v210 = *(v211 - 8);
  v9 = *(v210 + 64);
  MEMORY[0x28223BE20](v211, v10);
  v208 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v209 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v206 = &v198 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v207 = &v198 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v214 = &v198 - v25;
  v213 = sub_223729D78();
  v212 = *(v213 - 8);
  v26 = *(v212 + 64);
  v28 = MEMORY[0x28223BE20](v213, v27);
  v201 = &v198 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v215 = (&v198 - v31);
  v221 = type metadata accessor for RequestInfo.UserQuery(0);
  v220 = *(v221 - 8);
  v32 = *(v220 + 64);
  MEMORY[0x28223BE20](v221, v33);
  v217 = &v198 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RequestInfo.UserInput(0);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35 - 8, v37);
  v205 = &v198 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v203 = &v198 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v202 = &v198 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v204 = &v198 - v48;
  MEMORY[0x28223BE20](v47, v49);
  v219 = &v198 - v50;
  v225 = sub_223727408();
  v224 = *(v225 - 8);
  v51 = *(v224 + 64);
  MEMORY[0x28223BE20](v225, v52);
  v223 = &v198 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_223729F08();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54, v57);
  v218 = &v198 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59, v61);
  v63 = &v198 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v65 = *(*(v64 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v64 - 8, v66);
  v226 = &v198 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67, v69);
  v71 = &v198 - v70;
  v231 = *(v3 + qword_28132B868 + 8);
  if (!v231)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v79 = sub_22372AC98();
    __swift_project_value_buffer(v79, qword_28132B680);
    v80 = sub_22372AC88();
    v81 = sub_22372B278();
    if (!os_log_type_enabled(v80, v81))
    {
      goto LABEL_59;
    }

    v82 = swift_slowAlloc();
    *v82 = 0;
    v83 = "Cannot synthesize a child request without a selected TRPId from root request";
    goto LABEL_58;
  }

  v72 = v3;
  v198 = v5;
  v199 = v4;
  v227 = v2;
  v216 = *(v3 + qword_28132B868);
  v73 = qword_28132B888;
  v74 = v72;
  swift_beginAccess();
  (*(v55 + 104))(v71, *MEMORY[0x277D5CF40], v54);
  (*(v55 + 56))(v71, 0, 1, v54);
  v75 = *(v59 + 48);
  v222 = v74;
  sub_223634890(v74 + v73, v63, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v71, &v63[v75], &qword_27D08E9D0, &qword_22372D1E0);
  v76 = *(v55 + 48);
  if (v76(v63, 1, v54) == 1)
  {

    sub_223626478(v71, &qword_27D08E9D0, &qword_22372D1E0);
    if (v76(&v63[v75], 1, v54) == 1)
    {
      sub_223626478(v63, &qword_27D08E9D0, &qword_22372D1E0);
      v77 = v222;
      v78 = v228;
LABEL_16:
      v97 = qword_28132B840;
      swift_beginAccess();
      v86 = *(v77 + v97);
      v88 = v231;
      if (*(v86 + 16))
      {
        v98 = *(v77 + v97);

        v89 = sub_2236261A0(v216, v88);
        if (v99)
        {
LABEL_18:
          v100 = (*(v86 + 56) + 16 * v89);
          v93 = v100[1];
          v222 = *v100;

          goto LABEL_19;
        }
      }

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v125 = sub_22372AC98();
      __swift_project_value_buffer(v125, qword_28132B680);
      v80 = sub_22372AC88();
      v81 = sub_22372B278();
      if (!os_log_type_enabled(v80, v81))
      {
LABEL_59:

        return;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = "Cannot synthesize a child request without a selected TCU ID for a speech request";
LABEL_58:
      _os_log_impl(&dword_223620000, v80, v81, v83, v82, 2u);
      MEMORY[0x223DE8A80](v82, -1, -1);
      goto LABEL_59;
    }

    goto LABEL_11;
  }

  v84 = v226;
  sub_223634890(v63, v226, &qword_27D08E9D0, &qword_22372D1E0);
  if (v76(&v63[v75], 1, v54) == 1)
  {

    sub_223626478(v71, &qword_27D08E9D0, &qword_22372D1E0);
    (*(v55 + 8))(v84, v54);
LABEL_11:
    sub_223626478(v63, &qword_27D08F740, &unk_223731DC0);
    v77 = v222;
    v78 = v228;
    goto LABEL_12;
  }

  v94 = v218;
  (*(v55 + 32))(v218, &v63[v75], v54);
  sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58]);

  v95 = sub_22372AFC8();
  v96 = *(v55 + 8);
  v96(v94, v54);
  sub_223626478(v71, &qword_27D08E9D0, &qword_22372D1E0);
  v96(v84, v54);
  sub_223626478(v63, &qword_27D08E9D0, &qword_22372D1E0);
  v77 = v222;
  v78 = v228;
  if (v95)
  {
    goto LABEL_16;
  }

LABEL_12:
  v85 = qword_28132B840;
  swift_beginAccess();
  v86 = *(v77 + v85);
  v87 = *(v86 + 16);

  v88 = v231;
  if (v87)
  {
    v89 = sub_2236261A0(v216, v231);
    if (v90)
    {
      goto LABEL_18;
    }
  }

  v91 = v223;
  sub_2237273F8();
  v222 = sub_2237273B8();
  v93 = v92;
  (*(v224 + 8))(v91, v225);
LABEL_19:

  v101 = qword_28132B870;
  swift_beginAccess();
  v102 = *(v77 + v101);
  if (v102 >> 62)
  {
    goto LABEL_91;
  }

  v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  v104 = v227;
  if (v103 >= 2)
  {
    v226 = v93;
    v105 = *(v77 + v101);
    if (v105 >> 62)
    {
      if (v105 < 0)
      {
        v197 = *(v77 + v101);
      }

      v106 = sub_22372B558();
    }

    else
    {
      v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = v105 & 0xC000000000000001;

    v101 = 0;
    while (1)
    {
      if (v106 == v101)
      {

        v101 = 0;
        v110 = 1;
        goto LABEL_43;
      }

      if (v88)
      {
        v93 = MEMORY[0x223DE7ED0](v101, v105);
      }

      else
      {
        if (v101 >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v103 = sub_22372B558();
          goto LABEL_21;
        }

        v93 = *(v105 + 8 * v101 + 32);
      }

      if (*(v93 + 16) == *(v78 + 16) && *(v93 + 24) == *(v78 + 24))
      {

        goto LABEL_42;
      }

      v108 = sub_22372B6E8();

      if (v108)
      {

LABEL_42:
        v110 = 0;
LABEL_43:
        v104 = v227;
        v88 = v231;
        v93 = v226;
        goto LABEL_44;
      }

      if (__OFADD__(v101++, 1))
      {
        goto LABEL_90;
      }
    }
  }

  v101 = 0;
  v110 = 1;
LABEL_44:
  sub_2236E3FB4(v78, v101, v110);
  if (v104)
  {

    return;
  }

  v226 = v93;
  v111 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
  swift_beginAccess();
  v112 = v219;
  sub_2236397B0(v78 + v111, v219, type metadata accessor for RequestInfo.UserInput);
  v113 = *(v220 + 48);
  if (v113(v112, 1, v221) == 1 || (v114 = v112, v115 = v217, sub_223639818(v114, v217, type metadata accessor for RequestInfo.UserQuery), v116 = *(v115 + 24), v224 = *(v115 + 16), , sub_22363B214(v115, type metadata accessor for RequestInfo.UserQuery), !v116))
  {

    sub_2236EA17C();
    swift_allocError();
    *v124 = 0;
    *(v124 + 8) = 0;
    *(v124 + 16) = 2;
    swift_willThrow();
    return;
  }

  v117 = sub_2236F0954();
  v223 = v116;
  if (v117)
  {
    v118 = qword_28132B850;
    swift_beginAccess();
    v119 = *(v77 + v118);
    if (*(v119 + 16))
    {

      v120 = sub_2236261A0(v216, v88);
      if (v121)
      {
        v122 = v212;
        v123 = v213;
        (*(v212 + 16))(v201, *(v119 + 56) + *(v212 + 72) * v120, v213);

        (*(v122 + 32))(v215, v201, v123);
LABEL_75:
        v227 = *(v78 + 16);
        v225 = *(v78 + 24);
        v157 = v204;
        sub_2236397B0(v78 + v111, v204, type metadata accessor for RequestInfo.UserInput);
        v158 = v221;
        if (v113(v157, 1, v221) == 1)
        {
          v159 = sub_223728858();
          (*(*(v159 - 8) + 56))(v214, 1, 1, v159);
        }

        else
        {
          v160 = v157;
          v161 = v217;
          sub_223639818(v160, v217, type metadata accessor for RequestInfo.UserQuery);
          sub_223634890(v161 + *(v158 + 28), v214, &qword_27D08F738, &unk_2237324D0);
          sub_22363B214(v161, type metadata accessor for RequestInfo.UserQuery);
        }

        v162 = v202;
        sub_2236397B0(v228 + v111, v202, type metadata accessor for RequestInfo.UserInput);
        if (v113(v162, 1, v158) == 1)
        {
          v163 = sub_2237287E8();
          v164 = v206;
          (*(*(v163 - 8) + 56))(v206, 1, 1, v163);
        }

        else
        {
          v165 = v217;
          sub_223639818(v162, v217, type metadata accessor for RequestInfo.UserQuery);
          v166 = v165 + *(v158 + 32);
          v164 = v206;
          sub_223634890(v166, v206, &qword_27D08F730, &unk_223731DB0);
          sub_22363B214(v165, type metadata accessor for RequestInfo.UserQuery);
        }

        v167 = v226;
        v168 = v228 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId;
        v169 = v208;
        v170 = (*(v210 + 104))(v208, *MEMORY[0x277D5CCC8], v211);
        MEMORY[0x28223BE20](v170, v171);
        v172 = v227;
        *(&v198 - 16) = v77;
        *(&v198 - 15) = v172;
        v173 = v216;
        *(&v198 - 14) = v225;
        *(&v198 - 13) = v173;
        v174 = v222;
        *(&v198 - 12) = v231;
        *(&v198 - 11) = v174;
        *(&v198 - 10) = v167;
        *(&v198 - 9) = v168;
        v175 = v223;
        *(&v198 - 8) = v224;
        *(&v198 - 7) = v175;
        *(&v198 - 6) = v214;
        *(&v198 - 5) = v164;
        *(&v198 - 4) = v215;
        *(&v198 - 3) = v169;
        *(&v198 - 2) = v176;
        v177 = objc_allocWithZone(sub_223729818());
        v178 = sub_223729738();

        if (v178)
        {
          sub_22372A758();
          __swift_project_boxed_opaque_existential_1(&v229, v230);
          sub_223729D88();

          __swift_destroy_boxed_opaque_existential_1Tm(&v229);
          (*(v210 + 8))(v169, v211);
          sub_223626478(v164, &qword_27D08F730, &unk_223731DB0);
          sub_223626478(v214, &qword_27D08F738, &unk_2237324D0);
          (*(v212 + 8))(v215, v213);
          goto LABEL_83;
        }

        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v187 = sub_22372AC98();
        __swift_project_value_buffer(v187, qword_28132B680);
        v188 = sub_22372AC88();
        v189 = sub_22372B278();
        v190 = os_log_type_enabled(v188, v189);
        v191 = v211;
        v192 = v208;
        v193 = v214;
        if (v190)
        {
          v194 = swift_slowAlloc();
          *v194 = 0;
          _os_log_impl(&dword_223620000, v188, v189, "Could not construct RewrittenUtteranceCandidateMessage", v194, 2u);
          v195 = v194;
          v164 = v206;
          MEMORY[0x223DE8A80](v195, -1, -1);
        }

        type metadata accessor for RequestControllerBridgeInternalErrors(0);
        sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
        swift_allocError();
        *v196 = 0xD000000000000022;
        v196[1] = 0x8000000223737250;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v210 + 8))(v192, v191);
        sub_223626478(v164, &qword_27D08F730, &unk_223731DB0);
        sub_223626478(v193, &qword_27D08F738, &unk_2237324D0);
        (*(v212 + 8))(v215, v213);
        return;
      }
    }

    v155 = v215;
    *v215 = 0;
    v155[1] = 0xE000000000000000;
    v156 = *MEMORY[0x277D5CD90];
    (*(v212 + 104))();
    goto LABEL_75;
  }

  v227 = *(v78 + 16);
  v225 = *(v78 + 24);
  v126 = v203;
  sub_2236397B0(v78 + v111, v203, type metadata accessor for RequestInfo.UserInput);
  v127 = v221;
  if (v113(v126, 1, v221) == 1)
  {
    v128 = sub_223728858();
    v129 = v207;
    (*(*(v128 - 8) + 56))(v207, 1, 1, v128);
  }

  else
  {
    v130 = v126;
    v131 = v217;
    sub_223639818(v130, v217, type metadata accessor for RequestInfo.UserQuery);
    v129 = v207;
    sub_223634890(v131 + *(v127 + 28), v207, &qword_27D08F738, &unk_2237324D0);
    sub_22363B214(v131, type metadata accessor for RequestInfo.UserQuery);
  }

  v132 = v209;
  v133 = v228 + v111;
  v134 = v205;
  sub_2236397B0(v133, v205, type metadata accessor for RequestInfo.UserInput);
  if (v113(v134, 1, v127) == 1)
  {
    v135 = sub_2237287E8();
    v136 = (*(*(v135 - 8) + 56))(v132, 1, 1, v135);
  }

  else
  {
    v138 = v134;
    v139 = v217;
    sub_223639818(v138, v217, type metadata accessor for RequestInfo.UserQuery);
    sub_223634890(v139 + *(v127 + 32), v132, &qword_27D08F730, &unk_223731DB0);
    v136 = sub_22363B214(v139, type metadata accessor for RequestInfo.UserQuery);
  }

  v140 = v226;
  MEMORY[0x28223BE20](v136, v137);
  v141 = v227;
  *(&v198 - 12) = v77;
  *(&v198 - 11) = v141;
  v142 = v216;
  *(&v198 - 10) = v225;
  *(&v198 - 9) = v142;
  v143 = v222;
  *(&v198 - 8) = v88;
  *(&v198 - 7) = v143;
  *(&v198 - 6) = v140;
  *(&v198 - 5) = v144;
  v145 = v223;
  *(&v198 - 4) = v224;
  *(&v198 - 3) = v145;
  *(&v198 - 2) = v129;
  *(&v198 - 1) = v132;
  v146 = objc_allocWithZone(sub_223729078());
  v147 = sub_223728FC8();

  if (v147)
  {
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(&v229, v230);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(&v229);
    sub_223626478(v209, &qword_27D08F730, &unk_223731DB0);
    sub_223626478(v129, &qword_27D08F738, &unk_2237324D0);
LABEL_83:
    sub_2236E631C();
    v179 = v228;
    sub_2236E5DC8(v228);

    v180 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId;
    v181 = *(v77 + qword_28132A1A0 + 32);
    __swift_project_boxed_opaque_existential_1((v77 + qword_28132A1A0), *(v77 + qword_28132A1A0 + 24));
    v182 = sub_22372A548();
    v230 = v182;
    v183 = __swift_allocate_boxed_opaque_existential_1(&v229);
    (*(*(v182 - 8) + 16))(v183, v179 + v180, v182);
    v184 = v198;
    v185 = v200;
    v186 = v199;
    (*(v198 + 104))(v200, *MEMORY[0x277D5D1C0], v199);
    sub_22372A4B8();
    (*(v184 + 8))(v185, v186);
    sub_223626478(&v229, &unk_27D08F750, &qword_22372C960);
    sub_223630E28(v179);
    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v148 = sub_22372AC98();
  __swift_project_value_buffer(v148, qword_28132B680);
  v149 = sub_22372AC88();
  v150 = sub_22372B278();
  v151 = os_log_type_enabled(v149, v150);
  v152 = v207;
  if (v151)
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_223620000, v149, v150, "Could not construct TextBasedTRPCandidateMessage", v153, 2u);
    MEMORY[0x223DE8A80](v153, -1, -1);
  }

  type metadata accessor for RequestControllerBridgeInternalErrors(0);
  sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
  swift_allocError();
  *v154 = 0xD00000000000001CLL;
  v154[1] = 0x8000000223737230;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_223626478(v209, &qword_27D08F730, &unk_223731DB0);
  sub_223626478(v152, &qword_27D08F738, &unk_2237324D0);
}

id sub_2236DBC34(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000036, 0x80000002237374F0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DC060(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000027, 0x8000000223737900, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DC48C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000019, 0x8000000223737810, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DC8B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000014, 0x8000000223736AD0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DCCE4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD00000000000001DLL, 0x80000002237377C0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DD110(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223737770, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DD53C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD00000000000001ALL, 0x8000000223737860, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DD968(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000015, 0x8000000223737600, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DDD94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD00000000000002CLL, 0x80000002237374C0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DE1C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000019, 0x8000000223735150, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DE5EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000018, 0x80000002237371C0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DEA18(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000014, 0x8000000223737AE0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DEE44(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD00000000000001DLL, 0x8000000223737670, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DF270(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000011, 0x8000000223737440, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DF69C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000026, 0x80000002237376C0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DFAC8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD00000000000001CLL, 0x8000000223737210, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236DFEF4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000025, 0x80000002237379C0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236E0320(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000021, 0x8000000223737960, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236E074C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000027, 0x8000000223737300, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

id sub_2236E0B78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 24 * v13;
    v17 = *(v16 + 16);
    v38 = *v16;
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000019, 0x80000002237378B0, &v39);
      _os_log_impl(&dword_223620000, v19, v20, "Dispatching message %s to a RequestController async", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    *(v23 + 32) = v38;
    *(v23 + 48) = a1;
    swift_unknownObjectRetain_n();
    v24 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_28132B680);
    v27 = a1;
    v28 = sub_22372AC88();
    v29 = sub_22372B278();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      v32 = [v27 debugDescription];
      v33 = sub_22372AFE8();
      v35 = v34;

      v36 = sub_223623274(v33, v35, &v39);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_223620000, v28, v29, "Could not find a RequestProcessor for message: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223DE8A80](v31, -1, -1);
      MEMORY[0x223DE8A80](v30, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v37 = v27;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    swift_willThrow();
    return v27;
  }
}

uint64_t sub_2236E0FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E0FCC, 0, 0);
}

uint64_t sub_2236E0FCC()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000036, 0x80000002237374F0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E11EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E1214, 0, 0);
}

uint64_t sub_2236E1214()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000027, 0x8000000223737900, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E1434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E145C, 0, 0);
}

uint64_t sub_2236E145C()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000019, 0x8000000223737810, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E167C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E16A4, 0, 0);
}

uint64_t sub_2236E16A4()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000014, 0x8000000223736AD0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E18C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E18EC, 0, 0);
}

uint64_t sub_2236E18EC()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001DLL, 0x80000002237377C0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E1B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E1B34, 0, 0);
}

uint64_t sub_2236E1B34()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223737770, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E1D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E1D7C, 0, 0);
}

uint64_t sub_2236E1D7C()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001ALL, 0x8000000223737860, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E1F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E1FC4, 0, 0);
}

uint64_t sub_2236E1FC4()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000015, 0x8000000223737600, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E220C, 0, 0);
}

uint64_t sub_2236E220C()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000002CLL, 0x80000002237374C0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E2454, 0, 0);
}

uint64_t sub_2236E2454()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000019, 0x8000000223735150, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E2674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E269C, 0, 0);
}

uint64_t sub_2236E269C()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000018, 0x80000002237371C0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E28BC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2236E2920()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2236E2984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E29AC, 0, 0);
}

uint64_t sub_2236E29AC()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000014, 0x8000000223737AE0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E2BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E2BF4, 0, 0);
}

uint64_t sub_2236E2BF4()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001DLL, 0x8000000223737670, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E2E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E2E3C, 0, 0);
}

uint64_t sub_2236E2E3C()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000011, 0x8000000223737440, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E3084, 0, 0);
}

uint64_t sub_2236E3084()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000026, 0x80000002237376C0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E32A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E32CC, 0, 0);
}

uint64_t sub_2236E32CC()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001CLL, 0x8000000223737210, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E3514, 0, 0);
}

uint64_t sub_2236E3514()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000025, 0x80000002237379C0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E3734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E375C, 0, 0);
}

uint64_t sub_2236E375C()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000021, 0x8000000223737960, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E39A4, 0, 0);
}

uint64_t sub_2236E39A4()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000027, 0x8000000223737300, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E3BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E3BEC, 0, 0);
}

uint64_t sub_2236E3BEC()
{
  v15 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000019, 0x80000002237378B0, &v14);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0 + 24);
  v7 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_22363AC74;
  v11 = *(v0 + 48);

  return v13(v11);
}

uint64_t sub_2236E3E0C(uint64_t a1, unint64_t a2)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_223623274(a1, a2, &v11);
    _os_log_impl(&dword_223620000, v5, v6, "Unloading RequestController with requestId: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  swift_beginAccess();
  v9 = sub_223718C48(a1, a2);
  result = swift_endAccess();
  if (v9)
  {
    sub_22372A8C8();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2236E3FB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v54 = type metadata accessor for RequestInfo.UserQuery(0);
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v54, v10);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RequestInfo.UserInput(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v19 = *(v4 + qword_28132B8A0);
    v20 = v19;
  }

  else
  {
    MEMORY[0x28223BE20](v15, v16);
    *(&v51 - 2) = a2;
    *(&v51 - 1) = v4;
    v21 = objc_allocWithZone(sub_22372A408());
    v22 = sub_22372A3D8();
    v24 = *(v4 + qword_28132B8A0);
    if (v24)
    {
      v25 = MEMORY[0x28223BE20](v22, v23);
      *(&v51 - 2) = v24;
      *(&v51 - 1) = v25;
      v26 = v25;
      v27 = objc_allocWithZone(sub_22372A328());
      v28 = v24;
      v19 = sub_22372A2E8();
    }

    else
    {

      v19 = 0;
    }
  }

  v53 = *(v4 + qword_28132A1D8);
  v29 = v19;
  v30 = sub_2236C5CF4(a1);
  MEMORY[0x28223BE20](v30, v31);
  *(&v51 - 4) = v4;
  *(&v51 - 3) = a1;
  *(&v51 - 2) = v19;
  v32 = objc_allocWithZone(sub_223728F88());
  v33 = sub_223728ED8();
  v55 = v29;

  if (v33)
  {
    v34 = v33;
    sub_22363B540(v34, v30, v4, MEMORY[0x277D5CC60]);

    v35 = sub_22372A768();
    v37 = v36;
    v39 = *(a1 + 16);
    v38 = *(a1 + 24);
    v40 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
    swift_beginAccess();
    sub_2236397B0(a1 + v40, v18, type metadata accessor for RequestInfo.UserInput);
    v41 = (*(v8 + 48))(v18, 1, v54);
    v42 = 0;
    v43 = 0;
    if (v41 != 1)
    {
      v44 = v18;
      v45 = v52;
      sub_223639818(v44, v52, type metadata accessor for RequestInfo.UserQuery);
      v42 = *(v45 + 32);
      v43 = *(v45 + 40);

      sub_22363B214(v45, type metadata accessor for RequestInfo.UserQuery);
    }

    sub_2236C5458(v35, v37, v39, v38, v42, v43, *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex + 8));
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v46 = sub_22372AC98();
    __swift_project_value_buffer(v46, qword_28132B680);
    v47 = sub_22372AC88();
    v48 = sub_22372B278();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_223620000, v47, v48, "Could not construct StartChildTextRequestMessage", v49, 2u);
      MEMORY[0x223DE8A80](v49, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v50 = 0xD00000000000001CLL;
    v50[1] = 0x8000000223737210;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_2236E4500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22372A3F8();
  v4 = qword_28132B870;
  swift_beginAccess();
  v5 = *(a3 + v4);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v8 = *(a3 + v4);
    }

    sub_22372B558();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_22372A3E8();
}

uint64_t sub_2236E4590(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v49 = v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F700, &qword_223731D88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v48 = v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v47 = v46 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = v46 - v27;
  v29 = a4;
  sub_22372A728();
  sub_223728F08();
  v30 = *MEMORY[0x277D5CDE8];
  v31 = sub_223729DE8();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v28, v30, v31);
  (*(v32 + 56))(v28, 0, 1, v31);
  sub_223728F58();
  sub_22372A778();
  v33 = sub_223727408();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v35(v23, 0, 1, v33);
  sub_223728F78();
  v36 = *(a3 + 16);
  v37 = *(a3 + 24);

  sub_223728F68();
  v38 = qword_28132B858;
  swift_beginAccess();
  sub_223634890(a2 + v38, v47, &unk_27D08F6F0, &qword_223732CD0);
  sub_223728F18();
  sub_223728F38();
  sub_22372A768();
  sub_223728EE8();
  (*(v34 + 16))(v23, a3 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v33);
  v35(v23, 0, 1, v33);
  sub_223728F48();
  v39 = qword_28132B898;
  swift_beginAccess();
  sub_223634890(a2 + v39, v48, &unk_27D08F700, &qword_223731D88);
  sub_223728EF8();
  v40 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  swift_beginAccess();
  v41 = sub_2237287C8();
  v42 = *(v41 - 8);
  v43 = a3 + v40;
  v44 = v49;
  (*(v42 + 16))(v49, v43, v41);
  (*(v42 + 56))(v44, 0, 1, v41);
  return sub_223728F28();
}

uint64_t sub_2236E4A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F720, &unk_223731DA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v51 - v5;
  v7 = sub_22372A2C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v64 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_223727408();
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v52 = a1;
  v54 = v20;
  if (v20)
  {
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v61 = *(v21 + 56);
    v62 = v22;
    v59 = (v8 + 48);
    v60 = (v21 - 8);
    v24 = MEMORY[0x277D84F90];
    v55 = v8;
    v56 = v7;
    v57 = v12;
    v58 = (v8 + 32);
    v25 = v20;
    do
    {
      v26 = v21;
      v27 = v62(v19, v23, v12);
      MEMORY[0x28223BE20](v27, v28);
      *(&v51 - 2) = v19;
      sub_22372A2A8();
      (*v60)(v19, v12);
      if ((*v59)(v6, 1, v7) == 1)
      {
        v15 = sub_223626478(v6, &unk_27D08F720, &unk_223731DA0);
      }

      else
      {
        v29 = *v58;
        (*v58)(v64, v6, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_223711220(0, v24[2] + 1, 1, v24);
        }

        v31 = v24[2];
        v30 = v24[3];
        if (v31 >= v30 >> 1)
        {
          v24 = sub_223711220(v30 > 1, v31 + 1, 1, v24);
        }

        v24[2] = v31 + 1;
        v32 = v24 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v31;
        v7 = v56;
        v15 = (v29)(v32, v64, v56);
        v12 = v57;
      }

      v23 += v61;
      --v25;
      v21 = v26;
    }

    while (v25);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  if (v24[2] != v54)
  {

    goto LABEL_20;
  }

  MEMORY[0x28223BE20](v15, v16);
  v33 = v53;
  *(&v51 - 2) = v24;
  *(&v51 - 1) = v33;
  v34 = objc_allocWithZone(sub_223729448());
  v35 = sub_2237293F8();

  if (!v35)
  {
LABEL_20:
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v50 = 0xD000000000000020;
    v50[1] = 0x80000002237371E0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v36 = sub_22372AC98();
  __swift_project_value_buffer(v36, qword_28132B680);
  v37 = v35;
  v38 = v52;

  v39 = sub_22372AC88();
  v40 = sub_22372B268();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = v12;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v63[0] = v44;
    *v41 = 138412546;
    *(v41 + 4) = v37;
    *v43 = v35;
    *(v41 + 12) = 2080;
    v45 = v37;
    v46 = MEMORY[0x223DE7B80](v38, v42);
    v48 = sub_223623274(v46, v47, v63);

    *(v41 + 14) = v48;
    _os_log_impl(&dword_223620000, v39, v40, "Posting %@ with taskIds: %s", v41, 0x16u);
    sub_223626478(v43, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v43, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x223DE8A80](v44, -1, -1);
    MEMORY[0x223DE8A80](v41, -1, -1);
  }

  sub_22372A758();
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  sub_223729D88();

  return __swift_destroy_boxed_opaque_existential_1Tm(v63);
}

uint64_t sub_2236E508C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = sub_223727408();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_22372A2B8();
}

uint64_t sub_2236E518C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;

  sub_223729408();
  sub_22372A728();
  sub_223729418();
  sub_22372A778();
  v10 = sub_223727408();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_223729438();
  v11 = *MEMORY[0x277D5CDE8];
  v12 = sub_223729DE8();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  return sub_223729428();
}

uint64_t sub_2236E5364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v45[5] = a8;
  v45[6] = a7;
  v45[3] = a6;
  v45[4] = a5;
  v45[1] = a4;
  v45[2] = a3;
  v49 = a12;
  v50 = a13;
  v47 = a11;
  v48 = a10;
  v46 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = v45 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = v45 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v37 = v45 - v36;
  sub_22372A728();
  sub_223728FE8();
  v38 = *MEMORY[0x277D5CDE8];
  v39 = sub_223729DE8();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v37, v38, v39);
  (*(v40 + 56))(v37, 0, 1, v39);
  sub_223729028();
  sub_22372A778();
  v41 = sub_223727408();
  (*(*(v41 - 8) + 56))(v32, 0, 1, v41);
  sub_223729058();

  sub_223729048();

  sub_223728FF8();

  sub_223729018();
  v42 = sub_22372A548();
  v43 = *(v42 - 8);
  (*(v43 + 16))(v27, v46, v42);
  (*(v43 + 56))(v27, 0, 1, v42);
  sub_223729038();

  sub_223729068();
  sub_223634890(v49, v22, &qword_27D08F738, &unk_2237324D0);
  sub_223728FD8();
  sub_223634890(v50, v17, &qword_27D08F730, &unk_223731DB0);
  return sub_223729008();
}

uint64_t sub_2236E577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v65[5] = a8;
  v65[6] = a7;
  v65[3] = a6;
  v65[4] = a5;
  v65[1] = a4;
  v65[2] = a3;
  v74 = a15;
  v75 = a16;
  v72 = a14;
  v69 = a12;
  v70 = a13;
  v67 = a11;
  v68 = a10;
  v66 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v73 = v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F768, &qword_223731DD8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v71 = v65 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = v65 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v65[0] = v65 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8, v35);
  v37 = v65 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8, v40);
  v42 = v65 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8, v45);
  v47 = v65 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8, v50);
  v52 = v65 - v51;
  sub_22372A728();
  sub_223729768();
  v53 = *MEMORY[0x277D5CDE8];
  v54 = sub_223729DE8();
  v55 = *(v54 - 8);
  (*(v55 + 104))(v52, v53, v54);
  (*(v55 + 56))(v52, 0, 1, v54);
  sub_2237297C8();
  sub_22372A778();
  v56 = sub_223727408();
  (*(*(v56 - 8) + 56))(v47, 0, 1, v56);
  sub_2237297F8();

  sub_2237297E8();

  sub_223729748();

  sub_2237297B8();
  v57 = sub_22372A548();
  v58 = *(v57 - 8);
  (*(v58 + 16))(v42, v66, v57);
  (*(v58 + 56))(v42, 0, 1, v57);
  sub_2237297D8();

  sub_223729808();
  sub_223634890(v69, v37, &qword_27D08F738, &unk_2237324D0);
  sub_223729758();
  sub_223634890(v70, v65[0], &qword_27D08F730, &unk_223731DB0);
  sub_223729788();
  v59 = sub_223729D78();
  v60 = *(v59 - 8);
  (*(v60 + 16))(v28, v72, v59);
  (*(v60 + 56))(v28, 0, 1, v59);
  sub_223729798();
  v61 = sub_223729728();
  v62 = *(v61 - 8);
  v63 = v71;
  (*(v62 + 16))(v71, v74, v61);
  (*(v62 + 56))(v63, 0, 1, v61);
  sub_223729778();
  sub_223634890(v75, v73, &qword_27D08F760, &qword_223731DD0);
  return sub_2237297A8();
}

uint64_t sub_2236E5DC8(uint64_t a1)
{
  v2 = objc_allocWithZone(sub_223728918());
  v3 = sub_2237288A8();
  if (v3)
  {
    v4 = v3;
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_223729D88();

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v6 = sub_22372AC98();
    __swift_project_value_buffer(v6, qword_28132B680);

    v7 = sub_22372AC88();
    v8 = sub_22372B278();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_223623274(*(a1 + 16), *(a1 + 24), v12);
      _os_log_impl(&dword_223620000, v7, v8, "Could not create NLRoutingDecisionMessage for requestId: %s. Missing fields?", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x223DE8A80](v10, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v11 = 0xD000000000000018;
    v11[1] = 0x80000002237371C0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_2236E601C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v30 - v18;
  v20 = *MEMORY[0x277D5CDE8];
  v21 = sub_223729DE8();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  sub_2237288E8();
  sub_22372A728();
  sub_2237288C8();
  sub_22372A778();
  v23 = sub_223727408();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  sub_223728908();
  v24 = *(a3 + 16);
  v25 = *(a3 + 24);

  sub_2237288F8();
  v26 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  swift_beginAccess();
  v27 = sub_2237287C8();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v9, a3 + v26, v27);
  (*(v28 + 56))(v9, 0, 1, v27);
  sub_2237288B8();

  return sub_2237288D8();
}

uint64_t sub_2236E631C()
{
  v0 = objc_allocWithZone(sub_223729AB8());
  v1 = sub_223729A58();
  if (v1)
  {
    v2 = v1;
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_223729D88();

    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v4 = sub_22372AC98();
    __swift_project_value_buffer(v4, qword_28132B680);
    v5 = sub_22372AC88();
    v6 = sub_22372B278();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_223620000, v5, v6, "Could not construct StoppedListeningForTextContinuationMessage", v7, 2u);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v8 = 0xD00000000000002ALL;
    v8[1] = 0x8000000223737190;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_2236E651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[1] = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v20 - v13;
  sub_22372A728();
  sub_223729A68();
  v15 = *MEMORY[0x277D5CDE8];
  v16 = sub_223729DE8();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_223729A78();
  sub_22372A778();
  v18 = sub_223727408();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  sub_223729AA8();

  sub_223729A98();

  return sub_223729A88();
}

uint64_t sub_2236E672C(uint64_t a1)
{
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = v1;
  v10 = objc_allocWithZone(sub_223729538());
  v11 = sub_2237294E8();
  if (v11)
  {
    v12 = v11;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v13 = sub_22372AC98();
    __swift_project_value_buffer(v13, qword_28132B680);
    (*(v5 + 16))(v9, a1, v4);
    v14 = v12;
    v15 = sub_22372AC88();
    v16 = sub_22372B268();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v43[6] = v2;
      v18 = v17;
      v37 = v17;
      v40 = swift_slowAlloc();
      v43[0] = v40;
      *v18 = 136315394;
      v19 = v14;
      v39 = v16;
      v20 = v19;
      v21 = [v19 description];
      v22 = sub_22372AFE8();
      v38 = v15;
      v23 = v22;
      v24 = v14;
      v26 = v25;

      v27 = sub_223623274(v23, v26, v43);
      v14 = v24;

      v28 = v37;
      *(v37 + 4) = v27;
      *(v28 + 12) = 2080;
      sub_2236233E0(&qword_28132B600, MEMORY[0x277CC95F0]);
      v29 = sub_22372B6B8();
      v31 = v30;
      (*(v5 + 8))(v9, v4);
      v32 = sub_223623274(v29, v31, v43);

      *(v28 + 14) = v32;
      v33 = v38;
      _os_log_impl(&dword_223620000, v38, v39, "Posting %s with taskId: %s", v28, 0x16u);
      v34 = v40;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v34, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    sub_223729D88();

    return __swift_destroy_boxed_opaque_existential_1Tm(v43);
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v35 = 0xD000000000000021;
    v35[1] = 0x8000000223737160;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_2236E6B54(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v20 - v11;
  v13 = sub_223727408();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  v15 = *(v14 + 56);
  v15(v12, 0, 1, v13);
  sub_2237294F8();
  v16 = *MEMORY[0x277D5CDE8];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v7, v16, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  sub_223729518();
  sub_22372A728();
  sub_223729508();
  sub_22372A778();
  v15(v12, 0, 1, v13);
  return sub_223729528();
}

uint64_t sub_2236E6D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = *MEMORY[0x277D5CDE8];
  v11 = sub_223729DE8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_223728158();
  sub_22372A728();
  sub_223728138();
  sub_22372A778();
  v13 = sub_223727408();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  sub_223728178();

  sub_223728168();
  return sub_223728148();
}

uint64_t sub_2236E6F88(unint64_t a1, uint64_t a2)
{
  v5 = qword_28132B870;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v24 = v5;
  if (v6 >> 62)
  {
    goto LABEL_33;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      return sub_2236E7284(MEMORY[0x277D84F90]);
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223DE7ED0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v7 = sub_22372B558();
        goto LABEL_3;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    if (*(v9 + 16) == a1 && *(v9 + 24) == a2)
    {

      goto LABEL_20;
    }

    v11 = sub_22372B6E8();

    if (v11)
    {
      break;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_32;
    }
  }

LABEL_20:
  v13 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_35:
    v16 = v8 + 1;
    v15 = sub_22372B558();
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_48;
  }

  a1 = v24;
  v14 = *(v2 + v24);
  if (v14 >> 62)
  {
    goto LABEL_35;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 >= v15)
  {
    return sub_2236E7284(MEMORY[0x277D84F90]);
  }

  while (1)
  {
    v16 = *(v2 + a1);
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
    v7 = v16 >> 62;
    if (v16 >> 62)
    {
      break;
    }

    v2 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v13)
    {
      if ((v16 & 0xC000000000000001) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_26;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v13 = v16;
    if (v16 >= v15)
    {
      return sub_2236E7284(MEMORY[0x277D84F90]);
    }
  }

LABEL_37:
  if ((v16 & 0x8000000000000000) != 0)
  {
    a1 = v16;
  }

  else
  {
    a1 = v17;
  }

  v21 = v13;
  v15 = sub_22372B558();
  if (v15 < v21)
  {
    goto LABEL_46;
  }

  v2 = v15;
  v15 = sub_22372B558();
  if (v15 < v21)
  {
    goto LABEL_47;
  }

  v15 = sub_22372B558();
  if (v15 < v2)
  {
    __break(1u);
    goto LABEL_44;
  }

  v13 = v21;
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_52:
    swift_bridgeObjectRetain_n();
    goto LABEL_53;
  }

LABEL_26:
  if (v13 == v2)
  {
    goto LABEL_52;
  }

  if (v13 >= v2)
  {
    goto LABEL_45;
  }

  v18 = v13;
  type metadata accessor for RequestInfo(0);
  swift_bridgeObjectRetain_n();
  v19 = v18;
  do
  {
    v20 = v19 + 1;
    sub_22372B478();
    v19 = v20;
  }

  while (v2 != v20);
LABEL_53:

  if (!v7)
  {
    return v16 & 0xFFFFFFFFFFFFFF8;
  }

  v23 = sub_22372B568();

  return v23;
}

uint64_t sub_2236E7284(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_22372B558();
    if (v4)
    {
      v5 = v4;
      v6 = sub_22369C0C4(v4, 0);
      sub_22363B070(v6 + 32, v5, a1);
      v8 = v7;

      result = v6;
      if (v8 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    result = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  result = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_3:
  v2 = (2 * *(result + 16)) | 1;
  return result;
}

void *sub_2236E732C(void *a1)
{
  v2 = v1;
  result = sub_223727ED8();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [result refId];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22372AFE8();
    v10 = v9;

    v11 = sub_223729D38();
    if (v10)
    {
      if (v8 == v11 && v10 == v12)
      {
      }

      else
      {
        v14 = sub_22372B6E8();

        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v15 = sub_223729D38();
      v17 = v16;
      if (v15 != sub_22372A768() || v17 != v18)
      {
        v21 = sub_22372B6E8();

        if ((v21 & 1) == 0)
        {
          sub_22372A768();
          v22 = sub_22372AFD8();

          [v5 setRefId_];
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    sub_223729D38();
  }

LABEL_17:
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = a1;

  v20 = a1;
  sub_2236E78BC(v5, sub_2236E9D50, v19);
}

uint64_t sub_2236E7528(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_22372AE88();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22372AEB8();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v24, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22372A738();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  aBlock[4] = sub_2236E9D58;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365ACE8;
  aBlock[3] = &block_descriptor_16;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  v21 = a4;
  sub_22372AEA8();
  v26 = MEMORY[0x277D84F90];
  sub_2236233E0(&qword_281328E38, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
  sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8);
  sub_22372B3E8();
  MEMORY[0x223DE7D20](0, v16, v11, v19);
  _Block_release(v19);

  (*(v25 + 8))(v11, v7);
  (*(v12 + 8))(v16, v24);
}

uint64_t sub_2236E7814()
{
  v0 = sub_2236E8158();
  sub_22372A758();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_223729D88();

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_2236E78BC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);
  v7 = a1;
  v8 = sub_22372AC88();
  v9 = sub_22372B268();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_223620000, v8, v9, "Submitting ace command from FlowOutput %@", v10, 0xCu);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  if (sub_22370C1B0())
  {
    sub_2236E7ADC();
  }

  if (sub_22370C6B8())
  {
    sub_2236E7D14();
  }

  v13 = sub_22372A748();
  v16[4] = a2;
  v16[5] = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22365AC5C;
  v16[3] = &block_descriptor_7;
  v14 = _Block_copy(v16);

  [v13 handleCommand:v7 completion:v14];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

void sub_2236E7ADC()
{
  v0 = objc_allocWithZone(sub_223729E08());
  v1 = sub_223729DF8();
  if (v1)
  {
    v2 = v1;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v4 = sub_22372AC88();
    v5 = sub_22372B268();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_223620000, v4, v5, "Going to post SiriWillPromptMessage", v6, 2u);
      MEMORY[0x223DE8A80](v6, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);
    oslog = sub_22372AC88();
    v8 = sub_22372B278();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_223620000, oslog, v8, "Could not create SiriWillPromptMessage", v9, 2u);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }
  }
}

void sub_2236E7D14()
{
  v0 = objc_allocWithZone(sub_223729E28());
  v1 = sub_223729E18();
  if (v1)
  {
    v2 = v1;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v4 = sub_22372AC88();
    v5 = sub_22372B268();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_223620000, v4, v5, "Going to post SiriWillAskForConfirmationMessage", v6, 2u);
      MEMORY[0x223DE8A80](v6, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);
    oslog = sub_22372AC88();
    v8 = sub_22372B278();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_223620000, oslog, v8, "Could not create SiriWillAskForConfirmationMessage", v9, 2u);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }
  }
}

uint64_t sub_2236E7F4C(uint64_t a1, uint64_t a2, void (*a3)(char *), void (*a4)(uint64_t), void (*a5)(char *), uint64_t (*a6)(uint64_t))
{
  v27 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = *MEMORY[0x277D5CDE8];
  v20 = sub_223729DE8();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  a3(v18);
  v22 = sub_22372A728();
  a4(v22);
  sub_22372A778();
  v23 = sub_223727408();
  (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  a5(v13);
  v24 = sub_22372A768();
  return v27(v24);
}

uint64_t sub_2236E8158()
{
  v0 = objc_allocWithZone(sub_223728BB8());
  result = sub_223728B48();
  if (!result)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v2 = sub_22372AC98();
    __swift_project_value_buffer(v2, qword_28132B680);
    v3 = sub_22372AC88();
    v4 = sub_22372B278();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223620000, v3, v4, "Failed to create FlowOutputResponseMessage: Missing fields?", v5, 2u);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v6 = 0xD000000000000019;
    v6[1] = 0x8000000223737140;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2236E8304(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v22 - v13;
  v15 = *MEMORY[0x277D5CDE8];
  v16 = sub_223729DE8();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_223728B78();
  sub_22372A728();
  sub_223728B58();
  sub_22372A778();
  v18 = sub_223727408();
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 0, 1, v18);
  sub_223728BA8();
  sub_223729D38();
  sub_223728B98();
  sub_223729DB8();
  v19(v9, 0, 1, v18);
  sub_223728B88();
  v20 = a4;
  return sub_223728B68();
}

void sub_2236E8534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D476E8]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v7 + 8))(v11, v6);
  v13 = sub_22372AFD8();

  [v12 setAceId_];

  v14 = v12;
  sub_22372A768();
  v15 = sub_22372AFD8();

  [v14 setRefId_];

  v16 = sub_22372A748();
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_2236E8CD8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365AC5C;
  aBlock[3] = &block_descriptor_4;
  v18 = _Block_copy(aBlock);

  sub_22363C4E4(a1);

  [v16 handleCommand:v14 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

void sub_2236E8798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v7 = sub_22372AC98();
  __swift_project_value_buffer(v7, qword_28132B680);

  v8 = sub_22372AC88();
  v9 = sub_22372B268();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    v12 = sub_22372A768();
    v14 = sub_223623274(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_223620000, v8, v9, "SARequestCompleted command submitted for requestId: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223DE8A80](v11, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  if (a4)
  {
    a4(a1, a2);
  }
}

uint64_t sub_2236E89B4()
{
  v1 = *(v0 + qword_28132A200 + 8);

  v2 = *(v0 + qword_28132A1E8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1A0));
  v3 = *(v0 + qword_28132A1D8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1C0));

  v4 = *(v0 + qword_28132A208);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1F0));
  sub_223626478(v0 + qword_28132B8A8, &unk_27D08E990, &qword_22372FCF0);
  v5 = *(v0 + qword_28132B848);

  sub_223626478(v0 + qword_28132B858, &unk_27D08F6F0, &qword_223732CD0);
  v6 = *(v0 + qword_28132B878);

  sub_223626478(v0 + qword_28132B888, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223626478(v0 + qword_28132B898, &unk_27D08F700, &qword_223731D88);
  v7 = *(v0 + qword_28132B880);

  v8 = *(v0 + qword_28132B870);

  v9 = *(v0 + qword_28132B8C0);

  v10 = *(v0 + qword_28132B8B8);

  v11 = *(v0 + qword_28132B830);

  v12 = *(v0 + qword_28132B850);

  v13 = *(v0 + qword_28132B838);

  v14 = *(v0 + qword_28132B868 + 8);

  v15 = *(v0 + qword_28132B840);
}

void sub_2236E8BBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2236E8C40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2236E8C88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236E8CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[1] = a4;
  v38[2] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v38[3] = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E980, &qword_22372D178);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = v38 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = v38 - v29;
  v31 = *MEMORY[0x277D5CDE8];
  v32 = sub_223729DE8();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v30, v31, v32);
  (*(v33 + 56))(v30, 0, 1, v32);
  sub_223727FE8();
  sub_223729D98();
  sub_223727F88();
  sub_223729D58();
  v34 = sub_223727408();
  (*(*(v34 - 8) + 56))(v25, 0, 1, v34);
  sub_223728018();

  sub_223728008();
  sub_223728D08();
  v35 = sub_22372A548();
  (*(*(v35 - 8) + 56))(v20, 0, 1, v35);
  sub_223727FF8();
  sub_223728CF8();
  sub_223727FA8();
  sub_223727F48();
  v36 = sub_223727F38();
  (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
  sub_223727FB8();
  sub_223727F58();
  sub_223727FC8();
  sub_223727F28();
  sub_223727F98();
  sub_223727F68();
  return sub_223727FD8();
}

uint64_t sub_2236E912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = v27 - v19;
  v21 = *MEMORY[0x277D5CDE8];
  v22 = sub_223729DE8();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v20, v21, v22);
  (*(v23 + 56))(v20, 0, 1, v22);
  sub_223728348();
  sub_223729D98();
  sub_2237282F8();
  sub_223729D58();
  v24 = sub_223727408();
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
  sub_223728378();

  sub_223728368();
  sub_223728CF8();
  sub_223728308();
  sub_2237282B8();
  sub_223728318();
  sub_2237282D8();
  sub_223728338();
  sub_223728D08();
  v25 = sub_22372A548();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  sub_223728358();
  sub_2237282C8();
  return sub_223728328();
}

uint64_t sub_2236E9458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v21 - v13;
  v15 = *MEMORY[0x277D5CDE8];
  v16 = sub_223729DE8();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_223728AF8();
  sub_223729D98();
  sub_223728AB8();
  sub_223729D58();
  v18 = sub_223727408();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  sub_223728B28();

  sub_223728B18();
  sub_223728CF8();
  sub_223728AD8();
  sub_223728A88();
  sub_223728AC8();
  sub_223728AA8();
  sub_223728AE8();
  sub_223728D08();
  v19 = sub_22372A548();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  return sub_223728B08();
}

uint64_t sub_2236E971C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v21 - v13;
  sub_223729D98();
  sub_223728C78();

  sub_223728CC8();
  sub_223729D58();
  v15 = sub_223727408();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_223728CD8();
  v16 = *MEMORY[0x277D5CDE8];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v9, v16, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  sub_223728CA8();
  sub_223728C58();
  sub_223728C98();
  sub_223728CF8();
  sub_223728C88();
  sub_223728D08();
  v19 = sub_22372A548();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  return sub_223728CB8();
}

uint64_t sub_2236E99C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F778, &qword_223731E08);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v21 - v13;
  sub_223729D98();
  sub_223729B98();
  sub_223729D38();
  sub_223729BD8();
  sub_223729D58();
  v15 = sub_223727408();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_223729BE8();
  v16 = *MEMORY[0x277D5CDE8];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v9, v16, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  sub_223729BB8();

  sub_223729BC8();
  sub_223729B78();
  v19 = sub_22372A4D8();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  return sub_223729BA8();
}

uint64_t sub_2236E9D58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2236E7814();
}

uint64_t sub_2236E9D64(void (*a1)(void))
{
  a1();

  return sub_22372B818();
}

uint64_t sub_2236E9DD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2236E518C();
}

uint64_t sub_2236E9DDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22372B558();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22372B558();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_223660728(&qword_27D08F7C0, &qword_27D08F7B8, &qword_223732180);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7B8, &qword_223732180);
            v9 = sub_2236F4860(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_223630584(0, &qword_281328D00, 0x277D47140);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2236E9F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RequestInfo(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22372B558();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_22372B558();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2236EA090(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22372B558();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_22372B558();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2236F47D4(result);

  return sub_2236E9F90(v4, v2, 0);
}

unint64_t sub_2236EA17C()
{
  result = qword_27D08F748;
  if (!qword_27D08F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F748);
  }

  return result;
}

uint64_t sub_2236EA260()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_2236E6D88();
}

uint64_t sub_2236EA26C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E167C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EA328(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CFD9C(a1, v5, v4);
}

uint64_t sub_2236EA3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2236EA450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236EA4CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E397C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EA588(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236D22E4(a1, v5, v4);
}

uint64_t sub_2236EA630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2236242EC;

  return sub_2236D16AC(a1, v4, v5, v7, v6);
}

void sub_2236EA6F0()
{
  v1 = v0;
  v2 = type metadata accessor for RequestInfo.UserInput(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for RequestInfo.UserQuery(0);
  v8 = *(v7 + 28);
  v9 = sub_223728858();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  v10 = *(v7 + 32);
  v11 = sub_2237287E8();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v12 = sub_22362D128(v6);
  sub_22363B214(v6, type metadata accessor for RequestInfo.UserInput);
  v21 = v1;
  v22 = v12;
  v13 = objc_allocWithZone(sub_2237295B8());
  v14 = sub_223729548();
  if (v14)
  {
    v15 = v14;
    sub_22363B540(v14, 1, v1, MEMORY[0x277D5CCB0]);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B278();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_223620000, v17, v18, "Could not construct StartChildCandidateRequestMessage. Missing fields?", v19, 2u);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }
  }
}

void *sub_2236EA99C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F788, &qword_223731E68);
  v26[4] = sub_223660728(&unk_281328CF0, &unk_27D08F788, &qword_223731E68);
  v10 = swift_allocObject();
  v26[0] = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v11 = qword_281328E58;
  swift_unknownObjectRetain();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_22372AC98();
  __swift_project_value_buffer(v12, qword_28132B680);
  sub_223623934(v26, v25);
  v13 = sub_22372AC88();
  v14 = sub_22372B268();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    result = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v17 = result[2];
    v18 = result[3] >> 1;
    v19 = v18 - v17;
    if (__OFSUB__(v18, v17))
    {
      __break(1u);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    *(v15 + 4) = v19;
    _os_log_impl(&dword_223620000, v13, v14, "Deferring %ld remaining child requests for once the current multi-turn task is complete.", v15, 0xCu);
    MEMORY[0x223DE8A80](v15, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  if (a3 != a4 >> 1)
  {
    v20 = sub_22372AC88();
    v21 = sub_22372B268();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_223620000, v20, v21, "Flow completed with prompt, saving remaining conjunction requests for when this task is complete.", v22, 2u);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }
  }

  v23 = *(a5 + qword_28132A1E8);
  swift_beginAccess();
  v24 = swift_unknownObjectRetain();
  sub_2236F48E8(v24, a2, a3, a4);
  swift_endAccess();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t sub_2236EAC3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E2674(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EACF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236D03E4(a1, v5, v4);
}

uint64_t sub_2236EADA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CFD9C(a1, v5, v4);
}

uint64_t sub_2236EAE48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CFD9C(a1, v5, v4);
}

uint64_t sub_2236EAEF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_223624EA4;

  return sub_2236CF938();
}

uint64_t sub_2236EAFB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E2E14(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB06C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CF798(a1, v5, v4);
}

uint64_t sub_2236EB114()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E21E4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB1D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CEB38(a1, v5, v4);
}

uint64_t sub_2236EB278()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2236E99C8();
}

uint64_t sub_2236EB284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E0FA4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB340(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CE414(a1, v5, v4);
}

uint64_t sub_2236EB3E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2236E9458();
}

uint64_t sub_2236EB3F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CCC98(a1, v5, v4);
}

uint64_t sub_2236EB49C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E242C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB558(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CCC98(a1, v5, v4);
}

uint64_t sub_2236EB60C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E1F9C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB6C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CC6E4(a1, v5, v4);
}

uint64_t sub_2236EB770()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E2BCC(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB82C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CB650(a1, v5, v4);
}

uint64_t sub_2236EB8EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E305C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB9A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CB0E0(a1, v5, v4);
}

uint64_t sub_2236EBA64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E1B0C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EBB20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CA0C4(a1, v5, v4);
}

uint64_t sub_2236EBBD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E18C4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EBC90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236C92E8(a1, v5, v4);
}

uint64_t sub_2236EBD38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E1434(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EBDF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236C8580(a1, v5, v4);
}

uint64_t sub_2236EBE9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E1D54(v2, v3, v4, v5, v6);
}

void sub_2236EBF58(void *a1, void *a2)
{
  v3 = v2;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);
  v7 = sub_22372AC88();
  v8 = sub_22372B268();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_223620000, v7, v8, "RequestControllerBridgeRequestProcessor: Handling RunPOMMESRequest ace command", v9, 2u);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v10 = [a1 refId];
  if (v10 || (v10 = [a2 requestID]) != 0)
  {
    v11 = v10;
    v12 = sub_22372AFE8();
    v14 = v13;

    if (v12 == sub_22372A768() && v14 == v15)
    {
    }

    else
    {
      v16 = sub_22372B6E8();

      if ((v16 & 1) == 0)
      {

        v42 = sub_22372AC88();
        v29 = sub_22372B278();

        if (os_log_type_enabled(v42, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v43[0] = v31;
          *v30 = 136315394;
          v32 = sub_223623274(v12, v14, v43);

          *(v30 + 4) = v32;
          *(v30 + 12) = 2080;
          v33 = sub_22372A768();
          v35 = sub_223623274(v33, v34, v43);

          *(v30 + 14) = v35;
          _os_log_impl(&dword_223620000, v42, v29, "requestId of RunPOMMESRequest ace command: %s does not match the requestId of the RequestProcessor %s, dropping.", v30, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v31, -1, -1);
          MEMORY[0x223DE8A80](v30, -1, -1);

          return;
        }

        goto LABEL_26;
      }
    }

    v17 = *(v3 + qword_28132B8C0);
    if (v17)
    {
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);

      [a1 copy];
      sub_22372B3D8();
      swift_unknownObjectRelease();
      sub_223630584(0, &qword_281328D30, 0x277D476A0);
      if (swift_dynamicCast())
      {
        v20 = v43[5];
        v21 = sub_22372AFD8();
        [v20 setRefId_];

        MEMORY[0x28223BE20](v22, v23);
        v24 = objc_allocWithZone(sub_223728518());
        v25 = sub_2237284A8();

        if (v25)
        {
          sub_22372A758();
          __swift_project_boxed_opaque_existential_1(v43, v43[3]);
          sub_223729D88();

          __swift_destroy_boxed_opaque_existential_1Tm(v43);
        }

        else
        {
          v39 = sub_22372AC88();
          v40 = sub_22372B278();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_223620000, v39, v40, "Could not build RunPommesRequestMessage. Missing fields?", v41, 2u);
            MEMORY[0x223DE8A80](v41, -1, -1);
          }
        }
      }

      else
      {

        v36 = sub_22372AC88();
        v37 = sub_22372B278();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_223620000, v36, v37, "Unable to copy command as SARDRunPOMMESRequest. Dropping.", v38, 2u);
          MEMORY[0x223DE8A80](v38, -1, -1);
        }
      }

      return;
    }

    v42 = sub_22372AC88();
    v26 = sub_22372B278();
    if (os_log_type_enabled(v42, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Unable to find eager child info for the local request, dropping.";
LABEL_24:
      _os_log_impl(&dword_223620000, v42, v26, v28, v27, 2u);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }
  }

  else
  {
    v42 = sub_22372AC88();
    v26 = sub_22372B278();
    if (os_log_type_enabled(v42, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "Could not find a refId in the RunPOMMESRequest ace command, dropping.";
      goto LABEL_24;
    }
  }

LABEL_26:
}

uint64_t sub_2236EC58C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E3BC4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC648()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E11EC(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E3734(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC7C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E34EC(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC87C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E32A4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC938()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E2984(v2, v3, v4, v5, v6);
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges0a16ControllerBridgeA15ProcessorErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2236ECA18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2236ECA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2236ECAA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2236ECAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2237322A0;
  v16 = v15 + v14;
  v17 = (v15 + v14 + *(v12 + 48));
  sub_22372A568();
  *v17 = 0xD000000000000017;
  v17[1] = 0x8000000223734650;
  v18 = (v16 + v13 + *(v12 + 48));
  sub_22372A5A8();
  *v18 = 0xD000000000000013;
  v18[1] = 0x8000000223736E10;
  v19 = *(v12 + 48);
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v20 = (v16 + 2 * v13 + v19);
  v21 = sub_22372A608();
  v22 = __swift_project_value_buffer(v21, qword_28132BA28);
  (*(*(v21 - 8) + 16))(v16 + 2 * v13, v22, v21);
  *v20 = a1;
  v20[1] = a2;
  v23 = (v16 + 3 * v13 + *(v12 + 48));

  sub_22372A5C8();
  *v23 = a3;
  v23[1] = a4;
  v24 = (v16 + 4 * v13 + *(v12 + 48));

  sub_22372A578();
  *v24 = a5;
  v24[1] = a6;
  v25 = (v16 + 5 * v13 + *(v12 + 48));

  sub_22372A5F8();
  *v25 = a7;
  v25[1] = a8;
  v26 = (v16 + 6 * v13 + *(v12 + 48));

  sub_22372A5E8();
  *v26 = a9;
  v26[1] = a10;

  return v15;
}

void sub_2236ECD8C()
{
  v1 = v0;
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v3 + 8))(v7, v2);
  v9 = sub_22372AFD8();

  [v8 setAceId_];

  v10 = v8;
  v11 = sub_22372AFD8();
  [v10 setRefId_];

  v12 = sub_22372AFD8();
  [v10 setReason_];

  v13 = *(v1 + 16);
  aBlock[4] = sub_2236ECFD0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365AC5C;
  aBlock[3] = &block_descriptor_8;
  v14 = _Block_copy(aBlock);
  [v13 handleCommand:v10 completion:v14];
  _Block_release(v14);
}

void sub_2236ECFDC()
{
  v1 = v0;
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_28132B680);
  v9 = sub_22372AC88();
  v10 = sub_22372B268();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_223620000, v9, v10, "Sending RequestCompleted to end the request", v11, 2u);
    MEMORY[0x223DE8A80](v11, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D476E8]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v3 + 8))(v7, v2);
  v13 = sub_22372AFD8();

  [v12 setAceId_];

  v14 = v12;
  v15 = sub_22372AFD8();
  [v14 setRefId_];

  v16 = *(v1 + 16);
  aBlock[4] = sub_2236ED29C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365AC5C;
  aBlock[3] = &block_descriptor_5;
  v17 = _Block_copy(aBlock);
  [v16 handleCommand:v14 completion:v17];
  _Block_release(v17);
}

void sub_2236ED29C()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v0 = sub_22372AC98();
  __swift_project_value_buffer(v0, qword_28132B680);
  oslog = sub_22372AC88();
  v1 = sub_22372B268();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_223620000, oslog, v1, "Sent RequestCompleted to end the request", v2, 2u);
    MEMORY[0x223DE8A80](v2, -1, -1);
  }
}

void sub_2236ED384()
{
  v1 = v0;
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D471E8]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v3 + 8))(v7, v2);
  v9 = sub_22372AFD8();

  [v8 setAceId_];

  v10 = sub_22372AFD8();
  [v8 setRefId_];

  v11 = *(v1 + 16);
  aBlock[4] = sub_2236ED580;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365AC5C;
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);
  [v11 handleCommand:v8 completion:v12];
  _Block_release(v12);
}

void sub_2236ED58C(uint64_t a1, void *a2, const char *a3)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v5 = sub_22372AC98();
  __swift_project_value_buffer(v5, qword_28132B680);
  v6 = a2;
  oslog = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v10 = sub_22372B398();
    v12 = sub_223623274(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223620000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236ED760(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RequestControllerMitigationHandler();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2236ED7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236ED8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236ED9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EDB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EDC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EDD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EDE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EDFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EE0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EE210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EE338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EE460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EE588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EE6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EE7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EE900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EEA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_223624EA4;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EEB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 152);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EEDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 160);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EEEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 176);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EF118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 184);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EF240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 192);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EF368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 200);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EF490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 208);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

uint64_t sub_2236EF5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 216);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3);
}

id sub_2236EF704()
{
  v1 = v0;
  v2 = sub_223729D78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D5CD98])
  {
    (*(v3 + 96))(v7, v2);
    v9 = *v7;
    result = [*v7 recognition];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = [result oneBestTranscript];

    if (v12)
    {
      v13 = sub_22372AFE8();

      return v13;
    }
  }

  else
  {
    if (v8 == *MEMORY[0x277D5CD90])
    {
      (*(v3 + 96))(v7, v2);
      result = *v7;
      v14 = *(v7 + 1);
      return result;
    }

    (*(v3 + 8))(v7, v2);
  }

  return 0;
}

uint64_t sub_2236EF8D8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2237287C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D5CB90] || v10 == *MEMORY[0x277D5CB78])
  {
    v11 = *(v5 + 8);
    v11(a1, v4);
    v11(v9, v4);
LABEL_4:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  if (v10 == *MEMORY[0x277D5CB70])
  {
    v14 = *(v5 + 8);
    v14(v9, v4);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);
    v16 = sub_22372AC88();
    v17 = sub_22372B278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_223620000, v16, v17, "Unexpected conversation from .queryRewrite routing decision to RequestRoute", v18, 2u);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }

    v14(a1, v4);
    goto LABEL_4;
  }

  if (v10 == *MEMORY[0x277D5CB88])
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v9, v4);
    v19 = sub_223729FB8();
    (*(*(v19 - 8) + 32))(a2, v9, v19);
    v20 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
LABEL_14:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  if (v10 == *MEMORY[0x277D5CB80])
  {
    (*(v5 + 8))(a1, v4);
    goto LABEL_4;
  }

  if (v10 == *MEMORY[0x277D5CBA0])
  {
    (*(v5 + 8))(a1, v4);
    v22 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
    goto LABEL_14;
  }

  v23 = *MEMORY[0x277D5CB98];
  v24 = *(v5 + 8);
  v25 = v10;
  v24(a1, v4);
  if (v25 == v23)
  {
    v26 = *MEMORY[0x277D5CC50];
    v27 = sub_223728E18();
    (*(*(v27 - 8) + 104))(a2, v26, v27);
    v20 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
    goto LABEL_13;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  (*(*(v28 - 8) + 56))(a2, 1, 1, v28);
  return (v24)(v9, v4);
}

uint64_t sub_2236EFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_22372A2D8();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_223729FB8();
  v79 = *(v73 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v73, v8);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223728E18();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v78 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v70 = &v70 - v16;
  v17 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v70 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v70 - v35;
  v37 = type metadata accessor for RequestInfo.RequestRoute(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8, v39);
  v41 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236F16E0(a1, v41, type metadata accessor for RequestInfo.RequestRoute);
  if ((*(v28 + 48))(v41, 1, v27) == 1)
  {
    sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
    v42 = *MEMORY[0x277D5D010];
    v43 = sub_22372A098();
    return (*(*(v43 - 8) + 104))(v80, v42, v43);
  }

  v45 = v80;
  sub_2236F1670(v41, v36);
  sub_223634890(v36, v33, &qword_27D08F680, &unk_223731E20);
  v46 = v36;
  if ((*(v18 + 48))(v33, 1, v17) == 1)
  {
    sub_223626478(v33, &qword_27D08F680, &unk_223731E20);
    sub_22372A088();
    sub_2236F17B0();
    sub_223727A38();
    sub_223727A18();

    sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
    v47 = v36;
LABEL_20:
    sub_223626478(v47, &qword_27D08F680, &unk_223731E20);
    v59 = MEMORY[0x277D5D000];
    goto LABEL_21;
  }

  v48 = v26;
  sub_2236F1748(v33, v26, type metadata accessor for IntelligenceFlowPrescribedTool);
  sub_2236F16E0(v26, v23, type metadata accessor for IntelligenceFlowPrescribedTool);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v79;
    v50 = v77;
    v51 = v73;
    (*(v79 + 32))(v77, v23, v73);
    v52 = v74;
    sub_223729F18();
    v53 = (*(v75 + 88))(v52, v76);
    if (v53 == *MEMORY[0x277D5D100])
    {
      sub_22372A088();
      sub_2236F17B0();
      sub_223727A28();
      sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
      (*(v49 + 8))(v50, v51);
    }

    else if (v53 == *MEMORY[0x277D5D110])
    {
      sub_22372A088();
      sub_2236F17B0();
      sub_223727A28();
      sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
      (*(v79 + 8))(v50, v51);
    }

    else
    {
      v60 = (v79 + 8);
      if (v53 == *MEMORY[0x277D5D0F8])
      {
        sub_22372A088();
        sub_2236F17B0();
        sub_223727A28();
        sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
        (*v60)(v50, v51);
      }

      else
      {
        v64 = *MEMORY[0x277D5D108];
        v65 = v53;
        sub_22372A088();
        sub_2236F17B0();
        if (v65 != v64)
        {
          sub_223727A28();
          sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
          (*v60)(v77, v51);
          sub_223644698(v26, type metadata accessor for IntelligenceFlowPrescribedTool);
          sub_223626478(v46, &qword_27D08F680, &unk_223731E20);
          v68 = *MEMORY[0x277D5D000];
          v69 = sub_22372A098();
          (*(*(v69 - 8) + 104))(v45, v68, v69);
          return (*(v75 + 8))(v74, v76);
        }

        sub_223727A28();
        sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
        (*v60)(v77, v51);
      }
    }

    goto LABEL_19;
  }

  v54 = v70;
  v55 = v71;
  v56 = v72;
  (*(v71 + 32))(v70, v23, v72);
  v57 = v78;
  (*(v55 + 16))(v78, v54, v56);
  v58 = (*(v55 + 88))(v57, v56);
  if (v58 != *MEMORY[0x277D5CC50])
  {
    if (v58 != *MEMORY[0x277D5CC48])
    {
      sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
      v61 = *(v55 + 8);
      v61(v54, v56);
      sub_223644698(v48, type metadata accessor for IntelligenceFlowPrescribedTool);
      sub_223626478(v46, &qword_27D08F680, &unk_223731E20);
      v62 = *MEMORY[0x277D5D020];
      v63 = sub_22372A098();
      (*(*(v63 - 8) + 104))(v45, v62, v63);
      return (v61)(v78, v56);
    }

    sub_22372A088();
    sub_2236F17B0();
    sub_223727A28();
    sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
    (*(v55 + 8))(v54, v56);
LABEL_19:
    sub_223644698(v48, type metadata accessor for IntelligenceFlowPrescribedTool);
    v47 = v46;
    goto LABEL_20;
  }

  sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
  (*(v55 + 8))(v54, v56);
  sub_223644698(v48, type metadata accessor for IntelligenceFlowPrescribedTool);
  sub_223626478(v46, &qword_27D08F680, &unk_223731E20);
  v59 = MEMORY[0x277D5D020];
LABEL_21:
  v66 = *v59;
  v67 = sub_22372A098();
  return (*(*(v67 - 8) + 104))(v45, v66, v67);
}