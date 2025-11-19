uint64_t sub_1E3B90FA0(char a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 99) = a1 & 1;
  swift_beginAccess();
  sub_1E3B91610();
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    return sub_1E3B8E16C();
  }

  return result;
}

uint64_t sub_1E3B91040()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v1 = sub_1E4097BF8(*(v0 + 160));
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E3B910AC()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3B91114()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E3B911C8(char a1, char a2)
{
  *(v2 + 99) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0;
  *(v2 + 98) = a1;
  *(v2 + 160) = a2;
  if (a1)
  {
    swift_beginAccess();
    *(v2 + 99) = 1;
  }

  v3 = sub_1E3C2F9A0();

  sub_1E3B8E16C();
  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1816))();
  sub_1E3C37EC8(v5, &unk_1F5D738C8);

  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1840))();
  sub_1E3C37CBC(v7, 23);

  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1864))();
  sub_1E3C37CBC(v9, 15);

  OUTLINED_FUNCTION_36();
  v11 = (*(v10 + 1888))();
  sub_1E3C37CBC(v11, 41);

  OUTLINED_FUNCTION_36();
  v13 = (*(v12 + 1912))();
  sub_1E3C37CBC(v13, 39);

  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 1936))();
  sub_1E3C37CBC(v15, 31);

  OUTLINED_FUNCTION_36();
  v17 = (*(v16 + 1960))();
  sub_1E3C37CBC(v17, 67);

  return v3;
}

void sub_1E3B91478()
{
  *(v0 + 99) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3B914EC(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = a1;
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_36();
  if ((*(v6 + 1768))())
  {
    v7 = 1;
  }

  else
  {
    result = TVAppFeature.isEnabled.getter(10);
    if ((result & 1) == 0)
    {
      return result;
    }

    type metadata accessor for StandardLockupCellLayout();
    v7 = sub_1E3D8C9E8(v5, a2, a3) & 1;
  }

  return sub_1E3B90FA0(v7);
}

uint64_t sub_1E3B915BC()
{
  v0 = sub_1E38909F4();

  return MEMORY[0x1EEE6BDC0](v0, 161, 7);
}

unint64_t sub_1E3B91610()
{
  result = qword_1ECF341E8;
  if (!qword_1ECF341E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF341E8);
  }

  return result;
}

void OUTLINED_FUNCTION_32_49(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3C0] = a1;
  *&STACK[0x3C8] = a2;
  *&STACK[0x3D0] = a3;
  *&STACK[0x3D8] = a4;
  LOBYTE(STACK[0x3E0]) = 0;
}

uint64_t sub_1E3B916A4(__int16 a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 128) = a1;
  return result;
}

uint64_t sub_1E3B916D8()
{
  v0 = TVAppFeature.isEnabled.getter(10);
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  if (v0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  return sub_1E3BBD964(v4, v1 & 1, v2, v3 & 1);
}

uint64_t sub_1E3B91774(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 144) = a1;
}

uint64_t sub_1E3B917DC(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 152) = a1;
}

uint64_t sub_1E3B91854(__int16 a1)
{
  type metadata accessor for TextLayout();
  *(v1 + 104) = sub_1E383BCC0();
  *(v1 + 112) = sub_1E383BCC0();
  *(v1 + 120) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E3B050E8();
  v5 = j__OUTLINED_FUNCTION_18();
  *(v1 + 136) = sub_1E3BBD964(1, v3 & 1, v4, v5 & 1);
  *(v1 + 144) = sub_1E3B916D8();
  type metadata accessor for ChannelLogoViewLayout();
  *(v1 + 152) = sub_1E3E38658(2);
  *(v1 + 128) = a1;
  v6 = sub_1E3C2F9A0();
  v7 = *(*v6 + 1744);

  v7();
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1720))(5);

  (v7)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1984))(1);

  (v7)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 2056))(3, 0);

  (v7)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 2080))(4, 0);

  (v7)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 2104))(4, 0);

  (v7)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 2128))(0x3FD999999999999ALL, 0);

  (v7)(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 1792))(10);

  v22 = (v7)(v21);
  v23 = sub_1E3E5FD88();
  v24 = *v23;
  v25 = *(*v22 + 680);
  v26 = *v23;
  v25(v24);

  OUTLINED_FUNCTION_9_2();
  v28 = *(v27 + 1768);
  v28();
  OUTLINED_FUNCTION_2_1();
  (*(v29 + 1720))(5);

  (v28)(v30);
  OUTLINED_FUNCTION_2_1();
  (*(v31 + 1984))(1);

  (v28)(v32);
  OUTLINED_FUNCTION_2_1();
  v33 = OUTLINED_FUNCTION_8_5();
  v34(v33);

  (v28)(v35);
  OUTLINED_FUNCTION_2_1();
  v36 = OUTLINED_FUNCTION_8_5();
  v37(v36);

  (v28)(v38);
  OUTLINED_FUNCTION_2_1();
  v39 = OUTLINED_FUNCTION_8_5();
  v40(v39);

  (v28)(v41);
  OUTLINED_FUNCTION_2_1();
  (*(v42 + 2128))(0x3FD999999999999ALL, 0);

  v44 = (v28)(v43);
  v45 = *v23;
  v46 = *(*v44 + 680);
  v47 = *v23;
  v46(v45);

  OUTLINED_FUNCTION_9_2();
  v49 = v48 + 1792;
  v50 = *(v48 + 1792);
  v50();
  OUTLINED_FUNCTION_2_1();
  (*(v51 + 1720))(6);

  (v50)(v52);
  OUTLINED_FUNCTION_2_1();
  (*(v53 + 1984))(1);

  (v50)(v54);
  OUTLINED_FUNCTION_2_1();
  (*(v55 + 2056))(0, 0);

  (v50)(v56);
  OUTLINED_FUNCTION_2_1();
  (*(v57 + 2080))(0, 0);

  (v50)(v58);
  OUTLINED_FUNCTION_2_1();
  (*(v59 + 2104))(0, 0);

  (v50)(v60);
  __dst[0] = 22;
  LOBYTE(v498) = 17;
  LOBYTE(v496) = 22;
  sub_1E3C2FC98();
  LOBYTE(v492) = v494;
  v61 = OUTLINED_FUNCTION_16_83();
  sub_1E3C3DE00(v61);
  OUTLINED_FUNCTION_11_94();
  sub_1E3C3DE00(&qword_1F5D549D8);
  v501 = v502;
  sub_1E3C2FCB8(__dst, __src);
  OUTLINED_FUNCTION_1_158();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v70 = OUTLINED_FUNCTION_4_135(v62, v63, v64, v65, v66, v67, v68, v69, v381, v402, v423, v444, v466, __dst[0]);
  v71(v70);

  v445 = v50;
  v467 = v49;
  v73 = (v50)(v72);
  sub_1E3755B54();
  v74 = sub_1E4206F24();
  v75 = [v74 colorWithAlphaComponent_];

  v76 = sub_1E4206F24();
  v77 = [v76 colorWithAlphaComponent_];

  v78 = sub_1E3E5F2F8(v75, v77);
  (*(*v73 + 680))(v78);

  OUTLINED_FUNCTION_9_2();
  (*(v79 + 1816))();
  if (sub_1E373F6E0())
  {
    v80 = TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_111();
    v81 += 218;
    v82 = *v81;
    v83 = (*v81)();
    if (v80)
    {
      LOBYTE(v498) = 2;
      LOBYTE(v496) = 2;
      LOBYTE(v494) = 7;
      LOBYTE(v492) = 6;
      LOBYTE(v490) = 6;
      v91 = OUTLINED_FUNCTION_0_157(v83, v84, v85, v86, v87, v88, v89, v90, v382, v403, v424, v445, v467, 27);
      sub_1E3C2FCB8(v91, v92);
      OUTLINED_FUNCTION_1_158();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v101 = OUTLINED_FUNCTION_4_135(v93, v94, v95, v96, v97, v98, v99, v100, v383, v404, v425, v446, v468, __dst[0]);
      v102(v101);

      (v82)(v103);
      __dst[0] = 4;
      LOBYTE(v498) = 1;
      sub_1E3C3DE00(&unk_1F5D54CA8);
      LOBYTE(v494) = v496;
      v104 = OUTLINED_FUNCTION_15_92();
      sub_1E3C3DE00(v104);
      v105 = OUTLINED_FUNCTION_5_126();
      v106 = sub_1E3C3DE00(v105);
      OUTLINED_FUNCTION_14_103(v106, v107, v108, v109, v110, v111, v112, v113, v384, v405, v426, v447, v469, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v488);
      sub_1E3C3DE00(&unk_1F5D54CA8);
      __src[93] = v501;
      sub_1E3C2FCB8(__dst, __src);
      OUTLINED_FUNCTION_1_158();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v122 = OUTLINED_FUNCTION_6_112(v114, v115, v116, v117, v118, v119, v120, v121, v385, v406, v427, v448, v470, __dst[0]);
      v123(v122, 59);

      (v82)(v124);
      OUTLINED_FUNCTION_2_1();
      (*(v125 + 2128))(0x3FE6666666666666, 0);

      (v82)(v126);
      OUTLINED_FUNCTION_2_1();
      v127 = OUTLINED_FUNCTION_8_5();
      v128(v127);

      (v82)(v129);
      *__dst = 0;
      __dst[8] = 1;
      v498 = 0x4073100000000000;
      v499 = 0;
      v496 = 0x4081300000000000;
      v497 = 0;
      v494 = 0x4077600000000000;
      v495 = 0;
      v492 = 0x407B000000000000;
      v493 = 0;
      v130 = OUTLINED_FUNCTION_16_83();
      sub_1E3C3DE00(v130);
      v488 = v490;
      v489 = v491;
      sub_1E3C2FCB8(&v488, __src);
      memcpy(__dst, __src, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v139 = OUTLINED_FUNCTION_6_112(v131, v132, v133, v134, v135, v136, v137, v138, v386, v407, v428, v449, v471, __dst[0]);
      v141 = 4;
    }

    else
    {
      LOBYTE(v498) = 17;
      LOBYTE(v496) = 15;
      LOBYTE(v494) = 7;
      LOBYTE(v492) = 3;
      LOBYTE(v490) = 7;
      v249 = OUTLINED_FUNCTION_0_157(v83, v84, v85, v86, v87, v88, v89, v90, v382, v403, v424, v445, v467, 27);
      sub_1E3C2FCB8(v249, v250);
      OUTLINED_FUNCTION_1_158();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v139 = OUTLINED_FUNCTION_4_135(v251, v252, v253, v254, v255, v256, v257, v258, v397, v418, v439, v461, v482, __dst[0]);
    }

    v140(v139, v141);

    OUTLINED_FUNCTION_111();
    v259 += 218;
    v260 = *v259;
    v261 = (*v259)();
    (*(*v261 + 1792))(10);

    if (TVAppFeature.isEnabled.getter(10))
    {
      v260();
      __dst[0] = 11;
      LOBYTE(v498) = 6;
      LOBYTE(v496) = 6;
      LOBYTE(v494) = 10;
      LOBYTE(v492) = 7;
      v262 = OUTLINED_FUNCTION_16_83();
      sub_1E3C3DE00(v262);
      OUTLINED_FUNCTION_11_94();
      v271 = OUTLINED_FUNCTION_0_157(v263, v264, v265, v266, v267, v268, v269, v270, v387, v408, v429, v450, v472, __dst[0]);
      sub_1E3C2FCB8(v271, v272);
      OUTLINED_FUNCTION_1_158();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v281 = OUTLINED_FUNCTION_6_112(v273, v274, v275, v276, v277, v278, v279, v280, v398, v419, v440, v462, v483, __dst[0]);
      v282(v281, 54);
    }

    v283 = TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_111();
    (*(v284 + 1768))();
    if (v283)
    {
      __dst[0] = 17;
      LOBYTE(v498) = 17;
      LOBYTE(v496) = 21;
      LOBYTE(v494) = 25;
      v285 = OUTLINED_FUNCTION_15_92();
      sub_1E3C3DE00(v285);
      v286 = OUTLINED_FUNCTION_5_126();
      v287 = sub_1E3C3DE00(v286);
      OUTLINED_FUNCTION_14_103(v287, v288, v289, v290, v291, v292, v293, v294, v387, v408, v429, v450, v472, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v488);
    }

    else
    {
      __dst[0] = 19;
      LOBYTE(v498) = 27;
      LOBYTE(v496) = 27;
      LOBYTE(v494) = 3;
      LOBYTE(v492) = 2;
      v304 = OUTLINED_FUNCTION_16_83();
      sub_1E3C3DE00(v304);
      OUTLINED_FUNCTION_11_94();
    }

    v303 = OUTLINED_FUNCTION_0_157(v295, v296, v297, v298, v299, v300, v301, v302, v387, v408, v429, v450, v472, __dst[0]);
    sub_1E3C2FCB8(v303, v305);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v314 = OUTLINED_FUNCTION_4_135(v306, v307, v308, v309, v310, v311, v312, v313, v399, v420, v441, v463, v484, __dst[0]);
    v315(v314);

    v316 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    [v316 setShadowOffset_];
    [v316 setShadowBlurRadius_];
    v317 = [objc_opt_self() blackColor];
    v318 = [v317 colorWithAlphaComponent_];

    [v316 setShadowColor_];
    OUTLINED_FUNCTION_9_2();
    (*(v319 + 1840))();
    OUTLINED_FUNCTION_2_1();
    v321 = *(v320 + 608);
    v322 = v316;
    v321(v316);

    OUTLINED_FUNCTION_9_2();
    v324 = *(v323 + 1864);
    v324();
    OUTLINED_FUNCTION_2_1();
    (*(v325 + 2048))();
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_3_11();
    (*(v326 + 1720))(6);

    v328 = *(v324)(v327);
    (*(v328 + 2048))();

    __dst[0] = 27;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v329 = 17;
    }

    else
    {
      v329 = 22;
    }

    LOBYTE(v498) = v329;
    LOBYTE(v496) = 19;
    LOBYTE(v494) = 27;
    LOBYTE(v492) = 19;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_11_94();
    v338 = OUTLINED_FUNCTION_0_157(v330, v331, v332, v333, v334, v335, v336, v337, v400, v421, v442, v464, v485, __dst[0]);
    sub_1E3C2FCB8(v338, v339);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v348 = OUTLINED_FUNCTION_4_135(v340, v341, v342, v343, v344, v345, v346, v347, v401, v422, v443, v465, v486, __dst[0]);
    v349(v348);

    if (TVAppFeature.isEnabled.getter(10))
    {
      v350 = (v324)();
      (*(*v350 + 2048))(v350);
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v351 + 1792))(5);

      (v324)(v352);
      OUTLINED_FUNCTION_2_1();
      (*(v353 + 2096))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v354 + 2072))(27);

      (v324)(v355);
      OUTLINED_FUNCTION_2_1();
      (*(v356 + 2096))();
      OUTLINED_FUNCTION_30_6();
      v357 = *sub_1E3E5FD88();
      v358 = *(qword_1F5D549D8 + 680);
      v359 = v357;
      v358(v357);

      (v324)(v360);
      OUTLINED_FUNCTION_2_1();
      (*(v361 + 2096))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v362 + 2144))(0x4031000000000000, 0);

      (v324)(v363);
      OUTLINED_FUNCTION_2_1();
      (*(v364 + 2096))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v365 + 2168))(6);

      (v324)(v366);
      OUTLINED_FUNCTION_2_1();
      (*(v367 + 2096))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_11();
      (*(v368 + 2096))(6);
    }

    TVAppFeature.isEnabled.getter(10);
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v142 += 218;
    v143 = *v142;
    (*v142)();
    OUTLINED_FUNCTION_10_87();
    LOBYTE(v492) = 3;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_11_94();
    v152 = OUTLINED_FUNCTION_0_157(v144, v145, v146, v147, v148, v149, v150, v151, v382, v403, v424, v445, v467, __dst[0]);
    sub_1E3C2FCB8(v152, v153);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v162 = OUTLINED_FUNCTION_4_135(v154, v155, v156, v157, v158, v159, v160, v161, v388, v409, v430, v451, v473, __dst[0]);
    v163(v162);

    (v143)(v164);
    __dst[0] = 10;
    LOBYTE(v498) = 11;
    LOBYTE(v496) = 11;
    LOBYTE(v494) = 10;
    v165 = OUTLINED_FUNCTION_15_92();
    sub_1E3C3DE00(v165);
    v166 = OUTLINED_FUNCTION_5_126();
    v167 = sub_1E3C3DE00(v166);
    OUTLINED_FUNCTION_14_103(v167, v168, v169, v170, v171, v172, v173, v174, v389, v410, v431, v452, v474, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v488);
    v183 = OUTLINED_FUNCTION_0_157(v175, v176, v177, v178, v179, v180, v181, v182, v390, v411, v432, v453, v475, __dst[0]);
    sub_1E3C2FCB8(v183, v184);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v193 = OUTLINED_FUNCTION_6_112(v185, v186, v187, v188, v189, v190, v191, v192, v391, v412, v433, v454, v476, __dst[0]);
    v194(v193, 54);

    OUTLINED_FUNCTION_9_2();
    v196 = *(v195 + 1768);
    v196();
    OUTLINED_FUNCTION_10_87();
    LOBYTE(v492) = 17;
    sub_1E3C3DE00(&qword_1F5D549D8);
    OUTLINED_FUNCTION_11_94();
    v205 = OUTLINED_FUNCTION_0_157(v197, v198, v199, v200, v201, v202, v203, v204, v392, v413, v434, v455, v477, __dst[0]);
    sub_1E3C2FCB8(v205, v206);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v215 = OUTLINED_FUNCTION_4_135(v207, v208, v209, v210, v211, v212, v213, v214, v393, v414, v435, v456, v478, __dst[0]);
    v216(v215);

    (v196)(v217);
    __dst[0] = 4;
    LOBYTE(v498) = 11;
    LOBYTE(v496) = 11;
    LOBYTE(v494) = 10;
    v218 = OUTLINED_FUNCTION_15_92();
    sub_1E3C3DE00(v218);
    v219 = OUTLINED_FUNCTION_5_126();
    v220 = sub_1E3C3DE00(v219);
    OUTLINED_FUNCTION_14_103(v220, v221, v222, v223, v224, v225, v226, v227, v394, v415, v436, v457, v479, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v488);
    v236 = OUTLINED_FUNCTION_0_157(v228, v229, v230, v231, v232, v233, v234, v235, v395, v416, v437, v458, v480, __dst[0]);
    sub_1E3C2FCB8(v236, v237);
    OUTLINED_FUNCTION_1_158();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v246 = OUTLINED_FUNCTION_6_112(v238, v239, v240, v241, v242, v243, v244, v245, v396, v417, v438, v459, v481, __dst[0]);
    v247(v246, 54);
  }

  v369 = (v7)(v248);
  sub_1E3C37CBC(v369, 23);

  v371 = (v28)(v370);
  sub_1E3C37CBC(v371, 15);

  v373 = v460(v372);
  sub_1E3C37CBC(v373, 11);

  OUTLINED_FUNCTION_9_2();
  v375 = (*(v374 + 1840))();
  sub_1E3C37CBC(v375, 59);

  OUTLINED_FUNCTION_9_2();
  v377 = (*(v376 + 1864))();
  sub_1E3C37CBC(v377, 60);

  OUTLINED_FUNCTION_9_2();
  v379 = (*(v378 + 1888))();
  sub_1E3C37CBC(v379, 99);

  return v6;
}

uint64_t sub_1E3B93370()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  *(v0 + 112) = sub_1E383BCC0();
  *(v0 + 120) = sub_1E383BCC0();
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  *(v0 + 136) = sub_1E3BBD964(1, v1 & 1, v2, v3 & 1);
  *(v0 + 144) = sub_1E3B916D8();
  type metadata accessor for ChannelLogoViewLayout();
  *(v0 + 152) = sub_1E3E38658(2);
  *(v0 + 128) = 161;

  return sub_1E3C2F9A0();
}

uint64_t sub_1E3B9342C()
{
}

uint64_t sub_1E3B9347C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3B934D4()
{
  v0 = sub_1E3B9347C();

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

id sub_1E3B93528()
{
  v1 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight;
  OUTLINED_FUNCTION_0_12();
  if (*(v0 + v1) == 1)
  {
    [v0 setBackgroundColor_];
    v2 = *sub_1E3E60700();
  }

  else
  {
    [v0 setBackgroundColor_];
    v2 = 0;
  }

  return [v0 setHighlightedBackgroundColor_];
}

void sub_1E3B935B0(void *a1)
{
  v6 = *&v1[OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView];
  *&v1[OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView] = a1;
  v2 = a1;
  v3 = [v1 vuiContentView];
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView];
  v5 = OUTLINED_FUNCTION_112();
  sub_1E3C8BDFC(v5, v6);
}

id sub_1E3B93650()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView) = 0;
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  [v5 setAutoresizingMask_];
  return v5;
}

void sub_1E3B93708()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3B937A0(char a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_17_4();
  objc_msgSendSuper2(v7, v8, v6);
  v9 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (!v10 || (v11 = *(*v10 + 176), v12 = , v11(v24, v12), v13 = *&v24[1], v14 = *&v24[3], , (v25 & 1) != 0))
  {
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  if (v13 > v15)
  {
    v15 = v13;
  }

  if (v14 > v16)
  {
    v16 = v14;
  }

  if (a1)
  {
    if (*(v3 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView))
    {
      OUTLINED_FUNCTION_16_84();
      [v17 v18];
    }
  }

  else
  {
    v19 = sub_1E3CEE8A0(0.0, v15, 0.0, v16, 0.0);
    v20 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView;
    v21 = *(v3 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView);
    if (v21)
    {
      [v21 setFrame_];
      v22 = *(v3 + v20);
      if (v22)
      {
        [v22 vui_layoutIfNeeded];
      }
    }
  }

  return a2;
}

id sub_1E3B93994(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight;
  result = swift_beginAccess();
  if (*(v1 + v4) == 1)
  {
    v6.receiver = v1;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_vui_setHighlighted_, a1 & 1);
  }

  return result;
}

id sub_1E3B93A64()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_vui_prepareForReuse);
  result = *&v0[OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView];
  if (result)
  {
    return [result vui_prepareForReuse];
  }

  return result;
}

uint64_t sub_1E3B93B04(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = (*(*a1 + 488))(a2);
      if (v10)
      {
        *&v142 = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240);
        v12 = sub_1E32752B0(&qword_1ECF289A8, &qword_1ECF34240);
        sub_1E38D2480(&v145, v11, v12);

        v14 = v145;
        if (v145)
        {
          v15 = (*(*a1 + 392))(v13);
          if (v15)
          {
            v16 = v15;
            if (*v15 == _TtC8VideosUI25OfferListLockupCellLayout)
            {
              v17 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_layout;
              OUTLINED_FUNCTION_3_0();
              *(v9 + v17) = v16;
              swift_retain_n();

              v18 = sub_1E373E010(59, v14);
              v19 = v18;
              v20 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView;
              v21 = *(v9 + OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_containerView);
              if (v21)
              {
                type metadata accessor for ASCListItem();
                v18 = swift_dynamicCastClass();
                v22 = v18;
                if (v18)
                {
                  v18 = v21;
                }

                if (v19)
                {
LABEL_11:
                  v141 = v20;
                  v23 = (*(*v19 + 544))(v18);
                  v24 = [v23 selectEventDataSource];

                  if (v24)
                  {
                    v25 = [v24 action];
                    if (v25)
                    {
                      v26 = v25;
                      objc_opt_self();
                      v27 = swift_dynamicCastObjCClass();
                      if (v27)
                      {
                        v28 = v27;
                        if (v22)
                        {
                          v29 = v22;
                          sub_1E3CC2474(v28);
                        }

                        else
                        {
                          type metadata accessor for ASCListItem();
                          v30 = v26;
                          v29 = sub_1E3CC1DF0();
                        }

                        v31 = [v24 documentDataSource];
                        if (v31)
                        {
                          v32 = v31;
                          v139 = [v31 uiConfiguration];
                        }

                        else
                        {
                          v139 = 0;
                        }

                        v33 = OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration;
                        OUTLINED_FUNCTION_3_0();
                        v34 = *&v29[v33];
                        *&v29[v33] = v139;

                        v35 = [v24 postActionDocumentDataSource];
                        if (v35)
                        {
                          v36 = v35;
                          v139 = [v35 uiConfiguration];

                          v37 = v139;
                        }

                        else
                        {

                          v37 = 0;
                        }

                        v38 = OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration;
                        OUTLINED_FUNCTION_3_0();
                        v39 = *&v29[v38];
                        *&v29[v38] = v37;
                      }

                      else
                      {

                        v29 = 0;
                      }

                      goto LABEL_31;
                    }
                  }

                  v29 = 0;
LABEL_31:
                  v20 = v141;
LABEL_32:

                  if (v29)
                  {

                    v40 = v29;
                    v41 = OUTLINED_FUNCTION_122();
                    sub_1E3B935B0(v41);

LABEL_61:

                    goto LABEL_62;
                  }

                  v42 = *(v9 + v20);
                  if (v42 && (type metadata accessor for OfferListLockupContentView(), (v43 = swift_dynamicCastClass()) != 0))
                  {
                    v44 = v43;
                    v45 = v42;
                  }

                  else
                  {
                    type metadata accessor for OfferListLockupContentView();
                    v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                  }

                  v46 = v44;
                  *&v44[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout] = v16;

                  v47 = 0.0;
                  if (!sub_1E373E010(39, v14))
                  {
                    v59 = 0;
                    v49 = 0;
LABEL_46:
                    v58 = 1;
LABEL_47:
                    v140 = v16;
                    v141 = v49;
                    v60 = sub_1E418A4F4();
                    if (v59 && (v58 & 1) == 0 && v47 == *v60)
                    {
                      v61 = *(*v59 + 2000);

                      v61(2);
                    }

                    v62 = v46;
                    v138 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView;
                    v63 = *&v46[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView];
                    v64 = type metadata accessor for UIFactory();
                    v142 = 0u;
                    v143 = 0u;
                    v144 = 0;
                    v65 = sub_1E3280A90(0, &qword_1EE23AE80);

                    v66 = v141;

                    v67 = v59;
                    v68 = v63;
                    v136 = v65;
                    v137 = v64;
                    v69 = sub_1E393D92C(v66, v63, &v142, v67);
                    v139 = v67;

                    sub_1E373C624(&v142);
                    sub_1E3B949F8(v69);
                    v70 = *sub_1E37BD0DC();
                    v71 = (*(v70 + 504))();

                    if (v71 != 18)
                    {
                      *&v62[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imagePosition] = sub_1E41255DC(v71);
                    }

                    v72 = *&v62[v138];
                    if (v72)
                    {
                      [v72 setVuiUserInteractionEnabled_];
                    }

                    sub_1E373E010(23, v14);
                    OUTLINED_FUNCTION_0_158();
                    v73 = v71;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0);
                    v74 = OUTLINED_FUNCTION_18_65();
                    v75 = v137;
                    v79 = sub_1E393D92C(v74, v76, v77, v78);

                    sub_1E373C624(&v142);
                    v80 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A04(v80);
                    v81 = sub_1E373E010(9, v14);
                    if (!v81)
                    {
                      v81 = sub_1E373E010(15, v14);
                    }

                    OUTLINED_FUNCTION_0_158();
                    v82 = v79;
                    v138 = v81;
                    v83 = sub_1E393D92C(v81, v79, &v142, 0);

                    sub_1E373C624(&v142);
                    v84 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A10(v84);
                    sub_1E373E010(17, v14);
                    OUTLINED_FUNCTION_0_158();
                    v85 = v83;
                    v86 = OUTLINED_FUNCTION_18_65();
                    v90 = sub_1E393D92C(v86, v87, v88, v89);

                    sub_1E373C624(&v142);
                    v91 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A40(v91);
                    sub_1E373E010(59, v14);
                    OUTLINED_FUNCTION_0_158();
                    v136 = sub_1E3280A90(0, &qword_1EE23ACF0);
                    v92 = v90;
                    v93 = OUTLINED_FUNCTION_1_159();
                    v97 = sub_1E393D92C(v93, v94, v95, v96);

                    sub_1E373C624(&v142);
                    v98 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A28(v98);
                    sub_1E373E010(14, v14);
                    OUTLINED_FUNCTION_0_158();
                    v99 = v97;
                    v100 = OUTLINED_FUNCTION_1_159();
                    sub_1E393D92C(v100, v101, v102, v103);

                    sub_1E373C624(&v142);
                    v104 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A1C(v104);
                    sub_1E373E010(60, v14);
                    v105 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton;
                    v106 = *&v62[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton];
                    v144 = 0;
                    v142 = 0u;
                    v143 = 0u;
                    v107 = v106;
                    v108 = OUTLINED_FUNCTION_1_159();
                    sub_1E393D92C(v108, v109, v110, v111);

                    sub_1E373C624(&v142);
                    v112 = OUTLINED_FUNCTION_4_126();
                    sub_1E3B94A34(v112);
                    v113 = *&v62[v105];
                    type metadata accessor for Accessibility();
                    v114 = v113;
                    v115 = sub_1E373E010(60, v14);
                    sub_1E40A91FC(v113, 0, v115);

                    v116 = sub_1E3B94AD8();
                    *(&v143 + 1) = &unk_1F5D5DAC8;
                    v144 = &off_1F5D5C998;
                    LOBYTE(v142) = 38;
                    v117 = j__OUTLINED_FUNCTION_18();
                    LOBYTE(v113) = sub_1E39C29F0(&v142, v117 & 1);
                    __swift_destroy_boxed_opaque_existential_1(&v142);
                    [v116 setHidden_];

                    v118 = sub_1E373E010(222, v14);

                    if (v118)
                    {
                      sub_1E3280A90(0, &qword_1EE23B228);
                      v119 = sub_1E415EDEC();
                      v120 = *&v62[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView];
                      v121 = v120;
                      sub_1E4005268(v118, v119, v120, 0, 0);

                      v122 = OUTLINED_FUNCTION_4_126();
                      sub_1E3B94A4C(v122);
                    }

                    else
                    {
                      sub_1E3B94A4C(0);
                    }

                    [v62 vui_setNeedsLayout];
                    v123 = v62;
                    sub_1E3B935B0(v62);

                    goto LABEL_61;
                  }

                  type metadata accessor for ImageViewModel();
                  v48 = swift_dynamicCastClass();
                  v49 = v48;
                  if (v48)
                  {
                    v50 = *(*v48 + 392);

                    v52 = v50(v51);

                    if (!v52)
                    {
LABEL_45:
                      v59 = 0;
                      goto LABEL_46;
                    }

                    type metadata accessor for ImageLayout();
                    v53 = swift_dynamicCastClass();
                    if (v53)
                    {
                      v141 = *(*v53 + 432);
                      v54 = v53;

                      v56 = v141(v55);
                      v58 = v57;

                      v47 = *&v56;
                      v59 = v54;
                      goto LABEL_47;
                    }
                  }

                  goto LABEL_45;
                }
              }

              else
              {
                v22 = 0;
                if (v18)
                {
                  goto LABEL_11;
                }
              }

              v29 = 0;
              goto LABEL_32;
            }
          }
        }
      }

LABEL_62:
      *(&v143 + 1) = &unk_1F5D5DAC8;
      v144 = &off_1F5D5C998;
      LOBYTE(v142) = 33;
      v124 = sub_1E39BE4D0();
      if (v124)
      {
      }

      v125 = sub_1E39C29F0(&v142, v124 != 0);
      __swift_destroy_boxed_opaque_existential_1(&v142);
      v126 = OBJC_IVAR____TtC8VideosUI19OfferListLockupCell_enableHighlight;
      OUTLINED_FUNCTION_3_0();
      *(v9 + v126) = v125 & 1;
      sub_1E3B93528();
      return v9;
    }
  }

  v128 = sub_1E324FBDC();
  (*(v5 + 16))(v7, v128, v4);

  v129 = sub_1E41FFC94();
  v130 = sub_1E4206814();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *&v142 = v132;
    *v131 = 136315138;
    sub_1E384EE08(a1[49]);
    v135 = sub_1E3270FC8(v133, v134, &v142);

    *(v131 + 4) = v135;
    _os_log_impl(&dword_1E323F000, v129, v130, "OfferListLockupCell: Failed to get correct cell for [%s]", v131, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v132);
    MEMORY[0x1E69143B0](v132, -1, -1);
    MEMORY[0x1E69143B0](v131, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void *sub_1E3B94918@<X0>(void *a1@<X8>, double a2@<D1>, double a3@<D2>, double a4@<D3>, double a5@<D4>)
{
  OUTLINED_FUNCTION_16_84();
  [v10 v11];
  v13 = v12;
  v15 = v14;
  sub_1E41A300C(v17);
  sub_1E41A2FE8(v13, v15);
  *&v17[6] = a2;
  *&v17[7] = a3;
  *&v17[8] = a4;
  *&v17[9] = a5;
  return memcpy(a1, v17, 0x50uLL);
}

void sub_1E3B94A58(void *a1, void *a2)
{
  v7 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  v4 = *(v2 + *a2);
  v5 = v4;
  v6 = a1;
  sub_1E3C8BDFC(v4, v7);
}

id sub_1E3B94AD8()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(VUISeparatorView) init];
    v10 = v4;
    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1E3280A90(0, &unk_1ECF38CB0);
    sub_1E41E1A64(&v10, sub_1E3B962B8, v5, &v11);

    v6 = v11;
    v7 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3B94BD8(int a1, double a2, double a3)
{
  v210 = a2;
  v215 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout;
  v6 = *(v3 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout);
  v7 = MEMORY[0x1E69DDCE0];
  if (!v6 || (v8 = *(*v6 + 176), v9 = , v8(v223, v9), v11 = *v223, v10 = v223[1], v13 = v223[2], v12 = v223[3], , (v224 & 1) != 0))
  {
    v11 = *v7;
    v10 = *(v7 + 1);
    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
  }

  v194 = *&v11;
  v14 = *&v216[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imagePosition];
  v15 = [v216 vuiTraitCollection];
  v16 = [v15 isAXEnabled];

  v17 = *&v216[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView];
  v18 = &selRef_vui_disableLocalAsset;
  v196 = v13;
  v197 = v10;
  v195 = v12;
  v206 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView;
  if (!v17)
  {
    v21 = 0.0;
LABEL_10:
    v23 = v7[3];
    goto LABEL_11;
  }

  v19 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView;
  [v17 vui:v210 sizeThatFits:a3];
  v21 = v20;
  if (!*&v216[v19])
  {
    goto LABEL_10;
  }

  if (!*&v216[v215])
  {
    goto LABEL_10;
  }

  sub_1E37BD0DC();
  v22 = OUTLINED_FUNCTION_4_9();
  (*(OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView + 152))(v225, v22);
  v23 = *&v225[3];

  if (v226)
  {
    goto LABEL_10;
  }

LABEL_11:
  v24 = v210 - v21;
  v25 = *&OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_primaryButton;
  HIDWORD(v205) = a1;
  if (!*(OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_primaryButton + v216))
  {
    v192 = 0.0;
    v203 = 0.0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_16_84();
  [v26 v27];
  v203 = v28;
  v192 = v29;
  if (!*&v216[*&v25])
  {
LABEL_16:
    v32 = 0;
    v31 = *(v7 + 1);
    goto LABEL_17;
  }

  if (*&v216[v215])
  {

    sub_1E415EE5C();
    OUTLINED_FUNCTION_112();

    off_1F5F48F60(v227, v30);
    v31 = v227[1];
    v32 = v228;
  }

  else
  {
    v31 = 0;
    v32 = 1;
  }

LABEL_17:
  v208 = v25;
  v209 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_decorationView;
  v33 = *&v216[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_decorationView];
  *&v204 = v21;
  if (!v33)
  {
    v191 = 0.0;
    v35 = 0.0;
LABEL_26:
    v40 = 0;
    v39 = *(v7 + 1);
    goto LABEL_30;
  }

  if (*&v216[v215])
  {
    v34 = v33;
    OUTLINED_FUNCTION_112();

    sub_1E374EB64();
    OUTLINED_FUNCTION_122();
  }

  else
  {
    v18 = v33;
    v25 = 0.0;
  }

  OUTLINED_FUNCTION_16_84();
  v35 = sub_1E3C8B764(*&v25, v24, v36);
  v191 = v37;

  if (!*&v216[v209])
  {
    v25 = v208;
    goto LABEL_26;
  }

  if (*&v216[v215])
  {

    sub_1E374EB64();
    OUTLINED_FUNCTION_122();

    (*(**&v25 + 152))(v229, v38);
    v39 = v229[1];
    v40 = v230;
  }

  else
  {
    v39 = 0;
    v40 = 1;
  }

  v25 = v208;
LABEL_30:
  v213 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView;
  v41 = *&v216[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView];
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0;
  if (v41)
  {
    [v41 intrinsicContentSize];
    v43 = v45;
  }

  v200 = v44;
  v46 = 0.0;
  v212 = 0.0;
  if ((v16 & 1) == 0)
  {
    if (*&v216[v213])
    {
      v47 = *&v216[v215];
      if (v47)
      {

        sub_1E415EDEC();
        OUTLINED_FUNCTION_122();

        [*&v25 margin];
        v49 = v48;

        v25 = v208;
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }

      v51 = *&v204;
      v212 = sub_1E4149E00(v50, v47 == 0, v43);
      v46 = 0.0;
      if (v14 == 2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v212 = 0.0;
      v51 = *&v204;
      if (v14 == 2)
      {
        goto LABEL_41;
      }
    }

    v46 = v51 + v23;
LABEL_41:
    if (v32)
    {
      v52 = 0;
    }

    else
    {
      v52 = v31;
    }

    v53 = sub_1E4149E00(v52, v32, v203);
    if (v40)
    {
      v54 = 0;
    }

    else
    {
      v54 = v39;
    }

    v42 = sub_1E4149E00(v54, v40, v35 + v53);
  }

  v55 = v14 == 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42BF390;
  if ((v55 | v16))
  {
    v57 = v216;
    v58 = *&v216[v206];
    v59 = v58;
  }

  else
  {
    v58 = 0;
    v57 = v216;
  }

  *(inited + 32) = v58;
  v60 = *&v57[v215];
  v61 = v57;
  if (v60)
  {

    sub_1E37BD0DC();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v57 = 0;
  }

  *(inited + 40) = v57;
  v193 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_titleLabel;
  *(inited + 48) = *&v61[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_titleLabel];
  OUTLINED_FUNCTION_19_71();
  v63 = v62;
  if (v60)
  {

    sub_1E415E454();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v57 = 0;
  }

  *(inited + 56) = v57;
  *(inited + 64) = *&v61[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_descriptionTextView];
  OUTLINED_FUNCTION_19_71();
  v65 = v64;
  if (v60)
  {

    sub_1E415E4EC();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v57 = 0;
  }

  *(inited + 72) = v57;
  v211 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_subBodyLabel;
  *(inited + 80) = *&v61[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_subBodyLabel];
  OUTLINED_FUNCTION_19_71();
  v67 = v66;
  if (v60)
  {

    sub_1E374EBCC();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v57 = 0;
  }

  *(inited + 88) = v57;
  if (((v16 & 1) != 0 || !*&v61[v211]) && (v68 = *&v61[v213]) != 0)
  {
    *(inited + 96) = v68;
    v69 = v68;
  }

  else
  {
    *(inited + 96) = 0;
  }

  *(inited + 104) = 0;
  *(inited + 112) = *&v61[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton];
  OUTLINED_FUNCTION_19_71();
  v71 = v70;
  if (v60)
  {

    sub_1E415EEE8();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v57 = 0;
  }

  *(inited + 120) = v57;
  if (v16 && (v72 = *&v61[*&v25]) != 0)
  {
    *(inited + 128) = v72;
    v73 = v72;
  }

  else
  {
    *(inited + 128) = 0;
  }

  if (*&v61[v215])
  {

    sub_1E415EE5C();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v57 = 0;
  }

  *(inited + 136) = v57;
  v74 = v61;
  if (v16)
  {
    v75 = *&v61[v209];
    v76 = v75;
  }

  else
  {
    v75 = 0;
  }

  v201 = *&v43;
  v202 = v210 - v46;
  v77 = v210 - v46 - v42;
  *(inited + 144) = v75;
  HIDWORD(v198) = v16;
  if (*&v74[v215])
  {

    sub_1E374EB64();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v57 = 0;
  }

  v78 = 0;
  *(inited + 152) = v57;
  v79 = MEMORY[0x1E69E7CC0];
LABEL_85:
  v80 = (inited + 32 + 16 * v78);
  while (1)
  {
    if (v78 == 8)
    {
      v199 = *&v46;
      swift_setDeallocating();
      v97 = inited;
      sub_1E3B960D8();
      v214 = v79[2];
      if (!v214)
      {
        v99 = 0.0;
        v101 = v216;
LABEL_133:
        if ((v205 & 0x100000000) != 0)
        {
          v132 = *&v101[v215];
          if (v132)
          {
            v133 = *(*v132 + 328);

            v133(v134);
          }

          sub_1E3952BD8(*&v194, *&v197, *&v196);
        }

        else
        {
          v135 = *&v101[v206];
          v136 = 0x1FAA53000;
          v137 = &selRef_textLayout;
          v207 = *&a3;
          if (v135)
          {
            v138 = v135;
            OUTLINED_FUNCTION_13_98();
            OUTLINED_FUNCTION_18_42();
            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            v139 = OUTLINED_FUNCTION_7_128();
            [v139 v140];
          }

          if (*&v101[*&v208])
          {
            OUTLINED_FUNCTION_9_92(a3 - v192);
            v208 = v210 - v203;
            v142 = v141;
            OUTLINED_FUNCTION_13_98();
            OUTLINED_FUNCTION_18_42();
            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            v143 = OUTLINED_FUNCTION_7_128();
            [v143 v144];
          }

          if (*&v101[v209])
          {
            OUTLINED_FUNCTION_9_92(a3 - v191);
            v146 = v145;
            OUTLINED_FUNCTION_13_98();
            OUTLINED_FUNCTION_18_42();
            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            v147 = OUTLINED_FUNCTION_7_128();
            [v147 v148];
          }

          v149 = v79[2];
          if (v149)
          {
            sub_1E39ABF00(v149 - 1, 1, v79);
            v150 = 0;
            OUTLINED_FUNCTION_9_92(a3 - v99);
            v151 = v79 + 9;
            v136 = &qword_1ECF34210;
            do
            {
              v152 = *(v151 - 5);
              if (v150)
              {
                v222 = v79;
                v218 = v150 - 1;
                v219 = 0;
                v153 = v152;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34210);
                OUTLINED_FUNCTION_0_32();
                v154 = sub_1E32752B0(&unk_1ECF34218, &qword_1ECF34210);
                v162 = OUTLINED_FUNCTION_21_61(v154, v155, v156, v157, v158, v159, v160, v161, v190, *&v191, *&v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, *&v202, *&v203, v204, v205, v207, *&v208, v209, *&v210, v211, *&v212, v213, v214, v215, v216, v217, v218);
                sub_1E38D2054(v162, v163);
                v164 = v220;
                if (*&v220 != 0.0)
                {

                  [v164 frame];
                  OUTLINED_FUNCTION_18_3();
                  v166 = v165;
                  v168 = v167;

                  v233.origin.x = OUTLINED_FUNCTION_17_4();
                  v233.size.width = v166;
                  v233.size.height = v168;
                  CGRectGetMaxY(v233);
                }

                v137 = &selRef_textLayout;
              }

              else
              {
                v169 = v152;
              }

              ++v150;
              [v216 bounds];
              [v216 v137[416]];
              VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
              [v152 setFrame_];

              v151 += 6;
            }

            while (v149 != v150);
          }

          if ((v198 & 0x100000000) == 0)
          {
            v170 = *&v216[v213];
            if (v170)
            {
              v171 = *&v216[v211];
              if (v171)
              {
                v136 = v170;
                [v171 frame];
                OUTLINED_FUNCTION_18_3();
                width = v234.size.width;
                height = v234.size.height;
                CGRectGetMinY(v234);
                v235.origin.x = OUTLINED_FUNCTION_17_4();
                v235.size.width = width;
                v235.size.height = height;
                CGRectGetHeight(v235);
                v174 = v136;
                [v216 bounds];
                OUTLINED_FUNCTION_18_42();
                VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
                v175 = OUTLINED_FUNCTION_7_128();
                [v175 v176];
              }
            }
          }

          v177 = *&v216[v193];
          if (v177)
          {
            v178 = *&v216[v209];
            if (v178)
            {
              v179 = swift_dynamicCastObjCProtocolConditional();
              if (!((v179 == 0) | BYTE4(v198) & 1))
              {
                v180 = v179;
                v136 = v177;
                v181 = v178;
                [v136 frame];
                CGRectGetMinY(v236);
                [v136 vuiBaselineHeight];
                [v180 vuiBaselineHeight];
                [v180 frame];
                v182 = OUTLINED_FUNCTION_7_128();
                [v182 v183];
              }
            }
          }

          if (*&v216[v215])
          {

            sub_1E3A05A58();
            v184 = OUTLINED_FUNCTION_4_9();
            (*(*v136 + 152))(&v220, v184);
          }

          v185 = sub_1E3B94AD8();
          [v185 lineHeight];

          VUIRoundValue();
          v186 = OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView;
          [*&v216[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView] lineHeight];
          v187 = *&v216[v186];
          [v216 bounds];
          [v216 vuiIsRTL];
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          v188 = OUTLINED_FUNCTION_7_128();
          [v188 v189];
        }

        return;
      }

      v98 = 0;
      v99 = 0.0;
      v100 = 9;
      v101 = v216;
      while (1)
      {
        OUTLINED_FUNCTION_10_88();
        if (v102)
        {
          goto LABEL_163;
        }

        v103 = v79[v100 - 5];
        v104 = v79[v100 - 4];
        v222 = v79;
        v218 = v98 - 1;
        v219 = 0;

        v105 = v103;
        v97 = &qword_1ECF34210;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34210);
        OUTLINED_FUNCTION_0_32();
        v106 = sub_1E32752B0(&unk_1ECF34218, &qword_1ECF34210);
        v114 = OUTLINED_FUNCTION_21_61(v106, v107, v108, v109, v110, v111, v112, v113, v190, *&v191, *&v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, *&v202, *&v203, v204, v205, v206, *&v208, v209, *&v210, v211, *&v212, v213, v214, v215, v216, v217, v218);
        sub_1E38D2054(v114, v115);
        v116 = v220;
        if (*&v220 != 0.0)
        {

          if (v104)
          {
            v117 = *(*v104 + 152);

            v97 = v104;
            v117(v231, v118);

            if ((v232 & 1) == 0)
            {
              v218 = v231[0];
              sub_1E3A1F10C();
              v97 = &v218;
              sub_1E41499CC(MEMORY[0x1E69E7DE0], &v220);
              if ((v221 & 1) == 0)
              {
                v128 = *&v220;
                v129 = v116;
                v97 = v105;
                sub_1E3C8B6B4(v116, v128);
                v123 = v130;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v79 = sub_1E3B962E4(v79);
                }

                OUTLINED_FUNCTION_10_88();
                if (v102)
                {
                  goto LABEL_167;
                }

                goto LABEL_128;
              }
            }
          }

          v119 = *&v101[v213];
          if (v119 && (sub_1E3280A90(0, &qword_1EE23AE80), v120 = v105, v121 = v119, v97 = sub_1E4206F64(), v121, v120, (v97 & 1) != 0))
          {
            v97 = *&v101[v215];
            if (v97)
            {

              sub_1E415EDEC();
              OUTLINED_FUNCTION_112();

              [v120 margin];
              v123 = v122;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v79 = sub_1E3B962E4(v79);
              }

              OUTLINED_FUNCTION_10_88();
              if (v102)
              {
                goto LABEL_166;
              }

LABEL_128:
              v79[v100 - 2] = v123;
              goto LABEL_129;
            }
          }

          else
          {
            v124 = *&v101[v215];
            if (v124)
            {
              v125 = *(*v124 + 1176);

              v97 = v125(v126);
              LOBYTE(v125) = v127;

              if (v125)
              {

                v101 = v216;
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v79 = sub_1E3B962E4(v79);
                }

                v101 = v216;

                OUTLINED_FUNCTION_10_88();
                if (v102)
                {
                  goto LABEL_165;
                }

                v79[v100 - 2] = v97;
              }

              goto LABEL_129;
            }
          }
        }

LABEL_129:
        OUTLINED_FUNCTION_10_88();
        if (v102)
        {
          goto LABEL_164;
        }

        ++v98;
        MaxY = CGRectGetMaxY(*&v79[v100 - 3]);

        v99 = v99 + MaxY;
        v100 += 6;
        if (v214 == v98)
        {
          goto LABEL_133;
        }
      }
    }

    if (v78 > 7)
    {
      break;
    }

    ++v78;
    v81 = v80 + 2;
    v82 = *v80;
    v80 += 2;
    if (v82)
    {
      v83 = *(v81 - 1);
      if (v82 == *&v216[v213])
      {

        v84 = v82;
        v86 = v200;
        v85 = v43;
      }

      else
      {
        v87 = *&v216[v211];
        if (v87)
        {
          sub_1E3280A90(0, &qword_1EE23AE80);

          v88 = v87;
          v89 = v82;
          v90 = sub_1E4206F64();

          if (v90)
          {
            v91 = v77 - v212;
          }

          else
          {
            v91 = v77;
          }
        }

        else
        {

          v92 = v82;
          v91 = v77;
        }

        v85 = sub_1E3C8B764(v83, v91, 1.79769313e308);
        v86 = v93;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1E3B96138(0, v79[2] + 1, 1, v79);
      }

      v95 = v79[2];
      v94 = v79[3];
      if (v95 >= v94 >> 1)
      {
        v79 = sub_1E3B96138((v94 > 1), v95 + 1, 1, v79);
      }

      v79[2] = v95 + 1;
      v96 = &v79[6 * v95];
      *(v96 + 4) = v82;
      *(v96 + 5) = v83;
      v96[6] = v46;
      v96[7] = 0.0;
      v96[8] = v85;
      *(v96 + 9) = v86;
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
}

id sub_1E3B95E30()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imagePosition) = 10;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_descriptionTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_subBodyLabel) = 0;
  *(OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_primaryButton + v0) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_decorationView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView) = 0;
  v5 = type metadata accessor for OfferListLockupContentView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3B95F04(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_imagePosition] = 10;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_descriptionTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_subBodyLabel] = 0;
  *(OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_primaryButton + v1) = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_secondaryButton] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_decorationView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView_mediaTagsView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUIP33_05025CE0F751E3317949A6D2044F0E5E26OfferListLockupContentView____lazy_storage___separatorView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for OfferListLockupContentView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3B95FF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfferListLockupContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B960D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34228);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1E3B96138(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34230);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3B962F8()
{
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_name);
  swift_beginAccess();
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3B96348(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_name);
  OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  v5[1] = a2;
}

double sub_1E3B963EC()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_startTime;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3B96420(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_startTime;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3B964B4()
{
  v1 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_durationMS;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3B964E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_durationMS;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3B965B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_children;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3B96650()
{
  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_descriptionText);
  swift_beginAccess();
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3B966A0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_descriptionText);
  OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E3B96744()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_isVerboseMode))
  {
    return 0;
  }

  else
  {
    return 10;
  }
}

id sub_1E3B96760()
{
  OUTLINED_FUNCTION_12_87();
  v1 = objc_allocWithZone(v0);
  return sub_1E3B967B0();
}

id sub_1E3B967B0()
{
  OUTLINED_FUNCTION_12_87();
  *&v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_children] = MEMORY[0x1E69E7CC0];
  v5 = &v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_descriptionText];
  *v5 = 0;
  v5[1] = 0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_isVerboseMode;
    v9 = [result performanceDebuggerVerboseEnabled];

    v1[v8] = v9;
    v10 = &v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_name];
    *v10 = v3;
    v10[1] = v2;
    *&v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_startTime] = v4;
    *&v1[OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_durationMS] = v0;
    v11.receiver = v1;
    v11.super_class = type metadata accessor for PerformanceMeasurementNode();
    return objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1E3B968CC(uint64_t a1)
{
  type metadata accessor for PerformanceMeasurementNode();
  v2 = sub_1E4205F14();
  v4 = v3;

  v50 = sub_1E3B96BBC(v5, v2, v4);
  v6 = sub_1E4205F14();
  v8 = v7;

  v49 = sub_1E3B96BBC(v9, v6, v8);
  v10 = sub_1E4205F14();
  v12 = v11;

  v14 = sub_1E3B96BBC(v13, v10, v12);
  v15 = sub_1E4205F14();
  v17 = v16;

  v19 = sub_1E3B96BBC(v18, v15, v17);
  v20 = sub_1E4205F14();
  v22 = v21;

  v24 = sub_1E3B96BBC(v23, v20, v22);
  v25 = sub_1E4205F14();
  v27 = v26;

  v29 = sub_1E3B96BBC(v28, v25, v27);
  v30 = sub_1E4205F14();
  v32 = v31;

  v34 = sub_1E3B96BBC(v33, v30, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E429DCC0;
  *(v35 + 32) = v24;
  *(v35 + 40) = v29;
  v36 = *((*MEMORY[0x1E69E7D40] & *v19) + 0xD0);
  v37 = v24;
  v38 = v29;
  v36(v35);
  v39 = sub_1E4205F14();
  v41 = sub_1E3B96BBC(a1, v39, v40);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1E42A76D0;
  *(v42 + 32) = v50;
  *(v42 + 40) = v49;
  *(v42 + 48) = v14;
  *(v42 + 56) = v19;
  *(v42 + 64) = v34;
  v43 = v41;
  v44 = v50;
  v45 = v49;
  v46 = v14;

  v47 = OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_children;
  OUTLINED_FUNCTION_3_0();
  *&v43[v47] = v42;

  return v43;
}

id sub_1E3B96BBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = sub_1E378A81C(a2, a3, a1);

  if (v7)
  {
    v8 = [v7 durationMS];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 integerValue];
    }

    else
    {
      v10 = -1;
    }

    [v7 timestamp];
    v11 = v12;
  }

  else
  {
    v11 = -1.0;
    v10 = -1;
  }

  v13 = *(v3 + 256);

  v14 = v13(a2, a3, v10, v11);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  v20 = v20 && v19 == a3;
  v21 = v20;
  if (v18)
  {
    if (v21)
    {

LABEL_19:
      OUTLINED_FUNCTION_0_159();
      v4 = v22 + 25;
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_1_160();
    OUTLINED_FUNCTION_6_113();
    if (v18)
    {
      goto LABEL_19;
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_2_126();
    if (!v20 || v39 != a3)
    {
      OUTLINED_FUNCTION_1_160();
      OUTLINED_FUNCTION_6_113();
      if ((v18 & 1) == 0)
      {
        sub_1E4205F14();
        OUTLINED_FUNCTION_2_126();
        if (v20 && v41 == a3)
        {
        }

        else
        {
          OUTLINED_FUNCTION_1_160();
          OUTLINED_FUNCTION_6_113();
          if ((v18 & 1) == 0)
          {
            sub_1E4205F14();
            OUTLINED_FUNCTION_2_126();
            if (!v20 || v43 != a3)
            {
              OUTLINED_FUNCTION_1_160();
              OUTLINED_FUNCTION_6_113();
              if ((v18 & 1) == 0)
              {
                sub_1E4205F14();
                OUTLINED_FUNCTION_2_126();
                if (v20 && v45 == a3)
                {
                }

                else
                {
                  OUTLINED_FUNCTION_1_160();
                  OUTLINED_FUNCTION_6_113();
                  if ((v18 & 1) == 0)
                  {
                    sub_1E4205F14();
                    OUTLINED_FUNCTION_2_126();
                    if (v20 && v47 == a3)
                    {
                    }

                    else
                    {
                      OUTLINED_FUNCTION_1_160();
                      OUTLINED_FUNCTION_6_113();
                      if ((v18 & 1) == 0)
                      {
                        OUTLINED_FUNCTION_5_127();
                        sub_1E4205F14();
                        OUTLINED_FUNCTION_2_126();
                        if (!v20 || v49 != a3)
                        {
                          OUTLINED_FUNCTION_1_160();
                          OUTLINED_FUNCTION_6_113();
                          if (v18)
                          {
                            goto LABEL_97;
                          }

                          sub_1E4205F14();
                          OUTLINED_FUNCTION_2_126();
                          if (v20 && v51 == a3)
                          {
                          }

                          else
                          {
                            OUTLINED_FUNCTION_1_160();
                            OUTLINED_FUNCTION_6_113();
                            if ((v18 & 1) == 0)
                            {
                              sub_1E4205F14();
                              OUTLINED_FUNCTION_2_126();
                              if (v20 && v53 == a3)
                              {
                              }

                              else
                              {
                                OUTLINED_FUNCTION_1_160();
                                OUTLINED_FUNCTION_6_113();
                                if ((v18 & 1) == 0)
                                {
LABEL_93:

                                  v4 = a2;
                                  v13 = a3;
                                  goto LABEL_97;
                                }
                              }

                              OUTLINED_FUNCTION_0_159();
                              v4 = v64 + 17;
                              goto LABEL_97;
                            }
                          }

                          OUTLINED_FUNCTION_0_159();
                          v4 = v62 + 18;
                          goto LABEL_97;
                        }

                        goto LABEL_17;
                      }
                    }

                    OUTLINED_FUNCTION_0_159();
                    v4 = v61 + 14;
                    goto LABEL_97;
                  }
                }

                OUTLINED_FUNCTION_0_159();
                v4 = v59 + 28;
                goto LABEL_97;
              }

              goto LABEL_102;
            }

LABEL_101:

LABEL_102:
            v4 = 0xD000000000000012;
            v55 = "Load HLS playlists";
            goto LABEL_96;
          }
        }

        OUTLINED_FUNCTION_0_159();
        v4 = v57 + 30;
        goto LABEL_97;
      }

LABEL_95:
      v4 = 0xD000000000000012;
      v55 = "Total startup time";
LABEL_96:
      v13 = ((v55 - 32) | 0x8000000000000000);
      goto LABEL_97;
    }

LABEL_94:

    goto LABEL_95;
  }

  v13 = 0xEA0000000000656DLL;
  v4 = 0x6974206C61746F54;
  if (v21)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_160();
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v20 && v23 == a3)
  {
    goto LABEL_94;
  }

  OUTLINED_FUNCTION_1_160();
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v20 && v25 == a3)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_1_160();
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v20 && v27 == a3)
  {
    goto LABEL_101;
  }

  OUTLINED_FUNCTION_1_160();
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v20 && v29 == a3)
  {

    OUTLINED_FUNCTION_0_159();
    v4 = v60 | 4;
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_1_160();
  OUTLINED_FUNCTION_6_113();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (v20 && v31 == a3)
  {
LABEL_100:

    OUTLINED_FUNCTION_0_159();
    v4 = v58 | 1;
    goto LABEL_97;
  }

  OUTLINED_FUNCTION_1_160();
  OUTLINED_FUNCTION_6_113();
  OUTLINED_FUNCTION_5_127();
  sub_1E4205F14();
  OUTLINED_FUNCTION_2_126();
  if (!v20 || v33 != a3)
  {
    OUTLINED_FUNCTION_1_160();
    OUTLINED_FUNCTION_6_113();
    sub_1E4205F14();
    OUTLINED_FUNCTION_2_126();
    if (v20 && v35 == a3)
    {

      OUTLINED_FUNCTION_0_159();
      v4 = v63 + 11;
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_1_160();
    OUTLINED_FUNCTION_6_113();
    sub_1E4205F14();
    OUTLINED_FUNCTION_2_126();
    if (v20 && v37 == a3)
    {

      OUTLINED_FUNCTION_0_159();
      v4 = v65 + 7;
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_1_160();
    OUTLINED_FUNCTION_6_113();
    goto LABEL_93;
  }

LABEL_17:

LABEL_97:

  OUTLINED_FUNCTION_1_14(OBJC_IVAR____TtC8VideosUI26PerformanceMeasurementNode_descriptionText);
  OUTLINED_FUNCTION_3_0();
  *a3 = v4;
  a3[1] = v13;

  return v16;
}

uint64_t sub_1E3B971A4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xB0);
  v8 = v7();
  if (v8 >= (*((*v6 & *v2) + 0xF8))())
  {
    v7();
    v11 = v7();
    v12 = objc_opt_self();
    v13 = &selRef_redColor;
    if (v11 <= 500)
    {
      v13 = &selRef_greenColor;
    }

    v14 = [v12 *v13];
    v42 = sub_1E4206154();
    v43 = v15;
    MEMORY[0x1E69109E0](32, 0xE100000000000000);
    MEMORY[0x1E69109E0](32, 0xE100000000000000);
    OUTLINED_FUNCTION_48();
    v17 = (*(v16 + 224))();
    v40 = a2;
    v41 = v14;
    if (!v18)
    {
      OUTLINED_FUNCTION_48();
      v17 = (*(v19 + 128))();
    }

    MEMORY[0x1E69109E0](v17);

    MEMORY[0x1E69109E0](8250, 0xE200000000000000);
    sub_1E4206594();
    OUTLINED_FUNCTION_48();
    v21 = (*(v20 + 152))();
    v22 = (*((*v6 & *v3) + 0x120))(COERCE_DOUBLE(*&v21), 0);
    v24 = v23;

    MEMORY[0x1E69109E0](10649826, 0xA300000000000000);

    OUTLINED_FUNCTION_11_95();
    MEMORY[0x1E69109E0](v22, v24);

    OUTLINED_FUNCTION_11_95();
    MEMORY[0x1E69109E0](0, 0xE000000000000000);

    OUTLINED_FUNCTION_11_95();
    MEMORY[0x1E69109E0](10, 0xE100000000000000);

    v25 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v27 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    *(inited + 64) = sub_1E3755B54();
    *(inited + 40) = v41;
    type metadata accessor for Key(0);
    sub_1E3B9794C(&qword_1EE23B100);
    v28 = v27;
    v29 = v41;
    v30 = sub_1E4205CB4();
    v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v32 = sub_1E376403C(v42, v43, v30);
    v33 = [v25 appendAttributedString_];
    v34 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC8))(v33);
    result = sub_1E32AE9B0(v34);
    if (!result)
    {
      goto LABEL_17;
    }

    if (__OFADD__(v40, 1))
    {
      __break(1u);
    }

    else
    {
      v35 = result;
      if (result >= 1)
      {
        v36 = 0;
        do
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x1E6911E60](v36, v34);
          }

          else
          {
            v37 = *(v34 + 8 * v36 + 32);
          }

          v38 = v37;
          ++v36;
          v39 = sub_1E3B971A4(v37, v40 + 1);
          [v25 appendAttributedString_];
        }

        while (v35 != v36);
LABEL_17:

        return v25;
      }
    }

    __break(1u);
    return result;
  }

  v9 = objc_allocWithZone(MEMORY[0x1E696AD40]);

  return [v9 init];
}

uint64_t sub_1E3B976F4(uint64_t a1, char a2)
{
  v4 = sub_1E41FE5D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    return 0;
  }

  sub_1E41FE564();
  v8 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E3768E10(0x73733A6D6D3A4848, 0xEC0000005353532ELL, v8);
  v9 = sub_1E41FE514();
  v10 = [v8 stringFromDate_];

  v11 = sub_1E4205F14();
  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_1E3B978B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PerformanceMeasurementNode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B9794C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E3B979C4(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_webView] = 0;
  v3 = OBJC_IVAR____TtC8VideosUI17WebViewController_url;
  v4 = sub_1E41FE414();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WebViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for WebViewController()
{
  result = qword_1ECF57EA8;
  if (!qword_1ECF57EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3B97B00()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17WebViewController_webView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3B97B8C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  sub_1E3B97C90(0);
  sub_1E3B97E68();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v2 = OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator;
  v3 = *&v0[OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator];
  *&v0[OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator] = v1;
  v4 = v1;

  if (v4)
  {
    [v4 setHidesWhenStopped_];
  }

  [*&v0[v2] startAnimating];
  v5 = *&v0[v2];
  if (v5)
  {
    v6 = v5;
    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3B97C90(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    v9 = [v1 navigationItem];
    [v9 setLargeTitleDisplayMode_];

    v13 = type metadata accessor for WebViewController();
    v12[0] = v2;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v10 = v2;
    v6 = sub_1E3B987C0(0, v12, sel_doneTapped);
    v7 = [v10 navigationItem];
    v8 = sel_setRightBarButtonItem_;
    goto LABEL_6;
  }

  v3 = *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_webView];
  if (v3 && [v3 canGoBack])
  {
    sub_1E37E96A4();
    v4 = sub_1E3834BC8();
    v13 = type metadata accessor for WebViewController();
    v12[0] = v2;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v5 = v2;
    v6 = sub_1E3835830(v4, 0, v12, sel_backTapped);
    v7 = [v5 navigationItem];
    v8 = sel_setLeftBarButtonItem_;
LABEL_6:
    v11 = v7;
    [v7 v8];

    goto LABEL_8;
  }

  v11 = [v1 navigationItem];
  [v11 setLeftBarButtonItem_];
LABEL_8:
}

id sub_1E3B97E68()
{
  v1 = v0;
  v2 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result frame];
    OUTLINED_FUNCTION_3();

    v17 = objc_allocWithZone(MEMORY[0x1E69853A0]);
    v18 = OUTLINED_FUNCTION_6();
    v21 = [v19 v20];
    v22 = OBJC_IVAR____TtC8VideosUI17WebViewController_webView;
    v23 = *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_webView];
    *&v1[OBJC_IVAR____TtC8VideosUI17WebViewController_webView] = v21;
    v24 = v21;

    if (v24)
    {
      v25 = v2;
      v26 = v10;
      v27 = v8;
      v28 = [v24 scrollView];

      [v28 setBackgroundColor_];
      v8 = v27;
      v10 = v26;
      v2 = v25;
    }

    v29 = *&v1[v22];
    if (v29)
    {
      v30 = [v29 scrollView];
      [v30 setContentInsetAdjustmentBehavior_];

      v31 = *&v1[v22];
      if (v31)
      {
        [v31 setNavigationDelegate_];
      }
    }

    (*(v4 + 16))(v7, &v1[OBJC_IVAR____TtC8VideosUI17WebViewController_url], v2);
    sub_1E41FDDB4();
    v32 = *&v1[v22];
    if (!v32)
    {
      return (*(v10 + 8))(v14, v8);
    }

    v33 = v32;
    v34 = sub_1E41FDD94();
    v35 = [v33 loadRequest_];

    v36 = *&v1[v22];
    if (!v36)
    {
      return (*(v10 + 8))(v14, v8);
    }

    v37 = v36;
    result = [v1 view];
    if (result)
    {
      v38 = result;
      [result addSubview_];

      return (*(v10 + 8))(v14, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E3B981D0()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI17WebViewController_webView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    v4 = v3;
    [v3 bounds];
    OUTLINED_FUNCTION_3();

    v5 = OUTLINED_FUNCTION_6();
    [v6 v7];
  }

  v8 = *&v0[OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 center];
  v13 = v12;
  v15 = v14;

  [v9 setCenter_];
}

id sub_1E3B98340()
{
  sub_1E3B97C90(1);
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17WebViewController_activityIndicator);

  return [v1 stopAnimating];
}

id sub_1E3B9854C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B98618()
{
  result = sub_1E41FE414();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3B98710()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17WebViewController_webView);
  v2 = [v1 goBack];

  sub_1E3B97C90(1);
}

id sub_1E3B987C0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v9 = *(v6 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1E4207994();
    (*(v9 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 initWithBarButtonSystemItem:a1 target:v13 action:a3];
  swift_unknownObjectRelease();
  return v14;
}

void sub_1E3B98918(void *a1, void *a2, double a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = a1;
  if (v6)
  {
    v8 = [v6 computationLabel];
    if (!v8)
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = v8;

    v7 = v9;
  }

  objc_opt_self();
  v10 = OUTLINED_FUNCTION_18_35();
  v11 = a2;
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = [v10 computationLabel];
  if (v12)
  {
    v13 = v12;

    v11 = v13;
LABEL_7:
    v14 = swift_dynamicCastObjCProtocolConditional();
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = OUTLINED_FUNCTION_18_35();
      if (v16)
      {
        v17 = v16;
        v7 = v7;
        [v15 topMarginToLabel:v17 withBaselineMargin:a3];

LABEL_13:
        return;
      }

      objc_opt_self();
      v18 = OUTLINED_FUNCTION_18_35();
      if (v18)
      {
        v19 = v18;
        v20 = v7;
        v21 = [v19 textContentView];
        [v15 topMarginToLabel:v21 withBaselineMargin:a3];

        v7 = v11;
        v11 = v21;
        goto LABEL_13;
      }
    }

    [v7 topMarginWithBaselineMargin:3 maximumContentSizeCategory:a3];
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
}

double sub_1E3B98AF4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = (**(a1 + 24) + 392);
  v6 = *v5;
  v7 = (*v5)();
  if (v7)
  {
    (*(*v7 + 152))(v30);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  sub_1E4148C68(sub_1E3B997D4, v8, &v29);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_8:
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = v6();
      if (v18)
      {
        v19 = v18;
        if (a2)
        {
          v20 = *(*(a2 + 24) + 98);
          OUTLINED_FUNCTION_5_0();
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            objc_opt_self();
            v23 = swift_dynamicCastObjCClass();
            if (v23)
            {
              v24 = [v23 tagsViewLayout];
              if (!v24)
              {

                return 40.0;
              }

              v25 = v24;
              [v25 margin];
              v15 = v26;
            }

            else
            {
              v15 = (*(*v19 + 1592))(v20);
              if ((a3 & 1) == 0 || (TVAppFeature.isEnabled.getter(10) & 1) == 0)
              {
                sub_1E3B98918(v17, v22, v15);
                v15 = v28;
              }
            }

            return v15;
          }
        }
      }

      else
      {
      }
    }

    return v29;
  }

  v10 = Strong;
  objc_opt_self();
  v11 = OUTLINED_FUNCTION_18_35();
  if (!v11)
  {

    goto LABEL_8;
  }

  v12 = [v11 tagsViewLayout];
  if (!v12)
  {

    return 40.0;
  }

  v13 = v12;
  [v12 margin];
  v15 = v14;

  return v15;
}

double sub_1E3B98DD4(unint64_t a1, uint64_t a2, char a3, double a4, CGFloat a5, CGFloat height)
{
  *&rect.origin.y = a2;
  rect.origin.x = a5;
  MaxY = 0.0;
  if (a4 > 0.0)
  {
    v9 = a1;
    if (a1 >> 62)
    {
      goto LABEL_51;
    }

    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      while (1)
      {
        v11 = 0;
        *&rect.size.width = v9 & 0xC000000000000001;
        v12 = (v9 + 32);
        v53 = v9 & 0xFFFFFFFFFFFFFF8;
        MaxY = height;
        v55 = v10;
        v56 = v9;
        while (1)
        {
          if (*&rect.size.width)
          {
            v13 = MEMORY[0x1E6911E60](v11, v9);
          }

          else
          {
            v13 = *v12;
          }

          OUTLINED_FUNCTION_5_0();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            break;
          }

LABEL_48:
          ++v11;
          ++v12;
          if (v10 == v11)
          {
            return MaxY;
          }
        }

        v15 = Strong;
        OUTLINED_FUNCTION_0_160();
        *&rect.size.height = (*(v16 + 392))();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342D8);
        sub_1E4148C68(sub_1E3B99424, v17, v59);

        v19 = *(*v59[0] + 152);
        v19(&v62, v18);
        OUTLINED_FUNCTION_2_127();
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
        v21 = sub_1E4148C68(sub_1E37E8788, v20, &rect.size.height);
        height = rect.size.height;
        v19(v63, v21);
        OUTLINED_FUNCTION_2_127();
        sub_1E4148C68(sub_1E3B997D4, v20, &v61);
        v22 = a4 - (height + v61);
        [v15 vui:v22 sizeThatFits:0.0];
        v24 = v23;
        v26 = v25;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v27 = v24;
        }

        else
        {
          v27 = v22;
        }

        OUTLINED_FUNCTION_0_160();
        v29 = *(v28 + 392);

        v31 = v29(v30);

        if (!v31)
        {
          goto LABEL_16;
        }

        type metadata accessor for ButtonLayout();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = (*(*v32 + 1784))();
        if (v33 == 11)
        {
          break;
        }

        LOBYTE(v59[0]) = v33;
        LOBYTE(rect.size.height) = 3;
        sub_1E3751DB0();
        v37 = sub_1E4205E84();

        if (v37)
        {
          v27 = v24;
        }

        if (!v11)
        {
LABEL_26:
          v36 = 0.0;
LABEL_27:
          OUTLINED_FUNCTION_0_160();
          v39 = (*(v38 + 392))();
          x = rect.origin.x;
          if (v39)
          {
            v41 = (*(*v39 + 504))();
            if (v41 == 18)
            {
              goto LABEL_29;
            }

            LOBYTE(v61) = v41;
            v60 = 1;
            sub_1E3A96E4C();
            sub_1E4206254();
            sub_1E4206254();
            if (v59[0] == *&rect.size.height && v59[1] == v58)
            {

LABEL_37:
              if ((TVAppFeature.isEnabled.getter(17) & 1) != 0 && v27 < a4)
              {

                v44 = a4 - v27;
              }

              else
              {
                if (v22 >= a4)
                {
                  goto LABEL_29;
                }

                v64.origin.y = 0.0;
                v64.origin.x = rect.origin.x;
                v64.size.width = v27;
                v64.size.height = v26;
                Width = CGRectGetWidth(v64);

                v44 = Width - v24;
              }

              x = v44 * 0.5;
            }

            else
            {
              v43 = sub_1E42079A4();

              if (v43)
              {
                goto LABEL_37;
              }

LABEL_29:

              x = rect.origin.x;
            }
          }

          v46 = **&rect.origin.y;
          v47 = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_1E3B99638(0, v46[2] + 1, 1, v46);
          }

          v49 = v46[2];
          v48 = v46[3];
          if (v49 >= v48 >> 1)
          {
            v46 = sub_1E3B99638((v48 > 1), v49 + 1, 1, v46);
          }

          v46[2] = v49 + 1;
          v50 = &v46[5 * v49];
          *(v50 + 4) = v47;
          v65.origin.y = MaxY + v36;
          v50[5] = x;
          v50[6] = MaxY + v36;
          v50[7] = v27;
          v50[8] = v26;
          **&rect.origin.y = v46;
          v65.origin.x = x;
          v65.size.width = v27;
          v65.size.height = v26;
          MaxY = CGRectGetMaxY(v65);

          v10 = v55;
          v9 = v56;
          goto LABEL_48;
        }

LABEL_17:
        v34 = v11 - 1;
        if (*&rect.size.width)
        {
          v35 = MEMORY[0x1E6911E60](v34, v9);
LABEL_22:
          v36 = sub_1E3B98AF4(v13, v35, a3 & 1);
          goto LABEL_27;
        }

        if (v34 < *(v53 + 16))
        {
          v35 = *(v12 - 1);

          goto LABEL_22;
        }

        __break(1u);
LABEL_51:
        v51 = sub_1E4207384();
        if (v51 < 0)
        {
          __break(1u);
        }

        v10 = v51;
        if (!v51)
        {
          return height;
        }
      }

LABEL_16:
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    return height;
  }

  return MaxY;
}

uint64_t sub_1E3B99424@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewLayout();
  result = sub_1E3C2F968();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B99458(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3B994A8(a1, a2);
  return v4;
}

uint64_t sub_1E3B994A8(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_13();
  swift_unknownObjectWeakAssign();

  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1E3B99504(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_5_0();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (!Strong)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if (!v5)
  {

    goto LABEL_9;
  }

  v7 = sub_1E4206F64();

  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  type metadata accessor for ViewModel();
  v8 = static ViewModel.== infix(_:_:)(*(a1 + 24), *(a2 + 24));
  return v8 & 1;
}

uint64_t sub_1E3B995D0()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return v0;
}

uint64_t sub_1E3B995F8()
{
  sub_1E3B995D0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1E3B99638(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1E3B997D8()
{
  v0 = objc_opt_self();
  result = [v0 isTV];
  v2 = 20.0;
  if ((result & 1) == 0)
  {
    result = [v0 isPhone];
    v2 = 18.0;
    if (result)
    {
      v2 = 15.0;
    }
  }

  qword_1ECF71490 = *&v2;
  return result;
}

void sub_1E3B99840()
{
  sub_1E3280A90(0, &qword_1ECF29388);
  v0 = *MEMORY[0x1E69DDCF8];
  v1 = sub_1E4206E74();

  if (qword_1ECF57EC0 != -1)
  {
    OUTLINED_FUNCTION_1_161();
  }

  v2 = [v1 fontWithSize_];

  qword_1ECF71498 = v2;
}

void sub_1E3B99908()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = [v0 preferredFontForTextStyle_];

  if (qword_1ECF57EC0 != -1)
  {
    OUTLINED_FUNCTION_1_161();
  }

  v3 = [v2 fontWithSize_];

  qword_1ECF714A0 = v3;
}

id sub_1E3B999BC()
{
  v1 = sub_1E3B99F44();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  sub_1E390E860(v3, v4, v1);

  v5 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___timeRangeLabel;
  v6 = v2[1];
  v7 = *v2 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  [*(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___timeRangeLabel) setHidden_];
  return [*(v0 + v5) sizeToFit];
}

uint64_t sub_1E3B99A78()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_1E3B99ACC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return sub_1E3B999BC();
}

id (*sub_1E3B99B30(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3B99B84;
}

id sub_1E3B99B84(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3B999BC();
  }

  return result;
}

id sub_1E3B99BB8()
{
  v1 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_musicText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id (*sub_1E3B99C30(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3B99C84;
}

id sub_1E3B99CAC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1();
  v7 = *a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v6 setAttributedText_];

  v8 = *a3;
  v9 = *(v3 + *a3);
  v10 = *(v3 + v7);
  v11 = v9;
  [v11 setHidden_];

  return [*(v3 + v8) sizeToFit];
}

id sub_1E3B99D68()
{
  v1 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_actorsText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3B99DE0(void *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = *a2;
  swift_beginAccess();
  v10 = *(v4 + v9);
  *(v4 + v9) = a1;
  v11 = a1;

  sub_1E3B99CAC(a3, a2, a4);
}

id (*sub_1E3B99E6C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3B99EC0;
}

id sub_1E3B99EE8(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3B99CAC(a3, a4, a5);
  }

  return result;
}

id sub_1E3B99F6C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_1E3B9C898(a2 & 1);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1E3B99FCC()
{
  v1 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setDistribution_];
    [v4 setAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3B9A0A4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask) = 0;
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [v1 capellaDebuggerEnabled];

  *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode) = v3 ^ 1;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_musicText;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v6 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_actorsText;
  OUTLINED_FUNCTION_19_72([objc_allocWithZone(MEMORY[0x1E696AD40]) init]);
  v44 = type metadata accessor for TimedMetadataDebuggerViewController();
  OUTLINED_FUNCTION_25();
  v9 = objc_msgSendSuper2(v7, v8, v0, v44);
  v10 = [v9 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  [v10 setUserInteractionEnabled_];

  v12 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode;
  if ((v9[OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode] & 1) == 0)
  {
    v13 = sub_1E3B99FCC();
    v14 = sub_1E3B99F44();
    OUTLINED_FUNCTION_14_104(v14);
  }

  v15 = sub_1E3B99FCC();
  v16 = sub_1E3B99F54();
  OUTLINED_FUNCTION_14_104(v16);

  if ((v9[v12] & 1) == 0)
  {
    v17 = *&v9[OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView];
    v18 = sub_1E3B99F60();
    OUTLINED_FUNCTION_14_104(v18);
  }

  v19 = [v9 view];
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v19;
  v21 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController____lazy_storage___stackView;
  [v19 addSubview_];

  v22 = objc_opt_self();
  v23 = 20.0;
  if (([v22 isTV] & 1) == 0)
  {
    if ([v22 isPhone])
    {
      v23 = 60.0;
    }

    else
    {
      v23 = 80.0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E42A73A0;
  v25 = [*&v9[v21] topAnchor];
  v26 = OUTLINED_FUNCTION_27_1();
  if (!v26)
  {
    goto LABEL_19;
  }

  v27 = v26;
  v28 = [v26 layoutMarginsGuide];

  v29 = [v28 topAnchor];
  v30 = [v6 constraintEqualToAnchor:v29 constant:v23];

  *(v24 + 32) = v30;
  v31 = [*&v9[v21] leadingAnchor];
  v32 = OUTLINED_FUNCTION_27_1();
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = [v32 layoutMarginsGuide];

  v35 = [v34 leadingAnchor];
  v36 = [v6 constraintEqualToAnchor:v35 constant:10.0];

  *(v24 + 40) = v36;
  v37 = [*&v9[v21] trailingAnchor];
  v38 = OUTLINED_FUNCTION_27_1();

  if (v38)
  {
    v39 = objc_opt_self();
    v40 = [v38 layoutMarginsGuide];

    v41 = [v40 trailingAnchor];
    v42 = [v6 constraintEqualToAnchor:v41 constant:-10.0];

    *(v24 + 48) = v42;
    sub_1E3280A90(0, &qword_1EE23B1A0);
    v43 = sub_1E42062A4();

    [v39 activateConstraints_];

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1E3B9A590()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask) = 0;
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 capellaDebuggerEnabled];

  *(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode) = v3 ^ 1;
  v4 = (v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timeRangeText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_musicText;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  OUTLINED_FUNCTION_19_72([objc_allocWithZone(MEMORY[0x1E696AD40]) init]);
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3B9A6D0()
{
  if (*&v0[OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask])
  {

    sub_1E42064D4();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimedMetadataDebuggerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3B9A818()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E4206434();

  v8 = sub_1E4206424();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  *(v1 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask) = sub_1E376FE58(0, 0, v5, &unk_1E42BF658, v9);
}

uint64_t sub_1E3B9A960()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v2 = sub_1E41FEC34();
  v0[6] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[7] = v3;
  v0[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C60);
  OUTLINED_FUNCTION_17_2(v4);
  v0[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D48);
  v0[10] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[11] = v6;
  v0[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D50);
  v0[13] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[14] = v8;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = sub_1E4206434();
  v0[18] = sub_1E4206424();
  v10 = sub_1E42063B4();
  v0[19] = v10;
  v0[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E3B9AB4C, v10, v9);
}

uint64_t sub_1E3B9AB4C()
{
  v1 = *sub_1E3287198();
  v2 = sub_1E37C085C();

  if (v2)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    sub_1E41FEEE4();

    (*(v6 + 32))(v3, v4, v5);
    sub_1E42064A4();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v0[21] = sub_1E4206424();
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v0[22] = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_6_114(v7);

    return MEMORY[0x1EEE6D9C8](v9);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v10();
  }
}

uint64_t sub_1E3B9ACEC()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E3B9AE28, v5, v4);
}

uint64_t sub_1E3B9AE28()
{
  v1 = v0[9];
  v2 = v0[6];
  OUTLINED_FUNCTION_52(v1, 1, v2);
  if (v3)
  {
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);

    OUTLINED_FUNCTION_54();

    return v10();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_1E3B9AFE8();
    }

    (*(v0[7] + 8))(v0[8], v0[6]);
    v0[21] = sub_1E4206424();
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v0[22] = v14;
    *v14 = v15;
    v16 = OUTLINED_FUNCTION_6_114();

    return MEMORY[0x1EEE6D9C8](v16);
  }
}

uint64_t sub_1E3B9AFE8()
{
  v1 = v0;
  OUTLINED_FUNCTION_106();
  v95 = sub_1E41FF284();
  OUTLINED_FUNCTION_0_10();
  v94 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v93 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D10);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  v103 = v90 - v8;
  v9 = sub_1E41FEBE4();
  OUTLINED_FUNCTION_0_10();
  v102 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v105 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34390);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v90 - v16;
  v18 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v101 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D00);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  v92 = v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v96 = v90 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v90 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v90 - v33;
  v99 = v0;
  sub_1E41FEBF4();
  v35 = sub_1E41FEAE4();
  OUTLINED_FUNCTION_52(v34, 1, v35);
  v98 = v35;
  if (v36)
  {
    sub_1E325F7FC(v34, &unk_1ECF32D00);
    v37 = 0;
  }

  else
  {
    v97 = v0;
    v38 = sub_1E41FEAC4();
    OUTLINED_FUNCTION_37_1();
    (*(v39 + 8))(v34, v35);
    v40 = *(v38 + 16);
    if (v40)
    {
      v91 = v31;
      v90[1] = v38;
      v41 = v38 + 32;
      v104 = (v101 + 32);
      v37 = MEMORY[0x1E69E7CC0];
      v100 = v23;
      do
      {
        sub_1E327F454(v41, v107);
        sub_1E3251BE8(v107, v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A0);
        v42 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v17, v42 ^ 1u, 1, v18);
        OUTLINED_FUNCTION_52(v17, 1, v18);
        if (v36)
        {
          sub_1E325F7FC(v17, &unk_1ECF34390);
        }

        else
        {
          v43 = *v104;
          (*v104)(v23, v17, v18);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = sub_1E3B9D0DC(0, *(v37 + 16) + 1, 1, v37, &qword_1ECF32D30, &unk_1E42B9A50, MEMORY[0x1E69D57B0], MEMORY[0x1E69D57B0]);
          }

          v46 = *(v37 + 16);
          v45 = *(v37 + 24);
          if (v46 >= v45 >> 1)
          {
            v50 = OUTLINED_FUNCTION_35(v45);
            v37 = sub_1E3B9D0DC(v50, v46 + 1, 1, v37, &qword_1ECF32D30, &unk_1E42B9A50, MEMORY[0x1E69D57B0], MEMORY[0x1E69D57B0]);
          }

          *(v37 + 16) = v46 + 1;
          OUTLINED_FUNCTION_81();
          v49 = v37 + v47 + *(v48 + 72) * v46;
          v23 = v100;
          v43(v49, v100, v18);
        }

        v41 += 40;
        --v40;
      }

      while (v40);

      v31 = v91;
    }

    else
    {

      v37 = MEMORY[0x1E69E7CC0];
    }

    v1 = v97;
    v35 = v98;
  }

  v51 = v103;
  sub_1E3B9BABC(v37);
  v53 = v52;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))(v53);
  sub_1E41FEC14();
  OUTLINED_FUNCTION_52(v31, 1, v35);
  if (v36)
  {
    sub_1E325F7FC(v31, &unk_1ECF32D00);
  }

  else
  {
    v54 = sub_1E41FEAC4();
    OUTLINED_FUNCTION_37_1();
    (*(v55 + 8))(v31, v35);
    v56 = *(v54 + 16);
    if (v56)
    {
      v97 = v1;
      v104 = v54;
      v57 = v54 + 32;
      v58 = (v102 + 32);
      v59 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1E327F454(v57, v107);
        sub_1E3251BE8(v107, v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A0);
        v60 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v51, v60 ^ 1u, 1, v9);
        OUTLINED_FUNCTION_52(v51, 1, v9);
        if (v36)
        {
          sub_1E325F7FC(v51, &unk_1ECF32D10);
        }

        else
        {
          v61 = *v58;
          (*v58)(v105, v51, v9);
          v62 = swift_isUniquelyReferenced_nonNull_native();
          if ((v62 & 1) == 0)
          {
            v59 = sub_1E3B9D0DC(0, *(v59 + 16) + 1, 1, v59, &unk_1ECF32D20, &unk_1E42B9A40, MEMORY[0x1E69D57B8], MEMORY[0x1E69D57B8]);
          }

          v64 = *(v59 + 16);
          v63 = *(v59 + 24);
          if (v64 >= v63 >> 1)
          {
            v67 = OUTLINED_FUNCTION_35(v63);
            v59 = sub_1E3B9D0DC(v67, v64 + 1, 1, v59, &unk_1ECF32D20, &unk_1E42B9A40, MEMORY[0x1E69D57B8], MEMORY[0x1E69D57B8]);
          }

          *(v59 + 16) = v64 + 1;
          OUTLINED_FUNCTION_81();
          v61(v59 + v65 + *(v66 + 72) * v64, v105, v9);
          v51 = v103;
        }

        v57 += 40;
        --v56;
      }

      while (v56);
    }
  }

  v68 = sub_1E3B9C304();

  OUTLINED_FUNCTION_4_136();
  (*(v69 + 232))(v68);
  OUTLINED_FUNCTION_4_136();
  v71 = (*(v70 + 224))();
  v72 = [v71 length];

  if (v72 < 1)
  {
    OUTLINED_FUNCTION_4_136();
    v77 = (*(v76 + 200))();
    v78 = [v77 length];

    v79 = v98;
    if (v78 < 1)
    {
      OUTLINED_FUNCTION_4_136();
      return (*(v85 + 184))(0, 0xE000000000000000);
    }

    v80 = v92;
    sub_1E41FEC14();
    OUTLINED_FUNCTION_52(v80, 1, v79);
    if (!v36)
    {
      v83 = v93;
      sub_1E41FEAD4();
      OUTLINED_FUNCTION_37_1();
      (*(v87 + 8))(v80, v79);
      goto LABEL_43;
    }

    v75 = v80;
  }

  else
  {
    v73 = v96;
    sub_1E41FEC14();
    v74 = v98;
    OUTLINED_FUNCTION_52(v73, 1, v98);
    if (!v36)
    {
      v83 = v93;
      sub_1E41FEAD4();
      OUTLINED_FUNCTION_37_1();
      (*(v84 + 8))(v73, v74);
LABEL_43:
      v81 = sub_1E3B9BA50();
      v82 = v88;
      (*(v94 + 8))(v83, v95);
      goto LABEL_44;
    }

    v75 = v73;
  }

  sub_1E325F7FC(v75, &unk_1ECF32D00);
  v81 = 0;
  v82 = 0xE000000000000000;
LABEL_44:
  OUTLINED_FUNCTION_4_136();
  return (*(v89 + 184))(v81, v82);
}

uint64_t sub_1E3B9BA50()
{
  sub_1E41FF274();
  sub_1E3B9CE4C(v0);
  v4 = v1;
  MEMORY[0x1E69109E0](2108704, 0xE300000000000000);
  sub_1E41FF264();
  sub_1E3B9CE4C(v2);
  MEMORY[0x1E69109E0]();

  return v4;
}

void sub_1E3B9BABC(uint64_t a1)
{
  v3 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v53 = MEMORY[0x1E69E7CC0];
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = *(v1 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_mode);
      v15 = *(v5 + 16);
      v13 = v5 + 16;
      v14 = v15;
      OUTLINED_FUNCTION_81();
      v17 = a1 + v16;
      v52 = *(v13 + 56);
      v47 = *MEMORY[0x1E69DB648];
      v50 = v3;
      v49 = v12;
      v48 = v15;
      do
      {
        v14(v9, v17, v3);
        if (v12)
        {
          sub_1E3B9BFC8();
        }

        else
        {
          v18 = sub_1E3B9BFC8();
          v19 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

          if (sub_1E41FEAF4())
          {
            v20 = 0xEC00000073657920;
          }

          else
          {
            v20 = 0xEB000000006F6E20;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
          inited = swift_initStackObject();
          OUTLINED_FUNCTION_18_66(inited);
          *(v22 + 32) = v47;
          v23 = qword_1ECF57FD8;
          v51 = v47;
          if (v23 != -1)
          {
            OUTLINED_FUNCTION_0_161();
            swift_once();
          }

          v24 = qword_1ECF714A0;
          v25 = sub_1E3280A90(0, &qword_1ECF29388);
          inited[4].n128_u64[0] = v25;
          inited[2].n128_u64[1] = v24;
          type metadata accessor for Key(0);
          OUTLINED_FUNCTION_2_128();
          sub_1E3B9794C(&qword_1EE23B100);
          v26 = v24;
          v27 = sub_1E4205CB4();
          v28 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v29 = sub_1E376403C(0x3A6465646461202CLL, v20, v27);
          [v19 appendAttributedString_];

          if (sub_1E41FEB04())
          {
            v30 = swift_initStackObject();
            OUTLINED_FUNCTION_18_66(v30);
            v31[8] = v25;
            v31[4] = v51;
            v31[5] = v26;
            v32 = v51;
            v33 = v26;
            v34 = OUTLINED_FUNCTION_33_42();
            v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v36 = sub_1E376403C(0x63696C707865202CLL, 0xEF736579203A7469, v34);
            [v19 appendAttributedString_];
          }

          v3 = v50;
          v12 = v49;
          v14 = v48;
        }

        v37 = (*(v13 - 8))(v9, v3);
        MEMORY[0x1E6910BF0](v37);
        v38 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
        {
          OUTLINED_FUNCTION_35(v38);
          sub_1E42062F4();
        }

        sub_1E4206324();
        v17 += v52;
        --v11;
      }

      while (v11);
      v10 = v53;
    }
  }

  v39 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v40 = sub_1E32AE9B0(v10);
  v41 = v40;
  v42 = 0;
  if (v40)
  {
    v43 = v40 - 1;
  }

  else
  {
    v43 = 0;
  }

  while (1)
  {
    if (v41 == v42)
    {

      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1E6911E60](v42, v10);
    }

    else
    {
      if (v42 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v44 = *(v10 + 8 * v42 + 32);
    }

    v45 = v44;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    [v39 appendAttributedString_];
    if (v41 < 0)
    {
      goto LABEL_34;
    }

    if (v43 != v42)
    {
      sub_1E3280A90(0, &qword_1EE23B1B0);
      v46 = sub_1E3763FC8();
      [v39 appendAttributedString_];
    }

    ++v42;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_1E3B9BFC8()
{
  sub_1E3280A90(0, &unk_1EE23AFE0);
  OUTLINED_FUNCTION_106();
  v0 = sub_1E3763FC8();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  sub_1E3280A90(0, &qword_1EE23AE00);
  result = sub_1E3B9CDDC(0x636973756DLL, 0xE500000000000000);
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() redColor];
    v5 = [v3 imageWithTintColor_];

    [v1 setImage_];
    v28 = [objc_opt_self() attributedStringWithAttachment_];
    [v0 appendAttributedString_];
    v6 = sub_1E41FEB24();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1819047278;
    }

    v29 = v1;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = sub_1E41FEB34();
    v12 = v11;
    v13 = sub_1E3280A90(0, &qword_1EE23B1B0);
    MEMORY[0x1E69109E0](v8, v9);

    v14 = sub_1E3763FC8();
    OUTLINED_FUNCTION_16_85(v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v16 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v17 = qword_1ECF57FD8;
    v18 = v16;
    if (v17 != -1)
    {
      OUTLINED_FUNCTION_0_161();
      swift_once();
    }

    if (!v12)
    {
      v12 = 0xE400000000000000;
      v10 = 1819047278;
    }

    v19 = qword_1ECF714A0;
    *(inited + 64) = sub_1E3280A90(0, &qword_1ECF29388);
    *(inited + 40) = v19;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_2_128();
    sub_1E3B9794C(v20);
    v21 = v19;
    v22 = OUTLINED_FUNCTION_33_42();
    v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v24 = v22;
    v25 = v23;
    v26 = sub_1E376403C(7954976, 0xE300000000000000, v24);
    OUTLINED_FUNCTION_16_85(v26);

    MEMORY[0x1E69109E0](v10, v12);

    v27 = sub_1E3763FC8();
    OUTLINED_FUNCTION_16_85(v27);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3B9C304()
{
  OUTLINED_FUNCTION_106();
  v1 = sub_1E41FEBE4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &selRef_advisoryDisabledTimeRanges;
  if (v0)
  {
    v56 = MEMORY[0x1E69E7CC0];
    if (*(v0 + 16))
    {
      v52 = *(v3 + 16);
      OUTLINED_FUNCTION_81();
      v11 = v0 + v10;
      v49 = *(v12 + 56);
      v50 = (v12 - 8);
      v48 = *MEMORY[0x1E69DB648];
      v51 = v1;
      v47 = v6;
      while (1)
      {
        v54 = v11;
        v55 = v9;
        v52(v6);
        sub_1E3280A90(0, &unk_1EE23AFE0);
        OUTLINED_FUNCTION_106();
        v13 = sub_1E3763FC8();
        v14 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
        sub_1E3280A90(0, &qword_1EE23AE00);
        result = sub_1E3B9CDDC(0x662E6E6F73726570, 0xEB000000006C6C69);
        if (!result)
        {
          goto LABEL_28;
        }

        v16 = result;
        v17 = [objc_opt_self() whiteColor];
        v18 = [v16 imageWithTintColor_];

        [v14 setImage_];
        v53 = [objc_opt_self() attributedStringWithAttachment_];
        [v13 v8[116]];
        v19 = sub_1E41FEBB4();
        if (v20)
        {
          v21 = v19;
        }

        else
        {
          v21 = 1819047278;
        }

        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0xE400000000000000;
        }

        v23 = sub_1E41FEBD4();
        v25 = v24;
        sub_1E3280A90(0, &qword_1EE23B1B0);
        MEMORY[0x1E69109E0](v21, v22);

        v26 = sub_1E3763FC8();
        [v13 v8[116]];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_18_66(inited);
        *(v28 + 32) = v48;
        v29 = qword_1ECF57FD8;
        v30 = v48;
        v31 = v8;
        if (v29 != -1)
        {
          OUTLINED_FUNCTION_0_161();
          swift_once();
        }

        if (!v25)
        {
          v25 = 0xE400000000000000;
          v23 = 1819047278;
        }

        v32 = qword_1ECF714A0;
        inited[4].n128_u64[0] = sub_1E3280A90(0, &qword_1ECF29388);
        inited[2].n128_u64[1] = v32;
        type metadata accessor for Key(0);
        OUTLINED_FUNCTION_2_128();
        sub_1E3B9794C(&qword_1EE23B100);
        v33 = v32;
        v34 = sub_1E4205CB4();
        v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v36 = sub_1E376403C(7561504, 0xE300000000000000, v34);
        OUTLINED_FUNCTION_32_50(v36);

        MEMORY[0x1E69109E0](v23, v25);

        v37 = sub_1E3763FC8();
        OUTLINED_FUNCTION_32_50(v37);

        v6 = v47;
        v38 = (*v50)(v47, v51);
        MEMORY[0x1E6910BF0](v38);
        v39 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v8 = v31;
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39 >> 1)
        {
          OUTLINED_FUNCTION_35(v39);
          sub_1E42062F4();
        }

        sub_1E4206324();
        v11 = v54 + v49;
        v9 = v55 - 1;
        if (v55 == 1)
        {
          v7 = v56;
          break;
        }
      }
    }
  }

  v40 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v41 = sub_1E32AE9B0(v7);
  if (!v41)
  {
LABEL_26:

    return v40;
  }

  v42 = v41;
  result = sub_1E3280A90(0, &qword_1EE23B1B0);
  if (v42 >= 1)
  {
    v43 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1E6911E60](v43, v7);
      }

      else
      {
        v44 = *(v7 + 8 * v43 + 32);
      }

      v45 = v44;
      ++v43;
      [v40 v8[116]];
      v46 = sub_1E3763FC8();
      [v40 v8[116]];
    }

    while (v42 != v43);
    goto LABEL_26;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

id sub_1E3B9C898(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (a1)
  {
    if (_MergedGlobals_75 != -1)
    {
      OUTLINED_FUNCTION_7_129();
    }

    v3 = &qword_1ECF71498;
  }

  else
  {
    if (qword_1ECF57FD8 != -1)
    {
      OUTLINED_FUNCTION_0_161();
      swift_once();
    }

    v3 = &qword_1ECF714A0;
  }

  [v2 setFont_];
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  [v2 setTextColor_];

  [v2 setNumberOfLines_];
  v6 = v2;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = OUTLINED_FUNCTION_34_41();
  v8 = [v4 blackColor];
  v9 = [v8 CGColor];

  [v7 setShadowColor_];
  v10 = OUTLINED_FUNCTION_34_41();
  [v10 setShadowOffset_];

  v11 = OUTLINED_FUNCTION_34_41();
  [v11 setShadowRadius_];

  v12 = OUTLINED_FUNCTION_34_41();
  LODWORD(v13) = 1060320051;
  [v12 setShadowOpacity_];

  return v6;
}

uint64_t sub_1E3B9CB4C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI35TimedMetadataDebuggerViewController_timedEntityMappingsTask))
  {

    sub_1E42064D4();
  }

  OUTLINED_FUNCTION_6_41();
  (*(v1 + 184))(0, 0xE000000000000000);
  [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 208))();
  [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  OUTLINED_FUNCTION_6_41();
  v4 = *(v3 + 232);

  return v4();
}

unint64_t sub_1E3B9CC64()
{
  result = qword_1ECF34308;
  if (!qword_1ECF34308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34308);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimedMetadataDebuggerViewController.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1E3B9CDDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1E4205ED4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

void sub_1E3B9CE4C(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v1 = round((a1 - a1) * 1000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 < 9.22337204e18)
  {
    v2 = a1;
    v3 = v1;
    v4 = sub_1E4207944();
    v6 = v4;
    v7 = v5;
    if ((v3 - 10) > 0x59)
    {
      if ((v3 - 10) < 0xFFFFFFFFFFFFFFF7)
      {
        if (!v3)
        {

          v7 = 0xE300000000000000;
          v6 = 3158064;
        }

        goto LABEL_14;
      }

      v8 = 12336;
      v9 = 0xE200000000000000;
    }

    else
    {
      v8 = 48;
      v9 = 0xE100000000000000;
    }

    v12 = v8;
    v13 = v9;
    MEMORY[0x1E69109E0](v4, v5);

    v6 = v12;
    v7 = v13;
LABEL_14:
    sub_1E3B9D050(v2 / 3600);
    MEMORY[0x1E69109E0](58, 0xE100000000000000);
    v10 = sub_1E3B9D050(v2 % 3600 / 60);
    MEMORY[0x1E69109E0](v10);

    MEMORY[0x1E69109E0](58, 0xE100000000000000);
    v11 = sub_1E3B9D050(v2 % 60);
    MEMORY[0x1E69109E0](v11);

    MEMORY[0x1E69109E0](46, 0xE100000000000000);
    MEMORY[0x1E69109E0](v6, v7);

    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1E3B9D050(uint64_t a1)
{
  if (a1 > 9)
  {
    return sub_1E4207944();
  }

  v1 = sub_1E4207944();
  MEMORY[0x1E69109E0](v1);

  return 48;
}

size_t sub_1E3B9D0DC(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1E3B9D1E8(v14, v13, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_81();
  if (v11)
  {
    sub_1E3B9D2DC(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_1E3B9D1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = a5(0);
  OUTLINED_FUNCTION_8_0(v8);
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

void sub_1E3B9D2DC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_37_1(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_29_50();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_29_50();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1E3B9D3A0()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E3B9A960();
}

id OUTLINED_FUNCTION_32_50(uint64_t a1)
{

  return [v2 (v1 + 411)];
}

uint64_t sub_1E3B9D484()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();

  v2 = objc_opt_self();
  v3 = [v2 isTV];
  v4 = [v2 isMac];
  v5 = *sub_1E37BD068();
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 17;
  }

  v7 = 4;
  if (v4)
  {
    v7 = 5;
  }

  v8 = v3 == 0;
  if (v3)
  {
    v9 = 15;
  }

  else
  {
    v9 = v6;
  }

  if (v3)
  {
    v10 = 9;
  }

  else
  {
    v10 = v7;
  }

  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 5;
  }

  (*(v5 + 1696))(v9);

  OUTLINED_FUNCTION_0_36();
  v13 = *(v12 + 1792);

  v13(v11);

  v14 = sub_1E37BD068();
  v15 = *sub_1E3E5FD88();
  v16 = *(*v14 + 680);
  v17 = v15;
  v16(v15);

  OUTLINED_FUNCTION_0_36();
  v19 = *(v18 + 968);

  v19(0);

  OUTLINED_FUNCTION_0_36();
  v21 = *(v20 + 2056);

  v21(v10, 0);

  OUTLINED_FUNCTION_0_36();
  v23 = *(v22 + 2080);

  v23(v10, 0);

  OUTLINED_FUNCTION_0_36();
  v25 = *(v24 + 2104);

  v25(v10, 0);

  sub_1E3C37CBC(v26, 9);

  return v1;
}

uint64_t type metadata accessor for ClipItem()
{
  result = qword_1ECF57FE0;
  if (!qword_1ECF57FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3B9D814@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClipItem();
  v10 = *(v1 + *(v3 + 40));
  if (!v10)
  {
    v138 = 0u;
    v139 = 0u;
    goto LABEL_13;
  }

  v136 = &type metadata for ClipItem.Keys;
  v137 = &off_1F5D73C50;
  v11 = OUTLINED_FUNCTION_5_128(v3, v10, v4, v5, v6, v7, v8, v9, v78, v86, v94, v102, v110, v118, v126, 7);
  sub_1E3F9F164(v11);
  __swift_destroy_boxed_opaque_existential_1(&v134);
  if (!*(&v139 + 1))
  {
LABEL_13:
    sub_1E329505C(&v138);
    goto LABEL_14;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_4_137(v12, v13, v14, v12, v15, v16, v17, v18, v79, v87, v95, v103, v111, v119, v127, v134);
  if ((swift_dynamicCast() & 1) != 0 && v134)
  {
    v136 = &type metadata for ClipItem.Keys;
    v137 = &off_1F5D73C50;
    LOBYTE(v134) = 8;

    v27 = OUTLINED_FUNCTION_5_128(v19, v20, v21, v22, v23, v24, v25, v26, v80, v88, v96, v104, v112, v120, v128, v134);
    sub_1E3F9F164(v27);

    v28 = __swift_destroy_boxed_opaque_existential_1(&v134);
    if (*(&v139 + 1))
    {
      OUTLINED_FUNCTION_4_137(v28, v29, v30, v31, v32, v33, v34, v35, v81, v89, v97, v105, v113, v121, v129, v134);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v37 = v134;
      v36 = v135;
      v136 = &type metadata for ClipItem.Keys;
      v137 = &off_1F5D73C50;
      LOBYTE(v134) = 9;

      v46 = OUTLINED_FUNCTION_5_128(v38, v39, v40, v41, v42, v43, v44, v45, v82, v90, v98, v106, v114, v122, v130, v134);
      sub_1E3F9F164(v46);

      v47 = __swift_destroy_boxed_opaque_existential_1(&v134);
      if (*(&v139 + 1))
      {
        OUTLINED_FUNCTION_4_137(v47, v48, v49, MEMORY[0x1E69E6530], v50, v51, v52, v53, v83, v91, v99, v107, v115, v123, v131, v134);
        v54 = swift_dynamicCast();
        if (v54)
        {
          v136 = &type metadata for ClipItem.Keys;
          v137 = &off_1F5D73C50;
          v62 = OUTLINED_FUNCTION_5_128(v54, v55, v56, v57, v58, v59, v60, v61, v84, v92, v100, v108, v116, v124, v132, 10);
          sub_1E3F9F164(v62);

          v63 = __swift_destroy_boxed_opaque_existential_1(&v134);
          if (*(&v139 + 1))
          {
            OUTLINED_FUNCTION_4_137(v63, v64, v65, MEMORY[0x1E69E6530], v66, v67, v68, v69, v85, v93, v101, v109, v117, v125, v133, v134);
            if (swift_dynamicCast())
            {
              v134 = v37;
              v135 = v36;
              *&v138 = 8222587;
              *(&v138 + 1) = 0xE300000000000000;
              sub_1E4207944();
              sub_1E32822E0();
              v70 = OUTLINED_FUNCTION_0_162();
              v72 = v71;

              v134 = v70;
              v135 = v72;
              *&v138 = 8218747;
              *(&v138 + 1) = 0xE300000000000000;
              sub_1E4207944();
              v73 = OUTLINED_FUNCTION_0_162();
              v75 = v74;

              v134 = v73;
              v135 = v75;
              *&v138 = 8218235;
              *(&v138 + 1) = 0xE300000000000000;
              OUTLINED_FUNCTION_0_162();

              sub_1E41FE404();
            }

            goto LABEL_22;
          }

          goto LABEL_20;
        }

LABEL_22:

        goto LABEL_16;
      }
    }

LABEL_20:

    goto LABEL_15;
  }

LABEL_14:
  v138 = 0u;
  v139 = 0u;
LABEL_15:
  sub_1E329505C(&v138);
LABEL_16:
  v77 = sub_1E41FE414();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v77);
}

uint64_t sub_1E3B9DB48@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_1E41FFCB4();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ClipItem();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = &type metadata for ClipItem.Keys;
  v39 = &off_1F5D73C50;
  v37[0] = 0;
  OUTLINED_FUNCTION_3_132();
  if (v40)
  {
    v7 = OUTLINED_FUNCTION_2_129();
    if (v7)
    {
      v8 = v35;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v36;
    }

    else
    {
      v9 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    OUTLINED_FUNCTION_6_115();
    v8 = 0;
    v9 = 0;
  }

  *v6 = v8;
  v6[1] = v9;
  v38 = &type metadata for ClipItem.Keys;
  v39 = &off_1F5D73C50;
  OUTLINED_FUNCTION_1_162(3);
  if (v40)
  {
    v10 = OUTLINED_FUNCTION_2_129();
    if (v10)
    {
      v11 = v35;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v36;
    }

    else
    {
      v12 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v13 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_6_115();
    v11 = 0;
    v13 = 0;
  }

  v31 = v13;
  v32 = v9;
  v14 = (v6 + v3[7]);
  *v14 = v11;
  v14[1] = v13;
  v38 = &type metadata for ClipItem.Keys;
  v39 = &off_1F5D73C50;
  OUTLINED_FUNCTION_1_162(4);
  if (v40)
  {
    v15 = OUTLINED_FUNCTION_2_129();
    if (v15)
    {
      v16 = v35;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v36;
    }

    else
    {
      v17 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    OUTLINED_FUNCTION_6_115();
    v16 = 0;
    v17 = 0;
  }

  v18 = (v6 + v3[8]);
  *v18 = v16;
  v18[1] = v17;
  v38 = &type metadata for ClipItem.Keys;
  v39 = &off_1F5D73C50;
  OUTLINED_FUNCTION_1_162(5);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_2_129())
    {
      v19 = v35;
    }

    else
    {
      v19 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    OUTLINED_FUNCTION_6_115();
    v19 = 0;
  }

  *(v6 + v3[9]) = v19;
  v38 = &type metadata for ClipItem.Keys;
  v39 = &off_1F5D73C50;
  OUTLINED_FUNCTION_1_162(1);
  if (v40)
  {
    if ((OUTLINED_FUNCTION_2_129() & 1) == 0)
    {
LABEL_44:

      __swift_destroy_boxed_opaque_existential_1(v37);
      goto LABEL_45;
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v38 = &type metadata for ClipItem.Keys;
    v39 = &off_1F5D73C50;
    OUTLINED_FUNCTION_1_162(2);
    if (v40)
    {
      if (OUTLINED_FUNCTION_2_129())
      {
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_1E41FE564();
        sub_1E41FE564();
        v38 = &type metadata for ClipItem.Keys;
        v39 = &off_1F5D73C50;
        v37[0] = 6;
        OUTLINED_FUNCTION_3_132();

        if (v40)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          if (OUTLINED_FUNCTION_2_129())
          {
            v20 = v35;
          }

          else
          {
            v20 = 0;
          }

          __swift_destroy_boxed_opaque_existential_1(v37);
        }

        else
        {
          OUTLINED_FUNCTION_6_115();
          v20 = 0;
        }

        *(v6 + v3[10]) = v20;
        v28 = v34;
        sub_1E3ACA40C(v6, v34);
        __swift_storeEnumTagSinglePayload(v28, 0, 1, v3);
        return sub_1E3ACA3B0(v6);
      }

      goto LABEL_44;
    }
  }

  OUTLINED_FUNCTION_6_115();
LABEL_45:
  v21 = sub_1E324FBDC();
  v22 = v30;
  v23 = v33;
  (*(v30 + 16))(v2, v21, v33);
  v24 = sub_1E41FFC94();
  v25 = sub_1E42067F4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1E323F000, v24, v25, "ClipItem:: missing cut in or cut out time", v26, 2u);
    MEMORY[0x1E69143B0](v26, -1, -1);
  }

  (*(v22 + 8))(v2, v23);

  return __swift_storeEnumTagSinglePayload(v34, 1, 1, v3);
}

uint64_t sub_1E3B9DFFC()
{
  v0 = sub_1E4207784();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3B9E048(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = 0x656D6954646E65;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0x6F676F4C6D616574;
      break;
    case 6:
      result = 0x736567616D69;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 7107189;
      break;
    case 9:
      result = 0x6874646977;
      break;
    case 10:
      result = 0x746867696568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3B9E16C(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v4 = 0x6D69547472617473;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v4 = 0x656D6954646E65;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v4 = 0x656C746974;
      break;
    case 4:
      v4 = 0x7470697263736564;
      v3 = 0xEB000000006E6F69;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v4 = 0x6F676F4C6D616574;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v4 = 0x736567616D69;
      break;
    case 7:
      v4 = 0xD000000000000014;
      v3 = 0x80000001E4274660;
      break;
    case 8:
      v3 = 0xE300000000000000;
      v4 = 7107189;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v4 = 0x6874646977;
      break;
    case 10:
      v3 = 0xE600000000000000;
      v4 = 0x746867696568;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v6 = 0x6D69547472617473;
      v5 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x656D6954646E65;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v6 = 0x656C746974;
      break;
    case 4:
      v6 = 0x7470697263736564;
      v5 = 0xEB000000006E6F69;
      break;
    case 5:
      v5 = 0xE800000000000000;
      v6 = 0x6F676F4C6D616574;
      break;
    case 6:
      v5 = 0xE600000000000000;
      v6 = 0x736567616D69;
      break;
    case 7:
      v6 = 0xD000000000000014;
      v5 = 0x80000001E4274660;
      break;
    case 8:
      v5 = 0xE300000000000000;
      v6 = 7107189;
      break;
    case 9:
      v5 = 0xE500000000000000;
      v6 = 0x6874646977;
      break;
    case 10:
      v5 = 0xE600000000000000;
      v6 = 0x746867696568;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B9E3F0(char a1)
{
  sub_1E4207B44();
  sub_1E3B9E048(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B9E45C()
{
  sub_1E4206014();
}

uint64_t sub_1E3B9E5B0(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3B9E048(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B9E610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B9DFFC();
  *a1 = result;
  return result;
}

unint64_t sub_1E3B9E640@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3B9E048(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B9E69C()
{
  sub_1E389B768();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_1E41FE5D4();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1E3B9E754();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1E3B9E754()
{
  if (!qword_1EE23B608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A770);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B608);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ClipItem.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3B9E898()
{
  result = qword_1ECF58070[0];
  if (!qword_1ECF58070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF58070);
  }

  return result;
}

uint64_t sub_1E3B9E8EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for VideosEnginePromiseResponse() + 28);
  v5 = OUTLINED_FUNCTION_3_5();
  result = v6(v5);
  *(a2 + v4) = a1;
  return result;
}

uint64_t sub_1E3B9E980()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3B9E9B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

BOOL sub_1E3B9E9FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

uint64_t sub_1E3B9EA34()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_20_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_3_5();
  sub_1E3B9EA74();
  return v0;
}

void sub_1E3B9EA74()
{
  OUTLINED_FUNCTION_5_3();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v4 = [v2 jsContext];
  v5 = [v4 virtualMachine];

  if (v5)
  {
    [v5 addManagedReference:v3 withOwner:v0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B9EB78()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_20_4();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_3_5();
  sub_1E3B9EBB8();
  return v0;
}

void sub_1E3B9EBB8()
{
  OUTLINED_FUNCTION_5_3();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v4 = [v2 jsContext];
  v5 = [v4 virtualMachine];

  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [v5 addManagedReference:Strong withOwner:v0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3B9ECCC()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  v11 = *(v1 + 56);
  v12 = sub_1E324FBDC();
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_121();
    v14(v13);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "VideosEnginePromiseOperation::trying to start a promise while it's waiting for fragments.", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v7, v2);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v10, v12, v2);
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_125_0();
      *v21 = 0;
      _os_log_impl(&dword_1E323F000, v19, v20, "VideosEnginePromiseOperation::starting promise", v21, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v10, v2);
    *(v1 + 56) = 0;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A8);
    OUTLINED_FUNCTION_119();
    v22 = sub_1E4200614();
    OUTLINED_FUNCTION_32_51();
    *(v1 + 48) = v22;

    result = (*(*v1 + 232))(v23);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1E3B9EF64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      OUTLINED_FUNCTION_4_0();
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      OUTLINED_FUNCTION_5_10();
      v7 = swift_allocObject();
      v7[2] = v6;
      v7[3] = sub_1E3BA1484;
      v7[4] = v4;
      OUTLINED_FUNCTION_0_155();
      v10[1] = 1107296256;
      OUTLINED_FUNCTION_7_6();
      v10[2] = v8;
      v10[3] = &block_descriptor_38_1;
      v9 = _Block_copy(v10);

      [Strong evaluate_];
      _Block_release(v9);

      return;
    }
  }

  else
  {
  }
}

void sub_1E3B9F0DC()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E324FBDC();
  v9 = OUTLINED_FUNCTION_121();
  v10(v9);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v11, v12, "VideosEnginePromiseOperation::cancelling promise", v13, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_32_51();
  *(v1 + 48) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    aBlock[4] = sub_1E3BA0D9C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_7_6();
    aBlock[2] = v17;
    aBlock[3] = &block_descriptor_71;
    v18 = _Block_copy(aBlock);

    [v15 evaluate_];
    _Block_release(v18);
  }
}

void sub_1E3B9F2CC()
{
  v0 = [objc_opt_self() currentThread];
  v1 = sub_1E39051FC();

  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong jsContext];

      if (v4)
      {
        v5 = sub_1E3B9E9FC();
        v6 = [v4 virtualMachine];
        v7 = v6;
        if (v5)
        {
          if (v6)
          {
            goto LABEL_11;
          }

          __break(1u);
        }

        else if (v6)
        {
LABEL_11:
          v15 = swift_unknownObjectWeakLoadStrong();
          v16 = swift_unknownObjectWeakLoadStrong();
          [v7 removeManagedReference:v15 withOwner:v16];

          swift_unknownObjectWeakAssign();
          return;
        }

        __break(1u);
        return;
      }
    }
  }

  v8 = sub_1E3B9E9FC();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v8;
    OUTLINED_FUNCTION_0_155();
    v17[1] = 1107296256;
    OUTLINED_FUNCTION_7_6();
    v17[2] = v13;
    v17[3] = &block_descriptor_28_0;
    v14 = _Block_copy(v17);

    [v10 evaluate_];
    _Block_release(v14);
  }
}

uint64_t sub_1E3B9F514()
{
  sub_1E3B9F2CC();
  MEMORY[0x1E69144A0](v0 + 16);
  MEMORY[0x1E69144A0](v0 + 24);
  MEMORY[0x1E69144A0](v0 + 32);
  MEMORY[0x1E69144A0](v0 + 40);

  return v0;
}

uint64_t sub_1E3B9F560()
{
  sub_1E3B9F514();
  v0 = OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3B9F58C(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_2_4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    *&v25 = 0xD000000000000040;
    *(&v25 + 1) = 0x80000001E4274780;
    v26 = 257;
    return a1(&v25);
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
LABEL_7:
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      Strong = v18;
      sub_1E394DD58();
      if (v19)
      {
        v14 = v19;
        sub_1E3B9F8A8(v19, 1);
        OUTLINED_FUNCTION_2_4();
        v20 = swift_allocObject();
        OUTLINED_FUNCTION_9_93(v20);
        v16 = sub_1E3BA1868;
        goto LABEL_10;
      }
    }

    v21 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v21, v4);
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_125_0();
      *v24 = 0;
      _os_log_impl(&dword_1E323F000, v22, v23, "VideosEnginePromiseOperation::looks like js promis operation is already invalidated.", v24, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    v25 = xmmword_1E42BF760;
    v26 = 262;
    a1(&v25);
  }

  sub_1E3D4BD78();
  if (!v13)
  {

    goto LABEL_7;
  }

  v14 = v13;
  sub_1E3B9F8A8(v13, 0);
  OUTLINED_FUNCTION_2_4();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_9_93(v15);
  v16 = sub_1E3BA20EC;
LABEL_10:
  sub_1E41EC148(v16, a1);

  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();
}

uint64_t sub_1E3B9F8A8(void *a1, char a2)
{
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A8);
  OUTLINED_FUNCTION_119();
  v6 = a1;
  return sub_1E4200614();
}

uint64_t sub_1E3B9F954(unint64_t a1, int a2, void (*a3)(uint64_t, uint64_t, void), uint64_t a4)
{
  v5 = v4;
  v120 = a2;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v123 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v115 - v20;
  v22 = sub_1E324FBDC();
  isa = v11[2].isa;
  v124 = v22;
  v125 = isa;
  (isa)(v21);

  v24 = sub_1E41FFC94();
  LOBYTE(v25) = sub_1E42067E4();

  if (!os_log_type_enabled(v24, v25))
  {

    v25 = v11[1].isa;
    v25(v21, v9);
    v24 = v11;
    goto LABEL_10;
  }

  v115 = v11;
  v117 = a3;
  v116 = a4;
  a4 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *&v129[0] = a3;
  *a4 = 136315138;
  result = sub_1E32AE9B0(a1);
  v122 = v5;
  if (!result)
  {
    v29 = v9;
    aBlock = 0u;
    v131 = 0u;
    goto LABEL_9;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_65;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  for (i = *(a1 + 32); ; i = MEMORY[0x1E6911E60](0, a1))
  {
    v28 = i;
    v29 = v9;
    *(&v131 + 1) = sub_1E3A246B8();
    *&aBlock = v28;
LABEL_9:
    v30 = sub_1E3294FA4(&aBlock);
    v32 = sub_1E3270FC8(v30, v31, v129);

    *(a4 + 4) = v32;
    _os_log_impl(&dword_1E323F000, v24, v25, "VideosEnginePromiseOperation::promise resolved, returned response: %s", a4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(a3);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v24 = v115;
    v25 = v115[1].isa;
    v9 = v29;
    v25(v21, v29);
    a4 = v116;
    a3 = v117;
    v5 = v122;
LABEL_10:
    if (!sub_1E32AE9B0(a1))
    {
      aBlock = 0u;
      v131 = 0u;
LABEL_29:
      sub_1E329505C(&aBlock);
      v53 = v126;
      v125(v126, v124, v9);
      v54 = sub_1E41FFC94();
      v55 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_6_33(v55))
      {
        v56 = OUTLINED_FUNCTION_125_0();
        *v56 = 0;
        _os_log_impl(&dword_1E323F000, v54, v53, "VideosEnginePromiseOperation::failed to unwrap JSValue response to an object.", v56, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v25(v126, v9);
      OUTLINED_FUNCTION_2_4();
      v57 = swift_allocObject();
      OUTLINED_FUNCTION_29_51(v57);
      v58 = MEMORY[0x1E696AF00];

      objc_opt_self();
      OUTLINED_FUNCTION_33_43();
      v59 = [v58 currentThread];
      v60 = [v59 isMainThread];

      if (v60)
      {
        a3(2, 0, 262);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v62 = Strong;
          OUTLINED_FUNCTION_2_4();
          v63 = swift_allocObject();
          *(v63 + 16) = sub_1E3BA2054;
          *(v63 + 24) = v54;
          v132 = sub_1E37D1918;
          v133 = v63;
          OUTLINED_FUNCTION_10_67();
          *(&aBlock + 1) = 1107296256;
          OUTLINED_FUNCTION_0_163();
          *&v131 = v64;
          *(&v131 + 1) = &block_descriptor_149_0;
          _Block_copy(&aBlock);
          OUTLINED_FUNCTION_28_43();

          v65 = OUTLINED_FUNCTION_121();
          [v65 v66];
          _Block_release(v60);
        }
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(a1 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_65:
    ;
  }

  v33 = MEMORY[0x1E6911E60](0, a1);
LABEL_14:
  v34 = v33;
  v35 = [v33 toObject];

  if (v35)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = 0u;
    v128 = 0u;
  }

  aBlock = v127;
  v131 = v128;
  if (!*(&v128 + 1))
  {
    goto LABEL_29;
  }

  sub_1E329504C(&aBlock, v129);
  sub_1E328438C(v129, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (OUTLINED_FUNCTION_26_55() && (, sub_1E328438C(v129, &aBlock), (OUTLINED_FUNCTION_26_55() & 1) != 0))
  {
    v122 = v5;
    v36 = v127;
    if (v120)
    {
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v38 = v37;
        if (sub_1E394DEA4())
        {
          sub_1E394DF44();
          if (v39)
          {
            v126 = v39;
            v40 = OUTLINED_FUNCTION_19_73(&v134);
            v41 = v9;
            v42(v40);
            v43 = sub_1E41FFC94();
            v44 = sub_1E42067E4();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = OUTLINED_FUNCTION_125_0();
              *v45 = 0;
              _os_log_impl(&dword_1E323F000, v43, v44, "VideosEnginePromiseOperation::more fragments to come, returning promise along with JSON object.", v45, 2u);
              OUTLINED_FUNCTION_6_0();
            }

            v117 = a3;

            v25(v118, v41);
            v46 = v126;
            v47 = sub_1E3B9F8A8(v126, 1);
            OUTLINED_FUNCTION_4_0();
            v48 = swift_allocObject();
            swift_weakInit();
            v49 = swift_allocObject();
            v49[2] = v48;
            v49[3] = v47;
            v49[4] = a3;
            v49[5] = a4;
            v49[6] = v36;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();

            v50 = objc_opt_self();

            v51 = [v50 currentThread];
            v52 = [v51 isMainThread];

            if (v52)
            {
              sub_1E3BA0C00(v48, v47, v117);
            }

            else
            {
              v110 = swift_unknownObjectWeakLoadStrong();
              if (v110)
              {
                v111 = v110;
                OUTLINED_FUNCTION_2_4();
                v112 = swift_allocObject();
                *(v112 + 16) = sub_1E3BA1C10;
                *(v112 + 24) = v49;
                v132 = sub_1E37D1918;
                v133 = v112;
                OUTLINED_FUNCTION_10_67();
                *(&aBlock + 1) = 1107296256;
                OUTLINED_FUNCTION_0_163();
                *&v131 = v113;
                *(&v131 + 1) = &block_descriptor_87_0;
                v114 = _Block_copy(&aBlock);

                [v111 evaluateDelegateBlockSync_];
                _Block_release(v114);
              }
            }

            swift_bridgeObjectRelease_n();
            __swift_destroy_boxed_opaque_existential_1(v129);
          }
        }
      }

      v96 = OUTLINED_FUNCTION_19_73(&v135);
      v97(v96);
      v98 = sub_1E41FFC94();
      v99 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_6_33(v99))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v100, v101, "VideosEnginePromiseOperation::this is the final response of multi part request, returning JSON object.");
        OUTLINED_FUNCTION_6_0();
      }

      v25(v119, v9);
      OUTLINED_FUNCTION_5_10();
      v102 = swift_allocObject();
      *(OUTLINED_FUNCTION_29_51(v102) + 32) = v36;
      v103 = MEMORY[0x1E696AF00];

      objc_opt_self();
      OUTLINED_FUNCTION_33_43();

      v104 = [v103 currentThread];
      v90 = [v104 isMainThread];

      if (v90)
      {
LABEL_53:

        a3(v105, 0, 0);

        goto LABEL_57;
      }

      v106 = swift_unknownObjectWeakLoadStrong();
      if (v106)
      {
        v92 = v106;
        OUTLINED_FUNCTION_2_4();
        v107 = swift_allocObject();
        *(v107 + 16) = sub_1E3BA1FE4;
        *(v107 + 24) = v98;
        v132 = sub_1E37D1918;
        v133 = v107;
        OUTLINED_FUNCTION_10_67();
        *(&aBlock + 1) = 1107296256;
        OUTLINED_FUNCTION_0_163();
        v95 = &block_descriptor_119_1;
LABEL_56:
        *&v131 = v94;
        *(&v131 + 1) = v95;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_28_43();

        v108 = OUTLINED_FUNCTION_121();
        [v108 v109];
        _Block_release(v90);
      }
    }

    else
    {
      v81 = OUTLINED_FUNCTION_19_73(&v136);
      v82(v81);
      v83 = sub_1E41FFC94();
      v84 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_6_33(v84))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v85, v86, "VideosEnginePromiseOperation::finished single part promise, returning response.");
        OUTLINED_FUNCTION_6_0();
      }

      v25(v121, v9);
      OUTLINED_FUNCTION_5_10();
      v87 = swift_allocObject();
      *(OUTLINED_FUNCTION_29_51(v87) + 32) = v36;
      v88 = MEMORY[0x1E696AF00];

      objc_opt_self();
      OUTLINED_FUNCTION_33_43();

      v89 = [v88 currentThread];
      v90 = [v89 isMainThread];

      if (v90)
      {
        goto LABEL_53;
      }

      v91 = swift_unknownObjectWeakLoadStrong();
      if (v91)
      {
        v92 = v91;
        OUTLINED_FUNCTION_2_4();
        v93 = swift_allocObject();
        *(v93 + 16) = sub_1E3BA20C0;
        *(v93 + 24) = v83;
        v132 = sub_1E37D1918;
        v133 = v93;
        OUTLINED_FUNCTION_10_67();
        *(&aBlock + 1) = 1107296256;
        OUTLINED_FUNCTION_0_163();
        v95 = &block_descriptor_129_0;
        goto LABEL_56;
      }
    }

LABEL_57:

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v125(v123, v124, v9);
    v67 = sub_1E41FFC94();
    v68 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v68))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_15_14(&dword_1E323F000, v69, v70, "VideosEnginePromiseOperation::the response is not a valid JSON dictionary.");
      OUTLINED_FUNCTION_6_0();
    }

    v25(v123, v9);
    OUTLINED_FUNCTION_2_4();
    v71 = swift_allocObject();
    OUTLINED_FUNCTION_29_51(v71);
    v72 = MEMORY[0x1E696AF00];

    objc_opt_self();
    OUTLINED_FUNCTION_33_43();
    v73 = [v72 currentThread];
    v74 = [v73 isMainThread];

    if (v74)
    {
      a3(1, 0, 262);
    }

    else
    {
      v75 = swift_unknownObjectWeakLoadStrong();
      if (v75)
      {
        v76 = v75;
        OUTLINED_FUNCTION_2_4();
        v77 = swift_allocObject();
        *(v77 + 16) = sub_1E3BA204C;
        *(v77 + 24) = v67;
        v132 = sub_1E37D1918;
        v133 = v77;
        OUTLINED_FUNCTION_10_67();
        *(&aBlock + 1) = 1107296256;
        OUTLINED_FUNCTION_0_163();
        *&v131 = v78;
        *(&v131 + 1) = &block_descriptor_139;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_28_43();

        v79 = OUTLINED_FUNCTION_121();
        [v79 v80];
        _Block_release(v74);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v129);
}

uint64_t sub_1E3BA071C(unint64_t a1, void (*a2)(uint64_t, uint64_t, void))
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v10, v3);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v11, v12, "VideosEnginePromiseOperation::promise was rejected.", v13, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  v14 = sub_1E32AE9B0(a1);
  v15 = 0;
  v16 = a1 & 0xC000000000000001;
  v17 = MEMORY[0x1E69E7CC0];
  while (v14 != v15)
  {
    if (v16)
    {
      v18 = MEMORY[0x1E6911E60](v15, a1);
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v18 = *(a1 + 8 * v15 + 32);
    }

    v19 = v18;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      sub_1E329505C(&v41);
      goto LABEL_38;
    }

    v20 = [v18 description];
    v21 = sub_1E4205F14();
    v23 = v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1E3740F88(0, *(v17 + 2) + 1, 1, v17);
    }

    v25 = *(v17 + 2);
    v24 = *(v17 + 3);
    if (v25 >= v24 >> 1)
    {
      v17 = sub_1E3740F88((v24 > 1), v25 + 1, 1, v17);
    }

    *(v17 + 2) = v25 + 1;
    v26 = &v17[16 * v25];
    *(v26 + 4) = v21;
    *(v26 + 5) = v23;
    ++v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E3924274();
  v27 = sub_1E4205DF4();
  v29 = v28;

  *&v41 = 2118474;
  *(&v41 + 1) = 0xE300000000000000;
  MEMORY[0x1E69109E0](v27, v29);

  v31 = 0xE300000000000000;
  v32 = 2118474;
  if (!v14)
  {
    v41 = 0u;
    v42 = 0u;
    goto LABEL_32;
  }

  if (v16)
  {
    v33 = MEMORY[0x1E6911E60](0, a1);
LABEL_19:
    v34 = v33;
    v35 = [v33 toObject];

    if (v35)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41 = v39;
    v42 = v40;
    if (*(&v40 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((OUTLINED_FUNCTION_14_105() & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_1E3277E60(0x646F43726F727265, 0xE900000000000065, v39, &v41);
      if (*(&v42 + 1))
      {
        if (OUTLINED_FUNCTION_14_105())
        {
          sub_1E4207784();

          sub_1E3277E60(0x73654D726F727265, 0xEC00000065676173, v39, &v41);

          if (!*(&v42 + 1))
          {
            goto LABEL_37;
          }

          if (OUTLINED_FUNCTION_14_105())
          {
            v31 = *(&v39 + 1);
            v32 = v39;
            v36 = a2;
          }

          else
          {
LABEL_38:
            v36 = a2;
            v31 = 0xE700000000000000;
            v32 = 0x6E776F6E6B6E75;
          }

          v37 = 4;
LABEL_34:
          v36(v32, v31, v37 | 0x100u);
          return sub_1E37B5ACC(v32, v31, v37);
        }

LABEL_33:
        v37 = 1;
        v36 = a2;
        goto LABEL_34;
      }
    }

LABEL_32:
    sub_1E329505C(&v41);
    goto LABEL_33;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(a1 + 32);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3BA0C00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A8);
  OUTLINED_FUNCTION_119();

  v7 = sub_1E4200614();

  a3(v8, v7, 0);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 56) = 1;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v10 = swift_weakLoadStrong();

  if (v10)
  {
    swift_beginAccess();
    *(v10 + 48) = v7;
  }
}

uint64_t sub_1E3BA0D9C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_17_75();
    if (v0)
    {
      sub_1E3D4BED8();
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3B9F2CC();
  }

  return result;
}

uint64_t sub_1E3BA0E38()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E3781F38();
    sub_1E42005F4();
    result = sub_1E4207104();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3BA0EE0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E3BA1024(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

id sub_1E3BA1224(void *a1)
{
  v3 = v1[24];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_17_75();
  }

  else
  {
    v1 = 0;
  }

  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_25();
  if (v3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectWeakLoadStrong();
      OUTLINED_FUNCTION_17_75();
    }

    else
    {
      v1 = 0;
    }

    swift_unknownObjectWeakInit();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_22;
    }

    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      result = [a1 virtualMachine];
      if (result)
      {
        v9 = result;
        [result removeManagedReference:v7 withOwner:v5];

        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v10 = swift_weakLoadStrong();

        MEMORY[0x1E69144A0](v16);
        result = MEMORY[0x1E69144A0](v17);
        if (v10)
        {
          goto LABEL_20;
        }

        return result;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_21:

LABEL_22:
    MEMORY[0x1E69144A0](v16);
    return MEMORY[0x1E69144A0](v17);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_17_75();
  }

  else
  {
    v1 = 0;
  }

  swift_unknownObjectWeakInit();

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    goto LABEL_22;
  }

  v5 = v11;
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  result = [a1 virtualMachine];
  if (!result)
  {
    goto LABEL_25;
  }

  v14 = result;
  [result removeManagedReference:v13 withOwner:v5];

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v15 = swift_weakLoadStrong();

  MEMORY[0x1E69144A0](v16);
  result = MEMORY[0x1E69144A0](v17);
  if (v15)
  {
LABEL_20:
    swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_1E3BA1488()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A8);
    OUTLINED_FUNCTION_119();
    sub_1E4200614();
    OUTLINED_FUNCTION_4_0();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    OUTLINED_FUNCTION_5_10();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v2;

    sub_1E41EC148(sub_1E3BA15D0, v5);

    OUTLINED_FUNCTION_31_43();
    sub_1E42004C4();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3BA15D0(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v9 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA17A4(v9, v10, v11, v12);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_25_59(v13);
    v14 = objc_opt_self();

    v15 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA17A4(v15, v16, v17, v18);
    v19 = [v14 currentThread];
    v20 = [v19 isMainThread];

    if (v20)
    {
      v3(v4, v5, v6 | (v7 << 8));
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        OUTLINED_FUNCTION_2_4();
        v23 = swift_allocObject();
        *(v23 + 16) = sub_1E3BA20BC;
        *(v23 + 24) = v2;
        v34 = sub_1E379E500;
        v35 = v23;
        OUTLINED_FUNCTION_8_96();
        v31 = 1107296256;
        OUTLINED_FUNCTION_0_163();
        v32 = v24;
        v33 = &block_descriptor_51_1;
        v25 = _Block_copy(aBlock);

        [v22 evaluateDelegateBlockSync_];
        _Block_release(v25);
      }
    }

    v26 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA1804(v26, v27, v28, v29);
  }

  return result;
}

uint64_t sub_1E3BA17A4(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    return sub_1E3781F8C(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_1E3BA1804(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    return sub_1E37B5ACC(a1, a2, a3);
  }

  else
  {
  }
}

void sub_1E3BA18B0(void (*a1)(void *), uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v5;
    *(v10 + 32) = sub_1E3BA20B8;
    *(v10 + 40) = v7;
    OUTLINED_FUNCTION_5_10();
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = sub_1E3BA20B8;
    v11[4] = v7;
    swift_retain_n();
    swift_retain_n();

    v22 = sub_1E4205ED4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E4299720;
    v13 = v6;
    v14 = [v6 context];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1E3A246B8();
      v17 = sub_1E3A242D8(v15, sub_1E3BA1B34, v10);

      *(v12 + 56) = v16;
      *(v12 + 32) = v17;
      v18 = [v13 context];
      if (v18)
      {
        v19 = v18;

        v20 = sub_1E3A242D8(v19, sub_1E3BA1BAC, v11);

        *(v12 + 88) = v16;
        *(v12 + 64) = v20;
        v21 = sub_1E3A49FB0(v22, v12, v13);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v23[0] = 0xD000000000000069;
    v23[1] = 0x80000001E42747D0;
    v24 = 257;
    a1(v23);
  }
}

id sub_1E3BA1B34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1E3B9F954(a3, *(v3 + 24), *(v3 + 32), *(v3 + 40));
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1E3BA1BAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1E3BA071C(a3, *(v3 + 24));
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3BA1C20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    OUTLINED_FUNCTION_5_10();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = sub_1E3BA20B8;
    v6[4] = v4;

    sub_1E41EC148(sub_1E3BA1D80, v6);

    OUTLINED_FUNCTION_31_43();
    sub_1E42004C4();
    swift_endAccess();
  }

  else
  {
  }
}

uint64_t sub_1E3BA1D40(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 0x1FF;
  return v4(v6);
}

uint64_t sub_1E3BA1D80(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v9 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA17A4(v9, v10, v11, v12);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_25_59(v13);
    v14 = objc_opt_self();

    v15 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA17A4(v15, v16, v17, v18);
    v19 = [v14 currentThread];
    v20 = [v19 isMainThread];

    if (v20)
    {
      v3(v4, v5, v6 | (v7 << 8));
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        OUTLINED_FUNCTION_2_4();
        v23 = swift_allocObject();
        *(v23 + 16) = sub_1E3BA1F9C;
        *(v23 + 24) = v2;
        v34 = sub_1E37D1918;
        v35 = v23;
        OUTLINED_FUNCTION_8_96();
        v31 = 1107296256;
        OUTLINED_FUNCTION_0_163();
        v32 = v24;
        v33 = &block_descriptor_109_1;
        v25 = _Block_copy(aBlock);

        [v22 evaluateDelegateBlockSync_];
        _Block_release(v25);
      }
    }

    v26 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA1804(v26, v27, v28, v29);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  sub_1E3BA1804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49));

  return swift_deallocObject();
}

uint64_t sub_1E3BA1FE8()
{
  v1 = *(v0 + 16);

  v1(v2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_32_51()
{

  return swift_beginAccess();
}

void sub_1E3BA2110(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v101 = a2;
  v106 = *MEMORY[0x1E69E9840];
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v99 = v8;
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = OUTLINED_FUNCTION_7_130();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v94 - v20;
  sub_1E328438C(a3, &v104);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v36 = OUTLINED_FUNCTION_41_3();
    *(v36 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    v38 = OUTLINED_FUNCTION_0_164(inited, xmmword_1E4299720);
    v38[2].n128_u64[0] = v39;
    v38[2].n128_u64[1] = v40;
    v41 = OUTLINED_FUNCTION_1_163(v38, MEMORY[0x1E69E6370]);
    OUTLINED_FUNCTION_2_130(v41, MEMORY[0x1E69E6158], v42);
    v43 = sub_1E4205CB4();
    *(v36 + 56) = v21;
    *(v36 + 32) = v43;

    return;
  }

  v97 = v21;
  v98 = a4;
  v22 = [objc_opt_self() defaultManager];
  v23 = [v22 URLsForDirectory:9 inDomains:1];
  v24 = sub_1E42062B4();
  v102 = v12;
  v25 = v24;

  sub_1E39D0EE8(v25, v4);
  v26 = v102;

  if (__swift_getEnumTagSinglePayload(v4, 1, v26) == 1)
  {

    sub_1E3ABE43C(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v27 = OUTLINED_FUNCTION_41_3();
    *(v27 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v28 = swift_initStackObject();
    v29 = OUTLINED_FUNCTION_0_164(v28, xmmword_1E4299720);
    v30 = MEMORY[0x1E69E6370];
    v29[2].n128_u64[0] = v31;
    v29[2].n128_u64[1] = v32;
    v29[3].n128_u8[0] = 0;
    v29[4].n128_u64[1] = v30;
    v29[5].n128_u64[0] = 0x726F727265;
    v29[7].n128_u64[1] = MEMORY[0x1E69E6158];
    v29[5].n128_u64[1] = 0xE500000000000000;
    v29[6].n128_u64[0] = 0xD000000000000021;
    v29[6].n128_u64[1] = 0x80000001E4274870;
    v33 = sub_1E4205CB4();
    v34 = v98;
    *(v27 + 56) = v97;
    *(v27 + 32) = v33;
    v35 = sub_1E394E11C(v27, v34);

    return;
  }

  v44 = v14;
  (*(v14 + 32))(v103, v4, v26);
  sub_1E41FE394();
  v45 = objc_opt_self();
  v46 = sub_1E4205C44();
  v104 = 0;
  v94 = v45;
  v47 = [v45 dataWithPropertyList:v46 format:100 options:0 error:&v104];

  v48 = v104;
  v95 = v22;
  v96 = v18;
  if (v47)
  {
    v49 = sub_1E41FE464();
    v51 = v50;

    sub_1E41FE474();
    v101 = v51;

    v66 = sub_1E324FBDC();
    v68 = v99;
    v67 = v100;
    (*(v99 + 16))(v10, v66, v100);
    v69 = sub_1E41FFC94();
    v70 = sub_1E42067D4();
    if (os_log_type_enabled(v69, v70))
    {
      v72 = OUTLINED_FUNCTION_125_0();
      *v72 = 0;
      _os_log_impl(&dword_1E323F000, v69, v70, "NativeStorage: store plist successful", v72, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v68 + 8))(v10, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    *(OUTLINED_FUNCTION_41_3() + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
    sub_1E4205CB4();
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343B0);
    v74 = OUTLINED_FUNCTION_4_138(v73);

    sub_1E38DCCB0(v49, v101);
    goto LABEL_17;
  }

  v52 = v48;
  v53 = sub_1E41FE274();

  v101 = v53;
  swift_willThrow();
  v54 = sub_1E41FE364();
  v104 = 0;
  v55 = [v22 removeItemAtURL:v54 error:&v104];

  v56 = v97;
  if (!v55)
  {
    v64 = v104;

    v65 = sub_1E41FE274();

LABEL_15:
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v76 = OUTLINED_FUNCTION_41_3();
    *(v76 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v77 = swift_initStackObject();
    v78 = OUTLINED_FUNCTION_0_164(v77, xmmword_1E4299720);
    v78[2].n128_u64[0] = v79;
    v78[2].n128_u64[1] = v80;
    v81 = OUTLINED_FUNCTION_1_163(v78, MEMORY[0x1E69E6370]);
    *(v81 + 88) = v82;
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_1E42074B4();

    v104 = 0xD000000000000023;
    v105 = 0x80000001E42748A0;
    swift_getErrorValue();
    v83 = sub_1E4207AB4();
    MEMORY[0x1E69109E0](v83);

    v84 = v104;
    v85 = v105;
    v77[7].n128_u64[1] = MEMORY[0x1E69E6158];
    v77[6].n128_u64[0] = v84;
    v77[6].n128_u64[1] = v85;
    v86 = sub_1E4205CB4();
    *(v76 + 56) = v56;
    *(v76 + 32) = v86;
    v87 = sub_1E394E11C(v76, v98);

    v93 = v65;
    goto LABEL_16;
  }

  v57 = v104;
  v58 = sub_1E4205C44();

  v104 = 0;
  v59 = [v94 dataWithPropertyList:v58 format:100 options:0 error:&v104];

  v60 = v104;
  if (!v59)
  {
    v75 = v60;
    v65 = sub_1E41FE274();

    goto LABEL_15;
  }

  v61 = sub_1E41FE464();
  v63 = v62;

  sub_1E41FE474();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v90 = OUTLINED_FUNCTION_41_3();
  *(v90 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
  v91 = sub_1E4205CB4();
  *(v90 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343B0);
  *(v90 + 32) = v91;
  v92 = sub_1E394E11C(v90, v98);

  sub_1E38DCCB0(v61, v63);
  v93 = v101;
LABEL_16:

LABEL_17:
  v88 = *(v44 + 8);
  v89 = v102;
  v88(v96, v102);
  v88(v103, v89);
}

void sub_1E3BA2B8C(unint64_t a1, uint64_t a2, void *a3)
{
  v105 = a3;
  v101 = a1;
  v102 = a2;
  v107[36] = *MEMORY[0x1E69E9840];
  v103 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v96 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = OUTLINED_FUNCTION_7_130();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v96 - v23;
  v104 = [objc_opt_self() defaultManager];
  v25 = [v104 URLsForDirectory:9 inDomains:1];
  v26 = sub_1E42062B4();

  sub_1E39D0EE8(v26, v3);

  if (__swift_getEnumTagSinglePayload(v3, 1, v15) == 1)
  {
    sub_1E3ABE43C(v3);
    v27 = sub_1E324FBDC();
    v28 = v5;
    v29 = v103;
    (*(v5 + 16))(v9, v27, v103);
    v30 = sub_1E41FFC94();
    v31 = sub_1E42067F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_125_0();
      *v32 = 0;
      _os_log_impl(&dword_1E323F000, v30, v31, "NativeStorage: Error occurred while reading Unable to access document directory:", v32, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v28 + 8))(v9, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    *(OUTLINED_FUNCTION_41_3() + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    v34 = OUTLINED_FUNCTION_0_164(inited, xmmword_1E4299720);
    v34[2].n128_u64[0] = v35;
    v34[2].n128_u64[1] = v36;
    v37 = OUTLINED_FUNCTION_1_163(v34, MEMORY[0x1E69E6370]);
    OUTLINED_FUNCTION_2_130(v37, MEMORY[0x1E69E6158], v38);
    sub_1E4205CB4();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    v40 = OUTLINED_FUNCTION_4_138(v39);
    v41 = sub_1E394E11C(v40, v105);
  }

  else
  {
    v98 = v5;
    v42 = v103;
    (*(v17 + 32))(v24, v3, v15);
    sub_1E41FE394();
    v43 = sub_1E41FE424();
    v44 = v17;
    v45 = v21;
    v46 = v24;
    v102 = v45;
    v59 = v43;
    v61 = v60;
    v62 = objc_opt_self();
    v63 = sub_1E41FE454();
    v107[0] = 0;
    v64 = [v62 propertyListWithData:v63 options:2 format:0 error:v107];

    if (v64)
    {
      v97 = v59;
      v101 = v61;
      v65 = v107[0];
      sub_1E4207264();
      swift_unknownObjectRelease();
      v66 = sub_1E3BA3590();
      if (swift_dynamicCast())
      {
        v100 = v15;
        v67 = v46;
        v68 = v106;
        v69 = sub_1E324FBDC();
        (*(v98 + 16))(v99, v69, v42);
        v70 = sub_1E41FFC94();
        v71 = sub_1E42067D4();
        v72 = os_log_type_enabled(v70, v71);
        v73 = v102;
        if (v72)
        {
          v74 = OUTLINED_FUNCTION_125_0();
          *v74 = 0;
          _os_log_impl(&dword_1E323F000, v70, v71, "NativeStorage: file read succeeded", v74, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v98 + 8))(v99, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1E4299720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
        v76 = sub_1E4205CB4();
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343B0);
        *(v75 + 32) = v76;
        *(v75 + 88) = v66;
        *(v75 + 56) = v77;
        *(v75 + 64) = v68;
        v78 = v68;
        v79 = sub_1E394E11C(v75, v105);
        sub_1E38DCCB0(v97, v101);

        v46 = v67;
        v15 = v100;
      }

      else
      {
        v82 = sub_1E324FBDC();
        (*(v98 + 16))(v100, v82, v42);
        v83 = sub_1E41FFC94();
        v84 = sub_1E42067F4();
        v85 = os_log_type_enabled(v83, v84);
        v73 = v102;
        if (v85)
        {
          v86 = OUTLINED_FUNCTION_125_0();
          *v86 = 0;
          _os_log_impl(&dword_1E323F000, v83, v84, "NativeStorage: Error occurred while reading dictionary to plist: Unable to access document directory", v86, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v98 + 8))(v100, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
        *(OUTLINED_FUNCTION_41_3() + 16) = xmmword_1E4297BE0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
        v87 = swift_initStackObject();
        v88 = OUTLINED_FUNCTION_0_164(v87, xmmword_1E4299720);
        v88[2].n128_u64[0] = v89;
        v88[2].n128_u64[1] = v90;
        v91 = OUTLINED_FUNCTION_1_163(v88, MEMORY[0x1E69E6370]);
        OUTLINED_FUNCTION_2_130(v91, MEMORY[0x1E69E6158], v92);
        sub_1E4205CB4();
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        v94 = OUTLINED_FUNCTION_4_138(v93);
        v95 = sub_1E394E11C(v94, v105);
        sub_1E38DCCB0(v97, v101);
      }
    }

    else
    {
      v80 = v107[0];
      v81 = sub_1E41FE274();

      swift_willThrow();
      sub_1E38DCCB0(v59, v61);
      v73 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
      v47 = OUTLINED_FUNCTION_41_3();
      *(v47 + 16) = xmmword_1E4297BE0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      v48 = swift_initStackObject();
      v49 = OUTLINED_FUNCTION_0_164(v48, xmmword_1E4299720);
      v49[2].n128_u64[0] = v50;
      v49[2].n128_u64[1] = v51;
      v52 = OUTLINED_FUNCTION_1_163(v49, MEMORY[0x1E69E6370]);
      *(v52 + 88) = v53;
      swift_getErrorValue();
      v54 = sub_1E4207AB4();
      v48[7].n128_u64[1] = MEMORY[0x1E69E6158];
      v48[6].n128_u64[0] = v54;
      v48[6].n128_u64[1] = v55;
      v56 = sub_1E4205CB4();
      *(v47 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      *(v47 + 32) = v56;
      v57 = sub_1E394E11C(v47, v105);
    }

    v58 = *(v44 + 8);
    v58(v73, v15);
    v58(v46, v15);
  }
}

unint64_t sub_1E3BA3590()
{
  result = qword_1EE23B398;
  if (!qword_1EE23B398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B398);
  }

  return result;
}

uint64_t sub_1E3BA35F8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BA363C(char a1)
{
  result = 0x6B63696C63;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_34_42(0x697461636F6CLL);
      break;
    case 2:
      result = 0x6973736572706D69;
      break;
    case 3:
      result = 1701273968;
      break;
    case 4:
      result = 0x676F6C616964;
      break;
    case 5:
      result = 0x65726F6E6769;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3BA36EC(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x7865646E69;
    }

    else
    {
      v3 = 0x4363696D616E7964;
    }

    if (v2 == 1)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xEE007365676E6168;
    }
  }

  else
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001E42749D0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x7865646E69;
    }

    else
    {
      v5 = 0x4363696D616E7964;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE007365676E6168;
    }
  }

  else
  {
    v5 = 0xD000000000000012;
    v6 = 0x80000001E42749D0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA37F8(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F74747562;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6F74747562;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6447476;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1919251317;
      break;
    case 3:
      v5 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6447476;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1919251317;
      break;
    case 3:
      v2 = 0x70756B636F6CLL;
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3910(unsigned __int8 a1, char a2)
{
  v2 = 6579297;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6579297;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x657461676976616ELL;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7463656C6573;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x747265736E69;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x657461676976616ELL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7463656C6573;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x747265736E69;
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3A48(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0x6973736572706D69;
  v4 = a1;
  v5 = 0x6973736572706D69;
  v6 = 0xEB00000000736E6FLL;
  switch(v4)
  {
    case 1:
      v5 = 0x6C65536B63696C63;
      v6 = 0xEB00000000746365;
      break;
    case 2:
      v5 = 0x616C506B63696C63;
      v6 = 0xEF6E6F7474754279;
      break;
    case 3:
      v5 = 0x6E6F4C6B63696C63;
      v6 = 0xEE00737365725067;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v5 = 0x686372616573;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6C65536B63696C63;
      v2 = 0xEB00000000746365;
      break;
    case 2:
      v3 = 0x616C506B63696C63;
      v2 = 0xEF6E6F7474754279;
      break;
    case 3:
      v3 = 0x6E6F4C6B63696C63;
      v2 = 0xEE00737365725067;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3C34(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000746E6574;
  v3 = 0x6E6F43746C756461;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x73736563656E6E75;
    }

    else
    {
      v5 = 0x6C6F686563616C70;
    }

    if (v4 == 1)
    {
      v6 = 0xEB00000000797261;
    }

    else
    {
      v6 = 0xEB00000000726564;
    }
  }

  else
  {
    v5 = 0x6E6F43746C756461;
    v6 = 0xEC000000746E6574;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x73736563656E6E75;
    }

    else
    {
      v3 = 0x6C6F686563616C70;
    }

    if (a2 == 1)
    {
      v2 = 0xEB00000000797261;
    }

    else
    {
      v2 = 0xEB00000000726564;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3D54(unsigned __int8 a1, char a2)
{
  v2 = 0x6B63696C63;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6B63696C63;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6E6F697461636F6CLL;
      break;
    case 2:
      v5 = 0x6973736572706D69;
      v3 = 0xEB00000000736E6FLL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1701273968;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x676F6C616964;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x65726F6E6769;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6E6F697461636F6CLL;
      break;
    case 2:
      v2 = 0x6973736572706D69;
      v6 = 0xEB00000000736E6FLL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1701273968;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x676F6C616964;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x65726F6E6769;
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3F28()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3BA3F80()
{
  OUTLINED_FUNCTION_71_1();
  v0(v1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BA3FD4()
{
  OUTLINED_FUNCTION_71_1();
  v0(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3BA401C()
{
  sub_1E4206014();
}

uint64_t sub_1E3BA40D0()
{
  sub_1E4206014();
}

uint64_t sub_1E3BA416C()
{
  sub_1E4206014();
}

uint64_t sub_1E3BA4214()
{
  sub_1E4206014();
}

uint64_t sub_1E3BA42F0()
{
  sub_1E4206014();
}

uint64_t sub_1E3BA43FC()
{
  sub_1E4206014();
}

uint64_t sub_1E3BA44D0()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BA4588(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BA45DC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1E4207B44();
  a3(v6, a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3BA4628()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3BA467C()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BA4728(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA35F8();
  *v1 = result;
  return result;
}

uint64_t sub_1E3BA4750()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BA363C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3BA4780()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3BA47C4(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_24_50();
  }

  if (a1 == 1)
  {
    return 0x7865646E69;
  }

  return 0x4363696D616E7964;
}

uint64_t sub_1E3BA483C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA4780();
  *v1 = result;
  return result;
}

unint64_t sub_1E3BA4864()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BA47C4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1E3BA4894()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return v0 != 0;
}

BOOL sub_1E3BA48EC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA4894();
  *v1 = result;
  return result;
}

unint64_t sub_1E3BA4918@<X0>(void *a1@<X8>)
{
  result = sub_1E3BA48D4();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BA4968(unsigned __int8 a1)
{
  if (a1 >= 5u)
  {
    return 5;
  }

  else
  {
    return (0x305010205uLL >> (8 * a1));
  }
}

uint64_t sub_1E3BA4994()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BA49D8(char a1)
{
  result = 0x6973736572706D69;
  switch(a1)
  {
    case 1:
      result = 0x6C65536B63696C63;
      break;
    case 2:
      result = 0x616C506B63696C63;
      break;
    case 3:
      result = OUTLINED_FUNCTION_34_42(0x4C6B63696C63);
      break;
    case 4:
      result = 0x686372616573;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3BA4B20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA4994();
  *v1 = result;
  return result;
}

uint64_t sub_1E3BA4B48()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BA49D8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3BA4B78()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BA4BBC(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_42(0x43746C756461);
  }

  if (a1 == 1)
  {
    return 0x73736563656E6E75;
  }

  return 0x6C6F686563616C70;
}

uint64_t sub_1E3BA4C4C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA4B78();
  *v1 = result;
  return result;
}

uint64_t sub_1E3BA4C74()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BA4BBC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

VideosUI::MetricsTargetType_optional __swiftcall MetricsTargetType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t MetricsTargetType.rawValue.getter(char a1)
{
  result = 0x6E6F74747562;
  switch(a1)
  {
    case 1:
      result = 6447476;
      break;
    case 2:
      result = 1919251317;
      break;
    case 3:
      result = 0x70756B636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

VideosUI::MetricsTargetType_optional sub_1E3BA4DC4@<W0>(Swift::String *a1@<X0>, VideosUI::MetricsTargetType_optional *a2@<X8>)
{
  result.value = MetricsTargetType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1E3BA4DF4@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsTargetType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

VideosUI::MetricsActionType_optional __swiftcall MetricsActionType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t MetricsActionType.rawValue.getter(char a1)
{
  result = 6579297;
  switch(a1)
  {
    case 1:
      result = 0x657461676976616ELL;
      break;
    case 2:
      result = 0x7463656C6573;
      break;
    case 3:
      result = 0x747265736E69;
      break;
    default:
      return result;
  }

  return result;
}

VideosUI::MetricsActionType_optional sub_1E3BA4F54@<W0>(Swift::String *a1@<X0>, VideosUI::MetricsActionType_optional *a2@<X8>)
{
  result.value = MetricsActionType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1E3BA4F84@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3BA4FB8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  v16 = sub_1E3C6AB2C(a1);
  *a8 = a4;
  *(a8 + 8) = a5;
  *(a8 + 16) = v16;
  *(a8 + 24) = v17;
  *(a8 + 32) = a2;
  *(a8 + 40) = a3;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
}

uint64_t sub_1E3BA5080(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 32) = a1;
}

uint64_t sub_1E3BA512C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 40) = a1;
}

uint64_t sub_1E3BA5168@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData;
  OUTLINED_FUNCTION_15_0();
  return sub_1E379539C(v1 + v3, a1, &qword_1ECF2B7B0);
}

uint64_t sub_1E3BA51C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData;
  swift_beginAccess();
  sub_1E3BA5224(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3BA5224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BA52E8()
{
  v1 = OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3BA5320(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BA53B8()
{
  result = sub_1E4205CB4();
  qword_1EE2AA800 = result;
  return result;
}

uint64_t *sub_1E3BA53F4()
{
  if (qword_1EE28FC40 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA800;
}

uint64_t sub_1E3BA5444()
{
  result = sub_1E4205CB4();
  qword_1EE2AA7F8 = result;
  return result;
}

uint64_t *sub_1E3BA5480()
{
  if (qword_1EE28FC38 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA7F8;
}

uint64_t sub_1E3BA54D0()
{
  v0 = swift_allocObject();
  sub_1E3BA5508();
  return v0;
}

uint64_t sub_1E3BA5508()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData;
  v2 = sub_1E4204724();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent) = 0;
  return v0;
}

uint64_t sub_1E3BA5560(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  sub_1E3BA55B0(a1, a2);
  return v4;
}

uint64_t sub_1E3BA55B0(uint64_t a1, char a2)
{
  *(v2 + 16) = 0u;
  v5 = (v2 + 16);
  *(v2 + 32) = 0u;
  v6 = OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData;
  v7 = sub_1E4204724();
  __swift_storeEnumTagSinglePayload(v2 + v6, 1, 1, v7);
  *(v2 + OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent) = 0;
  if ((a2 & 1) == 0)
  {
    v5 = (v2 + 24);
  }

  swift_beginAccess();
  *v5 = a1;
  return v2;
}