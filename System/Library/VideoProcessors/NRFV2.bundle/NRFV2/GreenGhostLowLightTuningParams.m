@interface GreenGhostLowLightTuningParams
- (GreenGhostLowLightTuningParams)init;
- (LowLightTuning)tuningParams;
- (int)readPlist:(id)a3;
- (void)setDefaultTuningParams;
@end

@implementation GreenGhostLowLightTuningParams

- (void)setDefaultTuningParams
{
  v37 = *"fff?";
  *&v38[8] = xmmword_2959D60D0;
  *&v38[24] = xmmword_2959D6050;
  *&v38[40] = unk_2959D6060;
  *v38 = 1022739087;
  *&v38[56] = 0x3A03126F00000000;
  v35 = xmmword_2959D60B8;
  v36 = 1045220557;
  v9 = 0;
  v10 = 0;
  v12 = 1036831949;
  v20 = xmmword_2959D6078;
  v8 = 0;
  v11 = 0x3A83126F3F000000;
  __asm { FMOV            V0.2S, #1.0 }

  v13 = _D0;
  v14 = *"fff?";
  v15 = *v38;
  v17 = *&v38[32];
  v18 = *&v38[48];
  v16 = *&v38[16];
  v19 = 0x3CA3D70A3C23D70ALL;
  v21 = 953267991;
  v22 = 0;
  v25 = 0x3EA8F5C33B449BA6;
  v24 = unk_2959D60A0;
  v23 = xmmword_2959D6090;
  v26 = 0x3ECCCCCD3E4CCCCDLL;
  v27 = 0x300000001;
  v29 = 0x3F0000003DCCCCCDLL;
  v28 = 1;
  v30 = 0;
  v31 = 0x3B449BA63B03126FLL;
  v32 = 0x3C23D70A3CA3D70ALL;
  v33 = 0x3B03126F3A83126FLL;
  v34 = 0x3D4CCCCD3D23D70ALL;
  objc_msgSend_setTuningParams_(self, a2, &v8, v2);
}

- (GreenGhostLowLightTuningParams)init
{
  v7.receiver = self;
  v7.super_class = GreenGhostLowLightTuningParams;
  v2 = [(GreenGhostLowLightTuningParams *)&v7 init];
  objc_msgSend_setDefaultTuningParams(v2, v3, v4, v5);
  return v2;
}

- (int)readPlist:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"faceBoundaryPaddingRatio", v6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v7, v8, v9, v10) != 2)
  {
    sub_2958B1410();
LABEL_99:
    v612 = -1;
    goto LABEL_70;
  }

  v13 = objc_msgSend_objectAtIndexedSubscript_(v7, v11, 0, v12);
  objc_msgSend_floatValue(v13, v14, v15, v16);
  LODWORD(self[1].super.isa) = v17;

  v20 = objc_msgSend_objectAtIndexedSubscript_(v7, v18, 1, v19);
  objc_msgSend_floatValue(v20, v21, v22, v23);
  HIDWORD(self[1].super.isa) = v24;

  v27 = objc_msgSend_objectForKeyedSubscript_(v4, v25, @"enabled", v26);

  if (!v27)
  {
    sub_2958B27EC();
    goto LABEL_99;
  }

  v30 = objc_msgSend_objectForKeyedSubscript_(v4, v28, @"enabled", v29);
  self->_tuningParams.enabled = objc_msgSend_BOOLValue(v30, v31, v32, v33);

  v36 = objc_msgSend_objectForKeyedSubscript_(v4, v34, @"blurThreshold", v35);

  if (!v36)
  {
    sub_2958B2794();
    goto LABEL_99;
  }

  v39 = objc_msgSend_objectForKeyedSubscript_(v4, v37, @"blurThreshold", v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);
  self->_tuningParams.blurThreshold = v43;

  v46 = objc_msgSend_objectForKeyedSubscript_(v4, v44, @"maxMaskAverage", v45);

  if (!v46)
  {
    sub_2958B273C();
    goto LABEL_99;
  }

  v49 = objc_msgSend_objectForKeyedSubscript_(v4, v47, @"maxMaskAverage", v48);
  objc_msgSend_floatValue(v49, v50, v51, v52);
  self->_tuningParams.maxMaskAverage = v53;

  v56 = objc_msgSend_objectForKeyedSubscript_(v4, v54, @"greenGhostThreshold", v55);

  if (!v56)
  {
    sub_2958B26E4();
    goto LABEL_99;
  }

  v59 = objc_msgSend_objectForKeyedSubscript_(v4, v57, @"greenGhostThreshold", v58);
  objc_msgSend_floatValue(v59, v60, v61, v62);
  self->_tuningParams.greenGhostThreshold = v63;

  v66 = objc_msgSend_objectForKeyedSubscript_(v4, v64, @"detection", v65);
  if (!v66)
  {
    sub_2958B268C();
    goto LABEL_99;
  }

  v69 = v66;
  v70 = objc_msgSend_objectForKeyedSubscript_(v66, v67, @"brightness", v68);
  v73 = v70;
  if (!v70)
  {
    sub_2958B2634();
LABEL_98:

    goto LABEL_99;
  }

  v74 = objc_msgSend_objectForKeyedSubscript_(v70, v71, @"threshold", v72);

  if (!v74)
  {
    sub_2958B25DC();
    goto LABEL_98;
  }

  v77 = objc_msgSend_objectForKeyedSubscript_(v73, v75, @"threshold", v76);
  objc_msgSend_floatValue(v77, v78, v79, v80);
  *&self[1]._tuningParams.enabled = v81;

  v84 = objc_msgSend_objectForKeyedSubscript_(v73, v82, @"dilationNormalizedRadius", v83);

  if (!v84)
  {
    sub_2958B2584();
    goto LABEL_98;
  }

  v87 = objc_msgSend_objectForKeyedSubscript_(v73, v85, @"dilationNormalizedRadius", v86);
  objc_msgSend_floatValue(v87, v88, v89, v90);
  LODWORD(self[2].super.isa) = v91;

  v94 = objc_msgSend_objectForKeyedSubscript_(v73, v92, @"erosionNormalizedRadius", v93);

  if (!v94)
  {
    sub_2958B252C();
    goto LABEL_98;
  }

  v97 = objc_msgSend_objectForKeyedSubscript_(v73, v95, @"erosionNormalizedRadius", v96);
  objc_msgSend_floatValue(v97, v98, v99, v100);
  HIDWORD(self[2].super.isa) = v101;

  v104 = objc_msgSend_objectForKeyedSubscript_(v73, v102, @"normalizedOpticalCenter", v103);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v104, v105, v106, v107) != 2)
  {
    sub_2958B1468(v104, v73, v69);
    goto LABEL_99;
  }

  v110 = objc_msgSend_objectAtIndexedSubscript_(v104, v108, 0, v109);
  objc_msgSend_floatValue(v110, v111, v112, v113);
  self[1]._tuningParams.maxMaskAverage = v114;

  v117 = objc_msgSend_objectAtIndexedSubscript_(v104, v115, 1, v116);
  objc_msgSend_floatValue(v117, v118, v119, v120);
  self[1]._tuningParams.greenGhostThreshold = v121;

  v124 = objc_msgSend_objectForKeyedSubscript_(v69, v122, @"blob", v123);
  v73 = v124;
  if (!v124)
  {
    sub_2958B24D4();
    goto LABEL_98;
  }

  v127 = objc_msgSend_objectForKeyedSubscript_(v124, v125, @"threshold", v126);

  if (!v127)
  {
    sub_2958B247C();
    goto LABEL_98;
  }

  v130 = objc_msgSend_objectForKeyedSubscript_(v73, v128, @"threshold", v129);
  objc_msgSend_floatValue(v130, v131, v132, v133);
  self[2]._tuningParams.maxMaskAverage = v134;

  v137 = objc_msgSend_objectForKeyedSubscript_(v73, v135, @"radius", v136);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v137, v138, v139, v140) != 2)
  {
    sub_2958B14F0(v137, v73, v69);
    goto LABEL_99;
  }

  v143 = objc_msgSend_objectAtIndexedSubscript_(v137, v141, 0, v142);
  *&self[2]._tuningParams.enabled = objc_msgSend_intValue(v143, v144, v145, v146);

  v149 = objc_msgSend_objectAtIndexedSubscript_(v137, v147, 1, v148);
  LODWORD(self[2]._tuningParams.blurThreshold) = objc_msgSend_intValue(v149, v150, v151, v152);

  v155 = objc_msgSend_objectForKeyedSubscript_(v69, v153, @"green", v154);
  v73 = v155;
  if (!v155)
  {
    sub_2958B2424();
    goto LABEL_98;
  }

  v158 = objc_msgSend_objectForKeyedSubscript_(v155, v156, @"hueThreshold", v157);

  if (!v158)
  {
    sub_2958B23CC();
    goto LABEL_98;
  }

  v161 = objc_msgSend_objectForKeyedSubscript_(v73, v159, @"hueThreshold", v160);
  objc_msgSend_floatValue(v161, v162, v163, v164);
  *&self[3]._tuningParams.enabled = v165;

  v168 = objc_msgSend_objectForKeyedSubscript_(v73, v166, @"openingNormalizedRadius", v167);

  if (!v168)
  {
    sub_2958B2374();
    goto LABEL_98;
  }

  v171 = objc_msgSend_objectForKeyedSubscript_(v73, v169, @"openingNormalizedRadius", v170);
  objc_msgSend_floatValue(v171, v172, v173, v174);
  *&self[4]._tuningParams.enabled = v175;

  v178 = objc_msgSend_objectForKeyedSubscript_(v73, v176, @"dilationNormalizedRadius", v177);

  if (!v178)
  {
    sub_2958B231C();
    goto LABEL_98;
  }

  v181 = objc_msgSend_objectForKeyedSubscript_(v73, v179, @"dilationNormalizedRadius", v180);
  objc_msgSend_floatValue(v181, v182, v183, v184);
  self[4]._tuningParams.blurThreshold = v185;

  v188 = objc_msgSend_objectForKeyedSubscript_(v73, v186, @"hueRange", v187);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v188, v189, v190, v191) != 2)
  {
    sub_2958B1578(v188);
    goto LABEL_98;
  }

  v194 = objc_msgSend_objectAtIndexedSubscript_(v188, v192, 0, v193);
  objc_msgSend_floatValue(v194, v195, v196, v197);
  LODWORD(self[3].super.isa) = v198;

  v201 = objc_msgSend_objectAtIndexedSubscript_(v188, v199, 1, v200);
  objc_msgSend_floatValue(v201, v202, v203, v204);
  HIDWORD(self[3].super.isa) = v205;

  v208 = objc_msgSend_objectForKeyedSubscript_(v73, v206, @"saturationThresholds", v207);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v208, v209, v210, v211) != 2)
  {
    sub_2958B15E8(v208);
    goto LABEL_98;
  }

  v214 = objc_msgSend_objectAtIndexedSubscript_(v208, v212, 0, v213);
  objc_msgSend_floatValue(v214, v215, v216, v217);
  self[3]._tuningParams.maxMaskAverage = v218;

  v221 = objc_msgSend_objectAtIndexedSubscript_(v208, v219, 1, v220);
  objc_msgSend_floatValue(v221, v222, v223, v224);
  self[3]._tuningParams.greenGhostThreshold = v225;

  v228 = objc_msgSend_objectForKeyedSubscript_(v73, v226, @"valueThresholds", v227);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v228, v229, v230, v231) != 2)
  {
    sub_2958B1658(v228, v73, v69);
    goto LABEL_99;
  }

  v234 = objc_msgSend_objectAtIndexedSubscript_(v228, v232, 0, v233);
  objc_msgSend_floatValue(v234, v235, v236, v237);
  LODWORD(self[4].super.isa) = v238;

  v241 = objc_msgSend_objectAtIndexedSubscript_(v228, v239, 1, v240);
  objc_msgSend_floatValue(v241, v242, v243, v244);
  HIDWORD(self[4].super.isa) = v245;

  v248 = objc_msgSend_objectForKeyedSubscript_(v69, v246, @"multiBandDetection", v247);
  if (!v248)
  {
    sub_2958B22AC(v69);
    goto LABEL_99;
  }

  v251 = v248;
  v252 = objc_msgSend_objectForKeyedSubscript_(v248, v249, @"tmpVarThresholds", v250);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v252, v253, v254, v255) != 2)
  {
    sub_2958B16E0(v252, v251, v69);
    goto LABEL_99;
  }

  v614 = v69;
  v258 = objc_msgSend_objectAtIndexedSubscript_(v252, v256, 0, v257);
  objc_msgSend_floatValue(v258, v259, v260, v261);
  self[4]._tuningParams.maxMaskAverage = v262;

  v265 = objc_msgSend_objectAtIndexedSubscript_(v252, v263, 1, v264);
  objc_msgSend_floatValue(v265, v266, v267, v268);
  self[4]._tuningParams.greenGhostThreshold = v269;

  v272 = objc_msgSend_objectForKeyedSubscript_(v4, v270, @"refinement", v271);
  if (!v272)
  {
    sub_2958B223C(v69);
    goto LABEL_99;
  }

  v275 = v272;
  v276 = objc_msgSend_objectForKeyedSubscript_(v272, v273, @"guidedFilterRadius", v274);

  if (!v276)
  {
    sub_2958B21BC(v275, v614);
    goto LABEL_99;
  }

  v279 = objc_msgSend_objectForKeyedSubscript_(v275, v277, @"guidedFilterRadius", v278);
  LODWORD(self[5].super.isa) = objc_msgSend_unsignedIntValue(v279, v280, v281, v282);

  v285 = objc_msgSend_objectForKeyedSubscript_(v275, v283, @"guidedFilterGuideRange", v284);

  if (!v285)
  {
    sub_2958B213C(v275, v614);
    goto LABEL_99;
  }

  v288 = objc_msgSend_objectForKeyedSubscript_(v275, v286, @"guidedFilterGuideRange", v287);
  objc_msgSend_floatValue(v288, v289, v290, v291);
  HIDWORD(self[5].super.isa) = v292;

  v295 = objc_msgSend_objectForKeyedSubscript_(v275, v293, @"guidedFilterThreshold", v294);

  if (!v295)
  {
    sub_2958B20BC(v275, v614);
    goto LABEL_99;
  }

  v298 = objc_msgSend_objectForKeyedSubscript_(v275, v296, @"guidedFilterThreshold", v297);
  objc_msgSend_floatValue(v298, v299, v300, v301);
  *&self[5]._tuningParams.enabled = v302;

  v305 = objc_msgSend_objectForKeyedSubscript_(v275, v303, @"dilationNormalizedRadius", v304);

  if (!v305)
  {
    sub_2958B203C(v275, v614);
    goto LABEL_99;
  }

  v308 = objc_msgSend_objectForKeyedSubscript_(v275, v306, @"dilationNormalizedRadius", v307);
  objc_msgSend_floatValue(v308, v309, v310, v311);
  self[5]._tuningParams.blurThreshold = v312;

  v315 = objc_msgSend_objectForKeyedSubscript_(v275, v313, @"maskSurroundThreshold", v314);

  if (!v315)
  {
    sub_2958B1FBC(v275, v614);
    goto LABEL_99;
  }

  v318 = objc_msgSend_objectForKeyedSubscript_(v275, v316, @"maskSurroundThreshold", v317);
  objc_msgSend_floatValue(v318, v319, v320, v321);
  self[5]._tuningParams.maxMaskAverage = v322;

  v325 = objc_msgSend_objectForKeyedSubscript_(v4, v323, @"fusion", v324);
  if (!v325)
  {
    sub_2958B1F3C(v275, v614);
    goto LABEL_99;
  }

  v328 = v325;
  v329 = objc_msgSend_objectForKeyedSubscript_(v325, v326, @"neighborDiffFilterRadius", v327);
  LODWORD(self[6].super.isa) = objc_msgSend_unsignedIntValue(v329, v330, v331, v332);

  v335 = objc_msgSend_objectForKeyedSubscript_(v328, v333, @"neighborDifferenceThresholds", v334);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v335, v336, v337, v338) != 2)
  {
    sub_2958B1768();
    goto LABEL_99;
  }

  v341 = objc_msgSend_objectAtIndexedSubscript_(v335, v339, 0, v340);
  objc_msgSend_floatValue(v341, v342, v343, v344);
  *&self[6]._tuningParams.enabled = v345;

  v348 = objc_msgSend_objectAtIndexedSubscript_(v335, v346, 1, v347);
  objc_msgSend_floatValue(v348, v349, v350, v351);
  self[6]._tuningParams.blurThreshold = v352;

  v355 = objc_msgSend_objectForKeyedSubscript_(v328, v353, @"greenProbabilityThresholds", v354);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v355, v356, v357, v358) != 2)
  {
    sub_2958B17FC();
    goto LABEL_99;
  }

  v361 = objc_msgSend_objectAtIndexedSubscript_(v355, v359, 0, v360);
  objc_msgSend_floatValue(v361, v362, v363, v364);
  self[6]._tuningParams.maxMaskAverage = v365;

  v368 = objc_msgSend_objectAtIndexedSubscript_(v355, v366, 1, v367);
  objc_msgSend_floatValue(v368, v369, v370, v371);
  self[6]._tuningParams.greenGhostThreshold = v372;

  v375 = objc_msgSend_objectForKeyedSubscript_(v328, v373, @"fusionWeightErosionNormalizedRadius", v374);

  if (!v375)
  {
    sub_2958B1EB4(v328, v275, v614);
    goto LABEL_99;
  }

  v378 = objc_msgSend_objectForKeyedSubscript_(v328, v376, @"fusionWeightErosionNormalizedRadius", v377);
  objc_msgSend_floatValue(v378, v379, v380, v381);
  LODWORD(self[7].super.isa) = v382;

  v385 = objc_msgSend_objectForKeyedSubscript_(v328, v383, @"fusionWeightBlurRadius", v384);

  if (!v385)
  {
    sub_2958B1E2C(v328, v275, v614);
    goto LABEL_99;
  }

  v388 = objc_msgSend_objectForKeyedSubscript_(v328, v386, @"fusionWeightBlurRadius", v387);
  HIDWORD(self[7].super.isa) = objc_msgSend_unsignedIntValue(v388, v389, v390, v391);

  v394 = objc_msgSend_objectForKeyedSubscript_(v328, v392, @"postFusionErosionNormalizedRadius", v393);

  if (!v394)
  {
    sub_2958B1DA4(v328, v275, v614);
    goto LABEL_99;
  }

  v397 = objc_msgSend_objectForKeyedSubscript_(v328, v395, @"postFusionErosionNormalizedRadius", v396);
  objc_msgSend_floatValue(v397, v398, v399, v400);
  *&self[7]._tuningParams.enabled = v401;

  v404 = objc_msgSend_objectForKeyedSubscript_(v328, v402, @"postFusionReferenceWeight", v403);

  if (!v404)
  {
    sub_2958B1D1C(v328, v275, v614);
    goto LABEL_99;
  }

  v407 = objc_msgSend_objectForKeyedSubscript_(v328, v405, @"postFusionReferenceWeight", v406);
  objc_msgSend_floatValue(v407, v408, v409, v410);
  self[7]._tuningParams.blurThreshold = v411;

  v414 = objc_msgSend_objectForKeyedSubscript_(v4, v412, @"inpaint", v413);
  if (!v414)
  {
    sub_2958B1C94(v328, v275, v614);
    goto LABEL_99;
  }

  v417 = v414;
  v418 = objc_msgSend_objectForKeyedSubscript_(v414, v415, @"postFusionMaskThresholds", v416);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v418, v419, v420, v421) != 2)
  {
    goto LABEL_78;
  }

  v424 = objc_msgSend_objectAtIndexedSubscript_(v418, v422, 0, v423);
  objc_msgSend_floatValue(v424, v425, v426, v427);
  self[7]._tuningParams.maxMaskAverage = v428;

  v431 = objc_msgSend_objectAtIndexedSubscript_(v418, v429, 1, v430);
  objc_msgSend_floatValue(v431, v432, v433, v434);
  self[7]._tuningParams.greenGhostThreshold = v435;

  v438 = objc_msgSend_objectForKeyedSubscript_(v417, v436, @"postFusionMaskDilateRadius", v437);

  if (!v438)
  {
    sub_2958B1C00();
    goto LABEL_99;
  }

  v441 = objc_msgSend_objectForKeyedSubscript_(v417, v439, @"postFusionMaskDilateRadius", v440);
  LODWORD(self[8].super.isa) = objc_msgSend_unsignedIntValue(v441, v442, v443, v444);

  v447 = objc_msgSend_objectForKeyedSubscript_(v417, v445, @"propagatedLumaBlurRadius", v446);

  if (!v447)
  {
    sub_2958B1B6C();
    goto LABEL_99;
  }

  v450 = objc_msgSend_objectForKeyedSubscript_(v417, v448, @"propagatedLumaBlurRadius", v449);
  HIDWORD(self[8].super.isa) = objc_msgSend_unsignedIntValue(v450, v451, v452, v453);

  v456 = objc_msgSend_objectForKeyedSubscript_(v417, v454, @"maskBlurRadius", v455);

  if (!v456)
  {
    sub_2958B1AD8();
    goto LABEL_99;
  }

  v459 = objc_msgSend_objectForKeyedSubscript_(v417, v457, @"maskBlurRadius", v458);
  *&self[8]._tuningParams.enabled = objc_msgSend_unsignedIntValue(v459, v460, v461, v462);

  v465 = objc_msgSend_objectForKeyedSubscript_(v417, v463, @"darknessTolerance", v464);

  if (!v465)
  {
    sub_2958B1A44();
    goto LABEL_99;
  }

  v468 = objc_msgSend_objectForKeyedSubscript_(v417, v466, @"darknessTolerance", v467);
  objc_msgSend_floatValue(v468, v469, v470, v471);
  self[8]._tuningParams.blurThreshold = v472;

  v475 = objc_msgSend_objectForKeyedSubscript_(v417, v473, @"lumaScale", v474);

  if (!v475)
  {
    sub_2958B19B0();
    goto LABEL_99;
  }

  v478 = objc_msgSend_objectForKeyedSubscript_(v417, v476, @"lumaScale", v477);
  objc_msgSend_floatValue(v478, v479, v480, v481);
  self[8]._tuningParams.maxMaskAverage = v482;

  v418 = objc_msgSend_objectForKeyedSubscript_(v417, v483, @"gradientThresholds", v484);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_78;
  }

  if (objc_msgSend_count(v418, v485, v486, v487) != 2)
  {
    goto LABEL_78;
  }

  v490 = objc_msgSend_objectAtIndexedSubscript_(v418, v488, 0, v489);
  objc_msgSend_floatValue(v490, v491, v492, v493);
  LODWORD(self[9].super.isa) = v494;

  v497 = objc_msgSend_objectAtIndexedSubscript_(v418, v495, 1, v496);
  objc_msgSend_floatValue(v497, v498, v499, v500);
  HIDWORD(self[9].super.isa) = v501;

  v418 = objc_msgSend_objectForKeyedSubscript_(v417, v502, @"detailScales", v503);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_78;
  }

  if (objc_msgSend_count(v418, v504, v505, v506) != 2)
  {
    goto LABEL_78;
  }

  v509 = objc_msgSend_objectAtIndexedSubscript_(v418, v507, 0, v508);
  objc_msgSend_floatValue(v509, v510, v511, v512);
  *&self[9]._tuningParams.enabled = v513;

  v516 = objc_msgSend_objectAtIndexedSubscript_(v418, v514, 1, v515);
  objc_msgSend_floatValue(v516, v517, v518, v519);
  self[9]._tuningParams.blurThreshold = v520;

  v418 = objc_msgSend_objectForKeyedSubscript_(v417, v521, @"detailBiases", v522);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_78;
  }

  if (objc_msgSend_count(v418, v523, v524, v525) != 2)
  {
    goto LABEL_78;
  }

  v528 = objc_msgSend_objectAtIndexedSubscript_(v418, v526, 0, v527);
  objc_msgSend_floatValue(v528, v529, v530, v531);
  self[9]._tuningParams.maxMaskAverage = v532;

  v535 = objc_msgSend_objectAtIndexedSubscript_(v418, v533, 1, v534);
  objc_msgSend_floatValue(v535, v536, v537, v538);
  self[9]._tuningParams.greenGhostThreshold = v539;

  v418 = objc_msgSend_objectForKeyedSubscript_(v417, v540, @"detailThresholds", v541);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v418, v542, v543, v544) != 2)
  {
LABEL_78:
    FigDebugAssert3();
LABEL_79:

    goto LABEL_99;
  }

  v547 = objc_msgSend_objectAtIndexedSubscript_(v418, v545, 0, v546);
  objc_msgSend_floatValue(v547, v548, v549, v550);
  LODWORD(self[10].super.isa) = v551;

  v554 = objc_msgSend_objectAtIndexedSubscript_(v418, v552, 1, v553);
  objc_msgSend_floatValue(v554, v555, v556, v557);
  HIDWORD(self[10].super.isa) = v558;

  v561 = objc_msgSend_objectForKeyedSubscript_(v417, v559, @"sharpening", v560);
  v418 = v561;
  if (!v561)
  {
    sub_2958B1958();
    goto LABEL_79;
  }

  v564 = objc_msgSend_objectForKeyedSubscript_(v561, v562, @"strength", v563);

  if (!v564)
  {
    sub_2958B1900();
    goto LABEL_79;
  }

  v567 = objc_msgSend_objectForKeyedSubscript_(v418, v565, @"strength", v566);
  objc_msgSend_floatValue(v567, v568, v569, v570);
  LODWORD(self[11].super.isa) = v571;

  v574 = objc_msgSend_objectForKeyedSubscript_(v418, v572, @"shift", v573);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v574, v575, v576, v577) != 2)
  {
    sub_2958B1890(v574);
    goto LABEL_79;
  }

  v580 = v4;
  v581 = v7;
  v582 = objc_msgSend_objectAtIndexedSubscript_(v574, v578, 0, v579);
  *&self[10]._tuningParams.enabled = objc_msgSend_intValue(v582, v583, v584, v585);

  v588 = objc_msgSend_objectAtIndexedSubscript_(v574, v586, 1, v587);
  LODWORD(self[10]._tuningParams.blurThreshold) = objc_msgSend_intValue(v588, v589, v590, v591);

  v594 = objc_msgSend_objectForKeyedSubscript_(v418, v592, @"thresholds", v593);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v594, v595, v596, v597) == 2)
  {
    v600 = objc_msgSend_objectAtIndexedSubscript_(v594, v598, 0, v599);
    objc_msgSend_floatValue(v600, v601, v602, v603);
    self[10]._tuningParams.maxMaskAverage = v604;

    v607 = objc_msgSend_objectAtIndexedSubscript_(v594, v605, 1, v606);
    objc_msgSend_floatValue(v607, v608, v609, v610);
    self[10]._tuningParams.greenGhostThreshold = v611;

    v612 = 0;
  }

  else
  {
    FigDebugAssert3();

    v612 = -1;
  }

  v7 = v581;
  v4 = v580;
LABEL_70:

  return v612;
}

- (LowLightTuning)tuningParams
{
  v3 = memcpy(v2, &self->_tuningParams, 0x108uLL);
  result.maxMaskAverage = *&v4;
  result.greenGhostThreshold = *(&v4 + 1);
  result.enabled = v3;
  result.blurThreshold = *(&v3 + 1);
  return result;
}

@end