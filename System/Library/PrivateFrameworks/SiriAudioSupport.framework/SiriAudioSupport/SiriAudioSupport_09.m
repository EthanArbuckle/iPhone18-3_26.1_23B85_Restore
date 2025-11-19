id sub_266376F50(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  LODWORD(v320) = a5;
  v317 = a4;
  v321 = a3;
  v314 = a2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v315 = &v293 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v293 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v318 = &v293 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v305 = &v293 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v302 = &v293 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v296 = &v293 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v295 = &v293 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v301 = &v293 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v303 = &v293 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v300 = &v293 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v307 = &v293 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v299 = &v293 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v298 = &v293 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v311 = &v293 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v308 = &v293 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v313 = &v293 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v304 = &v293 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v306 = &v293 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v310 = &v293 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v309 = &v293 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v312 = &v293 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v323 = &v293 - v53;
  MEMORY[0x28223BE20](v52);
  v55 = &v293 - v54;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v57 = v7[2];
  v325 = v56;
  v57(v55, v56, v6);

  v58 = sub_2664DFE18();
  v59 = sub_2664E06C8();

  v60 = os_log_type_enabled(v58, v59);
  v319 = v13;
  v324 = v6;
  v322 = v7 + 2;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v316 = v57;
    v62 = v6;
    v63 = v61;
    v64 = swift_slowAlloc();
    v327[0] = v64;
    *v63 = 136446978;

    v65 = sub_2664C8950();
    v67 = v66;

    v68 = sub_2662A320C(v65, v67, v327);

    *(v63 + 4) = v68;
    *(v63 + 12) = 1026;
    *(v63 + 14) = v321 & 1;
    *(v63 + 18) = 1024;
    *(v63 + 20) = v320 & 1;
    *(v63 + 24) = 1026;
    *(v63 + 26) = v317 & 1;
    _os_log_impl(&dword_26629C000, v58, v59, "LocalPlaybackHelper#queryOnlyPlayableItems for %{public}s with onlyPlayableItems: %{BOOL,public}d, hasRoutes: %{BOOL}d, and targetsLocalDevice: %{BOOL,public}d", v63, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x266784AD0](v64, -1, -1);
    v57 = v316;
    MEMORY[0x266784AD0](v63, -1, -1);

    v69 = v7[1];
    v69(v55, v62);
  }

  else
  {

    v69 = v7[1];
    v69(v55, v6);
  }

  v70 = v7;
  v71 = *(a1 + 49);
  v72 = sub_26637C354(a1);
  v73 = v323;
  if (v74)
  {
    v75 = v315;
    v76 = v324;
    v57(v315, v325, v324);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06D8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v75;
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_26629C000, v77, v78, "LocalPlaybackHelper#queryOnlyPlayableItems Failed to get grouping for scheme", v80, 2u);
      MEMORY[0x266784AD0](v80, -1, -1);

      v81 = v79;
    }

    else
    {

      v81 = v75;
    }

    v69(v81, v76);
    return 0;
  }

  v82 = v72;
  LODWORD(v316) = v71;
  v83 = v324;
  v57(v323, v325, v324);

  v84 = sub_2664DFE18();
  v85 = sub_2664E06E8();

  v86 = os_log_type_enabled(v84, v85);
  v315 = v70;
  v294 = a1;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v297 = v69;
    v89 = v88;
    v326 = v82;
    v327[0] = v88;
    *v87 = 136446466;
    v90 = sub_2664E0D48();
    v92 = v57;
    v93 = v82;
    v94 = sub_2662A320C(v90, v91, v327);

    *(v87 + 4) = v94;
    *(v87 + 12) = 2082;
    LOBYTE(v326) = *(a1 + 48);
    v95 = PlaybackItem.Scheme.rawValue.getter();
    v97 = sub_2662A320C(v95, v96, v327);

    *(v87 + 14) = v97;
    v82 = v93;
    v57 = v92;
    _os_log_impl(&dword_26629C000, v84, v85, "LocalPlaybackHelper#queryOnlyPlayableItems Got grouping: %{public}s for scheme: %{public}s", v87, 0x16u);
    swift_arrayDestroy();
    v98 = v89;
    v69 = v297;
    MEMORY[0x266784AD0](v98, -1, -1);
    MEMORY[0x266784AD0](v87, -1, -1);

    v99 = v323;
  }

  else
  {

    v99 = v73;
  }

  v69(v99, v83);
  v101 = v318;
  v102 = v316;
  if (v316 != 4)
  {
    if (v316 != 1)
    {
      if (v316)
      {
        v158 = v324;
        v57(v318, v325, v324);
        v159 = sub_2664DFE18();
        v160 = sub_2664E06D8();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v327[0] = v162;
          v163 = 0xEC00000079726172;
          *v161 = 136446210;
          v164 = 0x62696C656C6F6877;
          if (v102 != 6)
          {
            v164 = 0x6E776F6E6B6E75;
            v163 = 0xE700000000000000;
          }

          v165 = 0xE400000000000000;
          v166 = 1684630645;
          if (v102 != 4)
          {
            v166 = 0x6867696C746F7073;
            v165 = 0xE900000000000074;
          }

          if (v102 <= 5)
          {
            v164 = v166;
            v163 = v165;
          }

          v167 = 0xEA00000000006573;
          v168 = 0x72657669746C756DLL;
          if (v102 != 2)
          {
            v168 = 0x65726F7473;
            v167 = 0xE500000000000000;
          }

          if (v102 <= 3)
          {
            v169 = v168;
          }

          else
          {
            v169 = v164;
          }

          if (v102 <= 3)
          {
            v170 = v167;
          }

          else
          {
            v170 = v163;
          }

          v171 = sub_2662A320C(v169, v170, v327);

          *(v161 + 4) = v171;
          _os_log_impl(&dword_26629C000, v159, v160, "LocalPlaybackHelper#queryOnlyPlayableItems Unsupported contentOrigin for local playback %{public}s", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v162);
          MEMORY[0x266784AD0](v162, -1, -1);
          MEMORY[0x266784AD0](v161, -1, -1);

          v103 = v324;
          v69(v318, v324);
          v100 = 0;
          v157 = v319;
        }

        else
        {

          v69(v101, v158);
          v100 = 0;
          v157 = v319;
          v103 = v158;
        }

        goto LABEL_84;
      }

      v323 = v82;
      v103 = v324;
      v57(v312, v325, v324);
      v104 = sub_2664DFE18();
      v105 = sub_2664E06E8();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 67109120;
        *(v106 + 4) = v317 & 1;
        _os_log_impl(&dword_26629C000, v104, v105, "LocalPlaybackHelper#queryOnlyPlayableItems .device local search, targetsLocalDevice: %{BOOL}d", v106, 8u);
        MEMORY[0x266784AD0](v106, -1, -1);
      }

      v69(v312, v103);
      v107 = static SiriEnvironmentWrapper.retrieve()();
      v108 = v294;
      if (v107)
      {
        sub_2664DF4E8();
        v109 = sub_2664DF5A8();
      }

      else
      {
        sub_2664DEC08();
        __swift_project_boxed_opaque_existential_1(v327, v328);
        v109 = sub_2664DE988();
        __swift_destroy_boxed_opaque_existential_1Tm(v327);
      }

      v172 = v323;
      if ((v109 & 1) == 0 && v320 & 1 | (v323 == 6))
      {
        v57(v309, v325, v103);
        v173 = sub_2664DFE18();
        v174 = sub_2664E06E8();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          *v175 = 0;
          _os_log_impl(&dword_26629C000, v173, v174, "LocalPlaybackHelper#queryOnlyPlayableItems .device generating transportableID", v175, 2u);
          v176 = v175;
          v172 = v323;
          MEMORY[0x266784AD0](v176, -1, -1);
        }

        v69(v309, v103);
        v177 = v321;
        v178 = v314;
        sub_26637C81C(*(v108 + 56), *(v108 + 64), v172, v314, v321 & 1);
        v179 = v172;
        v181 = v180;
        v100 = sub_266374FE8(v108, v180, v179, v178, v177 & 1);

        v157 = v319;
        goto LABEL_84;
      }

      v316 = v57;
      v57(v310, v325, v103);
      v182 = sub_2664DFE18();
      v183 = sub_2664E06E8();
      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        *v184 = 0;
        _os_log_impl(&dword_26629C000, v182, v183, "LocalPlaybackHelper#queryOnlyPlayableItems .device not generating transportableID", v184, 2u);
        v185 = v184;
        v172 = v323;
        MEMORY[0x266784AD0](v185, -1, -1);
      }

      v69(v310, v103);
      v186 = [objc_opt_self() persistentIDPropertyForGroupingType_];
      v187 = sub_2664E02C8();
      v189 = v188;

      v190 = *(v108 + 56);
      v191 = *(v108 + 64);

      v192 = sub_26648B718(v190, v191);
      if (v193)
      {

        v194 = v304;
        v316(v304, v325, v103);

        v195 = sub_2664DFE18();
        v196 = sub_2664E06D8();

        if (os_log_type_enabled(v195, v196))
        {
          v197 = v194;
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          v327[0] = v199;
          *v198 = 136446210;
          *(v198 + 4) = sub_2662A320C(v190, v191, v327);
          _os_log_impl(&dword_26629C000, v195, v196, "LocalPlaybackHelper#queryOnlyPlayableItems Unable to convert device ID %{public}s to Int64", v198, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v199);
          MEMORY[0x266784AD0](v199, -1, -1);
          MEMORY[0x266784AD0](v198, -1, -1);

          v200 = v197;
        }

        else
        {

          v200 = v194;
        }

        v69(v200, v103);
        return 0;
      }

      v320 = v192;
      v203 = v306;
      v316(v306, v325, v103);

      v204 = sub_2664DFE18();
      v205 = sub_2664E06E8();

      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        v318 = v187;
        v208 = v207;
        *v206 = 136446722;
        v326 = v323;
        v327[0] = v207;
        v209 = sub_2664E0D48();
        v211 = sub_2662A320C(v209, v210, v327);

        *(v206 + 4) = v211;
        *(v206 + 12) = 2082;

        v212 = sub_2662A320C(v318, v189, v327);

        *(v206 + 14) = v212;
        *(v206 + 22) = 2082;
        v213 = v320;
        v326 = v320;
        v214 = sub_2664E0D48();
        v216 = sub_2662A320C(v214, v215, v327);

        *(v206 + 24) = v216;
        v103 = v324;
        _os_log_impl(&dword_26629C000, v204, v205, "LocalPlaybackHelper#queryOnlyPlayableItems for .device using grouping: %{public}s, persistentIDProperty: %{public}s, and persistentID: %{public}s", v206, 0x20u);
        swift_arrayDestroy();
        v217 = v208;
        v187 = v318;
        MEMORY[0x266784AD0](v217, -1, -1);
        MEMORY[0x266784AD0](v206, -1, -1);

        v69(v306, v103);
        v218 = v323;
        v219 = v294;
      }

      else
      {

        v69(v203, v103);
        v219 = v294;
        v218 = v323;
        v213 = v320;
      }

      v100 = sub_266375FE0(v219, v314, v321 & 1, v218, v187, v189, v213, 0, 0);

      v157 = v319;
LABEL_83:
      v57 = v316;
LABEL_84:
      v57(v157, v325, v103);
      goto LABEL_85;
    }

    v323 = v82;
    v297 = v69;
    v110 = v308;
    v103 = v324;
    v316 = v57;
    v57(v308, v325, v324);
    v111 = sub_2664DFE18();
    v112 = sub_2664E06E8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_26629C000, v111, v112, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync local search", v113, 2u);
      MEMORY[0x266784AD0](v113, -1, -1);
    }

    v297(v110, v103);
    v114 = *(v294 + 56);
    v115 = *(v294 + 64);
    LOWORD(v327[0]) = *(v294 + 48);
    v327[1] = v114;
    v327[2] = v115;
    v116 = PlaybackItem.Identifier.identifierForSiriSyncID.getter();
    v119 = v118;
    v120 = HIBYTE(v118) & 0xF;
    if ((v118 & 0x2000000000000000) == 0)
    {
      v120 = v116 & 0xFFFFFFFFFFFFLL;
    }

    v121 = v311;
    if (v120)
    {
      v122 = v116;
      v123 = v117;
      v316(v311, v325, v103);

      v124 = sub_2664DFE18();
      v125 = sub_2664E06E8();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v127 = v103;
        v128 = swift_slowAlloc();
        v327[0] = v128;
        *v126 = 136315138;
        *(v126 + 4) = sub_2662A320C(v122, v119, v327);
        _os_log_impl(&dword_26629C000, v124, v125, "LocalPlaybackHelper#queryOnlyPlayableItems trying to play siriSyncID: %s", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v128);
        v129 = v128;
        v103 = v127;
        MEMORY[0x266784AD0](v129, -1, -1);
        MEMORY[0x266784AD0](v126, -1, -1);
      }

      v297(v121, v103);
      v130 = [objc_opt_self() persistentIDPropertyForGroupingType_];
      v131 = sub_2664E02C8();
      v133 = v132;

      if (v123)
      {
        v134 = sub_26648B718(v122, v119);
        if (v135)
        {

          v136 = v298;
          v316(v298, v325, v103);
          v137 = sub_2664DFE18();
          v138 = sub_2664E06D8();
          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            *v139 = 0;
            v140 = "LocalPlaybackHelper#queryOnlyPlayableItems unable to convert siriSyncID to Int64";
LABEL_70:
            _os_log_impl(&dword_26629C000, v137, v138, v140, v139, 2u);
            MEMORY[0x266784AD0](v139, -1, -1);
            goto LABEL_71;
          }

          goto LABEL_71;
        }

        v220 = v134;
        LODWORD(v221) = 0;
      }

      else
      {
        v201 = sub_26648BA18(v122, v119);
        if (v202)
        {

          v136 = v299;
          v316(v299, v325, v103);
          v137 = sub_2664DFE18();
          v138 = sub_2664E06D8();
          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            *v139 = 0;
            v140 = "LocalPlaybackHelper#queryOnlyPlayableItems unable to convert siriSyncID to UInt64";
            goto LABEL_70;
          }

          goto LABEL_71;
        }

        v220 = v201;
        LODWORD(v221) = 1;
      }

      v318 = v131;
      v222 = v307;
      v316(v307, v325, v103);

      v223 = sub_2664DFE18();
      v224 = sub_2664E06E8();

      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        v226 = v221;
        v221 = swift_slowAlloc();
        *v225 = 136446722;
        v326 = v323;
        v327[0] = v221;
        v227 = sub_2664E0D48();
        v229 = sub_2662A320C(v227, v228, v327);

        *(v225 + 4) = v229;
        *(v225 + 12) = 2082;

        v230 = sub_2662A320C(v318, v133, v327);

        *(v225 + 14) = v230;
        *(v225 + 22) = 2082;
        v317 = v226;
        v231 = v220;
        v326 = v220;
        v244 = sub_2664E0D48();
        v246 = sub_2662A320C(v244, v245, v327);

        *(v225 + 24) = v246;
        _os_log_impl(&dword_26629C000, v223, v224, "LocalPlaybackHelper#queryOnlyPlayableItems for .sirisync using grouping: %{public}s, persistentIDProperty: %{public}s, and persistentID: %{public}s", v225, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v221, -1, -1);
        MEMORY[0x266784AD0](v225, -1, -1);

        v103 = v324;
        v297(v307, v324);
        v157 = v319;
        LOBYTE(v221) = v317;
      }

      else
      {

        v297(v222, v103);
        v157 = v319;
        v231 = v220;
      }

      sub_2664DEC08();
      __swift_project_boxed_opaque_existential_1(v327, v328);
      v247 = sub_2664DE978();
      __swift_destroy_boxed_opaque_existential_1Tm(v327);
      if ((v247 & 1) != 0 && (v320 & 1) == 0)
      {
        v248 = v300;
        v249 = v316;
        v316(v300, v325, v103);
        v250 = sub_2664DFE18();
        v251 = sub_2664E06E8();
        if (os_log_type_enabled(v250, v251))
        {
          v252 = swift_slowAlloc();
          *v252 = 0;
          _os_log_impl(&dword_26629C000, v250, v251, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync Phone has no routes, not making transportable ID", v252, 2u);
          v253 = v252;
          v249 = v316;
          MEMORY[0x266784AD0](v253, -1, -1);
        }

        v254 = v248;
        v255 = v297;
        v297(v254, v103);
        v100 = sub_266375FE0(v294, v314, v321 & 1, v323, v318, v133, v231, 0, v221);

        sub_26637F574(v231, 0, v221);
        v256 = v303;
        v249(v303, v325, v103);
        v257 = sub_2664DFE18();
        v258 = sub_2664E06E8();
        if (os_log_type_enabled(v257, v258))
        {
          v259 = v103;
          v260 = swift_slowAlloc();
          v261 = swift_slowAlloc();
          v327[0] = v261;
          *v260 = 136446210;
          if (v100)
          {
            v262 = [v100 description];
            v263 = sub_2664E02C8();
            v265 = v264;
          }

          else
          {
            v263 = 7104878;
            v265 = 0xE300000000000000;
          }

          v292 = sub_2662A320C(v263, v265, v327);

          *(v260 + 4) = v292;
          _os_log_impl(&dword_26629C000, v257, v258, "LocalPlaybackHelper#queryOnlyPlayableItems returning query:%{public}s ", v260, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v261);
          MEMORY[0x266784AD0](v261, -1, -1);
          MEMORY[0x266784AD0](v260, -1, -1);

          v297(v303, v259);
        }

        else
        {

          v255(v256, v103);
        }

        return v100;
      }

      if (static SiriEnvironmentWrapper.retrieve()())
      {
        sub_2664DF4E8();
        v266 = sub_2664DF5A8();
      }

      else
      {
        sub_2664DEC08();
        __swift_project_boxed_opaque_existential_1(v327, v328);
        v266 = sub_2664DE988();
        __swift_destroy_boxed_opaque_existential_1Tm(v327);
      }

      v57 = v316;
      if ((v266 & 1) != 0 || !(v320 & 1 | (v323 == 6)))
      {
        v316(v302, v325, v103);
        v270 = sub_2664DFE18();
        v271 = sub_2664E06E8();
        if (os_log_type_enabled(v270, v271))
        {
          v272 = swift_slowAlloc();
          *v272 = 0;
          _os_log_impl(&dword_26629C000, v270, v271, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync not generating transportableID", v272, 2u);
          v273 = v272;
          v57 = v316;
          MEMORY[0x266784AD0](v273, -1, -1);
        }

        v274 = v297;
        v297(v302, v103);
        v69 = v274;
        v100 = sub_266375FE0(v294, v314, v321 & 1, v323, v318, v133, v231, 0, v221);

        sub_26637F574(v231, 0, v221);
        goto LABEL_84;
      }

      v316(v301, v325, v103);
      v267 = sub_2664DFE18();
      v268 = sub_2664E06E8();
      if (os_log_type_enabled(v267, v268))
      {
        v269 = swift_slowAlloc();
        *v269 = 0;
        _os_log_impl(&dword_26629C000, v267, v268, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync generating transportableID", v269, 2u);
        MEMORY[0x266784AD0](v269, -1, -1);
      }

      v297(v301, v103);
      v327[0] = v231;
      v275 = sub_2664E0D48();
      v276 = v323;
      sub_26637C81C(v275, v277, v323, v314, v321 & 1);
      v279 = v278;

      if (v276 == 6)
      {

        sub_26637F574(v231, 0, v221);
        v280 = v295;
        v316(v295, v325, v103);
        v281 = sub_2664DFE18();
        v282 = sub_2664E06E8();
        if (os_log_type_enabled(v281, v282))
        {
          v283 = swift_slowAlloc();
          *v283 = 0;
          _os_log_impl(&dword_26629C000, v281, v282, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync generating collection query", v283, 2u);
          v284 = v283;
          v157 = v319;
          MEMORY[0x266784AD0](v284, -1, -1);
        }

        v285 = v297;
        v297(v280, v103);
        v69 = v285;
        v100 = sub_266374FE8(v294, v279, 6, v314, v321 & 1);
      }

      else
      {
        v316(v296, v325, v103);
        v286 = sub_2664DFE18();
        v287 = sub_2664E06E8();
        if (os_log_type_enabled(v286, v287))
        {
          v288 = v103;
          v289 = swift_slowAlloc();
          *v289 = 0;
          _os_log_impl(&dword_26629C000, v286, v287, "LocalPlaybackHelper#queryOnlyPlayableItems .sirisync not generating collection query", v289, 2u);
          v290 = v289;
          v103 = v288;
          v157 = v319;
          MEMORY[0x266784AD0](v290, -1, -1);
        }

        v291 = v297;
        v297(v296, v103);
        v69 = v291;
        v100 = sub_266375FE0(v294, v314, v321 & 1, v323, v318, v133, v231, 0, v221);

        sub_26637F574(v231, 0, v221);
      }

      goto LABEL_83;
    }

    v136 = v305;
    v316(v305, v325, v103);
    v137 = sub_2664DFE18();
    v138 = sub_2664E06D8();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      v140 = "LocalPlaybackHelper#queryOnlyPlayableItems unable to extract identifierForSiriSyncID";
      goto LABEL_70;
    }

LABEL_71:

    v297(v136, v103);
    return 0;
  }

  v103 = v324;
  v141 = v57;
  v57(v313, v325, v324);
  v142 = sub_2664DFE18();
  v143 = sub_2664E06E8();
  v144 = os_log_type_enabled(v142, v143);
  v145 = v294;
  if (v144)
  {
    v146 = v82;
    v147 = swift_slowAlloc();
    *v147 = 0;
    _os_log_impl(&dword_26629C000, v142, v143, "LocalPlaybackHelper#queryOnlyPlayableItems .ulid local search", v147, 2u);
    v148 = v147;
    v82 = v146;
    MEMORY[0x266784AD0](v148, -1, -1);
  }

  v69(v313, v103);
  result = [objc_opt_self() ULIDPropertyForGroupingType_];
  if (result)
  {
    v150 = result;
    v151 = v82;
    v152 = sub_2664E02C8();
    v154 = v153;

    LODWORD(v150) = v321 & 1;
    v155 = v314;
    v156 = sub_26637E54C(v314, v152, v154, *(v145 + 56), *(v145 + 64), 2, v151, v151, v321 & 1);

    v100 = sub_266374FE8(v145, v156, v151, v155, v150);

    v157 = v319;
    v141(v319, v325, v103);
LABEL_85:
    v232 = sub_2664DFE18();
    v233 = sub_2664E06E8();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = v103;
      v235 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      v327[0] = v236;
      *v235 = 136446210;
      if (v100)
      {
        v237 = [v100 description];
        v238 = sub_2664E02C8();
        v240 = v239;
      }

      else
      {
        v238 = 7104878;
        v240 = 0xE300000000000000;
      }

      v243 = sub_2662A320C(v238, v240, v327);

      *(v235 + 4) = v243;
      _os_log_impl(&dword_26629C000, v232, v233, "LocalPlaybackHelper#queryOnlyPlayableItems returning query:%{public}s ", v235, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v236);
      MEMORY[0x266784AD0](v236, -1, -1);
      MEMORY[0x266784AD0](v235, -1, -1);

      v241 = v319;
      v242 = v234;
    }

    else
    {

      v241 = v157;
      v242 = v103;
    }

    v69(v241, v242);
    return v100;
  }

  __break(1u);
  return result;
}

id sub_266379168(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    v14 = v4[2];
    v48 = v4 + 2;
    v49 = v13;
    v47 = v14;
    v14(v12, v13, v3);

    v15 = sub_2664DFE18();
    v16 = sub_2664E06E8();

    v17 = os_log_type_enabled(v15, v16);
    v53 = v4;
    v51 = v10;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57 = v19;
      *v18 = 136446210;

      v20 = sub_2664C8950();
      v22 = v21;

      v23 = sub_2662A320C(v20, v22, &v57);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_26629C000, v15, v16, "LocalPlaybackHelper#createLocalCollection for %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266784AD0](v19, -1, -1);
      MEMORY[0x266784AD0](v18, -1, -1);

      v50 = v53[1];
    }

    else
    {

      v50 = v4[1];
    }

    v50(v12, v3);
    v10 = *(a2 + 72);
    v57 = MEMORY[0x277D84F90];
    if (!(v10 >> 62))
    {
      v24 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v52 = v3;
      if (!v24)
      {
        break;
      }

      goto LABEL_7;
    }

    v24 = sub_2664E0A68();
    v52 = v3;
    if (!v24)
    {
      break;
    }

LABEL_7:
    v25 = 0;
    a2 = 0;
    v4 = (v10 & 0xC000000000000001);
    v3 = v10 & 0xFFFFFFFFFFFFFF8;
    v12 = MEMORY[0x277D84F90];
    while (v4)
    {
      v26 = MEMORY[0x266783B70](v25, v10);
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_18;
      }

LABEL_13:
      v56 = v26;
      sub_2663797A0(&v56, v54, &v55);

      if (v55)
      {
        MEMORY[0x266783490](v28);
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v29 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2664E04C8();
        }

        sub_2664E0518();
        v12 = v57;
      }

      ++v25;
      if (v27 == v24)
      {
        goto LABEL_23;
      }
    }

    if (v25 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v26 = *(v10 + 8 * v25 + 32);

    v27 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v12 = MEMORY[0x277D84F90];
LABEL_23:
  if (v12 >> 62)
  {
    v39 = sub_2664E0A68();
    v31 = v51;
    v30 = v52;
    if (!v39)
    {
      goto LABEL_33;
    }

LABEL_25:
    v47(v31, v49, v30);

    v32 = sub_2664DFE18();
    v33 = sub_2664E06E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      if (v12 >> 62)
      {
        v35 = sub_2664E0A68();
      }

      else
      {
        v35 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v34 + 4) = v35;

      _os_log_impl(&dword_26629C000, v32, v33, "LocalPlaybackHelper#createLocalCollection items not empty, returning MPMediaQuery with %{public}ld items", v34, 0xCu);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    else
    {
    }

    v50(v31, v30);
    sub_26645FB50(v12);

    v36 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v37 = sub_2664E0488();

    v38 = [v36 initWithEntities:v37 entityType:0];
  }

  else
  {
    v31 = v51;
    v30 = v52;
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_33:

    v40 = v46;
    v47(v46, v49, v30);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "LocalPlaybackHelper#createLocalCollection items empty, returning nil", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v50(v40, v30);
    return 0;
  }

  return v38;
}

uint64_t sub_2663797A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, NSObject **a3@<X8>)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  sub_26637D108(*a1, a2);
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v31 = a3;
  if ([v17 valueForProperty:*MEMORY[0x277CD5828]])
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {

    sub_26637F490(&v34);
LABEL_14:
    a3 = v31;
LABEL_15:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v23, v6);
    v20 = sub_2664DFE18();
    v24 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v20, v24, "LocalPlaybackHelper#createLocalCollection MPMediaItem is nil", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    v16 = v11;
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (v36)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v14, v19, v6);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "LocalPlaybackHelper#createLocalCollection MPMediaItem is restricted", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    else
    {

      v20 = v18;
    }

    v16 = v14;
    a3 = v31;
LABEL_20:

    result = (*(v7 + 8))(v16, v6);
    v18 = 0;
    goto LABEL_21;
  }

  if ([v18 valueForProperty:*MEMORY[0x277CD57A0]])
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  a3 = v31;
  if (!*(&v33 + 1))
  {
    sub_26637F490(&v34);
LABEL_32:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v16, v27, v6);
    v20 = sub_2664DFE18();
    v28 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v20, v28, "LocalPlaybackHelper#createLocalCollection MPMediaItem isn't playable", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    else
    {

      v20 = v18;
    }

    goto LABEL_20;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v36 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  *a3 = v18;
  return result;
}

void sub_266379CF4(uint64_t a1, void *a2, void *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v63 = a4;
  v62 = a1;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v23 = [a2 items];
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = v23;
  v61 = a3;
  v25 = v10;
  sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
  v10 = sub_2664E04A8();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if (!sub_2664E0A68())
  {
LABEL_23:

    v10 = v25;
LABEL_24:
    v64 = 0u;
    v65 = 0u;
LABEL_25:
    sub_26637F490(&v64);
    goto LABEL_26;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x266783B70](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v26 = *(v10 + 32);
  }

  v27 = v26;

  v28 = [v27 valueForProperty_];

  if (v28)
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v67 = 0u;
  }

  v10 = v25;
  v64 = aBlock;
  v65 = v67;
  if (!*(&v67 + 1))
  {
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v62 = a5;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v49 = *(v10 + 16);
    v49(v17, v48, v9);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v10;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "LocalPlaybackHelper#handleQueue Unable to unwrap first item of mediaQuery to Bool", v53, 2u);
      v54 = v53;
      v10 = v52;
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v55 = *(v10 + 8);
    v55(v17, v9);
    v49(v14, v48, v9);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06B8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v64 = v59;
      *v58 = 134218498;
      *(v58 + 4) = 2;
      *(v58 + 12) = 2048;
      *(v58 + 14) = 32;
      *(v58 + 22) = 2080;
      *(v58 + 24) = sub_2662A320C(0xD000000000000017, 0x80000002664F5B00, &v64);
      _os_log_impl(&dword_26629C000, v56, v57, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v58, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    v55(v14, v9);
    v64 = xmmword_2664E8D70;
    *&v65 = 0x80000002664F5B00;
    BYTE8(v65) = 1;
    v63(&v64);
    sub_2662D2F30(v64, *(&v64 + 1), v65, SBYTE8(v65));
    return;
  }

  v14 = v5;
  if (aBlock)
  {
    if (qword_280F914E8 == -1)
    {
LABEL_14:
      v29 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      (*(v10 + 16))(v20, v29, v9);
      v30 = sub_2664DFE18();
      v31 = sub_2664E06E8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26629C000, v30, v31, "LocalPlaybackHelper#handleQueue Item explicit, checking if we can play", v32, 2u);
        v33 = v32;
        v10 = v25;
        MEMORY[0x266784AD0](v33, -1, -1);
      }

      (*(v10 + 8))(v20, v9);
      v34 = [objc_opt_self() defaultManager];
      v35 = swift_allocObject();
      v36 = v62;
      v37 = *(v62 + 48);
      *(v35 + 72) = *(v62 + 32);
      *(v35 + 88) = v37;
      *(v35 + 104) = *(v36 + 64);
      v38 = *(v36 + 16);
      *(v35 + 40) = *v36;
      *(v35 + 16) = v63;
      *(v35 + 24) = a5;
      *(v35 + 32) = v14;
      v39 = *(v36 + 80);
      *(v35 + 56) = v38;
      v40 = v61;
      *(v35 + 120) = v39;
      *(v35 + 128) = v40;
      v68 = sub_26637F4F8;
      v69 = v35;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v67 = sub_26637AA0C;
      *(&v67 + 1) = &block_descriptor_29;
      v41 = _Block_copy(&aBlock);

      sub_26637C270(v36, &v64);
      v42 = v40;

      [v34 getAgeVerificationStateWithCompletion_];
      _Block_release(v41);

      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_14;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v25 + 16))(v22, v43, v9);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06E8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_26629C000, v44, v45, "LocalPlaybackHelper#handleQueue Item not explicit, continuing on to processQueue", v46, 2u);
    v47 = v46;
    v10 = v25;
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  (*(v10 + 8))(v22, v9);
  sub_26637AA74(v62, v61, v63, a5);
}

void sub_26637A55C(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36 = a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  if ([a1 isExplicitContentAllowed])
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v15, v21, v10);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06E8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "LocalPlaybackHelper#handleQueue Explicit content allowed, continuing to processQueue", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    sub_26637AA74(a5, a6, v36, a3);
  }

  else
  {
    v35 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v26 = *(v11 + 16);
    v26(v20, v25, v10);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v27, v28, "LocalPlaybackHelper#handleQueue Explicit content not allowed", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    v30 = *(v11 + 8);
    v30(v20, v10);
    v26(v18, v25, v10);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06B8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v37 = v34;
      *v33 = 134218498;
      *(v33 + 4) = 2;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 17;
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664F5B50, &v37);
      _os_log_impl(&dword_26629C000, v31, v32, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v33, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v30(v18, v10);
    v37 = xmmword_2664E8D80;
    v38 = 0x80000002664F5B50;
    v39 = 1;
    v36(&v37);
    sub_2662D2F30(v37, *(&v37 + 1), v38, v39);
  }
}

void sub_26637AA0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_26637AA74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(a1 + 80) && !*(*(a1 + 64) + 16))
  {
    v39 = *a1;
    v41 = *(a1 + 8);
    v43 = *(a1 + 16);
    v23 = *(a1 + 17);
    v24 = *(a1 + 18);
    v25 = *(a1 + 19);
    v26 = *(a1 + 20);
    v28 = swift_allocObject();
    v29 = *(a1 + 48);
    *(v28 + 56) = *(a1 + 32);
    *(v28 + 72) = v29;
    *(v28 + 88) = *(a1 + 64);
    v30 = *(a1 + 16);
    *(v28 + 24) = *a1;
    *(v28 + 16) = v5;
    v31 = *(a1 + 80);
    *(v28 + 40) = v30;
    *(v28 + 104) = v31;
    *(v28 + 112) = a2;
    *(v28 + 120) = a3;
    *(v28 + 128) = a4;
    v49 = sub_26637C320;
    v50 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_2663A0C48;
    v48 = &block_descriptor_12_1;
    v32 = _Block_copy(&aBlock);

    sub_26637C270(a1, v44);
    v33 = a2;

    v34 = 0x1000000;
    if (!v26)
    {
      v34 = 0;
    }

    v35 = 0x10000;
    if (!v25)
    {
      v35 = 0;
    }

    v36 = 256;
    if (!v24)
    {
      v36 = 0;
    }

    [v39 resolveWithQueue:v41 routeIdentifiers:0 localPlaybackPermitted:v43 audioRoutingInfo:v36 | v23 | v35 | v34 completion:v32];
    _Block_release(v32);
  }

  else
  {
    v40 = *a1;
    v42 = *(a1 + 8);
    v10 = sub_2664E0488();
    v38 = *(a1 + 16);
    v37 = *(a1 + 17);
    v11 = *(a1 + 18);
    v12 = *(a1 + 19);
    v13 = *(a1 + 20);
    v14 = swift_allocObject();
    v15 = *(a1 + 48);
    *(v14 + 56) = *(a1 + 32);
    *(v14 + 72) = v15;
    *(v14 + 88) = *(a1 + 64);
    v16 = *(a1 + 16);
    *(v14 + 24) = *a1;
    *(v14 + 16) = v5;
    v17 = *(a1 + 80);
    *(v14 + 40) = v16;
    *(v14 + 104) = v17;
    *(v14 + 112) = a2;
    *(v14 + 120) = a3;
    *(v14 + 128) = a4;
    v49 = sub_26637C258;
    v50 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_2663A0C48;
    v48 = &block_descriptor_17;
    v18 = _Block_copy(&aBlock);

    sub_26637C270(a1, v44);
    v19 = a2;

    v20 = 0x1000000;
    if (!v13)
    {
      v20 = 0;
    }

    v21 = 0x10000;
    if (!v12)
    {
      v21 = 0;
    }

    v22 = 256;
    if (!v11)
    {
      v22 = 0;
    }

    [v40 resolveWithQueue:v42 hashedRouteIdentifiers:v10 localPlaybackPermitted:v38 audioRoutingInfo:v22 | v37 | v21 | v20 completion:{v18, v37}];
    _Block_release(v18);
  }
}

uint64_t sub_26637AD9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v92 = a5;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v83 = &v79[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v82 = &v79[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v79[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v79[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v79[-v22];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v88 = a4;
  v91 = a6;
  v24 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v25 = v12[2];
  v87 = v24;
  v90 = v25;
  v89 = v12 + 2;
  v25(v23, v24, v11);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "LocalPlaybackHelper#processQueue [SE Route Logic] Attempting to play local queue", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v29 = v12[1];
  v85 = v12 + 1;
  v84 = v29;
  v29(v23, v11);
  v30 = sub_2664AD590(a1, *(a3 + 72), *(a3 + 80));
  v31 = __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
  v32 = *(a3 + 8);
  v80 = *(a3 + 28);
  v34 = *(a3 + 32);
  v33 = *(a3 + 40);
  v35 = *(a3 + 48);
  v36 = *(a3 + 56);
  v99[3] = &type metadata for LocalPlaybackHelper.QueueAttributes;
  v99[4] = &off_2877EB8A0;
  v37 = swift_allocObject();
  v99[0] = v37;
  v38 = *(a3 + 48);
  *(v37 + 48) = *(a3 + 32);
  *(v37 + 64) = v38;
  *(v37 + 80) = *(a3 + 64);
  *(v37 + 96) = *(a3 + 80);
  v39 = *(a3 + 16);
  *(v37 + 16) = *a3;
  *(v37 + 32) = v39;
  sub_26637C7BC(v31, &v93);
  sub_2662A5550(v99, v98);
  v40 = swift_allocObject();
  v41 = v96;
  *(v40 + 48) = v95;
  *(v40 + 64) = v41;
  *(v40 + 80) = v97;
  v42 = v94;
  *(v40 + 16) = v93;
  *(v40 + 32) = v42;
  *(v40 + 96) = v34;
  *(v40 + 104) = v33;
  *(v40 + 112) = v35;
  *(v40 + 120) = v36;
  v43 = v91;
  *(v40 + 128) = v92;
  *(v40 + 136) = v43;
  sub_2662A8618(v98, v40 + 144);
  v44 = v88;
  *(v40 + 184) = v32;
  *(v40 + 192) = v44;
  *(v40 + 200) = 1;
  if (!v30)
  {
    v51 = v87;
    v90(v86, v87, v11);
    sub_26637C270(a3, &v93);

    v52 = v32;
    v53 = v44;

    v54 = sub_2664DFE18();
    v55 = sub_2664E06D8();
    v56 = v11;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26629C000, v54, v55, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v57, 2u);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    v58 = v84;
    v84(v86, v11);
    v59 = v83;
    v90(v83, v51, v11);
    v60 = sub_2664DFE18();
    v61 = sub_2664E06B8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v58;
      v64 = swift_slowAlloc();
      *&v93 = v64;
      *v62 = 134218498;
      *(v62 + 4) = 15;
      *(v62 + 12) = 2048;
      *(v62 + 14) = 13;
      *(v62 + 22) = 2080;
      *(v62 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v93);
      _os_log_impl(&dword_26629C000, v60, v61, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v62, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x266784AD0](v64, -1, -1);
      MEMORY[0x266784AD0](v62, -1, -1);

      v63(v59, v56);
    }

    else
    {

      v58(v59, v11);
    }

    v93 = xmmword_2664E8DA0;
    *&v94 = 0xE900000000000074;
    BYTE8(v94) = 1;
    v92(&v93);
    goto LABEL_20;
  }

  sub_26637C270(a3, &v93);

  v45 = v32;
  v46 = v44;

  [v30 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2662C1744(0, &qword_280072C48, 0x277D27850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v88 = v30;
    v65 = v81;
    v66 = v87;
    v90(v81, v87, v11);
    v67 = sub_2664DFE18();
    v68 = sub_2664E06D8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_26629C000, v67, v68, "Guaranteed cast to mutable RemoteControlDestination failed", v69, 2u);
      v70 = v69;
      v66 = v87;
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    v71 = v84;
    v84(v65, v11);
    v72 = v82;
    v90(v82, v66, v11);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06B8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v71;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v93 = v77;
      *v76 = 134218498;
      *(v76 + 4) = 15;
      *(v76 + 12) = 2048;
      *(v76 + 14) = 22;
      *(v76 + 22) = 2080;
      *(v76 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v93);
      _os_log_impl(&dword_26629C000, v73, v74, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v76, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x266784AD0](v77, -1, -1);
      MEMORY[0x266784AD0](v76, -1, -1);

      v75(v72, v11);
    }

    else
    {

      v71(v72, v11);
    }

    v93 = xmmword_2664E8D90;
    *&v94 = 0x80000002664F5AE0;
    BYTE8(v94) = 1;
    v92(&v93);

LABEL_20:

    sub_2662D2F30(v93, *(&v93 + 1), v94, SBYTE8(v94));
    return __swift_destroy_boxed_opaque_existential_1Tm(v99);
  }

  v47 = *&v98[0];
  [*&v98[0] setSingleGroup_];
  v48 = v45;
  v49 = v30;

  v50 = v47;
  sub_2664ADBE8(v49, v46, v49, v48, sub_26637C818, v40, v50, v80);

  return __swift_destroy_boxed_opaque_existential_1Tm(v99);
}

uint64_t sub_26637B7D4(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v91 = a6;
  v85 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v80 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v77[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v77[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v77[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v77[-v21];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v86 = a4;
  v90 = a5;
  v23 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v24 = v11[2];
  v89 = v23;
  v88 = v24;
  v87 = v11 + 2;
  v24(v22, v23, v10);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "LocalPlaybackHelper#processQueue Attempting to play local queue", v27, 2u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = v11[1];
  v83 = v11 + 1;
  v82 = v28;
  v28(v22, v10);
  v29 = __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
  v30 = *(a3 + 8);
  v78 = *(a3 + 28);
  v31 = *(a3 + 32);
  v32 = *(a3 + 40);
  v34 = *(a3 + 48);
  v33 = *(a3 + 56);
  v98[3] = &type metadata for LocalPlaybackHelper.QueueAttributes;
  v98[4] = &off_2877EB8A0;
  v35 = swift_allocObject();
  v98[0] = v35;
  v36 = *(a3 + 48);
  *(v35 + 48) = *(a3 + 32);
  *(v35 + 64) = v36;
  *(v35 + 80) = *(a3 + 64);
  *(v35 + 96) = *(a3 + 80);
  v37 = *(a3 + 16);
  *(v35 + 16) = *a3;
  *(v35 + 32) = v37;
  sub_26637C7BC(v29, &v92);
  sub_2662A5550(v98, v97);
  v38 = swift_allocObject();
  v39 = v95;
  *(v38 + 48) = v94;
  *(v38 + 64) = v39;
  *(v38 + 80) = v96;
  v40 = v93;
  *(v38 + 16) = v92;
  *(v38 + 32) = v40;
  *(v38 + 96) = v31;
  *(v38 + 104) = v32;
  *(v38 + 112) = v34;
  *(v38 + 120) = v33;
  v41 = v90;
  v42 = v91;
  *(v38 + 128) = v90;
  *(v38 + 136) = v42;
  sub_2662A8618(v97, v38 + 144);
  v43 = v86;
  *(v38 + 184) = v30;
  *(v38 + 192) = v43;
  *(v38 + 200) = 1;
  v44 = v85;
  if (!v85)
  {
    v88(v84, v89, v10);
    sub_26637C270(a3, &v92);

    v52 = v30;
    v53 = v43;

    v54 = sub_2664DFE18();
    v55 = sub_2664E06D8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v54, v55, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v56, 2u);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v57 = v82;
    v82(v84, v10);
    v58 = v80;
    v88(v80, v89, v10);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06B8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v57;
      v63 = swift_slowAlloc();
      *&v92 = v63;
      *v61 = 134218498;
      *(v61 + 4) = 15;
      *(v61 + 12) = 2048;
      *(v61 + 14) = 13;
      *(v61 + 22) = 2080;
      *(v61 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v92);
      _os_log_impl(&dword_26629C000, v59, v60, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v61, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x266784AD0](v63, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);

      v62(v58, v10);
    }

    else
    {

      v57(v58, v10);
    }

    v92 = xmmword_2664E8DA0;
    *&v93 = 0xE900000000000074;
    BYTE8(v93) = 1;
    v90(&v92);
    goto LABEL_20;
  }

  sub_26637C270(a3, &v92);

  v45 = v30;
  v46 = v43;
  v47 = v44;

  [v47 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2662C1744(0, &qword_280072C48, 0x277D27850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v64 = v79;
    v88(v79, v89, v10);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06D8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "Guaranteed cast to mutable RemoteControlDestination failed", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v68 = v82;
    v82(v64, v10);
    v69 = v81;
    v88(v81, v89, v10);
    v70 = sub_2664DFE18();
    v71 = sub_2664E06B8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v92 = v73;
      *v72 = 134218498;
      *(v72 + 4) = 15;
      *(v72 + 12) = 2048;
      *(v72 + 14) = 22;
      *(v72 + 22) = 2080;
      *(v72 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v92);
      _os_log_impl(&dword_26629C000, v70, v71, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v72, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      v74 = v73;
      v41 = v90;
      MEMORY[0x266784AD0](v74, -1, -1);
      MEMORY[0x266784AD0](v72, -1, -1);

      v75 = v81;
    }

    else
    {

      v75 = v69;
    }

    v68(v75, v10);
    v92 = xmmword_2664E8D90;
    *&v93 = 0x80000002664F5AE0;
    BYTE8(v93) = 1;
    v41(&v92);

LABEL_20:

    sub_2662D2F30(v92, *(&v92 + 1), v93, SBYTE8(v93));
    return __swift_destroy_boxed_opaque_existential_1Tm(v98);
  }

  v48 = *&v97[0];
  [*&v97[0] setSingleGroup_];
  v49 = v45;
  v50 = v47;

  v51 = v48;
  sub_2664ADBE8(v50, v46, v50, v49, sub_26637F70C, v38, v51, v78);

  return __swift_destroy_boxed_opaque_existential_1Tm(v98);
}

uint64_t sub_26637C1EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_26637C354(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = *(a1 + 48);
  if (v10 > 3)
  {
    switch(v10)
    {
      case 4u:
        v12 = 0;
        v11 = 7;
        goto LABEL_19;
      case 8u:
        v12 = 0;
        v11 = 3;
        goto LABEL_19;
      case 9u:
        v12 = 0;
        v11 = 5;
        goto LABEL_19;
    }
  }

  else
  {
    switch(v10)
    {
      case 1u:
        v12 = 0;
        v11 = 6;
        goto LABEL_19;
      case 2u:
        v12 = 0;
        v11 = 1;
        goto LABEL_19;
      case 3u:
        v11 = 0;
        v12 = 0;
        goto LABEL_19;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v9, v13, v2);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06D8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v7;
    v18 = v17;
    v37[0] = v17;
    *v16 = 136446210;
    LOBYTE(v34) = *(a1 + 48);
    v19 = PlaybackItem.Scheme.rawValue.getter();
    v21 = sub_2662A320C(v19, v20, v37);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_26629C000, v14, v15, "LocalPlaybackHelper#getGroupingForScheme Unknown scheme for grouping: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v22 = v18;
    v7 = v33;
    MEMORY[0x266784AD0](v22, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v11 = 0;
  v12 = 1;
LABEL_19:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v7, v23, v2);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v7;
    v34 = v11;
    v28 = v27;
    v36 = v27;
    *v26 = 136446210;
    v35 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F08, &qword_2664E8E18);
    v29 = sub_2664E0938();
    v31 = sub_2662A320C(v29, v30, &v36);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_26629C000, v24, v25, "LocalPlaybackHelper#getGroupingForScheme returning grouping:%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);

    (*(v3 + 8))(v33, v2);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  return v11;
}

void sub_26637C81C(uint64_t *a1, unint64_t a2, uint64_t a3, void *a4, int a5)
{
  v74 = a5;
  v76 = a4;
  v75 = a1;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  *&v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v73 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v18 = v8[2];
  v80 = v8 + 2;
  v81 = v17;
  v79 = v18;
  v18(v16, v17, v7);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();

  v21 = os_log_type_enabled(v19, v20);
  v78 = a3;
  if (v21)
  {
    v22 = v8;
    v23 = v14;
    v24 = v7;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v83[0] = v26;
    *v25 = 136315138;
    v27 = v75;
    *(v25 + 4) = sub_2662A320C(v75, a2, v83);
    _os_log_impl(&dword_26629C000, v19, v20, "LocalPlaybackHelper#makeTransportableIDQueryFromDeviceID with deviceID: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v28 = v26;
    a3 = v78;
    MEMORY[0x266784AD0](v28, -1, -1);
    v29 = v25;
    v7 = v24;
    v14 = v23;
    v8 = v22;
    MEMORY[0x266784AD0](v29, -1, -1);

    v82 = v22[1];
    v82(v16, v7);
    if (a3 > 3)
    {
LABEL_5:
      if (a3 == 4)
      {
        v30 = MEMORY[0x277CD5718];
        goto LABEL_19;
      }

      if (a3 != 5)
      {
        if (a3 == 7)
        {
          v30 = MEMORY[0x277CD57F8];
          goto LABEL_19;
        }

LABEL_16:
        v30 = MEMORY[0x277CD5940];
        goto LABEL_19;
      }

      v30 = MEMORY[0x277CD5758];
      goto LABEL_19;
    }
  }

  else
  {

    v82 = v8[1];
    v82(v16, v7);
    v27 = v75;
    if (a3 > 3)
    {
      goto LABEL_5;
    }
  }

  if ((a3 - 2) < 2)
  {
    v30 = MEMORY[0x277CD56C0];
    goto LABEL_19;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v30 = MEMORY[0x277CD56C8];
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v30 = MEMORY[0x277CD57D8];
LABEL_19:
  v31 = *v30;
  v83[0] = v27;
  v83[1] = a2;

  v32 = v31;
  v33 = sub_2664E0DB8();
  v34 = [objc_opt_self() predicateWithValue:v33 forProperty:v32];
  swift_unknownObjectRelease();

  v79(v14, v81, v7);
  v35 = v34;
  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v83[0] = v75;
    *v38 = 136315138;
    v39 = v35;
    v40 = v8;
    v41 = v7;
    v42 = [v39 description];
    v43 = v35;
    v44 = sub_2664E02C8();
    v73 = v14;
    v46 = v45;

    v7 = v41;
    v8 = v40;
    v47 = v44;
    v35 = v43;
    v48 = sub_2662A320C(v47, v46, v83);

    *(v38 + 4) = v48;
    _os_log_impl(&dword_26629C000, v36, v37, "LocalPlaybackHelper#makeTransportableIDQueryFromDeviceID with predicate: %s", v38, 0xCu);
    v49 = v75;
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v38, -1, -1);

    v50 = v73;
  }

  else
  {

    v50 = v14;
  }

  v82(v50, v7);
  v51 = v77;
  v52 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C8, &qword_2664E4F30);
  v53 = swift_allocObject();
  v77 = xmmword_2664E36F0;
  *(v53 + 16) = xmmword_2664E36F0;
  *(v53 + 56) = sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
  *(v53 + 32) = v35;
  v54 = sub_2664E0488();

  v55 = [objc_opt_self() predicateMatchingPredicates_];

  if (v55)
  {
    v76 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EE0, &qword_2664E8E08);
    inited = swift_initStackObject();
    *(inited + 16) = v77;
    v83[0] = v55;
    sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
    sub_26637F50C();
    *&v77 = v55;
    sub_2664E0AB8();
    sub_26639EC94(inited);
    swift_setDeallocating();
    sub_266350284(inited + 32);
    v57 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v58 = v52;
    v59 = sub_2664E05F8();

    v60 = [v57 initWithFilterPredicates:v59 library:v58];

    if ((v74 & 1) != 0 && v60)
    {
      [v60 setIgnoreSystemFilterPredicates_];
      [v60 setShouldIncludeNonLibraryEntities_];
    }

    [v60 setGroupingType_];
    v79(v51, v81, v7);
    v61 = v60;
    v62 = sub_2664DFE18();
    v63 = sub_2664E06E8();

    if (os_log_type_enabled(v62, v63))
    {
      v80 = v8;
      v81 = v7;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v83[0] = v65;
      *v64 = 136446210;
      if (v60)
      {
        v66 = [v61 description];
        v67 = sub_2664E02C8();
        v69 = v68;
      }

      else
      {
        v69 = 0xE300000000000000;
        v67 = 7104878;
      }

      v72 = sub_2662A320C(v67, v69, v83);

      *(v64 + 4) = v72;
      _os_log_impl(&dword_26629C000, v62, v63, "LocalPlaybackHelper#makeTransportableIDQueryFromDeviceID returning query: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v64, -1, -1);

      v71 = v81;
      v70 = v51;
    }

    else
    {

      v70 = v51;
      v71 = v7;
    }

    v82(v70, v71);
  }

  else
  {
    __break(1u);
  }
}

void sub_26637D108(uint64_t a1, uint64_t a2)
{
  v132 = a2;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v137 = v3;
  v138 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v134 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v131 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v133 = &v131 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v131 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v131 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v131 - v19;
  v21 = *(a1 + 48);
  LODWORD(v22) = *(a1 + 49);
  v143 = v21;
  if (PlaybackItem.Scheme.rawValue.getter() == 0x656D706D61732D78 && v23 == 0xED00006D65746964)
  {

    goto LABEL_5;
  }

  v24 = sub_2664E0D88();

  if (v24)
  {
LABEL_5:
    v25 = 1684630645;
    if (v22 > 3)
    {
      v26 = v137;
    }

    else
    {
      v26 = v137;
      if (!v22)
      {

        v26 = v137;
        v28 = *(a1 + 56);
        v27 = *(a1 + 64);
LABEL_45:
        v44 = v138;
        goto LABEL_46;
      }
    }

    v43 = sub_2664E0D88();

    if ((v43 & 1) == 0)
    {
      if (v22 == 4)
      {

        v28 = *(a1 + 56);
        v27 = *(a1 + 64);
        v44 = v138;
        goto LABEL_22;
      }

      v45 = sub_2664E0D88();

      if ((v45 & 1) == 0)
      {
        v47 = 0x636E797369726973;
        if (qword_280F914E8 == -1)
        {
LABEL_25:
          v48 = __swift_project_value_buffer(v26, qword_280F914F0);
          swift_beginAccess();
          v49 = v138;
          v136 = *(v138 + 16);
          v136(v10, v48, v26);
          v50 = sub_2664DFE18();
          v51 = sub_2664E06D8();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v141 = v53;
            v54 = 0xE800000000000000;
            *v52 = 136446210;
            v55 = 0x62696C656C6F6877;
            v56 = 0xEC00000079726172;
            if (v22 != 6)
            {
              v55 = 0x6E776F6E6B6E75;
              v56 = 0xE700000000000000;
            }

            v57 = 0xE400000000000000;
            v58 = 0x6867696C746F7073;
            if (v22 == 4)
            {
              v58 = v25;
            }

            else
            {
              v57 = 0xE900000000000074;
            }

            if (v22 <= 5)
            {
              v55 = v58;
              v56 = v57;
            }

            v59 = 0x72657669746C756DLL;
            v60 = 0xEA00000000006573;
            if (v22 != 2)
            {
              v59 = 0x65726F7473;
              v60 = 0xE500000000000000;
            }

            if (v22 == 1)
            {
              v59 = v47;
            }

            else
            {
              v54 = v60;
            }

            if (v22 <= 3)
            {
              v61 = v59;
            }

            else
            {
              v61 = v55;
            }

            if (v22 <= 3)
            {
              v62 = v54;
            }

            else
            {
              v62 = v56;
            }

            v63 = sub_2662A320C(v61, v62, &v141);

            *(v52 + 4) = v63;
            _os_log_impl(&dword_26629C000, v50, v51, "LocalPlaybackHelper# Unknown contentOrigin: %{public}s", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v53);
            MEMORY[0x266784AD0](v53, -1, -1);
            MEMORY[0x266784AD0](v52, -1, -1);

            v49 = v138;
          }

          else
          {
          }

          v115 = *(v49 + 8);
          v115(v10, v26);
          v120 = 0;
          v25 = v134;
          goto LABEL_78;
        }

LABEL_90:
        swift_once();
        goto LABEL_25;
      }
    }

    v28 = *(a1 + 56);
    v27 = *(a1 + 64);
    if (v22 <= 3 || v22 > 5)
    {
      goto LABEL_45;
    }

    v46 = v22 == 4;
    v44 = v138;
    if (!v46)
    {
LABEL_46:
      v64 = sub_2664E0D88();

      if ((v64 & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

LABEL_22:

LABEL_47:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v65 = __swift_project_value_buffer(v26, qword_280F914F0);
    swift_beginAccess();
    v136 = *(v44 + 16);
    v136(v18, v65, v26);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06E8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_26629C000, v66, v67, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity content origin .ulid. Adding predicates MPMediaItemPropertyStoreCloudAlbumID and MPMediaItemPropertyStoreCloudUniversalLibraryID for persistentID", v68, 2u);
      MEMORY[0x266784AD0](v68, -1, -1);
    }

    v135 = *(v44 + 8);
    v135(v18, v26);
    v69 = *MEMORY[0x277CD5858];
    v141 = v28;
    v142 = v27;

    v70 = v69;
    v15 = sub_2664E0DB8();
    v71 = objc_opt_self();
    v26 = &selRef_setUniversalStoreIdentifiersWithBlock_;
    v72 = [v71 predicateWithValue:v15 forProperty:v70];
    swift_unknownObjectRelease();

    v73 = *MEMORY[0x277CD5870];
    v141 = v28;
    v142 = v27;

    v74 = v73;
    v75 = [v71 predicateWithValue:sub_2664E0DB8() forProperty:v74];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C8, &qword_2664E4F30);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_2664E34E0;
    v77 = sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
    *(v76 + 32) = v72;
    *(v76 + 88) = v77;
    *(v76 + 56) = v77;
    *(v76 + 64) = v75;
    v78 = v72;
    v27 = v75;
    v79 = sub_2664E0488();

    v80 = [objc_opt_self() predicateMatchingPredicates_];

    if (v80)
    {
      goto LABEL_58;
    }

    __break(1u);
LABEL_53:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v81 = __swift_project_value_buffer(v26, qword_280F914F0);
    swift_beginAccess();
    v136 = *(v44 + 16);
    v136(v15, v81, v26);
    v82 = sub_2664DFE18();
    v83 = sub_2664E06E8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_26629C000, v82, v83, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity content origin .device. Adding predicates MPMediaItemPropertyPersistentID and MPMediaItemPropertySyncID for persistentID", v84, 2u);
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    v135 = *(v44 + 8);
    v135(v15, v26);
    v85 = *MEMORY[0x277CD57D8];
    v141 = v28;
    v142 = v27;

    v86 = v85;
    v87 = sub_2664E0DB8();
    v88 = objc_opt_self();
    v89 = [v88 predicateWithValue:v87 forProperty:v86];
    swift_unknownObjectRelease();

    v90 = *MEMORY[0x277CD58B0];
    v141 = v28;
    v142 = v27;

    v91 = v90;
    v92 = [v88 predicateWithValue:sub_2664E0DB8() forProperty:v91];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C8, &qword_2664E4F30);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_2664E34E0;
    v94 = sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
    *(v93 + 32) = v89;
    *(v93 + 88) = v94;
    *(v93 + 56) = v94;
    *(v93 + 64) = v92;
    v78 = v89;
    v27 = v92;
    v95 = sub_2664E0488();

    v80 = [objc_opt_self() predicateMatchingPredicates_];

    if (!v80)
    {
      __break(1u);
      return;
    }

LABEL_58:
    v26 = v137;
    v22 = v133;

    v96 = objc_opt_self();
    v10 = v80;
    v97 = [v96 deviceMediaLibraryWithUserIdentity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EE0, &qword_2664E8E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2664E36F0;
    v141 = v10;
    sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
    sub_26637F50C();
    sub_2664E0AB8();
    sub_26639EC94(inited);
    swift_setDeallocating();
    sub_266350284(inited + 32);
    v99 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v100 = v97;
    v101 = sub_2664E05F8();

    v102 = [v99 initWithFilterPredicates:v101 library:v100];

    v133 = v100;
    if (v102)
    {
      [v102 setIgnoreSystemFilterPredicates_];
      [v102 setShouldIncludeNonLibraryEntities_];
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v103 = __swift_project_value_buffer(v26, qword_280F914F0);
    swift_beginAccess();
    v136(v22, v103, v26);
    v47 = v102;
    v104 = sub_2664DFE18();
    v105 = sub_2664E06E8();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v140 = v102;
      v141 = v107;
      *v106 = 136446210;
      v108 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EF8, &qword_2664E8E10);
      v109 = sub_2664E0318();
      v110 = v22;
      LODWORD(v22) = v111;
      v112 = v10;
      v113 = sub_2662A320C(v109, v111, &v141);

      *(v106 + 4) = v113;
      v10 = v112;
      _os_log_impl(&dword_26629C000, v104, v105, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity MPMediaQuery: %{public}s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      MEMORY[0x266784AD0](v107, -1, -1);
      MEMORY[0x266784AD0](v106, -1, -1);

      v114 = v110;
      v26 = v137;
    }

    else
    {

      v114 = v22;
    }

    v115 = v135;
    v135(v114, v26);
    v25 = v134;
    if (v102)
    {
      v116 = [v47 items];
      if (v116)
      {
        v117 = v116;
        sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
        v118 = sub_2664E04A8();

        if (v118 >> 62)
        {
          if (sub_2664E0A68())
          {
            goto LABEL_69;
          }
        }

        else if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_69:
          if ((v118 & 0xC000000000000001) != 0)
          {
            v119 = MEMORY[0x266783B70](0, v118);
            goto LABEL_72;
          }

          if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v119 = *(v118 + 32);
LABEL_72:
            v120 = v119;

LABEL_78:
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v121 = __swift_project_value_buffer(v26, qword_280F914F0);
            swift_beginAccess();
            v136(v25, v121, v26);
            v122 = sub_2664DFE18();
            v123 = sub_2664E06E8();
            if (os_log_type_enabled(v122, v123))
            {
              v135 = v115;
              v124 = swift_slowAlloc();
              v125 = swift_slowAlloc();
              v140 = v125;
              *v124 = 136446210;
              if (v120)
              {
                v126 = [v120 description];
                v127 = sub_2664E02C8();
                v129 = v128;
              }

              else
              {
                v129 = 0xE300000000000000;
                v127 = 7104878;
              }

              v130 = sub_2662A320C(v127, v129, &v140);

              *(v124 + 4) = v130;
              _os_log_impl(&dword_26629C000, v122, v123, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity returning MPMediaItem: %{public}s", v124, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v125);
              MEMORY[0x266784AD0](v125, -1, -1);
              MEMORY[0x266784AD0](v124, -1, -1);

              v135(v25, v26);
            }

            else
            {

              v115(v25, v26);
            }

            return;
          }

          __break(1u);
          goto LABEL_90;
        }

LABEL_75:

        v120 = 0;
        goto LABEL_78;
      }
    }

    goto LABEL_75;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = v137;
  v30 = __swift_project_value_buffer(v137, qword_280F914F0);
  swift_beginAccess();
  v31 = v138;
  (*(v138 + 16))(v20, v30, v29);

  v32 = sub_2664DFE18();
  v33 = sub_2664E06D8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v141 = v136;
    *v34 = 136446466;
    v139 = v21;
    v35 = PlaybackItem.Scheme.rawValue.getter();
    v37 = sub_2662A320C(v35, v36, &v141);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    v39 = (*(*a1 + 104))(v38);
    v41 = sub_2662A320C(v39, v40, &v141);

    *(v34 + 14) = v41;
    _os_log_impl(&dword_26629C000, v32, v33, "LocalPlaybackHelper#MPMediaItemRepresentationWithUserIdentity unknown scheme: %{public}s for item:%{public}s", v34, 0x16u);
    v42 = v136;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v42, -1, -1);
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  (*(v31 + 8))(v20, v29);
}

id sub_26637E54C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{
  v115 = a7;
  v118 = a3;
  v113 = a1;
  v14 = sub_2664DFE38();
  v117 = *(v14 - 8);
  v15 = *(v117 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v111 = &v108 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v110 = &v108 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v112 = &v108 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v108 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v108 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v108 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v108 - v33;
  v114 = a8;
  if (!a6)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v45 = v117;
    v120 = *(v117 + 16);
    v120(v32, v44, v14);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06E8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134349056;
      *(v48 + 4) = a4;
      _os_log_impl(&dword_26629C000, v46, v47, "LocalPlaybackHelper#getLocalQuery using Int64 value for identifier: %{public}lld", v48, 0xCu);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v119 = *(v45 + 8);
    v119(v32, v14);
    v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v41 = v118;
    v42 = sub_2664E02A8();
    v43 = [objc_opt_self() predicateWithValue:v40 forProperty:v42];
    goto LABEL_13;
  }

  if (a6 == 1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v36 = v117;
    v120 = *(v117 + 16);
    v120(v29, v35, v14);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      *(v39 + 4) = a4;
      _os_log_impl(&dword_26629C000, v37, v38, "LocalPlaybackHelper#getLocalQuery using UInt64 value for identifier: %{public}llu", v39, 0xCu);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v119 = *(v36 + 8);
    v119(v29, v14);
    v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    v41 = v118;
    v42 = sub_2664E02A8();
    v43 = [objc_opt_self() predicateWithValue:v40 forProperty:v42];
LABEL_13:
    v49 = v43;

    goto LABEL_22;
  }

  v109 = a2;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v51 = v117;
  v120 = *(v117 + 16);
  v120(v34, v50, v14);

  v52 = sub_2664DFE18();
  v53 = sub_2664E06E8();
  sub_26637F574(a4, a5, 2);
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v123[0] = v55;
    *v54 = 136446210;
    *(v54 + 4) = sub_2662A320C(a4, a5, v123);
    _os_log_impl(&dword_26629C000, v52, v53, "LocalPlaybackHelper#getLocalQuery using String value for identifier: %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  v119 = *(v51 + 8);
  v119(v34, v14);
  v41 = v118;
  v56 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithUTF8String_];

  a2 = v109;
  if (v56)
  {
    v123[0] = v56;
    sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    v57 = sub_2664E0D78();
  }

  else
  {
    v57 = 0;
  }

  v58 = sub_2664E02A8();
  v49 = [objc_opt_self() predicateWithValue:v57 forProperty:v58];
  swift_unknownObjectRelease();

LABEL_22:
  v59 = qword_280F914E8;
  v118 = v49;
  if (v59 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v120(v26, v60, v14);

  v61 = sub_2664DFE18();
  v62 = sub_2664E06E8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = v41;
    v66 = v64;
    v122 = v64;
    *v63 = 136446210;
    *(v63 + 4) = sub_2662A320C(a2, v65, &v122);
    _os_log_impl(&dword_26629C000, v61, v62, "LocalPlaybackHelper#getLocalQuery for property:%{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x266784AD0](v66, -1, -1);
    MEMORY[0x266784AD0](v63, -1, -1);
  }

  v67 = (v119)(v26, v14);
  v122 = MEMORY[0x277D84F90];
  MEMORY[0x266783490](v67);
  if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v105 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2664E04C8();
  }

  sub_2664E0518();
  v68 = v122;
  if ((a9 & 1) != 0 && (v115 | 2) != 3)
  {
    v120(v112, v60, v14);
    v69 = sub_2664DFE18();
    v70 = sub_2664E06E8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_26629C000, v69, v70, "LocalPlaybackHelper#getLocalQuery onlyPlayableItems, adding MPMediaItemPropertyIsPlayable predicate", v71, 2u);
      MEMORY[0x266784AD0](v71, -1, -1);
    }

    v119(v112, v14);
    v72 = *MEMORY[0x277CD57A0];
    LOBYTE(v121) = 1;
    v73 = v72;
    v74 = sub_2664E0DB8();
    v75 = objc_opt_self();
    v76 = [v75 predicateWithValue:v74 forProperty:v73];
    swift_unknownObjectRelease();

    v77 = v76;
    MEMORY[0x266783490]();
    if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v106 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2664E04C8();
    }

    sub_2664E0518();
    if (v115 == 6)
    {
      v68 = v122;
    }

    else
    {
      v78 = *MEMORY[0x277CD5788];
      LOBYTE(v121) = 1;
      v79 = v78;
      v80 = [v75 predicateWithValue:sub_2664E0DB8() forProperty:v79];
      swift_unknownObjectRelease();

      MEMORY[0x266783490]();
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v107 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2664E04C8();
      }

      sub_2664E0518();

      v68 = v122;
    }
  }

  v81 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
  v82 = sub_26639ED20(v68);

  sub_266460394(v82);

  v83 = objc_allocWithZone(MEMORY[0x277CD5E38]);
  v84 = v81;
  v85 = sub_2664E05F8();

  v86 = [v83 initWithFilterPredicates:v85 library:v84];

  [v86 setGroupingType_];
  if (a9)
  {
    if (v115 == 5)
    {
      v87 = v110;
      v120(v110, v60, v14);
      v88 = sub_2664DFE18();
      v89 = sub_2664E06E8();
      if (!os_log_type_enabled(v88, v89))
      {
        goto LABEL_46;
      }

      v90 = swift_slowAlloc();
      *v90 = 0;
      v91 = "LocalPlaybackHelper#getLocalQuery onlyPlayableItems, setting shouldIncludeNonLibraryEntities=true and ignoreSystemFilterPredicates=false";
    }

    else
    {
      v87 = v111;
      v120(v111, v60, v14);
      v88 = sub_2664DFE18();
      v89 = sub_2664E06E8();
      if (!os_log_type_enabled(v88, v89))
      {
        goto LABEL_46;
      }

      v90 = swift_slowAlloc();
      *v90 = 0;
      v91 = "LocalPlaybackHelper#getLocalQuery onlyPlayableItems, setting shouldIncludeNonLibraryEntities=true and ignoreSystemFilterPredicates=true";
    }

    _os_log_impl(&dword_26629C000, v88, v89, v91, v90, 2u);
    MEMORY[0x266784AD0](v90, -1, -1);
LABEL_46:

    v119(v87, v14);
    if (v86)
    {
      [v86 setIgnoreSystemFilterPredicates_];
    }
  }

  v92 = v116;
  v120(v116, v60, v14);
  v93 = v86;
  v94 = sub_2664DFE18();
  v95 = sub_2664E06E8();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v121 = v97;
    *v96 = 136446210;
    if (v93)
    {
      v98 = [v93 description];
      v99 = sub_2664E02C8();
      v101 = v100;
    }

    else
    {
      v101 = 0xE300000000000000;
      v99 = 7104878;
    }

    v103 = sub_2662A320C(v99, v101, &v121);

    *(v96 + 4) = v103;
    _os_log_impl(&dword_26629C000, v94, v95, "LocalPlaybackHelper#getLocalQuery for query:%{public}s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    MEMORY[0x266784AD0](v97, -1, -1);
    MEMORY[0x266784AD0](v96, -1, -1);

    v102 = v116;
  }

  else
  {

    v102 = v92;
  }

  v119(v102, v14);
  return v93;
}

uint64_t objectdestroy_17Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

uint64_t sub_26637F490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26637F50C()
{
  result = qword_280072EF0;
  if (!qword_280072EF0)
  {
    sub_2662C1744(255, &qword_280072EE8, 0x277CD5E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072EF0);
  }

  return result;
}

uint64_t sub_26637F574(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_26637F58C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26637F650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26637F698(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t OpenPodcastEpisodeAppIntent.init(episodeEntity:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F10, &qword_2664E8ED0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2664DFA28();
  *a1 = result;
  return result;
}

uint64_t sub_26637FB2C()
{
  MEMORY[0x2667833B0](0x6867696C746F7073, 0xE900000000000074);
  result = MEMORY[0x2667833B0](47, 0xE100000000000000);
  qword_28007CCA8 = 0xD000000000000012;
  unk_28007CCB0 = 0x80000002664F5C10;
  return result;
}

void *PlaybackLocalSearcher.__allocating_init()()
{
  v0 = type metadata accessor for SpotlightSearchProvider();
  v29 = swift_allocObject();
  v28 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v2 = qword_280F8F808;
  v44 = type metadata accessor for MultiUserConnectionProvider();
  v45 = &protocol witness table for MultiUserConnectionProvider;
  *&v43 = v2;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();

  v27 = sub_266360778(v1, &v43, v4);

  v5 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v43);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v40 = qword_280F905C8;
  *(&v40 + 5) = *(&qword_280F905C8 + 5);
  v41 = &type metadata for FeatureFlagProvider;
  v42 = &protocol witness table for FeatureFlagProvider;
  v39 = &protocol witness table for SharedContextProvider;
  v38 = type metadata accessor for SharedContextProvider();
  v36 = &protocol witness table for SubscriptionProvider;
  *&v37 = swift_initStaticObject();
  v35 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v32 = type metadata accessor for SiriKitTaskLoggingProvider();
  v33 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v31 = v7;
  v30[3] = &type metadata for WatchOSSupportProvider;
  v30[4] = &off_2877EC0A0;
  v8 = type metadata accessor for MediaPlaybackProvider();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for WatchOSSupportProvider);
  v9[28] = &type metadata for WatchOSSupportProvider;
  v9[29] = &off_2877EC0A0;
  v9[5] = v3;
  v9[6] = &protocol witness table for AccountProvider;
  v10 = v28;
  v9[2] = v27;
  v9[17] = v10;
  v9[18] = v5;
  v9[19] = v6;
  sub_2662A8618(&v43, (v9 + 20));
  sub_2662A8618(&v40, (v9 + 30));
  sub_2662A8618(&v37, (v9 + 35));
  sub_2662A8618(&v34, (v9 + 7));
  sub_2662A8618(&v31, (v9 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  v44 = v0;
  v45 = &off_2877EE510;
  *&v43 = v29;
  v41 = v8;
  v42 = &off_2877F3740;
  *&v40 = v9;
  type metadata accessor for PlaybackLocalSearcher();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v43, v0);
  v13 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v41;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(&v40, v41);
  v19 = *(v17[-1].Description + 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v15;
  v24 = *v21;
  v11[5] = v0;
  v11[6] = &off_2877EE510;
  v11[7] = v24;
  v11[2] = v23;
  v11[10] = v8;
  v11[11] = &off_2877F3740;
  __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  return v11;
}

uint64_t sub_266380098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v46 = a8;
  v47 = a4;
  v49 = a6;
  v50 = a7;
  v48 = a5;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v11 = sub_2664DFE38();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE08();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v41 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a10;
  *(v21 + 24) = a11;
  v22 = qword_280F91508;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v15 + 16))(v18, v20, v14);
  v24 = (*(v15 + 80) + 33) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = "playbackLocalSearcherSearch";
  *(v25 + 24) = 27;
  *(v25 + 32) = 2;
  (*(v15 + 32))(v25 + v24, v18, v14);
  v26 = (v25 + ((v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2662BD02C;
  v26[1] = v21;
  v41[1] = v21;

  sub_2664E0848();
  v51 = v14;
  v42 = v20;
  sub_2664DFDC8();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2662C0D38;
  *(v27 + 24) = v25;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2662C0DE0;
  *(v28 + 24) = v27;
  v29 = *__swift_project_boxed_opaque_existential_1(v55 + 7, v55[10]);

  sub_2664DFDE8();
  sub_2664E0848();
  v30 = v51;
  sub_2664DFDC8();
  sub_26648D3D0(0, v29, v56);
  sub_2664E0838();
  sub_2664DFDD8();
  v31 = *(v15 + 8);
  v31(v18, v30);
  v32 = v56[0];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = v54;
  v34 = __swift_project_value_buffer(v54, qword_280F914F0);
  swift_beginAccess();
  (*(v53 + 16))(v52, v34, v33);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06B8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218240;
    *(v37 + 4) = v32;
    *(v37 + 12) = 1024;
    *(v37 + 14) = v32 != 4;
    v30 = v51;
    _os_log_impl(&dword_26629C000, v35, v36, "PlaybackLocalSearcher#search Local search streamingAvailability: %ld -- localOnly: %{BOOL}d", v37, 0x12u);
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  (*(v53 + 8))(v52, v54);
  v38 = __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
  v39 = *MEMORY[0x28223BE20](v38);
  sub_2663CD5E8(v43, v44, v45, v47, v48, v49, v50, v32 != 4, v46, a9 & 1, sub_266381014);

  return (v31)(v42, v30);
}

uint64_t sub_26638068C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06B8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a5;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2662A320C(v18, a2, &v28);
    _os_log_impl(&dword_26629C000, v15, v16, "PlaybackLocalSearcher#search Searching spotlight with query: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    v21 = v19;
    a1 = v18;
    a5 = v26;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v22 = __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  *(v23 + 24) = a5;
  v24 = *v22;

  sub_2663CEA44(a1, a2, &unk_2877E4258, 200, sub_266381070, v23);
}

uint64_t sub_266380930(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for SearchItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = a3;
    v20 = a2;
    v21 = MEMORY[0x277D84F90];
    sub_2662FD11C(0, v11, 0);
    v12 = v21;
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = a1 + v13;
    v15 = *(v7 + 72);
    do
    {
      sub_266380AB4(v14, v10);
      v21 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2662FD11C(v16 > 1, v17 + 1, 1);
        v12 = v21;
      }

      *(v12 + 16) = v17 + 1;
      sub_266381078(v10, v12 + v13 + v17 * v15);
      v14 += v15;
      --v11;
    }

    while (v11);
    a2 = v20;
  }

  a2(v12);
}

uint64_t sub_266380AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = type metadata accessor for SearchItem();
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + 8);
  v52 = *a1;
  v53 = v12;
  v56[0] = 0xD000000000000012;
  v56[1] = 0x80000002664F5C10;
  v13 = qword_280071B48;

  if (v13 != -1)
  {
    swift_once();
  }

  v54 = qword_28007CCA8;
  v55 = unk_28007CCB0;
  sub_2662D2EBC();
  v57 = sub_2664E0998();
  v15 = v14;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v16, v7);
  sub_2663810DC(a1, v6);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();

  v19 = os_log_type_enabled(v17, v18);
  v51 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = v8;
    v22 = v21;
    v56[0] = v21;
    *v20 = 136315394;
    v47 = v11;
    v48 = v7;
    v24 = *v6;
    v23 = v6[1];

    sub_266381140(v6);
    v25 = sub_2662A320C(v24, v23, v56);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2662A320C(v57, v51, v56);
    _os_log_impl(&dword_26629C000, v17, v18, "PlaybackLocalSearcher#search PlaybackLocalSearcher reformed identifier: %s to handler-compatible: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v22, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);

    (*(v49 + 8))(v47, v48);
  }

  else
  {

    sub_266381140(v6);
    (*(v8 + 8))(v11, v7);
  }

  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v29 = *(a1 + 32);
  v28 = *(a1 + 40);
  v31 = *(a1 + 48);
  v30 = *(a1 + 56);
  v32 = *(a1 + 72);
  v48 = *(a1 + 64);
  v49 = v26;
  LODWORD(v47) = *(a1 + 80);
  v46 = *(a1 + 88);
  v45 = *(a1 + 96);
  v44 = *(a1 + 104);
  v43 = *(a1 + 112);
  v33 = v50;
  sub_26638119C(a1 + *(v50 + 48), a2 + *(v50 + 48));
  v34 = *(a1 + *(v33 + 52));
  v35 = (a1 + *(v33 + 56));
  v37 = *v35;
  v36 = v35[1];
  v38 = v51;
  *a2 = v57;
  *(a2 + 8) = v38;
  v39 = v48;
  *(a2 + 16) = v49;
  *(a2 + 24) = v27;
  *(a2 + 32) = v29;
  *(a2 + 40) = v28;
  *(a2 + 48) = v31;
  *(a2 + 56) = v30;
  *(a2 + 64) = v39;
  *(a2 + 72) = v32;
  *(a2 + 80) = v47;
  *(a2 + 88) = v46;
  *(a2 + 96) = v45;
  *(a2 + 104) = v44;
  *(a2 + 112) = v43;
  *(a2 + *(v33 + 52)) = v34;
  v40 = (a2 + *(v33 + 56));
  *v40 = v37;
  v40[1] = v36;
}

uint64_t PlaybackLocalSearcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t PlaybackLocalSearcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_266381078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2663810DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266381140(uint64_t a1)
{
  v2 = type metadata accessor for SearchItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26638119C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall INPlayMediaIntent.isFromNonSubscriber()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v1, &unk_2877E1F20);
  if (v10)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v9, v11, v2);
    v12 = sub_2664DFE18();
    v13 = sub_2664E06B8();
    if (!os_log_type_enabled(v12, v13))
    {
      v7 = v9;
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "INPlayMediaIntent#isFromNonSubscriber received isFromNonSubscriber", v14, 2u);
    v7 = v9;
    goto LABEL_10;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v7, v15, v2);
  v12 = sub_2664DFE18();
  v16 = sub_2664E06B8();
  if (os_log_type_enabled(v12, v16))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v16, "INPlayMediaIntent#isFromNonSubscriber did not receive isFromNonSubscriber", v14, 2u);
LABEL_10:
    MEMORY[0x266784AD0](v14, -1, -1);
  }

LABEL_12:

  (*(v3 + 8))(v7, v2);
  return v10;
}

uint64_t INPlayMediaIntent.startPlaybackOnSetQueue.getter()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 privatePlayMediaIntentData];
  v7 = [v6 immediatelyStartPlayback];

  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v8 = sub_2664E08F8();
  if (v7)
  {
    v9 = sub_2664E0918();

    v8 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v5, v10, v1);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 & 1;
    _os_log_impl(&dword_26629C000, v11, v12, "INPlayMediaIntent#startPlaybackOnSetQueue Early playback enabled for interactionType and queue location?:%{BOOL}d", v13, 8u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return v9 & 1;
}

id INPlayMediaIntent.isAmbiguousShuffle.getter()
{
  v1 = v0;
  v2 = sub_2664E0708();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    return 0;
  }

  result = [v0 mediaSearch];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = sub_26639B5CC();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  result = [v1 mediaSearch];
  if (result)
  {
    v6 = result;
    v7 = [result mediaType];

    return (v7 == 18);
  }

  return result;
}

Swift::Bool __swiftcall INPlayMediaIntent.isCreateRadioFromCurrentlyPlaying()()
{
  v1 = [v0 mediaSearch];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 reference];

    if (v3 == 1)
    {
      v1 = [v0 mediaSearch];
      if (v1)
      {
        v4 = v1;
        v5 = [v1 sortOrder];

        LOBYTE(v1) = v5 == 8;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1;
}

Swift::Bool __swiftcall INPlayMediaIntent.isCreateRadioFromCurrentlyPlayingUnknownReference()()
{
  v1 = [v0 mediaSearch];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 reference];

    if (v3)
    {
LABEL_3:
      LOBYTE(v1) = 0;
      return v1;
    }

    v4 = [v0 mediaSearch];
    if (v4 && (v5 = v4, v6 = [v4 mediaType], v5, v6 == 18) && (v7 = objc_msgSend(v0, sel_mediaSearch)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_sortOrder), v8, v9 == 8))
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v1 = [v0 mediaSearch];
      if (!v1)
      {
        return v1;
      }

      v10 = v1;
      v11 = [v1 mediaType];

      if (v11 != 17)
      {
        goto LABEL_3;
      }

      v1 = [v0 mediaSearch];
      if (v1)
      {
        v12 = v1;
        v13 = [v1 sortOrder];

        LOBYTE(v1) = v13 == 0;
      }
    }
  }

  return v1;
}

Swift::Bool __swiftcall INPlayMediaIntent.isNewPlaybackProducing()()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v37 = &v37 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  v14 = v2[2];
  v39 = v13;
  v40 = v14;
  v14(v12, v13, v1);
  v15 = v0;
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = [v15 playbackQueueLocation];

    _os_log_impl(&dword_26629C000, v16, v17, "INPlayMediaIntent#isNewPlaybackProducing playbackQueueLocation: %{public}ld", v18, 0xCu);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  v41 = v2[1];
  v41(v12, v1);
  v19 = [v15 mediaSearch];
  v20 = v39;
  if (v19 && (v21 = v19, v22 = [v19 reference], v21, v22 == 1) && (v23 = -[NSObject mediaSearch](v15, sel_mediaSearch)) != 0)
  {
    v24 = v23;
    v25 = [v23 sortOrder];

    v26 = v25 == 8;
  }

  else
  {
    v26 = 0;
  }

  v40(v10, v20, v1);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67240192;
    *(v29 + 4) = v26;
    _os_log_impl(&dword_26629C000, v27, v28, "INPlayMediaIntent#isNewPlaybackProducing createRadio: %{BOOL,public}d", v29, 8u);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v41(v10, v1);
  if ([v15 playbackQueueLocation]!= 2 && [v15 playbackQueueLocation]!= 3 && !v26)
  {
    v30 = v37;
    v40(v37, v20, v1);
    v31 = sub_2664DFE18();
    v35 = sub_2664E06E8();
    if (!os_log_type_enabled(v31, v35))
    {
      v34 = 1;
      goto LABEL_21;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_26629C000, v31, v35, "INPlayMediaIntent#isNewPlaybackProducing IS playback producing", v33, 2u);
    v34 = 1;
    goto LABEL_20;
  }

  v30 = v38;
  v40(v38, v20, v1);
  v31 = sub_2664DFE18();
  v32 = sub_2664E06E8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_26629C000, v31, v32, "INPlayMediaIntent#isNewPlaybackProducing NOT playback producing", v33, 2u);
    v34 = 0;
LABEL_20:
    MEMORY[0x266784AD0](v33, -1, -1);
    goto LABEL_21;
  }

  v34 = 0;
LABEL_21:

  v41(v30, v1);
  return v34;
}

Swift::Bool __swiftcall INPlayMediaIntent.isPromptForValueIntent()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 privatePlayMediaIntentData];
  if (v7 && (v8 = v7, v9 = [v7 audioSearchResults], v8, v9))
  {
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v10 = sub_2664E04A8();

    v11 = v10;
    if (v10 >> 62)
    {
LABEL_4:
      v12 = sub_2664E0A68();
      goto LABEL_7;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_4;
    }
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  v13 = [v1 mediaSearch];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 mediaType];
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_266457D7C(v15, v14 == 0, &unk_2877E44F8);
  v17 = [v1 mediaSearch];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 mediaName];

    if (v19)
    {
      goto LABEL_16;
    }
  }

  v20 = [v1 mediaSearch];
  if (v20)
  {
    v21 = v20;
    v19 = [v20 artistName];

    if (v19)
    {
      goto LABEL_16;
    }
  }

  v22 = [v1 mediaSearch];
  if (v22 && (v23 = v22, v19 = [v22 albumName], v23, v19))
  {
LABEL_16:

    v24 = 0;
  }

  else
  {
    v25 = [v1 mediaSearch];
    if (v25 && (v26 = v25, v27 = [v25 genreNames], v26, v27))
    {
      v28 = sub_2664E04A8();

      v29 = v28;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v30 = *(v29 + 16);

    v24 = v30 == 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v31, v2);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06C8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67240704;
    *(v34 + 4) = v12 == 0;
    *(v34 + 8) = 1026;
    *(v34 + 10) = v16 & 1;
    *(v34 + 14) = 1026;
    *(v34 + 16) = v24;
    _os_log_impl(&dword_26629C000, v32, v33, "isPromptForValueIntent searchEmpty:%{BOOL,public}d specifiedType:%{BOOL,public}d noSearchValue:%{BOOL,public}d", v34, 0x14u);
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return (v12 == 0) & v16 & v24;
}

Swift::Void __swiftcall INPlayMediaIntent.addOfferBuyParams(buyParams:)(Swift::String buyParams)
{
  MEMORY[0x2667833B0](buyParams._countAndFlagsBits, buyParams._object);
  _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(0x6D61726150797562, 0xEA00000000003A73, v1);
}

Swift::Void __swiftcall INPlayMediaIntent.addGdprHandoffUtterance(utterance:)(Swift::String_optional utterance)
{
  if (utterance.value._object)
  {
    object = utterance.value._object;
    countAndFlagsBits = utterance.value._countAndFlagsBits;
    sub_2664E0B28();

    MEMORY[0x2667833B0](countAndFlagsBits, object);
    _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(0xD000000000000015, 0x80000002664F5C50, v1);
  }
}

Swift::Bool __swiftcall INPlayMediaIntent.isSiriForAirPlay()()
{
  if (_s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v0, &unk_2877E4668))
  {
    return 1;
  }

  return _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v0, &unk_2877E4698);
}

Swift::Bool __swiftcall INPlayMediaIntent.isCompanionAppInstalled()()
{
  if (_s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v0, &unk_2877E46C8))
  {
    return 1;
  }

  return _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v0, &unk_2877E46F8);
}

Swift::Void __swiftcall INPlayMediaIntent.configureStartPlaybackOnSetQueue(willSiriSpeak:)(Swift::Bool willSiriSpeak)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = v47 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v47 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v49 = v3[2];
  v49(v14, v15, v2);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v47[1] = v3 + 2;
    v19 = v7;
    v20 = v15;
    v21 = v2;
    v22 = v12;
    v23 = v3;
    v24 = v18;
    *v18 = 67240192;
    *(v18 + 4) = willSiriSpeak;
    _os_log_impl(&dword_26629C000, v16, v17, "configureStartPlaybackOnSetQueue - will Siri speak? %{BOOL,public}d", v18, 8u);
    v25 = v24;
    v3 = v23;
    v12 = v22;
    v2 = v21;
    v15 = v20;
    v7 = v19;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v26 = v3[1];
  v26(v14, v2);
  if (willSiriSpeak)
  {
    v49(v7, v15, v2);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06E8();
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_9:
      v12 = v7;
      goto LABEL_10;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "Skipping immediate-start-playback as not display driven interaction", v29, 2u);
    v30 = v29;
LABEL_8:
    MEMORY[0x266784AD0](v30, -1, -1);
    goto LABEL_9;
  }

  v32 = v50;
  v33 = [v50 mediaSearch];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 reference];

    if (v35 == 1)
    {
      v36 = [v32 mediaSearch];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 mediaType];

        if (v38 == 16)
        {
          goto LABEL_17;
        }
      }

      v39 = [v32 mediaSearch];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 sortOrder];

        if (v41 == 8)
        {
LABEL_17:
          v7 = v48;
          v49(v48, v15, v2);
          v27 = sub_2664DFE18();
          v42 = sub_2664E06E8();
          if (!os_log_type_enabled(v27, v42))
          {
            goto LABEL_9;
          }

          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_26629C000, v27, v42, "Skipping immediate-start-playback to resume music since this is a create radio", v43, 2u);
          v30 = v43;
          goto LABEL_8;
        }
      }
    }
  }

  v31 = [v32 playbackQueueLocation];
  if (v31 == 1)
  {
    goto LABEL_24;
  }

  if (![v32 playbackQueueLocation])
  {
    LOBYTE(v31) = 1;
    goto LABEL_24;
  }

  v49(v12, v15, v2);
  v44 = v32;
  v27 = sub_2664DFE18();
  v45 = sub_2664E06E8();
  if (os_log_type_enabled(v27, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134349056;
    *(v46 + 4) = [v44 playbackQueueLocation];

    _os_log_impl(&dword_26629C000, v27, v45, "Skipping immediate-start-playback as playback queue location is:%{public}ld", v46, 0xCu);
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  else
  {

    v27 = v44;
  }

LABEL_10:

  v26(v12, v2);
  LOBYTE(v31) = 0;
LABEL_24:
  sub_266382C4C(v31);
}

uint64_t sub_266382C4C(char a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = [v2 backingStore];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 privatePlayMediaIntentData];
    if (v18)
    {
      v19 = v18;
      [v18 setImmediatelyStartPlayback:a1 & 1];
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v14, v20, v4);
      v21 = sub_2664DFE18();
      v22 = sub_2664E06E8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = a1 & 1;
        _os_log_impl(&dword_26629C000, v21, v22, "Set immediatelyStartPlayback?:%{BOOL}d on existing private data store", v23, 8u);
        MEMORY[0x266784AD0](v23, -1, -1);
      }
    }

    else
    {
      v27 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
      [v27 setImmediatelyStartPlayback:a1 & 1];
      [v17 setPrivatePlayMediaIntentData_];
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v12, v28, v4);
      v29 = sub_2664DFE18();
      v30 = sub_2664E06E8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 67109120;
        *(v31 + 4) = a1 & 1;
        _os_log_impl(&dword_26629C000, v29, v30, "Created new private data backing store to set immediatelyStartPlayback?:%{BOOL}d", v31, 8u);
        MEMORY[0x266784AD0](v31, -1, -1);
        v32 = v27;
      }

      else
      {
        v32 = v29;
        v29 = v27;
      }

      v19 = v15;
      v14 = v12;
    }
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v24, v4);
    v19 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v19, v25, "Unexpected backing store error setting playback immediately", v26, 2u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    v14 = v9;
  }

  return (*(v5 + 8))(v14, v4);
}

Swift::Void __swiftcall INPlayMediaIntent.configureEnableEntityConfidenceExperiment(displayDriven:)(Swift::Bool displayDriven)
{
  v58 = displayDriven;
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v53 = &v52 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v56 = &v52 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v52 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  v19 = v2[2];
  v19(v17, v18, v1);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06B8();
  v22 = os_log_type_enabled(v20, v21);
  v57 = v19;
  if (v22)
  {
    v23 = v18;
    v24 = v6;
    v25 = v11;
    v26 = v1;
    v27 = v2;
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v58;
    _os_log_impl(&dword_26629C000, v20, v21, "shouldEnableEntityConfidenceExperiment - is display-driven: %{BOOL}d", v28, 8u);
    v29 = v28;
    v2 = v27;
    v1 = v26;
    v11 = v25;
    v6 = v24;
    v18 = v23;
    v19 = v57;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v30 = v2[1];
  v30(v17, v1);
  if (v58)
  {
    v6 = v54;
    v19(v54, v18, v1);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "In display driven mode, leaving value sent from server";
LABEL_17:
      _os_log_impl(&dword_26629C000, v31, v32, v34, v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }
  }

  else
  {
    v19(v56, v18, v1);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "Skipping entity confidence experiment as not display driven interaction", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v30(v56, v1);
    v38 = [v55 backingStore];
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v18;
      v41 = v39;
      v42 = [v39 privatePlayMediaIntentData];
      if (v42)
      {
        v31 = v42;
        [v42 setEntityConfidenceSignalsEnabled:0];
        v57(v11, v40, v1);
        v43 = sub_2664DFE18();
        v44 = sub_2664E06E8();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_26629C000, v43, v44, "Set entityConfidenceSignalsEnabled to false on existing private data store", v45, 2u);
          MEMORY[0x266784AD0](v45, -1, -1);
        }

        v6 = v11;
      }

      else
      {
        v46 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
        v47 = v46;
        if (v46)
        {
          [v46 setEntityConfidenceSignalsEnabled_];
        }

        [v41 setPrivatePlayMediaIntentData_];
        v48 = v53;
        v57(v53, v18, v1);
        v49 = sub_2664DFE18();
        v50 = sub_2664E06E8();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_26629C000, v49, v50, "Created new private data backing store to set entityConfidenceSignalsEnabled as false", v51, 2u);
          MEMORY[0x266784AD0](v51, -1, -1);
        }

        else
        {
        }

        v31 = v38;
        v6 = v48;
      }
    }

    else
    {

      v57(v6, v18, v1);
      v31 = sub_2664DFE18();
      v32 = sub_2664E06D8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "Unexpected backing store error setting entityConfidenceSignalsEnabled";
        goto LABEL_17;
      }
    }
  }

  v30(v6, v1);
}

void *sub_266383798()
{
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v0 = sub_2664E06F8();
  v1 = [v0 backingStore];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4380]);
    v5 = v3;
    v6 = [v4 init];
    [v5 setPrivateMediaIntentData_];
  }

  v7 = v2;
  [v7 setPrivatePlayMediaIntentData_];

  return v0;
}

void *static INPlayMediaIntent.resumeApp(bundleIdentifier:)(uint64_t a1, unint64_t a2)
{
  v39 = a1;
  v3 = sub_2664DE4A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  v16 = os_log_type_enabled(v14, v15);
  v38 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v37 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = v7;
    v20 = v19;
    v40 = v19;
    *v18 = 136315138;
    v21 = v3;
    if (a2)
    {
      v22 = v39;
    }

    else
    {
      v22 = 0x3E6C696E3CLL;
    }

    if (!a2)
    {
      a2 = 0xE500000000000000;
    }

    v23 = sub_2662A320C(v22, a2, &v40);

    *(v18 + 4) = v23;
    v3 = v21;
    _os_log_impl(&dword_26629C000, v14, v15, "Creating resumeApp intent with bundleID: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v24 = v20;
    v7 = v36;
    MEMORY[0x266784AD0](v24, -1, -1);
    v25 = v18;
    v4 = v37;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v26 = sub_2664E06F8();
  v27 = [objc_allocWithZone(MEMORY[0x277CD4350]) init];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
    if (v38)
    {
      v30 = sub_2664E02A8();
    }

    else
    {
      v30 = 0;
    }

    [v29 setLaunchId_];

    v31 = v29;
    sub_2664DE498();
    sub_2664DE458();
    (*(v4 + 8))(v7, v3);
    v32 = sub_2664E02A8();

    [v31 setIntentId_];
  }

  v33 = [v26 backingStore];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (!v34)
  {
  }

  [v34 setIntentMetadata_];

  return v26;
}

Swift::Void __swiftcall INPlayMediaIntent.setShouldSuppressCommonWholeHouseAudioRoutes()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v1 backingStore];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 privatePlayMediaIntentData];
    if (v8)
    {
      v9 = v8;
      [v8 setShouldSuppressCommonWholeHouseAudioRoutes_];
    }

    v10 = v15;
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v6, v11, v2);
    v12 = sub_2664DFE18();
    v13 = sub_2664E06D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26629C000, v12, v13, "INPlayMediaIntent#setShouldSuppressCommonWholeHouseAudioRoutes Unexpected backing store error setting entityConfidenceSignalsEnabled", v14, 2u);
      MEMORY[0x266784AD0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

Swift::Bool __swiftcall INPlayMediaIntent.isCommonAirPlayRouteSetupSuppressed()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 privatePlayMediaIntentData];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 shouldSuppressCommonWholeHouseAudioRoutes];

    if (v9)
    {
      v10 = [v9 BOOLValue];

      if (v10)
      {
        return 1;
      }
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "INPlayMediaIntent#isCommonAirPlayRouteSetupSuppressed Route setting is not being suppressed (ASKit will or have tried setting them up)", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

Swift::Bool __swiftcall INPlayMediaIntent.isMediaItemsPopulated()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 mediaItems];
  if (v7)
  {
    v8 = v7;
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v9 = sub_2664E04A8();

    v10 = v9 >> 62 ? sub_2664E0A68() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v10 > 0)
    {
      return 1;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "INPlayMediaIntent#isMediaItemsPopulated MediaItems were not populated (yet?)", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_2663843E8(SEL *a1, const char *a2)
{
  v5 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v5 *a1];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2664E04A8();

    v14 = *(v13 + 16);

    if (v14)
    {
      return 1;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v16, v6);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, a2, v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return 0;
}

char *sub_2663845E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072938, qword_2664EBFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2663846F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266384800(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728E8, &unk_2664E4F50);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266384948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FD8, &qword_2664E90E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_266384A9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F78, &qword_2664E9098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F80, &unk_2664EDCC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266384BD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F38, &qword_2664E9068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_266384CD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072918, &unk_2664E4F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072598, &unk_2664E3B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266384E1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FC8, &qword_2664E90D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_266384FA0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FA0, &qword_2664E90B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2663851B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_266385394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072898, &qword_2664E4F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_2663854AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v13, &unk_2800734F0, &unk_2664E3660);
      v5 = v13;
      v6 = v14;
      result = sub_2662A3E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_266318804(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2663855DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B60, &qword_2664E9118);
  v3 = sub_2664E0C98();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_2662A7224(&v24, v23, &qword_280073010, &qword_2664E9120);
  result = sub_2662A3E98(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_2662A7224(&v24, v23, &qword_280073010, &qword_2664E9120);
    result = sub_2662A3E98(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_266385778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v15, &qword_280072880, &unk_2664E4EE0);
      v5 = v15;
      v6 = v16;
      result = sub_2662A3E98(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2663858A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C0, &unk_2664E36D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F60, &qword_2664E9080);
    v8 = sub_2664E0C98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2662A7224(v10, v6, &qword_2800724C0, &unk_2664E36D0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2662A3E98(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_2664DEC48();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266385ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F40, &qword_2664E9070);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F48, qword_2664F0660);
    v8 = sub_2664E0C98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2662A7224(v10, v6, &qword_280072F40, &qword_2664E9070);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2662A3E98(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_2664DF398();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266385CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
    v3 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2662A3E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266385DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E8, &qword_2664E5310);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v13, &qword_280072F30, &qword_2664E9060);
      v5 = v13;
      v6 = v14;
      result = sub_2662A3E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2662A8618(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266385F28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2662A3E98(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26638604C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FD0, &qword_2664E90E0);
    v3 = sub_2664E0C98();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_26634DA3C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266386140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
    v3 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2662A3E98(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266386258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F58, &qword_2664E9078);
    v3 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_26634DB5C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266386350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729F0, &qword_2664E5318);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, v13, &qword_280072F20, &qword_2664E9050);
      result = sub_26634D9F8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_266318804(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26638648C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FB0, &qword_2664E90C8);
    v3 = sub_2664E0C98();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = *(v4 + 1);

      result = sub_26634DC1C(v5 | (v6 << 8));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 2 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266386598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FA8, &qword_2664E90C0);
    v3 = sub_2664E0C98();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_26634DAA8(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26638669C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2662A3E98(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2663867AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2664E0C98();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2662A3E98(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2663868A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B00, &qword_2664ED680);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v11, &qword_280072F88, &qword_2664E90A0);
      v5 = v11;
      result = sub_26634DD28(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_266318804(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2663869D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F50, &qword_2664ED6B0);
    v3 = sub_2664E0C98();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2662A3E98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266386AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A70, &unk_2664ED610);
    v3 = sub_2664E0C98();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662A7224(v4, &v11, &qword_280072F90, &qword_2664E90A8);
      v5 = v11;
      result = sub_26634DAA8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_266318804(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_266386C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a1;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073028, &qword_2664E91B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073030, qword_2664E91C0);
  v11 = sub_2664E0318();
  v23 = v12;
  v24 = v11;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "appSelectionSignalsSignal";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = v25;
  v17[1] = a3;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E36F0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2662C4094();
  v19 = v23;
  *(v18 + 32) = v24;
  *(v18 + 40) = v19;
  sub_2664DFDC8();

  v20 = swift_allocObject();
  *(v20 + 16) = sub_266352A18;
  *(v20 + 24) = v16;

  sub_266387CAC(sub_266352AC0, v20, v26);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_266386F30(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v8 = sub_2664DE438();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a1;
    v21 = a3;
    v22 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingAppSignal#signal got bundleId", v20, 2u);
    v23 = v22;
    a3 = v21;
    a1 = v29;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  sub_2664DE428();
  sub_2664DE388();
  v25 = v24;
  (*(v30 + 8))(v11, v31);
  v26 = type metadata accessor for NowPlayingAppSignal();
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = a2;
  v27[4] = v25;
  v33[3] = v26;
  v33[4] = &off_2877EBA08;
  v33[0] = v27;

  a3(v33);
  return __swift_destroy_boxed_opaque_existential_1Tm(v33);
}

uint64_t sub_266387210()
{
  v0 = sub_2662C3A68(&unk_2877E1660);
  result = sub_2662C1834(&unk_2877E1680);
  qword_280F91CB0 = v0;
  return result;
}

void sub_266387250(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v58 = a4;
  v59 = a3;
  v56 = a1;
  v57 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v52 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v17 = v5[2];
  v17(v15, v16, v4);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v4;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingAppSignal#NowPlayingClient#nowPlaying fetch complete.", v21, 2u);
    v22 = v21;
    v4 = v20;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v15, v4);
  v24 = v57;
  if (v57)
  {
    v17(v13, v16, v4);
    v25 = v4;
    v26 = v24;
    v27 = sub_2664DFE18();
    v28 = sub_2664E06D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v53 = v23;
      v30 = v29;
      v31 = swift_slowAlloc();
      v60[0] = v31;
      *v30 = 136315138;
      v61 = v26;
      type metadata accessor for CFError(0);
      sub_2662F0D58();
      v32 = sub_2664E0DE8();
      v34 = sub_2662A320C(v32, v33, v60);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_26629C000, v27, v28, "NowPlayingAppSignal#NowPlayingClient#nowPlaying MRMediaRemoteGetNowPlayingClient failed with error %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266784AD0](v31, -1, -1);
      MEMORY[0x266784AD0](v30, -1, -1);

      v53(v13, v25);
    }

    else
    {

      v23(v13, v25);
    }

    v59(0, 0);
  }

  else if (v56)
  {
    v35 = MRNowPlayingClientGetBundleIdentifier();
    v53 = v23;
    if (v35)
    {
      v36 = v35;
      v37 = sub_2664E02C8();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v44 = v55;
    v17(v55, v16, v4);

    v45 = sub_2664DFE18();
    v46 = sub_2664E06C8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60[1] = v39;
      v61 = v48;
      *v47 = 136315138;
      v60[0] = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v49 = sub_2664E0318();
      v51 = sub_2662A320C(v49, v50, &v61);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_26629C000, v45, v46, "NowPlayingAppSignal#NowPlayingClient#nowPlaying bundle: %s.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);

      v53(v55, v4);
    }

    else
    {

      v53(v44, v4);
    }

    v59(v37, v39);
  }

  else
  {
    v40 = v54;
    v17(v54, v16, v4);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "NowPlayingAppSignal#NowPlayingClient#nowPlaying received nil now playing client", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v23(v40, v4);
    v59(0, 0);
  }
}

uint64_t sub_266387858()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2663878F0()
{
  if (qword_280F90400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_26638794C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000002664F1190;
  v7 = *(v5 + 24);
  if (v7)
  {
    if (*(v5 + 16) == a1 && v7 == a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_2664E0D88();
    }
  }

  else
  {
    v9 = 0;
  }

  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v9 & 1;
  v10 = sub_2663854AC(inited);
  swift_setDeallocating();
  sub_266352EF4(inited + 32);
  return v10;
}

void sub_266387A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "NowPlayingAppSignal#NowPlayingClient#nowPlaying...", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_2663880F8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2664365E0;
  aBlock[3] = &block_descriptor_18;
  v15 = _Block_copy(aBlock);

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v15);
}

uint64_t sub_266387CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v32 = sub_26632958C(1015);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v9;
    v21 = v11;
    v22 = a3;
    v23 = v4;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingAppSignal#signal", v20, 2u);
    v25 = v24;
    v4 = v23;
    a3 = v22;
    v11 = v21;
    v9 = v31;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v26 = swift_allocObject();
  v27 = v33;
  v26[2] = v32;
  v26[3] = v27;
  v26[4] = v34;

  sub_2664DE428();
  (*(v5 + 16))(v9, v11, v4);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_266352BC8;
  *(v29 + 24) = v26;
  (*(v5 + 32))(v29 + v28, v9, v4);

  sub_266387A48(a3, sub_266388074, v29);

  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_266388074(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2664DE438() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_266386F30(a1, a2, v6, v7, v8);
}

uint64_t sub_2663881B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v33 = a8;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v35 = a3;
  v37 = a6;
  v38 = a13;
  v36 = a12;
  v40 = a10;
  v41 = a14;
  v39 = a9;
  v16 = sub_2664DFE08();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v30 - v21;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v17 + 16))(v20, v22, v16);
  v24 = (*(v17 + 80) + 33) & ~*(v17 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = v35;
  (*(v17 + 32))(v25 + v24, v20);
  v26 = (v25 + ((v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;

  sub_2664E0848();
  sub_2664DFDC8();
  v28 = swift_allocObject();
  *(v28 + 16) = v38;
  *(v28 + 24) = v25;

  v39(v41, v28);

  return (*(v17 + 8))(v22, v16);
}

uint64_t sub_266388448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t sub_266388480()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0x52656D614E707041, 0xEF7265766C6F7365, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073038 = v10;
  return result;
}

id static AppNameResolver.queue.getter()
{
  if (qword_280071B58 != -1)
  {
    swift_once();
  }

  v1 = qword_280073038;

  return v1;
}

uint64_t sub_26638867C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A0, &qword_2664E9288);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385F14(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000002664F5D40;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001DLL, 0x80000002664F5D40, 1, v3);
  *(v0 + 24) = result;
  off_280073040 = v0;
  return result;
}

uint64_t sub_266388790()
{
  v5 = &type metadata for DeviceProvider;
  v6 = &protocol witness table for DeviceProvider;
  if (qword_280F90D58 != -1)
  {
    swift_once();
  }

  LODWORD(v4) = dword_280F90D60;
  BYTE4(v4) = byte_280F90D64;
  v2 = &type metadata for FeatureFlagProvider;
  v3 = &protocol witness table for FeatureFlagProvider;
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v1 = qword_280F905C8;
  *(&v1 + 5) = *(&qword_280F905C8 + 5);
  sub_2662A8618(&v4, &unk_280073048);
  return sub_2662A8618(&v1, &unk_280073070);
}

uint64_t AppNameResolver.init(deviceProvider:featureFlagProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2662A8618(a1, a3);

  return sub_2662A8618(a2, a3 + 40);
}

uint64_t static AppNameResolver.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280071B68 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_266388958(&unk_280073048, v2);
}

uint64_t AppNameResolver.localizedAppName(for:helper:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v23 = a1;
  v24 = a2;
  v7 = sub_2664DFE08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = qword_280F91508;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "appNameResolverLocalizedAppName";
  *(v19 + 24) = 31;
  *(v19 + 32) = 2;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v20 = (v19 + v18);
  *v20 = sub_26633A764;
  v20[1] = v14;

  sub_2664E0848();
  sub_2664DFDC8();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_266389984;
  *(v21 + 24) = v19;

  sub_266388C68(sub_266389988, v21, v23, v24, v26, v25);

  (*(v8 + 8))(v13, v7);
}

uint64_t sub_266388C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v30 = a3;
  v10 = sub_2664E0038();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2664E00B8();
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v32);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = qword_280071B58;

  if (v20 != -1)
  {
    swift_once();
  }

  sub_266388958(a5, v37);
  sub_266389A90(a6, v35);
  v21 = swift_allocObject();
  v22 = v37[3];
  *(v21 + 64) = v37[2];
  *(v21 + 80) = v22;
  v23 = v37[4];
  v24 = v37[1];
  *(v21 + 32) = v37[0];
  *(v21 + 48) = v24;
  v25 = v35[0];
  v26 = v35[1];
  *(v21 + 96) = v23;
  *(v21 + 112) = v25;
  v27 = v31;
  *(v21 + 16) = v30;
  *(v21 + 24) = v27;
  *(v21 + 128) = v26;
  *(v21 + 144) = v36;
  *(v21 + 152) = sub_266389A58;
  *(v21 + 160) = v19;
  aBlock[4] = sub_266389B00;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_19;
  v28 = _Block_copy(aBlock);

  sub_2664E0068();
  v33 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v18, v14, v28);
  _Block_release(v28);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v32);
}

uint64_t sub_266388FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280071B60 != -1)
  {
    swift_once();
  }

  v12 = off_280073040;
  v23[0] = a1;
  v23[1] = a2;
  sub_266388958(a3, v22);
  sub_266389A90(a4, v20);
  v13 = swift_allocObject();
  v14 = v22[3];
  *(v13 + 48) = v22[2];
  *(v13 + 64) = v14;
  *(v13 + 80) = v22[4];
  v15 = v22[1];
  *(v13 + 16) = v22[0];
  *(v13 + 32) = v15;
  *(v13 + 96) = a1;
  *(v13 + 104) = a2;
  v16 = v20[1];
  *(v13 + 112) = v20[0];
  *(v13 + 128) = v16;
  *(v13 + 144) = v21;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = *(*v12 + 160);

  v18(v23, sub_266389B14, v13, 0, 1, sub_26633C4E4, v17);
}

uint64_t sub_266389150(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v40 = a6;
  v42 = a2;
  v43 = a1;
  v41 = sub_2664DFE38();
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = a3[3];
  v15 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v16 = (*(v15 + 8))(v14, v15);
  if ((v16 & 1) == 0)
  {
    v17 = a4;
    goto LABEL_7;
  }

  v44 = a4;
  v45 = a5;
  MEMORY[0x28223BE20](v16);
  *(&v40 - 2) = &v44;
  v17 = a4;
  if (sub_2662AA720(sub_2662AA7CC, (&v40 - 4), &unk_2877E4818))
  {
LABEL_7:
    v23 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v24 = v9;
    v25 = sub_2663898A8(v17, a5, 0);
    v26 = [v25 localizedName];

    v27 = sub_2664E02C8();
    v29 = v28;

    v30 = v41;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v30, qword_280F914F0);
    swift_beginAccess();
    (*(v24 + 16))(v13, v31, v30);

    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v40 = v13;
      v35 = v17;
      v36 = v34;
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_2662A320C(v35, a5, v48);
      *(v36 + 12) = 2080;

      v38 = sub_2662A320C(v27, v29, v48);

      *(v36 + 14) = v38;
      _os_log_impl(&dword_26629C000, v32, v33, "For appIdentifier: %s computed localizedName: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);

      (*(v24 + 8))(v40, v30);
    }

    else
    {

      (*(v24 + 8))(v13, v30);
    }

    v48[0] = v27;
    v48[1] = v29;
    v43(v48);
  }

  sub_266389A90(v40, &v44);
  v18 = v46;
  if (v46)
  {
    v19 = v47;
    __swift_project_boxed_opaque_existential_1(&v44, v46);
    v20 = (*(v19 + 8))(a4, a5, v18, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    if (v22)
    {
      v44 = v20;
      v45 = v22;
      v43(&v44);
    }
  }

  else
  {
    sub_266389B24(&v44);
  }

  v44 = 0;
  v45 = 0;
  return (v43)(&v44);
}

uint64_t sub_266389794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v14 = a1;
  v15 = a2;
  v16 = v5;
  v17 = a3;

  sub_2663881B4("appNameResolverLocalizedAppName", 31, 2, sub_26633C4E4, v11, " enableTelemetry=YES ", 21, 2, sub_26638999C, v13, &unk_2877EBDA0, &unk_2877EBDC8, sub_266389B8C, sub_266389B90);
}

id sub_2663898A8(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2664E02A8();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2664DE1A8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2663899A8(uint64_t a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2663E87E0(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_266389A58(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_266389A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073098, &unk_2664E9278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266389B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073098, &unk_2664E9278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static SABaseClientBoundCommand.createPunchoutCommand(to:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2662A320C(a1, a2, &v23);
    _os_log_impl(&dword_26629C000, v14, v15, "Creating punchout command for URL: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266784AD0](v17, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v18 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_2664DE258();
  v19 = sub_2664DE268();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v7, 1, v19) != 1)
  {
    v21 = sub_2664DE208();
    (*(v20 + 8))(v7, v19);
  }

  [v18 setPunchOutUri_];

  return v18;
}

uint64_t sub_266389EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2664DFE08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_2664E02A8();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_2664E02A8();
    v42 = [v9 BOOLForKey_];
  }

  else
  {
    v42 = 0;
  }

  v41 = sub_26638A3EC();
  v40 = sub_26638A5EC();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v11 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  sub_26638A7EC(&v43);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v3 + 8))(v6, v2);
  v39 = v43;
  v12 = sub_26629FC7C(0xD00000000000001BLL, 0x80000002664F6000, 0x6964754169726953, 0xE90000000000006FLL);
  v13 = sub_26638AA88();
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_2664E02A8();
  v16 = [v14 initWithSuiteName_];

  if (v16)
  {
    v17 = sub_2664E02A8();
    v18 = [v16 BOOLForKey_];
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = sub_2664E02A8();
  v21 = [v19 initWithSuiteName_];

  if (v21)
  {
    v22 = sub_2664E02A8();
    v23 = [v21 BOOLForKey_];
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_2664E02A8();
  v26 = [v24 initWithSuiteName_];

  if (v26)
  {
    v27 = sub_2664E02A8();
    v28 = [v26 BOOLForKey_];
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v30 = sub_2664E02A8();
  v31 = [v29 initWithSuiteName_];

  if (v31)
  {
    v32 = sub_2664E02A8();
    v33 = [v31 BOOLForKey_];
  }

  else
  {
    v33 = 0;
  }

  v34 = v12 & 1;
  v35 = v40 & 1;
  v36 = v41 & 1;
  result = sub_26638AED8();
  *a1 = 0;
  *(a1 + 2) = v42;
  *(a1 + 3) = v36;
  *(a1 + 4) = v35;
  *(a1 + 5) = v39;
  *(a1 + 6) = v34;
  *(a1 + 7) = v13 & 1;
  *(a1 + 8) = v18;
  *(a1 + 9) = v23;
  *(a1 + 10) = v28;
  *(a1 + 11) = v33;
  *(a1 + 12) = result & 1;
  return result;
}

uint64_t sub_26638A3EC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26629FC7C(0xD000000000000015, 0x80000002664F6140, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "FeatureFlags#isHybridOnMacEnabled: %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_26638A5EC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26629FC7C(0xD00000000000001ALL, 0x80000002664F6120, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "FeatureFlags#isSwitchNewsSourcePreferenceEnabled: %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_26638A7EC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_26629FC7C(7174480, 0xE300000000000000, 0x495569726953, 0xE600000000000000))
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v9 = sub_2664E02A8();
    v10 = [v8 initWithSuiteName_];

    if (v10)
    {
      v11 = sub_2664E02A8();
      v7 = [v10 BOOLForKey_];
    }

    else
    {
      v7 = 0;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v7;
    _os_log_impl(&dword_26629C000, v13, v14, "FeatureFlags#pymEnabled pym enabled: %{BOOL}d", v15, 8u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_26638AA88()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2664E02A8();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_2664E02A8();
    v9 = [v7 BOOLForKey_];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_26629FC7C(0x656C65735F707061, 0xED00006E6F697463, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v11, v0);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109632;
    *(v14 + 4) = v10 & 1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = v9;
    *(v14 + 14) = 1024;
    *(v14 + 16) = (v10 | v9) & 1;
    _os_log_impl(&dword_26629C000, v12, v13, "FeatureFlags#isAppSelectionEnabled featureToggle=%{BOOL}d, userDefaults=%{BOOL}d. enabled=%{BOOL}d", v14, 0x14u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return (v10 | v9) & 1;
}

uint64_t FeatureFlagProvider.forceResolveBundleId.getter()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2664E02C8();

  return v5;
}

uint64_t sub_26638AED8()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = &type metadata for Features;
  v17[4] = sub_26638EB20();
  LOBYTE(v17[0]) = 3;
  v5 = sub_2664DF088();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_2664E02A8();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_2664E02A8();
    v10 = [v8 BOOLForKey_];
  }

  else
  {
    v10 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v11, v0);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = v5 & 1;
    *(v14 + 8) = 1024;
    *(v14 + 10) = v10;
    _os_log_impl(&dword_26629C000, v12, v13, "FeatureFlagProvider#isSiriForAirPlayEnabled featureFlag: %{BOOL}d, default: %{BOOL}d", v14, 0xEu);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return (v5 | v10) & 1;
}

uint64_t FeatureFlagProvider.appTrainingDisambiguationLastUsed.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_2664E02A8();
    [v2 doubleForKey_];
  }

  return sub_2664DE3D8();
}

uint64_t sub_26638B288(uint64_t a1)
{
  v2 = sub_2664DE438();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return FeatureFlagProvider.appTrainingDisambiguationLastUsed.setter(v5);
}

uint64_t FeatureFlagProvider.appTrainingDisambiguationLastUsed.setter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    sub_2664DE3E8();
    v6 = v5;
    v7 = sub_2664E02A8();
    [v4 setDouble:v7 forKey:v6];
  }

  v8 = sub_2664DE438();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*FeatureFlagProvider.appTrainingDisambiguationLastUsed.modify(uint64_t *a1))(void *a1, char a2)
{
  v2 = sub_2664DE438();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  v4 = *(v3 + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[2] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[3] = v5;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_2664E02A8();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_2664E02A8();
    [v8 doubleForKey_];
  }

  sub_2664DE3D8();
  return sub_26638B5E0;
}

void sub_26638B5E0(void *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v3 = a1[3];
    v5 = *a1;
    v6 = a1[1];
    (*(v6 + 16))(v4, v3, *a1);
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = sub_2664E02A8();
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      sub_2664DE3E8();
      v11 = v10;
      v12 = sub_2664E02A8();
      [v9 setDouble:v12 forKey:v11];
    }

    v13 = *(v6 + 8);
    v13(v4, v5);
    v13(v3, v5);
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v15 = sub_2664E02A8();
    v16 = [v14 initWithSuiteName_];

    v3 = a1[3];
    if (v16)
    {
      v17 = a1[3];
      sub_2664DE3E8();
      v19 = v18;
      v20 = sub_2664E02A8();
      [v16 setDouble:v20 forKey:v19];
    }

    v4 = a1[2];
    (*(a1[1] + 8))(v3, *a1);
  }

  free(v3);

  free(v4);
}

uint64_t FeatureFlagProvider.lastBundleIdentifier.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2664E02C8();

  return v5;
}

void FeatureFlagProvider.lastBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2664E02A8();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    if (a2)
    {
      v6 = sub_2664E02A8();
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_2664E02A8();
    [v5 setObject:v6 forKey:v7];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void (*FeatureFlagProvider.lastBundleIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = FeatureFlagProvider.lastBundleIdentifier.getter();
  a1[1] = v3;
  return sub_26638BA44;
}

void sub_26638BA44(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {
    v4 = a1[1];

    FeatureFlagProvider.lastBundleIdentifier.setter(v3, v2);
  }

  else
  {
    FeatureFlagProvider.lastBundleIdentifier.setter(*a1, v2);
  }
}

uint64_t FeatureFlagProvider.appSelectionLastUsed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4 && (v5 = sub_2664E02A8(), [v4 doubleForKey_], v7 = v6, v4, v5, v7 != 0.0))
  {
    sub_2664DE3D8();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_2664DE438();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t sub_26638BBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_26638119C(a1, &v7 - v4);
  return FeatureFlagProvider.appSelectionLastUsed.setter(v5);
}

uint64_t FeatureFlagProvider.appSelectionLastUsed.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26638119C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2662A9238(v5, &qword_2800737D0, qword_2664E4FD0);
    v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v12 = sub_2664E02A8();
    v13 = [v11 initWithSuiteName_];

    if (v13)
    {
      v14 = sub_2664E02A8();
      [v13 removeObjectForKey_];
    }

    return sub_2662A9238(a1, &qword_2800737D0, qword_2664E4FD0);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v17 = sub_2664E02A8();
    v18 = [v16 initWithSuiteName_];

    if (v18)
    {
      sub_2664DE3E8();
      v20 = v19;
      v21 = sub_2664E02A8();
      [v18 setDouble:v21 forKey:v20];
    }

    sub_2662A9238(a1, &qword_2800737D0, qword_2664E4FD0);
    return (*(v7 + 8))(v10, v6);
  }
}

void (*FeatureFlagProvider.appSelectionLastUsed.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  FeatureFlagProvider.appSelectionLastUsed.getter(v4);
  return sub_26638BFF4;
}

void sub_26638BFF4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_26638119C(v3, v2);
    FeatureFlagProvider.appSelectionLastUsed.setter(v2);
    sub_2662A9238(v3, &qword_2800737D0, qword_2664E4FD0);
  }

  else
  {
    FeatureFlagProvider.appSelectionLastUsed.setter(v3);
  }

  free(v3);

  free(v2);
}

id FeatureFlagProvider.appSelectionUsageCounter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 integerForKey_];

  return v4;
}

void sub_26638C12C(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    v6 = [v4 integerForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_26638C1F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:v1 forKey:v5];
  }
}

void FeatureFlagProvider.appSelectionUsageCounter.setter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:a1 forKey:v5];
  }
}

void (*FeatureFlagProvider.appSelectionUsageCounter.modify(void *a1))(uint64_t *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    v6 = [v4 integerForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_26638C4A8;
}

void sub_26638C4A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_2664E02A8();
    [v5 setInteger:v1 forKey:v4];
  }
}

uint64_t sub_26638C5B4(char a1, const char *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = &type metadata for Features;
  v16[4] = sub_26638EB20();
  LOBYTE(v16[0]) = a1;
  v9 = sub_2664DF088();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 & 1;
    _os_log_impl(&dword_26629C000, v11, v12, a2, v13, 8u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return v9 & 1;
}

uint64_t FeatureFlagProvider.isExpandedFavoritesEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26629FC7C(0xD000000000000012, 0x80000002664F5E40, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "FeatureFlagProvider#isExpandedFavoritesEnabled#SiriAudio %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t FeatureFlagProvider.isSiriSuggestionsEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26629FC7C(0xD000000000000010, 0x80000002664F5E60, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "FeatureFlagProvider#isSiriSuggestionsEnabled#SiriAudio %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t FeatureFlagProvider.isModernConcurrencyEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26629FC7C(0xD000000000000012, 0x80000002664F5E80, 0x6964754169726953, 0xE90000000000006FLL);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "FeatureFlagProvider#ModernConcurrencyEnabled#SiriAudio %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

id FeatureFlagProvider.useOpenIntentForSearch.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 BOOLForKey_];

  return v4;
}

unint64_t FeatureFlagProvider.resolvedAppHistory.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2664E02A8();
  v7 = [v5 initWithSuiteName_];

  if (!v7)
  {
    v22 = 0u;
    v23 = 0u;
LABEL_9:
    sub_2662A9238(&v22, &unk_280074250, &unk_2664E3680);
    goto LABEL_10;
  }

  v8 = sub_2664E02A8();
  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (!*(&v21 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730B0, &qword_2664E92A8);
  if (swift_dynamicCast())
  {
    v10 = v20;
    goto LABEL_11;
  }

LABEL_10:
  v10 = sub_266386024(MEMORY[0x277D84F90]);
LABEL_11:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v11, v0);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v20 = v15;
    *v14 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
    v16 = sub_2664E01D8();
    v18 = sub_2662A320C(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_26629C000, v12, v13, "FeatureFlagProvider#resolvedAppHistory result: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v10;
}

void FeatureFlagProvider.resolvedAppHistory.setter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);

  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
    v10 = sub_2664E01D8();
    v12 = sub_2662A320C(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26629C000, v6, v7, "FeatureFlagProvider#resolvedAppHistory setting to new value: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266784AD0](v9, -1, -1);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_2664E02A8();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730A8, &qword_2664E92A0);
    v16 = sub_2664E01A8();

    v17 = sub_2664E02A8();
    [v15 setObject:v16 forKey:v17];
  }

  else
  {
  }
}

void (*FeatureFlagProvider.resolvedAppHistory.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = FeatureFlagProvider.resolvedAppHistory.getter();
  return sub_26638D56C;
}

void sub_26638D56C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;

    FeatureFlagProvider.resolvedAppHistory.setter();
  }

  else
  {
    v4 = *a1;
    FeatureFlagProvider.resolvedAppHistory.setter();
  }
}

uint64_t FeatureFlagProvider.classicalAppBundleOverride.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2664E02C8();

  return v5;
}

id FeatureFlagProvider.classicalSnippetBundleOverride.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2664E02A8();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_2664E02A8();
    v9 = [v7 stringForKey_];

    if (v9)
    {
      v7 = sub_2664E02C8();
      v11 = v10;

      goto LABEL_6;
    }

    v7 = 0;
  }

  v11 = 0;
LABEL_6:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v12, v0);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v0;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    if (v11)
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    if (v11)
    {
      v19 = v11;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v20 = sub_2662A320C(v18, v19, &v24);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_26629C000, v13, v14, "FeatureFlagProvider#classicalSnippetBundleOverride %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266784AD0](v17, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);

    (*(v1 + 8))(v4, v23);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return v7;
}

id FeatureFlagProvider.isSonicResponseOnlyEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2664E02A8();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_2664E02A8();
    v9 = [v7 BOOLForKey_];
  }

  else
  {
    v9 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v10, v0);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_26629C000, v11, v12, "FeatureFlagProvider#isSonicResponseOnlyEnabled#SiriAudio %{BOOL}d", v13, 8u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v9;
}

id FeatureFlagProvider.classicalTCCRejectedCounter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 integerForKey_];

  return v4;
}

void sub_26638DCE0(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    v6 = [v4 integerForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_26638DDA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:v1 forKey:v5];
  }
}

void FeatureFlagProvider.classicalTCCRejectedCounter.setter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:a1 forKey:v5];
  }
}

void (*FeatureFlagProvider.classicalTCCRejectedCounter.modify(void *a1))(uint64_t *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    v6 = [v4 integerForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_26638E05C;
}

void sub_26638E05C(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_2664E02A8();
    [v5 setInteger:v1 forKey:v4];
  }
}

uint64_t (*sub_26638E1E8(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FeatureFlagProvider.appTrainingDisambiguationLastUsed.modify(v2);
  return sub_26638EDB8;
}

void (*sub_26638E288(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = FeatureFlagProvider.lastBundleIdentifier.getter();
  a1[1] = v3;
  return sub_26638BA44;
}

void (*sub_26638E300(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  FeatureFlagProvider.appSelectionLastUsed.getter(v4);
  return sub_26638BFF4;
}

id sub_26638E3B4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 integerForKey_];

  return v4;
}

void sub_26638E478(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:a1 forKey:v5];
  }
}

uint64_t (*sub_26638E560(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FeatureFlagProvider.appSelectionUsageCounter.modify(v2);
  return sub_26638E5C8;
}

id sub_26638E674()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void (*sub_26638E768(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = FeatureFlagProvider.resolvedAppHistory.getter();
  return sub_26638D56C;
}

id sub_26638E804()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2664E02A8();
  v4 = [v2 integerForKey_];

  return v4;
}

void sub_26638E8C8(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2664E02A8();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_2664E02A8();
    [v4 setInteger:a1 forKey:v5];
  }
}

uint64_t (*sub_26638E9B0(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FeatureFlagProvider.classicalTCCRejectedCounter.modify(v2);
  return sub_26638EDB8;
}

void sub_26638EA18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}