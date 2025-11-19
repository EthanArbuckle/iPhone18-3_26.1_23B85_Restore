@interface DisparityDiagnostics
+ (id)dictFromAdaptiveCorrectionStatus:(const AdaptiveCorrectionStatus *)a3;
+ (id)dictFromCalModel:(const CalModel *)a3;
+ (id)dictFromDistortionModel:(const DistortionModel *)a3;
- (DisparityDiagnostics)init;
- (id)createDiagnosticsDictionary;
- (void)addAdaptiveCorrectionStatus:(const AdaptiveCorrectionStatus *)a3;
- (void)addDisparityDebugStatus:(id *)a3;
- (void)addMinShift:(float)a3 maxShift:(float)a4;
@end

@implementation DisparityDiagnostics

- (DisparityDiagnostics)init
{
  v6.receiver = self;
  v6.super_class = DisparityDiagnostics;
  v2 = [(DisparityDiagnostics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    diagDict = v2->_diagDict;
    v2->_diagDict = v3;
  }

  return v2;
}

- (id)createDiagnosticsDictionary
{
  v9 = objc_msgSend_copy(self->_diagDict, a2, v2, v3, v4, v5, v6, v7, v8);

  return v9;
}

- (void)addAdaptiveCorrectionStatus:(const AdaptiveCorrectionStatus *)a3
{
  if (a3)
  {
    v16 = objc_msgSend_dictFromAdaptiveCorrectionStatus_(DisparityDiagnostics, a2, a3, v3, v4, v5, v6, v7, v8);
    objc_msgSend_setObject_forKeyedSubscript_(self->_diagDict, v10, v16, @"ADC", v11, v12, v13, v14, v15);
  }
}

- (void)addDisparityDebugStatus:(id *)a3
{
  if (a3)
  {
    v151 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v12 = objc_msgSend_numberWithChar_(MEMORY[0x29EDBA070], v5, a3->var0, v6, v7, v8, v9, v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v13, v12, @"focusWindowIsValid", v14, v15, v16, v17, v18);

    v26 = objc_msgSend_numberWithChar_(MEMORY[0x29EDBA070], v19, a3->var1, v20, v21, v22, v23, v24, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v27, v26, @"pflTeleOutOfRange", v28, v29, v30, v31, v32);

    v40 = objc_msgSend_numberWithChar_(MEMORY[0x29EDBA070], v33, a3->var2, v34, v35, v36, v37, v38, v39);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v41, v40, @"pflWideOutOfRange", v42, v43, v44, v45, v46);

    v54 = objc_msgSend_numberWithChar_(MEMORY[0x29EDBA070], v47, a3->var3, v48, v49, v50, v51, v52, v53);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v55, v54, @"extrinsicOutOfRange", v56, v57, v58, v59, v60);

    v68 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v61, v62, v63, v64, v65, v66, v67, a3->var4);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v69, v68, @"oisShiftWideX", v70, v71, v72, v73, v74);

    v82 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v75, v76, v77, v78, v79, v80, v81, a3->var5);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v83, v82, @"oisShiftWideY", v84, v85, v86, v87, v88);

    v96 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v89, v90, v91, v92, v93, v94, v95, a3->var6);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v97, v96, @"oisShiftTeleX", v98, v99, v100, v101, v102);

    v110 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v103, v104, v105, v106, v107, v108, v109, a3->var7);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v111, v110, @"oisShiftTeleY", v112, v113, v114, v115, v116);

    v117 = sub_2957547E4(a3->var8);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v118, v117, @"gdcCoeffsTeleDistortCoordinates", v119, v120, v121, v122, v123);

    v124 = sub_2957547E4(a3->var9);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v125, v124, @"gdcCoeffsTeleUndistortCoordinates", v126, v127, v128, v129, v130);

    v131 = sub_2957547E4(a3->var10);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v132, v131, @"gdcCoeffsWideDistortCoordinates", v133, v134, v135, v136, v137);

    v138 = sub_2957547E4(a3->var11);
    objc_msgSend_setObject_forKeyedSubscript_(v151, v139, v138, @"gdcCoeffsWideUndistortCoordinates", v140, v141, v142, v143, v144);

    objc_msgSend_setObject_forKeyedSubscript_(self->_diagDict, v145, v151, @"DisparityDebugStatus", v146, v147, v148, v149, v150);
  }
}

+ (id)dictFromAdaptiveCorrectionStatus:(const AdaptiveCorrectionStatus *)a3
{
  if (a3)
  {
    v10 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    if (v10)
    {
      v12 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v4, a3->var0, v5, v6, v7, v8, v9, v11);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v13, v12, @"initialNumPoints", v14, v15, v16, v17, v18);

      v26 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v19, a3->var1, v20, v21, v22, v23, v24, v25);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v27, v26, @"initialSufficientPoints", v28, v29, v30, v31, v32);

      v40 = objc_msgSend_dictFromCalModel_(DisparityDiagnostics, v33, &a3->var2, v34, v35, v36, v37, v38, v39);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v41, v40, @"initialCal", v42, v43, v44, v45, v46);

      v54 = objc_msgSend_dictFromDistortionModel_(DisparityDiagnostics, v47, &a3->var22, v48, v49, v50, v51, v52, v53);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v55, v54, @"initialDistortionTele", v56, v57, v58, v59, v60);

      v68 = objc_msgSend_dictFromDistortionModel_(DisparityDiagnostics, v61, &a3->var23, v62, v63, v64, v65, v66, v67);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v69, v68, @"initialDistortionWide", v70, v71, v72, v73, v74);

      v82 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v75, a3->var3, v76, v77, v78, v79, v80, v81);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v83, v82, @"pass1NumPoints", v84, v85, v86, v87, v88);

      v96 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v89, a3->var4, v90, v91, v92, v93, v94, v95);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v97, v96, @"pass1SufficientPoints", v98, v99, v100, v101, v102);

      v110 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v103, a3->var5, v104, v105, v106, v107, v108, v109);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v111, v110, @"pass1AnalyticalPrecond", v112, v113, v114, v115, v116);

      v124 = objc_msgSend_dictFromCalModel_(DisparityDiagnostics, v117, &a3->var6, v118, v119, v120, v121, v122, v123);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v125, v124, @"pass1PrecondCal", v126, v127, v128, v129, v130);

      v138 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v131, v132, v133, v134, v135, v136, v137, COERCE_FLOAT(*&a3->var7));
      objc_msgSend_setObject_forKeyedSubscript_(v10, v139, v138, @"pass1SPGEvalPre", v140, v141, v142, v143, v144);

      v152 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v145, a3->var8, v146, v147, v148, v149, v150, v151);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v153, v152, @"pass1SPGNumIterations", v154, v155, v156, v157, v158);

      v166 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v159, a3->var9, v160, v161, v162, v163, v164, v165);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v167, v166, @"pass1SPGConverged", v168, v169, v170, v171, v172);

      v180 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v173, v174, v175, v176, v177, v178, v179, COERCE_FLOAT(*&a3->var10));
      objc_msgSend_setObject_forKeyedSubscript_(v10, v181, v180, @"pass1SPGEvalPost", v182, v183, v184, v185, v186);

      v194 = objc_msgSend_dictFromCalModel_(DisparityDiagnostics, v187, &a3->var11, v188, v189, v190, v191, v192, v193);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v195, v194, @"pass1Cal", v196, v197, v198, v199, v200);

      v208 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v201, a3->var12, v202, v203, v204, v205, v206, v207);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v209, v208, @"pass2NumPoints", v210, v211, v212, v213, v214);

      v222 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v215, a3->var13, v216, v217, v218, v219, v220, v221);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v223, v222, @"pass2SufficientPoints", v224, v225, v226, v227, v228);

      v236 = objc_msgSend_dictFromCalModel_(DisparityDiagnostics, v229, &a3->var14, v230, v231, v232, v233, v234, v235);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v237, v236, @"pass2ParallelCal", v238, v239, v240, v241, v242);

      v250 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v243, v244, v245, v246, v247, v248, v249, COERCE_FLOAT(*&a3->var15));
      objc_msgSend_setObject_forKeyedSubscript_(v10, v251, v250, @"pass2ParallelShiftInf", v252, v253, v254, v255, v256);

      v264 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v257, v258, v259, v260, v261, v262, v263, COERCE_FLOAT(*&a3->var16));
      objc_msgSend_setObject_forKeyedSubscript_(v10, v265, v264, @"pass2ParallelPctNegative", v266, v267, v268, v269, v270);

      v278 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v271, v272, v273, v274, v275, v276, v277, COERCE_FLOAT(*&a3->var17));
      objc_msgSend_setObject_forKeyedSubscript_(v10, v279, v278, @"pass2SPGEvalPre", v280, v281, v282, v283, v284);

      v292 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v285, a3->var18, v286, v287, v288, v289, v290, v291);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v293, v292, @"pass2SPGNumIterations", v294, v295, v296, v297, v298);

      v306 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v299, a3->var19, v300, v301, v302, v303, v304, v305);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v307, v306, @"pass2SPGConverged", v308, v309, v310, v311, v312);

      v320 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v313, v314, v315, v316, v317, v318, v319, COERCE_FLOAT(*&a3->var20));
      objc_msgSend_setObject_forKeyedSubscript_(v10, v321, v320, @"pass2SPGEvalPost", v322, v323, v324, v325, v326);

      v334 = objc_msgSend_dictFromCalModel_(DisparityDiagnostics, v327, &a3->var21, v328, v329, v330, v331, v332, v333);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v335, v334, @"pass2Cal", v336, v337, v338, v339, v340);

      v348 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v341, a3->var24, v342, v343, v344, v345, v346, v347);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v349, v348, @"passDistNumPoints", v350, v351, v352, v353, v354);

      v362 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v355, a3->var25, v356, v357, v358, v359, v360, v361);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v363, v362, @"passDistSufficientPoints", v364, v365, v366, v367, v368);

      v376 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v369, v370, v371, v372, v373, v374, v375, COERCE_FLOAT(*&a3->var26));
      objc_msgSend_setObject_forKeyedSubscript_(v10, v377, v376, @"passDistSPGEvalPre", v378, v379, v380, v381, v382);

      v390 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v383, a3->var27, v384, v385, v386, v387, v388, v389);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v391, v390, @"passDistSPGNumIterations", v392, v393, v394, v395, v396);

      v404 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v397, a3->var28, v398, v399, v400, v401, v402, v403);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v405, v404, @"passDistSPGConverged", v406, v407, v408, v409, v410);

      v418 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v411, v412, v413, v414, v415, v416, v417, COERCE_FLOAT(*&a3->var29));
      objc_msgSend_setObject_forKeyedSubscript_(v10, v419, v418, @"passDistSPGEvalPost", v420, v421, v422, v423, v424);

      v432 = objc_msgSend_dictFromCalModel_(DisparityDiagnostics, v425, &a3->var30, v426, v427, v428, v429, v430, v431);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v433, v432, @"passDistCal", v434, v435, v436, v437, v438);

      v446 = objc_msgSend_dictFromDistortionModel_(DisparityDiagnostics, v439, &a3->var31, v440, v441, v442, v443, v444, v445);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v447, v446, @"passDistModelTele", v448, v449, v450, v451, v452);

      v460 = objc_msgSend_dictFromDistortionModel_(DisparityDiagnostics, v453, &a3->var32, v454, v455, v456, v457, v458, v459);
      objc_msgSend_setObject_forKeyedSubscript_(v10, v461, v460, @"passDistModelWide", v462, v463, v464, v465, v466);
    }

    else
    {
      sub_29576A570();
    }
  }

  else
  {
    sub_29576A5D4();
    v10 = 0;
  }

  return v10;
}

+ (id)dictFromCalModel:(const CalModel *)a3
{
  v4 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v12 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v5, v6, v7, v8, v9, v10, v11, COERCE_FLOAT(*&a3->focalLengthPix[0]));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v13, v12, @"focalLengthTelePix", v14, v15, v16, v17, v18);

  v26 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v19, v20, v21, v22, v23, v24, v25, COERCE_FLOAT(*&a3->focalLengthPix[1]));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v26, @"focalLengthWidePix", v28, v29, v30, v31, v32);

  v40 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v33, v34, v35, v36, v37, v38, v39, COERCE_FLOAT(*&a3->opticalCenterX[0]));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v41, v40, @"opticalCenterTeleX", v42, v43, v44, v45, v46);

  v54 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v47, v48, v49, v50, v51, v52, v53, COERCE_FLOAT(*&a3->opticalCenterY[0]));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v55, v54, @"opticalCenterTeleY", v56, v57, v58, v59, v60);

  v68 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v61, v62, v63, v64, v65, v66, v67, COERCE_FLOAT(*&a3->opticalCenterX[1]));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v69, v68, @"opticalCenterWideX", v70, v71, v72, v73, v74);

  v82 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v75, v76, v77, v78, v79, v80, v81, COERCE_FLOAT(*&a3->opticalCenterY[1]));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v83, v82, @"opticalCenterWideY", v84, v85, v86, v87, v88);

  v96 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v97 = 0;
  extrinRotRefefenceToAuxiliary = a3->extrinRotRefefenceToAuxiliary;
  do
  {
    v99 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v89, v90, v91, v92, v93, v94, v95, COERCE_FLOAT(*&extrinRotRefefenceToAuxiliary[v97]));
    objc_msgSend_addObject_(v96, v100, v99, v101, v102, v103, v104, v105, v106);

    ++v97;
  }

  while (v97 != 12);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v89, v96, @"extrinRotTeleToWide", v92, v93, v94, v95, v107);

  return v4;
}

+ (id)dictFromDistortionModel:(const DistortionModel *)a3
{
  v4 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v12 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v5, v6, v7, v8, v9, v10, v11, COERCE_FLOAT(*&a3->focalLengthPix));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v13, v12, @"focalLengthPix", v14, v15, v16, v17, v18);

  v26 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v19, v20, v21, v22, v23, v24, v25, COERCE_FLOAT(*&a3->opticalCenterX));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v26, @"opticalCenterX", v28, v29, v30, v31, v32);

  v40 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v33, v34, v35, v36, v37, v38, v39, COERCE_FLOAT(*&a3->opticalCenterY));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v41, v40, @"opticalCenterY", v42, v43, v44, v45, v46);

  v54 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v47, v48, v49, v50, v51, v52, v53, COERCE_FLOAT(*&a3->pixelSizeMM));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v55, v54, @"pixelSizeMM", v56, v57, v58, v59, v60);

  v61 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v76 = objc_msgSend_initWithCapacity_(v61, v62, 8, v63, v64, v65, v66, v67, v68);
  for (i = 0; i != 8; ++i)
  {
    v78 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v69, v70, v71, v72, v73, v74, v75, COERCE_FLOAT(*&a3->polyBase[i]));
    objc_msgSend_setObject_atIndexedSubscript_(v76, v79, v78, i, v80, v81, v82, v83, v84);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v4, v69, v76, @"polyBase", v72, v73, v74, v75, v85);
  v86 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v94 = objc_msgSend_initWithCapacity_(v86, v87, 8, v88, v89, v90, v91, v92, v93);

  v102 = 0;
  polyDynamic = a3->polyDynamic;
  do
  {
    v104 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v95, v96, v97, v98, v99, v100, v101, COERCE_FLOAT(*&polyDynamic[v102]));
    objc_msgSend_setObject_atIndexedSubscript_(v94, v105, v104, v102, v106, v107, v108, v109, v110);

    ++v102;
  }

  while (v102 != 8);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v95, v94, @"polyDynamic", v98, v99, v100, v101, v111);

  return v4;
}

- (void)addMinShift:(float)a3 maxShift:(float)a4
{
  v12 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], a2, v4, v5, v6, v7, v8, v9, a3);
  objc_msgSend_setObject_forKeyedSubscript_(self->_diagDict, v13, v12, @"ShiftmapMin", v14, v15, v16, v17, v18);

  v32 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v19, v20, v21, v22, v23, v24, v25, a4);
  objc_msgSend_setObject_forKeyedSubscript_(self->_diagDict, v26, v32, @"ShiftmapMax", v27, v28, v29, v30, v31);
}

@end