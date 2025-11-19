@interface GreenGhostBrightLightTuningParams
- (BrightLightTuning)tuningParams;
- (GreenGhostBrightLightTuningParams)init;
- (int)readPlist:(id)a3;
- (void)setDefaultTuningParams;
- (void)setTuningParams:(BrightLightTuning)a3;
@end

@implementation GreenGhostBrightLightTuningParams

- (void)setDefaultTuningParams
{
  v26 = *"fff?";
  *&v27[8] = xmmword_2959D64E0;
  *&v27[24] = xmmword_2959D6488;
  *&v27[40] = unk_2959D6498;
  *v27 = 0x3B03126F3CF5C28FLL;
  *&v27[56] = 0x3A03126F00000000;
  v22 = *&v27[16];
  v23 = *&v27[32];
  v20 = *"fff?";
  v21 = *v27;
  v24 = *&v27[48];
  v25 = xmmword_2959D6500;
  v17 = unk_2959D64C0;
  v8[0] = 0x3C23D70A00000100;
  __asm { FMOV            V3.2S, #1.0 }

  v8[1] = _D3;
  v16 = xmmword_2959D64B0;
  v15 = xmmword_2959D6500;
  v14 = *&v27[48];
  v13 = *&v27[32];
  v9 = xmmword_2959D64F0;
  v10 = *"fff?";
  v12 = *&v27[16];
  v11 = *v27;
  v18 = 990057071;
  v19 = 0;
  objc_msgSend_setTuningParams_(self, a2, v8, v2);
}

- (GreenGhostBrightLightTuningParams)init
{
  v7.receiver = self;
  v7.super_class = GreenGhostBrightLightTuningParams;
  v2 = [(GreenGhostBrightLightTuningParams *)&v7 init];
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
    sub_2958CC0CC();
LABEL_74:
    v407 = -1;
    goto LABEL_45;
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
    sub_2958CD06C();
    goto LABEL_74;
  }

  v30 = objc_msgSend_objectForKeyedSubscript_(v4, v28, @"enabled", v29);
  self->_tuningParams.enabled = objc_msgSend_BOOLValue(v30, v31, v32, v33);

  v36 = objc_msgSend_objectForKeyedSubscript_(v4, v34, @"eitThreshold", v35);

  if (!v36)
  {
    sub_2958CD014();
    goto LABEL_74;
  }

  v39 = objc_msgSend_objectForKeyedSubscript_(v4, v37, @"eitThreshold", v38);
  objc_msgSend_floatValue(v39, v40, v41, v42);
  self->_tuningParams.eitThreshold = v43;

  v46 = objc_msgSend_objectForKeyedSubscript_(v4, v44, @"useClippingData", v45);

  if (!v46)
  {
    sub_2958CCFBC();
    goto LABEL_74;
  }

  v49 = objc_msgSend_objectForKeyedSubscript_(v4, v47, @"useClippingData", v48);
  self->_tuningParams.useClippingData = objc_msgSend_BOOLValue(v49, v50, v51, v52);

  v55 = objc_msgSend_objectForKeyedSubscript_(v4, v53, @"clipping", v54);
  if (!v55)
  {
    sub_2958CCF64();
    goto LABEL_74;
  }

  v58 = v55;
  v59 = objc_msgSend_objectForKeyedSubscript_(v55, v56, @"paddingRatio", v57);

  if (!v59)
  {
    sub_2958CCEF4(v58);
    goto LABEL_74;
  }

  v62 = objc_msgSend_objectForKeyedSubscript_(v58, v60, @"paddingRatio", v61);
  objc_msgSend_floatValue(v62, v63, v64, v65);
  *&self[1]._tuningParams.enabled = v66;

  v69 = objc_msgSend_objectForKeyedSubscript_(v58, v67, @"minClippedPixelRatio", v68);

  if (!v69)
  {
    sub_2958CCE84(v58);
    goto LABEL_74;
  }

  v72 = objc_msgSend_objectForKeyedSubscript_(v58, v70, @"minClippedPixelRatio", v71);
  objc_msgSend_floatValue(v72, v73, v74, v75);
  self[1]._tuningParams.eitThreshold = v76;

  v79 = objc_msgSend_objectForKeyedSubscript_(v58, v77, @"clippedPixelRatio", v78);

  if (!v79)
  {
    sub_2958CCE14(v58);
    goto LABEL_74;
  }

  v82 = objc_msgSend_objectForKeyedSubscript_(v58, v80, @"clippedPixelRatio", v81);
  objc_msgSend_floatValue(v82, v83, v84, v85);
  LODWORD(self[2].super.isa) = v86;

  v89 = objc_msgSend_objectForKeyedSubscript_(v58, v87, @"maxClippedTilesCount", v88);

  if (!v89)
  {
    sub_2958CCDA4(v58);
    goto LABEL_74;
  }

  v92 = objc_msgSend_objectForKeyedSubscript_(v58, v90, @"maxClippedTilesCount", v91);
  objc_msgSend_floatValue(v92, v93, v94, v95);
  HIDWORD(self[2].super.isa) = v96;

  v99 = objc_msgSend_objectForKeyedSubscript_(v4, v97, @"detection", v98);
  if (!v99)
  {
    sub_2958CCD34(v58);
    goto LABEL_74;
  }

  v102 = v99;
  v103 = objc_msgSend_objectForKeyedSubscript_(v99, v100, @"brightness", v101);
  v106 = v103;
  if (!v103)
  {
    sub_2958CCCDC();
LABEL_73:

    goto LABEL_74;
  }

  v107 = objc_msgSend_objectForKeyedSubscript_(v103, v104, @"threshold", v105);

  if (!v107)
  {
    sub_2958CCC84();
    goto LABEL_73;
  }

  v110 = objc_msgSend_objectForKeyedSubscript_(v106, v108, @"threshold", v109);
  objc_msgSend_floatValue(v110, v111, v112, v113);
  *&self[2]._tuningParams.enabled = v114;

  v117 = objc_msgSend_objectForKeyedSubscript_(v106, v115, @"dilationNormalizedRadius", v116);

  if (!v117)
  {
    sub_2958CCC2C();
    goto LABEL_73;
  }

  v120 = objc_msgSend_objectForKeyedSubscript_(v106, v118, @"dilationNormalizedRadius", v119);
  objc_msgSend_floatValue(v120, v121, v122, v123);
  *&self[3]._tuningParams.enabled = v124;

  v127 = objc_msgSend_objectForKeyedSubscript_(v106, v125, @"erosionNormalizedRadius", v126);

  if (!v127)
  {
    sub_2958CCBD4();
    goto LABEL_73;
  }

  v130 = objc_msgSend_objectForKeyedSubscript_(v106, v128, @"erosionNormalizedRadius", v129);
  objc_msgSend_floatValue(v130, v131, v132, v133);
  self[3]._tuningParams.eitThreshold = v134;

  v137 = objc_msgSend_objectForKeyedSubscript_(v106, v135, @"normalizedOpticalCenter", v136);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v137, v138, v139, v140) != 2)
  {
    sub_2958CC124(v137, v106, v102, v58);
    goto LABEL_74;
  }

  v143 = objc_msgSend_objectAtIndexedSubscript_(v137, v141, 0, v142);
  objc_msgSend_floatValue(v143, v144, v145, v146);
  LODWORD(self[3].super.isa) = v147;

  v150 = objc_msgSend_objectAtIndexedSubscript_(v137, v148, 1, v149);
  objc_msgSend_floatValue(v150, v151, v152, v153);
  HIDWORD(self[3].super.isa) = v154;

  v157 = objc_msgSend_objectForKeyedSubscript_(v102, v155, @"blob", v156);
  v106 = v157;
  if (!v157)
  {
    sub_2958CCB7C();
    goto LABEL_73;
  }

  v160 = objc_msgSend_objectForKeyedSubscript_(v157, v158, @"threshold", v159);

  if (!v160)
  {
    sub_2958CCB24();
    goto LABEL_73;
  }

  v163 = objc_msgSend_objectForKeyedSubscript_(v106, v161, @"threshold", v162);
  objc_msgSend_floatValue(v163, v164, v165, v166);
  *&self[4]._tuningParams.enabled = v167;

  v170 = objc_msgSend_objectForKeyedSubscript_(v106, v168, @"radius", v169);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v170, v171, v172, v173) != 2)
  {
    sub_2958CC1BC(v170, v106, v102, v58);
    goto LABEL_74;
  }

  v176 = objc_msgSend_objectAtIndexedSubscript_(v170, v174, 0, v175);
  LODWORD(self[4].super.isa) = objc_msgSend_intValue(v176, v177, v178, v179);

  v182 = objc_msgSend_objectAtIndexedSubscript_(v170, v180, 1, v181);
  HIDWORD(self[4].super.isa) = objc_msgSend_intValue(v182, v183, v184, v185);

  v188 = objc_msgSend_objectForKeyedSubscript_(v102, v186, @"green", v187);
  v106 = v188;
  if (!v188)
  {
    sub_2958CCACC();
    goto LABEL_73;
  }

  v191 = objc_msgSend_objectForKeyedSubscript_(v188, v189, @"hueThreshold", v190);
  objc_msgSend_floatValue(v191, v192, v193, v194);
  *&self[5]._tuningParams.enabled = v195;

  v198 = objc_msgSend_objectForKeyedSubscript_(v106, v196, @"openingNormalizedRadius", v197);
  objc_msgSend_floatValue(v198, v199, v200, v201);
  LODWORD(self[7].super.isa) = v202;

  v205 = objc_msgSend_objectForKeyedSubscript_(v106, v203, @"dilationNormalizedRadius", v204);
  objc_msgSend_floatValue(v205, v206, v207, v208);
  HIDWORD(self[7].super.isa) = v209;

  v212 = objc_msgSend_objectForKeyedSubscript_(v106, v210, @"hueRange", v211);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v212, v213, v214, v215) != 2)
  {
    sub_2958CC254(v212);
    goto LABEL_73;
  }

  v218 = objc_msgSend_objectAtIndexedSubscript_(v212, v216, 0, v217);
  objc_msgSend_floatValue(v218, v219, v220, v221);
  LODWORD(self[5].super.isa) = v222;

  v225 = objc_msgSend_objectAtIndexedSubscript_(v212, v223, 1, v224);
  objc_msgSend_floatValue(v225, v226, v227, v228);
  HIDWORD(self[5].super.isa) = v229;

  v232 = objc_msgSend_objectForKeyedSubscript_(v106, v230, @"saturationThresholds", v231);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v232, v233, v234, v235) != 2)
  {
    sub_2958CC2C4(v232);
    goto LABEL_73;
  }

  v238 = objc_msgSend_objectAtIndexedSubscript_(v232, v236, 0, v237);
  objc_msgSend_floatValue(v238, v239, v240, v241);
  LODWORD(self[6].super.isa) = v242;

  v245 = objc_msgSend_objectAtIndexedSubscript_(v232, v243, 1, v244);
  objc_msgSend_floatValue(v245, v246, v247, v248);
  HIDWORD(self[6].super.isa) = v249;

  v252 = objc_msgSend_objectForKeyedSubscript_(v106, v250, @"valueThresholds", v251);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v252, v253, v254, v255) != 2)
  {
    sub_2958CC334(v252, v106, v102, v58);
    goto LABEL_74;
  }

  v258 = objc_msgSend_objectAtIndexedSubscript_(v252, v256, 0, v257);
  objc_msgSend_floatValue(v258, v259, v260, v261);
  *&self[6]._tuningParams.enabled = v262;

  v265 = objc_msgSend_objectAtIndexedSubscript_(v252, v263, 1, v264);
  objc_msgSend_floatValue(v265, v266, v267, v268);
  self[6]._tuningParams.eitThreshold = v269;

  v272 = objc_msgSend_objectForKeyedSubscript_(v102, v270, @"refinement", v271);
  v106 = v272;
  if (!v272)
  {
    sub_2958CCA74();
    goto LABEL_73;
  }

  v275 = objc_msgSend_objectForKeyedSubscript_(v272, v273, @"openingNormalizedRadius", v274);

  if (!v275)
  {
    sub_2958CCA1C();
    goto LABEL_73;
  }

  v278 = objc_msgSend_objectForKeyedSubscript_(v106, v276, @"openingNormalizedRadius", v277);
  objc_msgSend_floatValue(v278, v279, v280, v281);
  *&self[7]._tuningParams.enabled = v282;

  v285 = objc_msgSend_objectForKeyedSubscript_(v106, v283, @"dilationNormalizedRadius", v284);

  if (!v285)
  {
    sub_2958CC9C4();
    goto LABEL_73;
  }

  v288 = objc_msgSend_objectForKeyedSubscript_(v106, v286, @"dilationNormalizedRadius", v287);
  objc_msgSend_floatValue(v288, v289, v290, v291);
  self[7]._tuningParams.eitThreshold = v292;

  v295 = objc_msgSend_objectForKeyedSubscript_(v106, v293, @"threshold", v294);

  if (!v295)
  {
    sub_2958CC96C();
    goto LABEL_73;
  }

  v298 = objc_msgSend_objectForKeyedSubscript_(v106, v296, @"threshold", v297);
  objc_msgSend_floatValue(v298, v299, v300, v301);
  LODWORD(self[8].super.isa) = v302;

  v305 = objc_msgSend_objectForKeyedSubscript_(v106, v303, @"maskSurroundThreshold", v304);

  if (!v305)
  {
    sub_2958CC914();
    goto LABEL_73;
  }

  v308 = objc_msgSend_objectForKeyedSubscript_(v106, v306, @"maskSurroundThreshold", v307);
  objc_msgSend_floatValue(v308, v309, v310, v311);
  HIDWORD(self[8].super.isa) = v312;

  v315 = objc_msgSend_objectForKeyedSubscript_(v4, v313, @"repair", v314);
  if (!v315)
  {
    sub_2958CC894(v102, v58);
    goto LABEL_74;
  }

  v318 = v315;
  v319 = objc_msgSend_objectForKeyedSubscript_(v315, v316, @"surroundMaskDilationNormalizedRadius", v317);

  if (!v319)
  {
    sub_2958CC80C(v318, v102, v58);
    goto LABEL_74;
  }

  v322 = objc_msgSend_objectForKeyedSubscript_(v318, v320, @"surroundMaskDilationNormalizedRadius", v321);
  objc_msgSend_floatValue(v322, v323, v324, v325);
  *&self[8]._tuningParams.enabled = v326;

  v329 = objc_msgSend_objectForKeyedSubscript_(v318, v327, @"narrowSurroundMaskDilationNormalizedRadius", v328);

  if (!v329)
  {
    sub_2958CC784(v318, v102, v58);
    goto LABEL_74;
  }

  v332 = objc_msgSend_objectForKeyedSubscript_(v318, v330, @"narrowSurroundMaskDilationNormalizedRadius", v331);
  objc_msgSend_floatValue(v332, v333, v334, v335);
  self[8]._tuningParams.eitThreshold = v336;

  v339 = objc_msgSend_objectForKeyedSubscript_(v318, v337, @"inpaintingDisplacement", v338);

  if (!v339)
  {
    sub_2958CC6FC(v318, v102, v58);
    goto LABEL_74;
  }

  v342 = objc_msgSend_objectForKeyedSubscript_(v318, v340, @"inpaintingDisplacement", v341);
  objc_msgSend_floatValue(v342, v343, v344, v345);
  LODWORD(self[9].super.isa) = v346;

  v349 = objc_msgSend_objectForKeyedSubscript_(v318, v347, @"inpaintingConfidenceThreshold", v348);

  if (!v349)
  {
    sub_2958CC674(v318, v102, v58);
    goto LABEL_74;
  }

  v352 = objc_msgSend_objectForKeyedSubscript_(v318, v350, @"inpaintingConfidenceThreshold", v351);
  objc_msgSend_floatValue(v352, v353, v354, v355);
  HIDWORD(self[9].super.isa) = v356;

  v359 = objc_msgSend_objectForKeyedSubscript_(v318, v357, @"inpaintingStrength", v358);

  if (!v359)
  {
    sub_2958CC5EC(v318, v102, v58);
    goto LABEL_74;
  }

  v362 = objc_msgSend_objectForKeyedSubscript_(v318, v360, @"inpaintingStrength", v361);
  objc_msgSend_floatValue(v362, v363, v364, v365);
  *&self[9]._tuningParams.enabled = v366;

  v369 = objc_msgSend_objectForKeyedSubscript_(v318, v367, @"sharpening", v368);

  if (!v369)
  {
    sub_2958CC564(v318, v102, v58);
    goto LABEL_74;
  }

  v372 = objc_msgSend_objectForKeyedSubscript_(v318, v370, @"sharpening", v371);
  objc_msgSend_floatValue(v372, v373, v374, v375);
  self[9]._tuningParams.eitThreshold = v376;

  v379 = objc_msgSend_objectForKeyedSubscript_(v318, v377, @"brightnessOffset", v378);

  if (!v379)
  {
    sub_2958CC4DC(v318, v102, v58);
    goto LABEL_74;
  }

  v382 = objc_msgSend_objectForKeyedSubscript_(v318, v380, @"brightnessOffset", v381);
  objc_msgSend_floatValue(v382, v383, v384, v385);
  LODWORD(self[10].super.isa) = v386;

  v389 = objc_msgSend_objectForKeyedSubscript_(v318, v387, @"lumaSimilarityBoost", v388);

  if (!v389)
  {
    sub_2958CC454(v318, v102, v58);
    goto LABEL_74;
  }

  v392 = objc_msgSend_objectForKeyedSubscript_(v318, v390, @"lumaSimilarityBoost", v391);
  objc_msgSend_floatValue(v392, v393, v394, v395);
  HIDWORD(self[10].super.isa) = v396;

  v399 = objc_msgSend_objectForKeyedSubscript_(v318, v397, @"normalizedMaxMaskSize", v398);

  if (!v399)
  {
    sub_2958CC3CC(v318, v102, v58);
    goto LABEL_74;
  }

  v402 = objc_msgSend_objectForKeyedSubscript_(v318, v400, @"normalizedMaxMaskSize", v401);
  objc_msgSend_floatValue(v402, v403, v404, v405);
  *&self[10]._tuningParams.enabled = v406;

  v407 = 0;
LABEL_45:

  return v407;
}

- (BrightLightTuning)tuningParams
{
  v3 = *&self[7]._tuningParams.enabled;
  v4 = *&self[9]._tuningParams.enabled;
  *(v2 + 128) = *(self + 136);
  *(v2 + 144) = v4;
  *(v2 + 160) = self[10]._tuningParams;
  v5 = *&self[3]._tuningParams.enabled;
  v6 = *&self[5]._tuningParams.enabled;
  *(v2 + 64) = *(self + 72);
  *(v2 + 80) = v6;
  *(v2 + 96) = *(self + 104);
  *(v2 + 112) = v3;
  v7 = *&self[1]._tuningParams.enabled;
  *v2 = *&self->_tuningParams.enabled;
  *(v2 + 16) = v7;
  *(v2 + 32) = *(self + 40);
  *(v2 + 48) = v5;
  return self;
}

- (void)setTuningParams:(BrightLightTuning)a3
{
  v3 = **&a3;
  v4 = *(*&a3 + 16);
  *(self + 40) = *(*&a3 + 32);
  *&self[1]._tuningParams.enabled = v4;
  *&self->_tuningParams.enabled = v3;
  v5 = *(*&a3 + 48);
  v6 = *(*&a3 + 64);
  v7 = *(*&a3 + 80);
  *(self + 104) = *(*&a3 + 96);
  *&self[5]._tuningParams.enabled = v7;
  *&self[4]._tuningParams.enabled = v6;
  *&self[3]._tuningParams.enabled = v5;
  v8 = *(*&a3 + 112);
  v9 = *(*&a3 + 128);
  v10 = *(*&a3 + 144);
  self[10]._tuningParams = *(*&a3 + 160);
  *&self[9]._tuningParams.enabled = v10;
  *&self[8]._tuningParams.enabled = v9;
  *&self[7]._tuningParams.enabled = v8;
}

@end