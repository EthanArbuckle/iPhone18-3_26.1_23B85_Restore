uint64_t sub_1E3F3CEC8()
{
  *(v0 + 104) = 0u;
  OUTLINED_FUNCTION_46_55(0);
  *(v0 + 98) = 256;
  return sub_1E3C2F9A0();
}

void sub_1E3F3CEF0()
{
  v2[3] = &type metadata for VerticalStackLayout.VerticalStackLayoutKeys;
  v2[4] = &off_1F5D8E370;
  sub_1E3F9F164(v2);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      v0 = v1;
    }

    else
    {
      v0 = 2;
    }

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1E329505C(v3);
    v0 = 2;
  }

  LOBYTE(v2[0]) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
  sub_1E4148DE0(sub_1E3F3CFF0);
  sub_1E3C34E14();
}

uint64_t sub_1E3F3CFF0(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 99) = v2;
  return result;
}

uint64_t sub_1E3F3D024()
{
  v1 = v0;
  sub_1E3C35F80();
  type metadata accessor for VerticalStackLayout();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = *(*result + 1848);

    v6 = v4(v5);
    v7 = OUTLINED_FUNCTION_3_0();
    v1[99] = v6 & 1;
    v8 = (*(*v3 + 1824))(v7);
    v9 = OUTLINED_FUNCTION_3_0();
    v1[98] = v8;
    v10 = (*(*v1 + 2016))(v9);
    v11 = (*(*v3 + 2016))();
    (*(*v10 + 1648))(v11);

    OUTLINED_FUNCTION_13();
    (*(v12 + 2160))();
    (*(*v3 + 2160))();
    OUTLINED_FUNCTION_13();
    (*(v13 + 1648))();
  }

  return result;
}

void sub_1E3F3D2D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2016))();
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1640))(a1, a2, a3);

  OUTLINED_FUNCTION_9_2();
  (*(v8 + 2160))();
  OUTLINED_FUNCTION_2_1();
  (*(v9 + 1640))(a1, a2, a3);

  OUTLINED_FUNCTION_9_2();
  (*(v10 + 1824))();
  OUTLINED_FUNCTION_14_157();
  switch(v11)
  {
    case 1:

      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_28_78();
      break;
    case 3:
      OUTLINED_FUNCTION_27_83();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_21_103();
  v12 = sub_1E42079A4();

  if (v12)
  {
LABEL_6:
    if ([objc_opt_self() isPad])
    {
      if (TVAppFeature.isEnabled.getter(10))
      {
        OUTLINED_FUNCTION_111();
        v28 = (*(v13 + 2112))();
        [v28 updateLayoutForPhoneSizeClass_];
      }

      else
      {
        if (sub_1E373F630() & 1) != 0 || (sub_1E373F630() & 1) != 0 || (sub_1E373F630() & 1) != 0 || (sub_1E373F630())
        {
          OUTLINED_FUNCTION_111();
          v14 += 249;
          v15 = *v14;
          (*v14)();
          OUTLINED_FUNCTION_30();
          (*(v16 + 256))(0x406CC00000000000, 0);

          (v15)(v17);
          OUTLINED_FUNCTION_2_1();
          (*(v18 + 360))(0x4059000000000000, 0);
        }

        else
        {
          v19 = OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_111();
          v20 += 249;
          v21 = *v20;
          (*v20)();
          OUTLINED_FUNCTION_2_1();
          v23 = *(v22 + 256);
          if (v19)
          {
            v23(0x4075A00000000000, 0);

            (v21)(v24);
            OUTLINED_FUNCTION_2_1();
            (*(v25 + 360))(0x4055400000000000, 0);
          }

          else
          {
            v23(0x4070400000000000, 0);

            (v21)(v26);
            OUTLINED_FUNCTION_2_1();
            (*(v27 + 360))(0x405E000000000000, 0);
          }
        }
      }
    }
  }
}

void sub_1E3F3D7C0()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  if (TVAppFeature.isEnabled.getter(17))
  {
    OUTLINED_FUNCTION_111();
    (*(v2 + 1824))();
    OUTLINED_FUNCTION_14_157();
    switch(v3)
    {
      case 1:

        goto LABEL_7;
      case 2:
        OUTLINED_FUNCTION_28_78();
        break;
      case 3:
        OUTLINED_FUNCTION_27_83();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_21_103();
    v4 = sub_1E42079A4();

    if (v4)
    {
LABEL_7:
      v5 = TVAppFeature.isEnabled.getter(10);
      OUTLINED_FUNCTION_3_0();
      v1[208] = v5 & 1;
      memset(v374, 0, sizeof(v374));
      v375 = 1;
      v371 = xmmword_1E42A76C0;
      v372 = xmmword_1E42CA400;
      v373 = 0;
      v6 = TVAppFeature.isEnabled.getter(10);
      v7 = TVAppFeature.isEnabled.getter(10);
      v8 = 0x4041000000000000;
      if (v6)
      {
        v9 = 0x4041000000000000;
      }

      else
      {
        v9 = 0x403E000000000000;
      }

      v366 = 0;
      v367 = v9;
      if ((v7 & 1) == 0)
      {
        v8 = 0;
      }

      v368 = 0x403E000000000000;
      v369 = v8;
      v370 = 0;
      __dst[0] = xmmword_1E42B8890;
      TVAppFeature.isEnabled.getter(10);
      v358[0] = xmmword_1E42B8850;
      v358[1] = xmmword_1E429E560;
      LOBYTE(v358[2]) = 0;
      v339[0] = xmmword_1E42CC3D0;
      v339[1] = xmmword_1E42DF2D0;
      LOBYTE(v339[2]) = 0;
      type metadata accessor for UIEdgeInsets();
      sub_1E3C2FCB8(v374, __src);
      memcpy(__dst, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v11 = *(v10 + 1600);
      OUTLINED_FUNCTION_41_62();
      v11();
      *&v358[0] = 0;
      BYTE8(v358[0]) = 1;
      *&v339[0] = 0x4077C00000000000;
      BYTE8(v339[0]) = 0;
      *&v377[0] = 0x4077C00000000000;
      BYTE8(v377[0]) = 0;
      v363 = 0x4081800000000000;
      v364 = 0;
      v361 = 0x4077500000000000;
      v362 = 0;
      v359 = 0x4075A00000000000;
      v360 = 0;
      sub_1E3C2FCB8(v358, __dst);
      memcpy(v358, __dst, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_35();
      v11();
      v363 = 0;
      v364 = 1;
      v361 = 0x4074400000000000;
      v362 = 0;
      v359 = 0x4074400000000000;
      v360 = 0;
      v12 = TVAppFeature.isEnabled.getter(10);
      if (v12)
      {
        v13 = 0x4074400000000000;
      }

      else
      {
        v13 = 0;
      }

      *&v358[0] = v13;
      BYTE8(v358[0]) = (v12 & 1) == 0;
      *&v339[0] = 0x4074400000000000;
      BYTE8(v339[0]) = 0;
      *&v377[0] = 0x4074B00000000000;
      BYTE8(v377[0]) = 0;
      sub_1E3C2FCB8(&v363, __dst);
      memcpy(v358, __dst, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_58_36();
      v11();
      OUTLINED_FUNCTION_9_2();
      v15 = *(v14 + 2016);
      v16 = v15();
      v17 = *(MEMORY[0x1E69DDCE0] + 16);
      v377[0] = *MEMORY[0x1E69DDCE0];
      v377[1] = v17;
      v378 = 0;
      (*(*v16 + 184))(v377);

      v19 = (v15)(v18);
      OUTLINED_FUNCTION_111();
      v21 = (*(v20 + 248))();
      (*(*v19 + 208))(v21, v22 & 1);

      sub_1E3F3ED28();
      v23 = *sub_1E3E5FD88();
      v24 = *sub_1E3E5FDEC();
      v324 = *sub_1E3E5F58C();
      v25 = *sub_1E3E5F6B8();
      v26 = (*v1 + 1872);
      v27 = *v26;
      v28 = v25;
      v27();
      OUTLINED_FUNCTION_2_1();
      (*(v29 + 2056))(1, 0);

      (v27)(v30);
      OUTLINED_FUNCTION_2_1();
      (*(v31 + 1936))(2);

      (v27)(v32);
      OUTLINED_FUNCTION_2_1();
      (*(v33 + 1792))(10);

      (v27)(v34);
      v332 = v26;
      OUTLINED_FUNCTION_2_1();
      (*(v35 + 2008))(1);

      (v27)(v36);
      v356 = v24;
      v354 = v24;
      v352 = v28;
      v350 = v23;
      v37 = sub_1E3755B54();
      v38 = v24;
      v39 = v23;
      v40 = v38;
      v41 = v28;
      v316 = v39;
      v300 = v40;
      v308 = v41;
      v42 = sub_1E3C3DE00(v37);
      v346 = v348;
      v50 = OUTLINED_FUNCTION_5_202(v42, v43, v44, v45, v46, v47, v48, v49, v252, v259, v266, v274, v23, v24, v292, v300, v308, v316, v324, v332, v28);
      sub_1E3C2FCB8(v50, v51);
      v52 = v358[0];
      v53 = v358[1];
      v54 = v358[2];
      v339[0] = v358[0];
      v339[1] = v358[1];
      v339[2] = v358[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_131();
      v55();

      v27();
      OUTLINED_FUNCTION_26_101();
      LOBYTE(v356) = 19;
      LOBYTE(v354) = 19;
      LOBYTE(v352) = 22;
      LOBYTE(v350) = 14;
      LOBYTE(v348) = 21;
      v64 = OUTLINED_FUNCTION_5_202(v56, v57, v58, v59, v60, v61, v62, v63, v253, v260, v267, v37, v280, v286, v293, v301, v309, v317, v325, v333, v339[0]);
      sub_1E3C2FCB8(v64, v65);
      OUTLINED_FUNCTION_24_98();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v74 = OUTLINED_FUNCTION_15_144(v66, v67, v68, v69, v70, v71, v72, v73, v254, v261, v268, v275, v281, v287, v294, v302, v310, v318, v326, v334, v339[0]);
      v75(v74);

      (v27)(v76);
      OUTLINED_FUNCTION_2_1();
      (*(v77 + 1720))(7);

      v295 = v27;
      (v27)(v78);
      v79 = *MEMORY[0x1E6979CF8];
      v80 = sub_1E4205F14();
      v82 = v81;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v80, v82, v83, v84);
      OUTLINED_FUNCTION_36();
      (*(v85 + 1888))();

      if (TVAppFeature.isEnabled.getter(10))
      {

        sub_1E3F3EF78();
      }

      else
      {
        OUTLINED_FUNCTION_111();
        v86 += 237;
        v87 = *v86;
        v270 = v79;
        v88 = v86;
        (*v86)();
        *&v339[0] = 2;
        BYTE8(v339[0]) = 0;
        v356 = 3;
        v357 = 0;
        v89 = MEMORY[0x1E69E6810];
        sub_1E3C2FC98();
        v352 = v354;
        v353 = v355;
        sub_1E3C3DE00(v89);
        v348 = v350;
        v349 = v351;
        sub_1E3C3DE00(v89);
        v344 = v346;
        v345 = v347;
        sub_1E3C3DE00(v89);
        v340 = v342;
        v341 = v343;
        sub_1E3C2FCB8(v339, v358);
        memcpy(v339, v358, 0x59uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_33_76();
        v90();

        (v87)(v91);
        *&v339[0] = v282;
        v356 = 0;
        v354 = 0;
        v352 = v327;
        v92 = v327;
        sub_1E3C3DE00(v276);
        v348 = v350;
        v93 = sub_1E3C3DE00(v276);
        v344 = v346;
        v101 = OUTLINED_FUNCTION_5_202(v93, v94, v95, v96, v97, v98, v99, v100, v88, v87, v270, v276, v282, v288, v27, v303, v311, v319, v327, v335, v339[0]);
        sub_1E3C2FCB8(v101, v102);
        v103 = v358[0];
        v104 = v358[1];
        v105 = v358[2];
        v339[0] = v358[0];
        v339[1] = v358[1];
        v339[2] = v358[2];
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_17_131();
        v106();

        v107 = v263;
        v263();
        OUTLINED_FUNCTION_26_101();
        LOBYTE(v356) = 3;
        LOBYTE(v354) = 2;
        LOBYTE(v352) = 2;
        LOBYTE(v350) = 1;
        v108 = sub_1E3C3DE00(&qword_1F5D549D8);
        LOBYTE(v346) = v348;
        v116 = OUTLINED_FUNCTION_5_202(v108, v109, v110, v111, v112, v113, v114, v115, v256, v263, v271, v277, v283, v289, v296, v304, v312, v320, v328, v336, v339[0]);
        sub_1E3C2FCB8(v116, v117);
        OUTLINED_FUNCTION_24_98();
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v126 = OUTLINED_FUNCTION_15_144(v118, v119, v120, v121, v122, v123, v124, v125, v257, v264, v272, v278, v284, v290, v297, v305, v313, v321, v329, v337, v339[0]);
        v127(v126);

        (v107)(v128);
        OUTLINED_FUNCTION_2_1();
        (*(v129 + 1792))(10);

        (v107)(v130);
        OUTLINED_FUNCTION_2_1();
        (*(v131 + 1720))(7);

        (v107)(v132);
        OUTLINED_FUNCTION_2_1();
        (*(v133 + 2008))(1);
      }

      sub_1E3F3F2C0(1);
      sub_1E3F3FC68(1);
      OUTLINED_FUNCTION_111();
      v134 += 243;
      v135 = *v134;
      (*v134)();
      OUTLINED_FUNCTION_2_1();
      (*(v136 + 680))(v288);

      (v135)(v137);
      LOBYTE(v339[0]) = 21;
      LOBYTE(v356) = 22;
      LOBYTE(v354) = 22;
      LOBYTE(v352) = 7;
      sub_1E3C3DE00(&qword_1F5D549D8);
      LOBYTE(v348) = v350;
      v138 = sub_1E3C3DE00(&qword_1F5D549D8);
      LOBYTE(v344) = v346;
      v146 = OUTLINED_FUNCTION_5_202(v138, v139, v140, v141, v142, v143, v144, v145, v255, v262, v269, v276, v282, v288, v295, v303, v311, v319, v327, v335, v339[0]);
      sub_1E3C2FCB8(v146, v147);
      OUTLINED_FUNCTION_24_98();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v156 = OUTLINED_FUNCTION_15_144(v148, v149, v150, v151, v152, v153, v154, v155, v258, v265, v273, v279, v285, v291, v298, v306, v314, v322, v330, v338, v339[0]);
      v157(v156);

      (v135)(v158);
      v159 = sub_1E4205F14();
      v161 = v160;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v159, v161, v162, v163);
      OUTLINED_FUNCTION_36();
      (*(v164 + 1888))();

      (v135)(v165);
      OUTLINED_FUNCTION_2_1();
      (*(v166 + 1720))(7);

      (v135)(v167);
      OUTLINED_FUNCTION_2_1();
      (*(v168 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v170 = *(v169 + 1992);
      v170();
      OUTLINED_FUNCTION_2_1();
      (*(v171 + 1808))(1);

      LOBYTE(v159) = TVAppFeature.isEnabled.getter(17);
      v170();
      OUTLINED_FUNCTION_2_1();
      if (v159)
      {
        v173 = 12;
      }

      else
      {
        v173 = 4;
      }

      (*(v172 + 512))(v173);

      sub_1E3F40548(1);
      v174.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v174);
      OUTLINED_FUNCTION_3();
      v175.n128_u64[0] = 26.0;
      j__OUTLINED_FUNCTION_7_78(v175);
      OUTLINED_FUNCTION_22_91();
      v176 = sub_1E4177030();
      OUTLINED_FUNCTION_50_12(v177, v178, v179, v180);
      sub_1E41776B0(v181, v182, v183, v184);
      OUTLINED_FUNCTION_35_68(v185, v186, v187, v188);
      sub_1E41776B0(v189, v190, v191, v192);
      v193.n128_u64[0] = 24.0;
      v194.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v193);
      nullsub_1(v194, v195);
      sub_1E41776B0(v196, v197, v198, v199);
      v200.n128_u64[0] = 20.0;
      v201.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v200);
      nullsub_1(v201, v202);
      sub_1E41776B0(v203, v204, v205, v206);
      sub_1E4177030();
      v207 = TVAppFeature.isEnabled.getter(10);
      v208.n128_u64[0] = 10.0;
      if ((v207 & 1) == 0)
      {
        v208.n128_f64[0] = 24.0;
      }

      v209.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v208);
      nullsub_1(v209, v210);
      sub_1E41776B0(v211, v212, v213, v214);
      v215.n128_u64[0] = 28.0;
      v216.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v215);
      nullsub_1(v216, v217);
      sub_1E41776B0(v218, v219, v220, v221);
      v222.n128_u64[0] = 28.0;
      v223.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v222);
      nullsub_1(v223, v224);
      sub_1E41776B0(v225, v226, v227, v228);
      v229.n128_u64[0] = 24.0;
      v230.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v229);
      nullsub_1(v230, v231);
      v236 = sub_1E41776B0(v232, v233, v234, v235);
      v299(v236);
      OUTLINED_FUNCTION_2_1();
      v238 = *(v237 + 1424);
      v239 = swift_retain_n();
      v238(v239);

      OUTLINED_FUNCTION_9_2();
      (*(v240 + 1896))();
      OUTLINED_FUNCTION_2_1();
      (*(v241 + 1424))(v176);

      OUTLINED_FUNCTION_9_2();
      (*(v242 + 1920))();
      OUTLINED_FUNCTION_2_1();
      (*(v243 + 1424))(v176);

      OUTLINED_FUNCTION_9_2();
      (*(v244 + 1968))();
      OUTLINED_FUNCTION_2_1();
      v246 = *(v245 + 1424);

      v246(v247);

      (v135)(v248);
      OUTLINED_FUNCTION_2_1();
      (*(v249 + 1424))(v176);

      (v170)(v250);
      OUTLINED_FUNCTION_2_1();
      (*(v251 + 1424))(v176);
    }
  }

  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E3F3EBB4(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0x656E696665646E75;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x65736163776F6C66;
      break;
    case 2:
      v5 = 0x696C6E4963697065;
      v6 = 0xEA0000000000656ELL;
      break;
    case 3:
      v5 = 0x6F6853616964656DLL;
      v6 = 0xED00006573616377;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x65736163776F6C66;
      break;
    case 2:
      v3 = 0x696C6E4963697065;
      v2 = 0xEA0000000000656ELL;
      break;
    case 3:
      v3 = 0x6F6853616964656DLL;
      v2 = 0xED00006573616377;
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

uint64_t sub_1E3F3ED28()
{
  result = TVAppFeature.isEnabled.getter(10);
  if (result)
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 1824))();
    OUTLINED_FUNCTION_14_157();
    switch(v2)
    {
      case 1:

        goto LABEL_7;
      case 2:
        OUTLINED_FUNCTION_28_78();
        break;
      case 3:
        OUTLINED_FUNCTION_27_83();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_21_103();
    v3 = sub_1E42079A4();

    if (v3)
    {
LABEL_7:
      OUTLINED_FUNCTION_8();
      v4 += 264;
      v5 = *v4;
      v6 = (*v4)();
      v7 = objc_opt_self();
      v8 = [v7 whiteColor];
      [v6 setHighContrastBadgeTintColor_];

      v9 = v5();
      v10 = [v9 textLayout];

      v11 = [v7 whiteColor];
      [v10 setHighContrastTintColor_];

      v12 = v5();
      sub_1E3952C58();
      [v12 setMargin_];

      type metadata accessor for RelationalLayout();
      sub_1E4177030();
      sub_1E3952C88();
      nullsub_1(v13, v14);
      sub_1E41776B0(v15, v16, v17, v18);
    }
  }

  return result;
}

uint64_t sub_1E3F3EF78()
{
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 1896);
  v3 = v2;
  v1();
  v22 = v1;
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 2056))(2, 0);

  (v1)(v5);
  v24[0] = v3;
  v6 = sub_1E3755B54();
  v23 = v3;
  sub_1E3C2FC98();
  v24[14] = v24[15];
  sub_1E3C3DE00(v6);
  v24[12] = v24[13];
  sub_1E3C3DE00(v6);
  v24[10] = v24[11];
  sub_1E3C3DE00(v6);
  v24[8] = v24[9];
  sub_1E3C3DE00(v6);
  v24[6] = v24[7];
  sub_1E3C2FCB8(v24, &v25);
  v7 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v12 = v29;
  v11 = v30;
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v29;
  v24[5] = v30;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_131();
  v13();

  v22();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1696))(2);

  (v22)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1792))(10);

  (v22)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1720))(7);

  (v22)(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 2008))(1);
}

void sub_1E3F3F2C0(char a1)
{
  v3 = *sub_1E3E5FDEC();
  v4 = *sub_1E3E5F6B8();
  v5 = *(*v1 + 1920);
  v6 = v4;
  v5();
  if (a1)
  {
    v7 = TVAppFeature.isEnabled.getter(10);
    v8 = 3;
    if ((v7 & 1) == 0)
    {
      v8 = 4;
    }

    __dst[0] = v8;
    LOBYTE(__dst[1]) = 0;
    v9 = MEMORY[0x1E69E6810];
    sub_1E3C2FC98();
    v128 = v112;
    v129 = v113;
    sub_1E3C3DE00(v9);
    v124 = v126;
    v125 = v127;
    sub_1E3C3DE00(v9);
    v120 = v122;
    v121 = v123;
    sub_1E3C3DE00(v9);
    sub_1E3C3DE00(v9);
    sub_1E3C2FCB8(__dst, __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_76();
    v10();

    (v5)(v11);
    OUTLINED_FUNCTION_2_1();
    v13 = *(v12 + 680);
    v14 = v3;
    v13(v3);

    (v5)(v15);
    OUTLINED_FUNCTION_26_101();
    if (TVAppFeature.isEnabled.getter(10))
    {
      v16 = 17;
    }

    else
    {
      v16 = 20;
    }

    LOBYTE(v128) = v16;
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_55_44();
    if (v18)
    {
      ++v17;
    }

    LOBYTE(v126) = v17;
    LOBYTE(v124) = 15;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    LOBYTE(v122) = v19;
    LOBYTE(v120) = 15;
    sub_1E3C2FCB8(&v112, __dst);
    OUTLINED_FUNCTION_51_44();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_175();
    v20();

    (v5)(v21);
    OUTLINED_FUNCTION_2_1();
    (*(v22 + 1792))(4);

    (v5)(v23);
    v24 = sub_1E4205F14();
    v26 = v25;
    sub_1E4205F14();
    OUTLINED_FUNCTION_109();
    sub_1E376C12C(v24, v26, v27, v28);
    OUTLINED_FUNCTION_36();
    (*(v29 + 1888))();

    (v5)(v30);
    OUTLINED_FUNCTION_2_1();
    (*(v31 + 1720))(7);

    (v5)(v32);
    OUTLINED_FUNCTION_2_1();
    (*(v33 + 2008))(1);
  }

  else
  {
    v128 = 4;
    v129 = 0;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v34 = 3;
    }

    else
    {
      v34 = 4;
    }

    v126 = v34;
    v127 = 0;
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_54_44();
    v124 = v35;
    v125 = 0;
    TVAppFeature.isEnabled.getter(17);
    OUTLINED_FUNCTION_54_44();
    v122 = v36;
    v123 = 0;
    TVAppFeature.isEnabled.getter(17);
    OUTLINED_FUNCTION_54_44();
    v120 = v37;
    v121 = 0;
    TVAppFeature.isEnabled.getter(17);
    OUTLINED_FUNCTION_54_44();
    sub_1E3C2FCB8(&v128, __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_76();
    v38();

    (v5)(v39);
    v112 = v6;
    v40 = v3;
    v41 = v6;
    if (TVAppFeature.isEnabled.getter(17))
    {
      v42 = v40;
    }

    else
    {
      v42 = v41;
    }

    v102 = v42;
    v43 = v42;
    if (TVAppFeature.isEnabled.getter(17))
    {
      v44 = v40;
    }

    else
    {
      v44 = v41;
    }

    sub_1E3755B54();
    v45 = v44;
    OUTLINED_FUNCTION_34_69(v45, v46, v47, v48, v49, v50, v51, v52, v92, v41, v40, v98, v44, v100, v102, v104, v3, v107, v3, v110, v112, v113, v114, v115, v116, v117, v3, __dst[0]);
    v54 = __dst[0];
    v53 = __dst[1];
    v55 = __dst[2];
    v56 = __dst[3];
    v57 = __dst[4];
    v58 = __dst[5];
    v112 = __dst[0];
    v113 = __dst[1];
    v114 = __dst[2];
    v115 = __dst[3];
    v116 = __dst[4];
    v117 = __dst[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_131();
    v59();

    v5();
    OUTLINED_FUNCTION_26_101();
    if (TVAppFeature.isEnabled.getter(10))
    {
      v60 = 17;
    }

    else
    {
      v60 = 20;
    }

    LOBYTE(v109) = v60;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v61 = 14;
    }

    else
    {
      v61 = 20;
    }

    LOBYTE(v106) = v61;
    if (TVAppFeature.isEnabled.getter(17))
    {
      v62 = 14;
    }

    else
    {
      v62 = 15;
    }

    LOBYTE(v103) = v62;
    v63 = TVAppFeature.isEnabled.getter(17);
    if (v63)
    {
      v71 = 14;
    }

    else
    {
      v71 = 2;
    }

    LOBYTE(v99) = v71;
    LOBYTE(v118) = 15;
    OUTLINED_FUNCTION_34_69(v63, v64, v65, v66, v67, v68, v69, v70, v93, v94, v96, v1, v99, v101, v103, v105, v106, v108, v109, v111, v112, v113, v114, v115, v116, v117, v118, __dst[0]);
    OUTLINED_FUNCTION_51_44();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_175();
    v72();

    v73 = TVAppFeature.isEnabled.getter(10);
    v5();
    if (v73)
    {
      OUTLINED_FUNCTION_8();
      (*(v74 + 2272))(1);

      (v5)(v75);
      OUTLINED_FUNCTION_2_1();
      (*(v76 + 1792))(4);
    }

    else
    {
      TVAppFeature.isEnabled.getter(10);
      OUTLINED_FUNCTION_8();
      v78 = (v77 + 1792);
      if (v79)
      {
        v80 = 10;
      }

      else
      {
        v80 = 4;
      }

      (*v78)(v80);
    }

    (v5)(v81);
    v82 = sub_1E4205F14();
    v84 = v83;
    sub_1E4205F14();
    OUTLINED_FUNCTION_109();
    sub_1E376C12C(v82, v84, v85, v86);
    OUTLINED_FUNCTION_36();
    (*(v87 + 1888))();

    (v5)(v88);
    OUTLINED_FUNCTION_2_1();
    (*(v89 + 1720))(7);

    (v5)(v90);
    OUTLINED_FUNCTION_2_1();
    (*(v91 + 2008))(1);
  }
}

void sub_1E3F3FC68(char a1)
{
  v3 = *sub_1E3E5FD88();
  v4 = *sub_1E3E5F58C();
  v5 = (*v1 + 1968);
  v6 = *v5;
  v7 = v4;
  v6();
  v104 = v7;
  if (a1)
  {
    __dst[0] = v3;
    v8 = v3;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v9 = v8;
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    v129 = v10;
    if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {

      v3 = 0;
    }

    v127 = v3;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v27 = v8;
    }

    else
    {
      v27 = v7;
    }

    v125 = v27;
    v28 = sub_1E3755B54();
    v29 = v27;
    sub_1E3C3DE00(v28);
    v30 = OUTLINED_FUNCTION_63_30();
    v121 = v122;
    v38 = OUTLINED_FUNCTION_6_193(v30, v31, v32, v33, v34, v35, v36, v37, v99, v5, v7, v108, v111, v114, v117, __dst[0]);
    sub_1E3C2FCB8(v38, v39);
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_131();
    v40();

    v6();
    OUTLINED_FUNCTION_30_77();
    LOBYTE(__dst[0]) = v41;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v42 = 17;
    }

    else
    {
      v42 = 19;
    }

    LOBYTE(v129) = v42;
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_55_44();
    if (v44)
    {
      v43 = 17;
    }

    LOBYTE(v127) = v43;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v45 = 21;
    }

    else
    {
      v45 = 15;
    }

    LOBYTE(v125) = v45;
    v46 = TVAppFeature.isEnabled.getter(10);
    if (v46)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v124 = v54;
    v123 = 7;
    v55 = OUTLINED_FUNCTION_6_193(v46, v47, v48, v49, v50, v51, v52, v53, v8, v103, v106, v110, v113, v116, v119, __dst[0]);
    sub_1E3C2FCB8(v55, v56);
    OUTLINED_FUNCTION_48_48();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_175();
    v57();

    v58 = TVAppFeature.isEnabled.getter(10);
    v6();
    OUTLINED_FUNCTION_2_1();
    if (v58)
    {
      v60 = 5;
    }

    else
    {
      v60 = 10;
    }

    (*(v59 + 1792))(v60);

    (v6)(v61);
    OUTLINED_FUNCTION_2_1();
    (*(v62 + 1720))(7);

    (v6)(v63);
    OUTLINED_FUNCTION_2_1();
    (*(v64 + 2008))(1);

    (v6)(v65);
    v66 = TVAppFeature.isEnabled.getter(10);
    v129 = v66 & 1;
    v130 = (v66 & 1) == 0;
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_43_61();
    __dst[0] = v67;
    LOBYTE(__dst[1]) = 0;
    v68 = MEMORY[0x1E69E6810];
    sub_1E3C3DE00(MEMORY[0x1E69E6810]);
    v125 = v127;
    v126 = v128;
    sub_1E3C3DE00(v68);
    v69 = OUTLINED_FUNCTION_37_68();
    sub_1E3C3DE00(v69);
    OUTLINED_FUNCTION_56_34();
    sub_1E3C3DE00(v68);
    v70 = &v129;
  }

  else
  {
    __dst[0] = v3;
    v129 = 0;
    v127 = 0;
    v11 = v3;
    if (TVAppFeature.isEnabled.getter(17))
    {
      v7 = v11;
    }

    v125 = v7;
    v12 = sub_1E3755B54();
    v13 = v7;
    sub_1E3C3DE00(v12);
    v14 = OUTLINED_FUNCTION_63_30();
    v121 = v122;
    v22 = OUTLINED_FUNCTION_6_193(v14, v15, v16, v17, v18, v19, v20, v21, v11, v102, v104, v108, v111, v114, v117, __dst[0]);
    sub_1E3C2FCB8(v22, v23);
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_131();
    v24();

    v6();
    OUTLINED_FUNCTION_30_77();
    LOBYTE(__dst[0]) = v25;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v26 = 14;
    }

    else if (TVAppFeature.isEnabled.getter(10))
    {
      v26 = 15;
    }

    else
    {
      v26 = 19;
    }

    LOBYTE(v129) = v26;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v71 = 14;
    }

    else if (TVAppFeature.isEnabled.getter(10))
    {
      v71 = 15;
    }

    else
    {
      v71 = 17;
    }

    LOBYTE(v127) = v71;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v72 = 14;
    }

    else if (TVAppFeature.isEnabled.getter(17))
    {
      v72 = 21;
    }

    else
    {
      v72 = 15;
    }

    LOBYTE(v125) = v72;
    v73 = TVAppFeature.isEnabled.getter(10);
    if (v73)
    {
      v81 = 14;
    }

    else
    {
      v73 = TVAppFeature.isEnabled.getter(17);
      if (v73)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }
    }

    v124 = v81;
    v123 = 7;
    v82 = OUTLINED_FUNCTION_6_193(v73, v74, v75, v76, v77, v78, v79, v80, v100, v1, v105, v109, v112, v115, v118, __dst[0]);
    sub_1E3C2FCB8(v82, v83);
    OUTLINED_FUNCTION_48_48();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_175();
    v84();

    v85 = TVAppFeature.isEnabled.getter(10);
    v6();
    OUTLINED_FUNCTION_2_1();
    if (v85)
    {
      v87 = 5;
    }

    else
    {
      v87 = 10;
    }

    (*(v86 + 1792))(v87);

    (v6)(v88);
    OUTLINED_FUNCTION_2_1();
    (*(v89 + 1720))(7);

    (v6)(v90);
    OUTLINED_FUNCTION_2_1();
    (*(v91 + 2008))(1);

    (v6)(v92);
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_43_61();
    v129 = v93;
    v130 = 0;
    TVAppFeature.isEnabled.getter(17);
    OUTLINED_FUNCTION_43_61();
    v127 = v94;
    v128 = 0;
    TVAppFeature.isEnabled.getter(17);
    OUTLINED_FUNCTION_43_61();
    v125 = v95;
    v126 = 0;
    TVAppFeature.isEnabled.getter(17);
    OUTLINED_FUNCTION_43_61();
    __dst[0] = v96;
    LOBYTE(__dst[1]) = 0;
    sub_1E3C3DE00(MEMORY[0x1E69E6810]);
    v97 = OUTLINED_FUNCTION_37_68();
    sub_1E3C3DE00(v97);
    OUTLINED_FUNCTION_56_34();
    v70 = &v123;
  }

  sub_1E3C2FCB8(v70, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_76();
  v98();
}

uint64_t sub_1E3F40548(char a1)
{
  v2 = 0x406C200000000000;
  OUTLINED_FUNCTION_8();
  v3 += 249;
  v4 = *v3;
  (*v3)();
  v42 = 0;
  v43 = 1;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v5 = 0x406C200000000000;
  }

  else
  {
    v5 = 0x406CC00000000000;
  }

  v40 = v5;
  v41 = 0;
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    if (a1 & 1 | ((TVAppFeature.isEnabled.getter(17) & 1) == 0))
    {
      v2 = 0x4070400000000000;
    }

    else
    {
      v2 = 0x406CC00000000000;
    }
  }

  v38 = v2;
  v39 = 0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    if (a1)
    {
      v6 = 0x4076800000000000;
    }

    else
    {
      v6 = 0x4072C00000000000;
    }
  }

  else
  {
    v7 = TVAppFeature.isEnabled.getter(17);
    if (a1)
    {
      v6 = 0x4076800000000000;
    }

    else
    {
      v6 = 0x4072C00000000000;
    }

    if ((v7 & 1) == 0)
    {
      v6 = 0x4081300000000000;
    }
  }

  v36 = v6;
  v37 = 0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v8 = 0x4063B00000000000;
  }

  else
  {
    v9 = TVAppFeature.isEnabled.getter(17);
    v8 = 0x4074000000000000;
    if (v9)
    {
      v8 = 0x4069000000000000;
    }
  }

  __dst[12] = v8;
  v35 = 0;
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    TVAppFeature.isEnabled.getter(17);
  }

  v10 = 0x4046800000000000;
  v11 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FCB8(&v42, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v12 + 1600))(__dst, 4, v13 & 1, v11);

  (v4)(v14);
  v32 = 0;
  v33 = 1;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v15 = 0x4046800000000000;
  }

  else
  {
    v15 = 0x4059000000000000;
  }

  v30 = v15;
  v31 = 0;
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    if (a1 & 1 | ((TVAppFeature.isEnabled.getter(17) & 1) == 0))
    {
      v10 = 0x405E000000000000;
    }

    else
    {
      v10 = 0x4059000000000000;
    }
  }

  v28 = v10;
  v29 = 0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v16 = 0x4054000000000000;
    if (a1)
    {
      v16 = 0x4058000000000000;
    }
  }

  else
  {
    v17 = TVAppFeature.isEnabled.getter(17);
    v16 = 0x4054000000000000;
    if (a1)
    {
      v16 = 0x4058000000000000;
    }

    if ((v17 & 1) == 0)
    {
      v16 = 0x4066800000000000;
    }
  }

  v26 = v16;
  v27 = 0;
  if (TVAppFeature.isEnabled.getter(10))
  {
    v18 = 0x4045000000000000;
  }

  else
  {
    v19 = TVAppFeature.isEnabled.getter(17);
    v18 = 0x405CC00000000000;
    if (v19)
    {
      v18 = 0x4048000000000000;
    }
  }

  v24[12] = v18;
  v25 = 0;
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    TVAppFeature.isEnabled.getter(17);
  }

  v20 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FCB8(&v32, __dst);
  memcpy(v24, __dst, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v21 + 1600))(v24, 8, v22 & 1, v20);
}

uint64_t sub_1E3F40944()
{
}

uint64_t sub_1E3F409CC()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3F40A5C()
{
  v0 = sub_1E3F409CC();

  return MEMORY[0x1EEE6BDC0](v0, 224, 7);
}

uint64_t sub_1E3F40A8C()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3F40AD8()
{
  result = OUTLINED_FUNCTION_14_157();
  switch(v1)
  {
    case 1:
      result = 0x65736163776F6C66;
      break;
    case 2:
      result = OUTLINED_FUNCTION_28_78();
      break;
    case 3:
      result = OUTLINED_FUNCTION_27_83();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3F40B8C()
{
  sub_1E4207B44();
  sub_1E3F40C58();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F40BD4()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F40C58()
{
  sub_1E4206014();
}

uint64_t sub_1E3F40D2C()
{
  sub_1E4207B44();
  sub_1E3F40C58();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F40D70()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F40DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F40A8C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3F40DF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3F40AD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1E3F40E24()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

unint64_t sub_1E3F40E70()
{
  result = qword_1ECF3D068;
  if (!qword_1ECF3D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D068);
  }

  return result;
}

unint64_t sub_1E3F40EC8()
{
  result = qword_1ECF3D070;
  if (!qword_1ECF3D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D070);
  }

  return result;
}

BOOL sub_1E3F40F28@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F40E24();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for VerticalStackLayout.StackType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VerticalStackLayout.VerticalStackLayoutKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_1E3F4110C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1872))();
  sub_1E3C37CBC(v1, 5);

  OUTLINED_FUNCTION_36();
  v3 = (*(v2 + 1896))();
  sub_1E3C37CBC(v3, 23);

  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1920))();
  sub_1E3C37CBC(v5, 15);

  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1968))();
  sub_1E3C37CBC(v7, 4);

  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1944))();
  sub_1E3C37CBC(v9, 14);

  OUTLINED_FUNCTION_36();
  v11 = (*(v10 + 1992))();
  sub_1E3C37CBC(v11, 39);

  OUTLINED_FUNCTION_36();
  v13 = (*(v12 + 2040))();
  sub_1E3C37CBC(v13, 73);

  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 2064))();
  sub_1E3C37CBC(v15, 99);

  OUTLINED_FUNCTION_36();
  v17 = (*(v16 + 2088))();
  sub_1E3C37CBC(v17, 59);

  OUTLINED_FUNCTION_36();
  v19 = (*(v18 + 2136))();
  sub_1E3C37CBC(v19, 60);
}

uint64_t OUTLINED_FUNCTION_48_48()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1E3F41450(void *a1, void *a2, uint64_t a3, char a4)
{
  *&v29 = sub_1E32859C4(a1, &selRef_documentType);
  *(&v29 + 1) = v8;
  sub_1E3DE55E0();
  sub_1E4149694();
  v9 = v27;
  if (v27 == 8)
  {
    return 0;
  }

  v10 = sub_1E32859C4(a1, &selRef_controllerRef);
  if (!v11)
  {
    return 0;
  }

  v12 = v10;
  v13 = v11;
  type metadata accessor for DocumentServiceRequestContext();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = OUTLINED_FUNCTION_18();
  v15 = a2;
  v16 = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v9, 0, v12, v13, a2, &v29, &v27, v14 & 1);
  v17 = [a1 contextData];
  if (v17)
  {
    v18 = sub_1E3751A20(v17);
  }

  else
  {
    v18 = 0;
  }

  v20 = sub_1E4149EE8(v18, a3);

  if (v20)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  }

  else
  {
    v21 = 0;
    *(&v29 + 1) = 0;
    *&v30 = 0;
  }

  *&v29 = v20;
  *(&v30 + 1) = v21;
  (*(*v16 + 224))(&v29);
  v22 = [a1 prefetchData];
  if (v22 && (v23 = v22, v24 = [v22 jsonData], v23, v24))
  {
    v25 = sub_1E4205C64();

    *(&v30 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    *&v29 = v25;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  (*(*v16 + 248))(&v29);
  v19 = swift_allocObject();
  sub_1E3F41734(v16, a4 & 1);
  return v19;
}

uint64_t sub_1E3F416E4(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  sub_1E3F41734(a1, a2);
  return v4;
}

void *sub_1E3F41734(uint64_t a1, char a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D078);
  v2[4] = sub_1E37B2760();

  if (a2)
  {
    sub_1E3F417C4();
  }

  return v2;
}

uint64_t sub_1E3F417C4()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v8, v2);
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1E3270FC8(0xD00000000000001DLL, 0x80000001E42DF4F0, &v22);
    _os_log_impl(&dword_1E323F000, v9, v10, "%s Starting to fetch document", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v7, v2);
  v13 = *(v1 + 32);
  if (v13 && (v14 = *(*v13 + 352), v15 = , v16 = v14(v15), , v16))
  {
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = 0xD00000000000001DLL;
    v18[4] = 0x80000001E42DF4F0;
    v19 = sub_1E41EC148(sub_1E3F421F8, v18);
  }

  else
  {
    v19 = 0;
  }

  *(v1 + 40) = v19;
}

void sub_1E3F41A74()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3F41AE8()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(*v2 + 376);

    v3(v4);
  }

  *(v1 + 32) = 0;

  sub_1E32AF6F8(v1 + 16);

  return v1;
}

uint64_t sub_1E3F41B8C()
{
  sub_1E3F41AE8();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1E3F41BC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 17);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v62 = result;
    v63 = v20;
    v66 = a3;
    v61 = v19;
    v22 = sub_1E324FBDC();
    v23 = *(v9 + 16);
    v64 = v22;
    v65 = v23;
    (v23)(v16);

    v24 = sub_1E41FFC94();
    v25 = sub_1E42067E4();

    v26 = os_log_type_enabled(v24, v25);
    v67 = v18;
    v68 = v9;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v60 = v17;
      v28 = v27;
      v29 = v9;
      v30 = swift_slowAlloc();
      v73[0] = v30;
      *v28 = 136315138;
      *(v28 + 4) = sub_1E3270FC8(v66, a4, v73);
      _os_log_impl(&dword_1E323F000, v24, v25, "%s Received fetch document response", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_6_0();
      v17 = v60;
      OUTLINED_FUNCTION_6_0();

      v31 = v29;
      v18 = v67;
    }

    else
    {

      v31 = v9;
    }

    v32 = *(v31 + 8);
    v32(v16, v7);
    v33 = v7;
    v34 = v62;
    if (v63)
    {
      v71 = sub_1E3F6FB3C(v17, v18, v61);
      v72 = v35;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      sub_1E4148C68(sub_1E37BCD7C, v36, v73);

      v37 = v73[1];
      v69 = v73[0];
      v38 = v70;
      v65(v70, v64, v7);

      v39 = sub_1E41FFC94();
      v40 = sub_1E42067E4();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v65 = v33;
        v42 = v41;
        v73[0] = swift_slowAlloc();
        *v42 = 136315394;
        *(v42 + 4) = sub_1E3270FC8(v66, a4, v73);
        *(v42 + 12) = 2080;
        v43 = v17;
        v44 = sub_1E3270FC8(v69, v37, v73);

        *(v42 + 14) = v44;
        v17 = v43;
        _os_log_impl(&dword_1E323F000, v39, v40, "%s Fetch document response failed [%s]", v42, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v45 = v70;
        v46 = v65;
      }

      else
      {

        v45 = v38;
        v46 = v33;
      }

      v32(v45, v46);
      OUTLINED_FUNCTION_5_0();
      Strong = swift_unknownObjectWeakLoadStrong();
      v56 = v67;
      if (Strong)
      {
        v57 = v34[3];
        ObjectType = swift_getObjectType();
        (*(v57 + 16))(v34, v17, v56, v61, ObjectType, v57);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v47 = v69;
      v65(v69, v64, v7);

      v48 = sub_1E41FFC94();
      v49 = sub_1E42067E4();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = v17;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v73[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1E3270FC8(v66, a4, v73);
        _os_log_impl(&dword_1E323F000, v48, v49, "%s Fetch document response was success", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        OUTLINED_FUNCTION_6_0();
        v17 = v50;
        OUTLINED_FUNCTION_6_0();
      }

      v32(v47, v33);
      swift_beginAccess();
      v34[6] = v17;
      swift_retain_n();

      OUTLINED_FUNCTION_5_0();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v53 = v34[3];
        v54 = swift_getObjectType();
        (*(v53 + 8))(v34, v17, v54, v53);
        swift_unknownObjectRelease();
      }
    }

    v34[4] = 0;

    v34[5] = 0;
  }

  return result;
}

void sub_1E3F42228()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for LibEditableCard();
  v16 = *(v15 + 32);
  *(v7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  swift_storeEnumTagMultiPayload();
  v17 = (v7 + *(v15 + 36));
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_3_221();
  sub_1E3F449AC(v18, v19);
  *v17 = sub_1E4201754();
  v17[1] = v20;
  *v7 = v5;
  type metadata accessor for ContextMenuModel();
  swift_retain_n();
  v21 = sub_1E3E6CDBC();
  v23 = *v21;
  v22 = v21[1];
  v26[0] = v23;
  v26[1] = v22;

  sub_1E4207414();
  (*(v10 + 104))(v14, *MEMORY[0x1E697E660], v8);

  *(v7 + 208) = sub_1E4188148(v24, v14);
  memcpy((v7 + 8), v3, 0xC3uLL);
  type metadata accessor for CardViewInteractor(0);
  sub_1E375C1CC(v3, v26);
  sub_1E375C1CC(v3, v26);

  v25 = sub_1E3AB85C4(v5, v3, v1);
  j__OUTLINED_FUNCTION_18();
  sub_1E3AB9000();

  sub_1E37E6F2C(v3);

  sub_1E3ABC8B4(v26);
  *(v7 + 216) = sub_1E38074D0;
  *(v7 + 224) = v25;
  *(v7 + 232) = 0;
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for LibEditableCard()
{
  result = qword_1EE2A3F50;
  if (!qword_1EE2A3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F424D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for LibEditableCard();
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = v4;
  v97 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v90 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D080);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v78 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D088);
  OUTLINED_FUNCTION_0_10();
  v80 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v78 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D090);
  OUTLINED_FUNCTION_0_10();
  v82 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D098);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v78 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0A0);
  OUTLINED_FUNCTION_0_10();
  v86 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v25);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0B0);
  OUTLINED_FUNCTION_0_10();
  v93 = v29;
  v94 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  *v12 = sub_1E4201D54();
  *(v12 + 1) = 0;
  v12[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0B8);
  sub_1E3F42DCC();
  v32 = v1[26];
  v33 = sub_1E32752B0(&qword_1ECF3D0C0, &qword_1ECF3D080);
  sub_1E4187EA8(v32, v9, v33);
  sub_1E325F6F0(v12, &qword_1ECF3D080);
  v34 = *v1;
  v100 = v9;
  v101 = v33;
  v35 = v78[1];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v79;
  sub_1E4035F10(v34, v79, OpaqueTypeConformance2);
  (*(v80 + 8))(v16, v37);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_294();
  sub_1E3F449AC(v38, v39);
  OUTLINED_FUNCTION_32_0();
  v40 = sub_1E4200BC4();
  v41 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0();
  v42 = *(v40 + v41);

  if (v42 && (OUTLINED_FUNCTION_8(), (*(v43 + 152))(&v100), v44 = v100, v45 = v101, v46 = v102, v47 = v103, , (v104 & 1) == 0))
  {
    v48.n128_u64[0] = v44;
    v49.n128_u64[0] = v45;
    v50.n128_u64[0] = v46;
    v51.n128_u64[0] = v47;
    v52 = j_nullsub_1(v48, v49, v50, v51);
  }

  else
  {
    v52 = OUTLINED_FUNCTION_5_8();
  }

  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = sub_1E4202734();
  (*(v82 + 32))(v22, v35, v84);
  v61 = &v22[*(v83 + 36)];
  *v61 = v60;
  *(v61 + 1) = v56;
  *(v61 + 2) = v57;
  *(v61 + 3) = v58;
  *(v61 + 4) = v59;
  v61[40] = 0;
  v62 = v88;
  sub_1E4202474();
  sub_1E3F4316C();
  v63 = v81;
  OUTLINED_FUNCTION_32_0();
  sub_1E4203224();
  (*(v90 + 8))(v62, v92);
  v64 = sub_1E325F6F0(v22, &qword_1ECF3D098);
  v65 = (*(*v34 + 1184))(v64);
  v66 = v97;
  sub_1E3F43550(v2, v97);
  v67 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v68 = swift_allocObject();
  sub_1E3F435B4(v66, v68 + v67);
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1E3F43618;
  *(v69 + 24) = v68;
  v70 = v85;
  (*(v86 + 32))(v85, v63, v87);
  v71 = v91;
  *(v70 + *(v91 + 52)) = v65;
  v72 = (v70 + *(v71 + 56));
  *v72 = sub_1E379E500;
  v72[1] = v69;
  v99 = v34;
  sub_1E3F43550(v2, v66);
  v73 = swift_allocObject();
  sub_1E3F435B4(v66, v73 + v67);
  type metadata accessor for LibLockupViewModel();
  sub_1E32752B0(&qword_1ECF3D0D0, &qword_1ECF3D0A8);
  sub_1E3F449AC(qword_1EE277BC8, type metadata accessor for LibLockupViewModel);
  swift_retain_n();
  v74 = v89;
  sub_1E4203524();

  sub_1E325F6F0(v70, &qword_1ECF3D0A8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0D8);
  v76 = v98;
  sub_1E3AB3A44(v34, (v98 + *(v75 + 36)));
  return (*(v93 + 32))(v76, v74, v94);
}

void sub_1E3F42DCC()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v0;
  v33 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0E8);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0F0);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v33 - v28;
  sub_1E3F432AC(&v33 - v28);
  type metadata accessor for LibEditableCard();
  sub_1E3AB3B98(v10);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
  if (__swift_getEnumTagSinglePayload(v10, 1, v30) == 1)
  {
    sub_1E325F6F0(v10, &qword_1ECF31FF0);
  }

  else
  {
    MEMORY[0x1E690E3F0](v30);
    sub_1E325F6F0(v10, &qword_1ECF31FC8);
    sub_1E4203BF4();
    (*(v2 + 8))(v6, v33);
  }

  *v18 = sub_1E4201B84();
  *(v18 + 1) = 0;
  v18[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0F8);
  sub_1E3F440B0();
  sub_1E3741EA0(v18, v21, &qword_1ECF3D0E8);
  sub_1E3743538(v29, v26, &qword_1ECF3D0F0);
  sub_1E3743538(v21, v15, &qword_1ECF3D0E8);
  v31 = v34;
  sub_1E3743538(v26, v34, &qword_1ECF3D0F0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D100);
  sub_1E3743538(v15, v31 + *(v32 + 48), &qword_1ECF3D0E8);
  sub_1E325F6F0(v21, &qword_1ECF3D0E8);
  sub_1E325F6F0(v29, &qword_1ECF3D0F0);
  sub_1E325F6F0(v15, &qword_1ECF3D0E8);
  sub_1E325F6F0(v26, &qword_1ECF3D0F0);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F4316C()
{
  result = qword_1ECF3D0C8;
  if (!qword_1ECF3D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D080);
    sub_1E32752B0(&qword_1ECF3D0C0, &qword_1ECF3D080);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D0C8);
  }

  return result;
}

uint64_t sub_1E3F432AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  type metadata accessor for LibEditableCard();
  sub_1E3AB3B98(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E325F6F0(v14, &qword_1ECF31FF0);
    v16 = 1;
  }

  else
  {
    MEMORY[0x1E690E3F0](v15);
    sub_1E325F6F0(v14, &qword_1ECF31FC8);
    v17 = sub_1E4203BF4();
    (*(v6 + 8))(v10, v4);
    v16 = v17 ^ 1;
  }

  v18 = *v2;
  v19 = *(*v2 + 24);
  if (v19)
  {
    v20 = *(*v2 + 24);
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1EEE9AC00](v19);
  v25[-4] = v2;
  v25[-3] = v21;
  v25[-2] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D118);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32328);
  v23 = sub_1E3ABD344();
  v25[0] = v22;
  v25[1] = MEMORY[0x1E69E6158];
  v25[2] = v23;
  v25[3] = MEMORY[0x1E69E6168];
  swift_getOpaqueTypeConformance2();
  sub_1E40424BC(v18, v16 & 1, sub_1E3F449A0, a1);
}

uint64_t sub_1E3F43550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibEditableCard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F435B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibEditableCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F43618()
{
  v0 = type metadata accessor for LibEditableCard();
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_294();
  sub_1E3F449AC(v1, v2);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  sub_1E3AB9E3C();
}

uint64_t objectdestroyTm_53()
{
  v1 = type metadata accessor for LibEditableCard();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1E3264CE0();
  v3 = v2 + *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
    if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      sub_1E4203C04();
      OUTLINED_FUNCTION_2();
      (*(v6 + 8))(v3 + v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3F4387C()
{
  v0 = type metadata accessor for LibEditableCard();
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_294();
  sub_1E3F449AC(v1, v2);
  sub_1E4200BC4();
  sub_1E3AB9E3C();
}

uint64_t sub_1E3F43974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v9 - v6;
  sub_1E3F43A58();
  v9[0] = a2;
  v9[1] = a3;
  sub_1E3ABD344();
  sub_1E4203184();
  return sub_1E325F6F0(v7, &qword_1ECF32328);
}

void sub_1E3F43A58()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for ImageViewWithOverlay();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v45 = (v5 - v4);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v44 = v7;
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_294();
  sub_1E3F449AC(v8, v9);
  v10 = OUTLINED_FUNCTION_4_223();
  v11 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v58, (v10 + v11), 0x58uLL);
  sub_1E3743538(v58, v54, &qword_1ECF322C8);

  if (!v58[7] || (v12 = v58[1], , sub_1E325F6F0(v58, &qword_1ECF322C8), !v12))
  {
    v16 = v2;
    v17 = 1;
    v18 = v46;
LABEL_24:
    __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v43 = v2;
  v13 = OUTLINED_FUNCTION_4_223();
  v14 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v53, (v13 + v14), 0x58uLL);
  sub_1E3743538(v53, v54, &qword_1ECF322C8);

  if (v53[7])
  {
    v15 = v53[2];

    sub_1E325F6F0(v53, &qword_1ECF322C8);
  }

  else
  {
    v15 = 0;
  }

  memcpy(v48, (v0 + 8), 0x5BuLL);
  sub_1E375C2C0(v48, v54);
  v19 = *sub_1E3E5FD24();
  sub_1E375C31C(v48);
  memcpy(v54, (v0 + 8), sizeof(v54));
  v55 = v19;
  v56 = *(v0 + 96);
  v57 = *(v0 + 98);
  memcpy(v49, (v0 + 8), sizeof(v49));
  v50 = v19;
  v51 = *(v0 + 96);
  v52 = *(v0 + 98);
  sub_1E375C2C0(v54, v47);
  sub_1E375C31C(v49);

  sub_1E375C2C0(v54, v47);

  v20 = OUTLINED_FUNCTION_18();
  v21 = sub_1E3BF493C();
  sub_1E3FB1C2C(v12, v54, v15, 0, v20 & 1, v21, v23, v22 & 1, v45, 0, 0);
  v24 = OUTLINED_FUNCTION_4_223();
  v25 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v47, (v24 + v25), 0x58uLL);
  sub_1E3743538(v47, v60, &qword_1ECF322C8);

  if (!v47[7])
  {
    v27 = v43;
    goto LABEL_23;
  }

  v26 = v47[1];

  sub_1E325F6F0(v47, &qword_1ECF322C8);
  v27 = v43;
  if (!v26)
  {
LABEL_23:
    sub_1E3F449AC(qword_1EE26CB60, type metadata accessor for ImageViewWithOverlay);
    sub_1E4202ED4();

    sub_1E375C31C(v54);

    sub_1E3ABD6A0(v45);
    *(v44 + *(v46 + 36)) = 256;
    sub_1E3741EA0(v44, v27, &qword_1ECF32340);
    v16 = v27;
    v17 = 0;
    v18 = v46;
    goto LABEL_24;
  }

  v28 = OUTLINED_FUNCTION_4_223();
  v29 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v59, (v28 + v29), 0x58uLL);
  sub_1E3743538(v59, v60, &qword_1ECF322C8);

  if (!*(&v59[3] + 1))
  {
    goto LABEL_22;
  }

  v60[0] = v59[0];
  v60[1] = v59[1];
  v60[2] = v59[2];
  v60[3] = v59[3];
  v60[4] = v59[4];
  v61 = *&v59[5];
  v30 = sub_1E3AB7854();
  sub_1E325F6F0(v59, &qword_1ECF322C8);
  if (!v30)
  {
    goto LABEL_22;
  }

  type metadata accessor for ImageViewModel();
  v31 = swift_dynamicCastClass();
  if (!v31 || (v32 = *(*v31 + 904), v33 = , v34 = v32(v33), v27 = v43, v42 = v34, v36 = v35, , !v36))
  {

LABEL_22:

    goto LABEL_23;
  }

  v37 = 0;
  v38 = *(v30 + 16);
  while (1)
  {
    if (v38 == v37)
    {

      goto LABEL_22;
    }

    if (v37 >= *(v30 + 16))
    {
      break;
    }

    v39 = v37 + 1;

    v58[13] = sub_1E403C3DC();
    v58[14] = v40;
    v58[11] = v42;
    v58[12] = v36;
    sub_1E32822E0();
    v41 = sub_1E4207254();

    v37 = v39;
    v27 = v43;
    if (v41)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_1E3F440B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v86 = v7;
  v87 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v90 = v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v85 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v88 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D108);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32310);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v91 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v80 - v31;
  v33 = *v3;

  sub_1E403C5C0(v34, v1, v32);
  *&v32[*(v27 + 44)] = 256;
  if ((v1 & 1) == 0)
  {
    v57 = 1;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v25, v57, 1, v15);
    v70 = v91;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v71, v72, v73);
    sub_1E3743538(v25, v22, &qword_1ECF3D108);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v74, v75, v76);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D110);
    sub_1E3743538(v22, v5 + *(v77 + 48), &qword_1ECF3D108);
    sub_1E325F6F0(v25, &qword_1ECF3D108);
    sub_1E325F6F0(v32, &qword_1ECF32310);
    sub_1E325F6F0(v22, &qword_1ECF3D108);
    sub_1E325F6F0(v70, &qword_1ECF32310);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v81 = v15;
  v82 = v22;
  v83 = v5;
  v35 = *(type metadata accessor for LibEditableCard() + 36);
  v80 = v3;
  if (*(v3 + v35))
  {
    OUTLINED_FUNCTION_8();
    v37 = *(v36 + 408);

    v37(v92, v38);

    v40 = *(v33 + 16);
    v39 = *(v33 + 24);
    OUTLINED_FUNCTION_8();
    v42 = *(v41 + 240);

    v44 = v42(v43);

    v45 = sub_1E3AB391C(v40, v39, v44);

    v46 = &v94;
    v47 = v96;
    if (v45)
    {
      v47 = &v95;
    }

    v48 = *v47;
    if (v45)
    {
      v46 = &v93;
    }

    if (v48)
    {
      v49 = *v46;
      memcpy(v99, v80 + 1, 0x5BuLL);

      v50 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v48, v99, v49, v50 & 1, 0, 0, v90);
      if (v49)
      {
        OUTLINED_FUNCTION_8();
        v52 = *(v51 + 200);

        v52(v53);
        LODWORD(v80) = v54;

        v55 = *(*v49 + 304);

        v55(v56);
      }

      else
      {
        LODWORD(v80) = 1;
      }

      v5 = v83;
      sub_1E4203DA4();
      sub_1E4200D94();

      sub_1E3844FE0(v92);

      v61 = v85;
      (*(v86 + 32))(v85, v90, v87);
      v59 = v89;
      v62 = (v61 + *(v89 + 36));
      v63 = v97;
      *v62 = *&v96[88];
      v62[1] = v63;
      v62[2] = v98;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v64, v65, v66);
      v60 = v88;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v67, v68, v69);
      v58 = 0;
    }

    else
    {
      sub_1E3844FE0(v92);
      v58 = 1;
      v5 = v83;
      v60 = v88;
      v59 = v89;
    }

    __swift_storeEnumTagSinglePayload(v60, v58, 1, v59);
    sub_1E3741EA0(v60, v25, &qword_1ECF3BC50);
    v57 = 0;
    v15 = v81;
    v22 = v82;
    goto LABEL_15;
  }

  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_3_221();
  sub_1E3F449AC(v78, v79);
  sub_1E4201744();
  __break(1u);
}

void sub_1E3F44750()
{
  type metadata accessor for LibLockupViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel();
    if (v1 <= 0x3F)
    {
      sub_1E3ABD168();
      if (v2 <= 0x3F)
      {
        sub_1E3AB3F5C();
        if (v3 <= 0x3F)
        {
          sub_1E3AB3FC0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E3F44824()
{
  result = qword_1ECF3D0E0;
  if (!qword_1ECF3D0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D0D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D0A8);
    type metadata accessor for LibLockupViewModel();
    sub_1E32752B0(&qword_1ECF3D0D0, &qword_1ECF3D0A8);
    sub_1E3F449AC(qword_1EE277BC8, type metadata accessor for LibLockupViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E3F449AC(&qword_1ECF3BB90, type metadata accessor for CollectionViewCellEditableModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D0E0);
  }

  return result;
}

uint64_t sub_1E3F449AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3F449F4()
{

  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3F44A38(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);
}

uint64_t sub_1E3F44A7C(void *a1)
{
  *a1 = *(v1 + 24);

  sub_1E3B50380((a1 + 1));
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3F44ADC()
{

  sub_1E38074D0();
  OUTLINED_FUNCTION_12_1();

  return v0;
}

uint64_t sub_1E3F44B14()
{

  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3F44B58(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);
}

uint64_t sub_1E3F44B9C(void *a1)
{
  *a1 = *(v1 + 32);

  sub_1E3B50380((a1 + 1));
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3F44BF8()
{

  sub_1E38074D0();
  OUTLINED_FUNCTION_12_1();

  return v0;
}

uint64_t sub_1E3F44C44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F44C98(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 272);

  return v2(v3);
}

uint64_t (*sub_1E3F44D08())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3846A58;
}

uint64_t sub_1E3F44D9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D128);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D120);
  sub_1E4200654();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

void (*sub_1E3F44E9C())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D128);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D120);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3F44FA8;
}

uint64_t sub_1E3F44FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F45028(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 320);

  return v2(v3);
}

uint64_t (*sub_1E3F45098())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3844B3C;
}

uint64_t sub_1E3F4512C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB38);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  sub_1E4200654();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

void (*sub_1E3F4522C())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB38);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3F45338;
}

void sub_1E3F45350(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3F45418()
{

  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3F45464(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);
}

uint64_t sub_1E3F454B0(void *a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__isPlayingVideo);

  sub_1E3B50380((a1 + 1));
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3F45520()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0);
  return sub_1E42006B4();
}

uint64_t sub_1E3F45650()
{
  v1 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_imageSizeMode;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F45684(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_imageSizeMode;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F457AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_mutePlaybackInBackground;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F457E0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_mutePlaybackInBackground;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F4586C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_exitsFullscreenWhenPlaybackEnds;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F458A0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_exitsFullscreenWhenPlaybackEnds;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F4592C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldPauseAtEnd;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F45960(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldPauseAtEnd;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F459EC()
{
  v1 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldShowImageAndStopAfterPausingAtEnd;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F45A20(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldShowImageAndStopAfterPausingAtEnd;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F45AAC()
{
  v1 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldStopPlayerWhenViewDisappears;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3F45AE0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldStopPlayerWhenViewDisappears;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F45B6C()
{
  sub_1E3D41778();
}

uint64_t sub_1E3F45B98()
{
  type metadata accessor for BackgroundPlaybackModel(0);
  v0 = swift_allocObject();

  sub_1E3F45DDC();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 320);

  v2(v3);
  OUTLINED_FUNCTION_36();
  (*(v4 + 408))(0x3FF0000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v5 + 480))(0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 504))(0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 528))(0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 552))(0);
  OUTLINED_FUNCTION_36();
  (*(v9 + 576))(0);
  return v0;
}

uint64_t sub_1E3F45D7C()
{
  v0 = swift_allocObject();
  sub_1E3F45DDC();
  return v0;
}

void sub_1E3F45DDC()
{
  OUTLINED_FUNCTION_31_1();
  v19 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D120);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA58);
  LOBYTE(v20) = 0;
  *(v0 + 3) = sub_1E3B508D0(&v20);
  LOBYTE(v20) = 0;
  *(v0 + 4) = sub_1E3B508D0(&v20);
  v13 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__supplementaryData;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
  sub_1E4200634();
  (*(v9 + 32))(&v0[v13], v12, v7);
  v14 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__viewModel;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
  sub_1E4200634();
  (*(v5 + 32))(&v0[v14], v1, v3);
  v15 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__isPlayingVideo;
  LOBYTE(v20) = 0;
  *&v0[v15] = sub_1E3B508D0(&v20);
  v16 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_didPlayToEndSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *&v0[v16] = sub_1E4200544();
  OUTLINED_FUNCTION_56_35(OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_playbackDelayInterval);
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_imageSizeMode] = 2;
  v17 = &v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_idealAspectRatio];
  *v17 = 0;
  v17[8] = v18;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_mutePlaybackInBackground] = 2;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_exitsFullscreenWhenPlaybackEnds] = v18;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldPauseAtEnd] = v18;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldShowImageAndStopAfterPausingAtEnd] = v18;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldStopPlayerWhenViewDisappears] = v18;
  *(v0 + 2) = v19;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F46080()
{

  v1 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__supplementaryData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D120);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__viewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_1E3F46158()
{
  sub_1E3F46080();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1E3F461AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BackgroundPlaybackModel(0);
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3F461EC()
{

  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3F46238(void *a1)
{
  v4 = a1;
  v2 = a1;
  OUTLINED_FUNCTION_12_1();

  sub_1E3B50420(&v4);
}

uint64_t sub_1E3F46298()
{

  sub_1E38074D0();
  OUTLINED_FUNCTION_12_1();

  return v0;
}

uint64_t sub_1E3F46308()
{
  v1 = OBJC_IVAR____TtC8VideosUI25BackgroundMediaImageModel__loadedImage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D130);
  v3 = 0;
  *(v0 + v1) = sub_1E3B508D0(&v3);
  OUTLINED_FUNCTION_56_35(OBJC_IVAR____TtC8VideosUI25BackgroundMediaImageModel_downloadableImageWidth);
  return sub_1E3B500B4();
}

uint64_t sub_1E3F4638C()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F46400()
{
  type metadata accessor for BackgroundPlaybackModel(0);
  OUTLINED_FUNCTION_8_176();
  sub_1E3F49D40(v0, v1);
  OUTLINED_FUNCTION_57();
  return sub_1E42010C4();
}

void sub_1E3F4646C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v8 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v12 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v13 = VUISignpostLogObject();
  sub_1E41FFBA4();

  v14 = objc_allocWithZone(type metadata accessor for BackgroundMediaHostViewController());

  v16 = sub_1E3F472F0(v15, v3);
  sub_1E324FBDC();
  v17 = OUTLINED_FUNCTION_53_46();
  v18(v17);
  v19 = v16;
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_6_21();
    v28 = v8;
    v29 = OUTLINED_FUNCTION_26_8();
    v22 = v29;
    *v13 = 136315138;
    v23 = sub_1E41E1364(v19);
    v27 = v4;
    v25 = sub_1E3270FC8(v23, v24, &v29);

    *(v13 + 1) = v25;
    _os_log_impl(&dword_1E323F000, v20, v21, "BackgroundMediaView::makePlatformViewController %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v8 = v28;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v6 + 8))(v1, v27);
  }

  else
  {

    (*(v6 + 8))(v1, v4);
  }

  sub_1E4206B94();
  v26 = VUISignpostLogObject();
  sub_1E41FFBA4();

  (*(v10 + 8))(v0, v8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F46764(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(OUTLINED_FUNCTION_11_5());
  v4 = OUTLINED_FUNCTION_38();
  return sub_1E3F472F0(v4, a2);
}

void sub_1E3F467C4()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v17 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v18 = VUISignpostLogObject();
  sub_1E41FFBA4();

  v19 = sub_1E324FBDC();
  v32 = v8;
  (*(v8 + 16))(v12, v19, v6);
  v20 = v5;
  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  if (os_log_type_enabled(v21, v22))
  {
    v29 = v6;
    v23 = OUTLINED_FUNCTION_6_21();
    v30 = v13;
    v24 = OUTLINED_FUNCTION_100();
    v33 = v24;
    *v23 = 136315138;
    v25 = sub_1E41E1364(v20);
    v27 = sub_1E3270FC8(v25, v26, &v33);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1E323F000, v21, v22, "BackgroundMediaView::updatePlatformViewController %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v13 = v30;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v32 + 8))(v12, v29);
  }

  else
  {

    (*(v32 + 8))(v12, v6);
  }

  sub_1E3F46AB4(v3, v31);
  sub_1E4206B94();
  v28 = VUISignpostLogObject();
  sub_1E41FFBA4();

  (*(v15 + 8))(v0, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F46AB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53[-v12];
  v14 = *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel];
  v15 = MEMORY[0x1E69E7CD0];
  if (v14 != a1)
  {
    *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel] = a1;

    v16 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers;
    swift_beginAccess();
    *&v2[v16] = v15;
  }

  v17 = *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel];
  v61 = v14;
  if (a2)
  {
    if (v17)
    {
      v18 = v17 == a2;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_11;
    }

LABEL_9:
    v60 = 0;
    goto LABEL_12;
  }

  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_11:
  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel] = a2;

  v19 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_mediaImageObservers;
  v60 = 1;
  swift_beginAccess();
  *&v2[v19] = v15;

LABEL_12:
  v20 = sub_1E324FBDC();
  v58 = *(v7 + 16);
  v59 = v20;
  v58(v13);
  v21 = v2;
  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  if (os_log_type_enabled(v22, v23))
  {
    v57 = v5;
    v54 = v61 != a1;
    v24 = swift_slowAlloc();
    v56 = v7;
    v25 = v24;
    v26 = OUTLINED_FUNCTION_100();
    v55 = a1;
    v27 = v26;
    v62 = v26;
    *v25 = 136446722;
    v28 = sub_1E3F471E0();
    v30 = v10;
    v31 = sub_1E3270FC8(v28, v29, &v62);

    *(v25 + 4) = v31;
    v10 = v30;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v54;
    v5 = v57;
    *(v25 + 18) = 1024;
    *(v25 + 20) = v60;
    _os_log_impl(&dword_1E323F000, v22, v23, "    %{public}s updatePlaybackModel: hasPlaybackModelChanged = %{BOOL}d,\n    hasMediaImageChanged = %{BOOL}d", v25, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    a1 = v55;
    OUTLINED_FUNCTION_6_0();
    v7 = v56;
    OUTLINED_FUNCTION_6_0();
  }

  v32 = *(v7 + 8);
  v32(v13, v5);
  if (v21[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView])
  {
    v33 = [v21 vuiView];
    if (v33)
    {
      v34 = v33;
      [v33 bounds];
      v36 = v35;

      sub_1E3F47ADC(v36);
      v37 = [v21 vuiView];
      v38 = v61;
      if (v37)
      {
        v39 = v37;
        [v37 bounds];
        v41 = v40;
        v43 = v42;

        sub_1E3F47C68(v41, v43);
        if (v38 != a1)
        {
          sub_1E3F483D8();
        }

        if (v60)
        {
          sub_1E3F48C3C();
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  (v58)(v10, v59, v5);
  v44 = v21;
  v45 = v10;
  v46 = sub_1E41FFC94();
  v47 = sub_1E4206814();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_6_21();
    v49 = OUTLINED_FUNCTION_100();
    v62 = v49;
    *v48 = 136446210;
    v50 = sub_1E3F471E0();
    v52 = sub_1E3270FC8(v50, v51, &v62);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_1E323F000, v46, v47, "%{public}s updatePlaybackModel: view isn't loaded yet, ignore", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v32(v45, v5);
}

uint64_t sub_1E3F46F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3F49C88();

  return sub_1E3E36CBC(a1, a2, v4);
}

uint64_t sub_1E3F46FBC()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F49C88();
  v1 = OUTLINED_FUNCTION_74();

  return sub_1E3E36CD0(v1, v2, v0, v3);
}

uint64_t sub_1E3F47094()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F49A04();
  v0 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDDB778](v0);
}

uint64_t sub_1E3F470EC()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F49A04();
  v0 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDDB740](v0);
}

void sub_1E3F47144()
{
  sub_1E3F49A04();
  sub_1E42025D4();
  __break(1u);
}

id sub_1E3F4716C()
{
  v1 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController);
  }

  else
  {
    v4 = [objc_allocWithZone(VUIBackgroundMediaController) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_1E3F471E0()
{
  if ([objc_opt_self() runningAnInternalBuild])
  {
    sub_1E42074B4();

    v1 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v1);

    MEMORY[0x1E69109E0](8250, 0xE200000000000000);
  }

  else
  {
    sub_1E42074B4();
  }

  v2 = OUTLINED_FUNCTION_27_0();
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_1E3F472F0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_11_5();
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel;
  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel] = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v8 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers] = v8;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v9 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_mediaImageObservers] = v9;
  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController] = 0;
  v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView] = 0;
  v15 = qword_1EE291AA0;
  result = sub_1E4207944();
  v11 = &v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_name];
  *v11 = result;
  v11[1] = v12;
  if (__OFADD__(qword_1EE291AA0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EE291AA0;
    *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel] = v3;
    v13 = *&v2[v7];
    *&v4[v7] = a2;

    v14.receiver = v4;
    v14.super_class = ObjectType;
    objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
    OUTLINED_FUNCTION_38();

    return v13;
  }

  return result;
}

void sub_1E3F47468()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers) = v1;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v2 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_mediaImageObservers) = v2;
  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3F47568()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, sel_vui_viewDidLayoutSubviews);
  v2 = sub_1E3F4716C();
  v3 = [v2 vuiView];

  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_49_55();
  if (!v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v4 bounds];
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_48_49(v5, sel_setFrame_);

  if (v1[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView])
  {
    return;
  }

  v1[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView] = 1;
  v6 = sub_1E3F4716C();
  v7 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel;
  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 520);

  v9(v10);
  v11 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v11, sel_setShouldPauseAtEnd_);

  v12 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
  OUTLINED_FUNCTION_19_132();
  v14 = *(v13 + 544);

  v15 = v6;
  v14();
  v16 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v16, sel_setShouldShowImageAndStopAfterPausingAtEnd_);

  [*&v1[v12] setVideoSwappingAnimationType_];
  [*&v1[v12] setStopPlayerWhenExitingFullScreen_];
  OUTLINED_FUNCTION_19_132();
  v18 = *(v17 + 496);

  v19 = v15;
  v18();
  v20 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v20, sel_setExitsFullscreenWhenPlaybackEnds_);

  OUTLINED_FUNCTION_19_132();
  v22 = *(v21 + 568);

  v23 = v19;
  v22();
  v24 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v24, sel_setStopPlayerWhenViewDisappears_);

  v25 = *&v1[v7];
  v26 = *(*v25 + 472);

  v28 = v26(v27);

  if (v28 == 2)
  {
    v29 = *&v1[v12];
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 sharedInstance];
    v33 = [v32 autoPlayConfig];

    v25 = [v33 autoPlayVideoSound];
    [v31 setMutePlaybackInBackground_];
  }

  else
  {
    [*&v1[v12] setMutePlaybackInBackground_];
  }

  OUTLINED_FUNCTION_8();
  v35 = *(v34 + 200);
  v37 = v36;
  OUTLINED_FUNCTION_11_5();

  v35(v38);
  v39 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v39, sel_setPlaybackEnabled_);

  sub_1E3F490A0();
  v40 = OUTLINED_FUNCTION_49_55();
  if (!v40)
  {
    goto LABEL_13;
  }

  v41 = v40;
  [v40 bounds];
  v43 = v42;

  sub_1E3F47ADC(v43);
  v44 = OUTLINED_FUNCTION_49_55();
  if (!v44)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v45 = v44;
  [v44 bounds];
  v47 = v46;
  v49 = v48;

  sub_1E3F47C68(v47, v49);
  sub_1E3F483D8();
  sub_1E3F48C3C();
}

void sub_1E3F47ADC(double a1)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a1);
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 312);

  v6 = v4(v5);

  if (v6)
  {
    (*(*v6 + 392))(v7);
    OUTLINED_FUNCTION_31_4();

    v8 = [v1 vuiTraitCollection];
    sub_1E3C2AE10();
    v11 = v9;
    OUTLINED_FUNCTION_36();
    (*(v10 + 1640))();
  }
}

void sub_1E3F47C68(double a1, double a2)
{
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v73 = v7;
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71 - v10;
  type metadata accessor for LayoutGrid();
  v12 = sub_1E3A2579C(a1);
  sub_1E3D417B8(v12, v94);
  v76 = v94[0];
  v14 = *&v94[1];
  v13 = *&v94[2];
  v15 = v95;
  v92 = v96;
  v93 = v97;
  v16 = v98;
  v89 = v99;
  v90 = v100;
  v91 = v101;
  v17 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel;
  v18 = *(*&v3[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel] + 16);

  v75 = v18;
  v19 = sub_1E38E5664(39, v18);
  v71 = v11;
  v77 = v15;
  if (v19)
  {
    LOBYTE(v18) = v3;
    sub_1E3DF9E68(v102);
    v92 = *&v102[17];
    v93 = v103;
    v89 = v104;
    v90 = v105;
    v91 = v106;
    LOBYTE(v78[0]) = 0;
    OUTLINED_FUNCTION_8();
    v21 = *(v20 + 424);

    LOBYTE(v21) = v21(v22);

    v23 = LOBYTE(v78[0]);
    *v107 = v14;
    *&v107[1] = v13;
    v108 = v77;
    v109 = v96;
    v110 = v97;
    v111 = v16;
    v112 = v99;
    v113 = v100;
    v114 = v101;
    sub_1E3DC050C(v107);
    v77 = v23;
    v16 = v21 & 1;
  }

  else
  {
    a1 = v14;
    a2 = v13;
  }

  v24 = *(**(v17 + v3) + 264);

  v26 = v24(v25);

  if (v26)
  {
    OUTLINED_FUNCTION_5_203();
    v27 = sub_1E3D431AC();
    v28 = sub_1E3D431B4(v26, v75, 0, v107, v27);
  }

  else
  {
    v29 = *(v17 + v3);
    v24 = *(*v29 + 312);
    v17 = (*v29 + 312);

    v31 = v24(v30);

    if (v31)
    {
      OUTLINED_FUNCTION_5_203();
      v32 = sub_1E3D41B90();
      v28 = sub_1E3D41C40(v31, v75, v32, v107);
    }

    else
    {

      v28 = 0;
      v24 = v76;
      v17 = v94;
      LOBYTE(v18) = v77;
    }
  }

  v78[0] = v24;
  *&v78[1] = a1;
  *&v78[2] = a2;
  v79 = v18;
  v80 = v92;
  v81 = v93;
  v82 = v16;
  v83 = v89;
  v84 = v90;
  v85 = v91;
  v33 = *(v17 + 90);
  v34 = *(v17 + 106);
  v88 = *(v17 + 122);
  v87 = v34;
  v86 = v33;
  sub_1E39F8998(v78);
  if (v28)
  {
    v35 = *(**&v3[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel] + 400);

    v37 = COERCE_DOUBLE(v35(v36));
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      [v28 setPlaybackDelayInterval_];
    }

    [v28 setShowsSecondaryVideoView_];
    [v28 setAllowsPictureInPicture_];
    [v28 setAutomaticPlaybackStart_];
    v40 = sub_1E3F4716C();
    v41 = [v40 currentMediaInfo];

    if (v41 && (sub_1E3D8F47C(), v42 = v28, v43 = sub_1E4206F64(), v41, v42, (v43 & 1) != 0))
    {
      v44 = sub_1E324FBDC();
      v46 = v73;
      v45 = v74;
      v47 = v71;
      (*(v73 + 16))(v71, v44, v74);
      v48 = v3;
      v49 = sub_1E41FFC94();
      v50 = sub_1E4206814();

      if (os_log_type_enabled(v49, v50))
      {
        OUTLINED_FUNCTION_6_21();
        v51 = OUTLINED_FUNCTION_26_8();
        v107[0] = v51;
        *v28 = 136446210;
        v52 = sub_1E3F471E0();
        v54 = sub_1E3270FC8(v52, v53, v107);

        *(v28 + 1) = v54;
        _os_log_impl(&dword_1E323F000, v49, v50, "%{public}s configureMediaInfos: Media info is the same, ignore", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();

        (*(v46 + 8))(v71, v45);
      }

      else
      {

        (*(v46 + 8))(v47, v45);
      }
    }

    else
    {
      v55 = *&v3[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1E4298880;
      *(v56 + 32) = v28;
      v57 = sub_1E3D8F47C();
      v58 = v28;
      v59 = v55;
      OUTLINED_FUNCTION_57();
      sub_1E42062A4();
      OUTLINED_FUNCTION_11_5();

      [v59 setMediaInfos:v57 selectedIndex:0 animated:1];
    }
  }

  else
  {
    v60 = sub_1E324FBDC();
    v62 = v72;
    v61 = v73;
    v63 = v74;
    (*(v73 + 16))(v72, v60, v74);
    v64 = v3;
    v65 = sub_1E41FFC94();
    v66 = sub_1E42067F4();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = OUTLINED_FUNCTION_6_21();
      v107[0] = OUTLINED_FUNCTION_100();
      *v67 = 136446210;
      v68 = sub_1E3F471E0();
      v70 = sub_1E3270FC8(v68, v69, v107);

      *(v67 + 4) = v70;
      _os_log_impl(&dword_1E323F000, v65, v66, "%{public}s Media info is nil", v67, 0xCu);
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v61 + 8))(v62, v63);
  }
}

void sub_1E3F483D8()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D160);
  OUTLINED_FUNCTION_0_10();
  v57 = v2;
  v58 = v1;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v53 - v4;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v62 = v6;
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v17, v10);
  v18 = v0;
  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_21();
    v61 = v10;
    v22 = v21;
    v23 = OUTLINED_FUNCTION_100();
    v64 = v23;
    *v22 = 136446210;
    v24 = sub_1E3F471E0();
    v26 = sub_1E3270FC8(v24, v25, &v64);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1E323F000, v19, v20, "%{public}s addPlaybackObservers", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v12 + 8))(v16, v61);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
  }

  v27 = objc_opt_self();
  v61 = v27;
  v28 = [v27 defaultCenter];
  v29 = sub_1E3F4716C();
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_9_164();
  v59 = sub_1E3F49D40(v30, v31);
  OUTLINED_FUNCTION_40_1();
  v32 = v63;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  v54 = *(v62 + 8);
  v62 += 8;
  v54(v9, v32);
  v33 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers;
  OUTLINED_FUNCTION_44_7();
  sub_1E42004C4();
  swift_endAccess();

  v34 = [v27 &selRef_connectWithCompletionHandler_progressHandler_ + 5];
  v60 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
  v35 = *&v18[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController];
  OUTLINED_FUNCTION_26_102();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_40_1();
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  v36 = v54;
  v54(v9, v32);
  OUTLINED_FUNCTION_44_7();
  sub_1E42004C4();
  swift_endAccess();

  v37 = [v61 defaultCenter];
  v38 = *&v18[v60];
  OUTLINED_FUNCTION_26_102();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_40_1();
  v39 = v63;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  v36(v9, v39);
  v55 = v33;
  OUTLINED_FUNCTION_44_7();
  sub_1E42004C4();
  swift_endAccess();

  v40 = [v61 defaultCenter];
  v41 = *&v18[v60];
  OUTLINED_FUNCTION_26_102();

  v42 = v56;
  v43 = v63;
  sub_1E4200744();
  v36(v9, v43);
  swift_getKeyPath();
  v64 = *&v18[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel];
  OUTLINED_FUNCTION_13_160(&qword_1ECF3D168, &qword_1ECF3D160);
  OUTLINED_FUNCTION_31_4();

  v44 = v58;
  sub_1E4200854();
  OUTLINED_FUNCTION_31_4();

  (*(v57 + 8))(v42, v44);
  OUTLINED_FUNCTION_44_7();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_8();
  v46 = *(v45 + 224);

  v46(v47);
  OUTLINED_FUNCTION_11_5();

  v48 = sub_1E3B501F8();

  v64 = v48;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B0);
  sub_1E32752B0(&qword_1EE28A1D0, &qword_1ECF2E1B0);
  sub_1E4200844();

  OUTLINED_FUNCTION_44_7();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_36();
  v50 = *(v49 + 256);

  v50(v51);

  v52 = sub_1E3B501F8();

  v64 = v52;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_44_7();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F48C3C()
{
  OUTLINED_FUNCTION_31_1();
  v45 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v43 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v42 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D150);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v17, v10);
  v18 = v0;
  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_21();
    v41 = v10;
    v22 = v21;
    v40 = OUTLINED_FUNCTION_100();
    v46 = v40;
    *v22 = 136446210;
    v23 = sub_1E3F471E0();
    v25 = v7;
    v26 = v5;
    v27 = sub_1E3270FC8(v23, v24, &v46);

    *(v22 + 4) = v27;
    v5 = v26;
    v7 = v25;
    _os_log_impl(&dword_1E323F000, v19, v20, "%{public}s addMediaImageObservers", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v12 + 8))(v16, v41);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
  }

  v28 = sub_1E3F4716C();
  v29 = *&v18[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel];
  if (v29)
  {
    v30 = objc_opt_self();

    v31 = [v30 defaultCenter];
    v32 = v28;
    v33 = v42;
    sub_1E4206C14();

    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v32;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E160);
    OUTLINED_FUNCTION_9_164();
    sub_1E3F49D40(v35, v36);
    v38 = v44;
    v37 = v45;
    sub_1E4200744();

    (*(v43 + 8))(v33, v37);
    swift_getKeyPath();
    v46 = v29;
    OUTLINED_FUNCTION_13_160(&qword_1ECF3D158, &qword_1ECF3D150);
    sub_1E4200854();

    (*(v7 + 8))(v38, v5);
    OUTLINED_FUNCTION_44_7();
    sub_1E42004C4();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3F490A0()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_4_114();
  v3(v2);
  v4 = v0;
  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v8 = OUTLINED_FUNCTION_100();
    v21 = v8;
    *v7 = 136446210;
    v9 = sub_1E3F471E0();
    v11 = sub_1E3270FC8(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E323F000, v5, v6, "%{public}s hostMediaController", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
  }

  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  v14 = sub_1E3F4716C();
  [v4 vui:v14 addChildViewController:?];

  v15 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
  result = [*&v4[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController] vuiView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = result;
  result = OUTLINED_FUNCTION_49_55();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result bounds];
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_48_49(v18, sel_setFrame_);

  result = OUTLINED_FUNCTION_49_55();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = result;
  result = [*&v4[v15] vuiView];
  if (result)
  {
    v20 = result;
    [v19 addSubview_];

    return [*&v4[v15] vui:v4 didMoveToParentViewController:?];
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1E3F49324()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v8 = OUTLINED_FUNCTION_4_114();
  v9(v8);
  v10 = v0;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_26_8();
    *v2 = 136446466;
    v13 = sub_1E3F471E0();
    sub_1E3270FC8(v13, v14, &v22);
    OUTLINED_FUNCTION_61_27();
    OUTLINED_FUNCTION_37_69();
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v15, v16, "%{public}s update isPlayingVideo = %{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v6 + 8))(v1);
  }

  else
  {

    v17 = OUTLINED_FUNCTION_74();
    v19(v17, v18);
  }

  OUTLINED_FUNCTION_8();
  v21 = *(v20 + 368);

  v21(v4 & 1);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F494D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

void sub_1E3F49570()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E324FBDC();
  v9 = OUTLINED_FUNCTION_53_46();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_26_8();
    *v2 = 136446466;
    v14 = sub_1E3F471E0();
    v25 = v5;
    v16 = v11;
    v17 = v4;
    v18 = sub_1E3270FC8(v14, v15, &v26);

    *(v2 + 4) = v18;
    v4 = v17;
    v11 = v16;
    *(v2 + 12) = 1024;
    *(v2 + 14) = v4 & 1;
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v19, v20, "%{public}s update isPlaybackEnabled = %{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v7 + 8))(v1, v25);
  }

  else
  {

    (*(v7 + 8))(v1, v5);
  }

  v21 = sub_1E3F4716C();
  [v21 setPlaybackEnabled:v4 & 1 imageVideoSwapBehavior:1];

  if (TVAppFeature.isEnabled.getter(17))
  {
    v22 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
    if ([*&v11[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController] isPlaybackEnabled])
    {
      if (([*&v11[v22] hasBackgroundVideo] & 1) == 0)
      {

        v23 = OUTLINED_FUNCTION_27_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v23);
        OUTLINED_FUNCTION_0_218();
        sub_1E32752B0(v24, &unk_1ECF326C0);
        sub_1E4200624();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F497D0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v8 = OUTLINED_FUNCTION_4_114();
  v9(v8);
  v10 = v0;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_26_8();
    *v2 = 136446466;
    v13 = sub_1E3F471E0();
    sub_1E3270FC8(v13, v14, &v22);
    OUTLINED_FUNCTION_61_27();
    OUTLINED_FUNCTION_37_69();
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v15, v16, "%{public}s updateFullScreen: isFullScreenEnabled = %{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v6 + 8))(v1);
  }

  else
  {

    v17 = OUTLINED_FUNCTION_74();
    v19(v17, v18);
  }

  v20 = sub_1E3F4716C();
  v21 = v20;
  if (v4)
  {
    [v20 transitionToFullScreenAnimated_];
  }

  else
  {
    [v20 transitionToForeground:0 animated:1];
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F49980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3F461EC();
  *a1 = result;
  return result;
}

uint64_t sub_1E3F499AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1E3F46238(v1);
}

unint64_t sub_1E3F499DC(uint64_t a1)
{
  result = sub_1E3F49A04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3F49A04()
{
  result = qword_1ECF3D138;
  if (!qword_1ECF3D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D138);
  }

  return result;
}

unint64_t sub_1E3F49A5C()
{
  result = qword_1ECF3D140;
  if (!qword_1ECF3D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D140);
  }

  return result;
}

void sub_1E3F49AB8()
{
  sub_1E381A32C(319, &qword_1EE289FC8, &unk_1ECF2EB10);
  if (v0 <= 0x3F)
  {
    sub_1E381A32C(319, &qword_1EE289FD0, &qword_1ECF2BB28);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1E3F49C88()
{
  result = qword_1ECF3D148;
  if (!qword_1ECF3D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D148);
  }

  return result;
}

void sub_1E3F49CDC(void *a1@<X8>)
{
  v3 = [*(v1 + 16) proxyImageView];
  v4 = [v3 image];

  *a1 = v4;
}

uint64_t sub_1E3F49D40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3F49D98()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3F49324();
  }
}

uint64_t sub_1E3F49DE4()
{
  OUTLINED_FUNCTION_15_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2);
    OUTLINED_FUNCTION_0_218();
    sub_1E32752B0(v3, &unk_1ECF326C0);
    sub_1E4200624();
  }

  return result;
}

void sub_1E3F49ED8(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a2(v3);
  }
}

id OUTLINED_FUNCTION_48_49(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_56_35(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t sub_1E3F49F8C(char a1)
{
  result = 0x64696C61766E69;
  switch(a1)
  {
    case 1:
      result = 6648432;
      break;
    case 2:
      result = 1852399981;
      break;
    case 3:
      result = 1953722224;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3F49FF8()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3F4A050(unsigned __int8 a1, char a2)
{
  v2 = 0x64696C61766E69;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x64696C61766E69;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6648432;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1852399981;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1953722224;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6648432;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1852399981;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1953722224;
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

uint64_t sub_1E3F4A174()
{
  sub_1E4207B44();
  sub_1E3F4A1C4();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F4A1C4()
{
  sub_1E4206014();
}

uint64_t sub_1E3F4A26C()
{
  sub_1E4207B44();
  sub_1E3F4A1C4();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F4A2B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F49FF8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3F4A2E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3F49F8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3F4A334()
{
  OUTLINED_FUNCTION_173();
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v0 = OUTLINED_FUNCTION_32_0();

  return v1(v0);
}

uint64_t sub_1E3F4A3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3F4A410()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_173();
  v4 = type metadata accessor for AlertContext(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E3F4EC3C(v2, &selRef_title);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v13 = [objc_opt_self() sharedInstance];
    if (!v13 || (v14 = v13, v11 = sub_1E3741090(0xD000000000000013, 0x80000001E4289AC0, v13), v12 = v15, v14, !v12))
    {

      v11 = 0;
      v12 = 0xE000000000000000;
    }
  }

  v16 = sub_1E3F4EC3C(v2, &selRef_message);
  v18 = v17;
  v19 = [v2 actions];
  sub_1E3280A90(0, &qword_1ECF372A0);
  v20 = sub_1E42062B4();

  sub_1E41FE614();
  v21 = (v8 + v4[5]);
  *v21 = v11;
  v21[1] = v12;
  v22 = (v8 + v4[6]);
  *v22 = v16;
  v22[1] = v18;
  *(v8 + v4[7]) = MEMORY[0x1E69E7CC0];
  *(v8 + v4[8]) = v20;
  v23 = *(type metadata accessor for DestinationContext(0) + 32);
  sub_1E3F4A3AC(v8, v0 + v23);
  OUTLINED_FUNCTION_26_103(v0 + v23);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  *(v0 + 48) = 1;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F4A5D4()
{
  OUTLINED_FUNCTION_15_0();
  v0 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v0, v1);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F4A610(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_1E37FAED8(v5, v6);
}

uint64_t sub_1E3F4A658()
{
  OUTLINED_FUNCTION_15_0();
  v0 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v0, v1);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F4A694(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_1E37FAED8(v5, v6);
}

uint64_t sub_1E3F4A6DC()
{
  OUTLINED_FUNCTION_15_0();
  v0 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v0, v1);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F4A718(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return sub_1E37FAED8(v5, v6);
}

uint64_t sub_1E3F4A828@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3F4A9D0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4A814();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4AA10;
}

uint64_t sub_1E3F4AA4C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void sub_1E3F4AB4C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3 & 1;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 488);
  if ((v10() & 1) != v4)
  {
    sub_1E3F4E34C();
  }

  v11 = sub_1E324FBDC();
  (*(v7 + 16))(v1, v11, v5);
  swift_retain_n();
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  if (os_log_type_enabled(v12, v13))
  {
    v24 = v5;
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_1E3270FC8(*(v0 + 16), *(v0 + 24), &v25);
    *(v14 + 12) = 2080;
    v15 = sub_1E41E1364(v0);
    v17 = sub_1E3270FC8(v15, v16, &v25);

    *(v14 + 14) = v17;
    *(v14 + 22) = 1024;
    v19 = (v10)(v18);

    *(v14 + 24) = v19 & 1;

    _os_log_impl(&dword_1E323F000, v12, v13, "Router::Route changed. %s-%s did change navigation flag to %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v20 = (*(v7 + 8))(v1, v24);
  }

  else
  {

    v20 = (*(v7 + 8))(v1, v5);
  }

  if ((*(*v2 + 296))(v20))
  {
    OUTLINED_FUNCTION_60_0();
    v21();
    v22 = OUTLINED_FUNCTION_32_0();
    sub_1E37FAED8(v22, v23);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t (*sub_1E3F4AEB0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4AE00();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4AEF0;
}

uint64_t sub_1E3F4AF2C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void sub_1E3F4B02C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3F4B108@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3F4B2B0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4B0F4();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4B2F0;
}

uint64_t sub_1E3F4B32C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3F4B440@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3F4B5E8(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4B42C();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4B628;
}

uint64_t sub_1E3F4B664()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3F4B778@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3F4B920(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4B764();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4B960;
}

uint64_t sub_1E3F4B99C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  (*(v5 + 16))(v1, a1, v3);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_1E3F4BAB4()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void *sub_1E3F4BC1C()
{
  v1 = OBJC_IVAR____TtC8VideosUI5Route_eventDataSource;
  OUTLINED_FUNCTION_15_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F4BC5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI5Route_eventDataSource;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3F4BCF8()
{
  v1 = OBJC_IVAR____TtC8VideosUI5Route_nextEventType;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

uint64_t sub_1E3F4BD30(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI5Route_nextEventType;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3F4BDC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_15_0();
  return sub_1E379D7E4(v1 + v3, a1, &unk_1ECF3F9E0);
}

uint64_t sub_1E3F4BE20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3();
  sub_1E3F4EC94(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1E3F4BF48()
{
  OUTLINED_FUNCTION_201_0();
  sub_1E42074B4();
  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](8992, 0xE200000000000000);
  MEMORY[0x1E69109E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E69109E0](0x6576457478656E20, 0xEF3A65707954746ELL);
  OUTLINED_FUNCTION_9_2();
  v3 = (*(v2 + 776))();
  sub_1E3F4C260(v3);
  OUTLINED_FUNCTION_9_2();
  v5 = (*(v4 + 488))();
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v6)
  {
    v8 = "TV.Error.Unexpected";
  }

  else
  {
    v8 = " isPresentingSheet";
  }

  MEMORY[0x1E69109E0](v7, v8 | 0x8000000000000000);

  sub_1E3F4C5B0();
  OUTLINED_FUNCTION_37_70();
  OUTLINED_FUNCTION_60_34();

  OUTLINED_FUNCTION_9_2();
  (*(v9 + 536))();
  OUTLINED_FUNCTION_37_70();
  OUTLINED_FUNCTION_60_34();

  OUTLINED_FUNCTION_9_2();
  (*(v10 + 440))();
  OUTLINED_FUNCTION_60_34();

  OUTLINED_FUNCTION_9_2();
  (*(v11 + 584))();
  OUTLINED_FUNCTION_60_34();

  OUTLINED_FUNCTION_9_2();
  (*(v12 + 632))();
  OUTLINED_FUNCTION_37_70();
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0xD000000000000011;
  }

  if (v13)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = v14;
  }

  MEMORY[0x1E69109E0](v15, v16);

  OUTLINED_FUNCTION_200();
}

uint64_t sub_1E3F4C260(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x64696C61766E69;
  switch(a1)
  {
    case 1:
      v2 = 0xE300000000000000;
      v3 = 6648432;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1852399981;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1953722224;
      break;
    default:
      break;
  }

  MEMORY[0x1E69109E0](v3, v2);
}

BOOL sub_1E3F4C300()
{
  v2 = type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  OUTLINED_FUNCTION_36();
  if ((*(v10 + 536))() & 1) != 0 || (OUTLINED_FUNCTION_8(), ((*(v11 + 440))()))
  {
    v12 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v12 = (*(v13 + 584))();
  }

  OUTLINED_FUNCTION_8();
  if ((*(v14 + 632))())
  {
    return 1;
  }

  OUTLINED_FUNCTION_8();
  (*(v15 + 800))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_1E325F6F0(v1, &unk_1ECF3F9E0);
    OUTLINED_FUNCTION_25_89();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  else
  {
    sub_1E3F4ED04(v1, v0);
    sub_1E325F6F0(v1, &unk_1ECF3F9E0);
    sub_1E379D7E4(v0 + *(v2 + 32), v9, &qword_1ECF3D170);
    sub_1E3F4ED68(v0);
    OUTLINED_FUNCTION_63_31();
    if (!v20)
    {
      sub_1E325F6F0(v9, &qword_1ECF3D170);
      return 1;
    }
  }

  sub_1E325F6F0(v9, &qword_1ECF3D170);
  return (v12 & 1) == 0;
}

uint64_t sub_1E3F4C5B0()
{
  v2 = type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  OUTLINED_FUNCTION_36();
  if ((*(v10 + 536))())
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v11 + 440))())
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v12 + 584))())
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8();
  (*(v15 + 800))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_1E325F6F0(v1, &unk_1ECF3F9E0);
    OUTLINED_FUNCTION_25_89();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
LABEL_10:
    sub_1E325F6F0(v9, &qword_1ECF3D170);
    OUTLINED_FUNCTION_36();
    v13 = (*(v21 + 632))();
    return v13 & 1;
  }

  sub_1E3F4ED04(v1, v0);
  sub_1E325F6F0(v1, &unk_1ECF3F9E0);
  sub_1E379D7E4(v0 + *(v2 + 32), v9, &qword_1ECF3D170);
  sub_1E3F4ED68(v0);
  OUTLINED_FUNCTION_63_31();
  if (v20)
  {
    goto LABEL_10;
  }

  sub_1E325F6F0(v9, &qword_1ECF3D170);
LABEL_4:
  v13 = 1;
  return v13 & 1;
}

uint64_t sub_1E3F4C85C()
{
  v0 = swift_allocObject();
  sub_1E3F4C8B4();
  return v0;
}

void sub_1E3F4C8B4()
{
  OUTLINED_FUNCTION_31_1();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_12();
  *(v0 + 104) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 112) = 1;
  OUTLINED_FUNCTION_54_45();
  v9 = *(v7 + 32);
  v10 = OUTLINED_FUNCTION_18_123();
  v9(v10);
  OUTLINED_FUNCTION_54_45();
  v11 = OUTLINED_FUNCTION_18_123();
  v9(v11);
  OUTLINED_FUNCTION_54_45();
  v12 = OUTLINED_FUNCTION_18_123();
  v9(v12);
  OUTLINED_FUNCTION_54_45();
  v13 = OUTLINED_FUNCTION_18_123();
  v9(v13);
  OUTLINED_FUNCTION_54_45();
  v14 = OUTLINED_FUNCTION_18_123();
  v9(v14);
  v15 = (v0 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v0 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler);
  *v16 = 0;
  v16[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_eventViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_eventDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_nextEventType) = 0;
  type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_nextRoute) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_presentedRoute) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_isHandlingRoutingEvent) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable) = 0;
  *(v0 + 16) = v5;
  *(v0 + 24) = v3;
  *(v0 + 32) = v21;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F4CAF4(double a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D178);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  if (a1 <= 0.0)
  {
    v34 = OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable;
    if (*(v1 + OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable))
    {

      sub_1E42004E4();
    }

    *(v1 + v34) = 0;

    *(v1 + OBJC_IVAR____TtC8VideosUI5Route_isHandlingRoutingEvent) = 0;
  }

  else
  {
    v37 = v16;
    v38 = v17;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
    swift_allocObject();
    v39 = sub_1E4200544();
    v42 = v39;
    sub_1E4207064();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v11);
    v23 = [objc_opt_self() mainRunLoop];
    v41 = v23;
    sub_1E4207054();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    sub_1E3280A90(0, &qword_1EE23AD08);
    sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0);
    v36 = v1;
    sub_1E3782CC4();
    sub_1E4200784();
    sub_1E325F6F0(v8, &unk_1ECF3DB30);

    sub_1E325F6F0(v2, &qword_1ECF2CEC0);
    (*(v13 + 8))(v3, v11);
    v28 = swift_allocObject();
    v29 = v36;
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1E3F4EDC4;
    *(v30 + 24) = v28;
    sub_1E32752B0(&qword_1ECF3D180, &qword_1ECF3D178);
    v31 = v37;
    v32 = sub_1E4200844();

    (*(v38 + 8))(v19, v31);
    *(v29 + OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable) = v32;

    sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0);
    sub_1E4200624();
  }

  return result;
}

uint64_t sub_1E3F4CF7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_11_3();
  sub_1E4200C44();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v7 = OUTLINED_FUNCTION_31_76();
  v8(v7);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 448))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 640))(0);
  OUTLINED_FUNCTION_44_57();
  OUTLINED_FUNCTION_25_89();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v2 = a1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  OUTLINED_FUNCTION_26_103(v2);
  v16 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3();
  v17 = a1;
  sub_1E3F4EC94(v2, v3 + v16);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v18 = OUTLINED_FUNCTION_73_6();
  return v19(v18);
}

uint64_t sub_1E3F4D1A8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = v3;
  OUTLINED_FUNCTION_8();
  result = (*(v7 + 488))();
  if (result)
  {
    OUTLINED_FUNCTION_11_3();
    sub_1E4200C44();
    sub_1E4200C34();
    swift_endAccess();
    v9 = (v3 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
    v10 = *(v3 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
    v11 = *(v3 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler + 8);
    *v9 = 0;
    v9[1] = 0;
    sub_1E37FAED8(v10, v11);
    OUTLINED_FUNCTION_3_11();
    (*(v12 + 544))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v13 + 448))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v14 + 592))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v15 + 640))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v16 + 496))(0);
    v17 = (v3 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler);
    v18 = *(v3 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler);
    v19 = *(v4 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler + 8);
    *v17 = a2;
    v17[1] = a3;
    sub_1E37FAED4(a2, a3);
    return sub_1E37FAED8(v18, v19);
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1E3F4D3BC()
{
  OUTLINED_FUNCTION_46_56();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_11_3();
  sub_1E4200C44();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v7 = OUTLINED_FUNCTION_31_76();
  v8(v7);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 496))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 640))(0);
  OUTLINED_FUNCTION_44_57();
  OUTLINED_FUNCTION_25_89();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 49) = v4;
  OUTLINED_FUNCTION_26_103(v3);
  v16 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3();
  v17 = v2;
  v18 = v1;
  sub_1E3F4EC94(v3, v0 + v16);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v19 = OUTLINED_FUNCTION_73_6();
  return v20(v19);
}

uint64_t sub_1E3F4D5E4()
{
  OUTLINED_FUNCTION_46_56();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_11_3();
  sub_1E4200C44();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v7 = OUTLINED_FUNCTION_31_76();
  v8(v7);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 448))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 496))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 640))(0);
  OUTLINED_FUNCTION_44_57();
  OUTLINED_FUNCTION_25_89();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 49) = v4;
  OUTLINED_FUNCTION_26_103(v3);
  v16 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3();
  v17 = v2;
  v18 = v1;
  sub_1E3F4EC94(v3, v0 + v16);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v19 = OUTLINED_FUNCTION_73_6();
  return v20(v19);
}

void sub_1E3F4D80C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for AlertContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50_49();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v20 = OUTLINED_FUNCTION_31_76();
  v21(v20);
  OUTLINED_FUNCTION_9_2();
  (*(v22 + 448))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v23 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v24 + 496))(0);

  sub_1E41FE614();
  v25 = (v17 + v13[5]);
  *v25 = v12;
  v25[1] = v10;
  v26 = (v17 + v13[6]);
  *v26 = v8;
  v26[1] = v6;
  *(v17 + v13[7]) = v4;
  *(v17 + v13[8]) = 0;
  v27 = *(OUTLINED_FUNCTION_44_57() + 32);
  sub_1E3F4A3AC(v17, v1 + v27);
  __swift_storeEnumTagSinglePayload(v1 + v27, 0, 1, v13);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *v1 = 0u;
  *(v1 + 48) = 1;
  OUTLINED_FUNCTION_26_103(v1);
  v28 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3();
  sub_1E3F4EC94(v1, v2 + v28);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v29 = OUTLINED_FUNCTION_73_6();
  v30(v29);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F4DAC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50_49();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v6 = OUTLINED_FUNCTION_31_76();
  v7(v6);
  OUTLINED_FUNCTION_9_2();
  (*(v8 + 448))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 496))(0);
  sub_1E3F4A410();
  v11 = type metadata accessor for DestinationContext(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  v12 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3();
  sub_1E3F4EC94(v5, v1 + v12);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v13 = OUTLINED_FUNCTION_73_6();
  return v14(v13);
}

uint64_t sub_1E3F4DCD0(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v8 = v6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_11_3();
  sub_1E4200C44();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v17 = OUTLINED_FUNCTION_31_76();
  v18(v17);
  OUTLINED_FUNCTION_9_2();
  (*(v19 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v20 + 496))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v21 + 640))(0);
  OUTLINED_FUNCTION_44_57();
  OUTLINED_FUNCTION_25_89();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 48) = 0;
  OUTLINED_FUNCTION_26_103(v7);
  v26 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3();
  v27 = a2;
  v28 = a1;
  sub_1E3F4EC94(v7, v8 + v26);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v29 = OUTLINED_FUNCTION_73_6();
  return v30(v29);
}

uint64_t sub_1E3F4DF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_50_49();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  v6 = (v3 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v7 = *(v3 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v8 = v6[1];
  *v6 = a2;
  v6[1] = a3;
  sub_1E37FAED4(a2, a3);
  sub_1E37FAED8(v7, v8);
  OUTLINED_FUNCTION_9_2();
  v9 = OUTLINED_FUNCTION_31_76();
  v10(v9);
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 448))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v12 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v13 + 496))(0);
  OUTLINED_FUNCTION_9_2();
  return (*(v14 + 640))(0);
}

void sub_1E3F4E0B0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  if (v2 || (v1 = (v0 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler), (v2 = *(v0 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler)) != 0))
  {
    *v1 = 0;
    v1[1] = 0;
    v2();
    v3 = OUTLINED_FUNCTION_32_0();

    sub_1E37FAED8(v3, v4);
  }
}

uint64_t sub_1E3F4E124()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  (*(v5 + 728))();
  OUTLINED_FUNCTION_9_2();
  (*(v6 + 736))();
  OUTLINED_FUNCTION_13();
  (*(v7 + 800))();
  v8 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3();
  sub_1E3F4EC94(v1, v2 + v8);
  swift_endAccess();
  OUTLINED_FUNCTION_13();
  (*(v9 + 776))();
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 784))();
  OUTLINED_FUNCTION_13();
  (*(v11 + 752))();
  OUTLINED_FUNCTION_9_2();
  return (*(v12 + 760))();
}

void sub_1E3F4E34C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  if ((sub_1E3F4C5B0() & 1) == 0 && ((*(*v0 + 488))() & 1) == 0)
  {
    v11 = (*(*v0 + 824))();
    if (v11)
    {
      v12 = v11;
      (*(*v11 + 424))(0);
      OUTLINED_FUNCTION_9_2();
      v14 = (*(v13 + 344))();
      if (v14)
      {
        v16 = v14;
        v17 = v15;
        v14();
        sub_1E37FAED8(v16, v17);
      }

      v18 = sub_1E324FBDC();
      (*(v9 + 16))(v1, v18, v7);

      v19 = sub_1E41FFC94();
      v20 = sub_1E4206814();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v43 = v9;
        v22 = v21;
        v42 = swift_slowAlloc();
        v44[0] = v42;
        *v22 = 136315906;
        *(v22 + 4) = sub_1E3270FC8(*(v2 + 16), *(v2 + 24), v44);
        *(v22 + 12) = 2080;
        v23 = sub_1E41E1364(v2);
        v25 = sub_1E3270FC8(v23, v24, v44);

        *(v22 + 14) = v25;
        *(v22 + 22) = 2080;
        v26 = v12[2];
        v27 = v12[3];

        v28 = sub_1E3270FC8(v26, v27, v44);

        *(v22 + 24) = v28;
        *(v22 + 32) = 2080;
        v29 = sub_1E41E1364(v12);
        v31 = sub_1E3270FC8(v29, v30, v44);

        *(v22 + 34) = v31;
        _os_log_impl(&dword_1E323F000, v19, v20, "Router::Route %s-%s remove next route %s-%s", v22, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v32 = (*(v43 + 8))(v1, v7);
      }

      else
      {

        v32 = (*(v9 + 8))(v1, v7);
      }

      v33 = (*(*v12 + 368))(v32);
      if (v33)
      {
        (*(*v33 + 240))(v33);
      }
    }

    type metadata accessor for DestinationContext(0);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    v38 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
    OUTLINED_FUNCTION_11_3();
    sub_1E3F4EC94(v6, v2 + v38);
    swift_endAccess();
    OUTLINED_FUNCTION_9_2();
    (*(v39 + 832))(0);
    OUTLINED_FUNCTION_9_2();
    (*(v40 + 856))(0);
  }

  OUTLINED_FUNCTION_25_2();
}

char *sub_1E3F4E810()
{

  sub_1E37FAED8(*(v0 + 6), *(v0 + 7));
  sub_1E37FAED8(*(v0 + 8), *(v0 + 9));
  sub_1E37FAED8(*(v0 + 10), *(v0 + 11));

  v1 = OBJC_IVAR____TtC8VideosUI5Route__isPresentingPopover;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(&v0[v1], v2);
  v5 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI5Route__isNavigationActive);
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI5Route__isPresentingSheet);
  (v4)(v6);
  v7 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI5Route__isPresentingFullscreenCover);
  (v4)(v7);
  v8 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI5Route__isPresentingAlert);
  (v4)(v8);
  sub_1E37FAED8(*&v0[OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler], *&v0[OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler + 8]);
  sub_1E37FAED8(*&v0[OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler], *&v0[OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler + 8]);

  sub_1E325F6F0(&v0[OBJC_IVAR____TtC8VideosUI5Route_destinationContext], &unk_1ECF3F9E0);

  return v0;
}

uint64_t sub_1E3F4E9A0()
{
  sub_1E3F4E810();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1E3F4E9F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Route(0);
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3F4EA7C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 728))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
  sub_1E3F4EE54(qword_1EE23BA70, type metadata accessor for ViewModel);
  v1 = sub_1E4207114();

  return MEMORY[0x1E69124B0](v1);
}

uint64_t sub_1E3F4EB50()
{
  sub_1E4207B44();
  sub_1E3F4EA7C();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F4EBD8()
{
  sub_1E4207B44();
  sub_1E3F4EA7C();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F4EC3C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1E4205F14();
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F4EC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F4ED04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DestinationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F4ED68(uint64_t a1)
{
  v2 = type metadata accessor for DestinationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3F4EDC4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI5Route_isHandlingRoutingEvent) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable) = 0;
  }

  return result;
}

uint64_t sub_1E3F4EE54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3F4EEA0()
{
  result = qword_1ECF3D188;
  if (!qword_1ECF3D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RouteEventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3F4F0A8()
{
  sub_1E41FE624();
  if (v0 <= 0x3F)
  {
    sub_1E3F4F53C(319, &qword_1EE23B5F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3F4F314(319, &qword_1EE23B4B8, &qword_1EE23B310, off_1E87281C8, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1E3F4F18C();
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_32_78();
        }
      }
    }
  }
}

void sub_1E3F4F18C()
{
  if (!qword_1EE23B4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D198);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B4C0);
    }
  }
}

void sub_1E3F4F218(uint64_t a1)
{
  OUTLINED_FUNCTION_27_84(a1, &unk_1EE23B0C0, &qword_1EE23B0D0, off_1E87282E8);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_27_84(v1, &unk_1EE23B240, &qword_1EE23B250, 0x1E69DD258);
    if (v3 <= 0x3F)
    {
      sub_1E3F4F37C(319, &qword_1EE23AEA8, type metadata accessor for CGRect);
      if (v4 <= 0x3F)
      {
        sub_1E3F4F37C(319, qword_1EE2856A8, type metadata accessor for AlertContext);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_32_78();
        }
      }
    }
  }
}

void sub_1E3F4F314(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1E3280A90(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E3F4F37C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4207104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E3F4F3D8()
{
  sub_1E3F4F53C(319, &qword_1EE289F50, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1E3F4F37C(319, qword_1EE278920, type metadata accessor for DestinationContext);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3F4F53C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_32_78()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_53_47()
{

  return swift_getKeyPath();
}

double sub_1E3F4F5E0(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 49) = 0u;
  *(v2 + 16) = a1;
  return result;
}

uint64_t sub_1E3F4F624()
{
  OUTLINED_FUNCTION_27_2();
  v0[2] = sub_1E4206434();
  v0[3] = sub_1E4206424();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_17_132(v1);

  return sub_1E3F4F874();
}

uint64_t sub_1E3F4F6DC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 40) = v5;
  *(v6 + 48) = v7;

  v9 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F4F810, v9, v8);
}

uint64_t sub_1E3F4F810()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_15_145();
  v3 = *(v0 + 40);

  return v2(v3, v1 & 1);
}

uint64_t sub_1E3F4F874()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 25) = v3;
  *(v1 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  *(v1 + 56) = swift_task_alloc();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_14_159(v5);
  *(v1 + 72) = v6;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = sub_1E4206434();
  *(v1 + 96) = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3F4F98C()
{
  v1 = *(*(v0 + 48) + 16);
  v2 = (*(*v1 + 192))();
  *(v0 + 120) = v2;
  if (!v2)
  {

    sub_1E3781F38();
    OUTLINED_FUNCTION_206();
    *v10 = xmmword_1E42BF760;
    *(v10 + 16) = 6;
    goto LABEL_21;
  }

  v3 = *(v0 + 25);
  v4 = sub_1E3CCB910();
  v7 = v4;
  if (v3)
  {
    v8 = sub_1E3CCB9AC(v1[4]);
    v9 = sub_1E3CCBA20(v1[4]);
  }

  else
  {
    v8 = *(v0 + 32);
    v11 = *(v0 + 40);
    v9 = v11 - v8;
    if (__OFSUB__(v11, v8))
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  v14 = *(v0 + 64);
  v15 = sub_1E32AE9D4();
  (*(v13 + 16))(v12, v15, v14);
  v16 = sub_1E41FFC94();
  v17 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v8;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v9;
    _os_log_impl(&dword_1E323F000, v16, v17, "SeasonDetailsFetcher:: fetch episodes with location:%ld length:%ld", v18, 0x16u);
    OUTLINED_FUNCTION_6_0();
  }

  v20 = *(v0 + 72);
  v19 = *(v0 + 80);
  v21 = *(v0 + 64);

  (*(v20 + 8))(v19, v21);
  v22 = sub_1E3CCB698(v8, v9);
  *(v0 + 128) = v22;
  v4 = sub_1E32AE9B0(v22);
  if (v4 == v9)
  {

    v23 = OUTLINED_FUNCTION_18();
    (*(*v1 + 248))(v22, v23 & 1);

    goto LABEL_21;
  }

  if ((v7 & 1) == 0)
  {
    v24 = __OFADD__(v8, v4);
    v8 += v4;
    if (v24)
    {
      goto LABEL_26;
    }
  }

  v24 = __OFSUB__(v9, v4);
  v25 = v9 - v4;
  if (v24)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return MEMORY[0x1EEE6DA40](v4, v5, v6);
  }

  if (sub_1E3CCB910())
  {
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v26 = v1[2];
    v27 = v1[3];
  }

  v28 = sub_1E3CCAE90(v8, v25, 1, v26, v27);
  *(v0 + 136) = v28;

  if (!v28)
  {

    sub_1E3781F38();
    OUTLINED_FUNCTION_206();
    *v41 = xmmword_1E42BF760;
    *(v41 + 16) = 6;

LABEL_21:

    OUTLINED_FUNCTION_15_145();
    OUTLINED_FUNCTION_30_38();

    __asm { BRAA            X3, X16 }
  }

  v29 = *(v0 + 48);
  v30 = *(v0 + 56);
  v31 = *(v0 + 25);
  v33 = *(v0 + 32);
  v32 = *(v0 + 40);
  v34 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v34);

  v35 = sub_1E4206424();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  *(v36 + 32) = v29;
  *(v36 + 40) = v28;
  *(v36 + 48) = v8;
  *(v36 + 56) = v7 & 1;
  *(v36 + 64) = v33;
  *(v36 + 72) = v32;
  *(v36 + 80) = v31 & 1;
  v38 = sub_1E3F51E54(0, 0, v30, &unk_1E42DFEF8, v36);
  *(v0 + 144) = v38;
  v45 = *(v29 + 24);
  *(v29 + 24) = v28;
  *(v29 + 32) = v38;
  *(v29 + 40) = 0;
  *(v29 + 48) = v33;
  *(v29 + 56) = v32;
  *(v29 + 64) = v31 & 1;

  sub_1E37EC9B0(v45);
  v39 = swift_task_alloc();
  *(v0 + 152) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A0);
  *v39 = v0;
  v39[1] = sub_1E3F4FE48;
  OUTLINED_FUNCTION_30_38();

  return MEMORY[0x1EEE6DA40](v4, v5, v6);
}

uint64_t sub_1E3F4FE48()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 112);
  v6 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E3F4FF54, v6, v5);
}

uint64_t sub_1E3F4FF54()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1E32AE9B0(v1);
  v5 = *(v0 + 128);
  if (v4)
  {
    if (v3)
    {

      sub_1E3798224(v2, 1);

      v3 = 0;
      v2 = v5;
    }

    else
    {
      v9 = *(v0 + 128);

      sub_1E379738C(v6);

      sub_1E3798224(v2, 0);

      v3 = 0;
      v2 = v9;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_145();

  return v7(v2, v3);
}

uint64_t sub_1E3F5009C()
{
  OUTLINED_FUNCTION_24();
  v1[8] = v0;
  sub_1E4206434();
  v1[9] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  v1[10] = v2;
  v1[11] = v3;
  v4 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3F50120()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 24);
  *(v0 + 96) = v2;
  v3 = *(v1 + 32);
  *(v0 + 104) = v3;
  v4 = *(v1 + 40);
  *(v0 + 112) = v4;
  if (v2)
  {
    v5 = *(v1 + 48);
    v6 = *(v1 + 64);
    *(v0 + 16) = v2;
    *&v7 = v3;
    *(&v7 + 1) = v4;
    *(v0 + 40) = v5;
    *(v0 + 24) = v7;
    *(v0 + 56) = v6 & 1;
    if (v3)
    {
      v8 = *(**(v1 + 16) + 192);
      sub_1E3F51798(v2);

      v10 = v8(v9);
      *(v0 + 120) = v10;
      if (v10)
      {
        v11 = swift_task_alloc();
        *(v0 + 128) = v11;
        *v11 = v0;
        v11[1] = sub_1E3F50304;

        return sub_1E3F50664();
      }
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_1E3F504A8;

  return sub_1E3F4F874();
}

uint64_t sub_1E3F50304()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v7 + 136) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 88);
  v10 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E3F50418, v10, v9);
}

uint64_t sub_1E3F50418()
{
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_13_7();

  return v0();
}

uint64_t sub_1E3F504A8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v7 + 152) = v6;
  *(v7 + 57) = v8;

  OUTLINED_FUNCTION_66_1();
  v10 = *(v9 + 88);
  v11 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E3F505C0, v11, v10);
}

uint64_t sub_1E3F505C0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 57);

  v2 = *(v0 + 152);
  if (v1)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v3 = sub_1E3F51300(v4);
    sub_1E3798224(v2, 0);
  }

  sub_1E3798224(v2, v1 & 1);
  OUTLINED_FUNCTION_13_7();

  return v5(v3);
}

uint64_t sub_1E3F50664()
{
  OUTLINED_FUNCTION_24();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_14_159(v5);
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1E4206434();
  v1[14] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  v1[15] = v7;
  v1[16] = v8;
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3F50760()
{
  v1 = *(v0 + 32);
  v2 = sub_1E3CCB910();
  *(v0 + 25) = v2 & 1;
  if ((*(v1 + 40) & 1) == 0)
  {
    v7 = v2;
    v8 = *(v1 + 32);
    v69 = *(v1 + 24);
    v9 = *(*(v0 + 56) + 16);
    v10 = sub_1E3CCBA20(v9[4]);
    v11 = sub_1E3CCB9AC(v9[4]);
    v14 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
LABEL_47:
      __break(1u);
    }

    else
    {
      v15 = v11;
      if ((v7 & 1) == 0)
      {
        v16 = v14 - v8;
        if (!__OFSUB__(v14, v8))
        {
          v17 = v8;
LABEL_9:
          if (sub_1E3CCB910())
          {
            v18 = 0;
            v19 = 0;
          }

          else
          {
            v18 = v9[2];
            v19 = v9[3];
          }

          if (v16 < 1)
          {

            v3 = 0;
            v4 = 0;
          }

          else
          {
            v4 = sub_1E3CCAE90(v17, v16, 1, v18, v19);

            if (v4)
            {
              v67 = v17;
              v20 = *(v0 + 104);
              v22 = *(v0 + 64);
              v21 = *(v0 + 72);
              v23 = sub_1E32AE9D4();
              (*(v21 + 16))(v20, v23, v22);
              v24 = sub_1E41FFC94();
              v25 = sub_1E42067E4();
              if (OUTLINED_FUNCTION_104(v25))
              {
                v26 = swift_slowAlloc();
                *v26 = 134218240;
                *(v26 + 4) = v67;
                *(v26 + 12) = 2048;
                *(v26 + 14) = v16;
                _os_log_impl(&dword_1E323F000, v24, v25, "SeasonDetailsFetcher:: queue for episodes with location:%ld length:%ld", v26, 0x16u);
                OUTLINED_FUNCTION_6_0();
              }

              v27 = *(v0 + 104);
              v28 = *(v0 + 64);
              v29 = *(v0 + 72);

              v11 = (*(v29 + 8))(v27, v28);
              v6 = 0;
              v3 = v67;
              goto LABEL_20;
            }

            v3 = 0;
          }

          v6 = 1;
LABEL_20:
          v30 = v15 < v69;
          if (v7)
          {
            v30 = v8 < v14;
          }

          v5 = MEMORY[0x1E69E7CC0];
          if (!v30)
          {
            goto LABEL_42;
          }

          if (v7)
          {
            if (v14 >= v8)
            {
              goto LABEL_27;
            }

            __break(1u);
          }

          v8 = v15;
          v14 = v69;
          if (v69 >= v15)
          {
LABEL_27:
            v70 = v6;
            v68 = v3;
            v31 = (*(**(v0 + 48) + 1096))(v11);
            sub_1E39E8C20(v8, v14, v31);
            v33 = v32;
            v35 = v34;
            v37 = v36;

            v71 = v5;
            v38 = v37 >> 1;
            v39 = v35;
            v40 = v35;
            while (v38 != v40)
            {
              if (v39 < v35 || v40 >= v38)
              {
                __break(1u);
                goto LABEL_47;
              }

              if (*(v33 + 8 * v40++))
              {

                MEMORY[0x1E6910BF0](v43);
                if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1E42062F4();
                }

                v11 = sub_1E4206324();
                v5 = v71;
                v39 = v40;
              }
            }

            v44 = *(v0 + 96);
            v45 = *(v0 + 64);
            v46 = *(v0 + 72);
            swift_unknownObjectRelease();

            v47 = sub_1E32AE9D4();
            (*(v46 + 16))(v44, v47, v45);

            v48 = sub_1E41FFC94();
            v49 = sub_1E42067E4();
            if (OUTLINED_FUNCTION_104(v49))
            {
              v50 = swift_slowAlloc();
              *v50 = 134217984;
              v51 = sub_1E32AE9B0(v5);

              *(v50 + 4) = v51;

              _os_log_impl(&dword_1E323F000, v48, v49, "SeasonDetailsFetcher:: have prefetched episodes with episode count: %ld", v50, 0xCu);
              OUTLINED_FUNCTION_6_0();
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }

            v3 = v68;
            v6 = v70;

            (*(*(v0 + 72) + 8))(*(v0 + 96), *(v0 + 64));
            goto LABEL_42;
          }

LABEL_50:
          __break(1u);
          return MEMORY[0x1EEE6DA40](v11, v12, v13);
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v16 = v69 - v11;
      if (!__OFSUB__(v69, v11))
      {
        v17 = v11;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = 1;
LABEL_42:
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  *(v0 + 26) = v6;
  *(v0 + 136) = v3;
  v52 = *(v0 + 88);
  v53 = *(v0 + 64);
  v54 = *(v0 + 72);
  v55 = sub_1E32AE9D4();
  *(v0 + 160) = v55;
  v56 = *(v54 + 16);
  *(v0 + 168) = v56;
  *(v0 + 176) = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v56(v52, v55, v53);
  v57 = sub_1E41FFC94();
  v58 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_1E323F000, v57, v58, "SeasonDetailsFetcher:: wait for ongoing fetch request", v59, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v60 = *(v0 + 88);
  v61 = *(v0 + 64);
  v62 = *(v0 + 72);

  v63 = *(v62 + 8);
  *(v0 + 184) = v63;
  v63(v60, v61);
  v64 = swift_task_alloc();
  *(v0 + 192) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A0);
  *v64 = v0;
  v64[1] = sub_1E3F50D04;
  OUTLINED_FUNCTION_30_38();

  return MEMORY[0x1EEE6DA40](v11, v12, v13);
}

uint64_t sub_1E3F50D04()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 128);
  v6 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E3F50E10, v6, v5);
}

uint64_t sub_1E3F50E10()
{
  *(v0 + 200) = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 27) = v1;
  if (v1)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  *(v0 + 208) = v2;
  v3 = *(v0 + 144);
  if (v3 && (*(v0 + 26) & 1) == 0)
  {
    v21 = *(v0 + 168);
    v20 = *(v0 + 160);
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = *(v10 + 24);
    *(v10 + 24) = v3;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 1;
    swift_retain_n();
    sub_1E37EC9B0(v12);
    v21(v9, v20, v11);
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_104(v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E323F000, v13, v14, "SeasonDetailsFetcher:: wait for left episodes fetch request", v15, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v16 = *(v0 + 184);
    v17 = *(v0 + 80);
    v18 = *(v0 + 64);

    v16(v17, v18);
    v19 = swift_task_alloc();
    *(v0 + 216) = v19;
    *v19 = v0;
    v19[1] = sub_1E3F510C4;

    return sub_1E3F51AE0();
  }

  else
  {

    v4 = *(v0 + 27);
    v5 = *(v0 + 200);
    v22 = *(v0 + 152);
    sub_1E379738C(*(v0 + 208));
    sub_1E379738C(MEMORY[0x1E69E7CC0]);
    v6 = sub_1E3F51300(v22);

    sub_1E3798224(v5, v4);

    OUTLINED_FUNCTION_13_7();

    return v7(v6);
  }
}

uint64_t sub_1E3F510C4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v7 + 224) = v6;
  *(v7 + 28) = v8;

  OUTLINED_FUNCTION_66_1();
  v10 = *(v9 + 128);
  v11 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E3F511DC, v11, v10);
}

uint64_t sub_1E3F511DC()
{
  v1 = *(v0 + 28);

  v2 = *(v0 + 224);
  if (v1)
  {
    sub_1E3798224(*(v0 + 224), 1);
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 27);
  v4 = *(v0 + 200);
  v8 = *(v0 + 152);
  sub_1E379738C(*(v0 + 208));
  sub_1E379738C(v2);
  v5 = sub_1E3F51300(v8);

  sub_1E3798224(v4, v3);

  OUTLINED_FUNCTION_13_7();

  return v6(v5);
}

uint64_t sub_1E3F51300(unint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  result = sub_1E32AE9B0(a1);
  v30 = v4;
  v31 = v2;
  if (result)
  {
    v9 = result;
    if (result < 1)
    {
      goto LABEL_37;
    }

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v10, a1);
      }

      else
      {
      }

      type metadata accessor for ViewModel();
      j___s8VideosUI9ViewModelCMa();
      v12 = sub_1E39C1CF8(233);
      v13 = v12;
      if (v12 >> 62)
      {
        result = sub_1E4207384();
        if (!result)
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      else
      {
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_19;
        }
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

        v14 = *(v13 + 32);
      }

      if (*v14 == _TtC8VideosUI31DownloadStateIndicatorViewModel && (v15 = OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel, OUTLINED_FUNCTION_5_0(), (v16 = [(__objc2_class *)*(v14 + v15) videosPlayable]) != 0))
      {
        v17 = v16;
        MEMORY[0x1E6910BF0]();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        v11 = v34;
      }

      else
      {
      }

LABEL_20:
      if (v9 == ++v10)
      {
        goto LABEL_24;
      }
    }
  }

  v11 = v7;
LABEL_24:
  v18 = sub_1E32AE9D4();
  v20 = v30;
  v19 = v31;
  v21 = v32;
  (*(v30 + 16))(v32, v18, v31);

  v22 = sub_1E41FFC94();
  v23 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = sub_1E32AE9B0(a1);

    *(v24 + 12) = 2048;
    *(v24 + 14) = sub_1E32AE9B0(v11);

    _os_log_impl(&dword_1E323F000, v22, v23, "SeasonDetailsFetcher:: processed %ld and resulted in %ld playables", v24, 0x16u);
    v21 = v32;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v20 + 8))(v21, v19);
  v25 = sub_1E32AE9B0(v11);
  if (v25)
  {
    v26 = v25;
    v33 = MEMORY[0x1E69E7CC0];
    result = sub_1E4207574();
    if (v26 < 0)
    {
      goto LABEL_38;
    }

    v27 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1E6911E60](v27, v11);
      }

      else
      {
        v28 = *(v11 + 8 * v27 + 32);
      }

      v29 = v28;
      ++v27;
      [objc_allocWithZone(VUIUniversalAssetController) initWithVideosPlayable_];

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    while (v26 != v27);

    return v33;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1E3F51798(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E3F517E8()
{

  sub_1E37EC9B0(*(v0 + 24));
  return v0;
}

uint64_t sub_1E3F5181C()
{
  sub_1E3F517E8();

  return MEMORY[0x1EEE6BDC0](v0, 65, 7);
}

uint64_t sub_1E3F51860(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1E4206434();
  v1[4] = sub_1E4206424();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_17_132(v2);

  return sub_1E3F51AE0();
}

uint64_t sub_1E3F51930()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 48) = v5;
  *(v6 + 56) = v7;

  v9 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3F51A64, v9, v8);
}

uint64_t sub_1E3F51A64()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  *v3 = v2;
  *(v3 + 8) = v1 & 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E3F51AE0()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 25) = v3;
  *(v1 + 32) = v4;
  *(v1 + 56) = sub_1E4206434();
  *(v1 + 64) = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3F51B70()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 25);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = sub_1E4206424();
  *(v0 + 88) = v5;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A0);
  *v7 = v0;
  v7[1] = sub_1E3F51CA8;
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 16, v5, v9, 0xD00000000000004DLL, 0x80000001E4289E40, sub_1E3F52A80, v6, v8);
}

uint64_t sub_1E3F51CA8()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_66_1();
  v5 = *(v4 + 80);
  v6 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E3F51DF4, v6, v5);
}

uint64_t sub_1E3F51DF4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_145();

  return v0();
}

uint64_t sub_1E3F51E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E325A828(a3, v24 - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F748(v11, &unk_1ECF2C400);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_1E325F748(a3, &unk_1ECF2C400);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325F748(a3, &unk_1ECF2C400);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E3F5213C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  if ((*(*a2 + 352))(v14))
  {
    v17 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(v16, a1, v10);
    v18 = *(v12 + 80);
    v27 = v10;
    v19 = a3;
    v20 = a5;
    v21 = (v18 + 33) & ~v18;
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 24) = a4;
    v23 = v20 & 1;
    a3 = v19;
    *(v22 + 32) = v23;
    (*(v12 + 32))(v22 + v21, v16, v27);
    v24 = sub_1E41EC148(sub_1E3F52A90, v22);
  }

  else
  {
    v24 = 0;
  }

  if (*(a3 + 24))
  {
    *(a3 + 40) = v24;
  }
}

uint64_t sub_1E3F52340(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v60 - v15;
  v17 = *a1;
  if ((*(a1 + 17) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v44 = *(Strong + 16);

      v46 = (*(*v44 + 192))(v45);

      if (v46)
      {
        (*(*v46 + 1320))(v17, a3);
      }
    }

    OUTLINED_FUNCTION_5_0();
    if (*(v17 + 16))
    {
      v47 = *(v17 + 16);
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_5_0();
    v48 = swift_weakLoadStrong();
    if (v48)
    {
      v49 = *(v48 + 16);

      v50 = OUTLINED_FUNCTION_18();
      (*(*v49 + 248))(v47, v50 & 1);

      if (a4)
      {
LABEL_13:

        v61 = sub_1E3F52870(v51);
        v62 = 0;
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A8);
        sub_1E42063D4();
        v52 = sub_1E32AE9D4();
        (*(v10 + 16))(v16, v52, v8);

        v53 = sub_1E41FFC94();
        v54 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_104(v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 134217984;
          v56 = sub_1E32AE9B0(v47);

          *(v55 + 4) = v56;

          _os_log_impl(&dword_1E323F000, v53, v54, "SeasonDetailsFetcher:: success with episode count %ld", v55, 0xCu);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v13 = v16;
        goto LABEL_20;
      }
    }

    else
    {

      if (a4)
      {
        goto LABEL_13;
      }
    }

    v61 = v47;
    v62 = 0;

    goto LABEL_16;
  }

  v18 = a1[1];
  v19 = *(a1 + 16);
  sub_1E3781F38();
  v20 = OUTLINED_FUNCTION_206();
  *v21 = v17;
  *(v21 + 8) = v18;
  *(v21 + 16) = v19;
  v61 = v20;
  v62 = 1;
  v22 = OUTLINED_FUNCTION_19_4();
  sub_1E3781F8C(v22, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A8);
  sub_1E42063D4();
  v25 = sub_1E32AE9D4();
  (*(v10 + 16))(v13, v25, v8);
  v26 = OUTLINED_FUNCTION_19_4();
  sub_1E3781F8C(v26, v27, v28);
  v29 = sub_1E41FFC94();
  v30 = sub_1E42067E4();
  v31 = OUTLINED_FUNCTION_19_4();
  sub_1E37D172C(v31, v32, v33, 1);
  if (os_log_type_enabled(v29, v30))
  {
    v34 = swift_slowAlloc();
    v60[0] = v8;
    v35 = v34;
    v36 = swift_slowAlloc();
    v60[1] = a2;
    v37 = v36;
    *v35 = 138412290;
    OUTLINED_FUNCTION_206();
    *v38 = v17;
    *(v38 + 8) = v18;
    *(v38 + 16) = v19;
    v39 = OUTLINED_FUNCTION_19_4();
    sub_1E3781F8C(v39, v40, v41);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v42;
    *v37 = v42;
    _os_log_impl(&dword_1E323F000, v29, v30, "SeasonDetailsFetcher:: fail with %@", v35, 0xCu);
    sub_1E325F748(v37, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    v8 = v60[0];
    OUTLINED_FUNCTION_6_0();
  }

LABEL_20:
  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v58 = result;
    v59 = *(result + 24);
    *(v58 + 24) = 0u;
    *(v58 + 40) = 0u;
    *(v58 + 49) = 0u;
    sub_1E37EC9B0(v59);
  }

  return result;
}

unint64_t sub_1E3F52870(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v14 = sub_1E4207384();
    if (v14)
    {
      v15 = v14;
      v2 = sub_1E37FEA14(v14, 0);
      sub_1E3798230(v2 + 32, v15, v1);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v18 = sub_1E4207384();
      if (v18 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v18;
    v3 = v18 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E6911E60]();
          v11 = MEMORY[0x1E6911E60](v1 - (v6 - 3), v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v6);
          v11 = *(v2 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1E37EFA58(v2);
          v12 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v2 & 0xFFFFFFFFFFFFFF8;
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v11;

        if ((v2 & 0x8000000000000000) != 0 || v12)
        {
          v2 = sub_1E37EFA58(v2);
          v13 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v13 + 16))
        {
          goto LABEL_35;
        }

        *(v13 + 8 * v7 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

uint64_t sub_1E3F52A90(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1A8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  return sub_1E3F52340(a1, v3, v4, v5);
}

uint64_t sub_1E3F52B14(uint64_t a1)
{
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_14_3(v2);
  *v3 = v4;
  v3[1] = sub_1E39C9724;

  return sub_1E3F51860(a1);
}

uint64_t sub_1E3F52BF0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1E3F52CE4;

  return v5(v2 + 16);
}

uint64_t sub_1E3F52CE4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_7();
  *v2 = v0;
  v3 = *(v0 + 32);
  v4 = *v1;
  *v2 = *v1;

  OUTLINED_FUNCTION_66_1();
  v6 = *(v0 + 24);
  *v3 = *(v5 + 16);
  *(v3 + 8) = v6;
  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_1E3F52E04()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3F52E98()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E3F52F44()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 368))();
  v4 = v3;
  v5 = (*(*v0 + 264))();
  if (v6)
  {
    sub_1E37614CC();
    sub_1E38D2484(sub_1E3F53070, MEMORY[0x1E69E6158], v10);

    v5 = v10[0];
    v7 = v10[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1E414A784(v2, v4, v5, v7);

  return v8;
}

uint64_t sub_1E3F53070@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1E69109E0](*a1, a1[1]);
  result = MEMORY[0x1E69109E0](93, 0xE100000000000000);
  *a2 = 0x3A67756265645B20;
  a2[1] = 0xE800000000000000;
  return result;
}

unint64_t sub_1E3F5310C()
{
  result = qword_1EE23C248[0];
  if (!qword_1EE23C248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE23C248);
  }

  return result;
}

uint64_t sub_1E3F53160()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3F53194()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F531D8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 264) = v2;
  *(v1 + 272) = v0;
}

uint64_t sub_1E3F53270(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ImageViewModel.IndvidualImageRecord();
  sub_1E3F5310C();
  *(v3 + 256) = sub_1E4205CB4();
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0;
  OUTLINED_FUNCTION_45_64();
  swift_allocObject();

  *(v3 + 248) = sub_1E3F565C0(v8, 5);
  v9 = sub_1E3C7F81C();
  v10 = v9;
  v11 = v9[2];
  if (!v11)
  {

LABEL_16:
    v29 = v4;
    v44 = &unk_1F5D7BDD8;
    v45 = &off_1F5D7BC38;
    LOBYTE(v43) = 7;
    sub_1E3F9F164(&v43);
    if (v46[3])
    {
      v30 = swift_dynamicCast();
      if (v30)
      {
        v31 = v41;
      }

      else
      {
        v31 = 0;
      }

      if (v30)
      {
        v32 = v42;
      }

      else
      {
        v32 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v43);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v43);
      sub_1E329505C(v46);
      v31 = 0;
      v32 = 0;
    }

    OUTLINED_FUNCTION_3_0();
    v29[33] = v31;
    v29[34] = v32;

    sub_1E3277E60(0xD000000000000012, 0x80000001E4289EB0, a2, &v43);
    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_15_146();
      OUTLINED_FUNCTION_31_77();
    }

    else
    {
      sub_1E329505C(&v43);
      v33 = 0;
    }

    v29[35] = v33;

    sub_1E3277E60(0xD000000000000015, 0x80000001E4289ED0, a2, &v43);
    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_15_146();
      OUTLINED_FUNCTION_31_77();
    }

    else
    {
      sub_1E329505C(&v43);
      v34 = 0;
    }

    v29[36] = v34;

    sub_1E3277E60(0xD00000000000001DLL, 0x80000001E4289EF0, a2, &v43);
    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_15_146();
      OUTLINED_FUNCTION_31_77();
    }

    else
    {
      sub_1E329505C(&v43);
      v35 = 0;
    }

    v29[37] = v35;

    return sub_1E39BEDCC(a1, a2, a3);
  }

  v37 = a1;
  v38 = a3;
  v12 = 32;
  v39 = a2;
  v40 = v9;
  while (1)
  {
    v13 = *(v10 + v12);
    OUTLINED_FUNCTION_45_64();
    swift_allocObject();

    v15 = sub_1E3F565C0(v14, v13);
    if (!v15)
    {
      goto LABEL_13;
    }

    v16 = v15;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v46[0] = v4[32];
    v17 = v46[0];
    v4[32] = 0x8000000000000000;
    v18 = v13;
    v19 = sub_1E3F573D4(v13);
    if (__OFADD__(*(v17 + 16), (v20 & 1) == 0))
    {
      break;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1B0);
    if (sub_1E4207644())
    {
      v23 = sub_1E3F573D4(v18);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_37;
      }

      v21 = v23;
    }

    v10 = v40;
    v25 = v46[0];
    if (v22)
    {
      *(*(v46[0] + 56) + 8 * v21) = v16;
    }

    else
    {
      *(v46[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      *(v25[6] + v21) = v18;
      *(v25[7] + 8 * v21) = v16;
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_36;
      }

      v25[2] = v28;
    }

    v4[32] = v25;
    swift_endAccess();

    a2 = v39;
LABEL_13:
    ++v12;
    if (!--v11)
    {

      a3 = v38;
      a1 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E3F536C8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_45_64();
  swift_allocObject();
  return sub_1E3F565C0(a1, a2);
}

uint64_t sub_1E3F53710(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E3F573D4(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3F53760()
{
  OUTLINED_FUNCTION_48_1();
  swift_allocObject();
  OUTLINED_FUNCTION_13_11();
  return sub_1E3F537AC();
}

uint64_t sub_1E3F537AC()
{
  OUTLINED_FUNCTION_48_1();
  type metadata accessor for ImageViewModel.IndvidualImageRecord();
  sub_1E3F5310C();
  v1 = sub_1E4205CB4();
  *(v0 + 248) = 0;
  *(v0 + 256) = v1;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0;
  OUTLINED_FUNCTION_13_11();

  return sub_1E39C0300();
}

uint64_t sub_1E3F5382C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1B8);
  sub_1E3F575B0(&qword_1EE2830E8);
  v0 = sub_1E4207114();
  MEMORY[0x1E69124B0](v0);
  OUTLINED_FUNCTION_13();
  (*(v1 + 880))();
  type metadata accessor for ImageViewModel.IndvidualImageRecord();
  sub_1E3F5310C();
  v2 = sub_1E4205D44();

  return MEMORY[0x1E69124B0](v2);
}

uint64_t sub_1E3F53940()
{
  type metadata accessor for ImageViewModel();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;

    if (sub_1E39C0504(v2))
    {
      v3 = *(v0 + 248);
      v4 = v2[31];
      if (v3)
      {
        if (v4)
        {
          type metadata accessor for ImageViewModel.IndvidualImageRecord();
          if (sub_1E3F56EF4(v3, v4))
          {
            goto LABEL_6;
          }
        }
      }

      else if (!v4)
      {
LABEL_6:
        OUTLINED_FUNCTION_8();
        (*(v5 + 880))();
        OUTLINED_FUNCTION_47_0();
        (*(v6 + 880))();
        v7 = OUTLINED_FUNCTION_31_4();
        v8 = sub_1E3F53A58(v7, v2);

        return v8 & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1E3F53A58(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = *(*(v3 + 48) + v12);

    v15 = sub_1E3F573D4(v14);
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v17 = v15;
    type metadata accessor for ImageViewModel.IndvidualImageRecord();
    LOBYTE(v17) = sub_1E3F56EF4(*(*(a2 + 56) + 8 * v17), v13);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_1E3F53B90()
{
  OUTLINED_FUNCTION_5_16();
  if (v0 || (OUTLINED_FUNCTION_111(), (*(v1 + 392))()))
  {
    type metadata accessor for ImageLayout();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      OUTLINED_FUNCTION_111();
      v5 = *(v4 + 880);

      v7 = *(v5(v6) + 16);

      if (v7)
      {
        v8 = *(*v3 + 1568);

        v8(v9);
      }

      v13 = *(*v3 + 1560);

      v15 = v13(v14);
      v16 = (*(*v3 + 1576))(v15);

      OUTLINED_FUNCTION_6_12();
      v19 = sub_1E3F53DC4(v17, v18, v3);

      return v19;
    }
  }

  OUTLINED_FUNCTION_6_12();

  return sub_1E3F53DC4(v10, v11, 0);
}

id sub_1E3F53DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_16();
  v8 = v7;
  v10 = sub_1E3F54870(v9);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v117 = v3;
  v119 = a3;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v12 = *(v11 + 48);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v13 = *(v11 + 49);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v14 = *(v11 + 50);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v15 = *(v11 + 51);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v11 + 24))
  {
    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v18 = *(v11 + 40);
  if (v18 && v8)
  {
    v115 = v16;
    v16 = *(v11 + 32);

    if ([v8 userInterfaceStyle] == 2)
    {

      v17 = v18;
    }

    else
    {

      v16 = v115;
    }
  }

  else
  {
  }

  if (v15)
  {

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v19 = 0;
    if (*(v11 + 128) >> 60 == 15)
    {
      goto LABEL_64;
    }

    sub_1E3280A90(0, &qword_1EE23B080);
    v20 = OUTLINED_FUNCTION_123_1();
    sub_1E38DCD14(v20, v21);
    v22 = OUTLINED_FUNCTION_123_1();
    sub_1E38DCD14(v22, v23);
    v24 = OUTLINED_FUNCTION_123_1();
    v26 = sub_1E39FEB38(v24, v25);
    v19 = v26;
    if (v26)
    {
      if (v119)
      {
        [v26 setRenderAsTemplate_];
        v27 = (*(*v119 + 744))(v19);
      }

      else
      {
        [v26 setRenderAsTemplate_];
        v41 = v19;
        v27 = 0;
      }

      v42 = OUTLINED_FUNCTION_46_57();
      [v42 v43];
    }

    OUTLINED_FUNCTION_8();
    v44 += 67;
    v45 = *v44;
    if ((*v44)())
    {
      v160 = &unk_1F5D5D408;
      v161 = &off_1F5D5C828;
      OUTLINED_FUNCTION_17_133();
      sub_1E3F9F164(v46);

      __swift_destroy_boxed_opaque_existential_1(&v159);
      if (*(&v158 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        v47 = OUTLINED_FUNCTION_25_90();
        if ((v47 & 1) == 0)
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_28_79(v47, v48, v49, v50, v51, v52, v53, v54, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, *(&v157 + 1), v158, *(&v158 + 1), v159);
        if (v160)
        {
          v55 = OUTLINED_FUNCTION_14_160();
          if ((v55 & 1) == 0)
          {

            goto LABEL_44;
          }

          OUTLINED_FUNCTION_27_85(v55, v56, v57, v58, v59, v60, v61, v62, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, *(&v157 + 1), v158, *(&v158 + 1), v159);

          if (v160)
          {
            v47 = OUTLINED_FUNCTION_14_160();
            if (v47)
            {
              v47 = [v19 setRenderSize_];
            }

LABEL_44:
            if ((v45)(v47))
            {
              v160 = &unk_1F5D5D408;
              v161 = &off_1F5D5C828;
              OUTLINED_FUNCTION_17_133();
              sub_1E3F9F164(v64);

              __swift_destroy_boxed_opaque_existential_1(&v159);
              if (*(&v158 + 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
                v65 = OUTLINED_FUNCTION_25_90();
                if ((v65 & 1) == 0)
                {
LABEL_55:
                  if ((v45)(v65))
                  {
                    v160 = &unk_1F5D5D408;
                    v161 = &off_1F5D5C828;
                    OUTLINED_FUNCTION_17_133();
                    sub_1E3F9F164(v82);

                    __swift_destroy_boxed_opaque_existential_1(&v159);
                    if (*(&v158 + 1))
                    {
                      if (OUTLINED_FUNCTION_25_90() && v19)
                      {
                        v83 = *&v159;
                        v84 = v19;
                        [v84 setScaleWithinRenderSize_];
                        v85 = OUTLINED_FUNCTION_123_1();
                        sub_1E38DCE1C(v85, v86);
                      }

                      else
                      {
                        v89 = OUTLINED_FUNCTION_123_1();
                        sub_1E38DCE1C(v89, v90);
                      }

                      goto LABEL_64;
                    }

                    v91 = OUTLINED_FUNCTION_123_1();
                    sub_1E38DCE1C(v91, v92);
                  }

                  else
                  {
                    v87 = OUTLINED_FUNCTION_123_1();
                    sub_1E38DCE1C(v87, v88);
                    v157 = 0u;
                    v158 = 0u;
                  }

                  sub_1E329505C(&v157);
LABEL_64:

                  return v19;
                }

                OUTLINED_FUNCTION_28_79(v65, v66, v67, v68, v69, v70, v71, v72, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, *(&v157 + 1), v158, *(&v158 + 1), v159);
                if (v160)
                {
                  v73 = OUTLINED_FUNCTION_14_160();
                  if ((v73 & 1) == 0)
                  {

                    goto LABEL_55;
                  }

                  OUTLINED_FUNCTION_27_85(v73, v74, v75, v76, v77, v78, v79, v80, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v157, *(&v157 + 1), v158, *(&v158 + 1), v159);

                  if (v160)
                  {
                    v65 = OUTLINED_FUNCTION_14_160();
                    if (v65)
                    {
                      v65 = [v19 setBackgroundSize_];
                    }

                    goto LABEL_55;
                  }
                }

                else
                {
                }

                v81 = &v159;
LABEL_54:
                v65 = sub_1E329505C(v81);
                goto LABEL_55;
              }
            }

            else
            {
              v157 = 0u;
              v158 = 0u;
            }

            v81 = &v157;
            goto LABEL_54;
          }
        }

        else
        {
        }

        v63 = &v159;
LABEL_43:
        v47 = sub_1E329505C(v63);
        goto LABEL_44;
      }
    }

    else
    {
      v157 = 0u;
      v158 = 0u;
    }

    v63 = &v157;
    goto LABEL_43;
  }

  if (v12)
  {
    *&v159 = v16;
    *(&v159 + 1) = v17;
    *&v157 = 0x656372756F736572;
    *(&v157 + 1) = 0xEB000000002F2F3ALL;
    OUTLINED_FUNCTION_40_64();
    sub_1E32822E0();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_37_71();

    v28 = v119;
LABEL_23:
    OUTLINED_FUNCTION_6_12();
    v19 = sub_1E3F55304(v29, v30, v31, v28);

    return v19;
  }

  if (v14)
  {
    v28 = v119;
    if (!v13)
    {
      *&v159 = v16;
      *(&v159 + 1) = v17;
      *&v157 = 0x2F3A6C6F626D7973;
      *(&v157 + 1) = 0xE90000000000002FLL;
      OUTLINED_FUNCTION_40_64();
      sub_1E32822E0();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_37_71();

      goto LABEL_23;
    }

LABEL_22:
    *&v159 = v16;
    *(&v159 + 1) = v17;
    *&v157 = 0xD000000000000012;
    *(&v157 + 1) = 0x80000001E4289E90;
    OUTLINED_FUNCTION_40_64();
    sub_1E32822E0();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_37_71();

    goto LABEL_23;
  }

  v28 = v119;
  if (v13)
  {
    goto LABEL_22;
  }

  if (!v119)
  {

    return 0;
  }

  if (v5 == 0.0 && v4 == 0.0)
  {
    v5 = (*(*v119 + 2288))(v32);
    v4 = v33;
  }

  sub_1E3280A90(0, &qword_1EE23B008);
  OUTLINED_FUNCTION_31_4();

  v34 = OUTLINED_FUNCTION_6_12();
  v19 = sub_1E3F55868(v34, v38, v5, v4, v35, v36, v37);
  if (v19)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v11 + 160))
    {
      v39 = *(v11 + 152);
      v40 = *(v11 + 160);
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    sub_1E37FB7F0(v39, v40, v19, &selRef_setCropCode_);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [v19 setTemplated_];
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v11 + 64))
    {
      v94 = *(v11 + 56);
      v95 = *(v11 + 64);
    }

    else
    {
      v94 = 0;
      v95 = 0xE000000000000000;
    }

    sub_1E37FB7F0(v94, v95, v19, &selRef_setExtension_);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v11 + 112))
    {

      v96 = sub_1E4205ED4();
    }

    else
    {
      v96 = 0;
    }

    v97 = OUTLINED_FUNCTION_46_57();
    [v97 v98];

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v11 + 88))
    {
      [v19 setPlaceholderColor_];
    }

    sub_1E3F55908(v19, v119);
    OUTLINED_FUNCTION_47_0();
    (*(v99 + 904))();
    if (v100)
    {
      v101 = sub_1E4205ED4();
    }

    else
    {
      v101 = 0;
    }

    v102 = OUTLINED_FUNCTION_46_57();
    [v102 v103];

    v160 = &unk_1F5D5D408;
    v161 = &off_1F5D5C818;
    LOBYTE(v159) = 1;
    v104 = sub_1E39C29F0(&v159, 1);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    [v19 setClearsExisting_];
  }

  return v19;
}

BOOL sub_1E3F54788(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 880))();
  v4 = sub_1E3F53710(a1, v3);

  if (v4)
  {
  }

  return v4 != 0;
}

uint64_t sub_1E3F54800(char a1)
{
  v1 = sub_1E3F54870(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1E3F54870(char a1)
{
  v3 = *(v1 + 248);
  if (v3 && ((OUTLINED_FUNCTION_25(), swift_beginAccess(), v4 = *(v3 + 48), OUTLINED_FUNCTION_25(), swift_beginAccess(), (v4 & 1) != 0) || *(v3 + 50) == 1))
  {
  }

  else
  {

    sub_1E3F54B88(a1);
    OUTLINED_FUNCTION_14_17();
    if (v6 || (v7 = v5, OUTLINED_FUNCTION_8(), v9 = (*(v8 + 880))(), v10 = sub_1E3F53710(v7, v9), , !v10))
    {
      if (!v3)
      {
        return v3;
      }
    }

    else
    {

      v3 = v10;
    }
  }

  v11 = *(v1 + 280);
  if (v11 && a1 != 7)
  {

    v12 = sub_1E3A253B8(a1);
    sub_1E3277E60(v12, v13, v11, &v17);

    if (v18)
    {
      if (OUTLINED_FUNCTION_8_17())
      {
        OUTLINED_FUNCTION_3_0();
        *(v3 + 152) = v15;
        *(v3 + 160) = v16;
      }
    }

    else
    {
      sub_1E329505C(&v17);
    }
  }

  return v3;
}

uint64_t sub_1E3F549FC()
{
  OUTLINED_FUNCTION_156();
  result = sub_1E3F54870(v2);
  if (result)
  {
    v4 = result;
    OUTLINED_FUNCTION_14_0();
    *(v4 + 152) = v1;
    *(v4 + 160) = v0;
  }

  return result;
}

uint64_t sub_1E3F54A60()
{
  OUTLINED_FUNCTION_52_49();
  sub_1E3F54B88(v1);
  OUTLINED_FUNCTION_14_17();
  if (!v3)
  {
    v4 = v2;
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 880))();
    sub_1E3F53710(v4, v6);

    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_32_79();
    *(v8 - 16) = &v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1B8);
    sub_1E4148DE0(sub_1E3F57524);

    v0 = v11;
  }

  if (!v0)
  {
    return 0;
  }

  v9 = sub_1E3F54C54();

  return v9;
}

void sub_1E3F54B88(char a1)
{
  if (a1 == 7)
  {
    goto LABEL_10;
  }

  v3 = *(v1 + 296);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = sub_1E3A253B8(a1);
  sub_1E3277E60(v4, v5, v3, &v8);

  if (!v9)
  {
    sub_1E329505C(&v8);
    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_8_17() & 1) == 0 || (sub_1E3C7F7DC(), OUTLINED_FUNCTION_14_17(), v6))
  {
LABEL_8:
    sub_1E3A25310(a1);
    OUTLINED_FUNCTION_14_17();
    if (!v6)
    {
      return;
    }

LABEL_10:
    v7 = sub_1E3A2532C();
    sub_1E3A25310(v7);
  }
}

uint64_t sub_1E3F54C54()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = *(v0 + 80);
  if (v1)
  {

    v2 = sub_1E4205ED4();

    v1 = VUIUserInterfaceStyleFromTheme();
  }

  return v1;
}

uint64_t sub_1E3F54CD4()
{
  OUTLINED_FUNCTION_52_49();
  sub_1E3F54B88(v1);
  OUTLINED_FUNCTION_14_17();
  if (!v3)
  {
    v4 = v2;
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 880))();
    sub_1E3F53710(v4, v6);

    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_32_79();
    *(v8 - 16) = &v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1B8);
    sub_1E4148DE0(sub_1E3F577CC);

    v0 = v11;
  }

  if (!v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v9 = *(v0 + 96);

  return v9;
}

void *sub_1E3F54DF8(char a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + 248);

  sub_1E3F54B88(a1);
  OUTLINED_FUNCTION_14_17();
  if (!v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_111();
    v11 = (*(v10 + 880))();
    sub_1E3F53710(v9, v11);

    MEMORY[0x1EEE9AC00](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D1B8);
    sub_1E4148DE0(sub_1E3F577CC);
  }

  if (v6 && (OUTLINED_FUNCTION_25(), swift_beginAccess(), (v13 = *(v6 + 88)) != 0))
  {
    v14 = v13;
    if ((a2 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v17 = (*(v15 + 392))(v16);
    if (v17)
    {
      v13 = (*(*v17 + 744))(v17);

      if ((a2 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  OUTLINED_FUNCTION_111();
  v20 = (*(v18 + 392))(v19);
  if (v20)
  {
    v21 = (*(*v20 + 768))(v20);

    if (v21)
    {

      v13 = v21;
    }
  }

LABEL_14:

  return v13;
}