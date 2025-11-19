void sub_1E3D37958()
{
  *(v0 + 99) = 2;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 104) = MEMORY[0x1E69E7CC8];
  *(v0 + 112) = v1;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3D379CC(uint64_t a1, void *a2, unsigned int a3)
{
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_5_0();
  v6 = *(v3 + 104);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v3 + 104) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return sub_1E3D36A6C();
    }

    v12 = *(v8 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      do
      {
LABEL_9:
        v12 &= v12 - 1;
        OUTLINED_FUNCTION_8();
        v18 = *(v17 + 1640);

        v18(a1, a2, a3);
      }

      while (v12);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D37B1C(uint64_t a1, void *a2)
{
  v4 = dbl_1E42A73B0[sub_1E3886250() == 0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v5 = OUTLINED_FUNCTION_31_54();
  *(v5 + 16) = xmmword_1E429DCC0;
  v6 = [a2 colorWithAlphaComponent_];
  *(v5 + 32) = v6;
  *(v5 + 40) = OUTLINED_FUNCTION_41_48(v6, sel_colorWithAlphaComponent_);
  return (*(*a1 + 1800))(v5);
}

uint64_t sub_1E3D37C04(int a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  LODWORD(v10) = a1;
  if (sub_1E3CCE24C(*(v6 + 98)))
  {
    if (TVAppFeature.isEnabled.getter(10))
    {
      OUTLINED_FUNCTION_5_44();
      v12 = *(v6 + 112);
    }

    else
    {
      OUTLINED_FUNCTION_11_117();
      v12 = *(v6 + 104);
    }

    v24 = sub_1E3887098(2, v12);
    swift_endAccess();
    if (v24)
    {
      v25 = *(*v24 + 304);

      v27 = COERCE_DOUBLE(v25(v26));
      if (v28)
      {
        v29 = 120.0;
      }

      else
      {
        v29 = v27;
      }

      v471.origin.x = OUTLINED_FUNCTION_2_0();
      v30 = v29 / CGRectGetHeight(v471);
      (*(*v24 + 1752))(0x3FE0000000000000, *&v30, 0);
    }

    if (TVAppFeature.isEnabled.getter(10))
    {
      OUTLINED_FUNCTION_5_44();
      v31 = *(v6 + 112);
    }

    else
    {
      OUTLINED_FUNCTION_11_117();
      v31 = *(v6 + 104);
    }

    v32 = sub_1E3887098(3, v31);
    swift_endAccess();
    if (v32)
    {
      v33 = a2 + 10.0;
      v472.origin.x = OUTLINED_FUNCTION_2_0();
      Height = CGRectGetHeight(v472);
      v35 = a2 + 182.0;
      v36 = (Height - (a2 + 10.0)) / Height;
      v473.origin.x = OUTLINED_FUNCTION_2_0();
      *&v37 = 700.0 / CGRectGetWidth(v473);
      v474.origin.x = OUTLINED_FUNCTION_2_0();
      v38 = CGRectGetHeight(v474) - v35;
      v475.origin.x = OUTLINED_FUNCTION_2_0();
      v39 = v38 / CGRectGetHeight(v475);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0);
      v40 = OUTLINED_FUNCTION_22_9();
      *(v40 + 16) = xmmword_1E4297BD0;
      *(v40 + 32) = 0;
      *(v40 + 40) = (v33 + -88.0) / v33;
      *(v40 + 48) = 0x3FF0000000000000;
      LOBYTE(v416) = 0;
      OUTLINED_FUNCTION_25_73();
      HIDWORD(v363) = v10;
      v10 = v41;
      sub_1E3C3DE00(v41);
      OUTLINED_FUNCTION_2_169(v42, v43, v44, v45, v46, v47, v48, v49, v312, v338, v363, *&v389, 0.5, 1.0, *&v416, *&v417, *&v418, *&v419, *&v420, *&v421, *&v422, *&v423, *&v424, *&v425, *&v426, *&v427, *&v428, *&v429, *&v430, *&v431, *v432, *&v432[1], *&v433, *&v434, *v435, *&v435[1], *&v436, *&v437, *&v438, *&v439, *&v440, *&v441, *&v442, *(&v442 + 1), *&v443, *&v444, *&v445, *&v446, *&v447, *&v448, *&v449, *&v450, *&v451, *&v452, *&v453, *&v454, *&v455, *&v456, *&v457);
      sub_1E3C3DE00(v10);
      OUTLINED_FUNCTION_1_201(v50, v51, v52, v53, v54, v55, v56, v57, v313, v339, v364, v390, *__dst, *&__dst[8], *&v416, *&v417, *&v418, *&v419, *&v420, *&v421, *&v422, *&v423, *&v424, *&v425, *&v426, *&v427, *&v428, *&v429, *&v430, *&v431, *v432, *&v432[1], *&v433, *&v434, *v435, *&v435[1], *&v436, *&v437, *&v438, *&v439, *&v440, *&v441, *&v442, *(&v442 + 1), *&v443, *&v444, *&v445, *&v446, *&v447, *&v448, *&v449);
      v58 = sub_1E3C3DE00(v10);
      OUTLINED_FUNCTION_6_148(v58, v59, v60, v61, v62, v63, v64, v65, v314, v340, v365, v391, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442);
      v66 = sub_1E3C3DE00(v10);
      LOBYTE(v433) = v436;
      v74 = OUTLINED_FUNCTION_0_223(v66, v67, v68, v69, v70, v71, v72, v73, v315, v341, v366, v392, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v435[0], v435[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
      sub_1E3C2FCB8(v74, v75);
      OUTLINED_FUNCTION_23_71(v76, v77, v78, v79, v80, v81, v82, v83, v316, v342, v367, v393, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_36();
      v85 = *(v84 + 1600);
      v94 = OUTLINED_FUNCTION_7_25(v86, v87, v88, v89, v90, v91, v92, v93, v317, v343, v368, v394, __dst[0]);
      v85(v94, 115);
      LOBYTE(v416) = 0;
      v462 = v39;
      LOBYTE(v463) = 0;
      sub_1E3C3DE00(v10);
      OUTLINED_FUNCTION_2_169(v95, v96, v97, v98, v99, v100, v101, v102, v318, v344, v369, *&v85, 0.5, v36, *&v416, *&v417, *&v418, *&v419, *&v420, *&v421, *&v422, *&v423, *&v424, *&v425, *&v426, *&v427, *&v428, *&v429, *&v430, *&v431, *v432, *&v432[1], *&v433, *&v434, *v435, *&v435[1], *&v436, *&v437, *&v438, *&v439, *&v440, *&v441, *&v442, *(&v442 + 1), *&v443, *&v444, *&v445, *&v446, *&v447, *&v448, *&v449, *&v450, *&v451, *&v452, *&v453, *&v454, *&v455, *&v456, *&v457);
      sub_1E3C3DE00(v10);
      OUTLINED_FUNCTION_1_201(v103, v104, v105, v106, v107, v108, v109, v110, v319, v345, v370, v395, *__dst, *&__dst[8], *&v416, *&v417, *&v418, *&v419, *&v420, *&v421, *&v422, *&v423, *&v424, *&v425, *&v426, *&v427, *&v428, *&v429, *&v430, *&v431, *v432, *&v432[1], *&v433, *&v434, *v435, *&v435[1], *&v436, *&v437, *&v438, *&v439, *&v440, *&v441, *&v442, *(&v442 + 1), *&v443, *&v444, *&v445, *&v446, *&v447, *&v448, *&v449);
      v111 = sub_1E3C3DE00(v10);
      OUTLINED_FUNCTION_6_148(v111, v112, v113, v114, v115, v116, v117, v118, v320, v346, v371, v396, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442);
      v119 = sub_1E3C3DE00(v10);
      LOBYTE(v433) = v436;
      v127 = OUTLINED_FUNCTION_0_223(v119, v120, v121, v122, v123, v124, v125, v126, v321, v347, v372, v397, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v435[0], v435[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
      sub_1E3C2FCB8(v127, v128);
      OUTLINED_FUNCTION_23_71(v129, v130, v131, v132, v133, v134, v135, v136, v322, v348, v373, v398, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v37);
      v137 = OUTLINED_FUNCTION_18();
      v145 = OUTLINED_FUNCTION_7_25(v137, v138, v139, v140, v141, v142, v143, v144, v323, v349, v374, v399, __dst[0]);
      v85(v145, 116);
      *__dst = v40;
      v461 = &unk_1F5D80868;
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
      sub_1E3C3DE00(v146);
      sub_1E3C3DE00(v146);
      sub_1E3C3DE00(v146);
      v147 = sub_1E3C3DE00(v146);
      v155 = OUTLINED_FUNCTION_0_223(v147, v148, v149, v150, v151, v152, v153, v154, v324, v24, v375, v400, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v435[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v442, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v449, v446, v447, v448, v449, v450, v451, v452, v457);
      sub_1E3C2FCB8(v155, v156);
      v157 = OUTLINED_FUNCTION_18();
      v165 = OUTLINED_FUNCTION_7_25(v157, v158, v159, v160, v161, v162, v163, v164, v325, v350, v376, v401, v464);
      v402(v165, 114);
      LOBYTE(v10) = BYTE4(v377);

      __dst[0] = 1;
      LOBYTE(v461) = 2;
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v445) = v449;
      sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v438) = v442;
      v166 = sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
      LOBYTE(v432[0]) = v435[0];
      v174 = OUTLINED_FUNCTION_0_223(v166, v167, v168, v169, v170, v171, v172, v173, v326, v351, v377, v402, *__dst, v465, v466, v467, v468, v469, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v457);
      sub_1E3C2FCB8(v174, v175);
      v176 = OUTLINED_FUNCTION_18();
      v184 = OUTLINED_FUNCTION_7_25(v176, v177, v178, v179, v180, v181, v182, v183, v327, v352, v378, v403, v464);
      v404(v184, 117);
    }

    OUTLINED_FUNCTION_11_117();
    if (sub_1E3887098(3, *(v7 + 104)))
    {
      swift_endAccess();
      OUTLINED_FUNCTION_8();
      (*(v185 + 944))(v10 & 1);
    }

    else
    {
      swift_endAccess();
    }

    if (v10)
    {
      OUTLINED_FUNCTION_3_0();
      v461 = *(v7 + 128);

      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C740);
      sub_1E4148C68(sub_1E3D39768, v186, __dst);

      v187 = *__dst;
      OUTLINED_FUNCTION_36();
      v189 = *(v188 + 944);

      v189(0);
      if (a6 + a5 / -0.75 > 0.0)
      {
        v190 = a6 + a5 / -0.75;
      }

      else
      {
        v190 = 0.0;
      }

      v191 = v190 + 40.0 + 56.0;
      (*(*v187 + 312))(*&v191, 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0);
      v192 = OUTLINED_FUNCTION_41_3();
      *(v192 + 16) = xmmword_1E4298AD0;
      *(v192 + 32) = 0;
      *(v192 + 40) = v190 / v191;
      *(v192 + 48) = (v190 + 40.0) / v191;
      *(v192 + 56) = 0x3FF0000000000000;
      (*(*v187 + 1824))();
      *(v7 + 128) = v187;
    }

    else
    {
      result = OUTLINED_FUNCTION_5_0();
      if (!*(v7 + 128))
      {
        return result;
      }

      OUTLINED_FUNCTION_8();
      v194 = *(v193 + 944);

      v194(1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_117();
    v13 = *(v6 + 104);
    if (!*(v13 + 16))
    {
      return swift_endAccess();
    }

    v14 = sub_1E3887C44(14);
    if ((v15 & 1) == 0)
    {
      return swift_endAccess();
    }

    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    v17 = objc_opt_self();

    v18 = [v17 currentDevice];
    v19 = [v18 orientation];

    v20 = [objc_opt_self() isPortraitIgnoringFlatOrientation:v19 viewSize:{a5, a6}];
    type metadata accessor for LayoutGrid();
    v470.origin.x = OUTLINED_FUNCTION_2_0();
    Width = CGRectGetWidth(v470);
    sub_1E3A2579C(Width);
    if ([objc_opt_self() isPhone])
    {
      v22 = *(*v16 + 944);

      v22(v20);
    }

    if (v20 & 1) == 0 && ((sub_1E373F630() & 1) != 0 || (sub_1E373F630() & 1) != 0 || (sub_1E373F630()))
    {
      __asm { FMOV            V0.2D, #0.5 }

      *__dst = _Q0;
      LOBYTE(v416) = 0;
      OUTLINED_FUNCTION_25_73();
      v258 = v257;
      sub_1E3C3DE00(v257);
      OUTLINED_FUNCTION_2_169(v259, v260, v261, v262, v263, v264, v265, v266, v312, v338, v363, *&v389, *__dst, *&__dst[8], *&v416, *&v417, *&v418, *&v419, *&v420, *&v421, *&v422, *&v423, *&v424, *&v425, *&v426, *&v427, *&v428, *&v429, *&v430, *&v431, *v432, *&v432[1], *&v433, *&v434, *v435, *&v435[1], *&v436, *&v437, *&v438, *&v439, *&v440, *&v441, *&v442, *(&v442 + 1), *&v443, *&v444, *&v445, *&v446, *&v447, *&v448, *&v449, *&v450, *&v451, *&v452, *&v453, *&v454, *&v455, *&v456, *&v457);
      sub_1E3C3DE00(v258);
      OUTLINED_FUNCTION_1_201(v267, v268, v269, v270, v271, v272, v273, v274, v333, v358, v384, v410, *__dst, *&__dst[8], *&v416, *&v417, *&v418, *&v419, *&v420, *&v421, *&v422, *&v423, *&v424, *&v425, *&v426, *&v427, *&v428, *&v429, *&v430, *&v431, *v432, *&v432[1], *&v433, *&v434, *v435, *&v435[1], *&v436, *&v437, *&v438, *&v439, *&v440, *&v441, *&v442, *(&v442 + 1), *&v443, *&v444, *&v445, *&v446, *&v447, *&v448, *&v449);
      v275 = sub_1E3C3DE00(v258);
      OUTLINED_FUNCTION_6_148(v275, v276, v277, v278, v279, v280, v281, v282, v334, v359, v385, v411, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442);
      v283 = sub_1E3C3DE00(v258);
      LOBYTE(v433) = v436;
      v291 = OUTLINED_FUNCTION_0_223(v283, v284, v285, v286, v287, v288, v289, v290, v335, v360, v386, v412, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v435[0], v435[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
      sub_1E3C2FCB8(v291, v292);
      OUTLINED_FUNCTION_23_71(v293, v294, v295, v296, v297, v298, v299, v300, v336, v361, v387, v413, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v309 = OUTLINED_FUNCTION_7_25(v301, v302, v303, v304, v305, v306, v307, v308, v337, v362, v388, v414, __dst[0]);
      v310(v309, 116);
      OUTLINED_FUNCTION_9_2();
      (*(v311 + 1776))(2);
    }

    else
    {
      v476.origin.x = OUTLINED_FUNCTION_2_0();
      v195 = CGRectGetHeight(v476) - a2 + -120.0;
      v477.origin.x = OUTLINED_FUNCTION_2_0();
      *&__dst[8] = v195 / CGRectGetHeight(v477);
      LOBYTE(v416) = 0;
      __asm { FMOV            V0.2D, #0.5 }

      OUTLINED_FUNCTION_25_73();
      v202 = v201;
      sub_1E3C3DE00(v201);
      OUTLINED_FUNCTION_2_169(v203, v204, v205, v206, v207, v208, v209, v210, v312, v338, v363, *&v389, 0.5, *&__dst[8], *&v416, *&v417, *&v418, *&v419, *&v420, *&v421, *&v422, *&v423, *&v424, *&v425, *&v426, *&v427, *&v428, *&v429, *&v430, *&v431, *v432, *&v432[1], *&v433, *&v434, *v435, *&v435[1], *&v436, *&v437, *&v438, *&v439, *&v440, *&v441, *&v442, *(&v442 + 1), *&v443, *&v444, *&v445, *&v446, *&v447, *&v448, *&v449, *&v450, *&v451, *&v452, *&v453, *&v454, *&v455, *&v456, *&v457);
      sub_1E3C3DE00(v202);
      OUTLINED_FUNCTION_1_201(v211, v212, v213, v214, v215, v216, v217, v218, v328, v353, v379, v405, *__dst, *&__dst[8], *&v416, *&v417, *&v418, *&v419, *&v420, *&v421, *&v422, *&v423, *&v424, *&v425, *&v426, *&v427, *&v428, *&v429, *&v430, *&v431, *v432, *&v432[1], *&v433, *&v434, *v435, *&v435[1], *&v436, *&v437, *&v438, *&v439, *&v440, *&v441, *&v442, *(&v442 + 1), *&v443, *&v444, *&v445, *&v446, *&v447, *&v448, *&v449);
      v219 = sub_1E3C3DE00(v202);
      OUTLINED_FUNCTION_6_148(v219, v220, v221, v222, v223, v224, v225, v226, v329, v354, v380, v406, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442);
      v227 = sub_1E3C3DE00(v202);
      LOBYTE(v433) = v436;
      v235 = OUTLINED_FUNCTION_0_223(v227, v228, v229, v230, v231, v232, v233, v234, v330, v355, v381, v407, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v435[0], v435[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453);
      sub_1E3C2FCB8(v235, v236);
      OUTLINED_FUNCTION_23_71(v237, v238, v239, v240, v241, v242, v243, v244, v331, v356, v382, v408, *__dst, *&__dst[8], v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432[0], v432[1], v433, v434, v435[0], v435[1], v436, v437, v438, v439, v440, v441, v442, *(&v442 + 1), v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v253 = OUTLINED_FUNCTION_7_25(v245, v246, v247, v248, v249, v250, v251, v252, v332, v357, v383, v409, __dst[0]);
      v254(v253, 116);
      OUTLINED_FUNCTION_9_2();
      (*(v255 + 1776))(1);
    }
  }
}

uint64_t sub_1E3D38708(void *a1)
{
  result = sub_1E3CCE24C(*(v1 + 98));
  if (result)
  {
    if (TVAppFeature.isEnabled.getter(10))
    {
      OUTLINED_FUNCTION_5_44();
      v4 = *(v1 + 112);
    }

    else
    {
      OUTLINED_FUNCTION_5_44();
      v4 = *(v1 + 104);
    }

    v5 = sub_1E3887098(2, v4);
    swift_endAccess();
    if (v5)
    {

      sub_1E3D37B1C(v6, a1);
    }

    if (TVAppFeature.isEnabled.getter(10))
    {
      OUTLINED_FUNCTION_5_44();
      v7 = *(v1 + 112);
    }

    else
    {
      OUTLINED_FUNCTION_5_44();
      v7 = *(v1 + 104);
    }

    v8 = sub_1E3887098(3, v7);
    swift_endAccess();
    if (v8)
    {
      if (TVAppFeature.isEnabled.getter(10))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v9 = OUTLINED_FUNCTION_22_9();
        *(v9 + 16) = xmmword_1E42A73A0;
        *(v9 + 32) = [a1 colorWithAlphaComponent_];
        v10 = [a1 colorWithAlphaComponent_];
        *(v9 + 40) = v10;
        *(v9 + 48) = OUTLINED_FUNCTION_41_48(v10, sel_colorWithAlphaComponent_);
        (*(*v8 + 1800))(v9);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v11 = OUTLINED_FUNCTION_22_9();
        *(v11 + 16) = xmmword_1E42A73A0;
        *(v11 + 32) = [a1 colorWithAlphaComponent_];
        v12 = [a1 colorWithAlphaComponent_];
        *(v11 + 40) = v12;
        *(v11 + 48) = OUTLINED_FUNCTION_41_48(v12, sel_colorWithAlphaComponent_);
        v13 = OUTLINED_FUNCTION_31_54();
        *(v13 + 16) = xmmword_1E429DCC0;
        v14 = [a1 colorWithAlphaComponent_];
        *(v13 + 32) = v14;
        *(v13 + 40) = OUTLINED_FUNCTION_41_48(v14, sel_colorWithAlphaComponent_);
        v19[2] = v13;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B0);
        sub_1E3C3DE00(v15);
        v19[0] = v19[1];
        sub_1E3C3DE00(v15);
        v18[10] = v18[11];
        sub_1E3C3DE00(v15);
        v18[8] = v18[9];
        sub_1E3C3DE00(v15);
        v18[6] = v18[7];
        sub_1E3C2FCB8(v19, v20);
        v18[0] = v20[0];
        v18[1] = v20[1];
        v18[2] = v20[2];
        v18[3] = v20[3];
        v18[4] = v20[4];
        v18[5] = v20[5];
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_36();
        (*(v16 + 1600))(v18, 113, v17 & 1, v15);
      }
    }
  }

  return result;
}

unint64_t sub_1E3D38ADC()
{
  result = qword_1ECF37AD8;
  if (!qword_1ECF37AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37AD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingGradientLayout.GradientSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3D38C30()
{
  v1 = v0;
  type metadata accessor for ViewGradientLayout();
  v2 = sub_1E40C3088();
  (*(*v2 + 1728))(0x3FE0000000000000, 0, 0);
  (*(*v2 + 1776))(1);
  v3 = *(*v2 + 312);

  v3(0x405E000000000000, 0);

  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  sub_1E3D37B1C(v2, v5);

  v6 = sub_1E40C3088();
  type metadata accessor for CGPoint(0);
  v8 = v7;
  sub_1E3C3DE00(v7);
  v133 = v135;
  v134 = v136;
  sub_1E3C3DE00(v8);
  v129 = v131;
  v130 = v132;
  sub_1E3C3DE00(v8);
  v125 = v127;
  v126 = v128;
  sub_1E3C3DE00(v8);
  v121 = v123;
  v122 = v124;
  OUTLINED_FUNCTION_19_95();
  memcpy(__dst, __src, 0x89uLL);
  v9 = OUTLINED_FUNCTION_18();
  v10 = *(*v6 + 1600);
  v10(__dst, 115, v9 & 1, v8);
  LOBYTE(__dst[0]) = 1;
  sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
  LOBYTE(v133) = v135;
  sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
  LOBYTE(v129) = v131;
  sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
  LOBYTE(v125) = v127;
  sub_1E3C3DE00(&type metadata for ViewGradientLayout.GradientType);
  LOBYTE(v121) = v123;
  OUTLINED_FUNCTION_19_95();
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = __src[1];
  v11 = OUTLINED_FUNCTION_18();
  v10(__dst, 117, v11 & 1, &type metadata for ViewGradientLayout.GradientType);
  v12 = [v4 blackColor];
  sub_1E3D37B1C(v6, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = 2;
  *(inited + 40) = v2;
  *(inited + 48) = 3;
  *(inited + 56) = v6;
  type metadata accessor for VUIPosition(0);
  OUTLINED_FUNCTION_7_163(&qword_1EE23B3C0);

  v14 = sub_1E4205CB4();
  OUTLINED_FUNCTION_3_0();
  *(v1 + 104) = v14;

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
  }

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1E4299720;
  *(v15 + 32) = 2;
  *(v15 + 40) = v2;
  *(v15 + 48) = 3;
  *(v15 + 56) = v6;

  v16 = sub_1E4205CB4();
  OUTLINED_FUNCTION_3_0();
  *(v1 + 112) = v16;

  if (sub_1E3CCE274(*(v1 + 98), 9u))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748);
    v17 = swift_initStackObject();
    v18 = OUTLINED_FUNCTION_35_50(v17, xmmword_1E4297BE0);
    v18[2].n128_u64[0] = v19;
    v17[2].n128_u64[1] = sub_1E40C3088();
LABEL_8:
    v114 = sub_1E4205CB4();
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v21 = OUTLINED_FUNCTION_31_54();
  *(v21 + 16) = xmmword_1E429DCC0;
  v22 = [objc_opt_self() blackColor];
  v23 = [v22 colorWithAlphaComponent_];

  *(v21 + 32) = v23;
  v24 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v27 = [v25 v26];

  *(v21 + 40) = v27;
  v119 = sub_1E40C2E40();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E42A6DD0;
  v29 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v32 = [v30 v31];

  *(v28 + 32) = v32;
  v33 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v36 = [v34 v35];

  *(v28 + 40) = v36;
  v37 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v40 = [v38 v39];

  *(v28 + 48) = v40;
  v41 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v44 = [v42 v43];

  *(v28 + 56) = v44;
  v45 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v48 = [v46 v47];

  *(v28 + 64) = v48;
  v49 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v52 = [v50 v51];

  *(v28 + 72) = v52;
  v53 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v56 = [v54 v55];

  *(v28 + 80) = v56;
  v57 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_14_121();
  v60 = [v58 v59];

  *(v28 + 88) = v60;
  v118 = sub_1E40C2E40();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1E42CCC40;
  v62 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v65 = [v63 v64];

  *(v61 + 32) = v65;
  v66 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v69 = [v67 v68];

  *(v61 + 40) = v69;
  v70 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v73 = [v71 v72];

  *(v61 + 48) = v73;
  v74 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v77 = [v75 v76];

  *(v61 + 56) = v77;
  v78 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v81 = [v79 v80];

  *(v61 + 64) = v81;
  v82 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v85 = [v83 v84];

  *(v61 + 72) = v85;
  v86 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v89 = [v87 v88];

  *(v61 + 80) = v89;
  v90 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v93 = [v91 v92];

  *(v61 + 88) = v93;
  v94 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v97 = [v95 v96];

  *(v61 + 96) = v97;
  v98 = sub_1E40C2E40();
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748);
    v115 = swift_initStackObject();
    v116 = OUTLINED_FUNCTION_35_50(v115, xmmword_1E4297BD0);
    v116[2].n128_u64[0] = v117;
    v116[2].n128_u64[1] = v119;
    v116[3].n128_u64[0] = 3;
    v116[3].n128_u64[1] = v118;
    v116[4].n128_u64[0] = 2;
    v116[4].n128_u64[1] = v98;
    goto LABEL_8;
  }

  v99 = OUTLINED_FUNCTION_22_9();
  *(v99 + 16) = xmmword_1E42A73A0;
  v100 = OUTLINED_FUNCTION_18_89();
  v101 = [v100 &selRef:0.65 componentsSeparatedByString:?];

  *(v99 + 32) = v101;
  v102 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v105 = [v103 v104];

  *(v99 + 40) = v105;
  v106 = OUTLINED_FUNCTION_18_89();
  OUTLINED_FUNCTION_10_113();
  v109 = [v107 v108];

  *(v99 + 48) = v109;
  v110 = sub_1E40C2E40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C748);
  v111 = swift_initStackObject();
  v112 = OUTLINED_FUNCTION_35_50(v111, xmmword_1E4297BE0);
  v112[2].n128_u64[0] = v113;
  v112[2].n128_u64[1] = v110;
  v114 = sub_1E4205CB4();

LABEL_9:

  OUTLINED_FUNCTION_3_0();
  *(v1 + 120) = v114;
}

uint64_t sub_1E3D39768@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewGradientLayout();
  v2 = sub_1E40C3088();
  v3 = [objc_opt_self() effectWithStyle_];
  OUTLINED_FUNCTION_36();
  (*(v4 + 1896))();
  OUTLINED_FUNCTION_36();
  (*(v5 + 1776))(1);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1728))(0x3FE0000000000000, 0x3FF0000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1752))(0x3FE0000000000000, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v8 = OUTLINED_FUNCTION_41_3();
  *(v8 + 16) = xmmword_1E42A1E20;
  v9 = objc_opt_self();
  v10 = [v9 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  *(v8 + 32) = v11;
  v12 = [v9 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  *(v8 + 40) = v13;
  v14 = [v9 blackColor];
  v15 = [v14 colorWithAlphaComponent_];

  *(v8 + 48) = v15;
  v16 = [v9 blackColor];
  v17 = [v16 colorWithAlphaComponent_];

  *(v8 + 56) = v17;
  (*(*v2 + 1800))(v8);
  OUTLINED_FUNCTION_36();
  v19 = *(v18 + 512);

  v19(3);

  *a1 = v2;
  return result;
}

void sub_1E3D39A6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() blackColor];
  sub_1E3D37B1C(v1, v2);
}

unint64_t sub_1E3D39AD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E3887C44(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AE0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E3887C44(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for VUIPosition(0);
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1E38CF6BC(v9, a2, a1, v13);
  }
}

uint64_t OUTLINED_FUNCTION_32_63()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1E3D39C24()
{
  v1 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_isHidden;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3D39C58(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_isHidden;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3D39CE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void (*sub_1E3D39D58())(void)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  v2 = sub_1E4200684();
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(v2);
  if (result)
  {
    v4 = result;
    result();
    return sub_1E34AF594(v4);
  }

  return result;
}

void (*(*sub_1E3D39E1C(uint64_t *a1))())(void)
{
  a1[1] = v1;
  *a1 = sub_1E3D39CE4();
  return sub_1E3D39E64;
}

uint64_t sub_1E3D39E88()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3D39EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF8);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3D3A018(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF8);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3D3A134;
}

void sub_1E3D3A134(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E3D39EF4(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3D39EF4(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3D3A2AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_items;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

void sub_1E3D3A378(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3D3A3C4(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_appContext;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t sub_1E3D3A440()
{
  v1 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_configuresDebugUIGesture;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3D3A474(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_configuresDebugUIGesture;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3D3A520(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1E3D3A5A8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1E3D3A658()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37AF0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_isHidden] = 0;
  v8 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo__selectedIndex;
  v17 = 0;
  sub_1E4200634();
  (*(v4 + 32))(&v1[v8], v7, v2);
  v9 = &v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_selectedIndexDidChange];
  *v9 = 0;
  v9[1] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_items] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_appEnvironment;
  type metadata accessor for AppEnvironment();
  *&v1[v10] = sub_1E3CD9D54();
  v11 = OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_interactionStates;
  type metadata accessor for ViewInteractionStates();
  *&v1[v11] = sub_1E3B1E0A8(0);
  v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_configuresDebugUIGesture] = 0;
  v12 = &v1[OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_debugUIGestureHandler];
  v13 = type metadata accessor for TabBarItemsInfo();
  *v12 = 0;
  v12[1] = 0;
  v16.receiver = v1;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t type metadata accessor for TabBarItemsInfo()
{
  result = qword_1ECF609F0;
  if (!qword_1ECF609F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E3D3A868()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabBarItemsInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3D3A980@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TabBarItemsInfo();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

void sub_1E3D3A9C8()
{
  sub_1E3D3AA98();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3D3AA98()
{
  if (!qword_1ECF37B00)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF37B00);
    }
  }
}

void sub_1E3D3AAE8()
{
  v1 = sub_1E3A7B638();
  if (v1)
  {
    v3 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 setDelegate_];
    }
  }
}

void sub_1E3D3AB5C(void *a1)
{
  v2 = a1;
  sub_1E3A7B674(a1);
  sub_1E3D3AAE8();
}

void (*sub_1E3D3ABAC(void *a1))(void *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1E3A7B6BC();
  return sub_1E3D3AC0C;
}

void sub_1E3D3AC0C(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1E3D3AAE8();
  }

  free(v3);
}

id sub_1E3D3AC68()
{
  v1 = OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView);
  }

  else
  {
    type metadata accessor for UnifiedMessagingBubbleTipView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3D3ACE0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_vui_loadView);
  v1 = sub_1E3D3AC68();
  [v0 setVuiView_];

  sub_1E3D3AD44();
}

void sub_1E3D3AD44()
{
  v1 = v0;
  v2 = sub_1E3A7B638();
  if (v2)
  {
    v15 = v2;
    v3 = [v2 parentViewController];
    if (!v3 || (v4 = v3, sub_1E3280A90(0, &qword_1EE23B250), v5 = v0, v6 = sub_1E4206F64(), v4, v5, (v6 & 1) == 0))
    {
      [v1 vui:v15 addChildViewController:?];
      v7 = [v1 vuiView];
      if (v7)
      {
        v8 = v7;
        v9 = [v15 vuiView];
        if (v9)
        {
          v10 = v9;
          [v8 addSubview_];

          [v15 vui:v1 didMoveToParentViewController:?];
          v11 = sub_1E3D3AC68();
          v12 = [v15 view];

          v13 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView;
          OUTLINED_FUNCTION_14_0();
          v14 = *&v11[v13];
          *&v11[v13] = v12;

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
  }
}

void sub_1E3D3AF28(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillAppear_, a1 & 1);
  v4 = sub_1E3A7B568();
  if (v4)
  {
    v5 = (*(*v4 + 928))();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_1E3B58264();
  if (v7)
  {
    if (v5 == *v8 && v7 == v8[1])
    {
    }

    else
    {
      v10 = sub_1E42079A4();

      if ((v10 & 1) == 0)
      {
        return;
      }
    }

    v11 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
    v12 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
    swift_beginAccess();
    if (*(v11 + v12))
    {
      sub_1E3D3AD44();
    }
  }
}

id sub_1E3D3B0A8(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 928))();
  v6 = v5;
  v7 = sub_1E3B58264();
  if (!v6)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  if (v4 == *v7 && v6 == v7[1])
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }
  }

  if (a2)
  {
    v11 = a2;
    sub_1E3D3B348();
    v12 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
    v13 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
    swift_beginAccess();
    v14 = *(v12 + v13);
    v15 = v14;
    sub_1E3A7B674(v14);
    sub_1E3D3AAE8();

    sub_1E3D3AD44();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B08);
  sub_1E4148C68(sub_1E3D3B450, v16, &v29);
  v17 = v29;
  v18 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  v19 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = *(*a1 + 904);
  v22 = v20;
  v21(v20);
  v10 = v17;

  sub_1E3A7B5A0(v23);

  v24 = sub_1E3D3AC68();
  v25 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_viewModel;
  swift_beginAccess();
  *&v24[v25] = a1;

  v26 = (*(*a1 + 896))();
  v27 = v26;
  sub_1E3A7B674(v26);
  sub_1E3D3AAE8();

  return v10;
}

void sub_1E3D3B348()
{
  v0 = sub_1E3A7B638();
  if (v0)
  {
    v7 = v0;
    v1 = [v0 parentViewController];
    if (v1)
    {

      [v7 vui:0 willMoveToParentViewController:?];
      v2 = [v7 vuiView];
      if (v2)
      {
        v3 = v2;
        [v2 vui_removeFromSuperView];

        [v7 vui_removeFromParentViewController];
        v4 = sub_1E3D3AC68();

        v5 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView;
        OUTLINED_FUNCTION_14_0();
        v6 = *&v4[v5];
        *&v4[v5] = 0;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id sub_1E3D3B450@<X0>(void *a1@<X8>)
{
  type metadata accessor for UnifiedMessagingBubbleTipViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3D3B48C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView] = 0;
  if (a2)
  {
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1E3D3B594(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI39UnifiedMessagingBubbleTipViewController____lazy_storage___containerView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E3D3B654()
{
  v1 = v0;
  type metadata accessor for UnifiedMessagingBubbleTipViewModel();
  v2 = swift_dynamicCastClass();
  v3 = v2;
  if (!v2)
  {
    return (v3 != 0);
  }

  v4 = *(*v2 + 896);

  v6 = v4(v5);
  v7 = v6;
  v8 = sub_1E3A7B638();
  v9 = v8;
  if (!v6)
  {
    v10 = v8;
    if (!v8)
    {
      v13 = 0;
LABEL_9:
      v14 = [v1 vuiView];
      v10 = v14;
      if (v13)
      {
        if (v14)
        {
          sub_1E3280A90(0, &qword_1EE23AE80);
          v15 = sub_1E4206F64();

          if (v15)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v10 = v13;
      }

      else if (!v14)
      {
        goto LABEL_18;
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  v10 = v7;
  if (!v8)
  {
    goto LABEL_16;
  }

  if (v6 != v9)
  {
LABEL_17:
    sub_1E3D3B348();

    sub_1E3A7B5A0(v16);
    v17 = sub_1E3D3AC68();
    v18 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_viewModel;
    OUTLINED_FUNCTION_14_0();
    *&v17[v18] = v3;

    v7 = v7;
    sub_1E3A7B674(v6);
    sub_1E3D3AAE8();
    sub_1E3D3AD44();
LABEL_18:

    return (v3 != 0);
  }

  result = [v7 vuiView];
  if (result)
  {
    v12 = result;
    v13 = [result superview];

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D3B884()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D3B8D0(char a1)
{
  if (!a1)
  {
    return 0x6669636570736E75;
  }

  if (a1 == 1)
  {
    return 0x72477261656E696CLL;
  }

  return 0x72476C6169646172;
}

uint64_t sub_1E3D3B954(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x746F426F54706F74;
    }

    else
    {
      v4 = 0x69526F547466656CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEB000000006D6F74;
    }

    else
    {
      v5 = 0xEB00000000746867;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x746F426F54706F74;
    }

    else
    {
      v2 = 0x69526F547466656CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEB000000006D6F74;
    }

    else
    {
      v6 = 0xEB00000000746867;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D3BA6C(char a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x72477261656E696CLL;
    }

    else
    {
      v4 = 0x72476C6169646172;
    }

    v5 = 0xEE00746E65696461;
  }

  else
  {
    v4 = 0x6669636570736E75;
    v5 = 0xEB00000000646569;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x72477261656E696CLL;
    }

    else
    {
      v3 = 0x72476C6169646172;
    }

    v2 = 0xEE00746E65696461;
  }

  if (v4 == v3 && v5 == v2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E42079A4();
  }

  return v7 & 1;
}

uint64_t sub_1E3D3BB94()
{
  sub_1E4206014();
}

uint64_t sub_1E3D3BC40()
{
  sub_1E4206014();
}

uint64_t sub_1E3D3BCDC()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D3BD84()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D3BE44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D3B884();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D3BE74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D3B8D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D3BEA8()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D3BEF4(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x746F426F54706F74;
  }

  return 0x69526F547466656CLL;
}

uint64_t sub_1E3D3BF78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D3BEA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D3BFA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D3BEF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D3BFDC(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6 & 1;
  return result;
}

uint64_t sub_1E3D3C050@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(*v1 + 120);
  v8 = *(v1 + 40);
  v9 = *(v1 + 16);

  v10 = v7(v9, v3, v4, v8, v5, v6);
  result = type metadata accessor for GradientColoradito();
  a1[3] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_1E3D3C154()
{

  return v0;
}

uint64_t sub_1E3D3C17C()
{
  sub_1E3D3C154();

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

unint64_t sub_1E3D3C1B4()
{
  result = qword_1ECF37B18;
  if (!qword_1ECF37B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B18);
  }

  return result;
}

unint64_t sub_1E3D3C20C()
{
  result = qword_1ECF37B20;
  if (!qword_1ECF37B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B20);
  }

  return result;
}

_BYTE *sub_1E3D3C274(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3D3C354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v23 = v2[2];
  v20 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  if (v22 != 1 || (v20 = *v2, v21 = *(v2 + 16), v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8), MEMORY[0x1E690E3F0](&v22, v13), v14 = 1.0, v22 == 1))
  {
    v14 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B38);
  OUTLINED_FUNCTION_2();
  (*(v15 + 16))(v8, a1);
  *&v8[*(v5 + 36)] = v14;
  v22 = *v2;
  v16 = swift_allocObject();
  v17 = v2[1];
  *(v16 + 1) = *v2;
  *(v16 + 2) = v17;
  *(v16 + 3) = v2[2];
  sub_1E379E528(v8, v12, &qword_1ECF37B28);
  v18 = &v12[*(v9 + 36)];
  *v18 = sub_1E3D3CA00;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  sub_1E379E528(v12, a2, &qword_1ECF37B30);
  sub_1E39F6940(&v22, &v20);

  return sub_1E3D3CA08(&v23, &v20);
}

uint64_t sub_1E3D3C5A8(uint64_t *a1)
{
  v36 = sub_1E4203FC4();
  OUTLINED_FUNCTION_1_2();
  v39 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_1_2();
  v37 = v8;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E4203FB4();
  OUTLINED_FUNCTION_1_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = (v17 - v16);
  v19 = sub_1E4204014();
  v35 = v19;
  OUTLINED_FUNCTION_1_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v34 - v26;
  sub_1E4204004();
  *v18 = a1[3];
  (*(v14 + 104))(v18, *MEMORY[0x1E69E7F48], v12);
  MEMORY[0x1E690E9C0](v24, v18);
  (*(v14 + 8))(v18, v12);
  v34 = *(v21 + 8);
  v34(v24, v19);
  sub_1E32ADE38();
  v28 = sub_1E4206A04();
  v43 = *a1;
  v42 = *(a1 + 2);
  v29 = swift_allocObject();
  v30 = *(a1 + 1);
  v29[1] = *a1;
  v29[2] = v30;
  v29[3] = *(a1 + 2);
  aBlock[4] = sub_1E3D3CCA8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_100;
  v31 = _Block_copy(aBlock);
  sub_1E39F6940(&v43, v40);

  sub_1E3D3CA08(&v42, v40);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
  v32 = v36;
  sub_1E42072E4();
  MEMORY[0x1E69112E0](v27, v11, v6, v31);
  _Block_release(v31);

  (*(v39 + 8))(v6, v32);
  (*(v37 + 8))(v11, v38);
  return (v34)(v27, v35);
}

uint64_t sub_1E3D3CA08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D3CA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_1E42038E4();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 1;
  *(a4 + 32) = v9;
  *(a4 + 40) = v10;
  return result;
}

unint64_t sub_1E3D3CB1C()
{
  result = qword_1ECF37B40;
  if (!qword_1ECF37B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37B30);
    sub_1E3D3CBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B40);
  }

  return result;
}

unint64_t sub_1E3D3CBA8()
{
  result = qword_1ECF37B48;
  if (!qword_1ECF37B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37B28);
    sub_1E32752B0(&qword_1ECF37B50, &qword_1ECF37B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B48);
  }

  return result;
}

uint64_t objectdestroyTm_37()
{

  return swift_deallocObject();
}

uint64_t sub_1E3D3CD00(char a1, char a2)
{
  if (a2)
  {
    return 3;
  }

  v4 = sub_1E392AF14(a1);

  return sub_1E392AFA8(v4);
}

BOOL sub_1E3D3CD44(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return sub_1E34AF508(a1 & 1, a2 & 1);
}

uint64_t sub_1E3D3CDA8(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  result = OUTLINED_FUNCTION_15_0();
  if (*(v1 + 104) != a1)
  {
    sub_1E3D4102C();
    sub_1E4200514();
    sub_1E4200594();
  }

  return result;
}

uint64_t sub_1E3D3CE30(char a1)
{
  sub_1E392B18C(a1);
  if (a1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (a1 == 3)
    {
      goto LABEL_6;
    }

    v2 = 1;
  }

  sub_1E38861D0(v2);
LABEL_6:

  return sub_1E3D3EE4C();
}

uint64_t sub_1E3D3CE9C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_0();
  result = *(v1 + 120);
  if (result == 2)
  {
    if (v3 == 2)
    {
      return result;
    }

    LOBYTE(result) = 2;
  }

  else if (result == 3)
  {
    if (v3 == 3)
    {
      return result;
    }

    LOBYTE(result) = 3;
  }

  else if ((v3 & 0xFE) != 2)
  {
    result = sub_1E34AF508(result & 1, v3 & 1);
    if (result)
    {
      return result;
    }

    LOBYTE(result) = *(v1 + 120);
  }

  sub_1E3D3CE30(result);
  sub_1E3D4102C();
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t sub_1E3D3CF90()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ImageLayout();
    sub_1E3BD61D8();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 128) = v14;
  }

  return v1;
}

uint64_t sub_1E3D3D024()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 208))(0x4024000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v1 + 312))(0x4024000000000000, 0);
  OUTLINED_FUNCTION_36();
  return (*(v2 + 360))(0x4036000000000000, 0);
}

uint64_t sub_1E3D3D0E4()
{
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  return sub_1E3D40514();
}

id sub_1E3D3D138(char a1)
{
  if (a1 == 2)
  {
    v1 = 7;
  }

  else
  {
    v1 = 6;
  }

  v2 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
  v3 = [v2 textLayout];
  v4 = sub_1E3E5FD88();
  [v3 setColor_];

  v5 = [v2 textLayout];
  [v5 setColor_];

  v6 = [v2 textLayout];
  [v6 setTextStyle_];

  [v2 setMaxWidth_];
  return v2;
}

id sub_1E3D3D23C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
    v3 = sub_1E3D3D138(*(v0 + 120));
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1E3D3D2A8()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 160);
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
    v3 = sub_1E3D3D138(*(v0 + 120));
    v4 = *(v0 + 160);
    *(v0 + 160) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1E3D3D314()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    sub_1E3BBD964(10, v3 & 1, v4, v5 & 1);
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    v1 = v17;
    *(v2 + 168) = v17;
  }

  return v1;
}

uint64_t sub_1E3D3D3CC(void **a1)
{
  v1 = (**a1 + 2048);
  v2 = *v1;
  v3 = (*v1)();
  v4 = *sub_1E3E5FDEC();
  v5 = *(*v3 + 680);
  v6 = v4;
  v5(v4);

  (v2)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1696))(19);

  (v2)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1792))(10);

  (v2)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1984))(5);

  (v2)(v13);
  OUTLINED_FUNCTION_2_1();
  v14 = OUTLINED_FUNCTION_10_7();
  v15(v14);

  (v2)(v16);
  OUTLINED_FUNCTION_2_1();
  v17 = OUTLINED_FUNCTION_10_7();
  v18(v17);

  (v2)(v19);
  OUTLINED_FUNCTION_2_1();
  v20 = OUTLINED_FUNCTION_10_7();
  v21(v20);

  (v2)(v22);
  sub_1E3952C78();
  v63[0] = v23;
  v63[1] = v24;
  v63[2] = v25;
  v63[3] = v26;
  v64 = 0;
  OUTLINED_FUNCTION_8();
  (*(v27 + 160))(v63);

  (v2)(v28);
  OUTLINED_FUNCTION_2_1();
  (*(v29 + 1720))(12);

  OUTLINED_FUNCTION_9_2();
  v31 = *(v30 + 2096);
  v31();
  v32 = sub_1E3FA614C();
  OUTLINED_FUNCTION_8();
  (*(v33 + 208))();

  v35 = (v31)(v34);
  (*(*v35 + 312))(*v32, 0);

  (v31)(v36);
  OUTLINED_FUNCTION_2_1();
  (*(v37 + 440))(0x3FF0000000000000, 0);

  v39 = (v31)(v38);
  v40.n128_u64[0] = 0.5;
  v61[0] = j__OUTLINED_FUNCTION_7_78(v40);
  v61[1] = v41;
  v61[2] = v42;
  v61[3] = v43;
  v62 = 0;
  (*(*v39 + 1856))(v61);

  v45 = (v31)(v44);
  v46 = *sub_1E3E60CFC();
  v47 = *(*v45 + 1832);
  v48 = v46;
  v47(v46);

  v50 = (v31)(v49);
  sub_1E39537A8();
  v59[0] = v51;
  v59[1] = v52;
  v59[2] = v53;
  v59[3] = v54;
  v60 = 0;
  (*(*v50 + 560))(v59);

  (v31)(v55);
  v56 = [objc_opt_self() blackColor];
  OUTLINED_FUNCTION_36();
  (*(v57 + 752))();
}

uint64_t sub_1E3D3D9F0()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 192) = v14;
  }

  return v1;
}

uint64_t sub_1E3D3DA84()
{
  v11[0] = 5;
  v11[15] = 10;
  sub_1E3C2FC98();
  v11[13] = v11[14];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v11[11] = v11[12];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v11[9] = v11[10];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v11[7] = v11[8];
  sub_1E3C2FCB8(v11, v12);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_14();
  (*(v0 + 1600))(v11, 54, v1 & 1, &qword_1F5D54AF8);
  OUTLINED_FUNCTION_36();
  (*(v2 + 1984))(5);
  OUTLINED_FUNCTION_36();
  v3 = OUTLINED_FUNCTION_8_5();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_36_0();
  v6(v5);
  OUTLINED_FUNCTION_36();
  v7 = OUTLINED_FUNCTION_36_0();
  v8(v7);
  OUTLINED_FUNCTION_36();
  return (*(v9 + 2008))(1);
}

uint64_t sub_1E3D3DC98()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    sub_1E41E1A64(&v5, sub_1E3D40638, v3, &v6);

    v1 = v6;
    *(v2 + 200) = v6;
  }

  return v1;
}

uint64_t sub_1E3D3DD40()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 208) = v14;
  }

  return v1;
}

uint64_t sub_1E3D3DDD4(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  (*(v2 + 1792))(6);
  v3 = *sub_1E3E5FD88();
  v4 = *(*v1 + 680);
  v5 = v3;
  v4(v3);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1840))(4);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1936))(2);
  OUTLINED_FUNCTION_36();
  v8 = OUTLINED_FUNCTION_8_5();
  v9(v8);
  OUTLINED_FUNCTION_36();
  (*(v10 + 1984))(1);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v11 + 1768))();
  sub_1E3952C88();
  OUTLINED_FUNCTION_18_8();
  sub_1E3952C88();
  OUTLINED_FUNCTION_50_38(v12, v13, v14, v15);
  sub_1E3952C88();
  v85 = v16;
  v86 = v17;
  v87 = v18;
  v88 = v19;
  v89 = 0;
  sub_1E3952C88();
  v80 = v20;
  v81 = v21;
  v82 = v22;
  v83 = v23;
  v84 = 0;
  type metadata accessor for UIEdgeInsets();
  v25 = v24;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_4_10(v26, v27, v28, v29, v30, v31, v32, v33, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v61[6], v61[7], v61[8], v61[9], v61[10], v61[11], v61[12], v61[13], v61[14], v61[15], v61[16], v61[17], v61[18], v61[19], v61[20], v61[21], v61[22], v61[23], v61[24], v61[25], v61[26], v61[27], v61[28], v61[29], *&v62, *&v63, *&v64, *&v65, *&v66, *&v67, *&v68, *(&v68 + 1), v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]);
  v34 = sub_1E3C3DE00(v25);
  OUTLINED_FUNCTION_107(v34, v35, v36, v37, v38, v39, v40, v41, *&v61[0], *&v61[1], *&v61[2], *&v61[3], *&v61[4], *&v61[5], *&v61[6], *&v61[7], *&v61[8], *&v61[9], *&v61[10], *&v61[11], *&v61[12], *&v61[13], *&v61[14], *&v61[15], *&v61[16], *&v61[17], *&v61[18], *&v61[19], *&v61[20], *&v61[21], *&v61[22], *&v61[23], *&v61[24], *&v61[25], *&v61[26], *&v61[27], *&v61[28], *&v61[29], v62, v63, v64, v65, v66, v67, v68);
  OUTLINED_FUNCTION_29_70(v42, v43, v44, v45, v46, v47, v48, v49, *&v61[0]);
  memcpy(v61, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v58 = OUTLINED_FUNCTION_19_96(v50, v51, v52, v53, v54, v55, v56, v57, *&v61[0]);
  return v59(v58);
}

uint64_t sub_1E3D3E060()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    OUTLINED_FUNCTION_4_8(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);

    v1 = v14;
    *(v2 + 216) = v14;
  }

  return v1;
}

uint64_t sub_1E3D3E0F4()
{
  v0 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v1 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v2 + 2056))(3, 0);
  v9[0] = 1;
  sub_1E3C2FC98();
  v9[14] = v9[15];
  sub_1E3C3DE00(&qword_1F5D549D8);
  v9[12] = v9[13];
  sub_1E3C3DE00(&qword_1F5D549D8);
  v9[10] = v9[11];
  sub_1E3C3DE00(&qword_1F5D549D8);
  v9[8] = v9[9];
  sub_1E3C3DE00(&qword_1F5D549D8);
  v9[6] = v9[7];
  sub_1E3C2FCB8(v9, v10);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_14();
  (*(v3 + 1600))(v9, 48, v4 & 1, &qword_1F5D549D8);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1792))(10);
  OUTLINED_FUNCTION_36();
  (*(v6 + 256))(0x4081300000000000, 0);
  OUTLINED_FUNCTION_36();
  return (*(v7 + 1984))(5);
}

uint64_t sub_1E3D3E33C()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E3FA8320();
  v1 = *(*v0 + 2056);

  v2 = OUTLINED_FUNCTION_8_5();
  v1(v2);
  OUTLINED_FUNCTION_36();
  v3 = OUTLINED_FUNCTION_10_7();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_36_0();
  v6(v5);
  OUTLINED_FUNCTION_36();
  v7 = OUTLINED_FUNCTION_36_0();
  v8(v7);

  return v0;
}

void sub_1E3D3E45C(uint64_t a1@<X8>)
{
  sub_1E3C2AF20();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_52_39();
  if ((v2 | v8))
  {
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v3;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8 & 1;
}

__n128 sub_1E3D3E4DC@<Q0>(uint64_t a1@<X8>)
{
  sub_1E3C2AF20();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_52_39();
  if ((v2 | v8))
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  result = v6;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8 & 1;
  return result;
}

id sub_1E3D3E564()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  sub_1E3755B54();
  v1 = sub_1E4206F24();
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setShadowColor_];
  [v0 setShadowOffset_];
  [v0 setShadowBlurRadius_];
  return v0;
}

uint64_t sub_1E3D3E634()
{
  v4[0] = 0x4055000000000000;
  LOBYTE(v4[1]) = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v20 = v22;
  v21 = v23;
  sub_1E3C3DE00(v0);
  v16 = v18;
  v17 = v19;
  sub_1E3C3DE00(v0);
  v12 = v14;
  v13 = v15;
  sub_1E3C3DE00(v0);
  v8 = v10;
  v9 = v11;
  sub_1E3C3DE00(v0);
  v4[12] = v6;
  v5 = v7;
  sub_1E3C2FCB8(v4, __src);
  memcpy(v4, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  return (*(v1 + 1600))(v4, 8, v2 & 1, v0);
}

uint64_t sub_1E3D3E784()
{
  v0 = [objc_opt_self() blackColor];
  OUTLINED_FUNCTION_36();
  return (*(v1 + 752))();
}

uint64_t sub_1E3D3E82C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = *sub_1E3FC6B78();
  v1 = sub_1E392AF14(2);
  *(v0 + 120) = sub_1E392AFA8(v1);
  *(v0 + 128) = 0;
  type metadata accessor for ProductGradientLayout();
  *(v0 + 136) = sub_1E3886290(1);
  type metadata accessor for SportsCanonicalBannerViewLayout.ButtonsLayout();
  OUTLINED_FUNCTION_3_139();
  swift_allocObject();
  *(v0 + 144) = sub_1E3D40514();
  type metadata accessor for ViewLayout();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = sub_1E3C2F968();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = sub_1E3D3E33C();
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  *(v0 + 232) = sub_1E392DC54(0);
  *(v0 + 240) = 0x4024000000000000;
  type metadata accessor for SportStatsLayout();
  *(v0 + 248) = sub_1E3DA3A40();
  *(v0 + 256) = sub_1E3D3E564();
  *(v0 + 264) = 0;
  type metadata accessor for ImageLayout();
  sub_1E3BD61D8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_46_44(v2, v3, v4, v5, v6, v7, v8, v9, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], __dst[0]);

  *(v0 + 272) = *__dst;
  sub_1E3BD61D8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_46_44(v10, v11, v12, v13, v14, v15, v16, v17, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], __dst[0]);

  *(v0 + 280) = *__dst;
  v18 = sub_1E3C2F9A0();

  v19 = sub_1E3FA5FC8();
  memcpy(__dst, v19, 0x59uLL);
  memcpy(v27, __dst, 0x59uLL);
  OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC();
  sub_1E3C2D150();
  sub_1E3C37CBC(*(v18 + 224), 11);
  sub_1E3C37CBC(*(v18 + 144), 91);
  v20 = sub_1E3D3DC98();
  sub_1E3C37CBC(v20, 17);

  v21 = sub_1E3D3DD40();
  sub_1E3C37CBC(v21, 23);

  v22 = sub_1E3D3E060();
  sub_1E3C37CBC(v22, 24);

  v23 = sub_1E3D3D9F0();
  sub_1E3C37CBC(v23, 3);

  sub_1E3C37CBC(*(v18 + 272), 40);
  sub_1E3C37CBC(*(v18 + 232), 234);
  sub_1E3C37CBC(*(v18 + 280), 47);
  sub_1E3C37CBC(*(v18 + 248), 241);

  v24 = sub_1E3D3CF90();
  sub_1E3C37CBC(v24, 34);

  v25 = sub_1E3D3D314();
  sub_1E3C37CBC(v25, 61);

  OUTLINED_FUNCTION_5_0();
  sub_1E3D3CE30(*(v18 + 120));

  return v18;
}

void sub_1E3D3EAFC(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_36();
  if (v8)
  {
    v9 = a2;
    v10 = [v9 isAXEnabled];
    v11 = v10;
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    sub_1E3D3CDA8(v12);
    OUTLINED_FUNCTION_14_0();
    *(v3 + 104) = v12;
    if ((v11 & 1) == 0)
    {
      OUTLINED_FUNCTION_116();
      a2 = sub_1E4206A64();

      v9 = a2;
    }

    v13 = [v9 preferredContentSizeCategory];
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1E3C2F8E8();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 preferredContentSizeCategory];

    if (v13)
    {
      if (v16)
      {
        v17 = sub_1E4205F14();
        v19 = v18;
        if (v17 == sub_1E4205F14() && v19 == v20)
        {

          v23 = 0;
        }

        else
        {
          v22 = sub_1E42079A4();

          v23 = v22 ^ 1;
        }

        goto LABEL_24;
      }

      goto LABEL_18;
    }

    if (v16)
    {
      v23 = 1;
      goto LABEL_24;
    }
  }

  else if (v13)
  {
LABEL_18:
    v23 = 1;
    v16 = v13;
LABEL_24:

    goto LABEL_25;
  }

  v23 = 0;
LABEL_25:
  v24 = sub_1E3C2F6A0();
  if (v25 == 1 || (v26 = v24, sub_1E39DFB80(v24, v25), v26 == 7))
  {
    v27 = 1;
  }

  else
  {
    sub_1E37F99D4();
    v27 = v23 | sub_1E4205E84() ^ 1;
  }

  if (a2)
  {
    v28 = [a2 userInterfaceStyle];
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_1E3C2F8E8();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 userInterfaceStyle];

    if (!a2 || v28 != v31)
    {
      goto LABEL_37;
    }
  }

  else if (a2)
  {
LABEL_37:
    sub_1E3D4102C();
    sub_1E4200514();
    sub_1E4200594();
  }

  sub_1E3C35CF4(a1, a2);
  sub_1E3886EEC(a1, a2, a3);
  v32 = sub_1E3C2F8E8();
  if (!v32 || (v33 = v32, v34 = [v32 isAXEnabled], v33, (v34 & 1) == 0))
  {
    if (sub_1E3A24FDC(a1))
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v35 = 3;
  if (v27)
  {
LABEL_46:
    sub_1E3D3EE4C();
  }

LABEL_47:
  OUTLINED_FUNCTION_5_0();
  if (!sub_1E3D3CD44(v35, *(v4 + 120)))
  {
    sub_1E3D3CE9C(v35);
  }
}

uint64_t sub_1E3D3EE4C()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 = sub_1E3C2F6A0();
  if (v3 == 1)
  {
    goto LABEL_9;
  }

  sub_1E39DFB80(v2, v3);
  v4 = type metadata accessor for LayoutGrid();
  v5 = sub_1E3A25914();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_5_0();
  v10 = *(v1 + 120);
  if (v10 == 3)
  {
    v30 = xmmword_1E42CC980;
LABEL_7:
    v749 = v30;
    LOBYTE(v752) = 0;
    v793 = 0x4054000000000000;
    v794 = v7;
    v795 = 0x4057000000000000;
    v796 = v9;
    v797 = 0;
    v788 = 0x4054000000000000;
    v789 = v7;
    v790 = 0x4059800000000000;
    v791 = v9;
    v792 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v31 = OUTLINED_FUNCTION_7_164();
    sub_1E3C3DE00(v31);
    v32 = OUTLINED_FUNCTION_13_121();
    OUTLINED_FUNCTION_21_79(v32, v33, v34, v35, v36, v37, v38, v39, v333, v350, v367, v384, v401, v418, v435, v452, v469, v486, v503, v520, v537, v554, v569, v584, v599, v614, v629, v644, v659, v674, v689, v704, v719, v734, v749, *(&v749 + 1), 0x4044000000000000, 0x4041000000000000, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776);
    v29 = v798;
    v28 = &v749;
    goto LABEL_8;
  }

  if (v10 != 2)
  {
    v30 = xmmword_1E42CD160;
    goto LABEL_7;
  }

  LOBYTE(v752) = 0;
  OUTLINED_FUNCTION_15_112();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_37_55();
  v11 = OUTLINED_FUNCTION_7_164();
  sub_1E3C3DE00(v11);
  v12 = OUTLINED_FUNCTION_13_121();
  OUTLINED_FUNCTION_21_79(v12, v13, v14, v15, v16, v17, v18, v19, v333, v350, v367, v384, v401, v418, v435, v452, v469, v486, v503, v520, v537, v554, v569, v584, v599, v614, v629, v644, v659, v674, v689, v704, v719, v734, v5, 0x403C000000000000, 0x4040000000000000, 0x403C000000000000, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776);
  sub_1E3C3DE00(v4);
  OUTLINED_FUNCTION_16_108(v20, v21, v22, v23, v24, v25, v26, v27, v334, v351, v368, v385, v402, v419, v436, v453, v470, v487, v504, v521, v538);
LABEL_8:
  sub_1E3C2FCB8(v28, v29);
  v48 = OUTLINED_FUNCTION_33_57(v40, v41, v42, v43, v44, v45, v46, v47, v335, v352, v369, v386, v403, v420, v437, v454, v471, v488, v505, v522, v539, v555, v570, v585, v600, v615, v630, v645, v660, v675, v690, v705, v720, v735, v749);
  memcpy(v48, v49, 0xE9uLL);
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_128();
  sub_1E3C2FDFC();
LABEL_9:
  v798[0] = sub_1E3D3D23C();
  sub_1E3D3FFB8(v798, 0);
  v50 = *(v1 + 152);
  *(v1 + 152) = v798[0];

  v798[0] = sub_1E3D3D2A8();
  sub_1E3D3FFB8(v798, 1);
  v51 = *(v1 + 160);
  *(v1 + 160) = v798[0];

  OUTLINED_FUNCTION_5_0();
  v52 = *(v1 + 120);
  sub_1E3D3D9F0();
  OUTLINED_FUNCTION_2_1();
  v54 = *(v53 + 1984);
  if (v52 == 2)
  {
    v54(1);

    OUTLINED_FUNCTION_36();
    v56 = *(v55 + 1696);

    v56(17);

    OUTLINED_FUNCTION_36();
    v58 = *(v57 + 1792);

    v58(5);

    v59 = *(v1 + 192);

    v60 = sub_1E3E5FDEC();
    v61 = *v60;
    v62 = *(*v59 + 680);
    v63 = *v60;
    v62(v61);

    v64 = sub_1E3D3CF90();
    v65 = *v60;
    v66 = *(*v64 + 680);
    v67 = v65;
    v66(v65);

    OUTLINED_FUNCTION_36();
    v69 = *(v68 + 2272);

    v69(1);

    sub_1E3952C88();
    v74 = sub_1E3D403C8(v70, v71, v72, v73);
    OUTLINED_FUNCTION_26_78(v74, v75, v76, v77);
    (*(v78 + 160))(v798);

    OUTLINED_FUNCTION_36();
    v80 = *(v79 + 256);

    v80(0x4075400000000000, 0);
  }

  else
  {
    v54(5);

    LOBYTE(v749) = 14;
    LOBYTE(v793) = 21;
    LOBYTE(v788) = 15;
    LOBYTE(v783) = 15;

    sub_1E3C2FC98();
    v81 = OUTLINED_FUNCTION_49_44();
    sub_1E3C3DE00(v81);
    OUTLINED_FUNCTION_19_83();
    v90 = OUTLINED_FUNCTION_1_202(v82, v83, v84, v85, v86, v87, v88, v89, v333, v350, v367, v384, v401, v418, v435, v452, v469, v486, v503, v520, v537, v554, v569, v584, v599, v614, v629, v644, v659, v674, v689, v704, v719, v734, v749);
    sub_1E3C2FCB8(v90, v91);
    OUTLINED_FUNCTION_43_46();
    OUTLINED_FUNCTION_14();
    v100 = OUTLINED_FUNCTION_6_126(v92, v93, v94, v95, v96, v97, v98, v99, v336, v353, v370, v387, v404, v421, v438, v455, v472, v489, v506, v523, v540, v556, v571, v586, v601, v616, v631, v646, v661, v676, v691, v706, v721, v736, v749);
    v101(v100, 48);

    LOBYTE(v749) = 5;
    LOBYTE(v793) = 10;

    sub_1E3C2FC98();
    LOBYTE(v783) = v788;
    sub_1E3C3DE00(&qword_1F5D54AF8);
    v102 = OUTLINED_FUNCTION_49_44();
    sub_1E3C3DE00(v102);
    OUTLINED_FUNCTION_19_83();
    sub_1E3C3DE00(&qword_1F5D54AF8);
    LOBYTE(v541) = v632;
    sub_1E3C2FCB8(&v749, v798);
    OUTLINED_FUNCTION_43_46();
    OUTLINED_FUNCTION_14();
    v111 = OUTLINED_FUNCTION_6_126(v103, v104, v105, v106, v107, v108, v109, v110, v337, v354, v371, v388, v405, v422, v439, v456, v473, v490, v507, v524, v541, v557, v572, v587, v602, v617, v632, v647, v662, v677, v692, v707, v722, v737, v749);
    v112(v111, 54);

    v113 = *(v1 + 192);

    v114 = sub_1E3E5FD88();
    v115 = *v114;
    v116 = *(*v113 + 680);
    v117 = *v114;
    v116(v115);

    v118 = sub_1E3D3CF90();
    v119 = *v114;
    v120 = *(*v118 + 680);
    v121 = v119;
    v120(v119);

    OUTLINED_FUNCTION_36();
    v123 = *(v122 + 2272);

    v123(3);

    sub_1E3952C88();
    sub_1E3D403C8(v124, v125, v126, v127);
    OUTLINED_FUNCTION_39_44();
    sub_1E3952C88();
    OUTLINED_FUNCTION_36_51(v128, v129, v130, v131);
    OUTLINED_FUNCTION_35_51(v132, v133, v134, v135);
    v783 = sub_1E3D403C8(v136, v137, v138, v139);
    v784 = v140;
    v785 = v141;
    v786 = v142;
    v787 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v143 = OUTLINED_FUNCTION_38_45();
    v777 = v780;
    v778 = v781;
    v779 = v782;
    v151 = OUTLINED_FUNCTION_1_202(v143, v144, v145, v146, v147, v148, v149, v150, v338, v355, v372, v389, v406, v423, v440, v457, v474, v491, v508, v525, v542, v558, v573, v588, v603, v618, v633, v648, v663, v678, v693, v708, v723, v738, v749);
    sub_1E3C2FCB8(v151, v152);
    v161 = OUTLINED_FUNCTION_33_57(v153, v154, v155, v156, v157, v158, v159, v160, v339, v356, v373, v390, v407, v424, v441, v458, v475, v492, v509, v526, v543, v559, v574, v589, v604, v619, v634, v649, v664, v679, v694, v709, v724, v739, v749);
    memcpy(v161, v162, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_20_79();
    OUTLINED_FUNCTION_8_128();
    v163();

    *&v749 = 0x4076800000000000;
    BYTE8(v749) = 0;
    v793 = 0x4082C00000000000;
    LOBYTE(v794) = 0;
    v788 = 0x4071800000000000;
    LOBYTE(v789) = 0;
    v783 = 450.0;
    LOBYTE(v784) = 0;

    v164 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_17_102();
    v165 = sub_1E3C3DE00(v164);
    *&v777 = v780;
    BYTE8(v777) = BYTE8(v780);
    v173 = OUTLINED_FUNCTION_1_202(v165, v166, v167, v168, v169, v170, v171, v172, v340, v357, v374, v391, v408, v425, v442, v459, v476, v493, v510, v527, v544, v560, v575, v590, v605, v620, v635, v650, v665, v680, v695, v710, v725, v740, v749);
    sub_1E3C2FCB8(v173, v174);
    v183 = OUTLINED_FUNCTION_33_57(v175, v176, v177, v178, v179, v180, v181, v182, v341, v358, v375, v392, v409, v426, v443, v460, v477, v494, v511, v528, v545, v561, v576, v591, v606, v621, v636, v651, v666, v681, v696, v711, v726, v741, v749);
    memcpy(v183, v184, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v193 = OUTLINED_FUNCTION_6_126(v185, v186, v187, v188, v189, v190, v191, v192, v342, v359, v376, v393, v410, v427, v444, v461, v478, v495, v512, v529, v546, v562, v577, v592, v607, v622, v637, v652, v667, v682, v697, v712, v727, v742, v749);
    v194(v193, 4);
  }

  OUTLINED_FUNCTION_5_0();
  if (*(v1 + 120) == 3)
  {
    v195 = 8.0;
    v196 = 0.0;
  }

  else
  {
    v196 = 40.0;
    v195 = 8.0;
  }

  sub_1E3D403C8(v195, v196, 0.0, 0.0);
  OUTLINED_FUNCTION_39_44();
  OUTLINED_FUNCTION_15_112();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_37_55();
  v197 = OUTLINED_FUNCTION_7_164();
  sub_1E3C3DE00(v197);
  v198 = OUTLINED_FUNCTION_13_121();
  OUTLINED_FUNCTION_21_79(v198, v199, v200, v201, v202, v203, v204, v205, v333, v350, v367, v384, v401, v418, v435, v452, v469, v486, v503, v520, v537, v554, v569, v584, v599, v614, v629, v644, v659, v674, v689, v704, v719, v734, v749, *(&v749 + 1), v750, v751, v752, v753, v754, v755, v756, v757, v758, v759, v760, v761, v762, v763, v764, v765, v766, v767, v768, v769, v770, v771, v772, v773, v774, v775, v776);
  sub_1E3C3DE00(v1);
  OUTLINED_FUNCTION_16_108(v206, v207, v208, v209, v210, v211, v212, v213, v343, v360, v377, v394, v411, v428, v445, v462, v479, v496, v513, v530, v547);
  sub_1E3C2FCB8(v214, v215);
  v224 = OUTLINED_FUNCTION_33_57(v216, v217, v218, v219, v220, v221, v222, v223, v344, v361, v378, v395, v412, v429, v446, v463, v480, v497, v514, v531, v548, v563, v578, v593, v608, v623, v638, v653, v668, v683, v698, v713, v728, v743, v749);
  memcpy(v224, v225, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_79();
  OUTLINED_FUNCTION_8_128();
  v226();
  sub_1E3D3DD40();
  *&v749 = sub_1E3D404A4(30.0);
  BYTE8(v749) = 0;
  v793 = 0x4053000000000000;
  LOBYTE(v794) = 0;
  v788 = 0x4048000000000000;
  LOBYTE(v789) = 0;
  v783 = sub_1E3D404A4(60.0);
  LOBYTE(v784) = 0;
  v227 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_17_102();
  v228 = sub_1E3C3DE00(v227);
  *&v777 = v780;
  BYTE8(v777) = BYTE8(v780);
  v236 = OUTLINED_FUNCTION_1_202(v228, v229, v230, v231, v232, v233, v234, v235, v345, v362, v379, v396, v413, v430, v447, v464, v481, v498, v515, v532, v549, v564, v579, v594, v609, v624, v639, v654, v669, v684, v699, v714, v729, v744, v749);
  sub_1E3C2FCB8(v236, v237);
  v246 = OUTLINED_FUNCTION_33_57(v238, v239, v240, v241, v242, v243, v244, v245, v346, v363, v380, v397, v414, v431, v448, v465, v482, v499, v516, v533, v550, v565, v580, v595, v610, v625, v640, v655, v670, v685, v700, v715, v730, v745, v749);
  memcpy(v246, v247, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_79();
  v256 = OUTLINED_FUNCTION_6_126(v248, v249, v250, v251, v252, v253, v254, v255, v347, v364, v381, v398, v415, v432, v449, v466, v483, v500, v517, v534, v551, v566, v581, v596, v611, v626, v641, v656, v671, v686, v701, v716, v731, v746, v749);
  v257(v256, 52);

  OUTLINED_FUNCTION_5_0();
  sub_1E3D40134(*(v1 + 120));
  OUTLINED_FUNCTION_5_0();
  v258 = *(v1 + 120);
  if (v258 == 3)
  {
    v259 = 4;
  }

  else
  {
    v259 = 5;
  }

  if (v258 == 2)
  {
    v260 = 1;
  }

  else
  {
    v260 = v259;
  }

  (*(**(v1 + 184) + 464))(v260);
  if (*(v1 + 120) == 2)
  {
    sub_1E3952C88();
    v265 = sub_1E3D403C8(v261, v262, v263, v264);
    OUTLINED_FUNCTION_26_78(v265, v266, v267, v268);
    (*(v269 + 160))(v798);
  }

  else
  {
    sub_1E3952C88();
    sub_1E3D403C8(v270, v271, v272, v273);
    OUTLINED_FUNCTION_39_44();
    sub_1E3952C88();
    OUTLINED_FUNCTION_36_51(v274, v275, v276, v277);
    OUTLINED_FUNCTION_35_51(v278, v279, v280, v281);
    v783 = sub_1E3D403C8(v282, v283, v284, v285);
    v784 = v286;
    v785 = v287;
    v786 = v288;
    v787 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v289 = OUTLINED_FUNCTION_38_45();
    v777 = v780;
    v778 = v781;
    v779 = v782;
    v297 = OUTLINED_FUNCTION_1_202(v289, v290, v291, v292, v293, v294, v295, v296, v348, v365, v382, v399, v416, v433, v450, v467, v484, v501, v518, v535, v552, v567, v582, v597, v612, v627, v642, v657, v672, v687, v702, v717, v732, v747, v749);
    sub_1E3C2FCB8(v297, v298);
    v307 = OUTLINED_FUNCTION_33_57(v299, v300, v301, v302, v303, v304, v305, v306, v349, v366, v383, v400, v417, v434, v451, v468, v485, v502, v519, v536, v553, v568, v583, v598, v613, v628, v643, v658, v673, v688, v703, v718, v733, v748, v749);
    memcpy(v307, v308, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_20_79();
    OUTLINED_FUNCTION_8_128();
    v309();
  }

  v310 = *(v1 + 224);
  v311 = OUTLINED_FUNCTION_8_5();
  v312(v311);
  OUTLINED_FUNCTION_3_11();
  v313 = OUTLINED_FUNCTION_10_7();
  v314(v313);
  OUTLINED_FUNCTION_3_11();
  v315 = OUTLINED_FUNCTION_36_0();
  v316(v315);
  OUTLINED_FUNCTION_3_11();
  v317 = OUTLINED_FUNCTION_36_0();
  v318(v317);
  OUTLINED_FUNCTION_8();
  v320 = *(v319 + 248);

  v322 = v320(v321);
  v324 = v323;

  OUTLINED_FUNCTION_3_11();
  (*(v325 + 256))(v322, v324 & 1);
  OUTLINED_FUNCTION_8();
  v327 = *(v326 + 224);

  v329 = v327(v328);
  v331 = v330;

  (*(*v310 + 232))(v329, v331 & 1);
  sub_1E3D4102C();
  sub_1E4200514();
  sub_1E4200594();
}

void sub_1E3D3FC80(double a1)
{
  OUTLINED_FUNCTION_8();
  sub_1E3D4102C();
  sub_1E4200514();
  sub_1E4200594();

  sub_1E392C768(a1);
  sub_1E3DA3344(a1);
}

uint64_t sub_1E3D3FD0C(__n128 a1, __n128 a2)
{
  v3 = v2;
  nullsub_1(a1, a2);
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout();
    result = swift_dynamicCastClass();
    if (result)
    {
      v5 = result;
      swift_beginAccess();
      *(v3 + 264) = v5;
      swift_retain_n();

      sub_1E3952C88();
      v12[0] = v6;
      v12[1] = v7;
      v12[2] = v8;
      v12[3] = v9;
      v13 = 0;
      OUTLINED_FUNCTION_8();
      (*(v10 + 160))(v12);

      v11 = *sub_1E3810A0C();

      sub_1E3C37EC8(v5, v11);
    }
  }

  return result;
}

uint64_t sub_1E3D3FE10()
{
}

id *sub_1E3D3FEC8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3D3FF88()
{
  v0 = sub_1E3D3FEC8();

  return MEMORY[0x1EEE6BDC0](v0, 288, 7);
}

void sub_1E3D3FFB8(id *a1, char a2)
{
  OUTLINED_FUNCTION_15_0();
  v5 = sub_1E3D3D138(*(v2 + 120));
  *a1 = v5;
  [v5 updateLayoutForPhoneSizeClass_];
  v6 = *(v2 + 120);
  if (v6 == 3)
  {
    [v5 setMaxWidth_];
    v6 = *(v2 + 120);
  }

  if (v6 == 2)
  {
    sub_1E3952C88();
    v11 = sub_1E3D403C8(v7, v8, v9, v10);
  }

  else
  {
    sub_1E3952C88();
  }

  [v5 setMargin_];
  v12 = [v5 textLayout];
  type metadata accessor for ViewLayout();
  sub_1E3C8BE74();
  v13 = sub_1E3DEFC38(1);
  [v12 setColor_];

  sub_1E3C8BE74();
  v14 = sub_1E3DEFC38(1);
  [v5 setBadgeTintColor_];

  v15 = [v5 textLayout];
  [v15 setFadesOutTextTruncation_];
}

uint64_t sub_1E3D40134(char a1)
{
  if (a1 == 2)
  {
    sub_1E3952C88();
    sub_1E3D403C8(v3, v4, v5, v6);
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v86 = v89;
    v87 = v90;
    v88 = v91;
    sub_1E3C3DE00(v1);
    v80 = v83;
    v81 = v84;
    v82 = v85;
    sub_1E3C3DE00(v1);
    OUTLINED_FUNCTION_11_7(v7, v8, v9, v10, v11, v12, v13, v14, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v52[23], v52[24], v52[25], v52[26], v52[27], v52[28], v52[29], *&v53, *&v54, *&v55, *&v56, *&v57, *&v58, *&v59, *(&v59 + 1), v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, *&v70, *(&v70 + 1), *&v71, *(&v71 + 1), v72, v73, *&v74);
    sub_1E3C3DE00(v1);
    OUTLINED_FUNCTION_4_10(v15, v16, v17, v18, v19, v20, v21, v22, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v52[23], v52[24], v52[25], v52[26], v52[27], v52[28], v52[29], *&v53, *&v54, *&v55, *&v56, *&v57, *&v58, *&v59, *(&v59 + 1), v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, *&v70);
    v23 = sub_1E3C3DE00(v1);
    OUTLINED_FUNCTION_107(v23, v24, v25, v26, v27, v28, v29, v30, *&v52[0], *&v52[1], *&v52[2], *&v52[3], *&v52[4], *&v52[5], *&v52[6], *&v52[7], *&v52[8], *&v52[9], *&v52[10], *&v52[11], *&v52[12], *&v52[13], *&v52[14], *&v52[15], *&v52[16], *&v52[17], *&v52[18], *&v52[19], *&v52[20], *&v52[21], *&v52[22], *&v52[23], *&v52[24], *&v52[25], *&v52[26], *&v52[27], *&v52[28], *&v52[29], v53, v54, v55, v56, v57, v58, v59);
  }

  else
  {
    sub_1E3952C88();
    sub_1E3D403C8(v31, v32, v33, v34);
    OUTLINED_FUNCTION_18_8();
    sub_1E3952C88();
    *&v89 = v35;
    *(&v89 + 1) = v36;
    *&v90 = v37;
    *(&v90 + 1) = v38;
    v91 = 0;
    sub_1E3952C88();
    *&v86 = v39;
    *(&v86 + 1) = v40;
    *&v87 = v41;
    *(&v87 + 1) = v42;
    v88 = 0;
    sub_1E3952C88();
    *&v83 = sub_1E3D403C8(v43, v44, v45, v46);
    *(&v83 + 1) = v47;
    *&v84 = v48;
    *(&v84 + 1) = v49;
    v85 = 0;
    OUTLINED_FUNCTION_15_112();
    sub_1E3C2FC98();
    v77 = v80;
    v78 = v81;
    v79 = v82;
    sub_1E3C3DE00(v1);
    v70 = v74;
    v71 = v75;
    LOBYTE(v72) = v76;
  }

  sub_1E3C2FCB8(v52, __src);
  memcpy(v52, __src, 0xE9uLL);
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_128();
  sub_1E3C2FDFC();
  if (a1 == 3)
  {
    sub_1E3D404A4(12.0);
    sub_1E3C2EAE8();
    sub_1E3D404A4(265.0);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v50 + 176))(__src);
    if ((LOBYTE(__src[4]) & 1) == 0)
    {
      sub_1E3952BD8(__src[0], __src[1], __src[2]);
    }

    sub_1E3C2EAE8();
    if (a1 != 2)
    {
      OUTLINED_FUNCTION_36_0();
    }
  }

  return sub_1E3C2CE80();
}

double sub_1E3D403C8(double a1, double a2, double a3, double a4)
{
  if (sub_1E3D40FB8())
  {
    v8 = [objc_opt_self() defaultMetrics];
    [v8 scaledValueForValue:0 compatibleWithTraitCollection:a1];
    a1 = v9;
    [v8 scaledValueForValue:0 compatibleWithTraitCollection:a2];
    [v8 scaledValueForValue:0 compatibleWithTraitCollection:a3];
    [v8 scaledValueForValue:0 compatibleWithTraitCollection:a4];
  }

  return a1;
}

double sub_1E3D404A4(double a1)
{
  if (sub_1E3D40FB8())
  {
    v2 = [objc_opt_self() defaultMetrics];
    [v2 scaledValueForValue_];
    a1 = v3;
  }

  return a1;
}

uint64_t sub_1E3D40514()
{
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  sub_1E3BBD964(1, v1 & 1, v2, v3 & 1);
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_4_8(v4, v5, v6, v7, v8, v9, v10, v11, v25, v27);

  *(v0 + 104) = v28;
  v12 = j__OUTLINED_FUNCTION_18();
  v13 = sub_1E3B050E8();
  v14 = j__OUTLINED_FUNCTION_18();
  sub_1E3BBD964(2, v12 & 1, v13, v14 & 1);
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_4_8(v15, v16, v17, v18, v19, v20, v21, v22, v26, v28);

  *(v0 + 112) = v29;
  v23 = sub_1E3C2F9A0();

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    sub_1E3C37CBC(*(v23 + 104), 59);
    sub_1E3C37CBC(*(v23 + 112), 65);
  }

  return v23;
}

uint64_t sub_1E3D40638(uint64_t *a1)
{
  v2 = *a1;
  sub_1E3952C88();
  sub_1E3952C88();
  v53 = v3;
  v54 = v4;
  v55 = v5;
  v56 = v6;
  v57 = 0;
  sub_1E3952C88();
  v51[0] = v7;
  v51[1] = v8;
  v51[2] = v9;
  v51[3] = v10;
  v52 = 0;
  OUTLINED_FUNCTION_15_112();
  sub_1E3C2FC98();
  v45 = v48;
  v46 = v49;
  v47 = v50;
  sub_1E3C3DE00(v1);
  v39 = v42;
  v40 = v43;
  v41 = v44;
  v11 = sub_1E3C3DE00(v1);
  v33 = v36;
  v34 = v37;
  v35 = v38;
  OUTLINED_FUNCTION_30_61(v11, v12);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v14 = *(v13 + 1600);
  OUTLINED_FUNCTION_8_128();
  v14();
  LOBYTE(__dst[0]) = 22;
  LOBYTE(v53) = 14;
  LOBYTE(v51[0]) = 19;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_19_83();
  sub_1E3C3DE00(&qword_1F5D549D8);
  v15 = OUTLINED_FUNCTION_54_32();
  LOBYTE(v33) = v36;
  OUTLINED_FUNCTION_30_61(v15, v16);
  v17 = OUTLINED_FUNCTION_44_44();
  (v14)(__dst, 48, v17 & 1, &qword_1F5D549D8);
  v18 = *sub_1E3E5FDEC();
  v19 = *(*v2 + 680);
  v20 = v18;
  v19(v18);
  LOBYTE(__dst[0]) = 10;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v51[0]) = v53;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_19_83();
  sub_1E3C3DE00(&qword_1F5D54AF8);
  OUTLINED_FUNCTION_54_32();
  LOBYTE(v33) = v36;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  sub_1E3C2FCB8(v51, __src);
  v21 = OUTLINED_FUNCTION_44_44();
  (v14)(__dst, 54, v21 & 1, &qword_1F5D54AF8);
  OUTLINED_FUNCTION_9_2();
  (*(v22 + 2272))(1);
  OUTLINED_FUNCTION_9_2();
  v23 = OUTLINED_FUNCTION_8_5();
  v24(v23);
  OUTLINED_FUNCTION_9_2();
  (*(v25 + 1984))(1);
  OUTLINED_FUNCTION_9_2();
  (*(v26 + 2008))(1);
  OUTLINED_FUNCTION_9_2();
  (*(v27 + 1720))(7);
  v28 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v28 setShadowOffset_];
  [v28 setShadowBlurRadius_];
  sub_1E3755B54();
  v29 = sub_1E4206F24();
  [v28 setShadowColor_];

  OUTLINED_FUNCTION_9_2();
  return (*(v30 + 608))(v28);
}

uint64_t sub_1E3D40AB4(uint64_t a1, uint64_t a2)
{
  if ((sub_1E373F6E0() & 1) == 0)
  {
  }

  if (!a2)
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8();
  (*(v3 + 672))();
  v10[3] = &type metadata for ViewModelKeys;
  v10[4] = &off_1F5D7BCA8;
  LOBYTE(v10[0]) = 13;
  sub_1E3F9F164(v10);

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (!*(&v12 + 1))
  {
LABEL_12:
    sub_1E329505C(&v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
  }

  v5 = 0;
  v6 = v10[0];
  v7 = *(v10[0] + 16);
  while (1)
  {
    if (v7 == v5)
    {
LABEL_14:
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    if (*(*(v6 + 8 * v5 + 32) + 16))
    {

      sub_1E327D33C(0x656C746974, 0xE500000000000000);
      v9 = v8;

      if (v9)
      {
        goto LABEL_14;
      }
    }

    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D40C54()
{
  __asm { FMOV            V0.2D, #12.0 }

  *&v61[16] = _Q0;
  v61[32] = 0;
  v5 = sub_1E3952CA4();
  OUTLINED_FUNCTION_50_38(v5, v6, v7, v8);
  v85 = sub_1E3952CA4();
  v86 = v9;
  v87 = v10;
  v88 = v11;
  v89 = 0;
  v80 = sub_1E3952CA4();
  v81 = v12;
  v82 = v13;
  v83 = v14;
  v84 = 0;
  type metadata accessor for UIEdgeInsets();
  v16 = v15;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_4_10(v17, v18, v19, v20, v21, v22, v23, v24, 0.0, 0.0, *&v61[16], *&v61[24], *&v61[32], *&v61[40], *&v61[48], *&v61[56], *&v61[64], *&v61[72], *&v61[80], *&v61[88], *&v61[96], *&v61[104], *&v61[112], *&v61[120], *&v61[128], *&v61[136], *&v61[144], *&v61[152], *&v61[160], *&v61[168], *&v61[176], *&v61[184], *&v61[192], *&v61[200], *&v61[208], *&v61[216], *&v61[224], *&v61[232], *&v62, *&v63, *&v64, *&v65, *&v66, *&v67, *&v68, *(&v68 + 1), v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79[0]);
  v25 = sub_1E3C3DE00(v16);
  OUTLINED_FUNCTION_107(v25, v26, v27, v28, v29, v30, v31, v32, *v61, *&v61[8], *&v61[16], *&v61[24], *&v61[32], *&v61[40], *&v61[48], *&v61[56], *&v61[64], *&v61[72], *&v61[80], *&v61[88], *&v61[96], *&v61[104], *&v61[112], *&v61[120], *&v61[128], *&v61[136], *&v61[144], *&v61[152], *&v61[160], *&v61[168], *&v61[176], *&v61[184], *&v61[192], *&v61[200], *&v61[208], *&v61[216], *&v61[224], *&v61[232], v62, v63, v64, v65, v66, v67, v68);
  OUTLINED_FUNCTION_29_70(v33, v34, v35, v36, v37, v38, v39, v40, *v61);
  memcpy(v61, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v49 = OUTLINED_FUNCTION_19_96(v41, v42, v43, v44, v45, v46, v47, v48, *v61);
  v50(v49);
  OUTLINED_FUNCTION_36();
  __src[0] = 0;
  v51 = OUTLINED_FUNCTION_47_40();
  v52(v51);
  OUTLINED_FUNCTION_36();
  __src[0] = 0;
  v53 = OUTLINED_FUNCTION_31_55();
  v54(v53);
  OUTLINED_FUNCTION_36();
  __src[0] = 0;
  v55 = OUTLINED_FUNCTION_31_55();
  v56(v55);
  OUTLINED_FUNCTION_36();
  __src[0] = 0;
  v57 = OUTLINED_FUNCTION_31_55();
  v58(v57);
  OUTLINED_FUNCTION_36();
  return (*(v59 + 2296))(9, 0);
}

uint64_t sub_1E3D40E70()
{
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_47_40();
  v1(v0);
  OUTLINED_FUNCTION_36();
  v2 = OUTLINED_FUNCTION_31_55();
  v3(v2);
  OUTLINED_FUNCTION_36();
  v4 = OUTLINED_FUNCTION_31_55();
  v5(v4);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_31_55();
  v7(v6);
  OUTLINED_FUNCTION_36();
  return (*(v8 + 2296))(9, 0);
}

BOOL sub_1E3D40FB8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1576))();
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

unint64_t sub_1E3D4102C()
{
  result = qword_1ECF37B58;
  if (!qword_1ECF37B58)
  {
    type metadata accessor for SportsCanonicalBannerViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B58);
  }

  return result;
}

uint64_t sub_1E3D410A4(uint64_t a1)
{
  OUTLINED_FUNCTION_15_0();
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return sub_1E41FFDB4();
}

unsigned __int8 *getEnumTagSinglePayload for SportsCanonicalBannerLayoutVariation(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsCanonicalBannerLayoutVariation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3D412B4()
{
  result = qword_1ECF37B68;
  if (!qword_1ECF37B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PineBoardFeature(_BYTE *result, int a2, int a3)
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

uint64_t sub_1E3D413D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEF0);
  sub_1E42013A4();
  sub_1E32752B0(&qword_1EE289350, &qword_1ECF2FEF0);
  OUTLINED_FUNCTION_60();
  swift_getWitnessTable();
  v5 = *(*(a1 - 8) + 16);

  return v5(a2, v2, a1);
}

uint64_t sub_1E3D41528@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X3>, unint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1E42013A4();
  sub_1E32752B0(a3, a2);
  OUTLINED_FUNCTION_60();
  swift_getWitnessTable();
  v9 = *(*(a1 - 8) + 16);

  return v9(a4, v4, a1);
}

unint64_t sub_1E3D4161C()
{
  result = qword_1ECF37B78;
  if (!qword_1ECF37B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B78);
  }

  return result;
}

_BYTE *_s13LogTreeOptionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3D41750()
{
  result = sub_1E39D7838(&unk_1F5D80E38);
  qword_1EE2AA7D0 = result;
  return result;
}

uint64_t *sub_1E3D41778()
{
  if (qword_1EE28EF40 != -1)
  {
    OUTLINED_FUNCTION_6_149();
  }

  return &qword_1EE2AA7D0;
}

double sub_1E3D417B8@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0xD00000000000001ALL;
  *(a2 + 120) = 0x80000001E427F840;
  *(a2 + 128) = 256;
  return result;
}

void *sub_1E3D41814@<X0>(char a1@<W0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[9];
  v14 = a2[8];
  v13 = *(a2 + 40);
  v17[136] = 1;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v20 = 1;
  v21 = 0;
  sub_1E325F748(v18, &unk_1ECF31AB0);
  LOBYTE(__src[0]) = a1;
  __src[1] = v3;
  __src[2] = v4;
  __src[3] = v5;
  __src[4] = v6;
  __src[5] = v7;
  __src[6] = v8;
  __src[7] = v9;
  __src[8] = v10;
  __src[9] = v14;
  __src[10] = v11;
  LOWORD(__src[11]) = v13;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0xD00000000000001ALL;
  __src[15] = 0x80000001E427F840;
  LOWORD(__src[16]) = 256;
  v23[0] = a1;
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v14;
  v33 = v11;
  v34 = v13;
  v35 = 0;
  v36 = 1;
  v37 = 0xD00000000000001ALL;
  v38 = 0x80000001E427F840;
  v39 = 256;
  sub_1E3D4195C(__src, v17);
  sub_1E39F8998(v23);
  return memcpy(a3, __src, 0x82uLL);
}

void *sub_1E3D41998(id a1, void *a2, uint64_t a3, const void *a4)
{
  v5 = a1;
  if (a2)
  {
    objc_opt_self();
    a1 = swift_dynamicCastObjCClass();
    v7 = a1;
    if (a1)
    {
      a1 = a2;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307E8);
  sub_1E4148C68(sub_1E3D41B98, v8, v16);

  v9 = v16[0];
  LOBYTE(v17) = 1;
  (*(*v5 + 776))(v16, &v17, &unk_1F5D5D258, &off_1F5D5C7B8);
  if (v16[3])
  {
    if (swift_dynamicCast())
    {
      [v9 setMutePlaybackInBackground_];
    }
  }

  else
  {
    sub_1E325F748(v16, &unk_1ECF296E0);
  }

  v10 = OUTLINED_FUNCTION_74();
  v12 = sub_1E3D41C40(v10, v11, 39, a4);
  if (v12)
  {
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v14 = OUTLINED_FUNCTION_24_3();
    *(v14 + 16) = xmmword_1E4298880;
    *(v14 + 32) = v13;
    sub_1E39F8914(v14, v9);
  }

  return v9;
}

id sub_1E3D41B98@<X0>(void *a1@<X8>)
{
  memcpy(__dst, *(v1 + 16), 0x82uLL);
  if (sub_1E3D44104(__dst) != 1)
  {
  }

  sub_1E3280A90(0, &qword_1EE23AF70);
  result = sub_1E39F8768();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D41C40(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  OUTLINED_FUNCTION_26_0();
  v8 += 49;
  v9 = *v8;
  v10 = v8;
  if ((*v8)())
  {
    OUTLINED_FUNCTION_30();
    HIDWORD(v220) = (*(v11 + 1560))();
  }

  else
  {
    memcpy(__dst, a4, 0x82uLL);
    v12 = sub_1E3D44104(__dst);
    HIDWORD(v220) = __dst[0];
    v13 = v12 == 1 || __dst[0] == 7;
    if (v13)
    {
      HIDWORD(v220) = sub_1E3A2532C();
    }
  }

  v233 = MEMORY[0x1E69E7CC0];
  v234 = MEMORY[0x1E69E7CC0];
  v203 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_12_6();
  v15 = (*(v14 + 488))();
  v16 = &unk_1E4298000;
  __src = a4;
  v204 = v9;
  v206 = a1;
  v201 = v10;
  if (v15)
  {
    v17 = v15;
    if (sub_1E38E5664(95, a2))
    {
      v18 = sub_1E373E010(95, v17);
      if (v18)
      {
        v19 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v20 = OUTLINED_FUNCTION_24_3();
        *(v20 + 16) = xmmword_1E4298880;
        *(v20 + 32) = v19;
        v234 = v20;
      }
    }

    if (sub_1E38E5664(39, a2) && (v21 = sub_1E373E010(a3, v17)) != 0)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v23 = OUTLINED_FUNCTION_24_3();
      *(v23 + 16) = xmmword_1E4298880;
      *(v23 + 32) = v22;
      v233 = v23;
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    if (sub_1E38E5664(33, a2))
    {
      v216 = sub_1E373E010(33, v17);
    }

    else
    {

      v216 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_6();
    v25 = (*(v24 + 464))();
    if (v25)
    {
      v26 = v25;
      result = sub_1E32AE9B0(v25);
      if (result)
      {
        v28 = result;
        LODWORD(v197) = a3;
        v29 = 0;
        v216 = 0;
        v217 = v26 & 0xC000000000000001;
        v210 = v26 & 0xFFFFFFFFFFFFFF8;
        v213 = v26;
        v208 = v26 + 32;
        v199 = xmmword_1E4298880;
        while (1)
        {
          if (v217)
          {
            result = MEMORY[0x1E6911E60](v29, v213);
            v30 = result;
          }

          else
          {
            if (v29 >= *(v210 + 16))
            {
              goto LABEL_222;
            }

            v30 = *(v208 + 8 * v29);
          }

          if (__OFADD__(v29++, 1))
          {
            break;
          }

          LOWORD(v236[0]) = 95;
          if (*(a2 + 16))
          {
            v32 = *(a2 + 40);
            sub_1E37414E0();
            sub_1E4205DA4();
            OUTLINED_FUNCTION_3_171();
            do
            {
              OUTLINED_FUNCTION_1_203();
              if ((v33 & 1) == 0)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_20_80();
            }

            while ((OUTLINED_FUNCTION_5_154() & 1) == 0);
            LOWORD(v221) = *(v30 + 98);
            LOWORD(v232) = 95;
            sub_1E3742F1C();
            OUTLINED_FUNCTION_7_165();
            v34 = OUTLINED_FUNCTION_8_129();
            OUTLINED_FUNCTION_12_111(v34, v35, v36, v37, v38, v39, v40, v41, v191, v194, v195, v197, v199, *(&v199 + 1), v200, v201, v203, v204, v206, v208, v210, v213, v216, v217, __src, v220, v221, *(&v221 + 1), v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, *v235, *&v235[8], *&v235[16], *&v235[24], *&v235[32], *&v235[40], *&v235[48], *&v235[56], *&v235[64], *&v235[72], *&v235[80], *&v235[88], *&v235[96], *&v235[104], *&v235[112], *&v235[120], *&v235[128], v236[0]);
            if (v13 && v32 == v236)
            {

LABEL_60:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
              v68 = OUTLINED_FUNCTION_24_3();
              *(v68 + 16) = v199;
              *(v68 + 32) = v30;
              result = sub_1E379738C(v68);
              goto LABEL_61;
            }

            v43 = OUTLINED_FUNCTION_9_6();

            if (v43)
            {
              goto LABEL_60;
            }

LABEL_36:
            v44 = *(a2 + 16);
            LOWORD(v236[0]) = 39;
            if (v44)
            {
              sub_1E4205DA4();
              OUTLINED_FUNCTION_3_171();
              while (1)
              {
                OUTLINED_FUNCTION_1_203();
                if ((v45 & 1) == 0)
                {
                  break;
                }

                OUTLINED_FUNCTION_20_80();
                if (OUTLINED_FUNCTION_5_154())
                {
                  LOWORD(v221) = *(v30 + 98);
                  LOWORD(v232) = v197;
                  sub_1E3742F1C();
                  OUTLINED_FUNCTION_7_165();
                  v46 = OUTLINED_FUNCTION_8_129();
                  OUTLINED_FUNCTION_12_111(v46, v47, v48, v49, v50, v51, v52, v53, v191, v194, v195, v197, v199, *(&v199 + 1), v200, v201, v203, v204, v206, v208, v210, v213, v216, v217, __src, v220, v221, *(&v221 + 1), v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, *v235, *&v235[8], *&v235[16], *&v235[24], *&v235[32], *&v235[40], *&v235[48], *&v235[56], *&v235[64], *&v235[72], *&v235[80], *&v235[88], *&v235[96], *&v235[104], *&v235[112], *&v235[120], *&v235[128], v236[0]);
                  if (v13 && v32 == v236)
                  {

                    goto LABEL_60;
                  }

                  v55 = OUTLINED_FUNCTION_9_6();

                  if (v55)
                  {
                    goto LABEL_60;
                  }

                  break;
                }
              }
            }
          }

          LOWORD(v236[0]) = 33;
          if (*(a2 + 16))
          {
            v56 = *(a2 + 40);
            sub_1E37414E0();
            sub_1E4205DA4();
            OUTLINED_FUNCTION_3_171();
            while (1)
            {
              OUTLINED_FUNCTION_1_203();
              if ((v57 & 1) == 0)
              {
                break;
              }

              OUTLINED_FUNCTION_20_80();
              if (OUTLINED_FUNCTION_5_154())
              {
                LOWORD(v221) = *(v30 + 98);
                LOWORD(v232) = 33;
                sub_1E3742F1C();
                OUTLINED_FUNCTION_7_165();
                v58 = OUTLINED_FUNCTION_8_129();
                OUTLINED_FUNCTION_12_111(v58, v59, v60, v61, v62, v63, v64, v65, v191, v194, v195, v197, v199, *(&v199 + 1), v200, v201, v203, v204, v206, v208, v210, v213, v216, v217, __src, v220, v221, *(&v221 + 1), v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, *v235, *&v235[8], *&v235[16], *&v235[24], *&v235[32], *&v235[40], *&v235[48], *&v235[56], *&v235[64], *&v235[72], *&v235[80], *&v235[88], *&v235[96], *&v235[104], *&v235[112], *&v235[120], *&v235[128], v236[0]);
                if (v13 && v56 == v236)
                {
                }

                else
                {
                  v67 = OUTLINED_FUNCTION_9_6();

                  if ((v67 & 1) == 0)
                  {
                    break;
                  }
                }

                v216 = v30;
                goto LABEL_61;
              }
            }
          }

LABEL_61:
          if (v29 == v28)
          {

            v23 = v233;
            v16 = &unk_1E4298000;
            goto LABEL_66;
          }
        }

LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
        goto LABEL_223;
      }
    }

    v216 = 0;
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_66:
  v198 = [objc_opt_self() current];
  sub_1E3C2AE10();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  result = sub_1E32AE9B0(v23);
  if (!result)
  {
    goto LABEL_75;
  }

  v75 = result;
  if (result < 1)
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  for (i = 0; i != v75; ++i)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v23);
    }

    else
    {
    }

    OUTLINED_FUNCTION_12_6();
    if ((*(v77 + 392))())
    {
      OUTLINED_FUNCTION_30();
      (*(v78 + 1640))(v70, v72, v74);
    }
  }

LABEL_75:
  v79 = v216;
  if (v216)
  {
    OUTLINED_FUNCTION_12_6();
    if ((*(v80 + 392))())
    {
      OUTLINED_FUNCTION_30();
      (*(v81 + 1640))(v70, v72, v74);
    }
  }

  if (!sub_1E388A954(v23) || (OUTLINED_FUNCTION_26_0(), v83 = (*(v82 + 392))(), , !v83) || (OUTLINED_FUNCTION_8(), v85 = (*(v84 + 744))(), , (*&v199 = v85) == 0))
  {
    if (v204())
    {
      OUTLINED_FUNCTION_30();
      *&v199 = (*(v86 + 744))();
    }

    else
    {
      *&v199 = 0;
    }
  }

  if (!sub_1E388A954(v23))
  {
    goto LABEL_89;
  }

  type metadata accessor for ImageViewModel();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_30();
  v88 = (*(v87 + 1032))(HIDWORD(v220));
  v90 = v89;

  if (v90)
  {
LABEL_89:
    v88 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v91 = OUTLINED_FUNCTION_24_3();
  *(v91 + 16) = v16[136];
  v196 = v91;
  *(v91 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v232 = 0;
  memcpy(v236, __src, 0x82uLL);
  v202 = v72;
  v209 = v23;
  if (sub_1E3D44104(v236) == 1)
  {
    v192 = 0;
    v92 = 0.0;
    v205 = 1;
    v93 = 0.0;
    v94 = 1;
    goto LABEL_101;
  }

  LODWORD(v204) = LOBYTE(v236[13]);
  v95 = memcpy(v235, &v236[1], 0x52uLL);
  v93 = 0.0;
  if (*&v235[72] == 1)
  {
    HIDWORD(v194) = 0;
    v94 = 1;
  }

  else
  {
    if (*&v235[72])
    {
      v94 = v235[16];
      OUTLINED_FUNCTION_15_113(v95, v96, v97, v98, v99, v100, v101, v102, v191, v194, v91, v198, v199, *(&v199 + 1), v200, v202, v203, v204, v206, v23, v210, v213, v216, v217, __src, v220, v221, *(&v221 + 1), v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231, *&v235[72], v233, v234, v235[0]);
      goto LABEL_166;
    }

    if ((v235[16] & 1) == 0)
    {
      v94 = 0;
      v92 = *v235;
      v93 = *&v235[8];
      HIDWORD(v194) = v235[41];
      goto LABEL_100;
    }

    v94 = 1;
    HIDWORD(v194) = v235[41];
  }

  v92 = 0.0;
LABEL_100:
  OUTLINED_FUNCTION_15_113(v95, v96, v97, v98, v99, v100, v101, v102, v191, v194, v91, v198, v199, *(&v199 + 1), v200, v202, v203, v204, v206, v23, v210, v213, v216, v217, __src, v220, v221, *(&v221 + 1), v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235[0]);
LABEL_101:
  result = sub_1E32AE9B0(v23);
  if (!result)
  {
LABEL_166:
    v218 = 0;
    if (!v79)
    {
      goto LABEL_168;
    }

    goto LABEL_167;
  }

  v103 = result;
  if (result < 1)
  {
LABEL_224:
    __break(1u);
    return result;
  }

  v218 = 0;
  v104 = 0;
  v105 = v23 & 0xC000000000000001;
  v106 = v92 == 0.0;
  if (v93 != 0.0)
  {
    v106 = 0;
  }

  v207 = v106;
  v107 = __src;
  v214 = v94;
  v211 = v23 & 0xC000000000000001;
  do
  {
    if (v105)
    {
      MEMORY[0x1E6911E60](v104, v23);
    }

    else
    {
    }

    memcpy(v235, v107, 0x82uLL);
    if (sub_1E3D44104(v235) != 1 && (v235[128] & 1) != 0)
    {
      if ((v94 & 1) == 0)
      {
        type metadata accessor for ImageViewModel();
        if (swift_dynamicCastClass() != 0 && !v207)
        {
          v108 = OUTLINED_FUNCTION_6_12();
          v110 = sub_1E3C3E520(v108, v109);
          if (v110)
          {
            v111 = v232;
            if (!v232)
            {
              v111 = MEMORY[0x1E69E7CC0];
            }

            v232 = v111;
            v112 = v110;
            MEMORY[0x1E6910BF0]();
            OUTLINED_FUNCTION_18_63();
            if (v163)
            {
              OUTLINED_FUNCTION_11_118(v113);
              sub_1E42062F4();
            }

            OUTLINED_FUNCTION_74();
            sub_1E4206324();

            v107 = __src;
          }
        }
      }

      goto LABEL_145;
    }

    if (v94)
    {
      goto LABEL_145;
    }

    type metadata accessor for ImageViewModel();
    v114 = swift_dynamicCastClass();
    if (!v114)
    {
      goto LABEL_145;
    }

    v115 = v114;
    OUTLINED_FUNCTION_26_0();
    v218 = (*(v116 + 1040))(HIDWORD(v220));
    v117 = v92;
    v118 = v93;
    if ([objc_opt_self() isPad])
    {
      v117 = v92;
      v118 = v93;
      if (sub_1E3A2511C(SBYTE4(v220)))
      {
        v119 = OUTLINED_FUNCTION_6_12();
        v117 = sub_1E3C3E6B4(v119, v120, v121);
        v118 = v122;
      }
    }

    v123 = *(*v115 + 392);

    v125 = v123(v124);

    if (!v125)
    {
      v137 = v118;
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_11_13();
    v127 = COERCE_DOUBLE((*(v126 + 352))());
    v129 = v128;
    OUTLINED_FUNCTION_11_13();
    v131 = COERCE_DOUBLE((*(v130 + 248))());
    v133 = v132;
    v134 = (*(*v125 + 432))();
    if ((v135 & 1) == 0)
    {
      v136 = OUTLINED_FUNCTION_10_114(v134);
      if ((v129 & 1) == 0)
      {
        v137 = v127;
        if (v127 > 0.0 && v118 > v127)
        {
          v117 = round(v136 * v127);
          if ((v133 & 1) == 0)
          {
            v143 = v131;
            v146 = v131 <= 0.0 || v117 <= v131;
            v23 = v209;
            if (v146)
            {
              goto LABEL_136;
            }

            v137 = round(v131 / v136);
            goto LABEL_163;
          }

          goto LABEL_134;
        }
      }

      if ((v133 & 1) == 0)
      {
        v143 = v131;
        v144 = v131 <= 0.0 || v117 <= v131;
        v137 = v118;
        v23 = v209;
        if (v144)
        {
          goto LABEL_136;
        }

        v137 = round(v131 / v136);
        if ((v129 & 1) == 0)
        {
          v145 = v127 <= 0.0 || v137 <= v127;
          v117 = v131;
          if (!v145)
          {
            v117 = round(v136 * v127);
            v137 = v127;
          }

          goto LABEL_136;
        }

LABEL_163:
        v117 = v143;
        goto LABEL_136;
      }
    }

    v137 = v118;
LABEL_134:
    v23 = v209;
LABEL_136:
    if (v117 != 0.0 || v137 != 0.0)
    {
      v139 = sub_1E3C3E520(v117, v137);
      if (v139)
      {
        v140 = v232;
        if (!v232)
        {
          v140 = MEMORY[0x1E69E7CC0];
        }

        v232 = v140;
        v141 = v139;
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_18_63();
        if (v163)
        {
          OUTLINED_FUNCTION_11_118(v142);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_74();
        sub_1E4206324();
      }
    }

    v107 = __src;
    v94 = v214;
    v105 = v211;
LABEL_145:
    ++v104;
  }

  while (v103 != v104);
  if (!v216)
  {
LABEL_168:
    v212 = 0;
    v215 = 0;
    goto LABEL_172;
  }

LABEL_167:
  if (v94)
  {
    goto LABEL_168;
  }

  v147 = OUTLINED_FUNCTION_6_12();
  v149 = sub_1E3C3E520(v147, v148);
  type metadata accessor for ImageViewModel();
  v215 = v149;
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v151 = *(v150 + 904);

    v151(v152);
    v212 = v153;
  }

  else
  {

    v212 = 0;
  }

LABEL_172:
  v154 = v234;
  *&v221 = MEMORY[0x1E69E7CC0];
  result = sub_1E32AE9B0(v234);
  v155 = result;
  v156 = 0;
  while (v155 != v156)
  {
    if ((v234 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v156, v234);
      v157 = result;
    }

    else
    {
      if (v156 >= *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_220;
      }

      v157 = *(v234 + 8 * v156 + 32);
    }

    if (__OFADD__(v156, 1))
    {
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    if (*v157 != _TtC8VideosUI14VideoViewModel)
    {

LABEL_182:
      ++v156;
      continue;
    }

    v162 = sub_1E3E3AB0C(HIDWORD(v220), __src, v158, v159, v160, v161);

    if (!v162)
    {
      goto LABEL_182;
    }

    MEMORY[0x1E6910BF0](result);
    OUTLINED_FUNCTION_18_63();
    if (v163)
    {
      OUTLINED_FUNCTION_11_118(v164);
      sub_1E42062F4();
    }

    OUTLINED_FUNCTION_74();
    result = sub_1E4206324();
    v203 = v221;
    ++v156;
  }

  v165 = objc_allocWithZone(VUIMediaInfo);

  v166 = sub_1E376538C(6, v203, v232, 0);
  v167 = v199;
  if (v199)
  {
    v168 = v199;
  }

  else
  {
    v168 = [objc_opt_self() grayColor];
    v167 = 0;
  }

  v169 = v202;
  v170 = v167;
  [v166 setBackgroundColor_];

  v171 = sub_1E3D42FF8(v196);

  sub_1E3D44094(v171, v166);
  [v166 setGradientDisabled_];
  [v166 setShouldDelayLoadingImage_];
  [v166 setAlphaImageProxy_];
  if (v212)
  {
    v172 = sub_1E4205ED4();
  }

  else
  {
    v172 = 0;
  }

  [v166 setAlphaLayerAccessibilityText_];

  v173 = 0.0;
  if (sub_1E388A954(v234) && (OUTLINED_FUNCTION_30(), v175 = (*(v174 + 392))(), , v175))
  {
    type metadata accessor for VideoLayout();
    v176 = swift_dynamicCastClass();
    v177 = v176;
    if (v176)
    {
      v178 = *(*v176 + 432);

      v169 = v202;
      v180 = v178(v179);
      LOBYTE(v178) = v181;

      if ((v178 & 1) == 0)
      {
        v173 = *&v180;
      }
    }

    else
    {
    }
  }

  else
  {
    v177 = 0;
  }

  [v166 setPrimaryVideoAspectRatio_];
  if (v177)
  {
    v182 = *(*v177 + 1688);

    v184 = v182(v183);
  }

  else
  {

    v184 = 0;
  }

  [v166 setShowsSecondaryVideoView_];
  if (!sub_1E388A954(v234))
  {
    v221 = 0u;
    v222 = 0u;
    goto LABEL_207;
  }

  LOBYTE(v231) = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v185 + 776))(&v221, &v231, &unk_1F5D5DA38, &off_1F5D5C978);

  if (!*(&v222 + 1))
  {
LABEL_207:
    sub_1E325F748(&v221, &unk_1ECF296E0);
    goto LABEL_208;
  }

  if (OUTLINED_FUNCTION_24_75())
  {
    v186 = v231;
    goto LABEL_209;
  }

LABEL_208:
  v186 = 0;
LABEL_209:
  [v166 setIsAudioOnly_];
  v187 = sub_1E388A954(v154);

  if (!v187)
  {
    v221 = 0u;
    v222 = 0u;
    goto LABEL_214;
  }

  LOBYTE(v231) = 1;
  OUTLINED_FUNCTION_8();
  (*(v188 + 776))(&v221, &v231, &unk_1F5D5DA38, &off_1F5D5C978);

  if (!*(&v222 + 1))
  {
LABEL_214:
    sub_1E325F748(&v221, &unk_1ECF296E0);
    goto LABEL_215;
  }

  if (OUTLINED_FUNCTION_24_75())
  {
    v189 = v231;
    v190 = [v166 tvpPlaylist];
    [v190 setRepeatMode_];
  }

LABEL_215:
  if ((v205 & 1) == 0)
  {
    [v166 setPlaybackDelayInterval_];
  }

  return v166;
}

char *sub_1E3D42FF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1E37EBF70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_1E3280A90(0, &qword_1EE23ADD0);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1E37EBF70((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_1E329504C(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D43160()
{
  if (qword_1EE28EF40 != -1)
  {
    OUTLINED_FUNCTION_6_149();
  }
}

id sub_1E3D431B4(uint64_t a1, uint64_t a2, char a3, void *__src, uint64_t a5)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  memcpy(__dst, __src, 0x82uLL);
  v11 = sub_1E3D44104(__dst);
  v12 = __dst[0];
  if (v11 == 1 || __dst[0] == 7)
  {
    v12 = sub_1E3A2532C();
  }

  if (!sub_1E38E5664(39, a2))
  {
    goto LABEL_24;
  }

  memcpy(v171, __src, 0x82uLL);
  if (sub_1E3D44104(v171) == 1 || *&v171[10] == 1 || (LOBYTE(v171[3]) & 1) != 0 || v171[1] == 0.0 && v171[2] == 0.0)
  {
    return 0;
  }

  sub_1E3C7DE74(a3);
  OUTLINED_FUNCTION_19_97(v15, v16, v17, v18, v19, v20, v21, v22, v134, v138, v142, v146, v150, v154, v158, *(&v158 + 1), v165, *(&v165 + 1), *v170);

  if (!*&v170[24])
  {
    sub_1E325F748(v170, &unk_1ECF296E0);
LABEL_24:
    OUTLINED_FUNCTION_13_122();
    v46 = 0;
    goto LABEL_25;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_4_178(v23, v24, v25, v26, v27, v28, v29, v30, v134, v138, v142, v146, v150, v154, v158);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v6 = v158;
  sub_1E384EE08(35);
  LOBYTE(v5) = v31;
  *&v170[24] = v23;
  *v170 = v158;
  v33 = sub_1E3A7CD30(v32, v31, v170, 0);

  __swift_destroy_boxed_opaque_existential_1(v170);
  if (!v33)
  {
    goto LABEL_24;
  }

  v34 = *(*v33 + 392);

  v36 = v34(v35);

  if (v36)
  {
    v37 = [objc_opt_self() current];
    sub_1E3C2AE10();
    v39 = v38;
    (*(*v36 + 1640))();
  }

  v40 = *(*v33 + 392);
  v6 = (*v33 + 392);

  v5 = v40(v41);

  if (v5)
  {
    v146 = (*(*v5 + 352))(v42);
    v6 = v43;
    v142 = (*(*v5 + 248))();
    v44 = (*(*v5 + 432))();
    if ((v45 & 1) == 0)
    {
      OUTLINED_FUNCTION_10_114(v44);
    }
  }

  type metadata accessor for ImageViewModel();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {

    OUTLINED_FUNCTION_13_122();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_11_13();
  v121 = OUTLINED_FUNCTION_6_12();
  v123 = v122(0, v121);
  v6 = v123;
  if (v124 != 1)
  {
    if (v124 != 255)
    {
      sub_1E379098C(v123, v124);
    }

    goto LABEL_24;
  }

  v142 = v5;
  OUTLINED_FUNCTION_11_13();
  LOBYTE(v5) = (*(v125 + 1040))(v12);
  if ([objc_opt_self() makeImageProxyWithDescriptor_])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v158 = 0u;
    v165 = 0u;
  }

  *v170 = v158;
  *&v170[16] = v165;
  v146 = v46;
  v138 = v6;
  if (!*(&v165 + 1))
  {
    sub_1E325F748(v170, &unk_1ECF296E0);
    goto LABEL_80;
  }

  sub_1E3280A90(0, &qword_1EE23B340);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_80:
    v46 = 0;
    goto LABEL_81;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v46 = OUTLINED_FUNCTION_24_3();
  *(v46 + 16) = xmmword_1E4298880;
  *(v46 + 32) = v154;
LABEL_81:
  OUTLINED_FUNCTION_8();
  v134 = *(v126 + 392);

  v128 = v134(v127);

  if (v128)
  {
    OUTLINED_FUNCTION_8();
    v6 = (*(v129 + 744))();
  }

  else
  {
    v6 = 0;
  }

  OUTLINED_FUNCTION_8();
  v131 = (*(v130 + 1032))(v12);
  if (v132)
  {
    v133 = 0;
  }

  else
  {
    v133 = v131;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v12 = OUTLINED_FUNCTION_24_3();
  *(v12 + 16) = xmmword_1E4298880;
  *(v12 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];

  sub_1E379098C(v138, 1u);

LABEL_25:
  if (!sub_1E38E5664(95, a2))
  {
    v63 = 0;
    goto LABEL_46;
  }

  sub_1E3C7DE74(6);
  OUTLINED_FUNCTION_19_97(v47, v48, v49, v50, v51, v52, v53, v54, v134, v138, v142, v146, v150, v154, v158, *(&v158 + 1), v165, *(&v165 + 1), *v170);

  v151 = a5;
  if (*&v170[24])
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    OUTLINED_FUNCTION_4_178(v55, v56, v57, v55, v58, v59, v60, v61, v135, v139, v143, v147, a5, v155, v159);
    if (swift_dynamicCast())
    {
      v62 = v159;
    }

    else
    {
      v62 = 0;
    }
  }

  else
  {
    sub_1E325F748(v170, &unk_1ECF296E0);
    v62 = 0;
  }

  sub_1E3C7DE74(8);
  OUTLINED_FUNCTION_19_97(v64, v65, v66, v67, v68, v69, v70, v71, v135, v139, v143, v147, v151, v155, v159, v163, v166, v168, *v170);

  if (!*&v170[24])
  {

    sub_1E325F748(v170, &unk_1ECF296E0);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_40:
    sub_1E3C7DE74(8);
    OUTLINED_FUNCTION_19_97(v74, v75, v76, v77, v78, v79, v80, v81, v134, v138, v142, v146, v150, v154, v158, *(&v158 + 1), v165, *(&v165 + 1), *v170);

    if (*&v170[24])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BC0);
      if (swift_dynamicCast())
      {
        v63 = v158;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      sub_1E325F748(v170, &unk_1ECF296E0);
      v63 = 0;
    }

    goto LABEL_45;
  }

  sub_1E388A824(v158);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  v72 = sub_1E42062A4();

  if (v62)
  {
    sub_1E3744600(v62);

    v62 = sub_1E4205C44();
  }

  v73 = [objc_opt_self() videosPlayablesFromDictionaries:v72 andMetadataDictionary:v62];

  if (!v73)
  {
    goto LABEL_40;
  }

  sub_1E3280A90(0, &qword_1EE23B1C0);
  v63 = sub_1E42062B4();

LABEL_45:
  a5 = v150;
LABEL_46:
  sub_1E3C7ED20(14);
  OUTLINED_FUNCTION_19_97(v82, v83, v84, v85, v86, v87, v88, v89, v134, v138, v142, v146, v150, v154, v158, *(&v158 + 1), v165, *(&v165 + 1), *v170);

  if (!*&v170[24])
  {
    sub_1E325F748(v170, &unk_1ECF296E0);
LABEL_51:
    v100 = objc_allocWithZone(VUIMediaInfo);
    v14 = sub_1E376538C(a5, v63, v46, 0);
    if (!v6)
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v90 = sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_4_178(v90, v91, v92, v90, v93, v94, v95, v96, v136, v140, v144, v148, v152, v156, v160);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  v14 = v160;
  if (!v6)
  {
LABEL_49:
    v97 = objc_opt_self();
    v98 = v14;
    v99 = [v97 grayColor];
    goto LABEL_53;
  }

LABEL_52:
  v101 = v14;
  v99 = v6;
LABEL_53:
  v102 = v6;
  [v14 setBackgroundColor_];

  if (v12)
  {
    sub_1E3D42FF8(v12);

    v103 = sub_1E42062A4();
  }

  else
  {
    v103 = 0;
  }

  [v14 setImageThemes_];

  [v14 setGradientDisabled_];
  sub_1E3C7DE74(2);
  OUTLINED_FUNCTION_19_97(v104, v105, v106, v107, v108, v109, v110, v111, v136, v140, v144, v148, v152, v156, v160, v164, v167, v169, *v170);

  if (*&v170[24])
  {
    OUTLINED_FUNCTION_4_178(v112, v113, v114, MEMORY[0x1E69E6370], v115, v116, v117, v118, v137, v141, v145, v149, v153, v157, v161);
    if (swift_dynamicCast())
    {
      v119 = v162;
      goto LABEL_61;
    }
  }

  else
  {
    sub_1E325F748(v170, &unk_1ECF296E0);
  }

  v119 = 0;
LABEL_61:
  [v14 setShouldDelayLoadingImage_];

  memcpy(v170, __src, sizeof(v170));
  if (sub_1E3D44104(v170) != 1 && (v170[104] & 1) == 0)
  {
    [v14 setPlaybackDelayInterval_];
  }

  return v14;
}

uint64_t sub_1E3D43D3C()
{
  OUTLINED_FUNCTION_30();
  result = (*(v0 + 488))();
  if (result)
  {
    v2 = *(result + 16);

    if (v2)
    {
      OUTLINED_FUNCTION_8();
      result = (*(v3 + 464))();
      if (result)
      {
        v4 = OUTLINED_FUNCTION_6_12();
        sub_1E3D43E10(v5, v6, v7, v4, v8);

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3D43E10(unint64_t a1, char a2, void *a3, double a4, double a5)
{
  result = sub_1E32AE9B0(a1);
  v10 = result;
  for (i = 0; v10 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
      v12 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    type metadata accessor for LayoutGrid();
    v13 = sub_1E3A2579C(a4);
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v23 == v21 && v24 == v22)
    {
    }

    else
    {
      v15 = sub_1E42079A4();

      if ((v15 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    type metadata accessor for ImageViewModel();
    if (swift_dynamicCastClass())
    {
      v16 = objc_opt_self();

      v17 = [v16 isPad];
      v18 = a4;
      v19 = a5;
      if (v17)
      {
        v20 = sub_1E3A2511C(v13);
        v18 = a4;
        v19 = a5;
        if (v20)
        {
          v18 = sub_1E3C3E6B4(a4, v12, a2 & 1);
        }
      }

      if (sub_1E3C3E520(v18, v19))
      {
        if (!*a3)
        {
          *a3 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1E6910BF0]();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
      }
    }

LABEL_25:
  }

  return result;
}

void sub_1E3D44094(uint64_t a1, void *a2)
{
  v3 = sub_1E42062A4();

  [a2 setImageThemes_];
}

uint64_t sub_1E3D44104(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E3D44124(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 130))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1E3D44164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 130) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 130) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3D441F0(char a1)
{
  result = 0x6E49686372616553;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      v5 = 9;
      goto LABEL_13;
    case 3:
      OUTLINED_FUNCTION_70_1();
      result = v6 | 1;
      break;
    case 4:
    case 7:
      OUTLINED_FUNCTION_70_1();
      result = v7 | 6;
      break;
    case 5:
      return result;
    case 6:
      v5 = 10;
LABEL_13:
      result = v5 | 0xD000000000000010;
      break;
    case 8:
      OUTLINED_FUNCTION_70_1();
      result = v10 + 20;
      break;
    case 9:
      OUTLINED_FUNCTION_70_1();
      result = v4 | 2;
      break;
    case 10:
      OUTLINED_FUNCTION_70_1();
      result = v9 | 3;
      break;
    case 11:
      result = 0x6E497374726F7053;
      break;
    case 12:
      OUTLINED_FUNCTION_70_1();
      result = v3 | 8;
      break;
    case 13:
      OUTLINED_FUNCTION_70_1();
      result = v8 | 0xF;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1E3D443C0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D44410(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "AppleMusicSubscriptionInterface";
  }

  else
  {
    v4 = "onDocumentRequest";
  }

  if (a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (a2)
  {
    v6 = "onDocumentRequest";
  }

  else
  {
    v6 = "AppleMusicSubscriptionInterface";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D444B4(char a1, char a2)
{
  v3 = sub_1E3D441F0(a1);
  v5 = v4;
  if (v3 == sub_1E3D441F0(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D44540(char a1)
{
  sub_1E4207B44();
  sub_1E3D441F0(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D445B0()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44608()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44660()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D446B8()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44734()
{
  sub_1E4206014();
}

uint64_t sub_1E3D447F0(uint64_t a1, char a2)
{
  sub_1E3D441F0(a2);
  sub_1E4206014();
}

uint64_t sub_1E3D4484C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D441F0(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D448AC()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44900()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44954()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D449A8()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D44A24()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3D44A78(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3D443C0();
  *v1 = result;
  return result;
}

unint64_t sub_1E3D44AA0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3D441F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D44C60()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3D44CAC(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E3D44D08(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3D44C60();
  *v1 = result;
  return result;
}

unint64_t sub_1E3D44D30@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3D44CAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_1E3D44D64()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3D44DC4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3D44D64();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3D44E1C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3D44E7C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3D44E1C();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3D44ED4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3D44F34(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3D44ED4();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3D44F8C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3D44FEC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3D44F8C();
  return OUTLINED_FUNCTION_19_8(v1);
}

id _s8VideosUIAAC19initializeJSContextyySo0D0CFZ_0(uint64_t a1)
{
  v2 = [objc_opt_self() currentAppContext];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v21 = a1;
    while (2)
    {
      v5 = byte_1F5D81088[v4++ + 32];
      switch(v5)
      {
        case 1:
          v8 = type metadata accessor for JSPromiseOperation();
          goto LABEL_9;
        case 2:
          v8 = type metadata accessor for JSMultiPartPromiseOperation();
LABEL_9:
          sub_1E3ACD844(v8);
          goto LABEL_17;
        case 3:
          type metadata accessor for JSSignpost();
          v11 = v3;
          v7 = sub_1E385B864(v3);
          goto LABEL_16;
        case 4:
          type metadata accessor for JSNativeStorage();
          v12 = v3;
          v7 = sub_1E385B864(v3);
          goto LABEL_16;
        case 8:
          type metadata accessor for JSLocationAuthorizationStatus();
          v10 = v3;
          v7 = sub_1E385B864(v3);
          goto LABEL_16;
        case 9:
          type metadata accessor for JSSearchRAC();
          v13 = v3;
          v14 = sub_1E385B864(v3);
          v15 = v14;
          sub_1E3ACD7BC(v14);
          v16 = *(**sub_1E3A62EB4() + 192);
          v17 = v15;

          v16(v14);
          a1 = v21;

          goto LABEL_17;
        case 10:
          type metadata accessor for JSHighlightsManager();
          v6 = v3;
          v7 = sub_1E385B864(v3);
          goto LABEL_16;
        case 11:
          goto LABEL_17;
        case 12:
          type metadata accessor for JSDeviceDiscovery();
          v9 = v3;
          v7 = sub_1E41EC720();
          goto LABEL_16;
        case 13:
          type metadata accessor for JSAppleMusicSubscription();
          v7 = sub_1E3E97D88(v3);
          goto LABEL_16;
        default:
          type metadata accessor for JSService();
          v18 = v3;
          v7 = sub_1E385B864(v3);
LABEL_16:
          sub_1E3ACD7BC(v7);
LABEL_17:
          if (v4 != 14)
          {
            continue;
          }

          break;
      }

      break;
    }
  }

  v19 = objc_opt_self();

  return [v19 exposeObjectsInJSContext_];
}

void sub_1E3D45418(int a1, uint64_t a2, void *a3)
{
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24[-v14];
  if (qword_1EE288088 == -1)
  {
    __break(1u);
  }

  else
  {
    if ((qword_1EE288088 + 1) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v16 = qword_1EE288088 + 3;
    }

    else
    {
      v16 = qword_1EE288088 + 1;
    }

    qword_1EE288088 = v16;
    v26 = &v24[-v14];
    sub_1E41FFC04();
    (*(v8 + 16))(v12, v15, v6);
    sub_1E37B5450(a2, v27);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = a1;
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    (*(v8 + 32))(v20 + v17, v12, v6);
    *(v20 + v18) = v16;
    *(v20 + v19) = a3;
    v21 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = v27[1];
    *v21 = v27[0];
    *(v21 + 16) = v22;
    *(v21 + 32) = v27[2];
    *(v21 + 48) = v28;
    *(v21 + 56) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37B80);
    swift_allocObject();
    v23 = a3;
    sub_1E4200614();
    (*(v8 + 8))(v26, v6);
  }
}

void sub_1E3D45654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v37 = a7;
  v35 = a6;
  v36 = a5;
  v34 = a4;
  v11 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_4();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  sub_1E4206BA4();
  v18 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E76D8];
  *(v19 + 16) = xmmword_1E4297BE0;
  v21 = MEMORY[0x1E69E7738];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = a4;
  sub_1E41FFB94();

  (*(v13 + 16))(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  sub_1E37B5450(v35, v39);
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 79) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v13 + 32))(v25 + v22, &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v25 + v23) = v34;
  v26 = v25 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v26 + 48) = v40;
  v27 = v39[2];
  v28 = v39[0];
  *(v26 + 16) = v39[1];
  *(v26 + 32) = v27;
  *v26 = v28;
  *(v26 + 56) = v37;
  v29 = v36;
  *(v25 + v24) = v36;
  v30 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_1E3BA1D40;
  v30[1] = v17;
  aBlock[4] = sub_1E3D469A0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E377674C;
  aBlock[3] = &block_descriptor_101;
  v31 = _Block_copy(aBlock);
  v32 = v29;

  [v32 evaluate_];
  _Block_release(v31);
}

void sub_1E3D4596C(uint64_t a1, uint64_t a2)
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_13_123();
  v7 = *(v2 + v6);
  v9 = *(v2 + v8);
  v10 = v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 56);

  sub_1E3D45654(a1, a2, v2 + v5, v7, v9, v10, v11);
}

void sub_1E3D45A24(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v79 = a7;
  v80 = a8;
  v70 = a6;
  v71 = a5;
  v73 = a4;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v76 = v12;
  v77 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v74 = v16;
  v75 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4206B94();
  v19 = VUISignpostLogObject();
  sub_1E41FFBA4();

  sub_1E4206BA4();
  v20 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E76D8];
  v72 = xmmword_1E4297BE0;
  *(v21 + 16) = xmmword_1E4297BE0;
  v23 = MEMORY[0x1E69E7738];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = a3;
  v78 = a2;
  sub_1E41FFB94();

  v24 = sub_1E4205ED4();
  v25 = [a1 objectForKeyedSubscript_];

  if (!v25)
  {
    goto LABEL_43;
  }

  v26 = [v25 toObject];

  if (v26)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  aBlock = v86;
  v83 = v87;
  if (!*(&v87 + 1))
  {
    sub_1E329505C(&aBlock);
    goto LABEL_18;
  }

  type metadata accessor for JSService();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    sub_1E32ADE38();
    v37 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v38 = swift_allocObject();
    v39 = v80;
    *(v38 + 16) = v79;
    *(v38 + 24) = v39;
    v84 = sub_1E3D46A58;
    v85 = v38;
    OUTLINED_FUNCTION_0_224();
    OUTLINED_FUNCTION_4_179(COERCE_DOUBLE(1107296256));
    *&v83 = v40;
    *(&v83 + 1) = &block_descriptor_51_2;
    v41 = _Block_copy(&aBlock);

    sub_1E4203FE4();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_5_155(&qword_1EE23B5D0);
    OUTLINED_FUNCTION_9_120();
    MEMORY[0x1E6911380](0, v18, v14, v41);
    _Block_release(v41);

    v42 = OUTLINED_FUNCTION_18_90();
    v43(v42);
    (*(v74 + 8))(v18, v75);
LABEL_19:
    v44 = 0;
    v45 = 0;
LABEL_20:
    sub_1E4206B94();
    v46 = VUISignpostLogObject();
    sub_1E41FFBA4();

    sub_1E37FAED8(v44, v45);
    return;
  }

  v27 = v81;
  sub_1E3D441F0(*v73);
  v28 = sub_1E4205ED4();

  v29 = [a1 objectForKeyedSubscript_];

  if (!v29)
  {

    goto LABEL_18;
  }

  if (([v29 isObject] & 1) == 0 || (v30 = *(v73 + 5), __swift_project_boxed_opaque_existential_1(v73 + 1, *(v73 + 4)), v31 = OUTLINED_FUNCTION_50(), v32(v31, v30), sub_1E4205ED4(), OUTLINED_FUNCTION_50(), , v33 = objc_msgSend(v29, sel_objectForKeyedSubscript_, a1), a1, !v33))
  {

    goto LABEL_18;
  }

  if (([v33 isObject] & 1) == 0)
  {

    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v34 = swift_allocObject();
  *(v34 + 16) = v72;
  v35 = *(v73 + 6);
  *(v34 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8);
  *(v34 + 32) = v35;

  v36 = sub_1E394E11C(v34, v33);
  v73 = v36;
  if (v36)
  {
    if ([v36 toObject])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v83 = 0u;
    }

    v86 = aBlock;
    v87 = v83;
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
  }

  OUTLINED_FUNCTION_21_80();
  if (!*(&v83 + 1))
  {
LABEL_29:
    sub_1E329505C(&aBlock);
    goto LABEL_30;
  }

  type metadata accessor for JSPromiseOperation();
  if (OUTLINED_FUNCTION_3_172())
  {

    OUTLINED_FUNCTION_21_80();
    if (*(&v83 + 1))
    {
      if (OUTLINED_FUNCTION_3_172())
      {
        OUTLINED_FUNCTION_20_81();
        v47 = v70;
        v48 = v27;
        v49 = sub_1E3B9EA34();
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_30:
  OUTLINED_FUNCTION_21_80();
  v69 = v33;
  if (!*(&v83 + 1))
  {
    goto LABEL_37;
  }

  type metadata accessor for JSMultiPartPromiseOperation();
  if ((OUTLINED_FUNCTION_3_172() & 1) == 0)
  {
LABEL_38:
    v56 = v29;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_21_80();
  if (!*(&v83 + 1))
  {
LABEL_37:
    v56 = v29;
    sub_1E329505C(&aBlock);
LABEL_39:
    sub_1E32ADE38();
    v57 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v58 = swift_allocObject();
    v59 = v80;
    *(v58 + 16) = v79;
    *(v58 + 24) = v59;
    v84 = sub_1E3D46A60;
    v85 = v58;
    OUTLINED_FUNCTION_0_224();
    OUTLINED_FUNCTION_4_179(COERCE_DOUBLE(1107296256));
    *&v83 = v60;
    *(&v83 + 1) = &block_descriptor_57_0;
    v61 = _Block_copy(&aBlock);

    sub_1E4203FE4();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    OUTLINED_FUNCTION_5_155(&qword_1EE23B5D0);
    OUTLINED_FUNCTION_9_120();
    MEMORY[0x1E6911380](0, v18, v14, v61);

    _Block_release(v61);
    v62 = OUTLINED_FUNCTION_18_90();
    v63(v62);
    (*(v74 + 8))(v18, v75);
    sub_1E329505C(&v86);
    goto LABEL_19;
  }

  if ((OUTLINED_FUNCTION_3_172() & 1) == 0)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_20_81();
  v50 = v70;
  v51 = v27;
  v49 = sub_1E3B9EB78();
LABEL_35:
  v52 = v49;
  v53 = v27;
  if (v71)
  {
    v54 = *(*v49 + 328);

    v54(v55);
  }

  else
  {
  }

  sub_1E32ADE38();
  v64 = sub_1E4206A04();
  v45 = swift_allocObject();
  v65 = v80;
  v45[2] = v79;
  v45[3] = v65;
  v45[4] = v52;
  OUTLINED_FUNCTION_2_4();
  v66 = swift_allocObject();
  v44 = sub_1E3D46A68;
  *(v66 + 16) = sub_1E3D46A68;
  *(v66 + 24) = v45;
  v84 = sub_1E379E500;
  v85 = v66;
  OUTLINED_FUNCTION_0_224();
  *(&aBlock + 1) = 1107296256;
  *&v83 = sub_1E3839B50;
  *(&v83 + 1) = &block_descriptor_66_0;
  v67 = _Block_copy(&aBlock);

  dispatch_sync(v64, v67);

  _Block_release(v67);

  sub_1E329505C(&v86);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

  if ((v67 & 1) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

unint64_t sub_1E3D46444()
{
  result = qword_1ECF37B88;
  if (!qword_1ECF37B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37B88);
  }

  return result;
}

unint64_t sub_1E3D464E0()
{
  result = qword_1ECF37BA0;
  if (!qword_1ECF37BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BA0);
  }

  return result;
}

unint64_t sub_1E3D46538()
{
  result = qword_1ECF37BA8;
  if (!qword_1ECF37BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BA8);
  }

  return result;
}

unint64_t sub_1E3D46590()
{
  result = qword_1ECF37BB0;
  if (!qword_1ECF37BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BB0);
  }

  return result;
}

unint64_t sub_1E3D465E8()
{
  result = qword_1ECF37BB8;
  if (!qword_1ECF37BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BB8);
  }

  return result;
}

unint64_t sub_1E3D46640()
{
  result = qword_1ECF37BC0;
  if (!qword_1ECF37BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BC0);
  }

  return result;
}

uint64_t sub_1E3D46694(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1E3D4671C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3D467F0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3D468EC(_BYTE *result, int a2, int a3)
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

void sub_1E3D469A0(void *a1)
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_13_123();
  v6 = (v5 + 79) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v4 + 56);

  sub_1E3D45A24(a1, v1 + v3, v7, (v1 + v4), v12, v8, v10, v11);
}

uint64_t sub_1E3D46ACC(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1E3C2F9A0();

  sub_1E3C2E6A0(a1, 0);

  return v2;
}

uint64_t sub_1E3D46B48()
{
  v0 = sub_1E4207A04();

  v1 = 0;
  result = 30;
  switch(v0)
  {
    case 0:
      goto LABEL_102;
    case 1:
      v1 = 1;
      goto LABEL_102;
    case 2:
      v1 = 2;
      goto LABEL_102;
    case 3:
      v1 = 3;
      goto LABEL_102;
    case 4:
      v1 = 4;
      goto LABEL_102;
    case 5:
      v1 = 5;
      goto LABEL_102;
    case 6:
      v1 = 6;
      goto LABEL_102;
    case 7:
      v1 = 7;
      goto LABEL_102;
    case 8:
      v1 = 8;
      goto LABEL_102;
    case 9:
      v1 = 9;
      goto LABEL_102;
    case 10:
      v1 = 10;
      goto LABEL_102;
    case 11:
      v1 = 11;
      goto LABEL_102;
    case 12:
      v1 = 12;
      goto LABEL_102;
    case 13:
      v1 = 13;
      goto LABEL_102;
    case 14:
      v1 = 14;
      goto LABEL_102;
    case 15:
      v1 = 15;
      goto LABEL_102;
    case 16:
      v1 = 16;
      goto LABEL_102;
    case 17:
      v1 = 17;
      goto LABEL_102;
    case 18:
      v1 = 18;
      goto LABEL_102;
    case 19:
      v1 = 19;
      goto LABEL_102;
    case 20:
      v1 = 20;
      goto LABEL_102;
    case 21:
      v1 = 21;
      goto LABEL_102;
    case 22:
      v1 = 22;
      goto LABEL_102;
    case 23:
      v1 = 23;
      goto LABEL_102;
    case 24:
      v1 = 24;
      goto LABEL_102;
    case 25:
      v1 = 25;
      goto LABEL_102;
    case 26:
      v1 = 26;
      goto LABEL_102;
    case 27:
      v1 = 27;
      goto LABEL_102;
    case 28:
      v1 = 28;
      goto LABEL_102;
    case 29:
      v1 = 29;
LABEL_102:
      result = v1;
      break;
    case 30:
      return result;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    default:
      result = 123;
      break;
  }

  return result;
}

uint64_t sub_1E3D46F94(char a1)
{
  result = 0x6E696772616DLL;
  switch(a1)
  {
    case 1:
      v3 = 1684300144;
      return v3 | 0x676E6900000000;
    case 2:
      return 0x6874646977;
    case 3:
      v11 = 1466853741;
      return v11 | 0x6874646900000000;
    case 4:
      v11 = 1467507053;
      return v11 | 0x6874646900000000;
    case 5:
      return 0xD000000000000010;
    case 6:
      return 0x746867696568;
    case 7:
      v15 = 1215195501;
      goto LABEL_61;
    case 8:
      v15 = 1215848813;
LABEL_61:
      v18 = v15 & 0xFFFF0000FFFFFFFFLL | 0x696500000000;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6867000000000000;
    case 9:
    case 25:
    case 31:
    case 36:
    case 37:
    case 57:
    case 78:
    case 79:
    case 111:
    case 114:
      OUTLINED_FUNCTION_70_1();
      return v24 | 1;
    case 10:
      v3 = 1667330163;
      return v3 | 0x676E6900000000;
    case 11:
      return 0x63617053656E696CLL;
    case 12:
      return 0x6E656D6E67696C61;
    case 13:
      return 0xD000000000000010;
    case 14:
      v6 = 1769172848;
      return v6 | 0x6E6F697400000000;
    case 15:
    case 68:
      OUTLINED_FUNCTION_70_1();
      return v25 | 6;
    case 16:
    case 29:
      v18 = 0x696C68676968;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6867000000000000;
    case 17:
      v10 = 0x726564726F62;
      return v10 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
    case 18:
      return 0x65646E756F527369;
    case 19:
      return 0x776F64616873;
    case 20:
    case 71:
    case 74:
    case 109:
    case 110:
      v12 = 5;
      return v12 | 0xD000000000000010;
    case 21:
      return 0x6F6C6F43746E6974;
    case 22:
      v13 = 1701998438;
      return v13 | 0x756F726700000000;
    case 23:
      return 0x4D746E6172626976;
    case 24:
      v13 = 1801675106;
      return v13 | 0x756F726700000000;
    case 26:
    case 41:
    case 65:
    case 83:
    case 115:
      OUTLINED_FUNCTION_70_1();
      return v20 | 2;
    case 27:
    case 28:
    case 72:
    case 88:
    case 106:
    case 107:
      OUTLINED_FUNCTION_70_1();
      return v21 | 8;
    case 30:
      v19 = 0x7463656C6573;
      return v19 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 32:
      v19 = 0x6C6261736964;
      return v19 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    case 33:
      return 0x6E6564646968;
    case 34:
      return 0x696C417375636F66;
    case 35:
      return 0x72614D7375636F66;
    case 38:
      return 0x4673747065636361;
    case 39:
      return 0x72477265746E6563;
    case 40:
      v9 = 1684632167;
      return v9 | 0x6C79745300000000;
    case 42:
      return 0xD000000000000010;
    case 43:
      return 0xD000000000000010;
    case 44:
      v8 = 0x43664F6D756ELL;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6C6F000000000000;
    case 45:
      return 0x776F52664F6D756ELL;
    case 46:
    case 75:
    case 112:
    case 120:
      OUTLINED_FUNCTION_70_1();
      return v22 | 7;
    case 47:
      v6 = 1634493810;
      return v6 | 0x6E6F697400000000;
    case 48:
      v9 = 1954047348;
      return v9 | 0x6C79745300000000;
    case 49:
    case 61:
      v12 = 10;
      return v12 | 0xD000000000000010;
    case 50:
    case 63:
    case 64:
      OUTLINED_FUNCTION_70_1();
      return v14 | 4;
    case 51:
      return 0x696D6146746E6F66;
    case 52:
      return 0x657A6953746E6F66;
    case 53:
      return 0x74646957746E6F66;
    case 54:
      return 0x67696557746E6F66;
    case 55:
      return 0x74616546746E6F66;
    case 56:
      v4 = 0x4D646E656C62;
      return v4 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
    case 58:
      return 0x6E61725474786574;
    case 59:
      return 0x67696C4174786574;
    case 60:
      v12 = 11;
      return v12 | 0xD000000000000010;
    case 62:
      return 0x664F7265626D756ELL;
    case 66:
      return 0x705372657474656CLL;
    case 67:
      return 0x61657242656E696CLL;
    case 69:
      v7 = 0x737961776C61;
      goto LABEL_99;
    case 70:
      return 0x66456C6175736976;
    case 73:
    case 76:
      OUTLINED_FUNCTION_70_1();
      return v23 | 0xF;
    case 77:
      OUTLINED_FUNCTION_70_1();
      return v5 | 0xC;
    case 80:
      return 0x46656C6163737075;
    case 81:
      v10 = 0x746365707361;
      return v10 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
    case 82:
      return 0x72416C6175736976;
    case 84:
      v4 = 0x4D656C616373;
      return v4 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
    case 85:
      return 0x6F43726564726F62;
    case 86:
      return 0x6957726564726F62;
    case 87:
      return 0xD000000000000010;
    case 89:
      v8 = 0x686563616C70;
      return v8 & 0xFFFFFFFFFFFFLL | 0x6C6F000000000000;
    case 90:
      return 0xD000000000000010;
    case 91:
      return 0xD000000000000010;
    case 92:
      return 0xD000000000000010;
    case 93:
      return 0x6168536567616D69;
    case 94:
      OUTLINED_FUNCTION_70_1();
      return v17 + 16;
    case 95:
      v7 = 0x6C6F626D7973;
LABEL_99:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 96:
      result = 0x65546C6F626D7973;
      break;
    case 97:
      result = 0xD000000000000010;
      break;
    case 98:
      OUTLINED_FUNCTION_70_1();
      result = v16 | 3;
      break;
    case 99:
      OUTLINED_FUNCTION_70_1();
      result = v26 | 0xE;
      break;
    case 100:
      result = 0x6F506C6F626D7973;
      break;
    case 101:
      result = 0x79546E6F74747562;
      break;
    case 102:
      result = 0x7474754272656275;
      break;
    case 103:
      result = 0xD000000000000010;
      break;
    case 104:
      result = 0x69536E6F74747562;
      break;
    case 105:
      result = 0x68536E6F74747562;
      break;
    case 108:
      result = 0x62616E4572756C62;
      break;
    case 113:
    case 117:
      result = 0x746E656964617267;
      break;
    case 116:
      result = 0xD000000000000010;
      break;
    case 118:
      result = 0x6461527472617473;
      break;
    case 119:
      result = 0x7569646152646E65;
      break;
    case 121:
      result = 0x7469617274726F70;
      break;
    case 122:
      result = 0x616F6265726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3D47BA0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1E3D47C34(char a1, char a2)
{
  v3 = sub_1E3D46F94(a1);
  v5 = v4;
  if (v3 == sub_1E3D46F94(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D47CC0(char a1)
{
  sub_1E4207B44();
  sub_1E3D46F94(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D47D38()
{
  sub_1E4206014();
}

uint64_t sub_1E3D47D98(uint64_t a1, char a2)
{
  sub_1E3D46F94(a2);
  sub_1E4206014();
}

uint64_t sub_1E3D47DF4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D46F94(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D47E54()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D47EC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D46B48();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D47EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D46F94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D47F2C()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3D47F80(char a1)
{
  if (a1)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

unint64_t sub_1E3D47FC0()
{
  result = qword_1ECF37BC8;
  if (!qword_1ECF37BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BC8);
  }

  return result;
}

uint64_t sub_1E3D4802C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D47F2C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D4805C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D47F80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewLayoutKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x86)
  {
    if (a2 + 122 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 122) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 123;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7B;
  v5 = v6 - 123;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewLayoutKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 122 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 122) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x86)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x85)
  {
    v6 = ((a2 - 134) >> 8) + 1;
    *result = a2 + 122;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 122);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ThemeKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3D482C8()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for VerticalStackLayout();
    sub_1E3F39F3C();
    v1 = v2;
    *(v0 + 120) = v2;
  }

  return v1;
}

uint64_t sub_1E3D48334()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for ChannelLogoViewLayout();
    v1 = sub_1E3E390C4();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3D4839C()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E3D48438()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  BYTE8(v216) = 0;
  v269 = 0x407C200000000000;
  LOBYTE(v270) = 0;
  *&v266 = 0x4086800000000000;
  BYTE8(v266) = 0;
  *&v263 = 0x407E000000000000;
  BYTE8(v263) = 0;
  v2 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v259 = v261;
  v260 = v262;
  sub_1E3C3DE00(v2);
  *&v252 = v256;
  BYTE8(v252) = BYTE8(v256);
  sub_1E3C2FCB8(&v259, v274);
  v11 = OUTLINED_FUNCTION_9_121(v3, v4, v5, v6, v7, v8, v9, v10, v163, v176, v189, v202, 0);
  memcpy(v11, v12, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v14 = *(v13 + 1600);
  (v14)(&v216, 6, v15 & 1, v2);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v216 = *MEMORY[0x1E69DDCE0];
  v217 = v16;
  LOBYTE(v218) = 0;
  sub_1E3952C88();
  v269 = v17;
  v270 = v18;
  v271 = v19;
  v272 = v20;
  v273 = 0;
  type metadata accessor for UIEdgeInsets();
  v22 = v21;
  sub_1E3C2FC98();
  v263 = v266;
  v264 = v267;
  v265 = v268;
  sub_1E3C3DE00(v22);
  v23 = OUTLINED_FUNCTION_1_204();
  sub_1E3C3DE00(v23);
  v252 = v256;
  v253 = v257;
  v254 = v258;
  sub_1E3C3DE00(v22);
  v244 = v248;
  v245 = v249;
  LOBYTE(v246) = v250;
  sub_1E3C2FCB8(&v216, v274);
  v32 = OUTLINED_FUNCTION_9_121(v24, v25, v26, v27, v28, v29, v30, v31, v164, v177, v190, v203, v216);
  memcpy(v32, v33, 0xE9uLL);
  v34 = OUTLINED_FUNCTION_18();
  v42 = OUTLINED_FUNCTION_6_150(v34, v35, v36, v37, v38, v39, v40, v41, v165, v178, v191, v204, v216);
  v14(v42);
  OUTLINED_FUNCTION_9_2();
  v179 = v43 + 1760;
  v44 = *(v43 + 1760);
  v45 = v44();
  v46 = [objc_opt_self() clearColor];
  (*(*v45 + 752))(v46);

  OUTLINED_FUNCTION_9_2();
  v192 = v47 + 1832;
  v205 = *(v47 + 1832);
  v205();
  v216 = 0x4028000000000000uLL;
  *&v217 = 0;
  *(&v217 + 1) = 0x4028000000000000;
  LOBYTE(v218) = 0;
  OUTLINED_FUNCTION_12_112();
  OUTLINED_FUNCTION_13_124();
  OUTLINED_FUNCTION_8_130(0x4032000000000000uLL);
  v48 = OUTLINED_FUNCTION_1_204();
  v49 = sub_1E3C3DE00(v48);
  OUTLINED_FUNCTION_2_170(v49, v50, v51, v52, v53, v54, v55, v56, v166, v179, v192, v205, v216, *(&v216 + 1), v217, *(&v217 + 1), v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, *(&v244 + 1), v245, *(&v245 + 1), v246, v247, v248, *(&v248 + 1), v249, *(&v249 + 1), v250, v251, v252, v253, v254, v255, v256, v257, v258);
  v65 = OUTLINED_FUNCTION_9_121(v57, v58, v59, v60, v61, v62, v63, v64, v167, v180, v193, v206, v216);
  memcpy(v65, v66, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v75 = OUTLINED_FUNCTION_6_150(v67, v68, v69, v70, v71, v72, v73, v74, v168, v181, v194, v207, v216);
  v76(v75);

  OUTLINED_FUNCTION_9_2();
  v78 = *(v77 + 1808);
  v78();
  *&v216 = 0x4064000000000000;
  BYTE8(v216) = 0;
  v269 = 0x4072600000000000;
  LOBYTE(v270) = 0;
  OUTLINED_FUNCTION_14_122(0x4059000000000000uLL);
  OUTLINED_FUNCTION_11_119();
  v79 = OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_3_173(v79, v80, v81, v82, v83, v84, v85, v86, v169, v182, v195, v208, v216, *(&v216 + 1), v217, *(&v217 + 1), v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, *(&v244 + 1), v245, *(&v245 + 1), v246, v247, v248, SBYTE8(v248), v249, *(&v249 + 1), v250, v251, v252, SBYTE8(v252));
  v95 = OUTLINED_FUNCTION_9_121(v87, v88, v89, v90, v91, v92, v93, v94, v170, v183, v196, v209, v216);
  memcpy(v95, v96, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v97 + 1600))(&v216, 4, v98 & 1, v2);

  (v78)(v99);
  *&v216 = 0x4038000000000000;
  BYTE8(v216) = 0;
  v269 = 0x4046000000000000;
  LOBYTE(v270) = 0;
  OUTLINED_FUNCTION_14_122(0x403A000000000000uLL);
  OUTLINED_FUNCTION_11_119();
  v100 = OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_3_173(v100, v101, v102, v103, v104, v105, v106, v107, v171, v184, v197, v210, v216, *(&v216 + 1), v217, *(&v217 + 1), v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, *(&v244 + 1), v245, *(&v245 + 1), v246, v247, v248, SBYTE8(v248), v249, *(&v249 + 1), v250, v251, v252, SBYTE8(v252));
  v116 = OUTLINED_FUNCTION_9_121(v108, v109, v110, v111, v112, v113, v114, v115, v172, v185, v198, v211, v216);
  memcpy(v116, v117, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v118 + 1600))(&v216, 8, v119 & 1, v2);

  (v78)(v120);
  v216 = 0x4028000000000000uLL;
  *&v217 = 0;
  *(&v217 + 1) = 0x4028000000000000;
  LOBYTE(v218) = 0;
  OUTLINED_FUNCTION_12_112();
  OUTLINED_FUNCTION_13_124();
  OUTLINED_FUNCTION_8_130(0x4030000000000000uLL);
  v121 = OUTLINED_FUNCTION_1_204();
  v122 = sub_1E3C3DE00(v121);
  OUTLINED_FUNCTION_2_170(v122, v123, v124, v125, v126, v127, v128, v129, v173, v186, v199, v212, v216, *(&v216 + 1), v217, *(&v217 + 1), v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, *(&v244 + 1), v245, *(&v245 + 1), v246, v247, v248, *(&v248 + 1), v249, *(&v249 + 1), v250, v251, v252, v253, v254, v255, v256, v257, v258);
  v138 = OUTLINED_FUNCTION_9_121(v130, v131, v132, v133, v134, v135, v136, v137, v174, v187, v200, v213, v216);
  memcpy(v138, v139, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v148 = OUTLINED_FUNCTION_6_150(v140, v141, v142, v143, v144, v145, v146, v147, v175, v188, v201, v214, v216);
  v149(v148);

  OUTLINED_FUNCTION_9_2();
  v151 = (*(v150 + 1736))();
  sub_1E3C37CBC(v151, 151);

  v153 = (v44)(v152);
  sub_1E3C37CBC(v153, 117);

  OUTLINED_FUNCTION_9_2();
  v155 = (*(v154 + 1784))();
  sub_1E3C37CBC(v155, 97);

  v157 = (v78)(v156);
  sub_1E3C37CBC(v157, 40);

  v159 = v215(v158);
  sub_1E3C37CBC(v159, 99);

  OUTLINED_FUNCTION_9_2();
  v161 = (*(v160 + 1856))();
  sub_1E3C37CBC(v161, 88);

  return v1;
}

uint64_t sub_1E3D48B28()
{
  v0 = sub_1E3C5C6B8();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1E3D48BD4()
{
  v1 = OBJC_IVAR____TtC8VideosUI13RemoteBarItem_shouldImpress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E3D48C18(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI13RemoteBarItem_shouldImpress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3D48D4C()
{
  v1 = OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Route(0);

    v2 = sub_1E3F4C85C();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1E3D48E00(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3D48D4C();
  return sub_1E3D48E48;
}

void sub_1E3D48E60()
{
  OUTLINED_FUNCTION_31_1();
  objc_allocWithZone(v0);
  sub_1E3D48EDC();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D48EDC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v67 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v65 - v18;
  v19 = OBJC_IVAR____TtC8VideosUI13RemoteBarItem_metrics;
  type metadata accessor for Metrics();
  v20 = v19;
  *&v1[v19] = sub_1E3BA54D0();
  v21 = v4;
  v22 = v1;
  v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_shouldImpress] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route] = 0;
  v23 = &v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title];
  *v23 = v16;
  v23[1] = v14;
  v24 = &v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
  *v24 = v12;
  v24[1] = v10;
  v25 = &v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_documentRef];
  *v25 = v8;
  v25[1] = v6;
  *&v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_dictionary] = v21;
  *&v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_parentDictionary] = v67;
  v69 = sub_1E4205F14();
  v70 = v26;

  sub_1E4207414();
  OUTLINED_FUNCTION_2_171();
  sub_1E375D84C(v71);
  if (!v75)
  {
    v32 = &unk_1ECF296E0;
    v33 = &v73;
LABEL_14:
    sub_1E325F748(v33, v32);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6D0);
  if ((OUTLINED_FUNCTION_1_205() & 1) == 0)
  {
    goto LABEL_15;
  }

  v27 = v69;
  v28 = v20;
  v29 = *&v22[v20];
  sub_1E4205F14();

  OUTLINED_FUNCTION_11_120();

  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    v30 = OUTLINED_FUNCTION_6_151();
    v31 = OUTLINED_FUNCTION_10_115(v30, v73);
  }

  else
  {
    sub_1E325F748(v71, &qword_1ECF40720);
    v31 = 0;
  }

  (*(*v29 + 184))(v31);

  v34 = *&v22[v28];
  sub_1E4205F14();

  OUTLINED_FUNCTION_11_120();

  if (v72)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    v35 = OUTLINED_FUNCTION_6_151();
    v36 = OUTLINED_FUNCTION_10_115(v35, v73);
  }

  else
  {
    sub_1E325F748(v71, &qword_1ECF40720);
    v36 = 0;
  }

  (*(*v34 + 208))(v36);

  v37 = sub_1E4205F14();
  sub_1E3D496FC(v37, v38, v27, v71);

  if (!v72)
  {
    v32 = &qword_1ECF40720;
    v33 = v71;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (OUTLINED_FUNCTION_6_151())
  {
    v39 = *&v22[v28];
    type metadata accessor for BaseImpressionManager();

    v40 = v66;
    static BaseImpressionManager.makeImpressionsData(_:parent:)();

    v41 = sub_1E4204724();
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
    (*(*v39 + 232))(v40);
  }

LABEL_15:
  v73 = sub_1E4205F14();
  v74 = v42;
  OUTLINED_FUNCTION_8_131();
  OUTLINED_FUNCTION_2_171();
  sub_1E375D84C(v71);
  if (v75)
  {
    if (OUTLINED_FUNCTION_1_205())
    {
      v43 = v69;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1E325F748(&v73, &unk_1ECF296E0);
  }

  v43 = 0;
LABEL_20:
  v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_isNonServerTab] = v43;
  v73 = sub_1E4205F14();
  v74 = v44;
  OUTLINED_FUNCTION_8_131();
  OUTLINED_FUNCTION_2_171();
  sub_1E375D84C(v71);
  if (v75)
  {
    OUTLINED_FUNCTION_1_205();
    OUTLINED_FUNCTION_5_156();
    if (v47)
    {
      v46 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v73, &unk_1ECF296E0);
    v45 = 0;
    v46 = 0;
  }

  v48 = &v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_iconResource];
  *v48 = v45;
  v48[1] = v46;
  v73 = sub_1E4205F14();
  v74 = v49;
  OUTLINED_FUNCTION_8_131();
  OUTLINED_FUNCTION_2_171();
  sub_1E375D84C(v71);
  if (v75)
  {
    OUTLINED_FUNCTION_1_205();
    OUTLINED_FUNCTION_5_156();
    if (v47)
    {
      v51 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v73, &unk_1ECF296E0);
    v50 = 0;
    v51 = 0;
  }

  v52 = &v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_sideBarIconResource];
  *v52 = v50;
  v52[1] = v51;
  v73 = sub_1E4205F14();
  v74 = v53;
  OUTLINED_FUNCTION_8_131();
  OUTLINED_FUNCTION_2_171();
  sub_1E375D84C(v71);
  if (v75)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    v54 = OUTLINED_FUNCTION_1_205();
    v55 = v69;
    if (!v54)
    {
      v55 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v73, &unk_1ECF296E0);
    v55 = 0;
  }

  *&v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_contextData] = v55;
  v73 = sub_1E4205F14();
  v74 = v56;
  OUTLINED_FUNCTION_8_131();
  OUTLINED_FUNCTION_2_171();
  sub_1E375D84C(v71);
  if (v75)
  {
    OUTLINED_FUNCTION_1_205();
    OUTLINED_FUNCTION_5_156();
    if (v47)
    {
      v58 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v73, &unk_1ECF296E0);
    v57 = 0;
    v58 = 0;
  }

  v59 = &v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_pageContextData];
  *v59 = v57;
  v59[1] = v58;
  v69 = sub_1E4205F14();
  v70 = v60;
  sub_1E4207414();
  OUTLINED_FUNCTION_2_171();

  sub_1E375D84C(v71);
  if (!v75)
  {
    sub_1E325F748(&v73, &unk_1ECF296E0);
    goto LABEL_44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6D0);
  if ((OUTLINED_FUNCTION_1_205() & 1) == 0)
  {
LABEL_44:
    v63 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
    goto LABEL_45;
  }

  v61 = v69;
  sub_1E3D496B8();
  v62 = sub_1E38206B8(v61);

  v63 = sub_1E3D49768(v62);
LABEL_45:
  *&v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_uiConfiguration] = v63;
  v64 = type metadata accessor for RemoteBarItem();
  v68.receiver = v22;
  v68.super_class = v64;
  objc_msgSendSuper2(&v68, sel_init);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3D496B8()
{
  result = qword_1ECF37C40;
  if (!qword_1ECF37C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF37C40);
  }

  return result;
}

double sub_1E3D496FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1E327D33C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_1E374E74C(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

id sub_1E3D49768(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1E4205C44();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() uiConfigurationWithDict_];

  return v2;
}

uint64_t sub_1E3D497F4(uint64_t a1)
{
  sub_1E3294F34(a1, v6);
  if (!v7)
  {
    sub_1E325F748(v6, &unk_1ECF296E0);
    goto LABEL_9;
  }

  type metadata accessor for RemoteBarItem();
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier) == *&v5[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier] && *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8) == *&v5[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_1E42079A4();
  }

  return v3 & 1;
}

void sub_1E3D49940()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))(v5);
  type metadata accessor for Route(0);
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier);
  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8);

  v27 = v10;
  v12 = sub_1E3F4C85C();
  v13 = *((*v8 & *v0) + 0xE0);

  v13(v14);
  v15 = sub_1E324FBDC();
  v28 = v3;
  v29 = v1;
  (*(v3 + 16))(v7, v15, v1);

  v16 = v0;

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_1E3270FC8(v27, v11, &v30);
    *(v19 + 12) = 2080;
    v21 = sub_1E41E1364(v9);
    v23 = sub_1E3270FC8(v21, v22, &v30);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v24 = sub_1E41E1364(v12);
    v26 = sub_1E3270FC8(v24, v25, &v30);

    *(v19 + 24) = v26;
    _os_log_impl(&dword_1E323F000, v17, v18, "RemoteBarItem: [%s] reset route from %s to %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E69143B0](v20, -1, -1);
    MEMORY[0x1E69143B0](v19, -1, -1);
  }

  else
  {
  }

  (*(v28 + 8))(v7, v29);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3D49C78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteBarItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3D49E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_dictionary);
  *&v7 = sub_1E4205F14();
  *(&v7 + 1) = v2;
  sub_1E4207414();
  sub_1E375D7E8(v6, v1, &v7);
  sub_1E375D84C(v6);
  if (v8)
  {
    v3 = OUTLINED_FUNCTION_21_4();
    return OUTLINED_FUNCTION_10_115(v3, v5);
  }

  else
  {
    sub_1E325F748(&v7, &unk_1ECF296E0);
    return 0;
  }
}

void sub_1E3D49F00()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_dictionary);
  v33 = sub_1E4205F14();
  v34 = v11;
  sub_1E4207414();
  sub_1E375D7E8(v35, v10, &v36);
  sub_1E375D84C(v35);
  if (!v37)
  {
    sub_1E325F748(&v36, &unk_1ECF296E0);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v31 = v9;
  v12 = 0;
  v13 = v33;
  v14 = *(v33 + 16);
  v29 = v6;
  v30 = (v6 + 32);
  v15 = v33 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v28 = v33 + 40;
LABEL_4:
  for (i = v15 + 16 * v12; ; i += 16)
  {
    if (v14 == v12)
    {

      goto LABEL_17;
    }

    if (v12 >= *(v13 + 16))
    {
      break;
    }

    sub_1E41FE404();

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      v17 = *v30;
      (*v30)(v31, v3, v4);
      v18 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1E3D4A270(0, *(v18 + 16) + 1, 1, v18);
      }

      v19 = v18;
      v20 = *(v18 + 16);
      v32 = v19;
      v21 = *(v19 + 24);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v27 = v20 + 1;
        v25 = sub_1E3D4A270(v21 > 1, v20 + 1, 1, v32);
        v22 = v27;
        v32 = v25;
      }

      ++v12;
      v23 = v31;
      v24 = v32;
      *(v32 + 16) = v22;
      v17((v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20), v23, v4);
      v15 = v28;
      goto LABEL_4;
    }

    sub_1E325F748(v3, &unk_1ECF363C0);
    ++v12;
  }

  __break(1u);
}

size_t sub_1E3D4A270(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3D4A35C(v8, v7);
  v10 = *(sub_1E41FE414() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3D4A458(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E3D4A35C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37C48);
  v4 = *(sub_1E41FE414() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D4A458(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E41FE414(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E41FE414();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1E3D4A52C(void *a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_192();
    return;
  }

  v2 = v1;
  v35 = a1;
  v3 = sub_1E3D4B954(v35);
  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_12_5();
  v8 = (*(v7 + 544))();
  if (!v8)
  {

LABEL_27:
    OUTLINED_FUNCTION_192();

    return;
  }

  v34 = v8;
  v9 = [v8 navigationController];
  if (!v9)
  {

LABEL_31:
    OUTLINED_FUNCTION_192();

    return;
  }

  v10 = v9;
  OUTLINED_FUNCTION_12_5();
  v12 = (*(v11 + 496))();
  v13 = sub_1E32AE9B0(v12);
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {

      goto LABEL_27;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v15 = *(v12 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v36 = v15;
    v16 = *&v15[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier] == v5 && v6 == *&v15[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
    if (v16 || (sub_1E42079A4() & 1) != 0)
    {
      break;
    }
  }

  v17 = OBJC_IVAR____TtC8VideosUI14LibraryBarItem_menuItem;
  if ((sub_1E3EBFB88() & 1) == 0)
  {

    goto LABEL_31;
  }

  v18 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v20 = *(v19 + 624);

  v20(v21);
  v22 = *sub_1E3B7B1C8();
  v23 = *((*v18 & *v2) + 0x268);

  v25 = v23(v24);
  (*(*v22 + 416))(v25);

  v26 = *&v36[v17];
  v27 = *((*v18 & *v2) + 0x238);

  v29 = v27(v28);
  sub_1E3D4A928(v26, v29 & 1, v35, v10);

  OUTLINED_FUNCTION_192();
}

void sub_1E3D4A928(unsigned __int8 *a1, int a2, void *a3, void *a4)
{
  v8 = sub_1E41FFCB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  LODWORD(v95) = a2;
  v96 = a1;
  v94 = v14;
  v93 = v9;
  if (a2)
  {
    v98 = a4;
    v97 = a3;
    v99 = 2;
LABEL_21:
    v26 = sub_1E324FBDC();
    v27 = *(v9 + 16);
    v90 = v26;
    v91 = (v9 + 16);
    v89 = v27;
    (v27)(v13);

    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v13;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v104 = v32;
      *v31 = 136315650;
      v33 = (*(*a1 + 432))();
      v35 = sub_1E3270FC8(v33, v34, &v104);

      *(v31 + 4) = v35;
      *(v31 + 12) = 1024;
      *(v31 + 14) = v95 & 1;
      *(v31 + 18) = 2048;
      *(v31 + 20) = v99;
      _os_log_impl(&dword_1E323F000, v28, v29, "LibrarySideBarManager::rebasing %s, from Tabbar %{BOOL}d, index %ld", v31, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v36 = *(v9 + 8);
      v37 = v30;
    }

    else
    {

      v36 = *(v9 + 8);
      v37 = v13;
    }

    v88 = v36;
    v36(v37, v8);
    while (1)
    {
      v38 = [v98 viewControllers];
      sub_1E38DA110();
      v39 = sub_1E42062B4();

      *&v103[0] = v39;
      v104 = v99;
      v105 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396B0);
      sub_1E3D4B9C4();
      sub_1E38D2054(&v104, v102);
      v40 = *&v102[0];

      if (!v40)
      {
        break;
      }

      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v40))
      {
        v42 = v41;
        ObjectType = swift_getObjectType();
        v44 = *(v42 + 16);
        v45 = v40;
        v44(1, ObjectType, v42);
      }

      [v97 pushViewController:v40 animated:0];
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v40))
      {
        v47 = v46;
        v48 = swift_getObjectType();
        v49 = *(v47 + 16);
        v50 = v40;
        v49(0, v48, v47);
      }
    }

    v51 = *(**sub_1E3B7B1C8() + 672);

    v53 = v51(v52);

    v54 = 0;
    v55 = *(v53 + 16);
    for (i = v53 + 32; ; i += 40)
    {
      if (v55 == v54)
      {

        return;
      }

      if (v54 >= *(v53 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      sub_1E327F454(i, v102);
      sub_1E327F454(v102, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
      type metadata accessor for LibLocalSource();
      if (swift_dynamicCast())
      {
        break;
      }

      ++v54;
      __swift_destroy_boxed_opaque_existential_1(v102);
    }

    sub_1E37DADF4(v102, v103);
    sub_1E37DADF4(v103, &v104);
    type metadata accessor for Router();
    v57 = v106;
    v58 = v107;
    __swift_project_boxed_opaque_existential_1(&v104, v106);
    (*(v58 + 16))(v57, v58);
    sub_1E40C49A8();
    v60 = v59;

    sub_1E40C49A8();
    v62 = v61;
    if (v95)
    {
      v63 = v61;
    }

    else
    {
      v63 = v60;
    }

    if (v95)
    {
      v64 = v60;
    }

    else
    {
      v64 = v61;
    }

    v65 = MEMORY[0x1E69E7D40];
    v66 = *((*MEMORY[0x1E69E7D40] & *v64) + 0x178);
    v67 = v64;
    v95 = v63;
    v96 = v67;
    v68 = v66(v99);
    v69 = v92;
    v70 = v94;
    v89(v92, v90, v94);

    v71 = sub_1E41FFC94();
    v72 = sub_1E4206814();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v91 = v60;
      v75 = v74;
      *&v103[0] = v74;
      *v73 = 136315138;
      v76 = type metadata accessor for Route(0);
      v77 = MEMORY[0x1E6910C30](v68, v76);
      v79 = v62;
      v80 = sub_1E3270FC8(v77, v78, v103);

      *(v73 + 4) = v80;
      v62 = v79;
      v65 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_1E323F000, v71, v72, "LibrarySideBarManager:: rebasedRoutes %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      v60 = v91;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v81 = v92;
    }

    else
    {

      v81 = v69;
    }

    v88(v81, v70);
    v82 = swift_allocObject();
    v83 = v96;
    v82[2] = v68;
    v82[3] = v83;
    v84 = v95;
    v82[4] = v99;
    v82[5] = v84;
    v85 = v83;
    v86 = v84;
    v87 = j__OUTLINED_FUNCTION_51_1();
    (*((*v65 & *v85) + 0x1F0))(v87 & 1, sub_1E3D4BA28, v82);

    __swift_destroy_boxed_opaque_existential_1(&v104);
  }

  else
  {
    v99 = &v88 - v12;
    v15 = sub_1E3B7B1C8();
    v16 = *(**v15 + 456);

    v18 = v16(v17);

    v19 = sub_1E32AE9B0(v18);
    v20 = 0;
    while (1)
    {
      if (v19 == v20)
      {

        return;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1E6911E60](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (*(v21 + 72) == *(v96 + 9) && *(v21 + 80) == *(v96 + 10))
      {

        goto LABEL_20;
      }

      v23 = sub_1E42079A4();

      ++v20;
      if (v23)
      {

LABEL_20:
        v13 = v99;
        v24 = *(*v15 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_shelvedMenuTypesNotOnPhoneRootPage);
        a1 = v96;
        v25 = v96[32];
        v97 = a4;
        v98 = a3;

        LOBYTE(v25) = sub_1E37D7DAC(v25, v24);

        v99 = v25 & 1;
        v8 = v94;
        v9 = v93;
        goto LABEL_21;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }
}