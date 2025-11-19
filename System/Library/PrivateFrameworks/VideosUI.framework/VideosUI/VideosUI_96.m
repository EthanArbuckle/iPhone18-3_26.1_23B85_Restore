void sub_1E3E18440()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v358 - v10;
  v393 = MEMORY[0x1E69E7CC0];
  v12 = sub_1E324FBDC();
  v13 = *(v4 + 16);
  v368 = v12;
  v370 = v4 + 16;
  v369 = v13;
  v13(v11);
  v14 = v0;
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  v17 = os_log_type_enabled(v15, v16);
  v18 = &qword_1ECF39000;
  v19 = MEMORY[0x1E69E7D40];
  v380 = v1;
  v381 = v14;
  if (v17)
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v21 = OUTLINED_FUNCTION_100();
    v389 = v21;
    *v20 = 136315138;
    OUTLINED_FUNCTION_6_41();
    LOBYTE(v385) = (*(v22 + 440))();
    sub_1E3E25614();
    v23 = sub_1E4207944();
    v25 = sub_1E3270FC8(v23, v24, &v389);

    *(v20 + 4) = v25;
    OUTLINED_FUNCTION_235(&dword_1E323F000, v26, v27, "RootSplitViewController:: updateUI, mode=%s");
    __swift_destroy_boxed_opaque_existential_1(v21);
    v18 = &qword_1ECF39000;
    OUTLINED_FUNCTION_6_0();
    v14 = v381;
    OUTLINED_FUNCTION_6_0();
  }

  v367 = *(v4 + 8);
  v367(v11, v2);
  v28 = v4;
  v29 = *&v14[v18[154]];
  OUTLINED_FUNCTION_6_41();
  v30 += 55;
  v31 = *v30;
  v32 = (*v30)();
  v33 = sub_1E374E8E4(v32, 2);
  v371 = v2;
  v372 = v29;
  if (!v33)
  {
    v236 = v31();
    sub_1E374E8E4(v236, 1);
    OUTLINED_FUNCTION_154_5();
    v359 = v4;
    if ((v237 & 1) == 0)
    {
      v42 = MEMORY[0x1E69E7CC0];
      v38 = MEMORY[0x1E69E7D40];
      goto LABEL_123;
    }

    v38 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v239 = (*(v238 + 736))();
    v240 = sub_1E32AE9B0(v239);
    if (!v240)
    {

      v42 = MEMORY[0x1E69E7CC0];
      goto LABEL_123;
    }

    if (v240 < 1)
    {
      goto LABEL_142;
    }

    OUTLINED_FUNCTION_8_9();
    v378 = (v239 & 0xC000000000000001);
    v373 = v28 + 8;
    v42 = MEMORY[0x1E69E7CC0];
    v242 += 82;
    v377 = *v242;
    v376 = v242;
    v361 = @"search";
    v360 = @"UIA.TV.Tab.";
    *&v243 = 136315138;
    v362 = v243;
    v375 = v239;
    v374 = v244;
    while (1)
    {
      v380 = v241;
      if (v378)
      {
        v245 = MEMORY[0x1E6911E60](v241, v239);
      }

      else
      {
        v245 = *(v239 + 8 * v241 + 32);
      }

      v246 = v245;
      v247 = &v245[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v248 = *&v245[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v249 = *&v245[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      OUTLINED_FUNCTION_143();
      v250();
      OUTLINED_FUNCTION_134_2();
      v389 = v248;
      v390 = v249;
      sub_1E3280A90(0, &qword_1EE23B250);
      sub_1E3CA4D00();

      v251 = v385;
      if (v385)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_138_1();
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_56_20();
          type metadata accessor for RootHostingViewController();
          v252 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
          OUTLINED_FUNCTION_8_9();
          v254 = *(v253 + 152);
          v255 = v251;
          v379 = v252;
          v254(v14);

          v256 = *v247;
          v257 = v247[1];
          v259 = v256 == sub_1E4205F14() && v257 == v258;
          v364 = v255;
          if (v259)
          {
          }

          else
          {
            OUTLINED_FUNCTION_116_10();
            v260 = sub_1E42079A4();

            if ((v260 & 1) == 0)
            {
              v261 = *&v246[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title + 8];
              v262 = OUTLINED_FUNCTION_231_0();

              v263 = sub_1E395DF10(v262, &off_1F5D824A8);
              v264 = *v247;
              v265 = v247[1];
              OUTLINED_FUNCTION_4_0();
              v266 = swift_allocObject();
              v267 = v379;
              *(v266 + 16) = v379;
              objc_allocWithZone(MEMORY[0x1E69DCFE0]);
              v268 = v267;

              v269 = sub_1E3E25A30;
              v270 = v363;
              v271 = v261;
              v272 = v263;
              v273 = v264;
              v274 = v265;
              v275 = v266;
              v276 = &block_descriptor_109_2;
LABEL_108:
              v295 = sub_1E3E23F9C(v270, v271, v272, v273, v274, v269, v275, v276);
              v296 = v365;
              OUTLINED_FUNCTION_141_8();
              v298 = *(v297 - 256);
              OUTLINED_FUNCTION_22_77();
              v299();
              v300 = v295;
              v301 = v246;
              v302 = sub_1E41FFC94();
              v303 = sub_1E4206814();

              if (OUTLINED_FUNCTION_84_1())
              {
                OUTLINED_FUNCTION_6_21();
                v304 = OUTLINED_FUNCTION_16_15();
                OUTLINED_FUNCTION_165_7(v304);

                v305 = OUTLINED_FUNCTION_39_0();
                v308 = sub_1E3270FC8(v305, v306, v307);

                *(v298 + 4) = v308;
                OUTLINED_FUNCTION_53_15(&dword_1E323F000, v302, v303, "RootSplitViewController:: updateUI, mode=tabbar, tabId=%s)");
                __swift_destroy_boxed_opaque_existential_1(v296);
                OUTLINED_FUNCTION_7_9();
                OUTLINED_FUNCTION_51_2();
              }

              else
              {

                OUTLINED_FUNCTION_74();
              }

              OUTLINED_FUNCTION_151_7();
              v309();
              v310 = v364;
              OUTLINED_FUNCTION_176();
              v311 = sub_1E4205F14();
              v312 = *v247;
              v313 = v247[1];
              v389 = v311;
              v390 = v314;
              v315 = v300;

              MEMORY[0x1E69109E0](v312, v313);

              sub_1E37FB7F0(v389, v390, v315, &selRef_setAccessibilityIdentifier_);

              MEMORY[0x1E6910BF0]();
              OUTLINED_FUNCTION_193_2();
              v318 = *(v316 + 16);
              v317 = *(v316 + 24);
              if (v318 >= v317 >> 1)
              {
                OUTLINED_FUNCTION_35(v317);
                sub_1E42062F4();
              }

              sub_1E4206324();

              v42 = v393;
              OUTLINED_FUNCTION_154_5();
              v14 = v381;
              goto LABEL_114;
            }
          }

          v286 = *&v246[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title + 8];
          v287 = OUTLINED_FUNCTION_231_0();

          v288 = sub_1E395DF10(v287, &off_1F5D824A8);
          v290 = *v247;
          v289 = v247[1];
          OUTLINED_FUNCTION_4_0();
          v291 = swift_allocObject();
          v292 = v379;
          *(v291 + 16) = v379;
          v293 = objc_allocWithZone(MEMORY[0x1E69DCF20]);
          OUTLINED_FUNCTION_38();

          v294 = v292;
          v269 = sub_1E3E25668;
          v270 = v363;
          v271 = v286;
          v272 = v288;
          v273 = v290;
          v274 = v289;
          v275 = v291;
          v276 = &block_descriptor_106_0;
          goto LABEL_108;
        }

        v14 = v381;
      }

      OUTLINED_FUNCTION_141_8();
      OUTLINED_FUNCTION_22_77();
      v277();
      v278 = v246;
      v279 = sub_1E41FFC94();
      v280 = sub_1E4206814();

      if (OUTLINED_FUNCTION_84_1())
      {
        OUTLINED_FUNCTION_6_21();
        v281 = OUTLINED_FUNCTION_16_15();
        OUTLINED_FUNCTION_165_7(v281);
        v282 = *v247;
        v283 = v247[1];

        v284 = sub_1E3270FC8(v282, v283, &v389);
        v14 = v381;

        *(v248 + 4) = v284;
        OUTLINED_FUNCTION_53_15(&dword_1E323F000, v279, v280, "RootSplitViewController:: updateUI, mode=tabbar, missing controller, tabId=%s");
        __swift_destroy_boxed_opaque_existential_1(v249);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_51_2();
      }

      else
      {
      }

      OUTLINED_FUNCTION_123_1();
      OUTLINED_FUNCTION_151_7();
      v285();
      OUTLINED_FUNCTION_154_5();
      v38 = MEMORY[0x1E69E7D40];
LABEL_114:
      v239 = v375;
      v241 = v380 + 1;
      if (v374 == v380 + 1)
      {
LABEL_120:

        goto LABEL_123;
      }
    }
  }

  OUTLINED_FUNCTION_6_41();
  v34 += 79;
  v35 = *v34;
  v36 = *((*v34)() + 16);

  if (!v36)
  {
    OUTLINED_FUNCTION_22_77();
    v319();
    v320 = sub_1E41FFC94();
    v321 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v321))
    {
      v322 = OUTLINED_FUNCTION_125_0();
      *v322 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v323, v324, v325, v326, v322, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    OUTLINED_FUNCTION_132_2();
    v327();
LABEL_137:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v38 = v19;
  v359 = v28;
  v39 = (v35)(v37);
  v366 = *(v39 + 16);
  if (!v366)
  {

    v42 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_154_5();
LABEL_123:
    OUTLINED_FUNCTION_141_8();
    OUTLINED_FUNCTION_22_77();
    v328();
    v329 = v14;

    v330 = sub_1E41FFC94();
    v331 = sub_1E4206814();

    if (os_log_type_enabled(v330, v331))
    {
      LODWORD(v381) = v331;
      v332 = swift_slowAlloc();
      v333 = swift_slowAlloc();
      v334 = v372;
      v380 = v333;
      v389 = v333;
      *v332 = 136315394;
      LOBYTE(v385) = (*((*v38 & *v334) + 0x1B8))();
      sub_1E3E25614();
      v335 = sub_1E4207944();
      sub_1E3270FC8(v335, v336, &v389);
      OUTLINED_FUNCTION_50();

      *(v332 + 4) = &v385;
      *(v332 + 12) = 2080;
      v337 = sub_1E32AE9B0(v42);
      v338 = MEMORY[0x1E69E7CC0];
      if (v337)
      {
        v339 = v337;
        v385 = MEMORY[0x1E69E7CC0];
        sub_1E377FD30(0, v337 & ~(v337 >> 63), 0);
        if (v339 < 0)
        {
          goto LABEL_141;
        }

        v378 = v330;
        v379 = v329;
        v340 = 0;
        v338 = v385;
        do
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v341 = MEMORY[0x1E6911E60](v340, v42);
          }

          else
          {
            v341 = *(v42 + 8 * v340 + 32);
          }

          v342 = v341;
          v343 = [v341 identifier];
          v344 = sub_1E4205F14();
          v346 = v345;

          v385 = v338;
          v348 = *(v338 + 16);
          v347 = *(v338 + 24);
          if (v348 >= v347 >> 1)
          {
            v350 = OUTLINED_FUNCTION_35(v347);
            sub_1E377FD30(v350, v348 + 1, 1);
            v338 = v385;
          }

          ++v340;
          *(v338 + 16) = v348 + 1;
          v349 = v338 + 16 * v348;
          *(v349 + 32) = v344;
          *(v349 + 40) = v346;
        }

        while (v339 != v340);
        OUTLINED_FUNCTION_154_5();
        v330 = v378;
        v329 = v379;
      }

      v352 = MEMORY[0x1E6910C30](v338, MEMORY[0x1E69E6158]);
      v354 = v353;

      v355 = sub_1E3270FC8(v352, v354, &v389);

      *(v332 + 14) = v355;

      _os_log_impl(&dword_1E323F000, v330, v381, "RootSplitViewController:: Pad: update UI: mode=%s, with tabs %s", v332, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();

      OUTLINED_FUNCTION_132_2();
      v356();
    }

    else
    {

      OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_132_2();
      v351();
    }

    sub_1E3280A90(0, &unk_1ECF39558);
    v357 = sub_1E42062A4();

    [v329 setTabs:v357 animated:1];

    goto LABEL_137;
  }

  v40 = 0;
  v365 = v39 + 32;
  v375 = @"search";
  *&v362 = @"UIA.TV.Tab.";
  v41 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v364 = v39;
  while (1)
  {
    if (v40 >= *(v39 + 16))
    {
      goto LABEL_140;
    }

    v373 = v40;
    sub_1E38C6028(v365 + 40 * v40, &v389);
    OUTLINED_FUNCTION_70(&v389);
    v43 = OUTLINED_FUNCTION_26_1();
    if (v44(v43))
    {
      break;
    }

    v94 = OUTLINED_FUNCTION_9_141(&v389);
    v95(v94);
    OUTLINED_FUNCTION_26_90();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    OUTLINED_FUNCTION_156_1();
    sub_1E4207604();
    OUTLINED_FUNCTION_12_1();

    v97 = *(AssociatedTypeWitness + 16);
    if (v97)
    {
      v380 = AssociatedTypeWitness;
      v98 = AssociatedTypeWitness + 32;
      while (1)
      {
        sub_1E38C6028(v98, &v385);
        v99 = OUTLINED_FUNCTION_203_2();
        sub_1E3E1A488(v99, v100);
        v102 = v101;
        __swift_project_boxed_opaque_existential_1(&v385, v387);
        v103 = OUTLINED_FUNCTION_3_194();
        v105 = v104(v103);
        v107 = v106;
        if (v105 == sub_1E4205F14() && v107 == v108)
        {
        }

        else
        {
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_116_10();
          v110 = sub_1E42079A4();

          if ((v110 & 1) == 0)
          {
            v111 = v387;
            OUTLINED_FUNCTION_0_257(&v385, v387);
            v112(v111);
            sub_1E4205ED4();
            OUTLINED_FUNCTION_11_5();

            v113 = [v14 tabForIdentifier_];

            if (v113)
            {
              v114 = [v113 parent];
              if (!v114)
              {
                OUTLINED_FUNCTION_9_13();
                v157 = *(v159 + 200);
                v158 = v113;
                v135 = v158;
                goto LABEL_44;
              }

              v115 = v114;
            }

            OUTLINED_FUNCTION_34_7(&v385, v387);
            v116 = OUTLINED_FUNCTION_38();
            v117(v116);
            OUTLINED_FUNCTION_9_9();
            OUTLINED_FUNCTION_9_13();
            (*(v118 + 200))();
            v14 = v387;
            v119 = OUTLINED_FUNCTION_203_2();
            OUTLINED_FUNCTION_0_257(v119, v120);
            v121(v14);
            OUTLINED_FUNCTION_108_3();
            v122 = objc_allocWithZone(MEMORY[0x1E69DCFE0]);
            v123 = OUTLINED_FUNCTION_91_16();
            v130 = sub_1E3E23F9C(v123, v124, v125, v126, v127, v128, v129, &block_descriptor_109_2);
            goto LABEL_37;
          }
        }

        v131 = v387;
        OUTLINED_FUNCTION_0_257(&v385, v387);
        v132(v131);
        sub_1E4205ED4();
        OUTLINED_FUNCTION_11_5();

        v133 = [v14 tabForIdentifier_];

        if (v133)
        {
          objc_opt_self();
          OUTLINED_FUNCTION_20_2();
          v134 = swift_dynamicCastObjCClass();
          if (v134)
          {
            v135 = v134;
            v136 = [v134 parent];
            if (!v136)
            {
              OUTLINED_FUNCTION_9_13();
              v157 = *(v156 + 200);
              v158 = v133;
LABEL_44:
              v160 = v157(v158);
              [v135 setImage_];

              v161 = v387;
              OUTLINED_FUNCTION_34_7(&v385, v387);
              v162 = OUTLINED_FUNCTION_38();
              v163(v162);
              sub_1E4205ED4();
              OUTLINED_FUNCTION_11_5();

              [v135 setTitle_];

              goto LABEL_38;
            }
          }
        }

        OUTLINED_FUNCTION_34_7(&v385, v387);
        v137 = OUTLINED_FUNCTION_38();
        v138(v137);
        OUTLINED_FUNCTION_9_9();
        OUTLINED_FUNCTION_9_13();
        (*(v139 + 200))();
        v14 = v387;
        v140 = OUTLINED_FUNCTION_203_2();
        OUTLINED_FUNCTION_0_257(v140, v141);
        v142(v14);
        OUTLINED_FUNCTION_108_3();
        v143 = objc_allocWithZone(MEMORY[0x1E69DCF20]);
        v144 = OUTLINED_FUNCTION_91_16();
        v130 = sub_1E3E23F9C(v144, v145, v146, v147, v148, v149, v150, &block_descriptor_106_0);
LABEL_37:
        v135 = v130;
LABEL_38:
        OUTLINED_FUNCTION_8_9();
        AssociatedTypeWitness = *(v151 + 400);
        v152 = v135;
        (AssociatedTypeWitness)(v135);
        OUTLINED_FUNCTION_236();
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_193_2();
        v155 = *(v153 + 16);
        v154 = *(v153 + 24);
        if (v155 >= v154 >> 1)
        {
          OUTLINED_FUNCTION_35(v154);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_74();
        sub_1E4206324();
        v42 = v393;

        __swift_destroy_boxed_opaque_existential_1(&v385);
        v98 += 40;
        if (!--v97)
        {

          goto LABEL_83;
        }
      }
    }

LABEL_84:
    OUTLINED_FUNCTION_199_0();
    v40 = AssociatedTypeWitness + 1;
    __swift_destroy_boxed_opaque_existential_1(&v389);
    v39 = v364;
    if (v40 == v366)
    {
      goto LABEL_120;
    }
  }

  v384 = v41;
  v45 = v391;
  v46 = OUTLINED_FUNCTION_9_141(&v389);
  v47(v46);
  OUTLINED_FUNCTION_26_90();
  v48 = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  OUTLINED_FUNCTION_156_1();
  v374 = v49;
  sub_1E4207604();
  OUTLINED_FUNCTION_12_1();

  if (*(v45 + 16))
  {
    v363 = v45;
    OUTLINED_FUNCTION_8_9();
    v52 += 74;
    v377 = *v52;
    v376 = v52;
    do
    {
      v379 = v50;
      v380 = v51;
      sub_1E38C6028(v50, &v385);
      v54 = v387;
      v53 = v388;
      v55 = OUTLINED_FUNCTION_203_2();
      v57 = __swift_project_boxed_opaque_existential_1(v55, v56);
      v58 = *(v53 + 8);
      v59 = *(v58 + 16);
      v59(v54, v58);
      OUTLINED_FUNCTION_143();
      v61 = v60();
      if (*(v61 + 16) && (v62 = OUTLINED_FUNCTION_53(), v64 = sub_1E327D33C(v62, v63), (v65 & 1) != 0))
      {
        v66 = *(*(v61 + 56) + 8 * v64);

        v67 = MEMORY[0x1E69E7D40];
      }

      else
      {

        v378 = type metadata accessor for SideBarItemConfig();
        v68 = [v381 traitCollection];
        v70 = v387;
        v69 = v388;
        __swift_project_boxed_opaque_existential_1(&v385, v387);
        OUTLINED_FUNCTION_33_24();
        v71(v70, v69);
        OUTLINED_FUNCTION_106();
        swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_20_2();
        sub_1E4207604();
        OUTLINED_FUNCTION_12_1();

        v72 = *(v69 + 16);

        v66 = sub_1E38D1344(v68, v72 != 0);
        v59(v54, v58);
        OUTLINED_FUNCTION_65_1();
        OUTLINED_FUNCTION_39();
        v67 = MEMORY[0x1E69E7D40];
        v74 = (*((*MEMORY[0x1E69E7D40] & v73) + 0x260))(v383);
        v76 = v75;
        swift_isUniquelyReferenced_nonNull_native();
        v382 = *v76;
        sub_1E3E25318(v66, v69, v57);
        *v76 = v382;

        v74(v383, 0);
      }

      OUTLINED_FUNCTION_34_7(&v385, v387);
      v77 = OUTLINED_FUNCTION_50();
      v78(v77);
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_9_13();
      v80 = (*(v79 + 200))();
      v81 = v387;
      OUTLINED_FUNCTION_0_257(&v385, v387);
      v83 = v82(v81);
      v85 = v84;
      v86 = objc_allocWithZone(MEMORY[0x1E69DCFE0]);
      v87 = OUTLINED_FUNCTION_27_0();
      v89 = sub_1E3E23F9C(v87, v88, v80, v83, v85, 0, 0, &block_descriptor_109_2);
      v90 = *((*v67 & *v66) + 0x190);
      v91 = v89;
      v92 = OUTLINED_FUNCTION_87_0();
      v90(v92);
      OUTLINED_FUNCTION_236();
      v48 = v57;
      MEMORY[0x1E6910BF0]();
      v93 = *((v384 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v384 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v93 >> 1)
      {
        OUTLINED_FUNCTION_35(v93);
        sub_1E42062F4();
      }

      OUTLINED_FUNCTION_74();
      sub_1E4206324();

      v41 = v384;
      __swift_destroy_boxed_opaque_existential_1(&v385);
      v50 = v379 + 40;
      v51 = v380 - 1;
    }

    while (v380 != 1);

    v14 = v381;
  }

  else
  {
  }

  sub_1E3E1A488(&v389, v14);
  v165 = v164;
  v166 = v391;
  OUTLINED_FUNCTION_0_257(&v389, v391);
  v167(v166);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_87_0();

  v168 = [v14 tabForIdentifier_];

  if (v168)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v169 = swift_dynamicCastObjCClass();
    if (v169)
    {
      v170 = v169;
      v171 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_35_62();
      v173 = *(v172 + 200);
      v174 = v168;
      v175 = v173();
      v176 = OUTLINED_FUNCTION_297();
      [v176 v177];

      v178 = v392;
      OUTLINED_FUNCTION_34_7(&v389, v391);
      v179 = OUTLINED_FUNCTION_50();
      v180(v179);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_50();

      [v170 setTitle_];

      sub_1E3280A90(0, &unk_1ECF39558);
      OUTLINED_FUNCTION_138_1();
      v181 = sub_1E42062A4();
      v182 = OUTLINED_FUNCTION_297();
      [v182 v183];

      goto LABEL_52;
    }
  }

  OUTLINED_FUNCTION_34_7(&v389, v391);
  v184 = OUTLINED_FUNCTION_50();
  v185(v184);
  OUTLINED_FUNCTION_65_1();
  v171 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_35_62();
  v187 = (*(v186 + 200))();
  v188 = v391;
  OUTLINED_FUNCTION_0_257(&v389, v391);
  v190 = v189(v188);
  v192 = v191;
  v193 = objc_allocWithZone(MEMORY[0x1E69DD010]);

  v194 = OUTLINED_FUNCTION_27_0();
  v170 = sub_1E3E240C4(v194, v195, v187, v190, v192, v41, v196, 0);
LABEL_52:
  OUTLINED_FUNCTION_4_154();
  v197 += 50;
  v198 = *v197;
  v199 = v197;
  v200 = v170;
  v198(v170);
  sub_1E3E1A708();
  v378 = v200;

  (*((*v171 & *v372) + 0x448))();
  if (!v201)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_65_1();
  v202 = v391;
  OUTLINED_FUNCTION_0_257(&v389, v391);
  if (v198 == v203(v202) && v199 == v204)
  {
  }

  else
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_116_10();
    v206 = sub_1E42079A4();

    if ((v206 & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  OUTLINED_FUNCTION_4_154();
  v208 = (*(v207 + 1088))();
  if (!v209)
  {
LABEL_74:

    v14 = v381;
LABEL_80:
    v226 = sub_1E4205F14();
    v228 = v227;
    v230 = v391;
    v229 = v392;
    __swift_project_boxed_opaque_existential_1(&v389, v391);
    v231 = v229[1];
    v232 = *(v231 + 16);
    v233 = v378;
    v232(v230, v231);
    OUTLINED_FUNCTION_206_1();
    v385 = v226;
    v386 = v228;

    MEMORY[0x1E69109E0](v230, v231);

    sub_1E37FB7F0(v385, v386, v233, &selRef_setAccessibilityIdentifier_);

    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_193_2();
    AssociatedTypeWitness = *(v234 + 16);
    v235 = *(v234 + 24);
    if (AssociatedTypeWitness >= v235 >> 1)
    {
      OUTLINED_FUNCTION_35(v235);
      sub_1E42062F4();
    }

    OUTLINED_FUNCTION_27_0();
    sub_1E4206324();
    v42 = v393;

    v38 = MEMORY[0x1E69E7D40];
LABEL_83:
    v41 = MEMORY[0x1E69E7CC0];
    goto LABEL_84;
  }

  v210 = v208;
  v211 = v209;
  v377 = v165;
  v212 = [v378 children];
  v213 = OUTLINED_FUNCTION_118();
  sub_1E3280A90(v213, &unk_1ECF39558);
  OUTLINED_FUNCTION_40_3();
  v214 = sub_1E42062B4();

  v215 = sub_1E32AE9B0(v214);
  v216 = 0;
  v379 = (v214 & 0xC000000000000001);
  v380 = v215;
  while (1)
  {
    v14 = v381;
    if (v380 == v216)
    {

LABEL_79:
      v165 = v377;
      goto LABEL_80;
    }

    if (v379)
    {
      v225 = OUTLINED_FUNCTION_53_3();
      v217 = MEMORY[0x1E6911E60](v225);
    }

    else
    {
      if (v216 >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_139;
      }

      v217 = *(v214 + 8 * v216 + 32);
    }

    v218 = v217;
    if (__OFADD__(v216, 1))
    {
      break;
    }

    v219 = [v217 identifier];
    v220 = sub_1E4205F14();
    v222 = v221;

    if (v220 == v210 && v211 == v222)
    {

LABEL_78:

      [v378 setSelectedChild:v218];

      v14 = v381;
      goto LABEL_79;
    }

    OUTLINED_FUNCTION_116_10();
    v224 = sub_1E42079A4();

    if (v224)
    {

      goto LABEL_78;
    }

    ++v216;
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1E3E1A2B0()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_120_1();
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v5 + 440))();
  OUTLINED_FUNCTION_26_3();
  v7 = (*((*v4 & v6) + 0x3F8))();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_89_5();
  v8(v3);
  v9 = sub_1E41FFC94();
  sub_1E42067F4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_55();
  }

  v17 = OUTLINED_FUNCTION_74();
  v18(v17);
  sub_1E3E152AC();
}

void sub_1E3E1A488(void *a1, void *a2)
{
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v6 = *(v4 + 8);
  v8 = *(v6 + 16);
  v7 = v6 + 16;
  v9 = OUTLINED_FUNCTION_38();
  v8(v9, v6);
  OUTLINED_FUNCTION_36_3();
  v11 = (*((*MEMORY[0x1E69E7D40] & v10) + 0x250))();
  v12 = OUTLINED_FUNCTION_39_0();
  v14 = sub_1E378A81C(v12, v13, v11);

  if (!v14)
  {
    type metadata accessor for SideBarItemConfig();
    v15 = [a2 traitCollection];
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    OUTLINED_FUNCTION_33_24();
    v18(v16, v17);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    OUTLINED_FUNCTION_156_1();
    v19 = sub_1E4207604();

    v20 = *(v19 + 16);

    v21 = sub_1E38D1344(v15, v20 != 0);
    v22 = OUTLINED_FUNCTION_35_5();
    v23(v22);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_36_3();
    v25 = (*((*MEMORY[0x1E69E7D40] & v24) + 0x260))(v29);
    v27 = v26;
    swift_isUniquelyReferenced_nonNull_native();
    v28 = *v27;
    sub_1E3E25318(v21, v5, v7);
    *v27 = v28;

    v25(v29, 0);
  }

  OUTLINED_FUNCTION_229_0();
}

void sub_1E3E1A708()
{
  OUTLINED_FUNCTION_31_1();
  v142 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_56_20();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v143 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v140 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v139 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v138 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v137 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v141 = v21;
  v22 = sub_1E4205F14();
  v24 = v23;
  v25 = v5[3];
  OUTLINED_FUNCTION_0_257(v5, v25);
  v26(v25);
  v145[0] = v22;
  v145[1] = v24;

  v27 = OUTLINED_FUNCTION_39_0();
  MEMORY[0x1E69109E0](v27);

  v28 = v0;

  sub_1E37FB7F0(v22, v24, v0, &selRef_setAccessibilityIdentifier_);
  if (*(v3 + OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_107_0();
    v29(v143);
    OUTLINED_FUNCTION_181_2();
    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();
    if (OUTLINED_FUNCTION_262(v31))
    {
      OUTLINED_FUNCTION_6_21();
      v144 = OUTLINED_FUNCTION_16_15();
      *v8 = 136315138;
      v33 = v146;
      v32 = v147;
      OUTLINED_FUNCTION_0_257(v145, v146);
      v35 = v34(v33);
      OUTLINED_FUNCTION_18_102(v35, v36);
      OUTLINED_FUNCTION_16_5();

      *(v8 + 4) = v32;
      OUTLINED_FUNCTION_53_15(&dword_1E323F000, v30, v31, "RootSplitViewController:: configureTabElement %s, preferredPlacement=sidebarOnly");
      __swift_destroy_boxed_opaque_existential_1(v144);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_51_2();

      (*(v8 + 8))(v143, v6);
    }

    else
    {

      (*(v8 + 8))(v143, v6);
      __swift_destroy_boxed_opaque_existential_1(v145);
    }

    [v28 setPreferredPlacement_];
  }

  else
  {
    v37 = v6;
    v38 = v5[4];
    v39 = OUTLINED_FUNCTION_53_3();
    OUTLINED_FUNCTION_220_0(v39, v40);
    v41 = OUTLINED_FUNCTION_50();
    if (v42(v41, v38))
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_107_0();
      v43(v141);
      OUTLINED_FUNCTION_181_2();
      v44 = sub_1E41FFC94();
      v45 = sub_1E4206814();
      if (OUTLINED_FUNCTION_262(v45))
      {
        v46 = OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_100();
        *v46 = 136315138;
        v48 = v146;
        v47 = v147;
        OUTLINED_FUNCTION_0_257(v145, v146);
        v50 = v49(v48);
        OUTLINED_FUNCTION_18_102(v50, v51);
        OUTLINED_FUNCTION_16_5();

        *(v46 + 4) = v47;
        _os_log_impl(&dword_1E323F000, v44, v45, "RootSplitViewController:: configureTabElement %s, preferredPlacement=pinned", v46, 0xCu);
        OUTLINED_FUNCTION_248();
        v28 = v0;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();

        (*(v8 + 8))(v141, v6);
      }

      else
      {

        (*(v8 + 8))(v141, v6);
        __swift_destroy_boxed_opaque_existential_1(v145);
      }

      v77 = 4;
      v65 = v142;
    }

    else
    {
      v52 = v5[4];
      v53 = OUTLINED_FUNCTION_53_3();
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v55 = OUTLINED_FUNCTION_50();
      v57 = v56(v55, v52);
      v58 = v5[4];
      v59 = OUTLINED_FUNCTION_53_3();
      OUTLINED_FUNCTION_220_0(v59, v60);
      v61 = OUTLINED_FUNCTION_50();
      v63 = v62(v61, v58);
      sub_1E324FBDC();
      v64 = v8;
      OUTLINED_FUNCTION_107_0();
      if (v57)
      {
        v65 = v142;
        if (v63)
        {
          v66 = OUTLINED_FUNCTION_116_8();
          v67(v66);
          OUTLINED_FUNCTION_181_2();
          v68 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_178();
          if (os_log_type_enabled(v68, v69))
          {
            OUTLINED_FUNCTION_6_21();
            v70 = OUTLINED_FUNCTION_16_2();
            *v57 = 136315138;
            v72 = v146;
            v71 = v147;
            OUTLINED_FUNCTION_0_257(v145, v146);
            v74 = v73(v72);
            OUTLINED_FUNCTION_18_102(v74, v75);
            OUTLINED_FUNCTION_16_5();

            *(v57 + 4) = v71;
            OUTLINED_FUNCTION_112_12(&dword_1E323F000, v76, v37, "RootSplitViewController:: configureTabElement %s, preferredPlacement=default");
            __swift_destroy_boxed_opaque_existential_1(v70);
            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_7_9();

            (*(v64 + 8))(v137, v37);
          }

          else
          {

            v129 = OUTLINED_FUNCTION_32_7();
            v130(v129);
            __swift_destroy_boxed_opaque_existential_1(v145);
          }

          v77 = 1;
        }

        else
        {
          v108 = OUTLINED_FUNCTION_116_8();
          v109(v108);
          OUTLINED_FUNCTION_181_2();
          v110 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_178();
          if (os_log_type_enabled(v110, v111))
          {
            OUTLINED_FUNCTION_6_21();
            v112 = OUTLINED_FUNCTION_16_2();
            *v57 = 136315138;
            v114 = v146;
            v113 = v147;
            OUTLINED_FUNCTION_0_257(v145, v146);
            v116 = v115(v114);
            OUTLINED_FUNCTION_18_102(v116, v117);
            OUTLINED_FUNCTION_16_5();

            *(v57 + 4) = v113;
            OUTLINED_FUNCTION_112_12(&dword_1E323F000, v118, v37, "RootSplitViewController:: configureTabElement %s, preferredPlacement=fixed");
            __swift_destroy_boxed_opaque_existential_1(v112);
            OUTLINED_FUNCTION_55();
            OUTLINED_FUNCTION_7_9();

            (*(v64 + 8))(v138, v37);
          }

          else
          {

            v133 = OUTLINED_FUNCTION_32_7();
            v134(v133);
            __swift_destroy_boxed_opaque_existential_1(v145);
          }

          v77 = 5;
        }
      }

      else
      {
        v65 = v142;
        if (v63)
        {
          v98 = OUTLINED_FUNCTION_116_8();
          v99(v98);
          OUTLINED_FUNCTION_181_2();
          v100 = sub_1E41FFC94();
          sub_1E4206814();
          OUTLINED_FUNCTION_178();
          if (os_log_type_enabled(v100, v101))
          {
            OUTLINED_FUNCTION_6_21();
            OUTLINED_FUNCTION_16_2();
            *v57 = 136315138;
            v103 = v146;
            v102 = v147;
            OUTLINED_FUNCTION_0_257(v145, v146);
            v105 = v104(v103);
            OUTLINED_FUNCTION_18_102(v105, v106);
            OUTLINED_FUNCTION_16_5();

            *(v57 + 4) = v102;
            OUTLINED_FUNCTION_112_12(&dword_1E323F000, v107, v37, "RootSplitViewController:: configureTabElement %s, preferredPlacement=optional");
            OUTLINED_FUNCTION_248();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_7_9();

            (*(v64 + 8))(v139, v37);
          }

          else
          {

            v131 = OUTLINED_FUNCTION_32_7();
            v132(v131);
            __swift_destroy_boxed_opaque_existential_1(v145);
          }

          v77 = 2;
        }

        else
        {
          v119 = OUTLINED_FUNCTION_116_8();
          v120(v119);
          OUTLINED_FUNCTION_181_2();
          v121 = sub_1E41FFC94();
          v122 = sub_1E4206814();
          if (OUTLINED_FUNCTION_262(v122))
          {
            OUTLINED_FUNCTION_6_21();
            OUTLINED_FUNCTION_16_2();
            *v57 = 136315138;
            v124 = v146;
            v123 = v147;
            OUTLINED_FUNCTION_0_257(v145, v146);
            v126 = v125(v124);
            OUTLINED_FUNCTION_18_102(v126, v127);
            OUTLINED_FUNCTION_16_5();

            *(v57 + 4) = v123;
            OUTLINED_FUNCTION_112_12(&dword_1E323F000, v128, v122, "RootSplitViewController:: configureTabElement %s, preferredPlacement=sidebarOnly");
            OUTLINED_FUNCTION_248();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_7_9();

            (*(v64 + 8))(v140, v37);
          }

          else
          {

            v135 = OUTLINED_FUNCTION_32_7();
            v136(v135);
            __swift_destroy_boxed_opaque_existential_1(v145);
          }

          v77 = 6;
        }
      }
    }

    [v28 setPreferredPlacement_];
    v78 = [v65 traitCollection];
    v79 = OUTLINED_FUNCTION_53_3();
    sub_1E3E10D08(v79, v80, 0);

    v81 = v5[4];
    v82 = OUTLINED_FUNCTION_53_3();
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v84 = OUTLINED_FUNCTION_50();
    if (v85(v84, v81))
    {
      sub_1E3E1B070(v5);
    }

    else
    {
      v86 = v5[4];
      v87 = OUTLINED_FUNCTION_53_3();
      __swift_project_boxed_opaque_existential_1(v87, v88);
      v89 = OUTLINED_FUNCTION_50();
      v90(v89, v86);
      if (v91)
      {
        v92 = objc_allocWithZone(MEMORY[0x1E69DD798]);
        v93 = OUTLINED_FUNCTION_32_0();
        v95 = sub_1E3E23F38(v93, v94, 0);
        v96 = OUTLINED_FUNCTION_297();
        [v96 v97];
      }

      else
      {
        [v28 _setCompactRepresentation_];
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E1B070(void *a1)
{
  v3 = a1[3];
  OUTLINED_FUNCTION_0_257(a1, v3);
  v4(v3);
  v6 = v5;
  OUTLINED_FUNCTION_67_1();
  (*((*MEMORY[0x1E69E7D40] & v7) + 0x250))();
  v8 = OUTLINED_FUNCTION_31_4();
  v33 = sub_1E378A81C(v8, v6, v1);

  v9 = v33;
  if (!v33)
  {
    return;
  }

  if (*(v33 + OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader))
  {
    goto LABEL_6;
  }

  v10 = a1[4];
  v11 = OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_220_0(v11, v12);
  v13 = OUTLINED_FUNCTION_31_4();
  if (v14(v13, v10) & 1) == 0 || (OUTLINED_FUNCTION_8_9(), ((*(v15 + 344))()))
  {
    v9 = v33;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_9();
  v17 = (*(v16 + 368))();
  if (v17)
  {
    v32 = v17;
    OUTLINED_FUNCTION_8_9();
    v19 = (*(v18 + 392))();
    if (v19)
    {
      v20 = v19;
      v21 = objc_allocWithZone(MEMORY[0x1E69DD798]);
      v31 = v32;
      v22 = sub_1E3E23F38(0, 0xE000000000000000, v32);
      [v20 _setCompactRepresentation_];

      v9 = v31;
    }

    else
    {

      v9 = v32;
    }

LABEL_6:

    return;
  }

  OUTLINED_FUNCTION_8_9();
  (*(v23 + 352))(1);
  v24 = *sub_1E3CE4D98();
  OUTLINED_FUNCTION_4_0();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v33;
  v27 = v24;
  OUTLINED_FUNCTION_31_4();

  v28 = v33;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  (*(v29 + 224))(a1, 2, 0, v30 & 1, sub_1E3E24D34, v26);
}

void sub_1E3E1B42C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v194 = v9;
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager);
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  v13 = *(v12 + 960);
  v13(1);
  v202.n128_u8[0] = v3;
  v199.n128_u8[0] = 0;
  sub_1E397C3E4();
  if (sub_1E4205E84())
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v14(v1);
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v18, v19, v20, v21, v17, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    (*(v6 + 8))(v1, v4);
    sub_1E3E13168();
    v13(0);
    goto LABEL_96;
  }

  v191 = v4;
  OUTLINED_FUNCTION_16_89();
  (*(v22 + 792))(1);
  OUTLINED_FUNCTION_36_3();
  v24 = (*((*v11 & v23) + 0x2E0))();
  v25 = sub_1E32AE9B0(v24);
  v193 = v10;
  v180 = v0;
  if (v25)
  {
    v26 = v25;
    v202.n128_u64[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD30(0, v25 & ~(v25 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_102;
    }

    v27 = 0;
    v28 = v202.n128_u64[0];
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = OUTLINED_FUNCTION_102_3();
        v30 = MEMORY[0x1E6911E60](v29);
      }

      else
      {
        v30 = *(v24 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = *&v30[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
      v3 = *&v30[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

      v202.n128_u64[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        v36 = OUTLINED_FUNCTION_35(v33);
        sub_1E377FD30(v36, v34 + 1, 1);
        v28 = v202.n128_u64[0];
      }

      ++v27;
      *(v28 + 16) = v34 + 1;
      v35 = v28 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v3;
    }

    while (v26 != v27);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v208 = sub_1E32772D8(v28);
  OUTLINED_FUNCTION_16_89();
  v38 = (*(v37 + 632))();
  v39 = 0;
  v40 = *(v38 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  v42 = v38 + 32;
  while (v40 != v39)
  {
    if (v39 >= *(v38 + 16))
    {
      goto LABEL_99;
    }

    sub_1E38C6028(v42, &v202);
    sub_1E38C6028(&v202, &v199);
    v43 = OUTLINED_FUNCTION_39_9();
    __swift_instantiateConcreteTypeFromMangledNameV2(v43);
    OUTLINED_FUNCTION_106();
    type metadata accessor for LibrarySidebarItem();
    if (OUTLINED_FUNCTION_90_0())
    {
      __swift_destroy_boxed_opaque_existential_1(&v202);
    }

    else
    {
      sub_1E3251BE8(&v202, &v199);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v205[0] = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = OUTLINED_FUNCTION_73_0();
        sub_1E397A464(v45, v46, v47);
        v41 = v205[0];
      }

      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      v3 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v50 = OUTLINED_FUNCTION_35(v48);
        sub_1E397A464(v50, v49 + 1, 1);
        v41 = v205[0];
      }

      *(v41 + 16) = v3;
      sub_1E3251BE8(&v199, v41 + 40 * v49 + 32);
    }

    v42 += 40;
    ++v39;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_128_9();
  AssociatedTypeWitness = v191;
  (*(v40 + 16))(v194);

  v52 = sub_1E41FFC94();
  v53 = sub_1E4206814();

  v185 = v41;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = OUTLINED_FUNCTION_6_21();
    v186 = OUTLINED_FUNCTION_100();
    v199.n128_u64[0] = v186;
    v188 = v54;
    *v54 = 136315138;
    v55 = *(v41 + 16);
    v56 = MEMORY[0x1E69E7CC0];
    if (v55)
    {
      v183 = v53;
      v205[0] = MEMORY[0x1E69E7CC0];
      sub_1E377FD30(0, v55, 0);
      v56 = v205[0];
      v3 = v41 + 32;
      do
      {
        sub_1E38C6028(v3, &v202);
        v54 = v204;
        OUTLINED_FUNCTION_34_7(&v202, *(&v203 + 1));
        v57 = OUTLINED_FUNCTION_31_4();
        v58(v57);
        OUTLINED_FUNCTION_206_1();
        __swift_destroy_boxed_opaque_existential_1(&v202);
        v205[0] = v56;
        v60 = *(v56 + 16);
        v59 = *(v56 + 24);
        if (v60 >= v59 >> 1)
        {
          v62 = OUTLINED_FUNCTION_35(v59);
          v54 = v205;
          sub_1E377FD30(v62, v60 + 1, 1);
          v56 = v205[0];
        }

        *(v56 + 16) = v60 + 1;
        v61 = v56 + 16 * v60;
        *(v61 + 32) = v40;
        *(v61 + 40) = v194;
        v3 += 40;
        --v55;
      }

      while (v55);
      AssociatedTypeWitness = v191;
      OUTLINED_FUNCTION_128_9();
      v53 = v183;
    }

    MEMORY[0x1E6910C30](v56, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_145();

    sub_1E3270FC8(v54, v3, &v199);
    OUTLINED_FUNCTION_38();

    *(v188 + 1) = v54;
    _os_log_impl(&dword_1E323F000, v52, v53, "RootSplitViewController:: updating to sidebar mode with sections %s", v188, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v186);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v66 = OUTLINED_FUNCTION_102_3();
    v67(v66);
    OUTLINED_FUNCTION_129_10();
    v65 = MEMORY[0x1E69E7D40];
  }

  else
  {

    v63 = OUTLINED_FUNCTION_102_3();
    v64(v63);
    OUTLINED_FUNCTION_129_10();
    v65 = MEMORY[0x1E69E7D40];
  }

  v184 = *(v41 + 16);
  if (!v184)
  {
    goto LABEL_80;
  }

  v68 = 0;
  OUTLINED_FUNCTION_27_29();
  v182 = v41 + 32;
  v181 = *(v69 + 656);
  do
  {
    if (v68 >= *(v41 + 16))
    {
      goto LABEL_101;
    }

    sub_1E38C6028(v182 + 40 * v68, v205);
    v70 = v206;
    OUTLINED_FUNCTION_0_257(v205, v206);
    v71(v70);
    OUTLINED_FUNCTION_9_9();
    v181();
    OUTLINED_FUNCTION_134_2();
    v202.n128_u64[0] = v70;
    v202.n128_u64[1] = AssociatedTypeWitness;
    v72 = sub_1E3280A90(0, &qword_1EE23B250);
    OUTLINED_FUNCTION_89_13();
    sub_1E3CA4D00();

    v73 = v199.n128_u64[0];
    v187 = v68;
    if (v199.n128_u64[0])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_40_3();
      if (swift_dynamicCastObjCClass())
      {
        v74 = v207;
        __swift_project_boxed_opaque_existential_1(v205, v206);
        OUTLINED_FUNCTION_202_1();
        v75 = OUTLINED_FUNCTION_31_4();
        v76(v75, v74);
        OUTLINED_FUNCTION_106();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
        OUTLINED_FUNCTION_156_1();
        sub_1E4207604();
        OUTLINED_FUNCTION_12_1();

        v77 = 0;
        v78 = *(v41 + 16);
        while (1)
        {
          v79 = 0uLL;
          v53 = v78;
          v80 = 0uLL;
          v81 = 0uLL;
          if (v77 != v78)
          {
            if (v77 >= *(v41 + 16))
            {
              goto LABEL_98;
            }

            v53 = v77 + 1;
            v199.n128_u64[0] = v77;
            sub_1E38C6028(v41 + 32 + 40 * v77, &v199.n128_i64[1]);
            v79 = v199;
            v80 = v200;
            v81 = v201;
          }

          v202 = v79;
          v203 = v80;
          v204 = v81;
          if (!v81)
          {

            OUTLINED_FUNCTION_129_10();
            goto LABEL_79;
          }

          OUTLINED_FUNCTION_175(*&v81, *&v80, v79);
          v82 = v207;
          __swift_project_boxed_opaque_existential_1(v205, v206);
          v83 = OUTLINED_FUNCTION_31_4();
          if (v84(v83, v82))
          {
            OUTLINED_FUNCTION_227_0();
            swift_getObjectType();
            v86 = *(&v200 + 1);
            v85 = v201;
            __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
            v197 = v86;
            v198 = *(v85 + 8);
            __swift_allocate_boxed_opaque_existential_1(v196);
            OUTLINED_FUNCTION_37_1();
            (*(v87 + 16))();
            v88 = *(v82 + 16);
            v89 = v73;
            v90 = OUTLINED_FUNCTION_194_2();
            v91 = v88(v90);

            v65 = MEMORY[0x1E69E7D40];
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v196);
            if (v91)
            {
              break;
            }
          }

LABEL_59:
          v111 = *(&v200 + 1);
          OUTLINED_FUNCTION_0_257(&v199, *(&v200 + 1));
          v113 = v112(v111);
          AssociatedTypeWitness = v114;
          sub_1E397B708(v113, v114);

          __swift_destroy_boxed_opaque_existential_1(&v199);
          v77 = v53;
        }

        v92 = *(&v200 + 1);
        OUTLINED_FUNCTION_0_257(&v199, *(&v200 + 1));
        v195 = v93(v92);
        v94 = *((*v65 & *v193) + 0x2A0);
        v95 = v91;
        v96 = v94(v196);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
        sub_1E3CA4D10();
        v97 = OUTLINED_FUNCTION_60_6();
        v96(v97);
        v98 = v206;
        OUTLINED_FUNCTION_0_257(v205, v206);
        v100 = v99(v98);
        v102 = v101;
        OUTLINED_FUNCTION_36_3();
        v104 = (*((*v65 & v103) + 0x448))();
        if (v105)
        {
          if (v100 == v104 && v105 == v102)
          {
          }

          else
          {
            OUTLINED_FUNCTION_116_10();
            v107 = sub_1E42079A4();

            if ((v107 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          v108 = *(&v200 + 1);
          OUTLINED_FUNCTION_0_257(&v199, *(&v200 + 1));
          v109(v108);
          OUTLINED_FUNCTION_26_3();
          (*((*v65 & v110) + 0x220))();
        }

        else
        {
        }

LABEL_58:

        goto LABEL_59;
      }
    }

    AssociatedTypeWitness = v207;
    __swift_project_boxed_opaque_existential_1(v205, v206);
    v115 = OUTLINED_FUNCTION_38();
    v116(v115, AssociatedTypeWitness);
    OUTLINED_FUNCTION_106();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    OUTLINED_FUNCTION_156_1();
    sub_1E4207604();
    OUTLINED_FUNCTION_12_1();

    v117 = 0;
    v118 = *(v41 + 16);
    v192 = v41;
    v190 = v41 + 32;
    v189 = v72;
    while (1)
    {
      v119 = 0uLL;
      v120 = v118;
      v121 = 0uLL;
      v122 = 0uLL;
      if (v117 == v118)
      {
        goto LABEL_66;
      }

      if (v117 >= *(v192 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        return;
      }

      v120 = v117 + 1;
      v199.n128_u64[0] = v117;
      sub_1E38C6028(v190 + 40 * v117, &v199.n128_i64[1]);
      v119 = v199;
      v121 = v200;
      v122 = v201;
LABEL_66:
      v202 = v119;
      v203 = v121;
      v204 = v122;
      if (!v122)
      {
        break;
      }

      v117 = v120;
      OUTLINED_FUNCTION_175(*&v122, *&v121, v119);
      v123 = *(&v200 + 1);
      OUTLINED_FUNCTION_0_257(&v199, *(&v200 + 1));
      v125 = v124(v123);
      v127 = v126;
      (*((*v65 & *v53) + 0x290))();
      OUTLINED_FUNCTION_227_0();
      v196[0] = v125;
      v196[1] = v127;
      sub_1E3CA4D00();

      if (!v195)
      {
        goto LABEL_77;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_138_1();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_77;
      }

      v128 = v207;
      __swift_project_boxed_opaque_existential_1(v205, v206);
      v129 = OUTLINED_FUNCTION_31_4();
      if (!v130(v129, v128))
      {

LABEL_75:
        v65 = MEMORY[0x1E69E7D40];
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_108_3();
      swift_getObjectType();
      v132 = *(&v200 + 1);
      v131 = v201;
      v53 = __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
      v197 = v132;
      v198 = *(v131 + 8);
      __swift_allocate_boxed_opaque_existential_1(v196);
      OUTLINED_FUNCTION_37_1();
      (*(v133 + 16))();
      v134 = *(v72 + 16);
      v135 = v195;
      v136 = OUTLINED_FUNCTION_194_2();
      v137 = v134(v136);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v196);
      if (!v137)
      {

        OUTLINED_FUNCTION_129_10();
        goto LABEL_75;
      }

      v138 = *(&v200 + 1);
      __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
      OUTLINED_FUNCTION_8_156();
      v139(v138);
      OUTLINED_FUNCTION_129_10();
      v195 = v140;
      v141 = MEMORY[0x1E69E7D40];
      v142 = *((*MEMORY[0x1E69E7D40] & *v53) + 0x2A0);
      v143 = v137;
      v144 = v142(v196);
      v65 = v141;
      v145 = v144;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
      sub_1E3CA4D10();
      v146 = OUTLINED_FUNCTION_60_6();
      v145(v146);

LABEL_76:
      v72 = v189;
LABEL_77:
      v147 = *(&v200 + 1);
      __swift_project_boxed_opaque_existential_1(&v199, *(&v200 + 1));
      OUTLINED_FUNCTION_8_156();
      v149 = v148(v147);
      AssociatedTypeWitness = v150;
      sub_1E397B708(v149, v150);

      __swift_destroy_boxed_opaque_existential_1(&v199);
    }

    OUTLINED_FUNCTION_188_2();

LABEL_79:
    v68 = v187 + 1;
    __swift_destroy_boxed_opaque_existential_1(v205);
    v41 = v185;
  }

  while (v187 + 1 != v184);
LABEL_80:
  sub_1E3E1E8C0();
  v151 = v208 + 56;
  OUTLINED_FUNCTION_4_4();
  v154 = v153 & v152;
  v156 = (v155 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v157 = 0;
  if (v154)
  {
    goto LABEL_85;
  }

  while (2)
  {
    v158 = v157 + 1;
    if (__OFADD__(v157, 1))
    {
      goto LABEL_100;
    }

    if (v158 < v156)
    {
      v154 = *(v151 + 8 * v158);
      ++v157;
      if (!v154)
      {
        continue;
      }

      v157 = v158;
LABEL_85:
      OUTLINED_FUNCTION_172_0();
      v161 = *v159;
      v160 = v159[1];
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_21();
      v163 = *(v162 + 656);
      v164 = swift_bridgeObjectRetain_n();
      v163(v164);
      OUTLINED_FUNCTION_49_4();
      v202.n128_u64[0] = v161;
      v202.n128_u64[1] = v160;
      sub_1E3280A90(0, &qword_1EE23B250);
      OUTLINED_FUNCTION_89_13();
      sub_1E3CA4D00();

      v165 = v199.n128_u64[0];
      if (v199.n128_u64[0])
      {
        objc_opt_self();
        OUTLINED_FUNCTION_19_3();
        v166 = swift_dynamicCastObjCClass();
        if (v166)
        {
          v167 = v193;
          [v166 vui:v193 removeControllerObserver:?];

          goto LABEL_90;
        }
      }

      v167 = v193;
LABEL_90:
      v154 &= v154 - 1;
      v205[0] = 0;
      v199.n128_u64[0] = v161;
      v199.n128_u64[1] = v160;
      v168 = *((*MEMORY[0x1E69E7D40] & *v167) + 0x2A0);

      v169 = v168(&v202);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
      sub_1E3CA4D10();
      v170 = OUTLINED_FUNCTION_192_2();
      v169(v170);

      if (!v154)
      {
        continue;
      }

      goto LABEL_85;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_36_3();
  v171 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v172) + 0x280))(v185);
  OUTLINED_FUNCTION_21();
  (*(v173 + 696))(1);
  OUTLINED_FUNCTION_36_3();
  (*((*v171 & v174) + 0x3C0))(0);
  OUTLINED_FUNCTION_36_3();
  (*((*v171 & v175) + 0x318))(0);
  v176 = [*(v180 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_rootControllerConfig) normalControllerLimit];
  v177 = v176;
  if (v176)
  {
    v178 = [v176 integerValue];
  }

  else
  {
    v178 = 0;
  }

  OUTLINED_FUNCTION_16_89();
  (*(v179 + 1112))(v178);
LABEL_96:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E1C958()
{
  OUTLINED_FUNCTION_31_1();
  v259 = v1;
  v261 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v271 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v260 = v5 - v4;
  v262 = v0;
  OUTLINED_FUNCTION_120_1();
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  v8 = (*(v7 + 960))(1);
  v9 = MEMORY[0x1E69E7CC0];
  v294 = MEMORY[0x1E69E7CC0];
  v277 = v0;
  v10 = (*((*v6 & *v0) + 0x278))(v8);
  v11 = 0;
  v12 = *(v10 + 16);
  v13 = v10 + 32;
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_194;
    }

    sub_1E38C6028(v13, &v280);
    sub_1E38C6028(&v280, &v291);
    v14 = OUTLINED_FUNCTION_39_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14);
    OUTLINED_FUNCTION_106();
    type metadata accessor for LibrarySidebarItem();
    if (OUTLINED_FUNCTION_90_0())
    {
      __swift_destroy_boxed_opaque_existential_1(&v280);
    }

    else
    {
      sub_1E3251BE8(&v280, &v291);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v286[0] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = OUTLINED_FUNCTION_73_0();
        sub_1E397A464(v16, v17, v18);
        v9 = v286[0];
      }

      v20 = v9[2];
      v19 = v9[3];
      v21 = v9;
      if (v20 >= v19 >> 1)
      {
        v22 = OUTLINED_FUNCTION_35(v19);
        sub_1E397A464(v22, v20 + 1, 1);
        v21 = v286[0];
      }

      v21[2] = v20 + 1;
      sub_1E3251BE8(&v291, &v21[5 * v20 + 4]);
      v9 = v21;
    }

    v13 += 40;
    ++v11;
  }

  v23 = v9[2];
  if (v23)
  {
    v286[0] = MEMORY[0x1E69E7CC0];
    sub_1E377FD10(0, v23, 0);
    v24 = 0;
    v25 = v286[0];
    v274 = v9 + 4;
    v26 = MEMORY[0x1E69E7D40];
    v276 = v9;
    v272 = v23;
    do
    {
      if (v24 >= v9[2])
      {
        goto LABEL_199;
      }

      sub_1E38C6028(&v274[5 * v24], &v280);
      v27 = v282;
      __swift_project_boxed_opaque_existential_1(&v280, *(&v281 + 1));
      OUTLINED_FUNCTION_202_1();
      v28 = OUTLINED_FUNCTION_38();
      v29(v28, v27);
      OUTLINED_FUNCTION_106();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      OUTLINED_FUNCTION_156_1();
      v30 = sub_1E4207604();

      v31 = *(v30 + 16);
      if (v31)
      {
        v278 = v25;
        *&v283 = MEMORY[0x1E69E7CC0];
        sub_1E377FD30(0, v31, 0);
        v32 = v283;
        v33 = v30 + 32;
        do
        {
          sub_1E38C6028(v33, &v291);
          v34 = v292;
          OUTLINED_FUNCTION_0_257(&v291, v292);
          v36 = v35(v34);
          v38 = v37;
          __swift_destroy_boxed_opaque_existential_1(&v291);
          *&v283 = v32;
          v40 = *(v32 + 16);
          v39 = *(v32 + 24);
          if (v40 >= v39 >> 1)
          {
            v42 = OUTLINED_FUNCTION_35(v39);
            sub_1E377FD30(v42, v40 + 1, 1);
            v32 = v283;
          }

          *(v32 + 16) = v40 + 1;
          v41 = v32 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          v33 += 40;
          --v31;
        }

        while (v31);

        v26 = MEMORY[0x1E69E7D40];
        v25 = v278;
        v23 = v272;
      }

      else
      {

        v32 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1(&v280);
      v286[0] = v25;
      v44 = v25[2];
      v43 = v25[3];
      if (v44 >= v43 >> 1)
      {
        v45 = OUTLINED_FUNCTION_35(v43);
        sub_1E377FD10(v45, v44 + 1, 1);
        v25 = v286[0];
      }

      ++v24;
      v25[2] = v44 + 1;
      v25[v44 + 4] = v32;
      v9 = v276;
    }

    while (v24 != v23);
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7D40];
  }

  v46 = 0;
  v47 = v25[2];
  v48 = MEMORY[0x1E69E7CC0];
  while (v47 != v46)
  {
    if (v46 >= v25[2])
    {
      goto LABEL_195;
    }

    v49 = v25[v46 + 4];
    v50 = *(v49 + 16);
    v51 = *(v48 + 2);
    v52 = v51 + v50;
    if (__OFADD__(v51, v50))
    {
      goto LABEL_196;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    if (!v53 || v52 > *(v48 + 3) >> 1)
    {
      if (v51 <= v52)
      {
        v54 = v51 + v50;
      }

      else
      {
        v54 = v51;
      }

      v48 = sub_1E3740F88(v53, v54, 1, v48);
    }

    if (*(v49 + 16))
    {
      if ((*(v48 + 3) >> 1) - *(v48 + 2) < v50)
      {
        goto LABEL_200;
      }

      swift_arrayInitWithCopy();

      if (v50)
      {
        v55 = *(v48 + 2);
        v56 = __OFADD__(v55, v50);
        v57 = v55 + v50;
        if (v56)
        {
          goto LABEL_205;
        }

        *(v48 + 2) = v57;
      }
    }

    else
    {

      if (v50)
      {
        goto LABEL_197;
      }
    }

    ++v46;
  }

  sub_1E32772D8(v48);
  OUTLINED_FUNCTION_115_8();
  v59 = v58;
  v290 = v58;
  v60 = OUTLINED_FUNCTION_224();
  v61(v60);
  OUTLINED_FUNCTION_1_31();
  (*((*v26 & v62) + 0x428))(&v280);
  if (*(&v281 + 1))
  {
    v46 = v282;
    OUTLINED_FUNCTION_70(&v280);
    v63 = OUTLINED_FUNCTION_26_1();
    v263 = v64(v63);
    v267 = v65;
    __swift_destroy_boxed_opaque_existential_1(&v280);
  }

  else
  {
    sub_1E325F7FC(&v280, &unk_1ECF2F1D0);
    v263 = 0;
    v267 = 0;
  }

  OUTLINED_FUNCTION_12_129();
  v67 = (*(v66 + 736))();
  v275 = sub_1E32AE9B0(v67);
  if (!v275)
  {

    OUTLINED_FUNCTION_200_2();
    OUTLINED_FUNCTION_189_3(MEMORY[0x1E69E7CC0]);
    v175 = v59;
LABEL_140:
    sub_1E3E1F79C();
    v176 = v175 + 56;
    OUTLINED_FUNCTION_4_4();
    v179 = v178 & v177;
    v181 = (v180 + 63) >> 6;

    v182 = 0;
    if (v179)
    {
      goto LABEL_146;
    }

LABEL_141:
    OUTLINED_FUNCTION_115_8();
    v183 = MEMORY[0x1E69E7D40];
    while (1)
    {
      v184 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_198;
      }

      if (v184 >= v181)
      {
        break;
      }

      v179 = *(v176 + 8 * v184);
      ++v182;
      if (v179)
      {
        v182 = v184;
        while (1)
        {
LABEL_146:
          v185 = v175;
          OUTLINED_FUNCTION_172_0();
          v187 = *v186;
          v188 = v186[1];
          OUTLINED_FUNCTION_62_30();
          OUTLINED_FUNCTION_21();
          v190 = *(v189 + 656);
          v191 = swift_bridgeObjectRetain_n();
          v190(v191);
          OUTLINED_FUNCTION_145();
          *&v280 = v187;
          *(&v280 + 1) = v188;
          sub_1E3280A90(0, &qword_1EE23B250);
          OUTLINED_FUNCTION_82();
          sub_1E3CA4D00();

          v192 = v291;
          if (!v291)
          {
            goto LABEL_150;
          }

          objc_opt_self();
          OUTLINED_FUNCTION_40_3();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          OUTLINED_FUNCTION_90_2();
          [v193 v194];

LABEL_151:
          v179 &= v179 - 1;
          v286[0] = 0;
          *&v291 = v187;
          *(&v291 + 1) = v188;
          v195 = ((*MEMORY[0x1E69E7D40] & *v262) + 672);
          v196 = *((*MEMORY[0x1E69E7D40] & *v262) + 0x2A0);

          v196(&v280);
          OUTLINED_FUNCTION_152();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
          OUTLINED_FUNCTION_177_3();
          v197 = OUTLINED_FUNCTION_60_6();
          v195(v197);

          v175 = v185;
          if (!v179)
          {
            goto LABEL_141;
          }
        }

LABEL_150:
        OUTLINED_FUNCTION_90_2();
        goto LABEL_151;
      }
    }

    OUTLINED_FUNCTION_12_129();
    v199 = *(v198 + 744);
    OUTLINED_FUNCTION_188_2();

    v199(v200);

    OUTLINED_FUNCTION_1_31();
    v202 = (*((*v183 & v201) + 0x340))();
    v203 = sub_1E396B0E4()[1];

    v204 = OUTLINED_FUNCTION_27_0();
    v206 = sub_1E37D26AC(v204, v205, v202);
    v208 = v207;

    OUTLINED_FUNCTION_1_31();
    v210 = (*((*v183 & v209) + 0x440))();
    if (v208)
    {
      v212 = v259;
      if (v211)
      {
        if (v206 == v210 && v208 == v211)
        {

LABEL_165:
          v214 = *(v262 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager);
          goto LABEL_166;
        }

        OUTLINED_FUNCTION_55_39();
        OUTLINED_FUNCTION_116_10();
        sub_1E42079A4();
        OUTLINED_FUNCTION_28_3();
        if (v203)
        {
          goto LABEL_165;
        }
      }
    }

    else
    {
      v212 = v259;
      if (!v211)
      {
LABEL_163:
        v214 = *(v262 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_libraryManager);

        v206 = 0;
        v208 = 0xE000000000000000;
LABEL_166:
        OUTLINED_FUNCTION_12_129();
        (*(v215 + 656))();
        OUTLINED_FUNCTION_145();
        *&v280 = v206;
        *(&v280 + 1) = v208;
        sub_1E3280A90(0, &qword_1EE23B250);
        OUTLINED_FUNCTION_82();
        sub_1E3CA4D00();

        v216 = v291;
        if (v291)
        {
          objc_opt_self();
          OUTLINED_FUNCTION_20_2();
          v217 = swift_dynamicCastObjCClass();
          if (!v217)
          {
          }
        }

        else
        {
          v217 = 0;
        }

        (*((*v183 & *v214) + 0x2B0))(1, v217);

        if (sub_1E374E8E4(v212, 0))
        {
          OUTLINED_FUNCTION_68_5();
          OUTLINED_FUNCTION_21();
          v219 = (*(v218 + 376))();
          v220 = sub_1E32AE9B0(v219);
          for (i = 0; v220 != i; ++i)
          {
            if ((v219 & 0xC000000000000001) != 0)
            {
              v229 = OUTLINED_FUNCTION_55_39();
              v222 = MEMORY[0x1E6911E60](v229);
            }

            else
            {
              if (i >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_204;
              }

              v222 = *(v219 + 8 * i + 32);
            }

            v223 = v222;
            if (__OFADD__(i, 1))
            {
              goto LABEL_203;
            }

            v225 = *&v222[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
            v224 = *&v222[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
            v286[0] = 0;
            *&v291 = v225;
            *(&v291 + 1) = v224;
            v226 = ((*MEMORY[0x1E69E7D40] & *v277) + 672);
            v227 = *((*MEMORY[0x1E69E7D40] & *v277) + 0x2A0);

            v227(&v280);
            OUTLINED_FUNCTION_152();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
            OUTLINED_FUNCTION_177_3();
            v228 = OUTLINED_FUNCTION_60_6();
            v226(v228);
          }

          OUTLINED_FUNCTION_68_5();
          v183 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_21();
          v231 = (*(v230 + 392))(&v280);
          *v232 = MEMORY[0x1E69E7CC0];

          v231(&v280, 0);
          OUTLINED_FUNCTION_115_8();
        }

        OUTLINED_FUNCTION_12_129();
        v233 += 79;
        v234 = *v233;
        v235 = (*v233)();
        v236 = 0;
        v237 = *(v235 + 16);
        for (j = 4u; ; j += 5)
        {
          if (v237 == v236)
          {
            OUTLINED_FUNCTION_188_2();

            OUTLINED_FUNCTION_116_1();

            OUTLINED_FUNCTION_115_8();
            goto LABEL_192;
          }

          if (v236 >= *(v235 + 16))
          {
            goto LABEL_202;
          }

          sub_1E38C6028(v235 + j * 8, &v280);
          sub_1E3251BE8(&v280, &v291);
          v239 = OUTLINED_FUNCTION_146();
          __swift_instantiateConcreteTypeFromMangledNameV2(v239);
          type metadata accessor for LibrarySidebarItem();
          if (swift_dynamicCast())
          {
            break;
          }

          ++v236;
        }

        OUTLINED_FUNCTION_115_8();
        v234();
        v240 = OUTLINED_FUNCTION_50();
        sub_1E39ABF00(v240, 1, qword_1E42AD1A0);
        sub_1E38C6028(&qword_1E42AD1A0[j], &v280);

        OUTLINED_FUNCTION_1_31();
        v242 = (*((*v183 & v241) + 0x288))(v286);
        sub_1E3E1FFD8(v236, &v291);
        __swift_destroy_boxed_opaque_existential_1(&v291);
        v243 = OUTLINED_FUNCTION_192_2();
        v242(v243);
        v244 = *(&v281 + 1);
        v245 = OUTLINED_FUNCTION_9_141(&v280);
        v246(v245);
        OUTLINED_FUNCTION_59_1();
        swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_20_2();
        sub_1E4207604();
        OUTLINED_FUNCTION_12_1();

        v247 = *(v244 + 16);
        if (v247)
        {
          OUTLINED_FUNCTION_12_129();
          v249 = *(v248 + 672);
          v250 = v244 + 32;
          do
          {
            sub_1E38C6028(v250, &v291);
            v251 = v292;
            OUTLINED_FUNCTION_0_257(&v291, v292);
            v253 = v252(v251);
            v289 = 0;
            *&v283 = v253;
            *(&v283 + 1) = v254;
            v249(v286);
            OUTLINED_FUNCTION_152();
            v255 = OUTLINED_FUNCTION_55_39();
            __swift_instantiateConcreteTypeFromMangledNameV2(v255);
            sub_1E3CA4D10();
            v256 = OUTLINED_FUNCTION_192_2();
            v251(v256);
            __swift_destroy_boxed_opaque_existential_1(&v291);
            v250 += 40;
            --v247;
          }

          while (v247);
          OUTLINED_FUNCTION_116_1();

          OUTLINED_FUNCTION_114_2();

          v183 = MEMORY[0x1E69E7D40];
        }

        else
        {
          OUTLINED_FUNCTION_116_1();
        }

        OUTLINED_FUNCTION_188_2();

        __swift_destroy_boxed_opaque_existential_1(&v280);
LABEL_192:
        sub_1E3E14C2C();
        OUTLINED_FUNCTION_12_129();
        (*(v257 + 960))(0);
        OUTLINED_FUNCTION_1_31();
        (*((*v183 & v258) + 0x498))();
        OUTLINED_FUNCTION_241_0();
        *(v262 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_tabsStateForMetrics) = 0;
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    goto LABEL_163;
  }

  OUTLINED_FUNCTION_200_2();
  v68 = 0;
  v273 = v67 & 0xC000000000000001;
  v265 = v67 & 0xFFFFFFFFFFFFFF8;
  v264 = v67 + 32;
  while (1)
  {
    if (v273)
    {
      v69 = MEMORY[0x1E6911E60](v68, v67);
    }

    else
    {
      if (v68 >= *(v265 + 16))
      {
        goto LABEL_206;
      }

      v69 = *(v264 + 8 * v68);
    }

    v70 = v69;
    v56 = __OFADD__(v68, 1);
    v71 = v68 + 1;
    if (v56)
    {
      goto LABEL_201;
    }

    v279 = v71;
    v72 = *&v69[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
    v73 = *&v69[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];
    if (v72 == sub_1E4205F14() && v73 == v74)
    {

LABEL_77:
      OUTLINED_FUNCTION_12_129();
      OUTLINED_FUNCTION_25();
      v96 = v95();
      if (!v96)
      {
        OUTLINED_FUNCTION_241_0();
        OUTLINED_FUNCTION_200_2();
        goto LABEL_97;
      }

      v97 = v96;
      v98 = [v96 viewControllers];
      v99 = OUTLINED_FUNCTION_118();
      sub_1E3280A90(v99, &qword_1EE23B250);
      OUTLINED_FUNCTION_40_3();
      v100 = sub_1E42062B4();

      if (v100 >> 62)
      {
        if (sub_1E4207384())
        {
LABEL_80:
          if ((v100 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](0, v100);
          }

          else
          {
            if (!*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_207;
            }

            v101 = *(v100 + 32);
          }

          OUTLINED_FUNCTION_87_0();

          OUTLINED_FUNCTION_241_0();
          v276 = v46;
          goto LABEL_133;
        }
      }

      else if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      OUTLINED_FUNCTION_241_0();
      OUTLINED_FUNCTION_200_2();
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_125();
    v76 = sub_1E42079A4();

    if (v76)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_12_129();
    v78 = (*(v77 + 632))();
    v70 = 0;
    v79 = *(v78 + 16);
    v80 = v78 + 32;
    v266 = v79;
    for (k = v78; ; v78 = k)
    {
      if (v70 == v79)
      {

        if (v267)
        {
          OUTLINED_FUNCTION_128_9();
LABEL_99:
          if (v116 == v72 && v115 == v73)
          {
            v118 = 1;
          }

          else
          {
            v118 = OUTLINED_FUNCTION_182();
          }
        }

        else
        {
          v118 = 0;
          OUTLINED_FUNCTION_128_9();
        }

        goto LABEL_106;
      }

      sub_1E39ABF00(v70, 1, v78);
      v81 = v80;
      sub_1E38C6028(v80 + 40 * v70, &v291);
      v82 = v292;
      OUTLINED_FUNCTION_0_257(&v291, v292);
      if (v83(v82) == v72 && v84 == v73)
      {

LABEL_114:

        v131 = OUTLINED_FUNCTION_9_141(&v291);
        v132(v131);
        OUTLINED_FUNCTION_26_90();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
        OUTLINED_FUNCTION_156_1();
        sub_1E4207604();
        OUTLINED_FUNCTION_12_1();

        v134 = *(AssociatedTypeWitness + 16);
        if (v134)
        {
          OUTLINED_FUNCTION_7_20();
          v135 = AssociatedTypeWitness + 32;
          v136 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1E38C6028(v135, v286);
            v137 = v287;
            v138 = v288;
            __swift_project_boxed_opaque_existential_1(v286, v287);
            v284 = v137;
            v285 = *(v138 + 8);
            __swift_allocate_boxed_opaque_existential_1(&v283);
            OUTLINED_FUNCTION_37_1();
            (*(v139 + 16))();
            v140 = v287;
            OUTLINED_FUNCTION_0_257(v286, v287);
            v141(v140);
            OUTLINED_FUNCTION_65_1();
            __swift_destroy_boxed_opaque_existential_1(v286);
            OUTLINED_FUNCTION_151_7();
            v142();
            v67 = v143;
            *&v280 = v140;
            *(&v280 + 1) = v138;
            sub_1E3280A90(0, &qword_1EE23B250);
            sub_1E3CA4D00();

            v144 = v289;
            if (v289)
            {
              objc_opt_self();
              OUTLINED_FUNCTION_19_3();
              v145 = swift_dynamicCastObjCClass();
              if (!v145)
              {
              }
            }

            else
            {
              v145 = 0;
            }

            sub_1E3251BE8(&v283, &v280);
            *(&v282 + 1) = v145;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v151 = OUTLINED_FUNCTION_73_0();
              v136 = sub_1E3E24800(v151, v152, v153, v136);
            }

            v147 = v136[2];
            v146 = v136[3];
            if (v147 >= v146 >> 1)
            {
              v154 = OUTLINED_FUNCTION_35(v146);
              v136 = sub_1E3E24800(v154, v147 + 1, 1, v136);
            }

            v136[2] = v147 + 1;
            v148 = &v136[6 * v147];
            v149 = v280;
            v150 = v282;
            v148[3] = v281;
            v148[4] = v150;
            v148[2] = v149;
            v135 += 40;
            --v134;
          }

          while (v134);
        }

        else
        {

          v136 = MEMORY[0x1E69E7CC0];
        }

        v26 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_7_20();
        v156 = (*(v155 + 832))();
        v157 = v292;
        OUTLINED_FUNCTION_0_257(&v291, v292);
        v159 = v158(v157);
        sub_1E37D26AC(v159, v160, v156);

        v70 = v293;
        OUTLINED_FUNCTION_220_0(&v291, v292);
        v161 = OUTLINED_FUNCTION_38();
        v163 = v162(v161, v70);
        if (v163)
        {
          v67 = v163;
          v70 = v164;
          swift_getObjectType();
          sub_1E3E13020(v136);

          OUTLINED_FUNCTION_59_1();
          v97 = v165();
          swift_unknownObjectRelease();

          goto LABEL_96;
        }

LABEL_93:
        __swift_destroy_boxed_opaque_existential_1(&v291);
        OUTLINED_FUNCTION_187_3();
        OUTLINED_FUNCTION_128_9();
        goto LABEL_97;
      }

      v86 = OUTLINED_FUNCTION_182();

      if (v86)
      {
        goto LABEL_114;
      }

      ++v70;
      v87 = OUTLINED_FUNCTION_9_141(&v291);
      v88(v87);
      OUTLINED_FUNCTION_26_90();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      OUTLINED_FUNCTION_156_1();
      v67 = sub_1E4207604();

      v89 = 0;
      v47 = *(v67 + 16);
      v90 = v67 + 32;
LABEL_67:
      if (v47 != v89)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v291);
      OUTLINED_FUNCTION_115_8();
      v26 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_187_3();
      v79 = v266;
      v80 = v81;
    }

    if (v89 >= *(v67 + 16))
    {
      break;
    }

    sub_1E38C6028(v90, &v280);
    v91 = *(&v281 + 1);
    OUTLINED_FUNCTION_0_257(&v280, *(&v281 + 1));
    if (v92(v91) == v72 && v93 == v73)
    {

      goto LABEL_87;
    }

    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_28_3();
    if ((v91 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v280);
      v90 += 40;
      v89 = (v89 + 1);
      goto LABEL_67;
    }

LABEL_87:

    OUTLINED_FUNCTION_70(&v291);
    v102 = OUTLINED_FUNCTION_26_1();
    v103(v102);
    OUTLINED_FUNCTION_115_8();
    v26 = MEMORY[0x1E69E7D40];
    if (!v104)
    {
      __swift_destroy_boxed_opaque_existential_1(&v280);
      goto LABEL_93;
    }

    v70 = v104;
    v269 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396D0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1E4297BE0;
    v106 = *(&v281 + 1);
    v107 = v282;
    __swift_project_boxed_opaque_existential_1(&v280, *(&v281 + 1));
    *(v67 + 56) = v106;
    *(v67 + 64) = v107[1];
    __swift_allocate_boxed_opaque_existential_1((v67 + 32));
    OUTLINED_FUNCTION_37_1();
    (*(v108 + 16))();
    v109 = *(&v281 + 1);
    OUTLINED_FUNCTION_0_257(&v280, *(&v281 + 1));
    v110(v109);
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_1_31();
    (*((*v26 & v111) + 0x290))();
    OUTLINED_FUNCTION_108_3();
    v286[0] = v109;
    v286[1] = v107;
    sub_1E3280A90(0, &qword_1EE23B250);
    sub_1E3CA4D00();

    v112 = v283;
    if (v283)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v113 = swift_dynamicCastObjCClass();
      if (!v113)
      {

        v113 = 0;
      }

      *(v67 + 72) = v113;
    }

    else
    {
      *(v67 + 72) = 0;
    }

    ObjectType = swift_getObjectType();
    v97 = v70;
    (*(v269 + 8))(0, 0, v67, ObjectType);
    OUTLINED_FUNCTION_16_5();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v280);
LABEL_96:
    __swift_destroy_boxed_opaque_existential_1(&v291);
    OUTLINED_FUNCTION_187_3();
    OUTLINED_FUNCTION_128_9();
    if (!v97)
    {
LABEL_97:
      v115 = v267;
      if (v267)
      {
        v116 = v263;
        goto LABEL_99;
      }

      v118 = 0;
LABEL_106:
      OUTLINED_FUNCTION_12_129();
      v46 = (*(v119 + 368))();
      OUTLINED_FUNCTION_1_31();
      v97 = (*((*v26 & v120) + 0x460))(v70, v118 & 1, v46, 0);

      if (!v97)
      {
        v121 = sub_1E324FBDC();
        v67 = v260;
        (*(v271 + 16))(v260, v121, v261);

        v122 = sub_1E41FFC94();
        v123 = sub_1E42067F4();

        if (os_log_type_enabled(v122, v123))
        {
          OUTLINED_FUNCTION_6_21();
          v270 = v70;
          v124 = OUTLINED_FUNCTION_16_15();
          *&v280 = v124;
          *v46 = 136315138;
          v125 = OUTLINED_FUNCTION_125();
          v128 = sub_1E3270FC8(v125, v126, v127);

          *(v46 + 4) = v128;
          OUTLINED_FUNCTION_53_15(&dword_1E323F000, v122, v123, "RootSplitViewController:: updating to tab bar mode could not create view controller for %s");
          __swift_destroy_boxed_opaque_existential_1(v124);
          OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_51_2();
        }

        else
        {
        }

        v129 = OUTLINED_FUNCTION_39_9();
        v130(v129);
        OUTLINED_FUNCTION_187_3();
        goto LABEL_136;
      }
    }

LABEL_133:
    v286[0] = v97;
    *&v291 = v72;
    *(&v291 + 1) = v73;
    v166 = *((*v26 & *v47) + 0x2A0);

    v167 = v97;
    v168 = v166(&v280);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0);
    OUTLINED_FUNCTION_177_3();
    v169 = OUTLINED_FUNCTION_60_6();
    v168(v169);
    v170 = OUTLINED_FUNCTION_125();
    sub_1E397B708(v170, v171);

    v172 = v70;
    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_193_2();
    v46 = *(v173 + 16);
    v174 = *(v173 + 24);
    if (v46 >= v174 >> 1)
    {
      OUTLINED_FUNCTION_35(v174);
      sub_1E42062F4();
    }

    OUTLINED_FUNCTION_13_8();
    sub_1E4206324();

    OUTLINED_FUNCTION_189_3(v294);
LABEL_136:
    v68 = v279;
    if (v279 == v275)
    {

      v175 = v290;
      goto LABEL_140;
    }
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
}

void sub_1E3E1E8C0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67_22();
  v2 = *(v1 + 632);
  v3 = v2();
  sub_1E39574B8(v3, &v48);

  if (v50)
  {
    v4 = v51;
    __swift_project_boxed_opaque_existential_1(&v48, v50);
    v5 = OUTLINED_FUNCTION_38();
    v7 = v6(v5, v4);
    v9 = v8;
    v10 = __swift_destroy_boxed_opaque_existential_1(&v48);
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_1E325F7FC(&v48, &qword_1ECF2EC80);
  }

  v11 = (v2)(v10);
  sub_1E39574B8(v11, v45);

  if (!v46)
  {
    v43 = v45;
LABEL_23:
    sub_1E325F7FC(v43, &qword_1ECF2EC80);
LABEL_24:

    goto LABEL_25;
  }

  v12 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v13 = OUTLINED_FUNCTION_38();
  v14(v13, v12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  OUTLINED_FUNCTION_156_1();
  sub_1E4207604();
  OUTLINED_FUNCTION_11_5();

  sub_1E39574B8(AssociatedTypeWitness, &v48);

  if (!v50)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    v43 = &v48;
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(&v48, v50);
  v16 = OUTLINED_FUNCTION_3_194();
  v7 = v17(v16);
  v9 = v18;
  __swift_destroy_boxed_opaque_existential_1(&v48);
  __swift_destroy_boxed_opaque_existential_1(v45);

LABEL_8:
  OUTLINED_FUNCTION_67_22();
  v20 = *(v19 + 656);

  v20(v21);
  OUTLINED_FUNCTION_49_4();
  v48 = v7;
  v49 = v9;
  sub_1E3280A90(0, &qword_1EE23B250);
  sub_1E3CA4D00();

  v22 = v45[0];
  if (!v45[0])
  {
    goto LABEL_24;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_19_3();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 viewControllers];
    v26 = sub_1E42062B4();

    v45[0] = v26;
    v48 = 1;
    LOBYTE(v49) = 0;
    v27 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27);
    sub_1E328FCF4(&qword_1EE23B4A0, &unk_1ECF396B0);
    v28 = OUTLINED_FUNCTION_147();
    sub_1E38D2054(v28, v29);

    if (v44)
    {
      swift_getObjectType();
      if (!dynamic_cast_existential_1_conditional(v44))
      {
        OUTLINED_FUNCTION_46_12();

        goto LABEL_25;
      }

      OUTLINED_FUNCTION_227_0();
      swift_getObjectType();
      OUTLINED_FUNCTION_202_1();
      v30();
      v32 = v31;

      if (v32)
      {
        v22 = 1;
        do
        {
          v33 = [v24 viewControllers];
          v34 = sub_1E42062B4();

          v45[0] = v34;
          v48 = v22;
          LOBYTE(v49) = 0;
          v35 = OUTLINED_FUNCTION_147();
          sub_1E38D2054(v35, v36);

          swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v44))
          {
            OUTLINED_FUNCTION_134_2();
            ObjectType = swift_getObjectType();
            v38 = v44[2];
            v39 = v44;
            v38(1, ObjectType, v44);

            v40 = v44[5];
            v41 = v39;
            (v40)(0, 0, ObjectType, v44);
          }
        }

        while (!__OFADD__(v22++, 1));
        __break(1u);
      }
    }
  }

  OUTLINED_FUNCTION_46_12();

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E1F79C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_45();
  (*(v2 + 1088))();
  if (!v3)
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_206_1();
  OUTLINED_FUNCTION_45();
  v5 = (*(v4 + 808))();
  v71 = v0;
  v72 = v1;
  MEMORY[0x1EEE9AC00](v5);
  v58[2] = &v71;
  v6 = sub_1E3849DF8(sub_1E3756228, v58, v5);

  if (!v6)
  {
    goto LABEL_47;
  }

  v66 = v0;
  OUTLINED_FUNCTION_45();
  v7 += 79;
  v8 = *v7;
  v9 = (*v7)();
  sub_1E39574B8(v9, &v71);

  v10 = v73;
  if (v73)
  {
    v11 = v74;
    __swift_project_boxed_opaque_existential_1(&v71, v73);
    v67 = (*(v11 + 48))(v10, v11);
    v13 = v12;
    v14 = __swift_destroy_boxed_opaque_existential_1(&v71);
    if (v13)
    {
      v61 = 0;
      v62 = v1;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = sub_1E325F7FC(&v71, &qword_1ECF2EC80);
  }

  v15 = (v8)(v14);
  sub_1E39574B8(v15, v68);

  if (!v69)
  {
    v31 = v68;
LABEL_46:
    sub_1E325F7FC(v31, &qword_1ECF2EC80);

LABEL_47:

    goto LABEL_48;
  }

  v16 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  OUTLINED_FUNCTION_202_1();
  v17 = OUTLINED_FUNCTION_50();
  v18(v17, v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  OUTLINED_FUNCTION_156_1();
  sub_1E4207604();
  OUTLINED_FUNCTION_12_1();

  sub_1E39574B8(AssociatedTypeWitness, &v71);

  v20 = v73;
  if (!v73)
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
    v31 = &v71;
    goto LABEL_46;
  }

  v61 = 0;
  v62 = v1;
  __swift_project_boxed_opaque_existential_1(&v71, v73);
  OUTLINED_FUNCTION_8_156();
  v67 = v21(v20);
  v13 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v71);
  __swift_destroy_boxed_opaque_existential_1(v68);

LABEL_10:
  OUTLINED_FUNCTION_45();
  v24 = (*(v23 + 736))();
  v25 = sub_1E32AE9B0(v24);
  v26 = 0;
  while (1)
  {
    if (v25 == v26)
    {

      goto LABEL_47;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1E6911E60](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    if (*&v27[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier] == v67 && v13 == *&v27[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8])
    {
      break;
    }

    v30 = sub_1E42079A4();

    ++v26;
    if (v30)
    {

      goto LABEL_26;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_45();
  v33 = *(v32 + 656);

  v33(v34);
  OUTLINED_FUNCTION_145();
  v71 = v67;
  v72 = v13;
  sub_1E3280A90(0, &qword_1EE23B250);
  OUTLINED_FUNCTION_82();
  v65 = v35;
  sub_1E3CA4D00();

  v36 = v68[0];
  v37 = v62;
  v38 = v66;
  if (!v68[0])
  {

    goto LABEL_47;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v64 = swift_dynamicCastObjCClass();
  if (v64)
  {
    v60 = v36;

    v33(v39);
    OUTLINED_FUNCTION_145();
    v71 = v38;
    v72 = v37;
    OUTLINED_FUNCTION_82();
    sub_1E3CA4D00();

    v36 = v68[0];
    if (!v68[0])
    {

      v57 = v60;
LABEL_52:

      goto LABEL_48;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v63 = swift_dynamicCastObjCClass();
    if (v63)
    {
      v59 = v36;
      v40 = [v64 popToRootViewControllerAnimated_];
      while (1)
      {

        v41 = [v63 viewControllers];
        v42 = sub_1E42062B4();

        v43 = v42 >> 62 ? sub_1E4207384() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v44 = MEMORY[0x1E69E7D40];
        if (!v43)
        {
          break;
        }

        if ((v42 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x1E6911E60](0, v42);
        }

        else
        {
          if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v45 = *(v42 + 32);
        }

        v40 = v45;

        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v40))
        {
          OUTLINED_FUNCTION_145();
          ObjectType = swift_getObjectType();
          v47 = v41[11];
          v48 = v40;
          v47(0, ObjectType, v41);

          v49 = v41[5];

          v50 = v48;
          v49(v66, v37, ObjectType, v41);

          v51 = v41[2];
          v52 = v50;
          v51(1, ObjectType, v41);
        }

        [v64 pushViewController:v40 animated:0];
        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v40))
        {
          OUTLINED_FUNCTION_145();
          v53 = swift_getObjectType();
          v54 = v41[2];
          v55 = v40;
          v54(0, v53, v41);
        }
      }

      OUTLINED_FUNCTION_39();
      (*((*v44 & v56) + 0x220))(v67, v13);

      v57 = v59;
      goto LABEL_52;
    }
  }

  else
  {
  }

LABEL_48:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E1FFD8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E3E25304(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[5 * a1];
    sub_1E3251BE8(v8 + 2, a2);
    result = memmove(v8 + 2, v8 + 72, 40 * (v7 - 1 - a1));
    v5[2] = v7 - 1;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E3E200A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_118();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FDEE4();
  v7 = v4;
  a4();

  v8 = OUTLINED_FUNCTION_53();
  return v9(v8);
}

uint64_t sub_1E3E20174(void *a1, char a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  v6 = [v2 tabs];
  sub_1E3280A90(0, &unk_1ECF39558);
  OUTLINED_FUNCTION_138_1();
  v7 = sub_1E42062B4();

  sub_1E3E20528(v7, v5);

  if (a2)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    *&v2[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_savedTabBarItemsIds] = *(v5 + 16);

LABEL_14:
  }

  else
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v8 = *(v5 + 16);
    v36 = v3;
    v34 = OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_savedTabBarItemsIds;

    sub_1E397015C(v9, v8);
    OUTLINED_FUNCTION_31_4();

    v10 = v8 + 56;
    OUTLINED_FUNCTION_4_4();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;

    v17 = 0;
    v35 = v8 + 56;
    if (v13)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        *&v36[v34] = MEMORY[0x1E69E7CD0];
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        v17 = v18;
        do
        {
LABEL_8:
          OUTLINED_FUNCTION_172_0();
          v20 = *v19;
          v21 = v19[1];

          v22 = sub_1E4205ED4();
          v23 = [a1 tabForIdentifier_];

          v39 = v23;
          if (v23)
          {
            v24 = [v23 title];
            v38 = sub_1E4205F14();
            v26 = v25;
          }

          else
          {
            v38 = 0;
            v26 = 0xE000000000000000;
          }

          v13 &= v13 - 1;
          v27 = *&v36[OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager];
          v28 = *(v27 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_tabBarPageDataDict);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          *(inited + 32) = sub_1E4205F14();
          *(inited + 40) = v30;
          v31 = *(v27 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar);
          v32 = *(v27 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_actionContextTabBar + 8);
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v31;
          *(inited + 56) = v32;

          v33 = sub_1E4205CB4();

          sub_1E3BA71B8(v20, v21, 1, 3, v38, v26, 0, 0, v40, v28, v33);
          sub_1E3BA6C54();
          sub_1E3814D14(v40);

          v10 = v35;
        }

        while (v13);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1E3E20528(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v5 = sub_1E4207384();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &selRef_alwaysPrefetchAppConfiguration;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E6911E60](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 children];
        v12 = OUTLINED_FUNCTION_106();
        sub_1E3280A90(v12, &unk_1ECF39558);
        OUTLINED_FUNCTION_20_2();
        v13 = sub_1E42062B4();

        sub_1E3E20528(v13, a2);
      }

      else
      {
        if (![v9 v7[187]])
        {

          goto LABEL_13;
        }

        v14 = [v9 identifier];
        v15 = sub_1E4205F14();
        v16 = v7;
        v18 = v17;

        swift_beginAccess();
        v2 = (a2 + 16);
        v19 = v18;
        v7 = v16;
        sub_1E3277398(&v20, v15, v19);
        swift_endAccess();
      }

LABEL_13:
      if (v5 == ++v6)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1E3E206E8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v120 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v109 - v17;
  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  OUTLINED_FUNCTION_19_3();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_44;
  }

  v20 = v19;
  v113 = v10;
  v114 = v2;
  v112 = v0;
  OUTLINED_FUNCTION_21();
  v21 += 65;
  v22 = *v21;
  v23 = v21;

  v117 = v23;
  v118 = v22;
  v25 = (v22)(v24);
  if (v25)
  {
    v26 = v25;
    v27 = v4;
    v119 = sub_1E3A517DC();
  }

  else
  {
    v27 = v4;
    v119 = 0;
  }

  v28 = *(*v20 + 896);

  v30 = v28(v29);
  v31 = v27;
  v32 = v30;
  v116 = v31;

  v34 = (v118)(v33);
  if (v34)
  {
    v35 = v34;
    v36 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v115 = v35[v36];
  }

  else
  {
    v115 = 0;
  }

  v37 = v6;
  v38 = v119;
  if (!v32)
  {
    if (!v119)
    {

      goto LABEL_44;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v62 = v120;
    v63(v1);
    v64 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_178();
    if (os_log_type_enabled(v64, v65))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      v62 = v120;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v1, v62);
    sub_1E3E20EA4();
    OUTLINED_FUNCTION_67_1();
    (*((*MEMORY[0x1E69E7D40] & v71) + 0x210))(0);

LABEL_37:

    goto LABEL_44;
  }

  v39 = v32;
  v40 = sub_1E324FBDC();
  v41 = *(v37 + 16);
  v111 = v40;
  if (v38 && v32 == v38)
  {
    v42 = v120;
    v43 = v41;
    v41(v13, v40, v120);
    v44 = sub_1E41FFC94();
    v45 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v45))
    {
      v46 = OUTLINED_FUNCTION_125_0();
      *v46 = 0;
      OUTLINED_FUNCTION_20_34();
      _os_log_impl(v47, v48, v49, v50, v46, 2u);
      v42 = v120;
      OUTLINED_FUNCTION_6_0();
    }

    v51 = *(v37 + 8);
    v52 = OUTLINED_FUNCTION_146();
    v51(v52);
    if ((v115 & 1) == 0)
    {
      v53 = v113;
      v43(v113, v111, v42);
      v54 = v53;
      v55 = sub_1E41FFC94();
      v56 = sub_1E4206814();
      if (OUTLINED_FUNCTION_20_11(v56))
      {
        v57 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v57);
        OUTLINED_FUNCTION_20_34();
        _os_log_impl(v58, v59, v60, v61, v13, 2u);
        OUTLINED_FUNCTION_21_0();
      }

      (v51)(v54, v42);
      OUTLINED_FUNCTION_15_8();
      sub_1E3E16BA8();
    }

LABEL_43:

    goto LABEL_44;
  }

  v110 = v41;
  v41(v18, v40, v120);
  v72 = sub_1E41FFC94();
  v73 = sub_1E4206814();
  if (OUTLINED_FUNCTION_20_11(v73))
  {
    v74 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v74);
    OUTLINED_FUNCTION_20_34();
    _os_log_impl(v75, v76, v77, v78, v13, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v79 = (v37 + 8);
  v80 = *(v37 + 8);
  v81 = v18;
  v82 = v120;
  v113 = v79;
  v80(v81, v120);
  if (v38)
  {
    v110(v114, v111, v82);
    v83 = sub_1E41FFC94();
    v84 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 67109120;
      *(v85 + 4) = v115;
      OUTLINED_FUNCTION_20_34();
      _os_log_impl(v86, v87, v88, v89, v85, 8u);
      OUTLINED_FUNCTION_21_0();
    }

    v80(v114, v82);
  }

  else
  {
    v115 = 0;
  }

  v90 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v91 = v118();
  v122 = 0;
  memset(v121, 0, sizeof(v121));
  v92 = sub_1E39C4090(v20, v91, v121);

  sub_1E325F7FC(v121, &qword_1ECF296C0);
  if (!v92)
  {

    goto LABEL_37;
  }

  type metadata accessor for AccountMessageViewController();
  OUTLINED_FUNCTION_20_2();
  v93 = swift_dynamicCastClass();
  if (v93)
  {
    v94 = v93;
    OUTLINED_FUNCTION_85();
    v96 = *(v95 + 528);
    v97 = v92;
    v98 = v96(v94);
    v99 = (v118)(v98);
    if (v99)
    {
      v100 = v99;
      sub_1E3A51794(0);
    }

    if (v115)
    {
      OUTLINED_FUNCTION_224();
      sub_1E3E20EA4();
    }

    else
    {
      v101 = v120;
      v110(v112, v111, v120);
      v102 = sub_1E41FFC94();
      sub_1E4206814();
      OUTLINED_FUNCTION_178();
      if (os_log_type_enabled(v102, v103))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v104, v105, v106, v107, v108, 2u);
        v101 = v120;
        OUTLINED_FUNCTION_6_0();
      }

      v80(v112, v101);
      OUTLINED_FUNCTION_15_8();
      sub_1E3E16BA8();
    }

    goto LABEL_43;
  }

LABEL_44:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E20EA4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4206D84();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_26_3();
  v14 = (*((*MEMORY[0x1E69E7D40] & v13) + 0x208))();
  if (!v14)
  {
LABEL_16:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v15 = v14;
  if (v5)
  {
    v16 = type metadata accessor for AccountMessageContentConfiguration();
    v17 = v15;
    v18 = sub_1E3A52AE4();
  }

  else
  {
    [v14 vui:0 willMoveToParentViewController:?];
    v19 = [v15 view];
    if (!v19)
    {
      goto LABEL_18;
    }

    v16 = v19;
    [v19 vui_removeFromSuperView];

    [v15 vui_removeFromParentViewController];
    v18 = 0;
  }

  if (v3)
  {
    v20 = [v1 sidebar];
    v21 = OUTLINED_FUNCTION_106();
    if (v18)
    {
      v22 = type metadata accessor for AccountMessageContentConfiguration();
      OUTLINED_FUNCTION_77_19();
      v25 = sub_1E3274BD0(v23, v24);
      v21 = v18;
    }

    else
    {
      v22 = 0;
      v25 = 0;
      v40 = 0;
      v41 = 0;
    }

    v39 = v21;
    v42 = v22;
    v43 = v25;

    sub_1E4206D94();

    goto LABEL_13;
  }

  v37 = v5;
  v38 = objc_opt_self();
  OUTLINED_FUNCTION_2_4();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  *(v26 + 24) = v18;
  OUTLINED_FUNCTION_2_4();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1E3E24E9C;
  *(v27 + 24) = v26;
  v43 = sub_1E37D1918;
  v44 = v27;
  OUTLINED_FUNCTION_12_0();
  v40 = 1107296256;
  OUTLINED_FUNCTION_67();
  v41 = v28;
  v42 = &block_descriptor_44_1;
  v29 = _Block_copy(&v39);

  v30 = v1;

  [v38 performWithoutAnimation_];
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v5 = v37;
LABEL_13:
    v32 = [v1 sidebar];
    (*(v8 + 104))(v12, *MEMORY[0x1E69DC430], v6);
    sub_1E4206DA4();

    v33 = OUTLINED_FUNCTION_102_3();
    v34(v33);
    if (v5)
    {
      [v1 vui:v15 addChildViewController:?];
      [v15 vui:v1 didMoveToParentViewController:?];
    }

    v35 = OUTLINED_FUNCTION_170_0();
    sub_1E37FAED8(v35, v36);
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1E3E21260()
{
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v8(v0);
    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v11);
      _os_log_impl(&dword_1E323F000, v9, v10, "RootSplitViewController:: account message: dispatch timer ended, attempting to present", v1, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v4 + 8))(v0, v2);
    OUTLINED_FUNCTION_67_1();
    (*((*MEMORY[0x1E69E7D40] & v12) + 0x240))(0);
    v13 = OUTLINED_FUNCTION_15_8();
    sub_1E3E16BA8(v13, v14);
  }
}

void sub_1E3E21400()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v3;
  v58 = v4;
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v57 = v10 - v9;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v56 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v55 = v15 - v14;
  OUTLINED_FUNCTION_138();
  v50 = sub_1E4203FB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v60 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v53 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v52 = v22;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v25 = Strong;
  v48 = v7;
  v49 = v5;
  v26 = [Strong sidebar];
  [v26 setHidden_];

  v27 = v58;
  v46 = v11;
  if (v58)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_89_5();
    v28(v0);
    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();
    if (OUTLINED_FUNCTION_262(v30))
    {
      v31 = OUTLINED_FUNCTION_125_0();
      *v31 = 0;
      _os_log_impl(&dword_1E323F000, v29, v30, "RootSplitViewController:: animating sidebar open, will try to present account message in 0.5s", v31, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v32 = OUTLINED_FUNCTION_97_1();
    v33(v32);
    v27 = v58;
  }

  v34 = [v25 view];
  if (v34)
  {
    v35 = v34;
    [v34 setUserInteractionEnabled_];

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v59 = sub_1E4206A04();
    sub_1E4204004();
    *v1 = 500;
    (*(v17 + 104))(v1, *MEMORY[0x1E69E7F38], v50);
    MEMORY[0x1E690E9C0](v2, v1);
    v36 = OUTLINED_FUNCTION_13_8();
    v37(v36);
    v54 = *(v53 + 8);
    v54(v2, v60);
    OUTLINED_FUNCTION_4_0();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v27 & 1;
    *(v39 + 25) = v51 & 1;
    v61[4] = sub_1E3E25454;
    v61[5] = v39;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v61[2] = v40;
    v61[3] = &block_descriptor_73_0;
    v41 = _Block_copy(v61);

    sub_1E4203FE4();
    v61[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_7_180();
    sub_1E3274BD0(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v44, v45);
    sub_1E42072E4();
    MEMORY[0x1E69112E0](v52, v55, v57, v41);
    _Block_release(v41);

    (*(v48 + 8))(v57, v49);
    (*(v56 + 8))(v55, v47);
    v54(v52, v60);
LABEL_8:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3E219C8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = [v3 identifier];
  sub_1E4205F14();

  OUTLINED_FUNCTION_26_3();
  v12 = MEMORY[0x1E69E7D40];
  v13 = OUTLINED_FUNCTION_39_0();
  v14(v13);
  v16 = v15;

  if (v16)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v17(v10);
    v18 = v3;
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();

    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_16_15();
      v56[0] = v21;
      *v12 = 136315138;
      v22 = [v18 identifier];
      sub_1E4205F14();

      v23 = OUTLINED_FUNCTION_39_9();
      v26 = sub_1E3270FC8(v23, v24, v25);

      *(v12 + 4) = v26;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_51_2();
    }

    (*(v6 + 8))(v10, v4);
  }

  else
  {
    v32 = [v3 identifier];
    sub_1E4205F14();

    OUTLINED_FUNCTION_26_3();
    v33 = OUTLINED_FUNCTION_146();
    v34(v33);

    if (!v54)
    {
      sub_1E325F7FC(&v53, &unk_1ECF2F1D0);
      goto LABEL_17;
    }

    sub_1E3251BE8(&v53, v56);
    OUTLINED_FUNCTION_26_3();
    v36 = (*((*v12 & v35) + 0x1B8))();
    if (sub_1E374E8E4(v36, 2))
    {
      sub_1E38C6028(v56, &v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      if (swift_dynamicCast())
      {
        sub_1E3251BE8(v50, &v53);
        v37 = v55;
        __swift_project_boxed_opaque_existential_1(&v53, v54);
        v38 = OUTLINED_FUNCTION_35_0();
        if ((v39(v38, v37) & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1(&v53, v54);
          OUTLINED_FUNCTION_33_24();
          v40 = OUTLINED_FUNCTION_146();
          v41(v40);
          swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_20_2();
          v42 = sub_1E4207604();

          v43 = *(v42 + 16);

          if (v43)
          {
            __swift_destroy_boxed_opaque_existential_1(v56);
            __swift_destroy_boxed_opaque_existential_1(&v53);
            goto LABEL_17;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v53);
      }

      else
      {
        v51 = 0;
        memset(v50, 0, sizeof(v50));
        sub_1E325F7FC(v50, &qword_1ECF2EC80);
      }
    }

    v44 = [v3 identifier];
    sub_1E4205F14();

    OUTLINED_FUNCTION_21();
    v46 = (*(v45 + 440))();
    if (sub_1E374E8E4(v46, 2))
    {
      v47 = [v1 sidebar];
      [v47 isHidden];

      OUTLINED_FUNCTION_26_3();
      v48 = OUTLINED_FUNCTION_53();
      v49(v48);
    }

    OUTLINED_FUNCTION_46_12();
    sub_1E3E152AC();
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E21FA8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v66 = v5;
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v63 = v10;
  OUTLINED_FUNCTION_138();
  v11 = sub_1E41FFE34();
  OUTLINED_FUNCTION_0_10();
  v64 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E4206914();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v18 = [objc_opt_self() itemFromRequest_];
  v65 = v0;
  v19 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_67_22();
  v21 = (*(v20 + 440))();
  if (!sub_1E374E8E4(v21, 2))
  {
    goto LABEL_15;
  }

  sub_1E4206924();
  v22 = OUTLINED_FUNCTION_170_0();
  if (v23(v22) == *MEMORY[0x1E69DC410])
  {
    v24 = OUTLINED_FUNCTION_170_0();
    v25(v24);
    v26 = *v1;
    v27 = [v26 identifier];
    v28 = sub_1E4205F14();
    v30 = v29;

    OUTLINED_FUNCTION_97_14();
    (*((*v19 & v31) + 0x438))(v68, v28, v30);
    if (v68[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
      if (OUTLINED_FUNCTION_90_0())
      {
        if (*(&v70 + 1))
        {
          sub_1E3251BE8(&v69, v72);
          OUTLINED_FUNCTION_97_14();
          (*((*v19 & v32) + 0x250))();
          v33 = OUTLINED_FUNCTION_35_0();
          sub_1E378A81C(v33, v30, v65);
          OUTLINED_FUNCTION_11_5();

          if (v26)
          {
            v34 = OUTLINED_FUNCTION_35_5();
            sub_1E3E22644(v34, v35, v28, v30);

            MEMORY[0x1E6911240](v36);
            v37 = sub_1E41FFE14();
            (*(v64 + 8))(v16, v11);
            sub_1E3E10D08(v72, v37, 1);

            OUTLINED_FUNCTION_143();
            __swift_destroy_boxed_opaque_existential_1(v72);
          }

          else
          {
            sub_1E324FBDC();
            OUTLINED_FUNCTION_89_5();
            v52(v63);

            v53 = sub_1E41FFC94();
            v54 = sub_1E42067F4();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = OUTLINED_FUNCTION_6_21();
              v56 = OUTLINED_FUNCTION_100();
              *&v69 = v56;
              *v55 = 136315138;
              v57 = sub_1E3270FC8(v28, v30, &v69);

              *(v55 + 4) = v57;
              OUTLINED_FUNCTION_136();
              _os_log_impl(v58, v59, v60, v61, v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v56);
              OUTLINED_FUNCTION_55();
              OUTLINED_FUNCTION_6_0();
            }

            else
            {
            }

            OUTLINED_FUNCTION_143();
            (*(v66 + 8))(v63, v67);
            __swift_destroy_boxed_opaque_existential_1(v72);
          }

          goto LABEL_15;
        }
      }

      else
      {
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
      }
    }

    else
    {

      sub_1E325F7FC(v68, &unk_1ECF2F1D0);
      v69 = 0u;
      v70 = 0u;
      v71 = 0;
    }

    sub_1E325F7FC(&v69, &qword_1ECF2EC80);
    goto LABEL_15;
  }

  v39 = OUTLINED_FUNCTION_170_0();
  v40(v39);
  v41 = sub_1E324FBDC();
  (*(v66 + 16))(v8, v41, v67);
  v42 = v18;
  v43 = sub_1E41FFC94();
  v44 = sub_1E4206814();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_6_21();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    OUTLINED_FUNCTION_20_34();
    _os_log_impl(v48, v49, v50, v51, v45, 0xCu);
    sub_1E325F7FC(v46, &unk_1ECF28E30);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_65_0();
  }

  (*(v66 + 8))(v8, v67);
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E22644(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, unint64_t a4)
{
  v80 = a4;
  v79 = a3;
  OUTLINED_FUNCTION_118();
  v82 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v81 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v9 - v8);
  sub_1E41FFE34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39568);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  v14 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  MEMORY[0x1E6911250](v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39570);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
    v21 = *(v16 + 32);
    v83 = v14;
    v22 = v21(v20, v13, v14);
    MEMORY[0x1E6911240](v22);
    v23 = sub_1E41FFE14();
    v24 = OUTLINED_FUNCTION_114_0();
    v25(v24);
    v26 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_85();
    (*(v27 + 184))(v23);
    v28 = *(v4 + OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader);
    v29 = a2;
    v78 = v16;
    if ((v28 & 1) == 0)
    {
      OUTLINED_FUNCTION_21_70();
      v48 = (*(v45 + 200))(v46, v47);
      if (v48)
      {
      }

      else
      {
        v49 = [objc_opt_self() clearColor];
        v50 = [objc_opt_self() imageWithColor_];

        sub_1E41FFF44();
      }
    }

    v51 = sub_1E41FFEF4();
    sub_1E41FFEE4();
    v52 = OUTLINED_FUNCTION_15_119();
    (v51)(v52);
    OUTLINED_FUNCTION_21_70();
    v54 = *(v53 + 200);
    v55 = v54();
    if (v55)
    {

      OUTLINED_FUNCTION_21_70();
      (*(v56 + 432))();
      OUTLINED_FUNCTION_67_1();
      (*((*v26 & v57) + 0x1A8))();
      if ((v58 & 1) == 0)
      {
        VUIRoundValue();
        VUIRoundValue();
        v51 = sub_1E41FFEF4();
        sub_1E41FFEC4();
        v59 = OUTLINED_FUNCTION_15_119();
        (v51)(v59);
      }

      v82 = v20;
      OUTLINED_FUNCTION_21_70();
      v61 = *(v60 + 248);
      v62 = v61();
      if (v62)
      {
        v63 = v62;
        v81 = v29;
        v51 = *(*v62 + 744);

        v64 = (v51)();
        if (v64)
        {

          (*(*v63 + 552))(v87);

          if (v88)
          {
            sub_1E374E9C4();
            OUTLINED_FUNCTION_30();
            (*(v65 + 552))(v89);
            v66 = *v89;
            v67 = *&v89[1];
            v68 = *&v89[2];
            v69 = v90;

            if ((v91 & 1) == 0)
            {
              sub_1E3952BE8(v66, v67, v68, v69);
            }
          }

          VUIFloorValue();
          v51 = OUTLINED_FUNCTION_233_0();
          sub_1E41FFED4();
          v70 = OUTLINED_FUNCTION_15_119();
          (v51)(v70);
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_21_70();
      v72 = (*(v71 + 224))();
      if (v72 != 5 && (sub_1E3CE4DD8(v72) & 1) != 0 && v61())
      {
        OUTLINED_FUNCTION_30();
        (*(v73 + 1944))();
        OUTLINED_FUNCTION_12_1();

        if (v51)
        {
          v74 = v51;
          v75 = OUTLINED_FUNCTION_233_0();
          sub_1E41FFEB4();
          v76 = OUTLINED_FUNCTION_15_119();
          v75(v76);
        }
      }

      v54();
      v20 = v82;
      sub_1E41FFF44();
    }

    v77 = v83;
    v85 = v83;
    v86 = MEMORY[0x1E69DC110];
    __swift_allocate_boxed_opaque_existential_1(v84);
    OUTLINED_FUNCTION_199_0();
    (*(v51 + 16))();
    sub_1E4206904();
    return (*(v51 + 8))(v20, v77);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_1E325F7FC(v13, &qword_1ECF39568);
    sub_1E324FBDC();
    v30 = v81;
    OUTLINED_FUNCTION_131_0();
    v31 = v82;
    v32(v83);
    v33 = v80;

    v34 = a2;
    v35 = sub_1E41FFC94();
    v36 = sub_1E42067F4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v87[0] = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_1E3270FC8(v79, v33, v87);
      *(v37 + 12) = 2080;
      MEMORY[0x1E6911250](v84);
      v38 = v85;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v90 = *&v38;
      __swift_allocate_boxed_opaque_existential_1(v89);
      OUTLINED_FUNCTION_37_1();
      (*(v39 + 16))();
      v40 = sub_1E3294FA4(v89);
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1(v84);
      v43 = sub_1E3270FC8(v40, v42, v87);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_1E323F000, v35, v36, "RootSplitViewController:: %s with config %s is not list!", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();
    }

    return v30[1](v83, v31);
  }
}

void sub_1E3E23030()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v72 = v5;
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v70 = v7;
  OUTLINED_FUNCTION_138();
  v8 = sub_1E41FFE34();
  OUTLINED_FUNCTION_0_10();
  v71 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E4206914();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  OUTLINED_FUNCTION_120_1();
  v18 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  v20 = (*(v19 + 440))();
  if (sub_1E374E8E4(v20, 2))
  {
    sub_1E4206924();
    v21 = OUTLINED_FUNCTION_123_1();
    if (v22(v21) == *MEMORY[0x1E69DC410])
    {
      v69 = v3;
      v23 = OUTLINED_FUNCTION_123_1();
      v24(v23);
      v25 = *v17;
      v26 = [*v17 identifier];
      v27 = sub_1E4205F14();
      v29 = v28;

      (*((*v18 & *v1) + 0x250))();
      v30 = OUTLINED_FUNCTION_38();
      v31 = sub_1E378A81C(v30, v29, v1);

      if (v31)
      {
        v74 = v27;
        OUTLINED_FUNCTION_67_22();
        v33 = (*(v32 + 176))();
        MEMORY[0x1E6911240]();
        v34 = sub_1E41FFE14();
        (*(v71 + 8))(v13, v8);
        v35 = [v33 preferredContentSizeCategory];
        v36 = [v34 preferredContentSizeCategory];
        v37 = sub_1E4205F14();
        v39 = v38;
        if (v37 == sub_1E4205F14() && v39 == v40)
        {
        }

        else
        {
          v42 = sub_1E42079A4();

          if ((v42 & 1) == 0)
          {
            sub_1E3E22644(v31, v69, v74, v29);
          }
        }
      }

      else
      {
        v59 = v25;
        v60 = sub_1E324FBDC();
        (*(v72 + 16))(v70, v60, v73);

        v61 = sub_1E41FFC94();
        v62 = sub_1E42067F4();

        if (os_log_type_enabled(v61, v62))
        {
          OUTLINED_FUNCTION_6_21();
          v63 = OUTLINED_FUNCTION_16_15();
          v75 = v63;
          *v27 = 136315138;
          v64 = sub_1E3270FC8(v27, v29, &v75);

          *(v27 + 4) = v64;
          OUTLINED_FUNCTION_20_34();
          OUTLINED_FUNCTION_53_15(v65, v66, v67, v68);
          __swift_destroy_boxed_opaque_existential_1(v63);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_51_2();
        }

        else
        {
        }

        (*(v72 + 8))(v70, v73);
      }
    }

    else
    {
      v43 = OUTLINED_FUNCTION_123_1();
      v44(v43);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_89_5();
      v45 = OUTLINED_FUNCTION_33_14();
      v46(v45);
      v47 = v3;
      v48 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_84_1())
      {
        v49 = OUTLINED_FUNCTION_6_21();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v47;
        *v50 = v47;
        v51 = v47;
        OUTLINED_FUNCTION_35_8();
        _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
        sub_1E325F7FC(v50, &unk_1ECF28E30);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_21_0();
      }

      v57 = OUTLINED_FUNCTION_13_8();
      v58(v57);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E23680()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v1 + 440))();
  sub_1E397C3E4();
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_wasSidebarVisibilityUpdatedForMetrics) = 1;
  }

  return result;
}

uint64_t sub_1E3E23828(int a1, int a2, id a3)
{
  v3 = [a3 identifier];
  v4 = sub_1E4205F14();
  v6 = v5;

  OUTLINED_FUNCTION_67_1();
  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v8) + 0x438))(v19, v4, v6);

  if (!v20)
  {
    sub_1E325F7FC(v19, &unk_1ECF2F1D0);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    return sub_1E325F7FC(&v16, &qword_1ECF2EC80);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
  if ((OUTLINED_FUNCTION_90_0() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    return sub_1E325F7FC(&v16, &qword_1ECF2EC80);
  }

  if (!*(&v17 + 1))
  {
    return sub_1E325F7FC(&v16, &qword_1ECF2EC80);
  }

  sub_1E3251BE8(&v16, v19);
  v9 = v21;
  OUTLINED_FUNCTION_220_0(v19, v20);
  v10 = OUTLINED_FUNCTION_31_4();
  if (v11(v10, v9))
  {
    v12 = v20;
    OUTLINED_FUNCTION_0_257(v19, v20);
    v13(v12);
    OUTLINED_FUNCTION_67_1();
    (*((*v7 & v14) + 0x480))();
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1E3E23B28(void *a1, char a2)
{
  v4 = [objc_opt_self() defaultCenter];
  sub_1E396B128();

  v5 = sub_1E4205ED4();

  [v4 postNotificationName:v5 object:0];

  return sub_1E3E20174(a1, a2);
}

void sub_1E3E23C48()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (v4)
  {
    v30 = v14;
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v29 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v6;
    v31[4] = sub_1E3E258EC;
    v31[5] = v15;
    OUTLINED_FUNCTION_12_0();
    v31[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v31[2] = v16;
    v31[3] = &block_descriptor_115_0;
    v17 = _Block_copy(v31);
    v18 = v6;
    v19 = v2;

    sub_1E4203FE4();
    v31[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_7_180();
    sub_1E3274BD0(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_47();
    sub_1E328FCF4(v22, v23);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v0, v10, v17);
    _Block_release(v17);

    v24 = OUTLINED_FUNCTION_11_6();
    v25(v24);
    (*(v12 + 8))(v0, v30);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_7_20();
    [(*(v26 + 392))() setImage_];
    OUTLINED_FUNCTION_25_2();
  }
}

id sub_1E3E23F38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E4205ED4();

  v6 = [v3 initWithTitle:v5 image:a3];

  return v6;
}

id sub_1E3E23F9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v14 = sub_1E4205ED4();

  v15 = sub_1E4205ED4();

  if (a6)
  {
    v19[4] = a6;
    v19[5] = a7;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1E3A01924;
    v19[3] = a8;
    v16 = _Block_copy(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v10 initWithTitle:v14 image:a3 identifier:v15 viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

id sub_1E3E240C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = sub_1E4205ED4();

  v14 = sub_1E4205ED4();

  sub_1E3280A90(0, &unk_1ECF39558);
  v15 = sub_1E42062A4();

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1E3A01924;
    v19[3] = &block_descriptor_103_0;
    v16 = _Block_copy(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v9 initWithTitle:v13 image:a3 identifier:v14 children:v15 viewControllerProvider:v16];
  _Block_release(v16);

  return v17;
}

void *sub_1E3E2422C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E397A120(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3E24278(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E397A120((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_1E3E242DC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_21();
    (*(v2 + 440))();
    sub_1E3E10978();
  }
}

void sub_1E3E24384()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 applicationState];

    OUTLINED_FUNCTION_67_22();
    if (v3 == 2)
    {
      (*(v4 + 360))(1);
    }

    else if ((*(v4 + 304))())
    {
      v5 = [v1 traitCollection];
      v6 = [v5 horizontalSizeClass];

      if (v6 == 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      sub_1E3E10BC8(v7);
    }

    else
    {
      OUTLINED_FUNCTION_6_41();
      (*(v8 + 336))(1);
    }
  }
}

void sub_1E3E244EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 440))();
  if (!sub_1E374E8E4(v3, 2))
  {
LABEL_18:

    return;
  }

  OUTLINED_FUNCTION_8_9();
  v5 = (*(v4 + 592))() + 64;
  OUTLINED_FUNCTION_4_4();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v25 = v11;

  v12 = 0;
  v24 = v1;
  while (v8)
  {
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v25 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(v25 + 56) + 8 * v15);
    OUTLINED_FUNCTION_21();
    v21 = *(v20 + 1080);

    v22 = v19;
    v21(v26, v18, v17);
    if (!v26[3])
    {

      sub_1E325F7FC(v26, &unk_1ECF2F1D0);
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
      v1 = v24;
      goto LABEL_16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0);
    if ((OUTLINED_FUNCTION_90_0() & 1) == 0)
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v1 = v24;
      goto LABEL_15;
    }

    v1 = v24;
    if (*(&v28 + 1))
    {
      sub_1E3251BE8(&v27, v30);
      v23 = [v24 traitCollection];
      sub_1E3E10D08(v30, v23, 0);

      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
LABEL_15:

LABEL_16:
      sub_1E325F7FC(&v27, &qword_1ECF2EC80);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_1E3E24800(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3E24938(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v4 = v3;
  v8 = *(v4 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v10 = sub_1E3CE4EE4(a3, 1);
    v11 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_4_154();
    if (v13)
    {
      (*(v12 + 304))(0);
      result = UIAccessibilityIsBoldTextEnabled();
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      (*(v12 + 280))(0);
      result = UIAccessibilityIsBoldTextEnabled();
      if (result & v8)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_4_154();
    v15 = *(v14 + 208);
    v16 = a2;
    v15(a2);
    OUTLINED_FUNCTION_67_1();
    (*((*v11 & v17) + 0x148))(v10 & 1);
    OUTLINED_FUNCTION_4_154();
    (*(v18 + 232))(a1);
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    v19 = OUTLINED_FUNCTION_39_0();
    v21 = v20(v19);
    if (v21)
    {
      v22 = (*(*v21 + 392))(v21);

      if (v22)
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        if (!swift_dynamicCastClass())
        {
        }
      }
    }

    if (v10)
    {
      v23 = *(v4 + 72);
      __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
      v24 = OUTLINED_FUNCTION_35_0();
      v26 = v25(v24, v23);
      if (v26)
      {
        (*(*v26 + 392))();
        OUTLINED_FUNCTION_16_5();

        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        swift_dynamicCastClass();
      }
    }

    OUTLINED_FUNCTION_4_154();
    v28 = *(v27 + 256);

    v28(v29);
    sub_1E3E23C48();
  }

  return result;
}

void *sub_1E3E24C80(void *a1, int64_t a2, char a3)
{
  result = sub_1E3E251DC(a1, a2, a3, *v3, &unk_1ECF396C0, &unk_1E42D4E70, &unk_1ECF2F1E0);
  *v3 = result;
  return result;
}

void sub_1E3E24CC0()
{
  v1 = [*(v0 + 16) sidebar];
  [v1 setHidden_];
}

void sub_1E3E24D34(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v6 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    (*(v7 + 352))(0);
    OUTLINED_FUNCTION_26_3();
    v9 = *((*v6 & v8) + 0x178);
    v10 = a2;
    v11 = OUTLINED_FUNCTION_87_0();
    v9(v11);
    if (a2)
    {
      OUTLINED_FUNCTION_21();
      v13 = *(v12 + 392);
      v14 = v4;
      v15 = v13();
      if (v15)
      {
        v16 = v15;
        v17 = objc_allocWithZone(MEMORY[0x1E69DD798]);
        v18 = v14;
        v19 = sub_1E3E23F38(0, 0xE000000000000000, a2);
        [v16 _setCompactRepresentation_];
      }
    }
  }
}

void sub_1E3E24E9C()
{
  v1 = *(v0 + 24);
  v4 = [*(v0 + 16) sidebar];
  if (v1)
  {
    type metadata accessor for AccountMessageContentConfiguration();
    OUTLINED_FUNCTION_77_19();
    sub_1E3274BD0(v2, v3);
  }

  sub_1E4206D94();
}

_BYTE *storeEnumTagSinglePayload for TabsStateForMetrics(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3E25030()
{
  result = qword_1ECF64360[0];
  if (!qword_1ECF64360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF64360);
  }

  return result;
}

void *sub_1E3E25084(void *a1, int64_t a2, char a3)
{
  result = sub_1E3E250A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3E250A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F0E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3E251DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 8);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || &a4[v12 + 4] <= v14 + 4)
    {
      v17 = OUTLINED_FUNCTION_39_0();
      memmove(v17, v18, v19);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    OUTLINED_FUNCTION_39_0();
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1E3E25318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

void sub_1E3E25454()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      [v5 setUserInteractionEnabled_];

      OUTLINED_FUNCTION_26_3();
      (*((*MEMORY[0x1E69E7D40] & v7) + 0x228))(0);
      if (v1)
      {
        sub_1E3E16BA8(v2, 1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3E2554C(id *a1)
{
  v1 = [*a1 identifier];
  v2 = sub_1E4205F14();
  v4 = v3;

  v5 = OUTLINED_FUNCTION_97_1();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  OUTLINED_FUNCTION_33();
  v7 = OUTLINED_FUNCTION_146();
  if (v2 == v8(v7) && v4 == v9)
  {
    v11 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_116_10();
    v11 = sub_1E42079A4();
  }

  return v11 & 1;
}

unint64_t sub_1E3E25614()
{
  result = qword_1EE269FF0;
  if (!qword_1EE269FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269FF0);
  }

  return result;
}

void sub_1E3E25670()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_131_0();
  v10(v0);
  v11 = [objc_allocWithZone(VUIAppNavigationController) initWithRootViewController_];
  v12 = *(v2 + 16);
  v13 = v11;
  v14 = OUTLINED_FUNCTION_114_0();
  v15 = v12(v14);
  sub_1E37FB7F0(v15, v16, v13, &selRef_setVuiViewControllerIdentifier_);
  [v13 setMaxNavControllerStackDepth_];
  v17 = *(v2 + 8);
  v18 = OUTLINED_FUNCTION_114_0();
  v19 = v17(v18);
  sub_1E37FB7F0(v19, v20, v13, &selRef_setTitle_);
  v21 = [v13 tabBarItem];
  if (v21)
  {
    v22 = v21;
    v23 = OUTLINED_FUNCTION_114_0();
    v24 = v17(v23);
    sub_1E37FB7F0(v24, v25, v22, &selRef_setTitle_);

    v26 = [v13 tabBarItem];
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_114_0();
      v29 = sub_1E395DF10(v27, v28);
      [v26 setImage_];

      [v13 vui:*(v6 + OBJC_IVAR____TtC8VideosUI26PadRootSplitViewController_manager) addControllerObserver:?];
      (*(v9 + 8))(v0, v4);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3E2587C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for LibrarySidebarItem();
  v10 = &off_1EE277438;
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_1E3251BE8(&v8, v6 + 40 * a1 + 32);
}

void sub_1E3E258EC()
{
  v1 = *(v0 + 24);
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x188))();
  [v2 setImage_];
}

uint64_t sub_1E3E2597C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_37_1();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_112_12(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_133_7()
{
  result = v0;
  *(v1 - 120) = *(*(v1 - 128) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_163_6()
{
  result = v0;
  *(v2 - 120) = *(v1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_165_7(uint64_t a1)
{
  *(v2 - 136) = a1;
  result = *(v2 - 400);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_176_5()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_177_3()
{

  sub_1E3CA4D10();
}

void OUTLINED_FUNCTION_178_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15)
{

  sub_1E37EE894(a1, a2, a3, a4, 1, a6, 0, 0, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t OUTLINED_FUNCTION_181_2()
{

  return sub_1E38C6028(v0, v1 - 120);
}

unint64_t OUTLINED_FUNCTION_183_4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  return sub_1E3270FC8(v3, v4, (v1 - 88));
}

void OUTLINED_FUNCTION_230_0()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_231_0()
{
  *(v2 - 384) = v0;
  *(v2 - 136) = v1;

  return type metadata accessor for RemoteBarItem();
}

uint64_t OUTLINED_FUNCTION_232_0()
{
  *(v0 - 192) = 0;
  *(v0 - 184) = 0xE000000000000000;

  return sub_1E42074B4();
}

uint64_t OUTLINED_FUNCTION_233_0()
{

  return sub_1E41FFEF4();
}

void OUTLINED_FUNCTION_235(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_236()
{

  sub_1E3E1A708();
}

uint64_t OUTLINED_FUNCTION_237()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_238_0()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_240_0()
{
}

void OUTLINED_FUNCTION_241_0()
{
  v2 = *(v0 - 304);
}

void OUTLINED_FUNCTION_243()
{
  v2 = *(v0 - 432);
}

uint64_t sub_1E3E25EDC()
{
  swift_allocObject();
  v0 = sub_1E3C2F9A0();

  sub_1E3C2D0A0();

  return v0;
}

void *sub_1E3E25F54@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E381BEF8(__src);
  memcpy(a3, __src, 0x150uLL);
  v6 = type metadata accessor for HorizontalMultiRowCollectionView();
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v8 = (a3 + v6[7]);
  v16[0] = 0x4054400000000000;
  sub_1E42038E4();
  v9 = __dst[1];
  *v8 = __dst[0];
  v8[1] = v9;
  *(a3 + 336) = sub_1E381AE50;
  *(a3 + 344) = a1;
  *(a3 + 352) = 0;
  memcpy(__dst, a2, sizeof(__dst));
  v10 = sub_1E3748B78(__dst);
  v11 = 0uLL;
  if (v10 != 1)
  {
    v12 = vdup_n_s32(LOBYTE(__dst[27]));
    v13.i64[0] = v12.u32[0];
    v13.i64[1] = v12.u32[1];
    v11 = vandq_s8(*&__dst[25], vcgezq_s64(vshlq_n_s64(v13, 0x3FuLL)));
  }

  v14 = (a3 + v6[8]);
  *v14 = v11;
  v14[1].i64[0] = 0;
  *(a3 + v6[9]) = a1;
  memcpy(v16, a3, sizeof(v16));

  sub_1E325F69C(v16, &qword_1ECF2B5C0);
  return memcpy(a3, a2, 0x150uLL);
}

uint64_t type metadata accessor for HorizontalMultiRowCollectionView()
{
  result = qword_1EE292450;
  if (!qword_1EE292450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3E26128()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for HorizontalMultiRowCollectionView();
  OUTLINED_FUNCTION_0_10();
  v44 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_6();
  v45 = v8;
  v46 = v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = *(v0 + 344);
  type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_4_200();
  sub_1E3E293B0(v13, v14);
  v50 = v12;
  v15 = OUTLINED_FUNCTION_18_103();
  v16 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v17 = *(v15 + v16);

  v19 = (*(*v17 + 1040))(v18);

  v48 = v11;
  v49 = v3;
  if (!v19)
  {
    v20 = v4;
LABEL_9:
    v43 = 0;
    goto LABEL_10;
  }

  if (!sub_1E32AE9B0(v19))
  {
    v20 = v4;

    goto LABEL_9;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x1E6911E60](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v43 = *(v19 + 32);
  }

  v20 = v4;

LABEL_10:
  v21 = sub_1E4200BC4();
  v22 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v23 = *(v21 + v22);

  v42 = (*(*v23 + 960))(v24);

  type metadata accessor for LayoutGrid();
  v25 = v1 + *(v20 + 32);
  v26 = *(v25 + 16);
  v52 = *v25;
  v53 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  sub_1E3A2579C(v51);
  v27 = OUTLINED_FUNCTION_18_103();
  v28 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v29 = *(v27 + v28);

  v30 = *(**&v29 + 392);

  v32 = v30(v31);

  if (v32)
  {

    sub_1E3C2AE10();
    v34 = v33;
    (*(*v32 + 1640))();
  }

  OUTLINED_FUNCTION_18_103();
  sub_1E37CDDA4();

  v35 = v48;
  sub_1E3E26680(v43, v42, v48);
  v51 = v29;
  v36 = v46;
  sub_1E3E276C4(v1, v46);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = swift_allocObject();
  sub_1E3E27728(v36, v38 + v37);
  type metadata accessor for CollectionViewModel();
  sub_1E3E27864();
  OUTLINED_FUNCTION_10_135();
  sub_1E3E293B0(v39, v40);
  sub_1E4203524();

  sub_1E325F69C(v35, &qword_1ECF396E8);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E26680@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v174 = a2;
  v183 = a1;
  v162 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39708);
  OUTLINED_FUNCTION_0_10();
  v151 = v6;
  v152 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v150 = v8;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39710);
  OUTLINED_FUNCTION_0_10();
  v155 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v156 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v148 - v13;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v153 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v148 - v17;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v171 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396E8);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v160 = v22;
  OUTLINED_FUNCTION_138();
  v184 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  *&v167 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  *&v166 = v26 - v25;
  OUTLINED_FUNCTION_138();
  sub_1E4203C44();
  OUTLINED_FUNCTION_0_10();
  v181 = v28;
  v182 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v180 = (v30 - v29);
  OUTLINED_FUNCTION_138();
  sub_1E4203C54();
  OUTLINED_FUNCTION_0_10();
  v158 = v32;
  v159 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v176 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v35);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v148 - v37;
  v39 = *(v3 + 336);
  v172 = *(v4 + 344);
  v173 = v39;
  LODWORD(v169) = *(v4 + 352);
  v168 = type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_4_200();
  sub_1E3E293B0(v40, v41);
  OUTLINED_FUNCTION_57();
  v42 = sub_1E4200BC4();
  v43 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v44 = *(v42 + v43);

  v45 = (*v44 + 392);
  v46 = *v45;

  v163 = v46;
  v164 = v45;
  v175 = v46(v47);
  v48 = type metadata accessor for LayoutGrid();
  v49 = type metadata accessor for HorizontalMultiRowCollectionView();
  v50 = (v4 + v49[8]);
  v52 = v50[1];
  v53 = v50[2];
  v190 = *v50;
  v51 = v190;
  v191 = v52;
  v192 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  sub_1E3A25950(*v189[0].i64);
  v56 = v55;
  type metadata accessor for CollectionLayoutFactory();
  v177 = v44;
  v57 = *sub_1E3C11B78();
  v179 = (*(v57 + 1176))();
  LODWORD(v178) = v58;

  v190 = v51;
  v191 = v52;
  v192 = v53;
  sub_1E42038F4();
  v165 = v48;
  sub_1E3A258E4(*v189[0].i64);
  v63 = j_nullsub_1(v59, v60, v61, v62);
  v65 = v64;
  v67 = v66;
  v69 = v68;
  sub_1E4200BC4();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  v190 = v51;
  v191 = v52;
  v172 = v53;
  v192 = v53;
  v169 = v54;
  sub_1E42038F4();
  v70 = v49[6];
  sub_1E3746E10(v38);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v184);
  memcpy(v189, v4, 0x150uLL);
  v71 = sub_1E3748B78(v189);
  v72.i32[0] = 1;
  v73.i32[0] = v71;
  v74 = vdupq_lane_s32(*&vceqq_s32(v73, v72), 0);
  v195 = vbicq_s8(v189[14], v74);
  v196 = vbicq_s8(v189[15], v74);
  v197 = v71 == 1;
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_5_11();
  v75 = v175;
  sub_1E389BFA8();

  sub_1E325F69C(v38, &qword_1ECF2A250);
  v76 = v49[7];
  v173 = v4;
  v77 = (v4 + v76);
  v78 = *v77;
  v79 = v77[1];
  v186 = v78;
  v187 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  v81 = v180;
  v80 = v181;
  *v180 = v185;
  (*(v80 + 104))(v81, *MEMORY[0x1E697D728], v182);
  sub_1E4203D84();
  v82 = sub_1E4203C64();
  if (v75 && (v83 = *(*v75 + 1104), v84 = , v85 = v83(v84), v87 = v86, v82 = , (v87 & 1) == 0))
  {
    v88 = v183;
    v168 = v85;
    if (v85 < 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v168 = 1;
    v88 = v183;
  }

  if (v88 && (v89 = (*(*v88 + 872))(v82)) != 0)
  {
    v53 = sub_1E32AE9B0(v89);
  }

  else
  {
    v53 = 0;
  }

  v90 = v177;

  v91 = v166;
  sub_1E3746E10(v166);
  v92 = sub_1E389CA24(v90, v91, 0);

  v93 = (*(v167 + 8))(v91, v184);
  v94 = v163(v93);

  v96 = 1.0;
  if (v94)
  {
    v97 = (*(*v94 + 1128))(v95);
    v99 = v98;

    if ((v99 & 1) == 0)
    {
      v96 = *&v97;
    }
  }

  v186 = v51;
  v187 = v52;
  v188 = v172;
  sub_1E42038F4();
  v100 = sub_1E3A262D8(v53, v92, 0, v185, v96);
  v180 = v101;
  v172 = (*(*v177 + 968))(v100);
  v166 = v194;
  v167 = v193;
  if (v88 && (v102 = (*(*v88 + 872))()) != 0)
  {
    v70 = v102;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
  }

  if (v70 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    v169 = v53;
    v104 = MEMORY[0x1E69E7CC0];
    if (i < 1)
    {
      break;
    }

    v105 = 0;
    v178 = i;
    v179 = 0x80000001E42850C0;
    v53 = &unk_1ECF2C790;
    v106 = MEMORY[0x1E69E7CC0];
    while (1)
    {

      v185 = v104;
      v186 = 0;
      v187 = 0xE000000000000000;
      sub_1E42074B4();

      v186 = 0xD00000000000001BLL;
      v187 = v179;
      v199 = v105;
      v107 = sub_1E4207944();
      MEMORY[0x1E69109E0](v107);

      if (__OFADD__(v105, v180))
      {
        break;
      }

      v183 = v180 + v105;
      v184 = v106;
      v181 = v187;
      v182 = v186;
      v108 = v104;
      if (v180 + v105 > v105)
      {
        sub_1E374AD40(&qword_1EE23B540, &unk_1ECF2C790);
        v109 = v180;
        v108 = MEMORY[0x1E69E7CC0];
        do
        {
          v199 = v70;
          v186 = v105;
          LOBYTE(v187) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          sub_1E38D2054(&v186, &v198);
          if (v198)
          {

            MEMORY[0x1E6910BF0](v110);
            if (*((*&v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();

            v108 = v185;
          }

          ++v105;
          v109 = (v109 - 1);
        }

        while (v109);
      }

      v106 = v184;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_1E3E28DC8(0, *(v106 + 2) + 1, 1, v106);
      }

      v104 = MEMORY[0x1E69E7CC0];
      v112 = *(v106 + 2);
      v111 = *(v106 + 3);
      if (v112 >= v111 >> 1)
      {
        v106 = sub_1E3E28DC8((v111 > 1), v112 + 1, 1, v106);
      }

      *(v106 + 2) = v112 + 1;
      v113 = &v106[24 * v112];
      v114 = v181;
      *(v113 + 4) = v182;
      *(v113 + 5) = v114;
      v113[6] = v108;
      v105 = v183;
      if (v183 >= v178)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v106 = MEMORY[0x1E69E7CC0];
LABEL_35:

  if (v169 < 1)
  {

    sub_1E375B760(&v190);

    v144 = 1;
    v145 = v161;
    v146 = v162;
    v143 = v160;
    v142 = v176;
  }

  else
  {
    if (*(v106 + 2) >= v168)
    {
      v115 = v168;
    }

    else
    {
      v115 = *(v106 + 2);
    }

    v116 = sub_1E4201D54();
    v117 = v171;
    *v171 = v116;
    v117[1] = 0;
    *(v117 + 16) = 0;
    v118 = v117 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39718) + 44);
    v119 = v170;
    OUTLINED_FUNCTION_25();
    sub_1E39E19A0(v120, v121, v122);
    v123 = sub_1E4202734();
    v124 = v119 + *(v149 + 36);
    *v124 = v123;
    *(v124 + 8) = v63;
    *(v124 + 16) = v65;
    *(v124 + 24) = v67;
    *(v124 + 32) = v69;
    *(v124 + 40) = 0;
    v125 = sub_1E42026E4();
    MEMORY[0x1EEE9AC00](v125);
    *(&v148 - 16) = v176;
    *(&v148 - 15) = v115;
    *(&v148 - 14) = v56;
    v126 = v173;
    *(&v148 - 13) = v106;
    *(&v148 - 12) = v126;
    *(&v148 - 11) = &v190;
    v127 = v174;
    *(&v148 - 10) = v177;
    *(&v148 - 9) = v127;
    v128 = v166;
    *(&v148 - 4) = v167;
    *(&v148 - 3) = v128;
    *(&v148 - 4) = v63;
    *(&v148 - 3) = v65;
    *(&v148 - 2) = v67;
    *(&v148 - 1) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39720);
    sub_1E3E29230();
    v129 = v150;
    sub_1E4200AD4();
    v130 = sub_1E374AD40(&qword_1ECF39760, &qword_1ECF39708);
    v131 = v156;
    v132 = v152;
    sub_1E4203194();
    (*(v151 + 8))(v129, v132);
    sub_1E42026E4();
    v186 = v132;
    v187 = v130;
    swift_getOpaqueTypeConformance2();
    v184 = v106;
    v133 = v154;
    v134 = v157;
    sub_1E3E3665C(v157, v154);
    v135 = v155;
    v136 = *(v155 + 8);
    v136(v131, v134);
    v137 = v119;
    v138 = v153;
    sub_1E32D6EEC(v137, v153);
    v139 = *(v135 + 16);
    v139(v131, v133, v134);
    sub_1E32D6EEC(v138, v118);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39768);
    v139(v118 + *(v140 + 48), v131, v134);
    v136(v133, v134);
    sub_1E325F69C(v170, &qword_1ECF2CBA0);
    v141 = v134;
    v142 = v176;
    v136(v131, v141);
    sub_1E325F69C(v138, &qword_1ECF2CBA0);

    sub_1E375B760(&v190);

    v143 = v160;
    sub_1E379E528(v171, v160, &qword_1ECF39700);
    v144 = 0;
    v145 = v161;
    v146 = v162;
  }

  __swift_storeEnumTagSinglePayload(v143, v144, 1, v145);
  sub_1E379E528(v143, v146, &qword_1ECF396E8);
  return (*(v158 + 8))(v142, v159);
}

uint64_t sub_1E3E276C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalMultiRowCollectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E27728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalMultiRowCollectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E2778C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for HorizontalMultiRowCollectionView();
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for CollectionInteractor();
  OUTLINED_FUNCTION_4_200();
  sub_1E3E293B0(v5, v6);
  OUTLINED_FUNCTION_57();
  sub_1E4200BC4();
  sub_1E37CDC8C(v4);
}

unint64_t sub_1E3E27864()
{
  result = qword_1ECF396F0;
  if (!qword_1ECF396F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF396E8);
    sub_1E374AD40(&qword_1ECF396F8, &unk_1ECF39700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF396F0);
  }

  return result;
}

uint64_t sub_1E3E27918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  sub_1E4202084();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  sub_1E4203C54();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16, a1);
  sub_1E3E27BC4(v18, a2);
  sub_1E4201B64();
  sub_1E3E293B0(&qword_1EE2889E8, MEMORY[0x1E697FCB0]);
  sub_1E4207CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39770);
  sub_1E3E293F8();
  sub_1E4203EA4();
  v20 = sub_1E4203DA4();
  v22 = v21;
  v23 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39738) + 36);
  sub_1E3E28064();
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39758) + 36));
  *v24 = v20;
  v24[1] = v22;
  LOBYTE(v20) = sub_1E4202734();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39720);
  v26 = a3 + *(result + 36);
  *v26 = v20;
  *(v26 + 8) = a4;
  *(v26 + 16) = a6;
  *(v26 + 24) = a5;
  *(v26 + 32) = a7;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_1E3E27BC4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_1E4203C54();
      v5 = sub_1E4206314();
      *(v5 + 16) = v2;
      v6 = *(v4 - 8);
      v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v8 = *(v6 + 16);
      while (1)
      {
        --v2;
        v8(v7, v3, v4);
        if (!v2)
        {
          break;
        }

        v7 += *(v6 + 72);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v9 = sub_1E4203C54();
    (*(*(v9 - 8) + 8))(v3, v9);
    return v5;
  }

  return result;
}

uint64_t sub_1E3E27CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v24[1] = a5;
  v11 = type metadata accessor for HorizontalMultiRowCollectionView();
  v12 = OUTLINED_FUNCTION_8_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[42] = a1;
  v24[0] = swift_getKeyPath();
  sub_1E3E276C4(a2, v17);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1E3E27728(v17, v21 + v18);
  *(v21 + v19) = a6;
  memcpy((v21 + v20), a3, 0x150uLL);
  *(v21 + ((v20 + 343) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1E37E6E1C(a3, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39788);
  OUTLINED_FUNCTION_14_11();
  sub_1E374AD40(v22, &qword_1ECF397E8);
  sub_1E3E2947C();
  return sub_1E4203B34();
}

void *sub_1E3E27EFC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = OUTLINED_FUNCTION_57();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  *v2 = sub_1E4201B84();
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397F8);
  sub_1E3E2854C();
  sub_1E4203DB4();
  sub_1E42015C4();
  sub_1E379E528(v2, a1, &qword_1ECF39798);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39788);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

void sub_1E3E28064()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v63 = v2;
  v68 = v3;
  v69 = v4;
  v6 = v5;
  v7 = type metadata accessor for HorizontalMultiRowCollectionView();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_6();
  v66 = v11;
  v67 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v62 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF397B8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  if (v6)
  {
    v29 = v6;
    v57 = v18;
    v58 = v27;
    v30 = v1;
    v31 = v63;
    v59 = v28;
    v60 = v26;
    memcpy(v71, v63, sizeof(v71));

    sub_1E37E6E1C(v31, v70);
    OUTLINED_FUNCTION_25();
    sub_1E40EA03C(v32, v33, v34, v35, v36);
    v37 = OUTLINED_FUNCTION_6_8();
    v38 = OUTLINED_FUNCTION_51_1();
    sub_1E3C6184C(v30, v29, v38 & 1, 0, 0, v12, v37);
    sub_1E375B760(v31);
    v39 = OUTLINED_FUNCTION_57();
    v40(v39);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v41);
    *&v17[*(v61 + 36)] = 256;
    sub_1E4203DA4();
    sub_1E4200D94();
    sub_1E379E528(v17, v21, &qword_1ECF397A0);
    v42 = &v21[*(v57 + 36)];
    v43 = v70[1];
    *v42 = v70[0];
    *(v42 + 1) = v43;
    *(v42 + 2) = v70[2];
    sub_1E379E528(v21, v24, &qword_1ECF397A8);
    v44 = v67;
    sub_1E3E276C4(v68, v67);
    v45 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v46 = swift_allocObject();
    sub_1E3E27728(v44, v46 + v45);
    sub_1E3E29744();
    v47 = OUTLINED_FUNCTION_51_1();
    v48 = v58;
    sub_1E40AB6EC(v47 & 1);

    sub_1E325F69C(v24, &qword_1ECF397B0);
    v49 = v60;
    v50 = v69;
    (*(v59 + 32))(v69, v48, v60);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v49);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  }
}

void sub_1E3E2854C()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v0;
  v45 = v1;
  v3 = v2;
  v5 = v4;
  v49 = v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39800);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v42 = v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39808);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v48 = v11;
  OUTLINED_FUNCTION_138();
  v12 = type metadata accessor for HorizontalMultiRowCollectionView();
  v13 = OUTLINED_FUNCTION_8_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39810);
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = [objc_opt_self() sharedInstance];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 vStackInForEachEnabled];

    v26 = v17 + 7;
    v51[42] = v5;
    if (v25)
    {
      KeyPath = swift_getKeyPath();
      sub_1E3E276C4(v44, &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v27 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v28 = (v26 + v27) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      sub_1E3E27728(&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v27);
      memcpy((v29 + v28), v3, 0x150uLL);
      *(v29 + ((v28 + 343) & 0xFFFFFFFFFFFFFFF8)) = v45;

      sub_1E37E6E1C(v3, v51);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BB8);
      OUTLINED_FUNCTION_14_11();
      sub_1E374AD40(v30, &unk_1ECF2C790);
      sub_1E375BEF4();
      sub_1E374AD40(&qword_1EE288518, &qword_1ECF36BB8);
      sub_1E4203B34();
      v31 = v47;
      (*(v19 + 16))(v48, v22, v47);
      swift_storeEnumTagMultiPayload();
      sub_1E3E299E8();
      OUTLINED_FUNCTION_12_130(&qword_1ECF39820, &qword_1ECF39800);
      sub_1E4201F44();
      (*(v19 + 8))(v22, v31);
    }

    else
    {
      swift_getKeyPath();
      sub_1E3E276C4(v44, &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v33 = (v26 + v32) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      sub_1E3E27728(&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v32);
      memcpy((v34 + v33), v3, 0x150uLL);
      *(v34 + ((v33 + 343) & 0xFFFFFFFFFFFFFFF8)) = v45;

      sub_1E37E6E1C(v3, v51);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628);
      OUTLINED_FUNCTION_14_11();
      sub_1E374AD40(v35, &unk_1ECF2C790);
      sub_1E375BEF4();
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
      v37 = OUTLINED_FUNCTION_6_8();
      v51[0] = v36;
      v51[1] = v37;
      OUTLINED_FUNCTION_9_142();
      swift_getOpaqueTypeConformance2();
      v38 = v42;
      sub_1E4203B34();
      v39 = KeyPath;
      v40 = v50;
      (*(KeyPath + 16))(v48, v38, v50);
      swift_storeEnumTagMultiPayload();
      sub_1E3E299E8();
      OUTLINED_FUNCTION_12_130(&qword_1ECF39820, &qword_1ECF39800);
      sub_1E4201F44();
      (*(v39 + 8))(v38, v40);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3E28B4C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = *v6;
  *v8 = sub_1E4201D44();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36BC0);
  memcpy(v21, v4, sizeof(v21));
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v14, v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_6_8();
  v20 = OUTLINED_FUNCTION_51_1() & 1;
  sub_1E3C6184C(v2, v13, v20, 0, 0, v9, v19);
  (*(v11 + 8))(v0, v9);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E28C98(uint64_t *a1, const void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v12, v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_6_8();
  v18 = OUTLINED_FUNCTION_51_1();
  sub_1E3C6184C(a3, v11, v18 & 1, 0, 0, v7, v17);
  return (*(v9 + 8))(v3, v7);
}

char *sub_1E3E28DC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3E28F24()
{
  sub_1E3E29144(319, &qword_1EE259C58, &unk_1F5D8B8B8, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E3E290B0();
    if (v1 <= 0x3F)
    {
      sub_1E3E29194(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1E3E29144(319, &qword_1EE288680, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1E3E29194(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CollectionViewModel();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E3E290B0()
{
  if (!qword_1EE289E48)
  {
    type metadata accessor for CollectionInteractor();
    sub_1E3E293B0(qword_1EE26D7F8, type metadata accessor for CollectionInteractor);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E48);
    }
  }
}

void sub_1E3E29144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1E3E29194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1E3E29230()
{
  result = qword_1ECF39728;
  if (!qword_1ECF39728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39720);
    sub_1E3E292BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39728);
  }

  return result;
}

unint64_t sub_1E3E292BC()
{
  result = qword_1ECF39730;
  if (!qword_1ECF39730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39738);
    sub_1E374AD40(&qword_1ECF39740, &unk_1ECF39748);
    sub_1E374AD40(&qword_1ECF39750, &qword_1ECF39758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39730);
  }

  return result;
}

uint64_t sub_1E3E293B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3E293F8()
{
  result = qword_1ECF39778;
  if (!qword_1ECF39778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39770);
    sub_1E3E2947C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39778);
  }

  return result;
}

unint64_t sub_1E3E2947C()
{
  result = qword_1ECF39780;
  if (!qword_1ECF39780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39788);
    sub_1E374AD40(&qword_1ECF39790, &unk_1ECF39798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39780);
  }

  return result;
}

uint64_t objectdestroyTm_43()
{
  type metadata accessor for HorizontalMultiRowCollectionView();
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + 80);
  if (v4 != 1)
  {
  }

  sub_1E3264CE0();
  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v3 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3E29694(double a1, double a2)
{
  result = type metadata accessor for HorizontalMultiRowCollectionView();
  if (a2 > 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
    return sub_1E4203904();
  }

  return result;
}

unint64_t sub_1E3E29744()
{
  result = qword_1ECF397C0;
  if (!qword_1ECF397C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF397B0);
    sub_1E3E297D0();
    sub_1E3BF7594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF397C0);
  }

  return result;
}

unint64_t sub_1E3E297D0()
{
  result = qword_1ECF397C8;
  if (!qword_1ECF397C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF397A8);
    sub_1E3E2985C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF397C8);
  }

  return result;
}

unint64_t sub_1E3E2985C()
{
  result = qword_1ECF397D0;
  if (!qword_1ECF397D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF397A0);
    sub_1E3E29A98(&qword_1ECF397D8, &unk_1ECF397E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF397D0);
  }

  return result;
}

void *sub_1E3E29914@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HorizontalMultiRowCollectionView();
  OUTLINED_FUNCTION_8_0(v3);
  v6 = *(v1 + ((*(v5 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E3E27EFC(a1, v6);
}

unint64_t sub_1E3E299E8()
{
  result = qword_1ECF39818;
  if (!qword_1ECF39818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39810);
    sub_1E374AD40(&qword_1EE288518, &qword_1ECF36BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39818);
  }

  return result;
}

uint64_t sub_1E3E29A98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
    OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_9_142();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_57();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_27Tm_1()
{
  type metadata accessor for HorizontalMultiRowCollectionView();
  OUTLINED_FUNCTION_144();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16_118();
  if (!v6)
  {
  }

  sub_1E3264CE0();
  v7 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_124();

  return swift_deallocObject();
}

uint64_t sub_1E3E29CAC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = type metadata accessor for HorizontalMultiRowCollectionView();
  OUTLINED_FUNCTION_8_0(v4);
  v7 = (*(v6 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + ((v7 + 343) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v7, v8);
}

uint64_t sub_1E3E29DA0()
{
  type metadata accessor for ImageLayout();
  v0[13] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v0[14] = sub_1E383BCC0();
  v0[15] = sub_1E383BCC0();
  v0[16] = sub_1E383BCC0();
  v0[17] = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  v0[18] = sub_1E3BBB724();
  v0[19] = sub_1E383BCC0();
  v0[20] = sub_1E383BCC0();
  type metadata accessor for AlertTemplateFooterLayout();
  v0[21] = sub_1E3CCDAEC();
  v1 = sub_1E3C2F9A0();

  sub_1E3952C58();
  v142[0] = v2;
  v142[1] = v3;
  v142[2] = v4;
  v142[3] = v5;
  v143 = 0;
  (*(*v1 + 184))(v142);
  OUTLINED_FUNCTION_9_2();
  v7 = (v6 + 1760);
  v8 = *(v6 + 1760);
  v8();
  sub_1E3952C94();
  OUTLINED_FUNCTION_1_229();
  (*(v9 + 160))(v146);

  v11 = (v8)(v10);
  (*(*v11 + 208))(0x4079A00000000000, 0);

  (v8)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 312))(0x406CC00000000000, 0);

  v15 = (v8)(v14);
  v16 = *sub_1E418A524();
  (*(*v15 + 440))(v16, 0);

  v18 = (v8)(v17);
  sub_1E39537A8();
  v144[0] = v19;
  v144[1] = v20;
  v144[2] = v21;
  v144[3] = v22;
  v145 = 0;
  (*(*v18 + 560))(v144);

  OUTLINED_FUNCTION_9_2();
  v24 = *(v23 + 1784);
  v25 = v24();
  sub_1E3E5F58C();
  OUTLINED_FUNCTION_7_16();
  v26 = *(*v25 + 680);
  v27 = v7;
  v26(v7);

  (v24)(v28);
  OUTLINED_FUNCTION_2_1();
  (*(v29 + 1696))(7);

  (v24)(v30);
  OUTLINED_FUNCTION_2_1();
  (*(v31 + 1984))(1);

  (v24)(v32);
  OUTLINED_FUNCTION_2_1();
  (*(v33 + 2056))(4, 0);

  (v24)(v34);
  OUTLINED_FUNCTION_2_1();
  v35 = OUTLINED_FUNCTION_5_181();
  v36(v35);

  OUTLINED_FUNCTION_9_2();
  v38 = *(v37 + 1808);
  v39 = v38();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v40 = *(*v39 + 680);
  v41 = v7;
  v40(v7);

  (v38)(v42);
  OUTLINED_FUNCTION_2_1();
  (*(v43 + 1696))(22);

  (v38)(v44);
  OUTLINED_FUNCTION_2_1();
  (*(v45 + 1984))(1);

  (v38)(v46);
  OUTLINED_FUNCTION_2_1();
  v47 = OUTLINED_FUNCTION_5_181();
  v48(v47);

  OUTLINED_FUNCTION_9_2();
  v50 = *(v49 + 1832);
  v51 = v50();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v52 = *(*v51 + 680);
  v53 = v7;
  v52(v7);

  (v50)(v54);
  OUTLINED_FUNCTION_2_1();
  (*(v55 + 1696))(22);

  (v50)(v56);
  OUTLINED_FUNCTION_2_1();
  (*(v57 + 1984))(1);

  (v50)(v58);
  OUTLINED_FUNCTION_2_1();
  v59 = OUTLINED_FUNCTION_5_181();
  v60(v59);

  (v50)(v61);
  sub_1E3952C88();
  OUTLINED_FUNCTION_1_229();
  (*(v62 + 160))(v146);

  OUTLINED_FUNCTION_9_2();
  v64 = *(v63 + 1856);
  v65 = v64();
  sub_1E3E5F6B8();
  OUTLINED_FUNCTION_7_16();
  v66 = *(*v65 + 680);
  v67 = v7;
  v66(v7);

  (v64)(v68);
  OUTLINED_FUNCTION_2_1();
  (*(v69 + 1696))(15);

  (v64)(v70);
  OUTLINED_FUNCTION_2_1();
  (*(v71 + 1984))(1);

  (v64)(v72);
  OUTLINED_FUNCTION_2_1();
  v73 = OUTLINED_FUNCTION_5_181();
  v74(v73);

  OUTLINED_FUNCTION_9_2();
  v76 = *(v75 + 1880);
  v76();
  OUTLINED_FUNCTION_2_1();
  (*(v77 + 1280))(0x403E000000000000, 0);

  (v76)(v78);
  sub_1E3952C64();
  OUTLINED_FUNCTION_1_229();
  (*(v79 + 184))(v146);

  (v76)(v80);
  OUTLINED_FUNCTION_2_1();
  (*(v81 + 312))(0x4050800000000000, 0);

  (v76)(v82);
  OUTLINED_FUNCTION_2_1();
  (*(v83 + 256))(0x4087700000000000, 0);

  v85 = (v76)(v84);
  (*(*v85 + 232))(0x4079A00000000000, 0);

  (v76)(v86);
  OUTLINED_FUNCTION_2_1();
  v88 = (*(v87 + 2048))();

  (*(*v88 + 1984))(1);

  (v76)(v89);
  OUTLINED_FUNCTION_2_1();
  v91 = (*(v90 + 2048))();

  (*(*v91 + 1696))(15);

  (v76)(v92);
  OUTLINED_FUNCTION_2_1();
  v94 = (*(v93 + 2048))();

  (*(*v94 + 1792))(10);

  OUTLINED_FUNCTION_9_2();
  v96 = *(v95 + 1904);
  v96();
  OUTLINED_FUNCTION_2_1();
  (*(v97 + 1696))(22);

  v99 = (v96)(v98);
  sub_1E3E5F58C();
  OUTLINED_FUNCTION_7_16();
  v100 = *(*v99 + 680);
  v101 = v94;
  v100(v94);

  (v96)(v102);
  OUTLINED_FUNCTION_2_1();
  (*(v103 + 2056))(6, 0);

  (v96)(v104);
  OUTLINED_FUNCTION_2_1();
  (*(v105 + 1984))(1);

  (v96)(v106);
  OUTLINED_FUNCTION_2_1();
  (*(v107 + 256))(0x408E000000000000, 0);

  OUTLINED_FUNCTION_9_2();
  v109 = *(v108 + 1928);
  v109();
  OUTLINED_FUNCTION_2_1();
  (*(v110 + 1696))(22);

  v112 = (v109)(v111);
  sub_1E3E5F58C();
  OUTLINED_FUNCTION_7_16();
  v113 = *(*v112 + 680);
  v114 = v94;
  v113(v94);

  (v109)(v115);
  OUTLINED_FUNCTION_2_1();
  (*(v116 + 2056))(6, 0);

  (v109)(v117);
  OUTLINED_FUNCTION_2_1();
  (*(v118 + 1984))(1);

  (v109)(v119);
  OUTLINED_FUNCTION_2_1();
  (*(v120 + 256))(0x408E000000000000, 0);

  (v109)(v121);
  sub_1E3952C88();
  OUTLINED_FUNCTION_1_229();
  (*(v122 + 160))(v146);

  OUTLINED_FUNCTION_9_2();
  v124 = (*(v123 + 1760))();
  sub_1E3C37CBC(v124, 39);

  OUTLINED_FUNCTION_9_2();
  v126 = (*(v125 + 1784))();
  sub_1E3C37CBC(v126, 23);

  OUTLINED_FUNCTION_9_2();
  v128 = (*(v127 + 1808))();
  sub_1E3C37CBC(v128, 5);

  OUTLINED_FUNCTION_9_2();
  v130 = (*(v129 + 1832))();
  sub_1E3C37CBC(v130, 6);

  OUTLINED_FUNCTION_9_2();
  v132 = (*(v131 + 1856))();
  sub_1E3C37CBC(v132, 15);

  OUTLINED_FUNCTION_9_2();
  v134 = (*(v133 + 1880))();
  sub_1E3C37CBC(v134, 59);

  OUTLINED_FUNCTION_9_2();
  v136 = (*(v135 + 1904))();
  sub_1E3C37CBC(v136, 17);

  OUTLINED_FUNCTION_9_2();
  v138 = (*(v137 + 1928))();
  sub_1E3C37CBC(v138, 18);

  OUTLINED_FUNCTION_9_2();
  v140 = (*(v139 + 1952))();
  sub_1E3C37CBC(v140, 73);

  return v1;
}

uint64_t sub_1E3E2B148()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E374AD40(&qword_1EE28A190, &qword_1ECF2D3C0);
  return sub_1E42006B4();
}

uint64_t type metadata accessor for SyndicationListLockup()
{
  result = qword_1EE29B140;
  if (!qword_1EE29B140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E2B21C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  a3[26] = sub_1E4200544();
  v6 = *(type metadata accessor for SyndicationListLockup() + 32);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  v7 = *(*a1 + 392);

  v9 = v7(v8);

  if (!v9)
  {
    goto LABEL_4;
  }

  if (*v9 != _TtC8VideosUI21SyndicationCellLayout)
  {

LABEL_4:
    type metadata accessor for SyndicationCellLayout();
    result = sub_1E3E0B744();
    v9 = result;
  }

  a3[27] = v9;
  return result;
}

uint64_t sub_1E3E2B37C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39830);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39838);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39840);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-v11];
  v13 = *(v0 + 216);
  v14 = swift_beginAccess();
  if (v13[128] == 1)
  {
    (*(*v13 + 176))(v37, v14);
    if (v38)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v17.n128_u64[0] = v37[2];
      v18.n128_u64[0] = v37[3];
      v15.n128_u64[0] = v37[0];
      v16.n128_u64[0] = v37[1];
      j_nullsub_1(v15, v16, v17, v18);
    }

    OUTLINED_FUNCTION_3();
    sub_1E3E2B618();
    v28 = sub_1E4202734();
    v29 = &v12[*(v9 + 36)];
    *v29 = v28;
    *(v29 + 1) = v1;
    *(v29 + 2) = v2;
    *(v29 + 3) = v3;
    *(v29 + 4) = v4;
    v29[40] = 0;
    v19 = &qword_1ECF39840;
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v30, v31, v32);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_169();
    sub_1E3E2DD88(v33, &qword_1ECF39840, &unk_1E42D51F0, v34);
    sub_1E3E2C128();
    OUTLINED_FUNCTION_19_115();
    v27 = v12;
  }

  else
  {
    sub_1E3E2B618();
    v19 = &qword_1ECF39830;
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v20, v21, v22);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_169();
    sub_1E3E2DD88(v23, v24, v25, v26);
    sub_1E3E2C128();
    OUTLINED_FUNCTION_19_115();
    v27 = v7;
  }

  return sub_1E325F69C(v27, v19);
}

void sub_1E3E2B618()
{
  OUTLINED_FUNCTION_21_5();
  v126 = v1;
  v113 = sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v112 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3D0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398A0);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39890);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v109 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39880);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = v0[27];
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  (*(v35 + 152))(v130);
  v36 = v130[0];
  v37 = v130[1];
  v38 = v130[2];
  v39 = v130[3];

  v44 = 0;
  if ((v131 & 1) == 0)
  {
    v40.n128_u64[0] = v36;
    v41.n128_u64[0] = v37;
    v42.n128_u64[0] = v38;
    v43.n128_u64[0] = v39;
    j_nullsub_1(v40, v41, v42, v43);
    v44 = v45;
  }

  v46 = *v0;
  LOBYTE(v134[0]) = 38;
  (*(*v46 + 776))(&v136, v134, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v139)
  {
    if (swift_dynamicCast())
    {
      v47 = LOBYTE(v134[0]);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1E325F69C(&v136, &unk_1ECF296E0);
  }

  v47 = 1;
LABEL_8:
  v114 = v47;
  (*(*v34 + 176))(v132);
  v122 = v22;
  v128 = v34;
  if (v133)
  {
    v52 = OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v50.n128_u64[0] = v132[2];
    v51.n128_u64[0] = v132[3];
    v48.n128_u64[0] = v132[0];
    v49.n128_u64[0] = v132[1];
    v52 = j_nullsub_1(v48, v49, v50, v51);
  }

  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  type metadata accessor for SyndicationListLockup();
  sub_1E3746E10(v33);
  v60 = sub_1E3B0352C();
  v61 = *(v29 + 8);
  v61(v33, v27);
  if (v60)
  {
    v136 = sub_1E4201D54();
    v137 = 0;
    v138 = 0;
    sub_1E37E65E0();
  }

  else
  {
    v136 = sub_1E4201B84();
    v137 = 0;
    v138 = 0;
    sub_1E37E658C();
  }

  v62 = sub_1E4203E84();
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  (*(v63 + 152))(v134);
  v64 = *&v134[3];

  if (v135)
  {
    v64 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  sub_1E3746E10(v33);
  v65 = sub_1E3B0352C();
  v61(v33, v27);
  if (v65)
  {
    v64 = 0.0;
  }

  v66 = sub_1E4201D54();
  v67 = v129;
  *v129 = v66;
  v67[1] = 0;
  *(v67 + 16) = 0;
  *v127 = v62;
  v115 = v62;

  sub_1E3E2C424();
  if (v114)
  {
    v68 = 1;
    v69 = v116;
    v70 = v118;
  }

  else
  {
    sub_1E4203B04();
    v71 = sub_1E4202764();
    v72 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v71)
    {
      v72 = sub_1E4202774();
    }

    sub_1E3746E10(v33);
    v73 = sub_1E3B0352C();
    v61(v33, v27);
    if ((v73 & 1) == 0)
    {
      sub_1E3E2DA8C();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_5_23();
    v74 = v111;
    (*(v112 + 32))(v111, v6, v113);
    v70 = v118;
    v75 = v74 + *(v118 + 36);
    *v75 = v72;
    *(v75 + 8) = v44;
    *(v75 + 16) = v56;
    *(v75 + 24) = v58;
    *(v75 + 32) = v64;
    *(v75 + 40) = 0;
    v76 = v74;
    v77 = v110;
    sub_1E38E4D50(v76, v110);
    v69 = v116;
    sub_1E38E4D50(v77, v116);
    v68 = 0;
  }

  __swift_storeEnumTagSinglePayload(v69, v68, 1, v70);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398C0);
  v79 = v129 + *(v78 + 44);
  v80 = v127;
  v81 = v117;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v82, v83, v84);
  v85 = v120;
  sub_1E3743538(v69, v120, &qword_1ECF2D3D0);
  *v79 = 0;
  v79[8] = 0;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398C8);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v87, v88, v89);
  v90 = &v79[*(v86 + 64)];
  *v90 = 0;
  v90[8] = 0;
  sub_1E3743538(v85, &v79[*(v86 + 80)], &qword_1ECF2D3D0);
  sub_1E325F69C(v69, &qword_1ECF2D3D0);
  sub_1E325F69C(v80, &qword_1ECF398B8);
  sub_1E325F69C(v85, &qword_1ECF2D3D0);
  sub_1E325F69C(v81, &qword_1ECF398B8);
  v91 = sub_1E4202764();
  v92 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v91)
  {
    v92 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v93 = v122;
  sub_1E3741EA0(v129, v122, &qword_1ECF398A0);
  v94 = (v93 + *(v119 + 36));
  *v94 = v92;
  OUTLINED_FUNCTION_15_3(v94);
  v95 = sub_1E4202784();
  v96 = sub_1E4202774();
  sub_1E4202774();
  v97 = sub_1E4202774();
  v98 = v123;
  v99 = v128;
  if (v97 != v95)
  {
    v96 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v100 = sub_1E3741EA0(v93, v98, &qword_1ECF39890);
  v101 = v98 + *(v121 + 36);
  *v101 = v96;
  *(v101 + 8) = v59;
  *(v101 + 16) = v57;
  *(v101 + 24) = v44;
  *(v101 + 32) = v56;
  *(v101 + 40) = 0;
  if (!(*(*v99 + 744))(v100))
  {
    v102 = [objc_opt_self() systemFillColor];
  }

  v103 = sub_1E4203644();
  v104 = sub_1E4202734();
  v105 = v98;
  v106 = v125;
  v107 = sub_1E3741EA0(v105, v125, &qword_1ECF39880);
  v108 = v106 + *(v124 + 36);
  *v108 = v103;
  *(v108 + 8) = v104;
  (*(*v99 + 552))(&v136, v107);
  sub_1E3E2C26C();
  sub_1E3E361E8();

  sub_1E325F69C(v106, &qword_1ECF39870);
  OUTLINED_FUNCTION_20_0();
}

unint64_t sub_1E3E2C128()
{
  result = qword_1ECF39850;
  if (!qword_1ECF39850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39830);
    sub_1E3E2C1B4();
    sub_1E3E2C26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39850);
  }

  return result;
}

unint64_t sub_1E3E2C1B4()
{
  result = qword_1ECF39858;
  if (!qword_1ECF39858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39860);
    sub_1E3E2C26C();
    sub_1E374AD40(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39858);
  }

  return result;
}

unint64_t sub_1E3E2C26C()
{
  result = qword_1ECF39868;
  if (!qword_1ECF39868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39870);
    sub_1E3E2DD88(&qword_1ECF39878, &unk_1ECF39880, &unk_1E42D5208, sub_1E3E2C350);
    sub_1E374AD40(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39868);
  }

  return result;
}

unint64_t sub_1E3E2C350()
{
  result = qword_1ECF39888;
  if (!qword_1ECF39888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39890);
    sub_1E374AD40(&qword_1ECF39898, &unk_1ECF398A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39888);
  }

  return result;
}

void sub_1E3E2C424()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v63 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398D0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398E8);
  OUTLINED_FUNCTION_0_10();
  v60 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v61 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v59 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398F0);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  v58 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v58 - v32;
  sub_1E3E2C908();
  sub_1E4202784();
  sub_1E4200A54();
  OUTLINED_FUNCTION_10_136(&v33[*(v29 + 44)], v34, v35, v36, v37);
  *v14 = sub_1E4201D54();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF398F8);
  sub_1E3E2CD80(v9, &v14[*(v38 + 44)]);
  LOBYTE(v29) = sub_1E4202744();
  v39 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v29)
  {
    v39 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_5_23();
  sub_1E3741EA0(v14, v18, &qword_1ECF398D0);
  v40 = &v18[*(v15 + 36)];
  *v40 = v39;
  *(v40 + 1) = v5;
  *(v40 + 2) = v7;
  *(v40 + 3) = v0;
  *(v40 + 4) = v1;
  v40[40] = 0;
  v41 = sub_1E4202754();
  v42 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v41)
  {
    v42 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v18, v22, &qword_1ECF398D8);
  v43 = &v22[*(v19 + 36)];
  *v43 = v42;
  OUTLINED_FUNCTION_15_3(v43);
  v44 = sub_1E3E2DD88(&qword_1ECF39900, &qword_1ECF398E0, &unk_1E42D52E0, sub_1E3E2DE08);
  sub_1E3D4174C(v19, v44);
  v45 = v59;
  sub_1E3D414C8(v19, v59);

  sub_1E325F69C(v22, &qword_1ECF398E0);
  v46 = v33;
  v47 = v58;
  sub_1E3743538(v33, v58, &qword_1ECF398F0);
  v49 = v60;
  v48 = v61;
  v50 = *(v60 + 16);
  v51 = v62;
  v50(v61, v45, v62);
  v52 = v63;
  sub_1E3743538(v47, v63, &qword_1ECF398F0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39918);
  v50(v52 + *(v53 + 48), v48, v51);
  v54 = v52 + *(v53 + 64);
  *v54 = v3;
  *(v54 + 8) = 0;
  v55 = *(v49 + 8);
  v55(v45, v51);
  sub_1E325F69C(v46, &qword_1ECF398F0);
  v55(v48, v51);
  v56 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v56, v57);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3E2C908()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v58 = v7;
  v59 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - v20;
  v22 = (*(**v0 + 488))(v19);
  if (v22)
  {
    v23 = sub_1E373E010(39, v22);

    if (v23)
    {
      type metadata accessor for ImageViewModel();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
      }
    }

    else
    {
      v22 = 0;
    }
  }

  (*(**(v3 + 216) + 176))(v60);
  if (v61)
  {
    v28 = OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v26.n128_u64[0] = v60[2];
    v27.n128_u64[0] = v60[3];
    v24.n128_u64[0] = v60[0];
    v25.n128_u64[0] = v60[1];
    v28 = j_nullsub_1(v24, v25, v26, v27);
  }

  v30 = v28;
  v31 = v29;
  if (v22)
  {
    v55 = v21;
    v56 = v5;
    memcpy(v71, (v3 + 8), 0x5BuLL);
    v74 = *(v3 + 8);
    v75 = *(v3 + 24);
    v32 = *(v3 + 66);
    v72 = *(v3 + 50);
    *v73 = v32;
    *&v73[14] = *(v3 + 80);
    v33 = *&v71[89];
    sub_1E375C2C0(v71, &v62);
    v34 = sub_1E3E2DA8C();
    v62 = v74;
    v63 = v75;
    v64 = v34;
    v65 = 0;
    v66 = 256;
    v67 = v72;
    *v68 = *v73;
    *&v68[14] = *&v73[14];
    v69 = 1;
    v70 = v33;
    v35 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v22, &v62, 0, v35 & 1, 0, 0, v10);
    sub_1E375C31C(&v62);
    v36 = sub_1E4202744();
    v37 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v36)
    {
      v37 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();
    (*(v58 + 32))(v13, v10, v59);
    v38 = &v13[*(v57 + 36)];
    *v38 = v37;
    OUTLINED_FUNCTION_15_3(v38);
    v39 = sub_1E4202754();
    v40 = sub_1E4202774();
    sub_1E4202774();
    v41 = sub_1E4202774();
    v42 = v56;
    if (v41 != v39)
    {
      v40 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    sub_1E3741EA0(v13, v17, &qword_1ECF29240);
    v43 = &v17[*(v14 + 36)];
    *v43 = v40;
    *(v43 + 1) = v31;
    *(v43 + 2) = v30;
    *(v43 + 3) = v1;
    *(v43 + 4) = v2;
    v43[40] = 0;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v44, v45, v46);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v47, v48, v49);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v14);
    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  }
}

uint64_t sub_1E3E2CD80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39920);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  sub_1E3E2D030(&v38 - v16);
  v18 = sub_1E3E2D800(*a1);
  if (!v19)
  {
    OUTLINED_FUNCTION_15_125();
    v26 = 1;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v20 = v18;
  v21 = v19;
  v22 = sub_1E3285D14();
  v3 = *((*MEMORY[0x1E69E7D40] & **v22) + 0x110);
  v4 = (*MEMORY[0x1E69E7D40] & **v22) + 272;
  v2 = *v22;
  v23 = (v3)(v20, v21);

  if (!v23)
  {
    v26 = 0;
    OUTLINED_FUNCTION_15_125();
    goto LABEL_6;
  }

  v24 = v23;
  OUTLINED_FUNCTION_18();
  sub_1E3C11690();
  v26 = v25;
  v28 = v27;
  v29 = sub_1E4202744();
  sub_1E3E0B68C();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v5 = v28 & 0xFF00;
  v2 = v28 & 1;
  v3 = v29;
  v4 = 0x1000000;
LABEL_7:
  sub_1E3743538(v17, v14, &qword_1ECF39920);
  v30 = v5 | v2 | v4;
  OUTLINED_FUNCTION_40_21();
  sub_1E3743538(v31, v32, v33);
  v34 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39928) + 48));
  *&v39[0] = v26;
  *(&v39[0] + 1) = v30;
  v39[1] = v3;
  *v40 = v6;
  *&v40[8] = v7;
  *&v40[16] = v8;
  v40[24] = 0;
  *v34 = v39[0];
  v34[1] = v3;
  v34[2] = *v40;
  *(v34 + 41) = *&v40[9];
  sub_1E3743538(v39, v41, &qword_1ECF39930);
  sub_1E325F69C(v17, &qword_1ECF39920);
  v41[0] = v26;
  v41[1] = v30;
  v41[2] = v3;
  v41[3] = 0;
  v41[4] = v6;
  v41[5] = v7;
  v41[6] = v8;
  v42 = 0;
  sub_1E325F69C(v41, &qword_1ECF39930);
  v35 = OUTLINED_FUNCTION_32_0();
  return sub_1E325F69C(v35, v36);
}

uint64_t sub_1E3E2D030@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39940);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v72 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39948);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v71 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v70 = v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v65 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v65 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39950);
  OUTLINED_FUNCTION_0_10();
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v75 = v21;
  v22 = *(**v1 + 488);
  v23 = v22();
  if (v23)
  {
    v23 = sub_1E373E010(23, v23);

    if (v23)
    {
      if (*v23 != _TtC8VideosUI13TextViewModel)
      {

        v23 = 0;
      }
    }
  }

  v76 = v23;
  v24 = v22();
  if (v24)
  {
    v25 = sub_1E373E010(15, v24);

    v26 = v14;
    v27 = v10;
    if (v25)
    {
      if (*v25 == _TtC8VideosUI13TextViewModel)
      {
        v77 = v25;
        goto LABEL_12;
      }
    }

    v77 = 0;
  }

  else
  {
    v77 = 0;
    v26 = v14;
    v27 = v10;
  }

LABEL_12:
  sub_1E374EA2C();
  OUTLINED_FUNCTION_30();
  (*(v28 + 152))(v78);

  sub_1E37BD068();
  OUTLINED_FUNCTION_30();
  (*(v29 + 152))(v79);

  if (v76)
  {
    v30 = sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v31 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v65[2] = v30;
    v33 = v66;
    sub_1E38838AC(v30, 2u, 2, OpaqueTypeConformance2, v17);
    v34 = *(v27 + 8);
    v65[1] = v27 + 8;
    v34(v13, v33);
    sub_1E4202744();
    sub_1E4200A54();
    OUTLINED_FUNCTION_10_136(&v17[*(v26 + 36)], v35, v36, v37, v38);
    v39 = sub_1E3E2DF18();
    sub_1E3D4174C(v26, v39);
    sub_1E3D414C8(v26, v75);

    sub_1E325F69C(v17, &qword_1ECF37530);
    v40 = v77;
    if (v77)
    {

      v41 = sub_1E3C27528();
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      sub_1E38838AC(v41, 2u, 2, OpaqueTypeConformance2, v17);
      v34(v13, v33);
      sub_1E4202744();
      sub_1E4200A54();
      OUTLINED_FUNCTION_10_136(&v17[*(v26 + 36)], v42, v43, v44, v45);
      sub_1E3D4174C(v26, v39);
      v46 = v26;
      v47 = v68;
      sub_1E3D414C8(v46, v68);
      v77 = v40;

      sub_1E325F69C(v17, &qword_1ECF37530);
      v48 = v67;
      v50 = v69;
      v49 = v70;
      (*(v67 + 32))(v70, v47, v69);
      v31 = 0;
    }

    else
    {
      v77 = 0;
      v50 = v69;
      v49 = v70;
      v48 = v67;
      v47 = v68;
    }

    __swift_storeEnumTagSinglePayload(v49, v31, 1, v50);
    v54 = *(v48 + 16);
    v55 = v75;
    v54(v47, v75, v50);
    v56 = v71;
    sub_1E3743538(v49, v71, &qword_1ECF39948);
    v57 = v72;
    v54(v72, v47, v50);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39960);
    sub_1E3743538(v56, v57 + *(v58 + 48), &qword_1ECF39948);

    OUTLINED_FUNCTION_40_21();
    sub_1E325F69C(v59, v60);
    v61 = *(v48 + 8);
    v61(v55, v50);
    OUTLINED_FUNCTION_40_21();
    sub_1E325F69C(v62, v63);
    v61(v47, v50);
    v64 = v74;
    sub_1E3741EA0(v57, v74, &qword_1ECF39940);
    return __swift_storeEnumTagSinglePayload(v64, 0, 1, v73);
  }

  else
  {

    v52 = v73;
    v51 = v74;

    return __swift_storeEnumTagSinglePayload(v51, 1, 1, v52);
  }
}

uint64_t sub_1E3E2D800(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  LOBYTE(v18) = 0;
  (*(*a1 + 776))(v19, &v18, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (v19[3])
  {
    if (swift_dynamicCast())
    {
      return v18;
    }
  }

  else
  {
    sub_1E325F69C(v19, &unk_1ECF296E0);
  }

  v10 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v10, v2);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    v18 = a1;
    type metadata accessor for ViewModel();
    sub_1E3E2DEC0();
    v15 = sub_1E4207944();
    v17 = sub_1E3270FC8(v15, v16, v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1E323F000, v11, v12, "SyndicationListLockup:: missing syndicationId attribute for cellViewModel: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  (*(v4 + 8))(v8, v2);
  return 0;
}

double sub_1E3E2DA8C()
{
  v0 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  v8 = COERCE_DOUBLE((*(v7 + 200))());
  v10 = v9;

  if (v10)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  type metadata accessor for SyndicationListLockup();
  sub_1E3746E10(v6);
  v12 = sub_1E3B0352C();
  (*(v2 + 8))(v6, v0);
  if (v12)
  {
    [objc_opt_self() scaleContentSizeValue:0 forTraitCollection:v11];
    return v13;
  }

  return v11;
}

void sub_1E3E2DC14()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3BF5F74();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SyndicationCellLayout();
      if (v2 <= 0x3F)
      {
        sub_1E38D5D68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E3E2DCD0()
{
  result = qword_1ECF398A8;
  if (!qword_1ECF398A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF398B0);
    sub_1E3E2DD88(&qword_1ECF39848, &qword_1ECF39840, &unk_1E42D51F0, sub_1E3E2C128);
    sub_1E3E2C128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF398A8);
  }

  return result;
}

uint64_t sub_1E3E2DD88(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3E2DE08()
{
  result = qword_1ECF39908;
  if (!qword_1ECF39908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF398D8);
    sub_1E374AD40(&qword_1ECF39910, &unk_1ECF398D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39908);
  }

  return result;
}

unint64_t sub_1E3E2DEC0()
{
  result = qword_1ECF39938;
  if (!qword_1ECF39938)
  {
    type metadata accessor for ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39938);
  }

  return result;
}

unint64_t sub_1E3E2DF18()
{
  result = qword_1ECF39958;
  if (!qword_1ECF39958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39958);
  }

  return result;
}

uint64_t sub_1E3E2E004(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v6)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    v8 = sub_1E3A9BD04(v7, v4);

    if (v8)
    {
    }
  }

  else if (!v4)
  {
  }

  result = sub_1E32AE9B0(v4);
  if (result)
  {
    v10 = result;
    if (result < 1)
    {
      goto LABEL_30;
    }

    for (i = 0; i != v10; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        v12 = *(v4 + 8 * i + 32);
      }

      v13 = v12;
      [v12 removeFromSuperview];
    }
  }

  v6 = *&v1[v5];
  if (!v6)
  {
LABEL_27:
    [v1 vui_setNeedsLayout];
  }

LABEL_14:
  result = sub_1E32AE9B0(v6);
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    if (result)
    {
      v15 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_descriptionTextView;
      v16 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView;
      v27 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_debugUIOverlay;

      v17 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1E6911E60](v17, v6);
        }

        else
        {
          v18 = *(v6 + 8 * v17 + 32);
        }

        v19 = v18;
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = v20;
          v22 = *&v1[v15];
          *&v1[v15] = v20;
          v23 = v19;

          v24 = *&v1[v16];
          *&v1[v16] = v21;
          v25 = v23;

          [v1 addSubview_];
        }

        else
        {
          [v1 addSubview_];
        }

        if (v1[v27] == 1)
        {
          v26 = [objc_opt_self() randomColor];
          [v19 setVuiBackgroundColor_];
        }

        ++v17;
      }

      while (v14 != v17);
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void (*sub_1E3E2E28C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3[3] = *(v1 + v4);

  return sub_1E3E2E310;
}

void sub_1E3E2E310(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3E2E004(v4);
  }

  else
  {
    sub_1E3E2E004(v3);
  }

  free(v2);
}

uint64_t sub_1E3E2E3E8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3E2E434(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t (*sub_1E3E2E4D8())(__n128, __n128)
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView____lazy_storage___setupGestureRecognizer);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView____lazy_storage___setupGestureRecognizer);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView____lazy_storage___setupGestureRecognizer + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView____lazy_storage___setupGestureRecognizer);
  }

  else
  {
    v4 = nullsub_1;
    *v1 = nullsub_1;
    v1[1] = 0;
  }

  sub_1E37FAED4(v2, v3);
  return v4;
}

unint64_t sub_1E3E2E53C(char a1)
{
  v2 = v1;
  [v1 bounds];
  Width = CGRectGetWidth(v92);
  v5 = &selRef_processPendingChanges;
  v6 = [v1 safeAreaInsets];
  v8 = v7;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v6);
  v10 = result;
  v79 = result;
  if ((a1 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    [v1 sizeThatFits_];
    result = sub_1E32AE9B0(v10);
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    v31 = result;
    if (!result)
    {
    }

    OUTLINED_FUNCTION_25_0();
    v78 = *(v32 + 184);
    v75 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollViewAdjustment;
    v76 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView;
    v77 = v10 & 0xC000000000000001;
    v80 = 1.79769313e308;
    for (i = 4; ; ++i)
    {
      if (v77)
      {
        v34 = MEMORY[0x1E6911E60](i - 4, v79);
      }

      else
      {
        v34 = *(v79 + 8 * i);
      }

      v35 = v34;
      result = v78();
      if (result)
      {
        if ((result & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1E6911E60](i - 4, result);
        }

        else
        {
          if ((i - 4) >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v36 = *(result + 8 * i);
        }

        v37 = *(*v36 + 152);

        v37(v86, v38);

        if (v87)
        {
          v39 = 0.0;
        }

        else
        {
          v39 = *(v86 + 1);
        }

        v37(v88, v40);

        v41 = *&v88[3];
        if (v89)
        {
          v41 = 0.0;
        }
      }

      else
      {
        v36 = 0;
        v41 = 0.0;
        v39 = 0.0;
      }

      v42 = Width - v39 - v41;
      v43 = *&v2[v76];
      if (v43 && (sub_1E373C4DC(), v44 = v35, v45 = v43, v46 = sub_1E4206F64(), v45, v44, (v46 & 1) != 0))
      {
        v47 = v44;
        v48 = sub_1E3C8B764(v36, v42, 0.0);
        v50 = v49 - *&v2[v75];
        if (!v36)
        {
          goto LABEL_50;
        }
      }

      else
      {
        *(&v83 + 1) = type metadata accessor for DescriptionTemplateView();
        *&v82 = v2;
        v51 = objc_allocWithZone(MEMORY[0x1E69DD060]);
        v52 = v2;
        v53 = sub_1E3814AF0(&v82, sel_handleSelected_);
        v54 = v35;
        [v54 addGestureRecognizer_];
        [v54 setUserInteractionEnabled_];
        v48 = sub_1E3C8B764(v36, v42, 0.0);
        v50 = v55;

        if (!v36)
        {
          goto LABEL_50;
        }
      }

      v56 = *(*v36 + 456);

      v58 = v56(v57);

      if (v58 == 7 || (LOBYTE(v82) = v58, LOBYTE(v85[0]) = 4, sub_1E3793D00(), (sub_1E4205E84() & 1) == 0))
      {
LABEL_50:
        v59 = (Width - v48) * 0.5;
        v60 = v80;
        if (v59 < v80)
        {
          v60 = (Width - v48) * 0.5;
        }

        v80 = v60;
        if (!v36)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      v59 = v80 + v39;
LABEL_53:
      v61 = *(*v36 + 152);

      v61(v90, v62);

      if ((v91 & 1) == 0)
      {
        v8 = v8 + v90[0];
      }

LABEL_55:
      [v35 setFrame_];
      [v35 frame];
      [v2 bounds];
      [v2 vuiIsRTL];
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v35 setFrame_];

      v8 = v50 + v8;
      if (!--v31)
      {
      }
    }
  }

  v11 = 0.0;
  if (!result)
  {
    goto LABEL_59;
  }

  result = sub_1E32AE9B0(result);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_71;
  }

  v12 = result;
  if (!result)
  {

LABEL_59:
    v63 = v8 + v11;
    [v1 bounds];
    if (v64 >= v63)
    {
      v71 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView;
      v72 = *&v2[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView];
      if (v72)
      {
        [v72 setBounces_];
        v73 = *&v2[v71];
        if (v73)
        {
          [v73 setShowsVerticalScrollIndicator_];
        }
      }

      result = [v2 v5[420]];
      *&v2[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollViewAdjustment] = -v74;
    }

    else
    {
      v65 = sub_1E3E2E4D8();
      v65();

      v66 = *&v1[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView];
      if (v66)
      {
        v67 = v66;
        sub_1E3952C94();
        [v67 setContentInset_];
      }

      [v2 bounds];
      v69 = OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollViewAdjustment;
      *&v2[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollViewAdjustment] = v63 - v68 + 56.0;
      result = [v2 v5[420]];
      *&v2[v69] = *&v2[v69] - v70;
    }

    return result;
  }

  OUTLINED_FUNCTION_25_0();
  v14 = *(v13 + 184);
  v15 = v10 & 0xC000000000000001;
  v16 = 4;
  v81 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v15)
    {
      v17 = MEMORY[0x1E6911E60](v16 - 4, v10);
    }

    else
    {
      v17 = *(v10 + 8 * v16);
    }

    v18 = v17;
    result = v14();
    if (!result)
    {
      goto LABEL_20;
    }

    if ((result & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x1E6911E60](v16 - 4, result);
LABEL_13:

    if (v19)
    {
      v20 = *(*v19 + 152);

      v20(v86, v21);

      v82 = v86[0];
      v83 = v86[1];
      v84 = v87;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
      sub_1E4148C68(sub_1E3C2FC84, v22, v85);
      v23 = v85[0];
      v24 = *(*v19 + 152);

      v24(v88, v25);

      if (v89)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = *&v88[1];
      }

      v24(v90, v27);
      v15 = v81;
      v10 = v79;

      v28 = v90[3];
      if (v91)
      {
        v28 = 0.0;
      }

      goto LABEL_21;
    }

LABEL_20:
    v19 = 0;
    v23 = 0.0;
    v28 = 0.0;
    v26 = 0.0;
LABEL_21:
    sub_1E3C8B764(v19, Width - v26 - v28, 0.0);
    v30 = v29;

    v11 = v11 + v23 + v30;
    ++v16;
    if (!--v12)
    {

      v5 = &selRef_processPendingChanges;
      goto LABEL_59;
    }
  }

  if ((v16 - 4) < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 8 * v16);

    goto LABEL_13;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}