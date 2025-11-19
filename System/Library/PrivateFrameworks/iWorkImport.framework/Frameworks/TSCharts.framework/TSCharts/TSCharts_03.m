uint64_t sub_2762AA990(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2762AAAD8(uint64_t a1)
{
  v422 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v6 = objc_msgSend_context(*(a1 + 32), v2, v3, v4, v5);
  v11 = objc_msgSend_documentObject(v6, v7, v8, v9, v10);
  v12 = TSUDynamicCast();

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 40), v13, v14, v15, v16);
    v17 = objc_alloc(MEMORY[0x277D80868]);
    inited = objc_msgSend_initWeakReferenceWithObject_(v17, v18, v19, v20, v21, *(*(*(a1 + 64) + 8) + 40));
    v23 = *(a1 + 32);
    v24 = *(v23 + 264);
    *(v23 + 264) = inited;
  }

  else
  {
    v24 = objc_msgSend_theme(v12, v13, v14, v15, v16);
    v29 = objc_msgSend_presetsOfKind_(v24, v25, v26, v27, v28, *MEMORY[0x277D80B08]);
    v34 = v29;
    v35 = *(a1 + 72);
    if (v35 == 0x7FFFFFFFFFFFFFFFLL || v35 >= objc_msgSend_count(v29, v30, v31, v32, v33))
    {
      v36 = 0;
    }

    else
    {
      v36 = *(a1 + 72);
    }

    if (objc_msgSend_count(v34, v30, v31, v32, v33))
    {
      v41 = objc_msgSend_objectAtIndexedSubscript_(v34, v37, v38, v39, v40, v36);
      if (v41)
      {
        v42 = objc_alloc(MEMORY[0x277D80868]);
        v47 = objc_msgSend_initWeakReferenceWithObject_(v42, v43, v44, v45, v46, v41);
        v48 = *(a1 + 32);
        v49 = *(v48 + 264);
        *(v48 + 264) = v47;
      }
    }
  }

  v54 = *(a1 + 32);
  if (!*(v54 + 56))
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 316, 0, "No Chart Style found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
    v74 = objc_msgSend_defaultStyleWithContext_(TSCHChartStyle, v70, v71, v72, v73, *(a1 + 48));
    v75 = *(a1 + 32);
    v76 = *(v75 + 56);
    *(v75 + 56) = v74;

    objc_msgSend_addObject_(*(a1 + 56), v77, v78, v79, v80, *(*(a1 + 32) + 56));
    v54 = *(a1 + 32);
  }

  if (!*(v54 + 72))
  {
    v81 = MEMORY[0x277D81150];
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v88, v89, v90, v91, v82, v87, 322, 0, "No legend style while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94, v95);
    v100 = objc_msgSend_defaultStyleWithContext_(TSCHLegendStyle, v96, v97, v98, v99, *(a1 + 48));
    v101 = *(a1 + 32);
    v102 = *(v101 + 72);
    *(v101 + 72) = v100;

    v54 = *(a1 + 32);
  }

  if (!*(v54 + 80))
  {
    v103 = MEMORY[0x277D81150];
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v106, v107, v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v110, v111, v112, v113, v104, v109, 327, 0, "No Legend Non-Style while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116, v117);
    v122 = objc_msgSend_defaultStyleWithContext_(TSCHLegendNonStyle, v118, v119, v120, v121, *(a1 + 48));
    v123 = *(a1 + 32);
    v124 = *(v123 + 80);
    *(v123 + 80) = v122;

    v54 = *(a1 + 32);
  }

  if (!*(v54 + 64))
  {
    v125 = MEMORY[0x277D81150];
    v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, v128, v129, v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v132, v133, v134, v135, v126, v131, 332, 0, "No Chart NonStyle found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v137, v138, v139);
    v144 = objc_msgSend_defaultStyleWithContext_(TSCHChartNonStyle, v140, v141, v142, v143, *(a1 + 48));
    v145 = *(a1 + 32);
    v146 = *(v145 + 64);
    *(v145 + 64) = v144;

    v54 = *(a1 + 32);
  }

  if (!objc_msgSend_count(*(v54 + 96), v50, v51, v52, v53))
  {
    v151 = MEMORY[0x277D81150];
    v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, v148, v149, v150, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, v154, v155, v156, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v158, v159, v160, v161, v152, v157, 338, 0, "No Axis Styles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163, v164, v165);
    v171 = objc_msgSend_array(MEMORY[0x277CBEB18], v166, v167, v168, v169);
    v175 = 1;
    do
    {
      v176 = v175;
      v177 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisStyle, v170, v172, v173, v174, *(a1 + 48));
      objc_msgSend_addObject_(v171, v178, v179, v180, v181, v177);

      v175 = 0;
    }

    while ((v176 & 1) != 0);
    v182 = objc_alloc(MEMORY[0x277CBEB18]);
    v187 = objc_msgSend_initWithArray_(v182, v183, v184, v185, v186, v171);
    v188 = *(a1 + 32);
    v189 = *(v188 + 96);
    *(v188 + 96) = v187;

    objc_msgSend_addObjectsFromArray_(*(a1 + 56), v190, v191, v192, v193, *(*(a1 + 32) + 96));
  }

  if (!objc_msgSend_count(*(*(a1 + 32) + 104), v147, v148, v149, v150))
  {
    v198 = MEMORY[0x277D81150];
    v199 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v194, v195, v196, v197, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v204 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, v201, v202, v203, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v198, v205, v206, v207, v208, v199, v204, 353, 0, "No Axis Styles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v209, v210, v211, v212);
    v217 = objc_msgSend_array(MEMORY[0x277CBEB18], v213, v214, v215, v216);
    v222 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisStyle, v218, v219, v220, v221, *(a1 + 48));
    objc_msgSend_addObject_(v217, v223, v224, v225, v226, v222);

    v227 = objc_alloc(MEMORY[0x277CBEB18]);
    v232 = objc_msgSend_initWithArray_(v227, v228, v229, v230, v231, v217);
    v233 = *(a1 + 32);
    v234 = *(v233 + 104);
    *(v233 + 104) = v232;

    objc_msgSend_addObjectsFromArray_(*(a1 + 56), v235, v236, v237, v238, *(*(a1 + 32) + 104));
  }

  if (!objc_msgSend_count(*(*(a1 + 32) + 128), v194, v195, v196, v197))
  {
    v243 = MEMORY[0x277D81150];
    v244 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v239, v240, v241, v242, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v249 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v245, v246, v247, v248, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v243, v250, v251, v252, v253, v244, v249, 367, 0, "No Series Styles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v254, v255, v256, v257);
    v263 = objc_msgSend_array(MEMORY[0x277CBEB18], v258, v259, v260, v261);
    for (i = 0; i != 6; ++i)
    {
      v268 = objc_msgSend_bootstrappedSeriesStyleWithContext_seriesIndex_presetIndex_(TSCHChartSeriesStyle, v262, v264, v265, v266, *(a1 + 48), i, 0);
      objc_msgSend_addObject_(v263, v269, v270, v271, v272, v268);
    }

    v273 = objc_alloc(MEMORY[0x277CBEB18]);
    v278 = objc_msgSend_initWithArray_(v273, v274, v275, v276, v277, v263);
    v279 = *(a1 + 32);
    v280 = *(v279 + 128);
    *(v279 + 128) = v278;

    objc_msgSend_addObjectsFromArray_(*(a1 + 56), v281, v282, v283, v284, *(*(a1 + 32) + 128));
  }

  if (!objc_msgSend_count(*(*(a1 + 32) + 136), v239, v240, v241, v242))
  {
    v289 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v290 = *(a1 + 32);
    v291 = *(v290 + 136);
    *(v290 + 136) = v289;
  }

  if (!objc_msgSend_count(*(*(a1 + 32) + 112), v285, v286, v287, v288))
  {
    v296 = MEMORY[0x277D81150];
    v297 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v292, v293, v294, v295, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v302 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v298, v299, v300, v301, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v296, v303, v304, v305, v306, v297, v302, 385, 0, "No Axis NonStyles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v307, v308, v309, v310);
    v311 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v312 = *(a1 + 32);
    v313 = *(v312 + 112);
    *(v312 + 112) = v311;

    for (j = objc_msgSend_count(*(*(a1 + 32) + 96), v314, v315, v316, v317); j; --j)
    {
      v319 = *(*(a1 + 32) + 112);
      v320 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisNonStyle, v292, v293, v294, v295, *(a1 + 48));
      objc_msgSend_addObject_(v319, v321, v322, v323, v324, v320);
    }
  }

  if (!objc_msgSend_count(*(*(a1 + 32) + 120), v292, v293, v294, v295))
  {
    v329 = MEMORY[0x277D81150];
    v330 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v325, v326, v327, v328, "[TSCHChartInfo(NewArchiving) loadFromPreUFFArchive:unarchiver:persistentChartInfo:]_block_invoke_14");
    v335 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v331, v332, v333, v334, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v329, v336, v337, v338, v339, v330, v335, 398, 0, "No Axis NonStyles found while unarchiving.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v340, v341, v342, v343);
    v344 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v345 = *(a1 + 32);
    v346 = *(v345 + 120);
    *(v345 + 120) = v344;

    for (k = objc_msgSend_count(*(*(a1 + 32) + 104), v347, v348, v349, v350); k; --k)
    {
      v352 = *(*(a1 + 32) + 120);
      v353 = objc_msgSend_defaultStyleWithContext_(TSCHChartAxisNonStyle, v325, v326, v327, v328, *(a1 + 48));
      objc_msgSend_addObject_(v352, v354, v355, v356, v357, v353);
    }
  }

  if (!objc_msgSend_count(*(*(a1 + 32) + 144), v325, v326, v327, v328))
  {
    v358 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v359 = *(a1 + 32);
    v360 = *(v359 + 144);
    *(v359 + 144) = v358;
  }

  v361 = *(a1 + 32);
  v362 = *(v361 + 160);
  if (v362)
  {
    v363 = v362;
    v364 = *(v361 + 160);
    *(v361 + 160) = v363;
  }

  else
  {
    v365 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v366 = *(a1 + 32);
    v364 = *(v366 + 160);
    *(v366 + 160) = v365;
  }

  v367 = *(a1 + 32);
  v368 = *(v367 + 152);
  if (v368)
  {
    v369 = v368;
    v370 = *(v367 + 152);
    *(v367 + 152) = v369;
  }

  else
  {
    v371 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v372 = *(a1 + 32);
    v370 = *(v372 + 152);
    *(v372 + 152) = v371;
  }

  v373 = *(a1 + 32);
  v374 = *(v373 + 160);
  if (v374)
  {
    v375 = v374;
    v376 = *(v373 + 160);
    *(v373 + 160) = v375;
  }

  else
  {
    v377 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v378 = *(a1 + 32);
    v376 = *(v378 + 160);
    *(v378 + 160) = v377;
  }

  v379 = *(a1 + 32);
  v380 = *(v379 + 152);
  if (v380)
  {
    v381 = v380;
    v382 = *(v379 + 152);
    *(v379 + 152) = v381;
  }

  else
  {
    v383 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v384 = *(a1 + 32);
    v382 = *(v384 + 152);
    *(v384 + 152) = v383;
  }

  if (objc_msgSend_count(*(a1 + 56), v385, v386, v387, v388))
  {
    v393 = objc_alloc(MEMORY[0x277D80AE0]);
    v398 = objc_msgSend_initWithContext_(v393, v394, v395, v396, v397, *(a1 + 48));
    v419 = 0u;
    v420 = 0u;
    v417 = 0u;
    v418 = 0u;
    v399 = *(a1 + 56);
    v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v399, v400, v401, v402, v403, &v417, v421, 16);
    if (v405)
    {
      v409 = *v418;
      do
      {
        for (m = 0; m != v405; ++m)
        {
          if (*v418 != v409)
          {
            objc_enumerationMutation(v399);
          }

          v411 = *(*(&v417 + 1) + 8 * m);
          v412 = objc_msgSend_stylesheet(v411, v404, v406, v407, v408, v417);
          v413 = v412 == 0;

          if (v413)
          {
            objc_msgSend_addStyle_(v398, v404, v406, v407, v408, v411);
          }
        }

        v405 = objc_msgSend_countByEnumeratingWithState_objects_count_(v399, v404, v406, v407, v408, &v417, v421, 16);
      }

      while (v405);
    }

    objc_setAssociatedObject(*(a1 + 32), *(a1 + 32), v398, 1);
  }

  v414 = sub_2762A6FF8(*(a1 + 80), v389, v390, v391, v392);
  v415 = *(a1 + 32);
  v416 = *(v415 + 16);
  *(v415 + 16) = v414;
}

void sub_2762ABB14(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v28 = objc_msgSend_grid(a2, a2, a3, a4, a5);
  objc_msgSend_setGrid_(*(a1 + 32), v6, v7, v8, v9);
  v14 = objc_msgSend_grid(*(a1 + 32), v10, v11, v12, v13);
  objc_msgSend_adjustRowAndColumnNameListLength(v14, v15, v16, v17, v18);

  v23 = objc_msgSend_grid(*(a1 + 32), v19, v20, v21, v22);
  objc_msgSend_generateRowColumnIdMaps(v23, v24, v25, v26, v27);
}

void sub_2762ABBC0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_grid(*(a1 + 32), a2, a3, a4, a5);

  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartModel(NewArchiving) loadFromPreUFFArchive:unarchiver:contextForUpgradeOnly:]_block_invoke_2");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfo_PreUFFArchiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 986, 0, "We should have gotten a grid from SOMEWHERE!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    v26 = objc_alloc_init(TSCHChartGrid);
    objc_msgSend_setGrid_(*(a1 + 32), v27, v28, v29, v30, v26);
  }

  v31 = *(a1 + 32);
  v32 = objc_msgSend_grid(v31, v7, v8, v9, v10);
  objc_msgSend_setObjectToNotify_(v32, v33, v34, v35, v36, v31);

  *(*(a1 + 32) + 88) = 1;
}

double sub_2762AC268()
{
  v0 = TSWPCreateSubstituteFontForString();
  characters = 78;
  glyphs = 0;
  if (CTFontGetGlyphsForCharacters(v0, &characters, &glyphs, 1))
  {
    BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(v0, kCTFontOrientationDefault, &glyphs, 0, 1);
    width = BoundingRectsForGlyphs.size.width;
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
  }

  CFRelease(v0);
  return width;
}

id sub_2762AC8A4(uint64_t a1, double a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v10 = MEMORY[0x277D80650];
  v11 = a6;
  v12 = a4;
  v13 = [v10 alloc];
  v18 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v13, v14, v15, v16, v17, a5, v12, a1);

  v22 = objc_msgSend_stringFromDouble_locale_(v18, v19, a2, v20, v21, v11);

  return v22;
}

double sub_2762AD980(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_labelStringForAxis_index_(*(a1 + 32), a2, a3, a4, a5, *(a1 + 40), a2);
  objc_msgSend_measureText_paragraphStyle_outErasableFrame_(*(a1 + 48), v7, v8, v9, v10, v6, *(a1 + 56), 0);
  v11 = *(a1 + 80);
  v16[0] = *(a1 + 64);
  v16[1] = v11;
  v16[2] = *(a1 + 96);
  v14 = sub_2762A1A7C(v16, v12, v13);

  return v14;
}

uint64_t sub_2762B2800(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  return objc_msgSend_addTextSubselectionKnobsToArray_rect_transform_(TSCHRenderUtilities, a2, a3, a4, a5, v5, v8);
}

uint64_t sub_2762B28F4(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = *(a2 + 32);
  return objc_msgSend_addTextSubselectionHalosToArray_rect_transform_(TSCHRenderUtilities, a2, a3, a4, a5, v5, v8);
}

void sub_2762B2A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2762B2A2C(uint64_t a1, _OWORD *a2, double a3, double a4, double a5, double a6)
{
  v7 = a2[1];
  *&v8.a = *a2;
  *&v8.c = v7;
  *&v8.tx = a2[2];
  v9 = CGRectApplyAffineTransform(*&a3, &v8);
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v9);
}

BOOL sub_2762B2E3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v23[0] = *MEMORY[0x277CBF3A0];
  v23[1] = v6;
  v22 = *MEMORY[0x277CBF3A8];
  memset(&v21, 0, sizeof(v21));
  v7 = *(a1 + 32);
  objc_msgSend_layoutSize(v7, v8, 0.0, *&v22, v9);
  if (v7)
  {
    objc_msgSend_i_localTransformForLabel_range_inLayoutSize_outElementSize_outClipRect_usingString_stride_useAngle_(v7, v10, v11, v12, v13, a2, 0, &v22, v23, v5, 0, 1);
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  memset(&v20, 0, sizeof(v20));
  v14 = *(a1 + 32);
  if (v14)
  {
    v19 = v21;
    objc_msgSend_p_rootedTransformFromLocalTransform_(v14, v10, v21.tx, v21.c, v13, &v19);
  }

  v18 = v20;
  CGAffineTransformInvert(&v19, &v18);
  point = vaddq_f64(*&v19.tx, vmlaq_n_f64(vmulq_n_f64(*&v19.c, *(a1 + 48)), *&v19.a, *(a1 + 40)));
  TSURectWithSize();
  v15 = CGRectContainsPoint(v24, point);

  return v15;
}

uint64_t sub_2762B433C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
  v10 = *(a1 + 32);
  v11 = *&v10[*MEMORY[0x277D80AF0]];

  return objc_msgSend_p_upgradeMixedChartProperties_(v10, v6, v7, v8, v9, v11);
}

void sub_2762B4388(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
    v53 = *(*(a1 + 32) + *MEMORY[0x277D80AF0]);
    sub_2762A7A40(1364, 1432, v53);
    sub_2762A7A40(1365, 1433, v53);
  }

  if ((*(a1 + 41) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
    sub_2762A7D98(1363, 1371, *(*(a1 + 32) + *MEMORY[0x277D80AF0]));
  }

  if (*(a1 + 42) == 1)
  {
    v54 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a2, a3, a4, a5);
    v10 = objc_msgSend_supportsNumberFormatSameAsSource(v54, v6, v7, v8, v9);

    if ((v10 & 1) == 0)
    {
      if (objc_msgSend_intValueForProperty_(*(a1 + 32), v11, v12, v13, v14, 1434) == 1)
      {
        v19 = objc_msgSend_valueForProperty_(*(a1 + 32), v15, v16, v17, v18, 1432);
        v55 = v19;
        if (v19)
        {
          v24 = objc_msgSend_formatType(v19, v20, v21, v22, v23);
          v29 = objc_msgSend_labelFormatTypeFromTSUFormatType_(TSCHNumberFormat, v25, v26, v27, v28, v24);
          objc_msgSend_setIntValue_forProperty_(*(a1 + 32), v30, v31, v32, v33, v29, 1434);
        }

        else
        {
          objc_msgSend_setIntValue_forProperty_(*(a1 + 32), v20, v21, v22, v23, 2, 1434);
        }
      }

      if (objc_msgSend_intValueForProperty_(*(a1 + 32), v15, v16, v17, v18, 1435) == 1)
      {
        v38 = objc_msgSend_valueForProperty_(*(a1 + 32), v34, v35, v36, v37, 1433);
        v56 = v38;
        if (v38)
        {
          v43 = objc_msgSend_formatType(v38, v39, v40, v41, v42);
          v48 = objc_msgSend_labelFormatTypeFromTSUFormatType_(TSCHNumberFormat, v44, v45, v46, v47, v43);
          objc_msgSend_setIntValue_forProperty_(*(a1 + 32), v49, v50, v51, v52, v48, 1435);
        }

        else
        {
          objc_msgSend_setIntValue_forProperty_(*(a1 + 32), v39, v40, v41, v42, 2, 1435);
        }
      }
    }
  }
}

uint64_t sub_2762B456C(uint64_t result, const char *a2, double a3, double a4, double a5)
{
  if ((*(result + 40) & 1) == 0)
  {
    return objc_msgSend_setIntValue_forProperty_(*(*(result + 32) + *MEMORY[0x277D80AF0]), a2, a3, a4, a5, 0, 1376);
  }

  return result;
}

uint64_t sub_2762B6720(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
  v10 = *MEMORY[0x277D80AF0];
  if (*(a1 + 40) < 0x2CBDB9585uLL)
  {
    objc_msgSend_p_upgradeMixedChartProperties_(*(a1 + 32), v6, v7, v8, v9, *(*(a1 + 32) + v10));
  }

  objc_msgSend_p_upgradeRadarChartProperties_(*(a1 + 32), v6, v7, v8, v9, *(*(a1 + 32) + v10));
  v15 = *(a1 + 32);
  v16 = *&v15[v10];

  return objc_msgSend_p_upgradeSeparateVisibilityProperties_(v15, v11, v12, v13, v14, v16);
}

void sub_2762B6B34(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47258;
  qword_280A47258 = v11;

  if (!qword_280A47258)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCHChartSeriesDefaultNonStyle defaultNonStyle]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeriesNonStyle.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 387, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2762B77A4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = MEMORY[0x277D80AF0];
  if ((*(a1 + 40) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
    sub_2762A7A40(1229, 1258, *(*(a1 + 32) + *v6));
  }

  if ((*(a1 + 41) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
    sub_2762A7D98(1228, 1235, *(*(a1 + 32) + *v6));
  }

  if (*(a1 + 42) == 1)
  {
    v35 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a2, a3, a4, a5);
    if ((objc_msgSend_supportsNumberFormatSameAsSource(v35, v7, v8, v9, v10) & 1) == 0)
    {
      v15 = objc_msgSend_intValueForProperty_(*(a1 + 32), v11, v12, v13, v14, 1259);

      if (v15 != 1)
      {
        return;
      }

      v20 = objc_msgSend_valueForProperty_(*(a1 + 32), v16, v17, v18, v19, 1258);
      v35 = v20;
      if (v20)
      {
        v25 = objc_msgSend_formatType(v20, v21, v22, v23, v24);
        v30 = objc_msgSend_labelFormatTypeFromTSUFormatType_(TSCHNumberFormat, v26, v27, v28, v29, v25);
        objc_msgSend_setIntValue_forProperty_(*(a1 + 32), v31, v32, v33, v34, v30, 1259);
      }

      else
      {
        objc_msgSend_setIntValue_forProperty_(*(a1 + 32), v21, v22, v23, v24, 2, 1259);
      }
    }
  }
}

void sub_2762B8EDC(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v14 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a4, a5, a6, a2);
  v13 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v9, v10, v11, v12, a2);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_2762B91B4(void **a1, const char *a2, double a3, double a4, double a5)
{
  v17 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a3, a4, a5, a2);
  v11 = objc_msgSend_boxedValueForProperty_(a1[5], v7, v8, v9, v10, a2);
  v12 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v13, v14, v15, v16, v12, a2);
}

id sub_2762B9E34(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v8 = objc_msgSend_valueForProperty_(*(a1 + 32), v4, v5, v6, v7, a2);
  v9 = TSUCheckedDynamicCast();

  if (v9)
  {
    objc_msgSend_w(v9, v10, v11, v12, v13);
    if (v14 != 0.0)
    {

      v9 = 0;
    }
  }

  return v9;
}

void sub_2762B9EE8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (*(a1 + 40) == 1)
  {
    v34 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a2, a3, a4, a5);
    v10 = objc_msgSend_supportsNumberFormatSameAsSource(v34, v6, v7, v8, v9);

    if ((v10 & 1) == 0 && objc_msgSend_intValueForProperty_(*(a1 + 32), v11, v12, v13, v14, 1355) == 1)
    {
      v19 = objc_msgSend_valueForProperty_(*(a1 + 32), v15, v16, v17, v18, 1354);
      v35 = v19;
      if (v19)
      {
        v24 = objc_msgSend_formatType(v19, v20, v21, v22, v23);
        v29 = objc_msgSend_labelFormatTypeFromTSUFormatType_(TSCHNumberFormat, v25, v26, v27, v28, v24);
        objc_msgSend_setIntValue_forProperty_(*(a1 + 32), v30, v31, v32, v33, v29, 1355);
      }

      else
      {
        objc_msgSend_setIntValue_forProperty_(*(a1 + 32), v20, v21, v22, v23, 2, 1355);
      }
    }
  }
}

void sub_2762BB3A0(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v14 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a4, a5, a6, a2);
  v13 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v9, v10, v11, v12, a2);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_2762BB678(void **a1, const char *a2, double a3, double a4, double a5)
{
  v17 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a3, a4, a5, a2);
  v11 = objc_msgSend_boxedValueForProperty_(a1[5], v7, v8, v9, v10, a2);
  v12 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v13, v14, v15, v16, v12, a2);
}

void sub_2762BC9AC(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  if ((objc_msgSend_containsProperty_(v18, v5, v6, v7, v8, a2) & 1) == 0)
  {
    v14 = objc_msgSend_objectForProperty_(v18, v9, v10, v11, v12, a1);
    if (v14)
    {
      objc_msgSend_setObject_forProperty_(v18, v13, v15, v16, v17, v14, a2);
    }
  }
}

void sub_2762BCBE8(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  if ((objc_msgSend_containsProperty_(v23, v5, v6, v7, v8, a2) & 1) == 0)
  {
    v13 = objc_msgSend_objectForProperty_(v23, v9, v10, v11, v12, a1);
    v19 = objc_msgSend_convertToTSDFill(v13, v14, v15, v16, v17);
    if (v13)
    {
      objc_msgSend_setObject_forProperty_(v23, v18, v20, v21, v22, v19, a2);
    }

    objc_msgSend_removeValueForProperty_(v23, v18, v20, v21, v22, a1);
  }
}

uint64_t sub_2762BF060(uint64_t result, const char *a2, double a3, double a4, double a5)
{
  v5 = result;
  if ((*(result + 48) & 1) == 0)
  {
    if (objc_msgSend_containsProperty_(*(result + 32), a2, a3, a4, a5, 1425))
    {
      v10 = objc_msgSend_intValueForProperty_(*(v5 + 32), v6, v7, v8, v9, 1425);
      objc_msgSend_setIntValue_forProperty_(*(v5 + 40), v11, v12, v13, v14, v10, 1422);
    }

    result = objc_msgSend_containsProperty_(*(v5 + 32), v6, v7, v8, v9, 1442);
    if (result)
    {
      v15 = objc_msgSend_intValueForProperty_(*(v5 + 32), a2, a3, a4, a5, 1442);
      result = objc_msgSend_setIntValue_forProperty_(*(v5 + 40), v16, v17, v18, v19, v15, 1440);
    }
  }

  if ((*(v5 + 49) & 1) == 0)
  {
    objc_msgSend_willModify(*(v5 + 32), a2, a3, a4, a5);
    v24 = *(v5 + 32);
    v25 = *(v5 + 40);

    return objc_msgSend_p_upgradeRadarChartProperties_(v24, v20, v21, v22, v23, v25);
  }

  return result;
}

void sub_2762C2D14(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 40);
  if (v6 <= 0x2CBDB9584)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
    objc_msgSend_p_upgradeMixedChartProperties_(*(a1 + 32), v7, v8, v9, v10, *(*(a1 + 32) + *MEMORY[0x277D80AF0]));
    v6 = *(a1 + 40);
  }

  if (v6 <= 0x7741170BBLL)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
    v11 = *MEMORY[0x277D80AF0];
    objc_msgSend_p_upgradeSeparateVisibilityProperties_(*(a1 + 32), v12, v13, v14, v15, *(*(a1 + 32) + v11));
    v6 = *(a1 + 40);
    if (v6 <= 0x51FF69F3FLL)
    {
      v16 = objc_msgSend_copy(*(*(a1 + 32) + v11), a2, a3, a4, a5);
      objc_msgSend_p_upgrade3DChartProperties_(*(a1 + 32), v17, v18, v19, v20, v16);
      if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v11), v21, v22, v23, v24, v16) & 1) == 0)
      {
        objc_msgSend_willModifyForUpgrade(*(a1 + 32), v25, v26, v27, v28);
        objc_storeStrong((*(a1 + 32) + v11), v16);
      }

      v6 = *(a1 + 40);
    }
  }

  if (v6 <= 0x77411E587)
  {
    v29 = *MEMORY[0x277D80AF0];
    v30 = objc_msgSend_copy(*(*(a1 + 32) + v29), a2, a3, a4, a5);
    objc_msgSend_p_upgradeRemoveShadowEnabledPropertyUsage_(*(a1 + 32), v31, v32, v33, v34, v30);
    if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v29), v35, v36, v37, v38, v30) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v39, v40, v41, v42);
      objc_storeStrong((*(a1 + 32) + v29), v30);
    }

    v6 = *(a1 + 40);
  }

  if (v6 <= 0x774120E27)
  {
    v43 = *MEMORY[0x277D80AF0];
    v44 = objc_msgSend_copy(*(*(a1 + 32) + v43), a2, a3, a4, a5);
    objc_msgSend_p_upgrade3DFillSubclassTSDFill_(*(a1 + 32), v45, v46, v47, v48, v44);
    if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v43), v49, v50, v51, v52, v44) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v53, v54, v55, v56);
      objc_storeStrong((*(a1 + 32) + v43), v44);
    }

    v6 = *(a1 + 40);
  }

  if (v6 <= 0x7741FD06BLL)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), a2, a3, a4, a5);
    v60 = *(a1 + 32);

    MEMORY[0x2821F9670](v60, sel_p_upgradeBubbleChartProperties_, v57, v58, v59);
  }
}

void sub_2762C31F8(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v14 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a4, a5, a6, a2);
  v13 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v9, v10, v11, v12, a2);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_2762C34D0(void **a1, const char *a2, double a3, double a4, double a5)
{
  v17 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a3, a4, a5, a2);
  v11 = objc_msgSend_boxedValueForProperty_(a1[5], v7, v8, v9, v10, a2);
  v12 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v13, v14, v15, v16, v12, a2);
}

void sub_2762C3928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a5;
  if ((objc_msgSend_containsProperty_(v34, v9, v10, v11, v12, a3) & 1) == 0)
  {
    v18 = objc_msgSend_objectForProperty_(v34, v13, v14, v15, v16, a1);
    if (v18)
    {
      objc_msgSend_setObject_forProperty_(v34, v17, v19, v20, v21, v18, a3);
      if (objc_msgSend_containsProperty_(v34, v22, v23, v24, v25, a2))
      {
        objc_msgSend_floatValueForProperty_(v34, v26, v27, v28, v29, a2);
        objc_msgSend_setFloatValue_forProperty_(v34, v30, v31, v32, v33, a4);
      }
    }
  }
}

void sub_2762C437C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 40);
  if (v6 <= 0x51FF69F3FLL)
  {
    v7 = *MEMORY[0x277D80AF0];
    obj = objc_msgSend_copy(*(*(a1 + 32) + v7), a2, a3, a4, a5);
    objc_msgSend_p_upgrade3DChartPropertiesFrom2DProperties_(*(a1 + 32), v8, v9, v10, v11);
    if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v7), v12, v13, v14, v15, obj) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v16, v17, v18, v19);
      objc_storeStrong((*(a1 + 32) + v7), obj);
    }

    v6 = *(a1 + 40);
  }

  if (v6 <= 0x77411E587)
  {
    v20 = *MEMORY[0x277D80AF0];
    obja = objc_msgSend_copy(*(*(a1 + 32) + v20), a2, a3, a4, a5);
    objc_msgSend_p_upgradeRemoveShadowEnabledPropertyUsage_(*(a1 + 32), v21, v22, v23, v24);
    if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v20), v25, v26, v27, v28, obja) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v29, v30, v31, v32);
      objc_storeStrong((*(a1 + 32) + v20), obja);
    }
  }
}

void sub_2762C5818(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 40);
  if (v6 <= 0x51FF69F3FLL)
  {
    v7 = *MEMORY[0x277D80AF0];
    obj = objc_msgSend_copy(*(*(a1 + 32) + v7), a2, a3, a4, a5);
    objc_msgSend_p_upgrade3DChartPropertiesFrom2DProperties_(*(a1 + 32), v8, v9, v10, v11);
    if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v7), v12, v13, v14, v15, obj) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v16, v17, v18, v19);
      objc_storeStrong((*(a1 + 32) + v7), obj);
    }

    v6 = *(a1 + 40);
  }

  if (v6 <= 0x77411E587)
  {
    v20 = *MEMORY[0x277D80AF0];
    obja = objc_msgSend_copy(*(*(a1 + 32) + v20), a2, a3, a4, a5);
    objc_msgSend_p_upgradeRemoveShadowEnabledPropertyUsage_(*(a1 + 32), v21, v22, v23, v24);
    if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v20), v25, v26, v27, v28, obja) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v29, v30, v31, v32);
      objc_storeStrong((*(a1 + 32) + v20), obja);
    }
  }
}

void sub_2762C5BF8(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v14 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a4, a5, a6, a2);
  v13 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v9, v10, v11, v12, a2);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_2762C5ED0(void **a1, const char *a2, double a3, double a4, double a5)
{
  v17 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a3, a4, a5, a2);
  v11 = objc_msgSend_boxedValueForProperty_(a1[5], v7, v8, v9, v10, a2);
  v12 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v13, v14, v15, v16, v12, a2);
}

void sub_2762C6558(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *MEMORY[0x277D80AF0];
  obj = objc_msgSend_copy(*(*(a1 + 32) + v6), a2, a3, a4, a5);
  objc_msgSend_p_upgradeRemoveShadowEnabledPropertyUsage_(*(a1 + 32), v7, v8, v9, v10);
  if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v6), v11, v12, v13, v14, obj) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v15, v16, v17, v18);
    objc_storeStrong((*(a1 + 32) + v6), obj);
  }
}

void sub_2762C6B58(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *MEMORY[0x277D80AF0];
  obj = objc_msgSend_copy(*(*(a1 + 32) + v6), a2, a3, a4, a5);
  objc_msgSend_p_upgradeRemoveShadowEnabledPropertyUsage_(*(a1 + 32), v7, v8, v9, v10);
  if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v6), v11, v12, v13, v14, obj) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v15, v16, v17, v18);
    objc_storeStrong((*(a1 + 32) + v6), obj);
  }
}

void sub_2762C6E98(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v14 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a4, a5, a6, a2);
  v13 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v9, v10, v11, v12, a2);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_2762C7170(void **a1, const char *a2, double a3, double a4, double a5)
{
  v17 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a3, a4, a5, a2);
  v11 = objc_msgSend_boxedValueForProperty_(a1[5], v7, v8, v9, v10, a2);
  v12 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v13, v14, v15, v16, v12, a2);
}

void sub_2762C7DC8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (objc_msgSend_preUFFVersion(*(a1 + 32), a2, a3, a4, a5) <= 0x77411E587)
  {
    v10 = *MEMORY[0x277D80AF0];
    v11 = objc_msgSend_copy(*(*(a1 + 40) + v10), v6, v7, v8, v9);
    objc_msgSend_p_upgradeRemoveShadowEnabledPropertyUsage_(*(a1 + 40), v12, v13, v14, v15, v11);
    if ((objc_msgSend_isEqual_(*(*(a1 + 40) + v10), v16, v17, v18, v19, v11) & 1) == 0)
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 40), v20, v21, v22, v23);
      objc_storeStrong((*(a1 + 40) + v10), v11);
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 40), v6, v7, v8, v9);
    sub_2762CD5BC(1362, 1357, *(*(a1 + 40) + *MEMORY[0x277D80AF0]));
    v27 = *(a1 + 40);

    MEMORY[0x2821F9670](v27, sel_p_upgradeSummaryLabelOffsetValueInMap_, v24, v25, v26);
  }
}

void sub_2762C90C0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *MEMORY[0x277D80AF0];
  obj = objc_msgSend_copy(*(*(a1 + 32) + v6), a2, a3, a4, a5);
  objc_msgSend_p_upgradeRemoveShadowEnabledPropertyUsage_(*(a1 + 32), v7, v8, v9, v10);
  if ((objc_msgSend_isEqual_(*(*(a1 + 32) + v6), v11, v12, v13, v14, obj) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v15, v16, v17, v18);
    objc_storeStrong((*(a1 + 32) + v6), obj);
  }
}

void sub_2762C9400(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v14 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a4, a5, a6, a2);
  v13 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v9, v10, v11, v12, a2);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_2762C96D8(void **a1, const char *a2, double a3, double a4, double a5)
{
  v17 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a3, a4, a5, a2);
  v11 = objc_msgSend_boxedValueForProperty_(a1[5], v7, v8, v9, v10, a2);
  v12 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v13, v14, v15, v16, v12, a2);
}

void sub_2762CA05C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (objc_msgSend_containsProperty_(*(a1 + 32), a2, a3, a4, a5, a2))
  {
    v11 = objc_msgSend_objectForProperty_(*(a1 + 32), v7, v8, v9, v10, a2);
    v12 = *(a1 + 48);
    v23 = 0;
    v17 = objc_msgSend_upgradedShadowPropertyFromShadow_outUpgraded_(v12, v13, v14, v15, v16, v11, &v23);
    v19 = v23;
    if (v17)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      objc_msgSend_setObject_forProperty_(*(a1 + 32), v18, v20, v21, v22, v19, a2);
    }
  }
}

void sub_2762CA204(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2762CAC4C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v18 = objc_msgSend_objectForProperty_(*(a1 + 32), a2, a3, a4, a5, a2);
  objc_opt_class();
  v7 = TSUDynamicCast();
  v12 = v7;
  if (v7)
  {
    v13 = objc_msgSend_convertToSimpleTSDFillWithSize_context_(v7, v8, v9, v10, v11, 512, *(a1 + 40));

    v18 = v13;
    objc_msgSend_setObject_forProperty_(*(a1 + 32), v14, v15, v16, v17, v13, a2);
  }
}

void sub_2762CB86C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_2762CD52C(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 != v5 && (objc_msgSend_count(v3, v4, v6, v7, v8) || objc_msgSend_count(v5, v9, v10, v11, v12)))
  {
    isEqual = objc_msgSend_isEqual_(v3, v9, v10, v11, v12, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

void sub_2762CD5BC(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  if (objc_msgSend_containsProperty_(v18, v5, v6, v7, v8, a1))
  {
    v13 = objc_msgSend_boxedObjectForProperty_(v18, v9, v10, v11, v12, a1);
    objc_msgSend_setBoxedObject_forProperty_(v18, v14, v15, v16, v17, v13, a2);
  }
}

void sub_2762CD65C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v20 = a4;
  if (objc_msgSend_containsProperty_(v20, v7, v8, v9, v10, a1))
  {
    v15 = objc_msgSend_intValueForProperty_(v20, v11, v12, v13, v14, a1) != a3;
    objc_msgSend_setBoolValue_forProperty_(v20, v16, v17, v18, v19, v15, a2);
  }
}

void sub_2762CD70C(void *a1)
{
  v1 = a1;
  sub_2762CD65C(1392, 1462, 0, v1);
  sub_2762CD65C(1393, 1463, 0, v1);
}

id sub_2762CD788(objc_class *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if ((objc_msgSend_isSubclassOfClass_(a1, v5, v6, v7, v8, v4) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "id TSCHCheckedDynamicStyleCast(__unsafe_unretained Class, __strong id<NSObject>)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
    v20 = NSStringFromClass(a1);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v14, v19, 1017, 0, "%@ is not subclass of TSSStyle", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  if (v3)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v29, v30, v31, v32);
      isEqual = objc_msgSend_isEqual_(v3, v34, v35, v36, v37, v33);

      if ((isEqual & 1) == 0)
      {
        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "id TSCHCheckedDynamicStyleCast(__unsafe_unretained Class, __strong id<NSObject>)");
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleUtilities.mm");
        v50 = NSStringFromClass(a1);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v51, v52, v53, v54, v44, v49, 1021, 0, "Invalid style for class %@ object %@", v50, v3);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
      }
    }

    v59 = TSUDynamicCast();
  }

  else
  {
    v59 = 0;
  }

  return v59;
}

uint64_t sub_2762CE180()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47268;
  qword_280A47268 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47268, v2, v3, v4, v5, 1298, 1067);
  objc_msgSend_setInt_forKey_(qword_280A47268, v6, v7, v8, v9, 1299, 1068);
  objc_msgSend_setInt_forKey_(qword_280A47268, v10, v11, v12, v13, 1300, 1069);
  objc_msgSend_setInt_forKey_(qword_280A47268, v14, v15, v16, v17, 1301, 1070);
  objc_msgSend_setInt_forKey_(qword_280A47268, v18, v19, v20, v21, 1305, 1071);
  objc_msgSend_setInt_forKey_(qword_280A47268, v22, v23, v24, v25, 1308, 1072);
  objc_msgSend_setInt_forKey_(qword_280A47268, v26, v27, v28, v29, 1312, 1073);
  objc_msgSend_setInt_forKey_(qword_280A47268, v30, v31, v32, v33, 1315, 1074);
  objc_msgSend_setInt_forKey_(qword_280A47268, v34, v35, v36, v37, 1316, 1075);
  objc_msgSend_setInt_forKey_(qword_280A47268, v38, v39, v40, v41, 1317, 1076);
  objc_msgSend_setInt_forKey_(qword_280A47268, v42, v43, v44, v45, 1318, 1077);
  objc_msgSend_setInt_forKey_(qword_280A47268, v46, v47, v48, v49, 1319, 1078);
  objc_msgSend_setInt_forKey_(qword_280A47268, v50, v51, v52, v53, 1320, 1079);
  objc_msgSend_setInt_forKey_(qword_280A47268, v54, v55, v56, v57, 1321, 1080);
  objc_msgSend_setInt_forKey_(qword_280A47268, v58, v59, v60, v61, 1325, 1081);
  objc_msgSend_setInt_forKey_(qword_280A47268, v62, v63, v64, v65, 1331, 1082);
  objc_msgSend_setInt_forKey_(qword_280A47268, v66, v67, v68, v69, 1332, 1090);
  objc_msgSend_setInt_forKey_(qword_280A47268, v70, v71, v72, v73, 1333, 1091);
  objc_msgSend_setInt_forKey_(qword_280A47268, v74, v75, v76, v77, 1334, 1098);
  objc_msgSend_setInt_forKey_(qword_280A47268, v78, v79, v80, v81, 1335, 1099);
  objc_msgSend_setInt_forKey_(qword_280A47268, v82, v83, v84, v85, 1336, 1100);
  objc_msgSend_setInt_forKey_(qword_280A47268, v86, v87, v88, v89, 1337, 1101);
  objc_msgSend_setInt_forKey_(qword_280A47268, v90, v91, v92, v93, 1338, 1102);
  objc_msgSend_setInt_forKey_(qword_280A47268, v94, v95, v96, v97, 1339, 1103);
  objc_msgSend_setInt_forKey_(qword_280A47268, v98, v99, v100, v101, 1340, 1104);
  objc_msgSend_setInt_forKey_(qword_280A47268, v102, v103, v104, v105, 1341, 1105);
  objc_msgSend_setInt_forKey_(qword_280A47268, v106, v107, v108, v109, 1342, 1106);
  objc_msgSend_setInt_forKey_(qword_280A47268, v110, v111, v112, v113, 1343, 1107);
  objc_msgSend_setInt_forKey_(qword_280A47268, v114, v115, v116, v117, 1344, 1108);
  objc_msgSend_setInt_forKey_(qword_280A47268, v118, v119, v120, v121, 1345, 1109);
  objc_msgSend_setInt_forKey_(qword_280A47268, v122, v123, v124, v125, 1346, 1110);
  objc_msgSend_setInt_forKey_(qword_280A47268, v126, v127, v128, v129, 1347, 1111);
  objc_msgSend_setInt_forKey_(qword_280A47268, v130, v131, v132, v133, 1348, 1112);
  objc_msgSend_setInt_forKey_(qword_280A47268, v134, v135, v136, v137, 1349, 1113);
  objc_msgSend_setInt_forKey_(qword_280A47268, v138, v139, v140, v141, 1350, 1114);
  objc_msgSend_setInt_forKey_(qword_280A47268, v142, v143, v144, v145, 1351, 1115);
  objc_msgSend_setInt_forKey_(qword_280A47268, v146, v147, v148, v149, 1352, 1116);
  objc_msgSend_setInt_forKey_(qword_280A47268, v150, v151, v152, v153, 1353, 1117);
  objc_msgSend_setInt_forKey_(qword_280A47268, v154, v155, v156, v157, 1354, 1118);
  objc_msgSend_setInt_forKey_(qword_280A47268, v158, v159, v160, v161, 1355, 1119);
  objc_msgSend_setInt_forKey_(qword_280A47268, v162, v163, v164, v165, 1356, 1120);
  objc_msgSend_setInt_forKey_(qword_280A47268, v166, v167, v168, v169, 1357, 1121);
  objc_msgSend_setInt_forKey_(qword_280A47268, v170, v171, v172, v173, 1358, 1122);
  objc_msgSend_setInt_forKey_(qword_280A47268, v174, v175, v176, v177, 1359, 1123);
  objc_msgSend_setInt_forKey_(qword_280A47268, v178, v179, v180, v181, 1360, 1125);
  objc_msgSend_setInt_forKey_(qword_280A47268, v182, v183, v184, v185, 1361, 1124);
  objc_msgSend_setInt_forKey_(qword_280A47268, v186, v187, v188, v189, 1362, 1126);
  objc_msgSend_setInt_forKey_(qword_280A47268, v190, v191, v192, v193, 1594, 1083);
  objc_msgSend_setInt_forKey_(qword_280A47268, v194, v195, v196, v197, 1597, 1084);
  objc_msgSend_setInt_forKey_(qword_280A47268, v198, v199, v200, v201, 1602, 1085);
  objc_msgSend_setInt_forKey_(qword_280A47268, v202, v203, v204, v205, 1610, 1087);
  objc_msgSend_setInt_forKey_(qword_280A47268, v206, v207, v208, v209, 1611, 1088);
  objc_msgSend_setInt_forKey_(qword_280A47268, v210, v211, v212, v213, 1612, 1089);
  objc_msgSend_setInt_forKey_(qword_280A47268, v214, v215, v216, v217, 1613, 1092);
  objc_msgSend_setInt_forKey_(qword_280A47268, v218, v219, v220, v221, 1614, 1093);
  objc_msgSend_setInt_forKey_(qword_280A47268, v222, v223, v224, v225, 1615, 1094);
  objc_msgSend_setInt_forKey_(qword_280A47268, v226, v227, v228, v229, 1616, 1095);
  objc_msgSend_setInt_forKey_(qword_280A47268, v230, v231, v232, v233, 1617, 1096);
  v238 = qword_280A47268;

  return objc_msgSend_setInt_forKey_(v238, v234, v235, v236, v237, 1618, 1097);
}

uint64_t sub_2762CE6F8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47278;
  qword_280A47278 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47278, v2, v3, v4, v5, 1579, 1213);
  objc_msgSend_setInt_forKey_(qword_280A47278, v6, v7, v8, v9, 1580, 1214);
  objc_msgSend_setInt_forKey_(qword_280A47278, v10, v11, v12, v13, 1581, 1215);
  objc_msgSend_setInt_forKey_(qword_280A47278, v14, v15, v16, v17, 1582, 1216);
  v22 = qword_280A47278;

  return objc_msgSend_setInt_forKey_(v22, v18, v19, v20, v21, 1583, 1217);
}

uint64_t sub_2762CE910()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47288;
  qword_280A47288 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47288, v2, v3, v4, v5, 1228, 1024);
  objc_msgSend_setInt_forKey_(qword_280A47288, v6, v7, v8, v9, 1229, 1025);
  objc_msgSend_setInt_forKey_(qword_280A47288, v10, v11, v12, v13, 1234, 1028);
  objc_msgSend_setInt_forKey_(qword_280A47288, v14, v15, v16, v17, 1235, 1029);
  objc_msgSend_setInt_forKey_(qword_280A47288, v18, v19, v20, v21, 1236, 1030);
  objc_msgSend_setInt_forKey_(qword_280A47288, v22, v23, v24, v25, 1238, 1032);
  objc_msgSend_setInt_forKey_(qword_280A47288, v26, v27, v28, v29, 1239, 1033);
  objc_msgSend_setInt_forKey_(qword_280A47288, v30, v31, v32, v33, 1241, 1034);
  objc_msgSend_setInt_forKey_(qword_280A47288, v34, v35, v36, v37, 1244, 1035);
  objc_msgSend_setInt_forKey_(qword_280A47288, v38, v39, v40, v41, 1258, 1042);
  objc_msgSend_setInt_forKey_(qword_280A47288, v42, v43, v44, v45, 1259, 1043);
  objc_msgSend_setInt_forKey_(qword_280A47288, v46, v47, v48, v49, 1267, 1050);
  objc_msgSend_setInt_forKey_(qword_280A47288, v50, v51, v52, v53, 1271, 1052);
  objc_msgSend_setInt_forKey_(qword_280A47288, v54, v55, v56, v57, 1292, 1063);
  objc_msgSend_setInt_forKey_(qword_280A47288, v58, v59, v60, v61, 1295, 1064);
  v66 = qword_280A47288;

  return objc_msgSend_setInt_forKey_(v66, v62, v63, v64, v65, 1296, 1065);
}

uint64_t sub_2762CEBD8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47298;
  qword_280A47298 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47298, v2, v3, v4, v5, 1363, 1127);
  objc_msgSend_setInt_forKey_(qword_280A47298, v6, v7, v8, v9, 1364, 1128);
  objc_msgSend_setInt_forKey_(qword_280A47298, v10, v11, v12, v13, 1368, 1131);
  objc_msgSend_setInt_forKey_(qword_280A47298, v14, v15, v16, v17, 1369, 1132);
  objc_msgSend_setInt_forKey_(qword_280A47298, v18, v19, v20, v21, 1370, 1133);
  objc_msgSend_setInt_forKey_(qword_280A47298, v22, v23, v24, v25, 1371, 1136);
  objc_msgSend_setInt_forKey_(qword_280A47298, v26, v27, v28, v29, 1372, 1137);
  objc_msgSend_setInt_forKey_(qword_280A47298, v30, v31, v32, v33, 1376, 1138);
  objc_msgSend_setInt_forKey_(qword_280A47298, v34, v35, v36, v37, 1382, 1139);
  objc_msgSend_setInt_forKey_(qword_280A47298, v38, v39, v40, v41, 1383, 1140);
  objc_msgSend_setInt_forKey_(qword_280A47298, v42, v43, v44, v45, 1384, 1141);
  objc_msgSend_setInt_forKey_(qword_280A47298, v46, v47, v48, v49, 1385, 1142);
  objc_msgSend_setInt_forKey_(qword_280A47298, v50, v51, v52, v53, 1386, 1143);
  objc_msgSend_setInt_forKey_(qword_280A47298, v54, v55, v56, v57, 1387, 1144);
  objc_msgSend_setInt_forKey_(qword_280A47298, v58, v59, v60, v61, 1388, 1145);
  objc_msgSend_setInt_forKey_(qword_280A47298, v62, v63, v64, v65, 1389, 1146);
  objc_msgSend_setInt_forKey_(qword_280A47298, v66, v67, v68, v69, 1390, 1147);
  objc_msgSend_setInt_forKey_(qword_280A47298, v70, v71, v72, v73, 1391, 1148);
  objc_msgSend_setInt_forKey_(qword_280A47298, v74, v75, v76, v77, 1392, 1149);
  objc_msgSend_setInt_forKey_(qword_280A47298, v78, v79, v80, v81, 1393, 1150);
  objc_msgSend_setInt_forKey_(qword_280A47298, v82, v83, v84, v85, 1394, 1151);
  objc_msgSend_setInt_forKey_(qword_280A47298, v86, v87, v88, v89, 1395, 1152);
  objc_msgSend_setInt_forKey_(qword_280A47298, v90, v91, v92, v93, 1396, 1153);
  objc_msgSend_setInt_forKey_(qword_280A47298, v94, v95, v96, v97, 1397, 1154);
  objc_msgSend_setInt_forKey_(qword_280A47298, v98, v99, v100, v101, 1398, 1155);
  objc_msgSend_setInt_forKey_(qword_280A47298, v102, v103, v104, v105, 1399, 1156);
  objc_msgSend_setInt_forKey_(qword_280A47298, v106, v107, v108, v109, 1400, 1157);
  objc_msgSend_setInt_forKey_(qword_280A47298, v110, v111, v112, v113, 1401, 1158);
  objc_msgSend_setInt_forKey_(qword_280A47298, v114, v115, v116, v117, 1402, 1159);
  objc_msgSend_setInt_forKey_(qword_280A47298, v118, v119, v120, v121, 1411, 1160);
  objc_msgSend_setInt_forKey_(qword_280A47298, v122, v123, v124, v125, 1421, 1164);
  objc_msgSend_setInt_forKey_(qword_280A47298, v126, v127, v128, v129, 1432, 1166);
  objc_msgSend_setInt_forKey_(qword_280A47298, v130, v131, v132, v133, 1434, 1167);
  objc_msgSend_setInt_forKey_(qword_280A47298, v134, v135, v136, v137, 1436, 1168);
  objc_msgSend_setInt_forKey_(qword_280A47298, v138, v139, v140, v141, 1439, 1169);
  objc_msgSend_setInt_forKey_(qword_280A47298, v142, v143, v144, v145, 1445, 1171);
  objc_msgSend_setInt_forKey_(qword_280A47298, v146, v147, v148, v149, 1454, 1172);
  objc_msgSend_setInt_forKey_(qword_280A47298, v150, v151, v152, v153, 1462, 1173);
  objc_msgSend_setInt_forKey_(qword_280A47298, v154, v155, v156, v157, 1463, 1174);
  objc_msgSend_setInt_forKey_(qword_280A47298, v158, v159, v160, v161, 1465, 1175);
  objc_msgSend_setInt_forKey_(qword_280A47298, v162, v163, v164, v165, 1477, 1180);
  objc_msgSend_setInt_forKey_(qword_280A47298, v166, v167, v168, v169, 1481, 1181);
  objc_msgSend_setInt_forKey_(qword_280A47298, v170, v171, v172, v173, 1491, 1183);
  objc_msgSend_setInt_forKey_(qword_280A47298, v174, v175, v176, v177, 1545, 1191);
  objc_msgSend_setInt_forKey_(qword_280A47298, v178, v179, v180, v181, 1546, 1192);
  objc_msgSend_setInt_forKey_(qword_280A47298, v182, v183, v184, v185, 1547, 1193);
  objc_msgSend_setInt_forKey_(qword_280A47298, v186, v187, v188, v189, 1548, 1194);
  objc_msgSend_setInt_forKey_(qword_280A47298, v190, v191, v192, v193, 1549, 1195);
  objc_msgSend_setInt_forKey_(qword_280A47298, v194, v195, v196, v197, 1550, 1196);
  objc_msgSend_setInt_forKey_(qword_280A47298, v198, v199, v200, v201, 1551, 1197);
  objc_msgSend_setInt_forKey_(qword_280A47298, v202, v203, v204, v205, 1552, 1198);
  objc_msgSend_setInt_forKey_(qword_280A47298, v206, v207, v208, v209, 1553, 1199);
  objc_msgSend_setInt_forKey_(qword_280A47298, v210, v211, v212, v213, 1554, 1200);
  objc_msgSend_setInt_forKey_(qword_280A47298, v214, v215, v216, v217, 1555, 1201);
  objc_msgSend_setInt_forKey_(qword_280A47298, v218, v219, v220, v221, 1556, 1202);
  objc_msgSend_setInt_forKey_(qword_280A47298, v222, v223, v224, v225, 1557, 1203);
  objc_msgSend_setInt_forKey_(qword_280A47298, v226, v227, v228, v229, 1558, 1204);
  objc_msgSend_setInt_forKey_(qword_280A47298, v230, v231, v232, v233, 1559, 1205);
  objc_msgSend_setInt_forKey_(qword_280A47298, v234, v235, v236, v237, 1560, 1206);
  objc_msgSend_setInt_forKey_(qword_280A47298, v238, v239, v240, v241, 1561, 1207);
  objc_msgSend_setInt_forKey_(qword_280A47298, v242, v243, v244, v245, 1565, 1208);
  objc_msgSend_setInt_forKey_(qword_280A47298, v246, v247, v248, v249, 1574, 1209);
  objc_msgSend_setInt_forKey_(qword_280A47298, v250, v251, v252, v253, 1578, 1212);
  v258 = qword_280A47298;

  return objc_msgSend_setInt_forKey_(v258, v254, v255, v256, v257, 1622, 1134);
}

uint64_t sub_2762CF1A0()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A472A8;
  qword_280A472A8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A472A8, v2, v3, v4, v5, 1584, 1218);
  objc_msgSend_setInt_forKey_(qword_280A472A8, v6, v7, v8, v9, 1585, 1219);
  objc_msgSend_setInt_forKey_(qword_280A472A8, v10, v11, v12, v13, 1586, 1220);
  objc_msgSend_setInt_forKey_(qword_280A472A8, v14, v15, v16, v17, 1587, 1221);
  objc_msgSend_setInt_forKey_(qword_280A472A8, v18, v19, v20, v21, 1588, 1222);
  objc_msgSend_setInt_forKey_(qword_280A472A8, v22, v23, v24, v25, 1589, 1223);
  objc_msgSend_setInt_forKey_(qword_280A472A8, v26, v27, v28, v29, 1590, 1224);
  objc_msgSend_setInt_forKey_(qword_280A472A8, v30, v31, v32, v33, 1591, 1225);
  objc_msgSend_setInt_forKey_(qword_280A472A8, v34, v35, v36, v37, 1592, 1226);
  v42 = qword_280A472A8;

  return objc_msgSend_setInt_forKey_(v42, v38, v39, v40, v41, 1593, 1227);
}

void sub_2762CF408()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1240, 1241, 1242, 1291, 1292, 1293, 1335, 1357, 1362, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1437, 1438, 1439, 1440, 1441, 1442, 1443, 1559, 1561, 1580, 1586, 1593, 1614, 1617, 0);
  v6 = qword_280A472B8;
  qword_280A472B8 = v5;
}

void sub_2762CF558()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1240, 1241, 1242, 1291, 1292, 1293, 1335, 1357, 1362, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1437, 1438, 1439, 1440, 1441, 1442, 1443, 1559, 1561, 1580, 1586, 1593, 0);
  v6 = qword_280A472C8;
  qword_280A472C8 = v5;
}

void sub_2762CF69C()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1034, 1063, 1093, 1096, 1099, 1121, 1126, 1164, 1169, 1205, 1207, 1214, 1220, 1227, 0);
  v6 = qword_280A472D8;
  qword_280A472D8 = v5;
}

void sub_2762CF77C()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1034, 1063, 1099, 1121, 1126, 1164, 1169, 1205, 1207, 1214, 1220, 1227, 0);
  v6 = qword_280A472E8;
  qword_280A472E8 = v5;
}

uint64_t sub_2762CF850()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A472F8;
  qword_280A472F8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A472F8, v2, v3, v4, v5, 1230, 1026);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v6, v7, v8, v9, 1232, 1027);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v10, v11, v12, v13, 1237, 1031);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v14, v15, v16, v17, 1240, 1034);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v18, v19, v20, v21, 1243, 1035);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v22, v23, v24, v25, 1246, 1036);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v26, v27, v28, v29, 1248, 1037);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v30, v31, v32, v33, 1250, 1038);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v34, v35, v36, v37, 1252, 1039);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v38, v39, v40, v41, 1254, 1040);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v42, v43, v44, v45, 1256, 1041);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v46, v47, v48, v49, 1263, 1047);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v50, v51, v52, v53, 1265, 1049);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v54, v55, v56, v57, 1268, 1051);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v58, v59, v60, v61, 1270, 1052);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v62, v63, v64, v65, 1273, 1053);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v66, v67, v68, v69, 1274, 1054);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v70, v71, v72, v73, 1277, 1055);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v74, v75, v76, v77, 1280, 1057);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v78, v79, v80, v81, 1282, 1058);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v82, v83, v84, v85, 1284, 1059);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v86, v87, v88, v89, 1286, 1060);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v90, v91, v92, v93, 1288, 1061);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v94, v95, v96, v97, 1290, 1062);
  objc_msgSend_setInt_forKey_(qword_280A472F8, v98, v99, v100, v101, 1291, 1063);
  v106 = qword_280A472F8;

  return objc_msgSend_setInt_forKey_(v106, v102, v103, v104, v105, 1297, 1066);
}

uint64_t sub_2762CFAC8(uint64_t a1)
{
  v13.receiver = *(a1 + 32);
  v13.super_class = TSCHChartPolarCategoryAxis;
  v1 = objc_msgSendSuper2(&v13, sel_g_genericToSpecificPropertyMap);
  v6 = objc_msgSend_copy(v1, v2, v3, v4, v5);
  v7 = qword_280A47308;
  qword_280A47308 = v6;

  return objc_msgSend_setInt_forKey_(qword_280A47308, v8, v9, v10, v11, 1275, 1054);
}

uint64_t sub_2762CFB80()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47318;
  qword_280A47318 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47318, v2, v3, v4, v5, 1231, 1026);
  objc_msgSend_setInt_forKey_(qword_280A47318, v6, v7, v8, v9, 1233, 1027);
  objc_msgSend_setInt_forKey_(qword_280A47318, v10, v11, v12, v13, 1242, 1034);
  objc_msgSend_setInt_forKey_(qword_280A47318, v14, v15, v16, v17, 1245, 1035);
  objc_msgSend_setInt_forKey_(qword_280A47318, v18, v19, v20, v21, 1247, 1036);
  objc_msgSend_setInt_forKey_(qword_280A47318, v22, v23, v24, v25, 1249, 1037);
  objc_msgSend_setInt_forKey_(qword_280A47318, v26, v27, v28, v29, 1251, 1038);
  objc_msgSend_setInt_forKey_(qword_280A47318, v30, v31, v32, v33, 1253, 1039);
  objc_msgSend_setInt_forKey_(qword_280A47318, v34, v35, v36, v37, 1255, 1040);
  objc_msgSend_setInt_forKey_(qword_280A47318, v38, v39, v40, v41, 1257, 1041);
  objc_msgSend_setInt_forKey_(qword_280A47318, v42, v43, v44, v45, 1260, 1044);
  objc_msgSend_setInt_forKey_(qword_280A47318, v46, v47, v48, v49, 1261, 1045);
  objc_msgSend_setInt_forKey_(qword_280A47318, v50, v51, v52, v53, 1262, 1046);
  objc_msgSend_setInt_forKey_(qword_280A47318, v54, v55, v56, v57, 1264, 1048);
  objc_msgSend_setInt_forKey_(qword_280A47318, v58, v59, v60, v61, 1266, 1049);
  objc_msgSend_setInt_forKey_(qword_280A47318, v62, v63, v64, v65, 1269, 1051);
  objc_msgSend_setInt_forKey_(qword_280A47318, v66, v67, v68, v69, 1272, 1052);
  objc_msgSend_setInt_forKey_(qword_280A47318, v70, v71, v72, v73, 1276, 1054);
  objc_msgSend_setInt_forKey_(qword_280A47318, v74, v75, v76, v77, 1278, 1055);
  objc_msgSend_setInt_forKey_(qword_280A47318, v78, v79, v80, v81, 1279, 1056);
  objc_msgSend_setInt_forKey_(qword_280A47318, v82, v83, v84, v85, 1281, 1057);
  objc_msgSend_setInt_forKey_(qword_280A47318, v86, v87, v88, v89, 1283, 1058);
  objc_msgSend_setInt_forKey_(qword_280A47318, v90, v91, v92, v93, 1287, 1060);
  objc_msgSend_setInt_forKey_(qword_280A47318, v94, v95, v96, v97, 1289, 1061);
  objc_msgSend_setInt_forKey_(qword_280A47318, v98, v99, v100, v101, 1293, 1063);
  v106 = qword_280A47318;

  return objc_msgSend_setInt_forKey_(v106, v102, v103, v104, v105, 1294, 1062);
}

uint64_t sub_2762CFDA8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47328;
  qword_280A47328 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47328, v2, v3, v4, v5, 1307, 1071);
  objc_msgSend_setInt_forKey_(qword_280A47328, v6, v7, v8, v9, 1314, 1073);
  objc_msgSend_setInt_forKey_(qword_280A47328, v10, v11, v12, v13, 1327, 1081);
  objc_msgSend_setInt_forKey_(qword_280A47328, v14, v15, v16, v17, 1598, 1084);
  objc_msgSend_setInt_forKey_(qword_280A47328, v18, v19, v20, v21, 1604, 1085);
  v26 = qword_280A47328;

  return objc_msgSend_setInt_forKey_(v26, v22, v23, v24, v25, 1609, 1086);
}

void sub_2762CFE90()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47338;
  qword_280A47338 = v0;
}

uint64_t sub_2762CFF10()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47348;
  qword_280A47348 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47348, v2, v3, v4, v5, 1303, 1071);
  objc_msgSend_setInt_forKey_(qword_280A47348, v6, v7, v8, v9, 1310, 1073);
  objc_msgSend_setInt_forKey_(qword_280A47348, v10, v11, v12, v13, 1323, 1081);
  objc_msgSend_setInt_forKey_(qword_280A47348, v14, v15, v16, v17, 1595, 1084);
  objc_msgSend_setInt_forKey_(qword_280A47348, v18, v19, v20, v21, 1600, 1085);
  v26 = qword_280A47348;

  return objc_msgSend_setInt_forKey_(v26, v22, v23, v24, v25, 1606, 1086);
}

uint64_t sub_2762CFFF8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47358;
  qword_280A47358 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47358, v2, v3, v4, v5, 1304, 1071);
  objc_msgSend_setInt_forKey_(qword_280A47358, v6, v7, v8, v9, 1311, 1073);
  objc_msgSend_setInt_forKey_(qword_280A47358, v10, v11, v12, v13, 1596, 1084);
  objc_msgSend_setInt_forKey_(qword_280A47358, v14, v15, v16, v17, 1601, 1085);
  v22 = qword_280A47358;

  return objc_msgSend_setInt_forKey_(v22, v18, v19, v20, v21, 1607, 1086);
}

uint64_t sub_2762D00D0()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47368;
  qword_280A47368 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47368, v2, v3, v4, v5, 1302, 1071);
  objc_msgSend_setInt_forKey_(qword_280A47368, v6, v7, v8, v9, 1309, 1073);
  objc_msgSend_setInt_forKey_(qword_280A47368, v10, v11, v12, v13, 1322, 1081);
  objc_msgSend_setInt_forKey_(qword_280A47368, v14, v15, v16, v17, 1599, 1085);
  v22 = qword_280A47368;

  return objc_msgSend_setInt_forKey_(v22, v18, v19, v20, v21, 1605, 1086);
}

uint64_t sub_2762D01A8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47378;
  qword_280A47378 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47378, v2, v3, v4, v5, 1306, 1071);
  objc_msgSend_setInt_forKey_(qword_280A47378, v6, v7, v8, v9, 1313, 1073);
  objc_msgSend_setInt_forKey_(qword_280A47378, v10, v11, v12, v13, 1326, 1081);
  objc_msgSend_setInt_forKey_(qword_280A47378, v14, v15, v16, v17, 1603, 1085);
  v22 = qword_280A47378;

  return objc_msgSend_setInt_forKey_(v22, v18, v19, v20, v21, 1608, 1086);
}

uint64_t sub_2762D0280()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47388;
  qword_280A47388 = v0;

  v6 = qword_280A47388;

  return objc_msgSend_setInt_forKey_(v6, v2, v3, v4, v5, 1328, 1081);
}

void sub_2762D0318()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47398;
  qword_280A47398 = v0;
}

uint64_t sub_2762D0398()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A473A8;
  qword_280A473A8 = v0;

  v6 = qword_280A473A8;

  return objc_msgSend_setInt_forKey_(v6, v2, v3, v4, v5, 1330, 1081);
}

uint64_t sub_2762D0430()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A473B8;
  qword_280A473B8 = v0;

  v6 = qword_280A473B8;

  return objc_msgSend_setInt_forKey_(v6, v2, v3, v4, v5, 1329, 1081);
}

void sub_2762D04C8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A473C8;
  qword_280A473C8 = v0;
}

void sub_2762D0548()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A473D8;
  qword_280A473D8 = v0;
}

uint64_t sub_2762D05C8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A473E8;
  qword_280A473E8 = v0;

  v6 = qword_280A473E8;

  return objc_msgSend_setInt_forKey_(v6, v2, v3, v4, v5, 1324, 1081);
}

void sub_2762D0660()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A473F8;
  qword_280A473F8 = v0;
}

uint64_t sub_2762D06E0()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47408;
  qword_280A47408 = v0;

  v6 = qword_280A47408;

  return objc_msgSend_setInt_forKey_(v6, v2, v3, v4, v5, 1285, 1059);
}

uint64_t sub_2762D0778()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47418;
  qword_280A47418 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47418, v2, v3, v4, v5, 1365, 1128);
  objc_msgSend_setInt_forKey_(qword_280A47418, v6, v7, v8, v9, 1366, 1129);
  objc_msgSend_setInt_forKey_(qword_280A47418, v10, v11, v12, v13, 1378, 1138);
  objc_msgSend_setInt_forKey_(qword_280A47418, v14, v15, v16, v17, 1414, 1160);
  objc_msgSend_setInt_forKey_(qword_280A47418, v18, v19, v20, v21, 1418, 1163);
  objc_msgSend_setInt_forKey_(qword_280A47418, v22, v23, v24, v25, 1425, 1164);
  objc_msgSend_setInt_forKey_(qword_280A47418, v26, v27, v28, v29, 1433, 1166);
  objc_msgSend_setInt_forKey_(qword_280A47418, v30, v31, v32, v33, 1435, 1167);
  objc_msgSend_setInt_forKey_(qword_280A47418, v34, v35, v36, v37, 1442, 1169);
  objc_msgSend_setInt_forKey_(qword_280A47418, v38, v39, v40, v41, 1459, 1172);
  objc_msgSend_setInt_forKey_(qword_280A47418, v42, v43, v44, v45, 1469, 1178);
  objc_msgSend_setInt_forKey_(qword_280A47418, v46, v47, v48, v49, 1484, 1181);
  objc_msgSend_setInt_forKey_(qword_280A47418, v50, v51, v52, v53, 1493, 1183);
  objc_msgSend_setInt_forKey_(qword_280A47418, v54, v55, v56, v57, 1504, 1184);
  objc_msgSend_setInt_forKey_(qword_280A47418, v58, v59, v60, v61, 1577, 1211);
  objc_msgSend_setInt_forKey_(qword_280A47418, v62, v63, v64, v65, 1624, 1134);
  v70 = qword_280A47418;

  return objc_msgSend_setInt_forKey_(v70, v66, v67, v68, v69, 1625, 1135);
}

uint64_t sub_2762D0910()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47428;
  qword_280A47428 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47428, v2, v3, v4, v5, 1422, 1164);
  v10 = qword_280A47428;

  return objc_msgSend_setInt_forKey_(v10, v6, v7, v8, v9, 1440, 1169);
}

uint64_t sub_2762D09B8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47438;
  qword_280A47438 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47438, v2, v3, v4, v5, 1379, 1138);
  objc_msgSend_setInt_forKey_(qword_280A47438, v6, v7, v8, v9, 1431, 1165);
  objc_msgSend_setInt_forKey_(qword_280A47438, v10, v11, v12, v13, 1461, 1172);
  objc_msgSend_setInt_forKey_(qword_280A47438, v14, v15, v16, v17, 1466, 1176);
  objc_msgSend_setInt_forKey_(qword_280A47438, v18, v19, v20, v21, 1470, 1178);
  objc_msgSend_setInt_forKey_(qword_280A47438, v22, v23, v24, v25, 1476, 1179);
  objc_msgSend_setInt_forKey_(qword_280A47438, v26, v27, v28, v29, 1486, 1181);
  objc_msgSend_setInt_forKey_(qword_280A47438, v30, v31, v32, v33, 1494, 1183);
  objc_msgSend_setInt_forKey_(qword_280A47438, v34, v35, v36, v37, 1506, 1184);
  objc_msgSend_setInt_forKey_(qword_280A47438, v38, v39, v40, v41, 1513, 1185);
  objc_msgSend_setInt_forKey_(qword_280A47438, v42, v43, v44, v45, 1525, 1187);
  objc_msgSend_setInt_forKey_(qword_280A47438, v46, v47, v48, v49, 1531, 1188);
  objc_msgSend_setInt_forKey_(qword_280A47438, v50, v51, v52, v53, 1538, 1189);
  objc_msgSend_setInt_forKey_(qword_280A47438, v54, v55, v56, v57, 1544, 1190);
  objc_msgSend_setInt_forKey_(qword_280A47438, v58, v59, v60, v61, 1571, 1208);
  v66 = qword_280A47438;

  return objc_msgSend_setInt_forKey_(v66, v62, v63, v64, v65, 1576, 1210);
}

uint64_t sub_2762D0B40()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47448;
  qword_280A47448 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47448, v2, v3, v4, v5, 1367, 1130);
  objc_msgSend_setInt_forKey_(qword_280A47448, v6, v7, v8, v9, 1375, 1138);
  objc_msgSend_setInt_forKey_(qword_280A47448, v10, v11, v12, v13, 1427, 1165);
  objc_msgSend_setInt_forKey_(qword_280A47448, v14, v15, v16, v17, 1453, 1172);
  objc_msgSend_setInt_forKey_(qword_280A47448, v18, v19, v20, v21, 1464, 1175);
  objc_msgSend_setInt_forKey_(qword_280A47448, v22, v23, v24, v25, 1467, 1177);
  objc_msgSend_setInt_forKey_(qword_280A47448, v26, v27, v28, v29, 1468, 1178);
  objc_msgSend_setInt_forKey_(qword_280A47448, v30, v31, v32, v33, 1480, 1181);
  objc_msgSend_setInt_forKey_(qword_280A47448, v34, v35, v36, v37, 1487, 1182);
  objc_msgSend_setInt_forKey_(qword_280A47448, v38, v39, v40, v41, 1490, 1183);
  objc_msgSend_setInt_forKey_(qword_280A47448, v42, v43, v44, v45, 1499, 1184);
  objc_msgSend_setInt_forKey_(qword_280A47448, v46, v47, v48, v49, 1508, 1185);
  objc_msgSend_setInt_forKey_(qword_280A47448, v50, v51, v52, v53, 1520, 1187);
  objc_msgSend_setInt_forKey_(qword_280A47448, v54, v55, v56, v57, 1533, 1189);
  objc_msgSend_setInt_forKey_(qword_280A47448, v58, v59, v60, v61, 1564, 1208);
  v66 = qword_280A47448;

  return objc_msgSend_setInt_forKey_(v66, v62, v63, v64, v65, 1575, 1210);
}

uint64_t sub_2762D0CC8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47458;
  qword_280A47458 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47458, v2, v3, v4, v5, 1374, 1138);
  objc_msgSend_setInt_forKey_(qword_280A47458, v6, v7, v8, v9, 1409, 1160);
  objc_msgSend_setInt_forKey_(qword_280A47458, v10, v11, v12, v13, 1420, 1164);
  objc_msgSend_setInt_forKey_(qword_280A47458, v14, v15, v16, v17, 1438, 1169);
  objc_msgSend_setInt_forKey_(qword_280A47458, v18, v19, v20, v21, 1452, 1172);
  objc_msgSend_setInt_forKey_(qword_280A47458, v22, v23, v24, v25, 1479, 1181);
  objc_msgSend_setInt_forKey_(qword_280A47458, v26, v27, v28, v29, 1489, 1183);
  objc_msgSend_setInt_forKey_(qword_280A47458, v30, v31, v32, v33, 1498, 1184);
  objc_msgSend_setInt_forKey_(qword_280A47458, v34, v35, v36, v37, 1563, 1208);
  v42 = qword_280A47458;

  return objc_msgSend_setInt_forKey_(v42, v38, v39, v40, v41, 1620, 1134);
}

uint64_t sub_2762D0DF0()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47468;
  qword_280A47468 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47468, v2, v3, v4, v5, 1410, 1160);
  v10 = qword_280A47468;

  return objc_msgSend_setInt_forKey_(v10, v6, v7, v8, v9, 1621, 1134);
}

uint64_t sub_2762D0E98()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47478;
  qword_280A47478 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47478, v2, v3, v4, v5, 1377, 1138);
  objc_msgSend_setInt_forKey_(qword_280A47478, v6, v7, v8, v9, 1423, 1164);
  objc_msgSend_setInt_forKey_(qword_280A47478, v10, v11, v12, v13, 1428, 1165);
  objc_msgSend_setInt_forKey_(qword_280A47478, v14, v15, v16, v17, 1455, 1172);
  objc_msgSend_setInt_forKey_(qword_280A47478, v18, v19, v20, v21, 1472, 1179);
  objc_msgSend_setInt_forKey_(qword_280A47478, v22, v23, v24, v25, 1482, 1181);
  objc_msgSend_setInt_forKey_(qword_280A47478, v26, v27, v28, v29, 1492, 1183);
  objc_msgSend_setInt_forKey_(qword_280A47478, v30, v31, v32, v33, 1500, 1184);
  objc_msgSend_setInt_forKey_(qword_280A47478, v34, v35, v36, v37, 1509, 1185);
  objc_msgSend_setInt_forKey_(qword_280A47478, v38, v39, v40, v41, 1515, 1186);
  objc_msgSend_setInt_forKey_(qword_280A47478, v42, v43, v44, v45, 1521, 1187);
  objc_msgSend_setInt_forKey_(qword_280A47478, v46, v47, v48, v49, 1527, 1188);
  objc_msgSend_setInt_forKey_(qword_280A47478, v50, v51, v52, v53, 1534, 1189);
  objc_msgSend_setInt_forKey_(qword_280A47478, v54, v55, v56, v57, 1540, 1190);
  objc_msgSend_setInt_forKey_(qword_280A47478, v58, v59, v60, v61, 1566, 1208);
  v66 = qword_280A47478;

  return objc_msgSend_setInt_forKey_(v66, v62, v63, v64, v65, 1623, 1134);
}

uint64_t sub_2762D1020()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47488;
  qword_280A47488 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47488, v2, v3, v4, v5, 1373, 1138);
  objc_msgSend_setInt_forKey_(qword_280A47488, v6, v7, v8, v9, 1408, 1160);
  objc_msgSend_setInt_forKey_(qword_280A47488, v10, v11, v12, v13, 1419, 1164);
  objc_msgSend_setInt_forKey_(qword_280A47488, v14, v15, v16, v17, 1437, 1169);
  objc_msgSend_setInt_forKey_(qword_280A47488, v18, v19, v20, v21, 1451, 1172);
  objc_msgSend_setInt_forKey_(qword_280A47488, v22, v23, v24, v25, 1471, 1179);
  objc_msgSend_setInt_forKey_(qword_280A47488, v26, v27, v28, v29, 1478, 1181);
  objc_msgSend_setInt_forKey_(qword_280A47488, v30, v31, v32, v33, 1488, 1183);
  objc_msgSend_setInt_forKey_(qword_280A47488, v34, v35, v36, v37, 1497, 1184);
  objc_msgSend_setInt_forKey_(qword_280A47488, v38, v39, v40, v41, 1507, 1185);
  objc_msgSend_setInt_forKey_(qword_280A47488, v42, v43, v44, v45, 1514, 1186);
  objc_msgSend_setInt_forKey_(qword_280A47488, v46, v47, v48, v49, 1519, 1187);
  objc_msgSend_setInt_forKey_(qword_280A47488, v50, v51, v52, v53, 1526, 1188);
  objc_msgSend_setInt_forKey_(qword_280A47488, v54, v55, v56, v57, 1532, 1189);
  objc_msgSend_setInt_forKey_(qword_280A47488, v58, v59, v60, v61, 1539, 1190);
  objc_msgSend_setInt_forKey_(qword_280A47488, v62, v63, v64, v65, 1562, 1208);
  v70 = qword_280A47488;

  return objc_msgSend_setInt_forKey_(v70, v66, v67, v68, v69, 1619, 1134);
}

uint64_t sub_2762D11B8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47498;
  qword_280A47498 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47498, v2, v3, v4, v5, 1380, 1138);
  objc_msgSend_setInt_forKey_(qword_280A47498, v6, v7, v8, v9, 1495, 1183);
  objc_msgSend_setInt_forKey_(qword_280A47498, v10, v11, v12, v13, 1572, 1208);
  v18 = qword_280A47498;

  return objc_msgSend_setInt_forKey_(v18, v14, v15, v16, v17, 1444, 1170);
}

uint64_t sub_2762D1280()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A474A8;
  qword_280A474A8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A474A8, v2, v3, v4, v5, 1381, 1138);
  objc_msgSend_setInt_forKey_(qword_280A474A8, v6, v7, v8, v9, 1496, 1183);
  objc_msgSend_setInt_forKey_(qword_280A474A8, v10, v11, v12, v13, 1573, 1208);
  v18 = qword_280A474A8;

  return objc_msgSend_setInt_forKey_(v18, v14, v15, v16, v17, 1444, 1170);
}

uint64_t sub_2762D1348()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A474B8;
  qword_280A474B8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A474B8, v2, v3, v4, v5, 1381, 1138);
  objc_msgSend_setInt_forKey_(qword_280A474B8, v6, v7, v8, v9, 1496, 1183);
  objc_msgSend_setInt_forKey_(qword_280A474B8, v10, v11, v12, v13, 1573, 1208);
  v18 = qword_280A474B8;

  return objc_msgSend_setInt_forKey_(v18, v14, v15, v16, v17, 1444, 1170);
}

uint64_t sub_2762D1410()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A474C8;
  qword_280A474C8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A474C8, v2, v3, v4, v5, 1413, 1160);
  objc_msgSend_setInt_forKey_(qword_280A474C8, v6, v7, v8, v9, 1457, 1172);
  objc_msgSend_setInt_forKey_(qword_280A474C8, v10, v11, v12, v13, 1502, 1184);
  objc_msgSend_setInt_forKey_(qword_280A474C8, v14, v15, v16, v17, 1568, 1208);
  objc_msgSend_setInt_forKey_(qword_280A474C8, v18, v19, v20, v21, 1424, 1164);
  objc_msgSend_setInt_forKey_(qword_280A474C8, v22, v23, v24, v25, 1441, 1169);
  v30 = qword_280A474C8;

  return objc_msgSend_setInt_forKey_(v30, v26, v27, v28, v29, 1483, 1181);
}

uint64_t sub_2762D1508()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A474D8;
  qword_280A474D8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A474D8, v2, v3, v4, v5, 1429, 1165);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v6, v7, v8, v9, 1458, 1172);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v10, v11, v12, v13, 1474, 1179);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v14, v15, v16, v17, 1503, 1184);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v18, v19, v20, v21, 1511, 1185);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v22, v23, v24, v25, 1517, 1186);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v26, v27, v28, v29, 1523, 1187);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v30, v31, v32, v33, 1529, 1188);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v34, v35, v36, v37, 1536, 1189);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v38, v39, v40, v41, 1542, 1190);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v42, v43, v44, v45, 1569, 1208);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v46, v47, v48, v49, 1424, 1164);
  objc_msgSend_setInt_forKey_(qword_280A474D8, v50, v51, v52, v53, 1441, 1169);
  v58 = qword_280A474D8;

  return objc_msgSend_setInt_forKey_(v58, v54, v55, v56, v57, 1483, 1181);
}

uint64_t sub_2762D1670()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A474E8;
  qword_280A474E8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A474E8, v2, v3, v4, v5, 1412, 1160);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v6, v7, v8, v9, 1456, 1172);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v10, v11, v12, v13, 1473, 1179);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v14, v15, v16, v17, 1501, 1184);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v18, v19, v20, v21, 1510, 1185);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v22, v23, v24, v25, 1516, 1186);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v26, v27, v28, v29, 1522, 1187);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v30, v31, v32, v33, 1528, 1188);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v34, v35, v36, v37, 1535, 1189);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v38, v39, v40, v41, 1541, 1190);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v42, v43, v44, v45, 1567, 1208);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v46, v47, v48, v49, 1424, 1164);
  objc_msgSend_setInt_forKey_(qword_280A474E8, v50, v51, v52, v53, 1441, 1169);
  v58 = qword_280A474E8;

  return objc_msgSend_setInt_forKey_(v58, v54, v55, v56, v57, 1483, 1181);
}

uint64_t sub_2762D17D8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A474F8;
  qword_280A474F8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A474F8, v2, v3, v4, v5, 1415, 1160);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v6, v7, v8, v9, 1416, 1162);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v10, v11, v12, v13, 1417, 1161);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v14, v15, v16, v17, 1430, 1165);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v18, v19, v20, v21, 1460, 1172);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v22, v23, v24, v25, 1475, 1179);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v26, v27, v28, v29, 1505, 1184);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v30, v31, v32, v33, 1512, 1185);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v34, v35, v36, v37, 1518, 1186);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v38, v39, v40, v41, 1524, 1187);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v42, v43, v44, v45, 1530, 1188);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v46, v47, v48, v49, 1537, 1189);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v50, v51, v52, v53, 1543, 1190);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v54, v55, v56, v57, 1570, 1208);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v58, v59, v60, v61, 1426, 1164);
  objc_msgSend_setInt_forKey_(qword_280A474F8, v62, v63, v64, v65, 1443, 1169);
  v70 = qword_280A474F8;

  return objc_msgSend_setInt_forKey_(v70, v66, v67, v68, v69, 1485, 1181);
}

uint64_t sub_2762D1970()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47508;
  qword_280A47508 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47508, v2, v3, v4, v5, 1405, 1160);
  v10 = qword_280A47508;

  return objc_msgSend_setInt_forKey_(v10, v6, v7, v8, v9, 1448, 1172);
}

uint64_t sub_2762D1A18()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47518;
  qword_280A47518 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47518, v2, v3, v4, v5, 1404, 1160);
  v10 = qword_280A47518;

  return objc_msgSend_setInt_forKey_(v10, v6, v7, v8, v9, 1447, 1172);
}

uint64_t sub_2762D1AC0()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47528;
  qword_280A47528 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47528, v2, v3, v4, v5, 1406, 1160);
  v10 = qword_280A47528;

  return objc_msgSend_setInt_forKey_(v10, v6, v7, v8, v9, 1449, 1172);
}

uint64_t sub_2762D1B68()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47538;
  qword_280A47538 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47538, v2, v3, v4, v5, 1403, 1160);
  v10 = qword_280A47538;

  return objc_msgSend_setInt_forKey_(v10, v6, v7, v8, v9, 1446, 1172);
}

uint64_t sub_2762D1C10()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47548;
  qword_280A47548 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47548, v2, v3, v4, v5, 1407, 1160);
  v10 = qword_280A47548;

  return objc_msgSend_setInt_forKey_(v10, v6, v7, v8, v9, 1450, 1172);
}

void sub_2762D1CB8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47558;
  qword_280A47558 = v0;
}

uint64_t sub_2762D1EC4()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47568;
  qword_280A47568 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47568, v2, v3, v4, v5, 1024, 1228);
  objc_msgSend_setInt_forKey_(qword_280A47568, v6, v7, v8, v9, 1025, 1229);
  objc_msgSend_setInt_forKey_(qword_280A47568, v10, v11, v12, v13, 1026, 1230);
  objc_msgSend_setInt_forKey_(qword_280A47568, v14, v15, v16, v17, 1026, 1231);
  objc_msgSend_setInt_forKey_(qword_280A47568, v18, v19, v20, v21, 1027, 1232);
  objc_msgSend_setInt_forKey_(qword_280A47568, v22, v23, v24, v25, 1027, 1233);
  objc_msgSend_setInt_forKey_(qword_280A47568, v26, v27, v28, v29, 1028, 1234);
  objc_msgSend_setInt_forKey_(qword_280A47568, v30, v31, v32, v33, 1029, 1235);
  objc_msgSend_setInt_forKey_(qword_280A47568, v34, v35, v36, v37, 1030, 1236);
  objc_msgSend_setInt_forKey_(qword_280A47568, v38, v39, v40, v41, 1031, 1237);
  objc_msgSend_setInt_forKey_(qword_280A47568, v42, v43, v44, v45, 1032, 1238);
  objc_msgSend_setInt_forKey_(qword_280A47568, v46, v47, v48, v49, 1033, 1239);
  objc_msgSend_setInt_forKey_(qword_280A47568, v50, v51, v52, v53, 1034, 1240);
  objc_msgSend_setInt_forKey_(qword_280A47568, v54, v55, v56, v57, 1034, 1241);
  objc_msgSend_setInt_forKey_(qword_280A47568, v58, v59, v60, v61, 1034, 1242);
  objc_msgSend_setInt_forKey_(qword_280A47568, v62, v63, v64, v65, 1035, 1243);
  objc_msgSend_setInt_forKey_(qword_280A47568, v66, v67, v68, v69, 1035, 1244);
  objc_msgSend_setInt_forKey_(qword_280A47568, v70, v71, v72, v73, 1035, 1245);
  objc_msgSend_setInt_forKey_(qword_280A47568, v74, v75, v76, v77, 1036, 1246);
  objc_msgSend_setInt_forKey_(qword_280A47568, v78, v79, v80, v81, 1036, 1247);
  objc_msgSend_setInt_forKey_(qword_280A47568, v82, v83, v84, v85, 1037, 1248);
  objc_msgSend_setInt_forKey_(qword_280A47568, v86, v87, v88, v89, 1037, 1249);
  objc_msgSend_setInt_forKey_(qword_280A47568, v90, v91, v92, v93, 1038, 1250);
  objc_msgSend_setInt_forKey_(qword_280A47568, v94, v95, v96, v97, 1038, 1251);
  objc_msgSend_setInt_forKey_(qword_280A47568, v98, v99, v100, v101, 1039, 1252);
  objc_msgSend_setInt_forKey_(qword_280A47568, v102, v103, v104, v105, 1039, 1253);
  objc_msgSend_setInt_forKey_(qword_280A47568, v106, v107, v108, v109, 1040, 1254);
  objc_msgSend_setInt_forKey_(qword_280A47568, v110, v111, v112, v113, 1040, 1255);
  objc_msgSend_setInt_forKey_(qword_280A47568, v114, v115, v116, v117, 1041, 1256);
  objc_msgSend_setInt_forKey_(qword_280A47568, v118, v119, v120, v121, 1041, 1257);
  objc_msgSend_setInt_forKey_(qword_280A47568, v122, v123, v124, v125, 1042, 1258);
  objc_msgSend_setInt_forKey_(qword_280A47568, v126, v127, v128, v129, 1043, 1259);
  objc_msgSend_setInt_forKey_(qword_280A47568, v130, v131, v132, v133, 1044, 1260);
  objc_msgSend_setInt_forKey_(qword_280A47568, v134, v135, v136, v137, 1045, 1261);
  objc_msgSend_setInt_forKey_(qword_280A47568, v138, v139, v140, v141, 1046, 1262);
  objc_msgSend_setInt_forKey_(qword_280A47568, v142, v143, v144, v145, 1047, 1263);
  objc_msgSend_setInt_forKey_(qword_280A47568, v146, v147, v148, v149, 1048, 1264);
  objc_msgSend_setInt_forKey_(qword_280A47568, v150, v151, v152, v153, 1049, 1265);
  objc_msgSend_setInt_forKey_(qword_280A47568, v154, v155, v156, v157, 1049, 1266);
  objc_msgSend_setInt_forKey_(qword_280A47568, v158, v159, v160, v161, 1050, 1267);
  objc_msgSend_setInt_forKey_(qword_280A47568, v162, v163, v164, v165, 1051, 1268);
  objc_msgSend_setInt_forKey_(qword_280A47568, v166, v167, v168, v169, 1051, 1269);
  objc_msgSend_setInt_forKey_(qword_280A47568, v170, v171, v172, v173, 1052, 1270);
  objc_msgSend_setInt_forKey_(qword_280A47568, v174, v175, v176, v177, 1052, 1271);
  objc_msgSend_setInt_forKey_(qword_280A47568, v178, v179, v180, v181, 1052, 1272);
  objc_msgSend_setInt_forKey_(qword_280A47568, v182, v183, v184, v185, 1053, 1273);
  objc_msgSend_setInt_forKey_(qword_280A47568, v186, v187, v188, v189, 1054, 1274);
  objc_msgSend_setInt_forKey_(qword_280A47568, v190, v191, v192, v193, 1054, 1275);
  objc_msgSend_setInt_forKey_(qword_280A47568, v194, v195, v196, v197, 1054, 1276);
  objc_msgSend_setInt_forKey_(qword_280A47568, v198, v199, v200, v201, 1055, 1277);
  objc_msgSend_setInt_forKey_(qword_280A47568, v202, v203, v204, v205, 1055, 1278);
  objc_msgSend_setInt_forKey_(qword_280A47568, v206, v207, v208, v209, 1056, 1279);
  objc_msgSend_setInt_forKey_(qword_280A47568, v210, v211, v212, v213, 1057, 1280);
  objc_msgSend_setInt_forKey_(qword_280A47568, v214, v215, v216, v217, 1057, 1281);
  objc_msgSend_setInt_forKey_(qword_280A47568, v218, v219, v220, v221, 1058, 1282);
  objc_msgSend_setInt_forKey_(qword_280A47568, v222, v223, v224, v225, 1058, 1283);
  objc_msgSend_setInt_forKey_(qword_280A47568, v226, v227, v228, v229, 1059, 1284);
  objc_msgSend_setInt_forKey_(qword_280A47568, v230, v231, v232, v233, 1059, 1285);
  objc_msgSend_setInt_forKey_(qword_280A47568, v234, v235, v236, v237, 1060, 1286);
  objc_msgSend_setInt_forKey_(qword_280A47568, v238, v239, v240, v241, 1060, 1287);
  objc_msgSend_setInt_forKey_(qword_280A47568, v242, v243, v244, v245, 1061, 1288);
  objc_msgSend_setInt_forKey_(qword_280A47568, v246, v247, v248, v249, 1061, 1289);
  objc_msgSend_setInt_forKey_(qword_280A47568, v250, v251, v252, v253, 1062, 1290);
  objc_msgSend_setInt_forKey_(qword_280A47568, v254, v255, v256, v257, 1063, 1291);
  objc_msgSend_setInt_forKey_(qword_280A47568, v258, v259, v260, v261, 1063, 1292);
  objc_msgSend_setInt_forKey_(qword_280A47568, v262, v263, v264, v265, 1063, 1293);
  objc_msgSend_setInt_forKey_(qword_280A47568, v266, v267, v268, v269, 1062, 1294);
  objc_msgSend_setInt_forKey_(qword_280A47568, v270, v271, v272, v273, 1064, 1295);
  objc_msgSend_setInt_forKey_(qword_280A47568, v274, v275, v276, v277, 1065, 1296);
  objc_msgSend_setInt_forKey_(qword_280A47568, v278, v279, v280, v281, 1066, 1297);
  objc_msgSend_setInt_forKey_(qword_280A47568, v282, v283, v284, v285, 1067, 1298);
  objc_msgSend_setInt_forKey_(qword_280A47568, v286, v287, v288, v289, 1068, 1299);
  objc_msgSend_setInt_forKey_(qword_280A47568, v290, v291, v292, v293, 1069, 1300);
  objc_msgSend_setInt_forKey_(qword_280A47568, v294, v295, v296, v297, 1070, 1301);
  objc_msgSend_setInt_forKey_(qword_280A47568, v298, v299, v300, v301, 1071, 1302);
  objc_msgSend_setInt_forKey_(qword_280A47568, v302, v303, v304, v305, 1071, 1303);
  objc_msgSend_setInt_forKey_(qword_280A47568, v306, v307, v308, v309, 1071, 1304);
  objc_msgSend_setInt_forKey_(qword_280A47568, v310, v311, v312, v313, 1071, 1305);
  objc_msgSend_setInt_forKey_(qword_280A47568, v314, v315, v316, v317, 1071, 1306);
  objc_msgSend_setInt_forKey_(qword_280A47568, v318, v319, v320, v321, 1071, 1307);
  objc_msgSend_setInt_forKey_(qword_280A47568, v322, v323, v324, v325, 1072, 1308);
  objc_msgSend_setInt_forKey_(qword_280A47568, v326, v327, v328, v329, 1073, 1309);
  objc_msgSend_setInt_forKey_(qword_280A47568, v330, v331, v332, v333, 1073, 1310);
  objc_msgSend_setInt_forKey_(qword_280A47568, v334, v335, v336, v337, 1073, 1311);
  objc_msgSend_setInt_forKey_(qword_280A47568, v338, v339, v340, v341, 1073, 1312);
  objc_msgSend_setInt_forKey_(qword_280A47568, v342, v343, v344, v345, 1073, 1313);
  objc_msgSend_setInt_forKey_(qword_280A47568, v346, v347, v348, v349, 1073, 1314);
  objc_msgSend_setInt_forKey_(qword_280A47568, v350, v351, v352, v353, 1074, 1315);
  objc_msgSend_setInt_forKey_(qword_280A47568, v354, v355, v356, v357, 1075, 1316);
  objc_msgSend_setInt_forKey_(qword_280A47568, v358, v359, v360, v361, 1076, 1317);
  objc_msgSend_setInt_forKey_(qword_280A47568, v362, v363, v364, v365, 1077, 1318);
  objc_msgSend_setInt_forKey_(qword_280A47568, v366, v367, v368, v369, 1078, 1319);
  objc_msgSend_setInt_forKey_(qword_280A47568, v370, v371, v372, v373, 1079, 1320);
  objc_msgSend_setInt_forKey_(qword_280A47568, v374, v375, v376, v377, 1080, 1321);
  objc_msgSend_setInt_forKey_(qword_280A47568, v378, v379, v380, v381, 1081, 1322);
  objc_msgSend_setInt_forKey_(qword_280A47568, v382, v383, v384, v385, 1081, 1323);
  objc_msgSend_setInt_forKey_(qword_280A47568, v386, v387, v388, v389, 1081, 1324);
  objc_msgSend_setInt_forKey_(qword_280A47568, v390, v391, v392, v393, 1081, 1325);
  objc_msgSend_setInt_forKey_(qword_280A47568, v394, v395, v396, v397, 1081, 1326);
  objc_msgSend_setInt_forKey_(qword_280A47568, v398, v399, v400, v401, 1081, 1327);
  objc_msgSend_setInt_forKey_(qword_280A47568, v402, v403, v404, v405, 1081, 1328);
  objc_msgSend_setInt_forKey_(qword_280A47568, v406, v407, v408, v409, 1081, 1329);
  objc_msgSend_setInt_forKey_(qword_280A47568, v410, v411, v412, v413, 1081, 1330);
  objc_msgSend_setInt_forKey_(qword_280A47568, v414, v415, v416, v417, 1082, 1331);
  objc_msgSend_setInt_forKey_(qword_280A47568, v418, v419, v420, v421, 1090, 1332);
  objc_msgSend_setInt_forKey_(qword_280A47568, v422, v423, v424, v425, 1091, 1333);
  objc_msgSend_setInt_forKey_(qword_280A47568, v426, v427, v428, v429, 1098, 1334);
  objc_msgSend_setInt_forKey_(qword_280A47568, v430, v431, v432, v433, 1099, 1335);
  objc_msgSend_setInt_forKey_(qword_280A47568, v434, v435, v436, v437, 1100, 1336);
  objc_msgSend_setInt_forKey_(qword_280A47568, v438, v439, v440, v441, 1101, 1337);
  objc_msgSend_setInt_forKey_(qword_280A47568, v442, v443, v444, v445, 1102, 1338);
  objc_msgSend_setInt_forKey_(qword_280A47568, v446, v447, v448, v449, 1103, 1339);
  objc_msgSend_setInt_forKey_(qword_280A47568, v450, v451, v452, v453, 1104, 1340);
  objc_msgSend_setInt_forKey_(qword_280A47568, v454, v455, v456, v457, 1105, 1341);
  objc_msgSend_setInt_forKey_(qword_280A47568, v458, v459, v460, v461, 1106, 1342);
  objc_msgSend_setInt_forKey_(qword_280A47568, v462, v463, v464, v465, 1107, 1343);
  objc_msgSend_setInt_forKey_(qword_280A47568, v466, v467, v468, v469, 1108, 1344);
  objc_msgSend_setInt_forKey_(qword_280A47568, v470, v471, v472, v473, 1109, 1345);
  objc_msgSend_setInt_forKey_(qword_280A47568, v474, v475, v476, v477, 1110, 1346);
  objc_msgSend_setInt_forKey_(qword_280A47568, v478, v479, v480, v481, 1111, 1347);
  objc_msgSend_setInt_forKey_(qword_280A47568, v482, v483, v484, v485, 1112, 1348);
  objc_msgSend_setInt_forKey_(qword_280A47568, v486, v487, v488, v489, 1113, 1349);
  objc_msgSend_setInt_forKey_(qword_280A47568, v490, v491, v492, v493, 1114, 1350);
  objc_msgSend_setInt_forKey_(qword_280A47568, v494, v495, v496, v497, 1115, 1351);
  objc_msgSend_setInt_forKey_(qword_280A47568, v498, v499, v500, v501, 1116, 1352);
  objc_msgSend_setInt_forKey_(qword_280A47568, v502, v503, v504, v505, 1117, 1353);
  objc_msgSend_setInt_forKey_(qword_280A47568, v506, v507, v508, v509, 1118, 1354);
  objc_msgSend_setInt_forKey_(qword_280A47568, v510, v511, v512, v513, 1119, 1355);
  objc_msgSend_setInt_forKey_(qword_280A47568, v514, v515, v516, v517, 1120, 1356);
  objc_msgSend_setInt_forKey_(qword_280A47568, v518, v519, v520, v521, 1121, 1357);
  objc_msgSend_setInt_forKey_(qword_280A47568, v522, v523, v524, v525, 1122, 1358);
  objc_msgSend_setInt_forKey_(qword_280A47568, v526, v527, v528, v529, 1123, 1359);
  objc_msgSend_setInt_forKey_(qword_280A47568, v530, v531, v532, v533, 1125, 1360);
  objc_msgSend_setInt_forKey_(qword_280A47568, v534, v535, v536, v537, 1124, 1361);
  objc_msgSend_setInt_forKey_(qword_280A47568, v538, v539, v540, v541, 1126, 1362);
  objc_msgSend_setInt_forKey_(qword_280A47568, v542, v543, v544, v545, 1127, 1363);
  objc_msgSend_setInt_forKey_(qword_280A47568, v546, v547, v548, v549, 1128, 1364);
  objc_msgSend_setInt_forKey_(qword_280A47568, v550, v551, v552, v553, 1128, 1365);
  objc_msgSend_setInt_forKey_(qword_280A47568, v554, v555, v556, v557, 1129, 1366);
  objc_msgSend_setInt_forKey_(qword_280A47568, v558, v559, v560, v561, 1130, 1367);
  objc_msgSend_setInt_forKey_(qword_280A47568, v562, v563, v564, v565, 1131, 1368);
  objc_msgSend_setInt_forKey_(qword_280A47568, v566, v567, v568, v569, 1132, 1369);
  objc_msgSend_setInt_forKey_(qword_280A47568, v570, v571, v572, v573, 1133, 1370);
  objc_msgSend_setInt_forKey_(qword_280A47568, v574, v575, v576, v577, 1136, 1371);
  objc_msgSend_setInt_forKey_(qword_280A47568, v578, v579, v580, v581, 1137, 1372);
  objc_msgSend_setInt_forKey_(qword_280A47568, v582, v583, v584, v585, 1138, 1373);
  objc_msgSend_setInt_forKey_(qword_280A47568, v586, v587, v588, v589, 1138, 1374);
  objc_msgSend_setInt_forKey_(qword_280A47568, v590, v591, v592, v593, 1138, 1375);
  objc_msgSend_setInt_forKey_(qword_280A47568, v594, v595, v596, v597, 1138, 1376);
  objc_msgSend_setInt_forKey_(qword_280A47568, v598, v599, v600, v601, 1138, 1377);
  objc_msgSend_setInt_forKey_(qword_280A47568, v602, v603, v604, v605, 1138, 1378);
  objc_msgSend_setInt_forKey_(qword_280A47568, v606, v607, v608, v609, 1138, 1379);
  objc_msgSend_setInt_forKey_(qword_280A47568, v610, v611, v612, v613, 1138, 1380);
  objc_msgSend_setInt_forKey_(qword_280A47568, v614, v615, v616, v617, 1138, 1381);
  objc_msgSend_setInt_forKey_(qword_280A47568, v618, v619, v620, v621, 1139, 1382);
  objc_msgSend_setInt_forKey_(qword_280A47568, v622, v623, v624, v625, 1140, 1383);
  objc_msgSend_setInt_forKey_(qword_280A47568, v626, v627, v628, v629, 1141, 1384);
  objc_msgSend_setInt_forKey_(qword_280A47568, v630, v631, v632, v633, 1142, 1385);
  objc_msgSend_setInt_forKey_(qword_280A47568, v634, v635, v636, v637, 1143, 1386);
  objc_msgSend_setInt_forKey_(qword_280A47568, v638, v639, v640, v641, 1144, 1387);
  objc_msgSend_setInt_forKey_(qword_280A47568, v642, v643, v644, v645, 1145, 1388);
  objc_msgSend_setInt_forKey_(qword_280A47568, v646, v647, v648, v649, 1146, 1389);
  objc_msgSend_setInt_forKey_(qword_280A47568, v650, v651, v652, v653, 1147, 1390);
  objc_msgSend_setInt_forKey_(qword_280A47568, v654, v655, v656, v657, 1148, 1391);
  objc_msgSend_setInt_forKey_(qword_280A47568, v658, v659, v660, v661, 1149, 1392);
  objc_msgSend_setInt_forKey_(qword_280A47568, v662, v663, v664, v665, 1150, 1393);
  objc_msgSend_setInt_forKey_(qword_280A47568, v666, v667, v668, v669, 1151, 1394);
  objc_msgSend_setInt_forKey_(qword_280A47568, v670, v671, v672, v673, 1152, 1395);
  objc_msgSend_setInt_forKey_(qword_280A47568, v674, v675, v676, v677, 1153, 1396);
  objc_msgSend_setInt_forKey_(qword_280A47568, v678, v679, v680, v681, 1154, 1397);
  objc_msgSend_setInt_forKey_(qword_280A47568, v682, v683, v684, v685, 1155, 1398);
  objc_msgSend_setInt_forKey_(qword_280A47568, v686, v687, v688, v689, 1156, 1399);
  objc_msgSend_setInt_forKey_(qword_280A47568, v690, v691, v692, v693, 1157, 1400);
  objc_msgSend_setInt_forKey_(qword_280A47568, v694, v695, v696, v697, 1158, 1401);
  objc_msgSend_setInt_forKey_(qword_280A47568, v698, v699, v700, v701, 1159, 1402);
  objc_msgSend_setInt_forKey_(qword_280A47568, v702, v703, v704, v705, 1160, 1403);
  objc_msgSend_setInt_forKey_(qword_280A47568, v706, v707, v708, v709, 1160, 1404);
  objc_msgSend_setInt_forKey_(qword_280A47568, v710, v711, v712, v713, 1160, 1405);
  objc_msgSend_setInt_forKey_(qword_280A47568, v714, v715, v716, v717, 1160, 1406);
  objc_msgSend_setInt_forKey_(qword_280A47568, v718, v719, v720, v721, 1160, 1407);
  objc_msgSend_setInt_forKey_(qword_280A47568, v722, v723, v724, v725, 1160, 1408);
  objc_msgSend_setInt_forKey_(qword_280A47568, v726, v727, v728, v729, 1160, 1409);
  objc_msgSend_setInt_forKey_(qword_280A47568, v730, v731, v732, v733, 1160, 1410);
  objc_msgSend_setInt_forKey_(qword_280A47568, v734, v735, v736, v737, 1160, 1411);
  objc_msgSend_setInt_forKey_(qword_280A47568, v738, v739, v740, v741, 1160, 1412);
  objc_msgSend_setInt_forKey_(qword_280A47568, v742, v743, v744, v745, 1160, 1413);
  objc_msgSend_setInt_forKey_(qword_280A47568, v746, v747, v748, v749, 1160, 1414);
  objc_msgSend_setInt_forKey_(qword_280A47568, v750, v751, v752, v753, 1160, 1415);
  objc_msgSend_setInt_forKey_(qword_280A47568, v754, v755, v756, v757, 1162, 1416);
  objc_msgSend_setInt_forKey_(qword_280A47568, v758, v759, v760, v761, 1161, 1417);
  objc_msgSend_setInt_forKey_(qword_280A47568, v762, v763, v764, v765, 1163, 1418);
  objc_msgSend_setInt_forKey_(qword_280A47568, v766, v767, v768, v769, 1164, 1419);
  objc_msgSend_setInt_forKey_(qword_280A47568, v770, v771, v772, v773, 1164, 1420);
  objc_msgSend_setInt_forKey_(qword_280A47568, v774, v775, v776, v777, 1164, 1421);
  objc_msgSend_setInt_forKey_(qword_280A47568, v778, v779, v780, v781, 1164, 1422);
  objc_msgSend_setInt_forKey_(qword_280A47568, v782, v783, v784, v785, 1164, 1423);
  objc_msgSend_setInt_forKey_(qword_280A47568, v786, v787, v788, v789, 1164, 1424);
  objc_msgSend_setInt_forKey_(qword_280A47568, v790, v791, v792, v793, 1164, 1425);
  objc_msgSend_setInt_forKey_(qword_280A47568, v794, v795, v796, v797, 1164, 1426);
  objc_msgSend_setInt_forKey_(qword_280A47568, v798, v799, v800, v801, 1165, 1427);
  objc_msgSend_setInt_forKey_(qword_280A47568, v802, v803, v804, v805, 1165, 1428);
  objc_msgSend_setInt_forKey_(qword_280A47568, v806, v807, v808, v809, 1165, 1429);
  objc_msgSend_setInt_forKey_(qword_280A47568, v810, v811, v812, v813, 1165, 1430);
  objc_msgSend_setInt_forKey_(qword_280A47568, v814, v815, v816, v817, 1165, 1431);
  objc_msgSend_setInt_forKey_(qword_280A47568, v818, v819, v820, v821, 1166, 1432);
  objc_msgSend_setInt_forKey_(qword_280A47568, v822, v823, v824, v825, 1166, 1433);
  objc_msgSend_setInt_forKey_(qword_280A47568, v826, v827, v828, v829, 1167, 1434);
  objc_msgSend_setInt_forKey_(qword_280A47568, v830, v831, v832, v833, 1167, 1435);
  objc_msgSend_setInt_forKey_(qword_280A47568, v834, v835, v836, v837, 1168, 1436);
  objc_msgSend_setInt_forKey_(qword_280A47568, v838, v839, v840, v841, 1169, 1437);
  objc_msgSend_setInt_forKey_(qword_280A47568, v842, v843, v844, v845, 1169, 1438);
  objc_msgSend_setInt_forKey_(qword_280A47568, v846, v847, v848, v849, 1169, 1439);
  objc_msgSend_setInt_forKey_(qword_280A47568, v850, v851, v852, v853, 1169, 1440);
  objc_msgSend_setInt_forKey_(qword_280A47568, v854, v855, v856, v857, 1169, 1441);
  objc_msgSend_setInt_forKey_(qword_280A47568, v858, v859, v860, v861, 1169, 1442);
  objc_msgSend_setInt_forKey_(qword_280A47568, v862, v863, v864, v865, 1169, 1443);
  objc_msgSend_setInt_forKey_(qword_280A47568, v866, v867, v868, v869, 1170, 1444);
  objc_msgSend_setInt_forKey_(qword_280A47568, v870, v871, v872, v873, 1171, 1445);
  objc_msgSend_setInt_forKey_(qword_280A47568, v874, v875, v876, v877, 1172, 1446);
  objc_msgSend_setInt_forKey_(qword_280A47568, v878, v879, v880, v881, 1172, 1447);
  objc_msgSend_setInt_forKey_(qword_280A47568, v882, v883, v884, v885, 1172, 1448);
  objc_msgSend_setInt_forKey_(qword_280A47568, v886, v887, v888, v889, 1172, 1449);
  objc_msgSend_setInt_forKey_(qword_280A47568, v890, v891, v892, v893, 1172, 1450);
  objc_msgSend_setInt_forKey_(qword_280A47568, v894, v895, v896, v897, 1172, 1451);
  objc_msgSend_setInt_forKey_(qword_280A47568, v898, v899, v900, v901, 1172, 1452);
  objc_msgSend_setInt_forKey_(qword_280A47568, v902, v903, v904, v905, 1172, 1453);
  objc_msgSend_setInt_forKey_(qword_280A47568, v906, v907, v908, v909, 1172, 1454);
  objc_msgSend_setInt_forKey_(qword_280A47568, v910, v911, v912, v913, 1172, 1455);
  objc_msgSend_setInt_forKey_(qword_280A47568, v914, v915, v916, v917, 1172, 1456);
  objc_msgSend_setInt_forKey_(qword_280A47568, v918, v919, v920, v921, 1172, 1457);
  objc_msgSend_setInt_forKey_(qword_280A47568, v922, v923, v924, v925, 1172, 1458);
  objc_msgSend_setInt_forKey_(qword_280A47568, v926, v927, v928, v929, 1172, 1459);
  objc_msgSend_setInt_forKey_(qword_280A47568, v930, v931, v932, v933, 1172, 1460);
  objc_msgSend_setInt_forKey_(qword_280A47568, v934, v935, v936, v937, 1172, 1461);
  objc_msgSend_setInt_forKey_(qword_280A47568, v938, v939, v940, v941, 1173, 1462);
  objc_msgSend_setInt_forKey_(qword_280A47568, v942, v943, v944, v945, 1174, 1463);
  objc_msgSend_setInt_forKey_(qword_280A47568, v946, v947, v948, v949, 1175, 1464);
  objc_msgSend_setInt_forKey_(qword_280A47568, v950, v951, v952, v953, 1175, 1465);
  objc_msgSend_setInt_forKey_(qword_280A47568, v954, v955, v956, v957, 1176, 1466);
  objc_msgSend_setInt_forKey_(qword_280A47568, v958, v959, v960, v961, 1177, 1467);
  objc_msgSend_setInt_forKey_(qword_280A47568, v962, v963, v964, v965, 1178, 1468);
  objc_msgSend_setInt_forKey_(qword_280A47568, v966, v967, v968, v969, 1178, 1469);
  objc_msgSend_setInt_forKey_(qword_280A47568, v970, v971, v972, v973, 1178, 1470);
  objc_msgSend_setInt_forKey_(qword_280A47568, v974, v975, v976, v977, 1179, 1471);
  objc_msgSend_setInt_forKey_(qword_280A47568, v978, v979, v980, v981, 1179, 1472);
  objc_msgSend_setInt_forKey_(qword_280A47568, v982, v983, v984, v985, 1179, 1473);
  objc_msgSend_setInt_forKey_(qword_280A47568, v986, v987, v988, v989, 1179, 1474);
  objc_msgSend_setInt_forKey_(qword_280A47568, v990, v991, v992, v993, 1179, 1475);
  objc_msgSend_setInt_forKey_(qword_280A47568, v994, v995, v996, v997, 1179, 1476);
  objc_msgSend_setInt_forKey_(qword_280A47568, v998, v999, v1000, v1001, 1180, 1477);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1002, v1003, v1004, v1005, 1181, 1478);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1006, v1007, v1008, v1009, 1181, 1479);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1010, v1011, v1012, v1013, 1181, 1480);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1014, v1015, v1016, v1017, 1181, 1481);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1018, v1019, v1020, v1021, 1181, 1482);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1022, v1023, v1024, v1025, 1181, 1483);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1026, v1027, v1028, v1029, 1181, 1484);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1030, v1031, v1032, v1033, 1181, 1485);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1034, v1035, v1036, v1037, 1181, 1486);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1038, v1039, v1040, v1041, 1182, 1487);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1042, v1043, v1044, v1045, 1183, 1488);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1046, v1047, v1048, v1049, 1183, 1489);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1050, v1051, v1052, v1053, 1183, 1490);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1054, v1055, v1056, v1057, 1183, 1491);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1058, v1059, v1060, v1061, 1183, 1492);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1062, v1063, v1064, v1065, 1183, 1493);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1066, v1067, v1068, v1069, 1183, 1494);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1070, v1071, v1072, v1073, 1183, 1495);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1074, v1075, v1076, v1077, 1183, 1496);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1078, v1079, v1080, v1081, 1184, 1497);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1082, v1083, v1084, v1085, 1184, 1498);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1086, v1087, v1088, v1089, 1184, 1499);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1090, v1091, v1092, v1093, 1184, 1500);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1094, v1095, v1096, v1097, 1184, 1501);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1098, v1099, v1100, v1101, 1184, 1502);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1102, v1103, v1104, v1105, 1184, 1503);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1106, v1107, v1108, v1109, 1184, 1504);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1110, v1111, v1112, v1113, 1184, 1505);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1114, v1115, v1116, v1117, 1184, 1506);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1118, v1119, v1120, v1121, 1185, 1507);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1122, v1123, v1124, v1125, 1185, 1508);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1126, v1127, v1128, v1129, 1185, 1509);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1130, v1131, v1132, v1133, 1185, 1510);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1134, v1135, v1136, v1137, 1185, 1511);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1138, v1139, v1140, v1141, 1185, 1512);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1142, v1143, v1144, v1145, 1185, 1513);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1146, v1147, v1148, v1149, 1186, 1514);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1150, v1151, v1152, v1153, 1186, 1515);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1154, v1155, v1156, v1157, 1186, 1516);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1158, v1159, v1160, v1161, 1186, 1517);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1162, v1163, v1164, v1165, 1186, 1518);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1166, v1167, v1168, v1169, 1187, 1519);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1170, v1171, v1172, v1173, 1187, 1520);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1174, v1175, v1176, v1177, 1187, 1521);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1178, v1179, v1180, v1181, 1187, 1522);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1182, v1183, v1184, v1185, 1187, 1523);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1186, v1187, v1188, v1189, 1187, 1524);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1190, v1191, v1192, v1193, 1187, 1525);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1194, v1195, v1196, v1197, 1188, 1526);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1198, v1199, v1200, v1201, 1188, 1527);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1202, v1203, v1204, v1205, 1188, 1528);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1206, v1207, v1208, v1209, 1188, 1529);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1210, v1211, v1212, v1213, 1188, 1530);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1214, v1215, v1216, v1217, 1188, 1531);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1218, v1219, v1220, v1221, 1189, 1532);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1222, v1223, v1224, v1225, 1189, 1533);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1226, v1227, v1228, v1229, 1189, 1534);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1230, v1231, v1232, v1233, 1189, 1535);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1234, v1235, v1236, v1237, 1189, 1536);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1238, v1239, v1240, v1241, 1189, 1537);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1242, v1243, v1244, v1245, 1189, 1538);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1246, v1247, v1248, v1249, 1190, 1539);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1250, v1251, v1252, v1253, 1190, 1540);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1254, v1255, v1256, v1257, 1190, 1541);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1258, v1259, v1260, v1261, 1190, 1542);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1262, v1263, v1264, v1265, 1190, 1543);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1266, v1267, v1268, v1269, 1190, 1544);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1270, v1271, v1272, v1273, 1191, 1545);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1274, v1275, v1276, v1277, 1192, 1546);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1278, v1279, v1280, v1281, 1193, 1547);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1282, v1283, v1284, v1285, 1194, 1548);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1286, v1287, v1288, v1289, 1195, 1549);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1290, v1291, v1292, v1293, 1196, 1550);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1294, v1295, v1296, v1297, 1197, 1551);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1298, v1299, v1300, v1301, 1198, 1552);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1302, v1303, v1304, v1305, 1199, 1553);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1306, v1307, v1308, v1309, 1200, 1554);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1310, v1311, v1312, v1313, 1201, 1555);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1314, v1315, v1316, v1317, 1202, 1556);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1318, v1319, v1320, v1321, 1203, 1557);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1322, v1323, v1324, v1325, 1204, 1558);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1326, v1327, v1328, v1329, 1205, 1559);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1330, v1331, v1332, v1333, 1206, 1560);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1334, v1335, v1336, v1337, 1207, 1561);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1338, v1339, v1340, v1341, 1208, 1562);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1342, v1343, v1344, v1345, 1208, 1563);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1346, v1347, v1348, v1349, 1208, 1564);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1350, v1351, v1352, v1353, 1208, 1565);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1354, v1355, v1356, v1357, 1208, 1566);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1358, v1359, v1360, v1361, 1208, 1567);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1362, v1363, v1364, v1365, 1208, 1568);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1366, v1367, v1368, v1369, 1208, 1569);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1370, v1371, v1372, v1373, 1208, 1570);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1374, v1375, v1376, v1377, 1208, 1571);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1378, v1379, v1380, v1381, 1208, 1572);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1382, v1383, v1384, v1385, 1208, 1573);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1386, v1387, v1388, v1389, 1209, 1574);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1390, v1391, v1392, v1393, 1210, 1575);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1394, v1395, v1396, v1397, 1210, 1576);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1398, v1399, v1400, v1401, 1211, 1577);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1402, v1403, v1404, v1405, 1212, 1578);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1406, v1407, v1408, v1409, 1213, 1579);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1410, v1411, v1412, v1413, 1214, 1580);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1414, v1415, v1416, v1417, 1215, 1581);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1418, v1419, v1420, v1421, 1216, 1582);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1422, v1423, v1424, v1425, 1217, 1583);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1426, v1427, v1428, v1429, 1218, 1584);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1430, v1431, v1432, v1433, 1219, 1585);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1434, v1435, v1436, v1437, 1220, 1586);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1438, v1439, v1440, v1441, 1221, 1587);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1442, v1443, v1444, v1445, 1222, 1588);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1446, v1447, v1448, v1449, 1223, 1589);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1450, v1451, v1452, v1453, 1224, 1590);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1454, v1455, v1456, v1457, 1225, 1591);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1458, v1459, v1460, v1461, 1226, 1592);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1462, v1463, v1464, v1465, 1227, 1593);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1466, v1467, v1468, v1469, 1083, 1594);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1470, v1471, v1472, v1473, 1084, 1595);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1474, v1475, v1476, v1477, 1084, 1596);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1478, v1479, v1480, v1481, 1084, 1597);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1482, v1483, v1484, v1485, 1084, 1598);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1486, v1487, v1488, v1489, 1085, 1599);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1490, v1491, v1492, v1493, 1085, 1600);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1494, v1495, v1496, v1497, 1085, 1601);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1498, v1499, v1500, v1501, 1085, 1602);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1502, v1503, v1504, v1505, 1085, 1603);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1506, v1507, v1508, v1509, 1085, 1604);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1510, v1511, v1512, v1513, 1086, 1605);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1514, v1515, v1516, v1517, 1086, 1606);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1518, v1519, v1520, v1521, 1086, 1607);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1522, v1523, v1524, v1525, 1086, 1608);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1526, v1527, v1528, v1529, 1086, 1609);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1530, v1531, v1532, v1533, 1087, 1610);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1534, v1535, v1536, v1537, 1088, 1611);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1538, v1539, v1540, v1541, 1089, 1612);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1542, v1543, v1544, v1545, 1092, 1613);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1546, v1547, v1548, v1549, 1093, 1614);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1550, v1551, v1552, v1553, 1094, 1615);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1554, v1555, v1556, v1557, 1095, 1616);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1558, v1559, v1560, v1561, 1096, 1617);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1562, v1563, v1564, v1565, 1097, 1618);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1566, v1567, v1568, v1569, 1134, 1619);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1570, v1571, v1572, v1573, 1134, 1620);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1574, v1575, v1576, v1577, 1134, 1621);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1578, v1579, v1580, v1581, 1134, 1622);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1582, v1583, v1584, v1585, 1134, 1623);
  objc_msgSend_setInt_forKey_(qword_280A47568, v1586, v1587, v1588, v1589, 1134, 1624);
  v1594 = qword_280A47568;

  return objc_msgSend_setInt_forKey_(v1594, v1590, v1591, v1592, v1593, 1135, 1625);
}

uint64_t sub_2762D3864()
{
  v0 = objc_alloc_init(MEMORY[0x277D81210]);
  v1 = qword_280A47578;
  qword_280A47578 = v0;

  objc_msgSend_setObject_forKey_(qword_280A47578, v2, v3, v4, v5, @"Object(TSCHTimeBasedFormat)", 1228);
  objc_msgSend_setObject_forKey_(qword_280A47578, v6, v7, v8, v9, @"Object(TSCHNumberFormat)", 1229);
  objc_msgSend_setObject_forKey_(qword_280A47578, v10, v11, v12, v13, @"Float", 1230);
  objc_msgSend_setObject_forKey_(qword_280A47578, v14, v15, v16, v17, @"Float", 1231);
  objc_msgSend_setObject_forKey_(qword_280A47578, v18, v19, v20, v21, @"Object(TSDStroke)", 1232);
  objc_msgSend_setObject_forKey_(qword_280A47578, v22, v23, v24, v25, @"Object(TSDStroke)", 1233);
  objc_msgSend_setObject_forKey_(qword_280A47578, v26, v27, v28, v29, @"Integer", 1234);
  objc_msgSend_setObject_forKey_(qword_280A47578, v30, v31, v32, v33, @"Object(TSCHTimeBasedFormat)", 1235);
  objc_msgSend_setObject_forKey_(qword_280A47578, v34, v35, v36, v37, @"Object(TSCHTimeBasedFormat)", 1236);
  objc_msgSend_setObject_forKey_(qword_280A47578, v38, v39, v40, v41, @"Integer", 1237);
  objc_msgSend_setObject_forKey_(qword_280A47578, v42, v43, v44, v45, @"Integer", 1238);
  objc_msgSend_setObject_forKey_(qword_280A47578, v46, v47, v48, v49, @"Float", 1239);
  objc_msgSend_setObject_forKey_(qword_280A47578, v50, v51, v52, v53, @"Integer", 1240);
  objc_msgSend_setObject_forKey_(qword_280A47578, v54, v55, v56, v57, @"Integer", 1241);
  objc_msgSend_setObject_forKey_(qword_280A47578, v58, v59, v60, v61, @"Integer", 1242);
  objc_msgSend_setObject_forKey_(qword_280A47578, v62, v63, v64, v65, @"Float", 1243);
  objc_msgSend_setObject_forKey_(qword_280A47578, v66, v67, v68, v69, @"Float", 1244);
  objc_msgSend_setObject_forKey_(qword_280A47578, v70, v71, v72, v73, @"Float", 1245);
  objc_msgSend_setObject_forKey_(qword_280A47578, v74, v75, v76, v77, @"Float", 1246);
  objc_msgSend_setObject_forKey_(qword_280A47578, v78, v79, v80, v81, @"Float", 1247);
  objc_msgSend_setObject_forKey_(qword_280A47578, v82, v83, v84, v85, @"Object(TSDShadow)", 1248);
  objc_msgSend_setObject_forKey_(qword_280A47578, v86, v87, v88, v89, @"Object(TSDShadow)", 1249);
  objc_msgSend_setObject_forKey_(qword_280A47578, v90, v91, v92, v93, @"Object(TSDStroke)", 1250);
  objc_msgSend_setObject_forKey_(qword_280A47578, v94, v95, v96, v97, @"Object(TSDStroke)", 1251);
  objc_msgSend_setObject_forKey_(qword_280A47578, v98, v99, v100, v101, @"Float", 1252);
  objc_msgSend_setObject_forKey_(qword_280A47578, v102, v103, v104, v105, @"Float", 1253);
  objc_msgSend_setObject_forKey_(qword_280A47578, v106, v107, v108, v109, @"Object(TSDShadow)", 1254);
  objc_msgSend_setObject_forKey_(qword_280A47578, v110, v111, v112, v113, @"Object(TSDShadow)", 1255);
  objc_msgSend_setObject_forKey_(qword_280A47578, v114, v115, v116, v117, @"Object(TSDStroke)", 1256);
  objc_msgSend_setObject_forKey_(qword_280A47578, v118, v119, v120, v121, @"Object(TSDStroke)", 1257);
  objc_msgSend_setObject_forKey_(qword_280A47578, v122, v123, v124, v125, @"Object(TSCHNumberFormat)", 1258);
  objc_msgSend_setObject_forKey_(qword_280A47578, v126, v127, v128, v129, @"Integer", 1259);
  objc_msgSend_setObject_forKey_(qword_280A47578, v130, v131, v132, v133, @"Integer", 1260);
  objc_msgSend_setObject_forKey_(qword_280A47578, v134, v135, v136, v137, @"Integer", 1261);
  objc_msgSend_setObject_forKey_(qword_280A47578, v138, v139, v140, v141, @"Integer", 1262);
  objc_msgSend_setObject_forKey_(qword_280A47578, v142, v143, v144, v145, @"Boolean", 1263);
  objc_msgSend_setObject_forKey_(qword_280A47578, v146, v147, v148, v149, @"Integer", 1264);
  objc_msgSend_setObject_forKey_(qword_280A47578, v150, v151, v152, v153, @"Boolean", 1265);
  objc_msgSend_setObject_forKey_(qword_280A47578, v154, v155, v156, v157, @"Boolean", 1266);
  objc_msgSend_setObject_forKey_(qword_280A47578, v158, v159, v160, v161, @"Boolean", 1267);
  objc_msgSend_setObject_forKey_(qword_280A47578, v162, v163, v164, v165, @"Boolean", 1268);
  objc_msgSend_setObject_forKey_(qword_280A47578, v166, v167, v168, v169, @"Boolean", 1269);
  objc_msgSend_setObject_forKey_(qword_280A47578, v170, v171, v172, v173, @"Boolean", 1270);
  objc_msgSend_setObject_forKey_(qword_280A47578, v174, v175, v176, v177, @"Boolean", 1271);
  objc_msgSend_setObject_forKey_(qword_280A47578, v178, v179, v180, v181, @"Boolean", 1272);
  objc_msgSend_setObject_forKey_(qword_280A47578, v182, v183, v184, v185, @"Boolean", 1273);
  objc_msgSend_setObject_forKey_(qword_280A47578, v186, v187, v188, v189, @"Boolean", 1274);
  objc_msgSend_setObject_forKey_(qword_280A47578, v190, v191, v192, v193, @"Boolean", 1275);
  objc_msgSend_setObject_forKey_(qword_280A47578, v194, v195, v196, v197, @"Boolean", 1276);
  objc_msgSend_setObject_forKey_(qword_280A47578, v198, v199, v200, v201, @"Boolean", 1277);
  objc_msgSend_setObject_forKey_(qword_280A47578, v202, v203, v204, v205, @"Boolean", 1278);
  objc_msgSend_setObject_forKey_(qword_280A47578, v206, v207, v208, v209, @"Boolean", 1279);
  objc_msgSend_setObject_forKey_(qword_280A47578, v210, v211, v212, v213, @"Boolean", 1280);
  objc_msgSend_setObject_forKey_(qword_280A47578, v214, v215, v216, v217, @"Boolean", 1281);
  objc_msgSend_setObject_forKey_(qword_280A47578, v218, v219, v220, v221, @"Boolean", 1282);
  objc_msgSend_setObject_forKey_(qword_280A47578, v222, v223, v224, v225, @"Boolean", 1283);
  objc_msgSend_setObject_forKey_(qword_280A47578, v226, v227, v228, v229, @"Boolean", 1284);
  objc_msgSend_setObject_forKey_(qword_280A47578, v230, v231, v232, v233, @"Boolean", 1285);
  objc_msgSend_setObject_forKey_(qword_280A47578, v234, v235, v236, v237, @"Boolean", 1286);
  objc_msgSend_setObject_forKey_(qword_280A47578, v238, v239, v240, v241, @"Boolean", 1287);
  objc_msgSend_setObject_forKey_(qword_280A47578, v242, v243, v244, v245, @"Integer", 1288);
  objc_msgSend_setObject_forKey_(qword_280A47578, v246, v247, v248, v249, @"Integer", 1289);
  objc_msgSend_setObject_forKey_(qword_280A47578, v250, v251, v252, v253, @"String", 1290);
  objc_msgSend_setObject_forKey_(qword_280A47578, v254, v255, v256, v257, @"Integer", 1291);
  objc_msgSend_setObject_forKey_(qword_280A47578, v258, v259, v260, v261, @"Integer", 1292);
  objc_msgSend_setObject_forKey_(qword_280A47578, v262, v263, v264, v265, @"Integer", 1293);
  objc_msgSend_setObject_forKey_(qword_280A47578, v266, v267, v268, v269, @"String", 1294);
  objc_msgSend_setObject_forKey_(qword_280A47578, v270, v271, v272, v273, @"Object(NSNumber)", 1295);
  objc_msgSend_setObject_forKey_(qword_280A47578, v274, v275, v276, v277, @"Object(NSNumber)", 1296);
  objc_msgSend_setObject_forKey_(qword_280A47578, v278, v279, v280, v281, @"Integer", 1297);
  objc_msgSend_setObject_forKey_(qword_280A47578, v282, v283, v284, v285, @"Integer", 1298);
  objc_msgSend_setObject_forKey_(qword_280A47578, v286, v287, v288, v289, @"Boolean", 1299);
  objc_msgSend_setObject_forKey_(qword_280A47578, v290, v291, v292, v293, @"Float", 1300);
  objc_msgSend_setObject_forKey_(qword_280A47578, v294, v295, v296, v297, @"Float", 1301);
  objc_msgSend_setObject_forKey_(qword_280A47578, v298, v299, v300, v301, @"Object(TSCH3DLightingPackage)", 1302);
  objc_msgSend_setObject_forKey_(qword_280A47578, v302, v303, v304, v305, @"Object(TSCH3DLightingPackage)", 1303);
  objc_msgSend_setObject_forKey_(qword_280A47578, v306, v307, v308, v309, @"Object(TSCH3DLightingPackage)", 1304);
  objc_msgSend_setObject_forKey_(qword_280A47578, v310, v311, v312, v313, @"Object(TSCH3DLightingPackage)", 1305);
  objc_msgSend_setObject_forKey_(qword_280A47578, v314, v315, v316, v317, @"Object(TSCH3DLightingPackage)", 1306);
  objc_msgSend_setObject_forKey_(qword_280A47578, v318, v319, v320, v321, @"Object(TSCH3DLightingPackage)", 1307);
  objc_msgSend_setObject_forKey_(qword_280A47578, v322, v323, v324, v325, @"Object(TSCH3DVector)", 1308);
  objc_msgSend_setObject_forKey_(qword_280A47578, v326, v327, v328, v329, @"Object(TSCH3DVector)", 1309);
  objc_msgSend_setObject_forKey_(qword_280A47578, v330, v331, v332, v333, @"Object(TSCH3DVector)", 1310);
  objc_msgSend_setObject_forKey_(qword_280A47578, v334, v335, v336, v337, @"Object(TSCH3DVector)", 1311);
  objc_msgSend_setObject_forKey_(qword_280A47578, v338, v339, v340, v341, @"Object(TSCH3DVector)", 1312);
  objc_msgSend_setObject_forKey_(qword_280A47578, v342, v343, v344, v345, @"Object(TSCH3DVector)", 1313);
  objc_msgSend_setObject_forKey_(qword_280A47578, v346, v347, v348, v349, @"Object(TSCH3DVector)", 1314);
  objc_msgSend_setObject_forKey_(qword_280A47578, v350, v351, v352, v353, @"Object(TSCH3DVector)", 1315);
  objc_msgSend_setObject_forKey_(qword_280A47578, v354, v355, v356, v357, @"Boolean", 1316);
  objc_msgSend_setObject_forKey_(qword_280A47578, v358, v359, v360, v361, @"Object(TSDFill)", 1317);
  objc_msgSend_setObject_forKey_(qword_280A47578, v362, v363, v364, v365, @"Object(TSDStroke)", 1318);
  objc_msgSend_setObject_forKey_(qword_280A47578, v366, v367, v368, v369, @"Float", 1319);
  objc_msgSend_setObject_forKey_(qword_280A47578, v370, v371, v372, v373, @"Object(TSDShadow)", 1320);
  objc_msgSend_setObject_forKey_(qword_280A47578, v374, v375, v376, v377, @"Object(TSDStroke)", 1321);
  objc_msgSend_setObject_forKey_(qword_280A47578, v378, v379, v380, v381, @"Integer", 1322);
  objc_msgSend_setObject_forKey_(qword_280A47578, v382, v383, v384, v385, @"Integer", 1323);
  objc_msgSend_setObject_forKey_(qword_280A47578, v386, v387, v388, v389, @"Integer", 1324);
  objc_msgSend_setObject_forKey_(qword_280A47578, v390, v391, v392, v393, @"Integer", 1325);
  objc_msgSend_setObject_forKey_(qword_280A47578, v394, v395, v396, v397, @"Integer", 1326);
  objc_msgSend_setObject_forKey_(qword_280A47578, v398, v399, v400, v401, @"Integer", 1327);
  objc_msgSend_setObject_forKey_(qword_280A47578, v402, v403, v404, v405, @"Integer", 1328);
  objc_msgSend_setObject_forKey_(qword_280A47578, v406, v407, v408, v409, @"Integer", 1329);
  objc_msgSend_setObject_forKey_(qword_280A47578, v410, v411, v412, v413, @"Integer", 1330);
  objc_msgSend_setObject_forKey_(qword_280A47578, v414, v415, v416, v417, @"Boolean", 1331);
  objc_msgSend_setObject_forKey_(qword_280A47578, v418, v419, v420, v421, @"Boolean", 1332);
  objc_msgSend_setObject_forKey_(qword_280A47578, v422, v423, v424, v425, @"Float", 1333);
  objc_msgSend_setObject_forKey_(qword_280A47578, v426, v427, v428, v429, @"Integer", 1334);
  objc_msgSend_setObject_forKey_(qword_280A47578, v430, v431, v432, v433, @"Integer", 1335);
  objc_msgSend_setObject_forKey_(qword_280A47578, v434, v435, v436, v437, @"Boolean", 1336);
  objc_msgSend_setObject_forKey_(qword_280A47578, v438, v439, v440, v441, @"Object(TSDFill)", 1337);
  objc_msgSend_setObject_forKey_(qword_280A47578, v442, v443, v444, v445, @"Float", 1338);
  objc_msgSend_setObject_forKey_(qword_280A47578, v446, v447, v448, v449, @"Float", 1339);
  objc_msgSend_setObject_forKey_(qword_280A47578, v450, v451, v452, v453, @"Float", 1340);
  objc_msgSend_setObject_forKey_(qword_280A47578, v454, v455, v456, v457, @"Float", 1341);
  objc_msgSend_setObject_forKey_(qword_280A47578, v458, v459, v460, v461, @"Integer", 1342);
  objc_msgSend_setObject_forKey_(qword_280A47578, v462, v463, v464, v465, @"Float", 1343);
  objc_msgSend_setObject_forKey_(qword_280A47578, v466, v467, v468, v469, @"Boolean", 1344);
  objc_msgSend_setObject_forKey_(qword_280A47578, v470, v471, v472, v473, @"Float", 1345);
  objc_msgSend_setObject_forKey_(qword_280A47578, v474, v475, v476, v477, @"Boolean", 1346);
  objc_msgSend_setObject_forKey_(qword_280A47578, v478, v479, v480, v481, @"Float", 1347);
  objc_msgSend_setObject_forKey_(qword_280A47578, v482, v483, v484, v485, @"Boolean", 1348);
  objc_msgSend_setObject_forKey_(qword_280A47578, v486, v487, v488, v489, @"Boolean", 1349);
  objc_msgSend_setObject_forKey_(qword_280A47578, v490, v491, v492, v493, @"Boolean", 1350);
  objc_msgSend_setObject_forKey_(qword_280A47578, v494, v495, v496, v497, @"Boolean", 1351);
  objc_msgSend_setObject_forKey_(qword_280A47578, v498, v499, v500, v501, @"Object(TSCHTimeBasedFormat)", 1352);
  objc_msgSend_setObject_forKey_(qword_280A47578, v502, v503, v504, v505, @"Object(TSCHTimeBasedFormat)", 1353);
  objc_msgSend_setObject_forKey_(qword_280A47578, v506, v507, v508, v509, @"Object(TSCHNumberFormat)", 1354);
  objc_msgSend_setObject_forKey_(qword_280A47578, v510, v511, v512, v513, @"Integer", 1355);
  objc_msgSend_setObject_forKey_(qword_280A47578, v514, v515, v516, v517, @"Float", 1356);
  objc_msgSend_setObject_forKey_(qword_280A47578, v518, v519, v520, v521, @"Integer", 1357);
  objc_msgSend_setObject_forKey_(qword_280A47578, v522, v523, v524, v525, @"Boolean", 1358);
  objc_msgSend_setObject_forKey_(qword_280A47578, v526, v527, v528, v529, @"Integer", 1359);
  objc_msgSend_setObject_forKey_(qword_280A47578, v530, v531, v532, v533, @"Color", 1360);
  objc_msgSend_setObject_forKey_(qword_280A47578, v534, v535, v536, v537, @"String", 1361);
  objc_msgSend_setObject_forKey_(qword_280A47578, v538, v539, v540, v541, @"Integer", 1362);
  objc_msgSend_setObject_forKey_(qword_280A47578, v542, v543, v544, v545, @"Object(TSCHTimeBasedFormat)", 1363);
  objc_msgSend_setObject_forKey_(qword_280A47578, v546, v547, v548, v549, @"Object(TSCHNumberFormat)", 1364);
  objc_msgSend_setObject_forKey_(qword_280A47578, v550, v551, v552, v553, @"Object(TSCHNumberFormat)", 1365);
  objc_msgSend_setObject_forKey_(qword_280A47578, v554, v555, v556, v557, @"Float", 1366);
  objc_msgSend_setObject_forKey_(qword_280A47578, v558, v559, v560, v561, @"Float", 1367);
  objc_msgSend_setObject_forKey_(qword_280A47578, v562, v563, v564, v565, @"Object(TSDLineEnd)", 1368);
  objc_msgSend_setObject_forKey_(qword_280A47578, v566, v567, v568, v569, @"Object(TSDLineEnd)", 1369);
  objc_msgSend_setObject_forKey_(qword_280A47578, v570, v571, v572, v573, @"Object(TSDStroke)", 1370);
  objc_msgSend_setObject_forKey_(qword_280A47578, v574, v575, v576, v577, @"Object(TSCHTimeBasedFormat)", 1371);
  objc_msgSend_setObject_forKey_(qword_280A47578, v578, v579, v580, v581, @"Object(TSCHTimeBasedFormat)", 1372);
  objc_msgSend_setObject_forKey_(qword_280A47578, v582, v583, v584, v585, @"Integer", 1373);
  objc_msgSend_setObject_forKey_(qword_280A47578, v586, v587, v588, v589, @"Integer", 1374);
  objc_msgSend_setObject_forKey_(qword_280A47578, v590, v591, v592, v593, @"Integer", 1375);
  objc_msgSend_setObject_forKey_(qword_280A47578, v594, v595, v596, v597, @"Integer", 1376);
  objc_msgSend_setObject_forKey_(qword_280A47578, v598, v599, v600, v601, @"Integer", 1377);
  objc_msgSend_setObject_forKey_(qword_280A47578, v602, v603, v604, v605, @"Integer", 1378);
  objc_msgSend_setObject_forKey_(qword_280A47578, v606, v607, v608, v609, @"Integer", 1379);
  objc_msgSend_setObject_forKey_(qword_280A47578, v610, v611, v612, v613, @"Integer", 1380);
  objc_msgSend_setObject_forKey_(qword_280A47578, v614, v615, v616, v617, @"Integer", 1381);
  objc_msgSend_setObject_forKey_(qword_280A47578, v618, v619, v620, v621, @"Object(NSMutableArray)", 1382);
  objc_msgSend_setObject_forKey_(qword_280A47578, v622, v623, v624, v625, @"Object(NSMutableArray)", 1383);
  objc_msgSend_setObject_forKey_(qword_280A47578, v626, v627, v628, v629, @"Object(NSMutableArray)", 1384);
  objc_msgSend_setObject_forKey_(qword_280A47578, v630, v631, v632, v633, @"Object(NSMutableArray)", 1385);
  objc_msgSend_setObject_forKey_(qword_280A47578, v634, v635, v636, v637, @"Float", 1386);
  objc_msgSend_setObject_forKey_(qword_280A47578, v638, v639, v640, v641, @"Float", 1387);
  objc_msgSend_setObject_forKey_(qword_280A47578, v642, v643, v644, v645, @"Object(TSDLineEnd)", 1388);
  objc_msgSend_setObject_forKey_(qword_280A47578, v646, v647, v648, v649, @"Object(TSDLineEnd)", 1389);
  objc_msgSend_setObject_forKey_(qword_280A47578, v650, v651, v652, v653, @"Float", 1390);
  objc_msgSend_setObject_forKey_(qword_280A47578, v654, v655, v656, v657, @"Float", 1391);
  objc_msgSend_setObject_forKey_(qword_280A47578, v658, v659, v660, v661, @"Integer", 1392);
  objc_msgSend_setObject_forKey_(qword_280A47578, v662, v663, v664, v665, @"Integer", 1393);
  objc_msgSend_setObject_forKey_(qword_280A47578, v666, v667, v668, v669, @"Object(TSDShadow)", 1394);
  objc_msgSend_setObject_forKey_(qword_280A47578, v670, v671, v672, v673, @"Integer", 1395);
  objc_msgSend_setObject_forKey_(qword_280A47578, v674, v675, v676, v677, @"Integer", 1396);
  objc_msgSend_setObject_forKey_(qword_280A47578, v678, v679, v680, v681, @"Float", 1397);
  objc_msgSend_setObject_forKey_(qword_280A47578, v682, v683, v684, v685, @"Float", 1398);
  objc_msgSend_setObject_forKey_(qword_280A47578, v686, v687, v688, v689, @"Object(TSDStroke)", 1399);
  objc_msgSend_setObject_forKey_(qword_280A47578, v690, v691, v692, v693, @"Object(TSDStroke)", 1400);
  objc_msgSend_setObject_forKey_(qword_280A47578, v694, v695, v696, v697, @"Integer", 1401);
  objc_msgSend_setObject_forKey_(qword_280A47578, v698, v699, v700, v701, @"Integer", 1402);
  objc_msgSend_setObject_forKey_(qword_280A47578, v702, v703, v704, v705, @"Object(TSDFill)", 1403);
  objc_msgSend_setObject_forKey_(qword_280A47578, v706, v707, v708, v709, @"Object(TSDFill)", 1404);
  objc_msgSend_setObject_forKey_(qword_280A47578, v710, v711, v712, v713, @"Object(TSDFill)", 1405);
  objc_msgSend_setObject_forKey_(qword_280A47578, v714, v715, v716, v717, @"Object(TSDFill)", 1406);
  objc_msgSend_setObject_forKey_(qword_280A47578, v718, v719, v720, v721, @"Object(TSDFill)", 1407);
  objc_msgSend_setObject_forKey_(qword_280A47578, v722, v723, v724, v725, @"Object(TSDFill)", 1408);
  objc_msgSend_setObject_forKey_(qword_280A47578, v726, v727, v728, v729, @"Object(TSDFill)", 1409);
  objc_msgSend_setObject_forKey_(qword_280A47578, v730, v731, v732, v733, @"Object(TSDFill)", 1410);
  objc_msgSend_setObject_forKey_(qword_280A47578, v734, v735, v736, v737, @"Object(TSDFill)", 1411);
  objc_msgSend_setObject_forKey_(qword_280A47578, v738, v739, v740, v741, @"Object(TSDFill)", 1412);
  objc_msgSend_setObject_forKey_(qword_280A47578, v742, v743, v744, v745, @"Object(TSDFill)", 1413);
  objc_msgSend_setObject_forKey_(qword_280A47578, v746, v747, v748, v749, @"Object(TSDFill)", 1414);
  objc_msgSend_setObject_forKey_(qword_280A47578, v750, v751, v752, v753, @"Object(TSDFill)", 1415);
  objc_msgSend_setObject_forKey_(qword_280A47578, v754, v755, v756, v757, @"Float", 1416);
  objc_msgSend_setObject_forKey_(qword_280A47578, v758, v759, v760, v761, @"Boolean", 1417);
  objc_msgSend_setObject_forKey_(qword_280A47578, v762, v763, v764, v765, @"Float", 1418);
  objc_msgSend_setObject_forKey_(qword_280A47578, v766, v767, v768, v769, @"Integer", 1419);
  objc_msgSend_setObject_forKey_(qword_280A47578, v770, v771, v772, v773, @"Integer", 1420);
  objc_msgSend_setObject_forKey_(qword_280A47578, v774, v775, v776, v777, @"Integer", 1421);
  objc_msgSend_setObject_forKey_(qword_280A47578, v778, v779, v780, v781, @"Integer", 1422);
  objc_msgSend_setObject_forKey_(qword_280A47578, v782, v783, v784, v785, @"Integer", 1423);
  objc_msgSend_setObject_forKey_(qword_280A47578, v786, v787, v788, v789, @"Integer", 1424);
  objc_msgSend_setObject_forKey_(qword_280A47578, v790, v791, v792, v793, @"Integer", 1425);
  objc_msgSend_setObject_forKey_(qword_280A47578, v794, v795, v796, v797, @"Integer", 1426);
  objc_msgSend_setObject_forKey_(qword_280A47578, v798, v799, v800, v801, @"Integer", 1427);
  objc_msgSend_setObject_forKey_(qword_280A47578, v802, v803, v804, v805, @"Integer", 1428);
  objc_msgSend_setObject_forKey_(qword_280A47578, v806, v807, v808, v809, @"Integer", 1429);
  objc_msgSend_setObject_forKey_(qword_280A47578, v810, v811, v812, v813, @"Integer", 1430);
  objc_msgSend_setObject_forKey_(qword_280A47578, v814, v815, v816, v817, @"Integer", 1431);
  objc_msgSend_setObject_forKey_(qword_280A47578, v818, v819, v820, v821, @"Object(TSCHNumberFormat)", 1432);
  objc_msgSend_setObject_forKey_(qword_280A47578, v822, v823, v824, v825, @"Object(TSCHNumberFormat)", 1433);
  objc_msgSend_setObject_forKey_(qword_280A47578, v826, v827, v828, v829, @"Integer", 1434);
  objc_msgSend_setObject_forKey_(qword_280A47578, v830, v831, v832, v833, @"Integer", 1435);
  objc_msgSend_setObject_forKey_(qword_280A47578, v834, v835, v836, v837, @"Float", 1436);
  objc_msgSend_setObject_forKey_(qword_280A47578, v838, v839, v840, v841, @"Integer", 1437);
  objc_msgSend_setObject_forKey_(qword_280A47578, v842, v843, v844, v845, @"Integer", 1438);
  objc_msgSend_setObject_forKey_(qword_280A47578, v846, v847, v848, v849, @"Integer", 1439);
  objc_msgSend_setObject_forKey_(qword_280A47578, v850, v851, v852, v853, @"Integer", 1440);
  objc_msgSend_setObject_forKey_(qword_280A47578, v854, v855, v856, v857, @"Integer", 1441);
  objc_msgSend_setObject_forKey_(qword_280A47578, v858, v859, v860, v861, @"Integer", 1442);
  objc_msgSend_setObject_forKey_(qword_280A47578, v862, v863, v864, v865, @"Integer", 1443);
  objc_msgSend_setObject_forKey_(qword_280A47578, v866, v867, v868, v869, @"Object(TSCHNumberFormat)", 1444);
  objc_msgSend_setObject_forKey_(qword_280A47578, v870, v871, v872, v873, @"Integer", 1445);
  objc_msgSend_setObject_forKey_(qword_280A47578, v874, v875, v876, v877, @"Object(TSDShadow)", 1446);
  objc_msgSend_setObject_forKey_(qword_280A47578, v878, v879, v880, v881, @"Object(TSDShadow)", 1447);
  objc_msgSend_setObject_forKey_(qword_280A47578, v882, v883, v884, v885, @"Object(TSDShadow)", 1448);
  objc_msgSend_setObject_forKey_(qword_280A47578, v886, v887, v888, v889, @"Object(TSDShadow)", 1449);
  objc_msgSend_setObject_forKey_(qword_280A47578, v890, v891, v892, v893, @"Object(TSDShadow)", 1450);
  objc_msgSend_setObject_forKey_(qword_280A47578, v894, v895, v896, v897, @"Object(TSDShadow)", 1451);
  objc_msgSend_setObject_forKey_(qword_280A47578, v898, v899, v900, v901, @"Object(TSDShadow)", 1452);
  objc_msgSend_setObject_forKey_(qword_280A47578, v902, v903, v904, v905, @"Object(TSDShadow)", 1453);
  objc_msgSend_setObject_forKey_(qword_280A47578, v906, v907, v908, v909, @"Object(TSDShadow)", 1454);
  objc_msgSend_setObject_forKey_(qword_280A47578, v910, v911, v912, v913, @"Object(TSDShadow)", 1455);
  objc_msgSend_setObject_forKey_(qword_280A47578, v914, v915, v916, v917, @"Object(TSDShadow)", 1456);
  objc_msgSend_setObject_forKey_(qword_280A47578, v918, v919, v920, v921, @"Object(TSDShadow)", 1457);
  objc_msgSend_setObject_forKey_(qword_280A47578, v922, v923, v924, v925, @"Object(TSDShadow)", 1458);
  objc_msgSend_setObject_forKey_(qword_280A47578, v926, v927, v928, v929, @"Object(TSDShadow)", 1459);
  objc_msgSend_setObject_forKey_(qword_280A47578, v930, v931, v932, v933, @"Object(TSDShadow)", 1460);
  objc_msgSend_setObject_forKey_(qword_280A47578, v934, v935, v936, v937, @"Object(TSDShadow)", 1461);
  objc_msgSend_setObject_forKey_(qword_280A47578, v938, v939, v940, v941, @"Boolean", 1462);
  objc_msgSend_setObject_forKey_(qword_280A47578, v942, v943, v944, v945, @"Boolean", 1463);
  objc_msgSend_setObject_forKey_(qword_280A47578, v946, v947, v948, v949, @"Boolean", 1464);
  objc_msgSend_setObject_forKey_(qword_280A47578, v950, v951, v952, v953, @"Boolean", 1465);
  objc_msgSend_setObject_forKey_(qword_280A47578, v954, v955, v956, v957, @"Boolean", 1466);
  objc_msgSend_setObject_forKey_(qword_280A47578, v958, v959, v960, v961, @"Boolean", 1467);
  objc_msgSend_setObject_forKey_(qword_280A47578, v962, v963, v964, v965, @"Boolean", 1468);
  objc_msgSend_setObject_forKey_(qword_280A47578, v966, v967, v968, v969, @"Boolean", 1469);
  objc_msgSend_setObject_forKey_(qword_280A47578, v970, v971, v972, v973, @"Boolean", 1470);
  objc_msgSend_setObject_forKey_(qword_280A47578, v974, v975, v976, v977, @"Boolean", 1471);
  objc_msgSend_setObject_forKey_(qword_280A47578, v978, v979, v980, v981, @"Boolean", 1472);
  objc_msgSend_setObject_forKey_(qword_280A47578, v982, v983, v984, v985, @"Boolean", 1473);
  objc_msgSend_setObject_forKey_(qword_280A47578, v986, v987, v988, v989, @"Boolean", 1474);
  objc_msgSend_setObject_forKey_(qword_280A47578, v990, v991, v992, v993, @"Boolean", 1475);
  objc_msgSend_setObject_forKey_(qword_280A47578, v994, v995, v996, v997, @"Boolean", 1476);
  objc_msgSend_setObject_forKey_(qword_280A47578, v998, v999, v1000, v1001, @"Boolean", 1477);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1002, v1003, v1004, v1005, @"Boolean", 1478);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1006, v1007, v1008, v1009, @"Boolean", 1479);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1010, v1011, v1012, v1013, @"Boolean", 1480);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1014, v1015, v1016, v1017, @"Boolean", 1481);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1018, v1019, v1020, v1021, @"Boolean", 1482);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1022, v1023, v1024, v1025, @"Boolean", 1483);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1026, v1027, v1028, v1029, @"Boolean", 1484);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1030, v1031, v1032, v1033, @"Boolean", 1485);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1034, v1035, v1036, v1037, @"Boolean", 1486);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1038, v1039, v1040, v1041, @"Integer", 1487);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1042, v1043, v1044, v1045, @"Boolean", 1488);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1046, v1047, v1048, v1049, @"Boolean", 1489);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1050, v1051, v1052, v1053, @"Boolean", 1490);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1054, v1055, v1056, v1057, @"Boolean", 1491);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1058, v1059, v1060, v1061, @"Boolean", 1492);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1062, v1063, v1064, v1065, @"Boolean", 1493);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1066, v1067, v1068, v1069, @"Boolean", 1494);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1070, v1071, v1072, v1073, @"Boolean", 1495);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1074, v1075, v1076, v1077, @"Boolean", 1496);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1078, v1079, v1080, v1081, @"Object(TSDStroke)", 1497);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1082, v1083, v1084, v1085, @"Object(TSDStroke)", 1498);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1086, v1087, v1088, v1089, @"Object(TSDStroke)", 1499);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1090, v1091, v1092, v1093, @"Object(TSDStroke)", 1500);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1094, v1095, v1096, v1097, @"Object(TSDStroke)", 1501);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1098, v1099, v1100, v1101, @"Object(TSDStroke)", 1502);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1102, v1103, v1104, v1105, @"Object(TSDStroke)", 1503);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1106, v1107, v1108, v1109, @"Object(TSDStroke)", 1504);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1110, v1111, v1112, v1113, @"Object(TSDStroke)", 1505);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1114, v1115, v1116, v1117, @"Object(TSDStroke)", 1506);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1118, v1119, v1120, v1121, @"Object(TSDFill)", 1507);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1122, v1123, v1124, v1125, @"Object(TSDFill)", 1508);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1126, v1127, v1128, v1129, @"Object(TSDFill)", 1509);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1130, v1131, v1132, v1133, @"Object(TSDFill)", 1510);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1134, v1135, v1136, v1137, @"Object(TSDFill)", 1511);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1138, v1139, v1140, v1141, @"Object(TSDFill)", 1512);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1142, v1143, v1144, v1145, @"Object(TSDFill)", 1513);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1146, v1147, v1148, v1149, @"Boolean", 1514);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1150, v1151, v1152, v1153, @"Boolean", 1515);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1154, v1155, v1156, v1157, @"Boolean", 1516);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1158, v1159, v1160, v1161, @"Boolean", 1517);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1162, v1163, v1164, v1165, @"Boolean", 1518);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1166, v1167, v1168, v1169, @"Boolean", 1519);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1170, v1171, v1172, v1173, @"Boolean", 1520);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1174, v1175, v1176, v1177, @"Boolean", 1521);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1178, v1179, v1180, v1181, @"Boolean", 1522);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1182, v1183, v1184, v1185, @"Boolean", 1523);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1186, v1187, v1188, v1189, @"Boolean", 1524);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1190, v1191, v1192, v1193, @"Boolean", 1525);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1194, v1195, v1196, v1197, @"Float", 1526);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1198, v1199, v1200, v1201, @"Float", 1527);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1202, v1203, v1204, v1205, @"Float", 1528);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1206, v1207, v1208, v1209, @"Float", 1529);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1210, v1211, v1212, v1213, @"Float", 1530);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1214, v1215, v1216, v1217, @"Float", 1531);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1218, v1219, v1220, v1221, @"Object(TSDStroke)", 1532);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1222, v1223, v1224, v1225, @"Object(TSDStroke)", 1533);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1226, v1227, v1228, v1229, @"Object(TSDStroke)", 1534);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1230, v1231, v1232, v1233, @"Object(TSDStroke)", 1535);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1234, v1235, v1236, v1237, @"Object(TSDStroke)", 1536);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1238, v1239, v1240, v1241, @"Object(TSDStroke)", 1537);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1242, v1243, v1244, v1245, @"Object(TSDStroke)", 1538);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1246, v1247, v1248, v1249, @"Integer", 1539);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1250, v1251, v1252, v1253, @"Integer", 1540);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1254, v1255, v1256, v1257, @"Integer", 1541);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1258, v1259, v1260, v1261, @"Integer", 1542);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1262, v1263, v1264, v1265, @"Integer", 1543);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1266, v1267, v1268, v1269, @"Integer", 1544);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1270, v1271, v1272, v1273, @"Float", 1545);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1274, v1275, v1276, v1277, @"Float", 1546);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1278, v1279, v1280, v1281, @"String", 1547);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1282, v1283, v1284, v1285, @"Integer", 1548);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1286, v1287, v1288, v1289, @"Integer", 1549);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1290, v1291, v1292, v1293, @"Float", 1550);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1294, v1295, v1296, v1297, @"Float", 1551);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1298, v1299, v1300, v1301, @"Object(TSDShadow)", 1552);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1302, v1303, v1304, v1305, @"Boolean", 1553);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1306, v1307, v1308, v1309, @"Boolean", 1554);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1310, v1311, v1312, v1313, @"Boolean", 1555);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1314, v1315, v1316, v1317, @"Object(TSDStroke)", 1556);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1318, v1319, v1320, v1321, @"Integer", 1557);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1322, v1323, v1324, v1325, @"Float", 1558);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1326, v1327, v1328, v1329, @"Integer", 1559);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1330, v1331, v1332, v1333, @"Float", 1560);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1334, v1335, v1336, v1337, @"Integer", 1561);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1338, v1339, v1340, v1341, @"Integer", 1562);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1342, v1343, v1344, v1345, @"Integer", 1563);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1346, v1347, v1348, v1349, @"Integer", 1564);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1350, v1351, v1352, v1353, @"Integer", 1565);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1354, v1355, v1356, v1357, @"Integer", 1566);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1358, v1359, v1360, v1361, @"Integer", 1567);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1362, v1363, v1364, v1365, @"Integer", 1568);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1366, v1367, v1368, v1369, @"Integer", 1569);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1370, v1371, v1372, v1373, @"Integer", 1570);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1374, v1375, v1376, v1377, @"Integer", 1571);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1378, v1379, v1380, v1381, @"Integer", 1572);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1382, v1383, v1384, v1385, @"Integer", 1573);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1386, v1387, v1388, v1389, @"Integer", 1574);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1390, v1391, v1392, v1393, @"Integer", 1575);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1394, v1395, v1396, v1397, @"Integer", 1576);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1398, v1399, v1400, v1401, @"Float", 1577);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1402, v1403, v1404, v1405, @"Integer", 1578);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1406, v1407, v1408, v1409, @"Object(TSDFill)", 1579);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1410, v1411, v1412, v1413, @"Integer", 1580);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1414, v1415, v1416, v1417, @"Float", 1581);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1418, v1419, v1420, v1421, @"Object(TSDShadow)", 1582);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1422, v1423, v1424, v1425, @"Object(TSDStroke)", 1583);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1426, v1427, v1428, v1429, @"Object(NSNumber)", 1584);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1430, v1431, v1432, v1433, @"String", 1585);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1434, v1435, v1436, v1437, @"Integer", 1586);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1438, v1439, v1440, v1441, @"Object(TSDShadow)", 1587);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1442, v1443, v1444, v1445, @"Boolean", 1588);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1446, v1447, v1448, v1449, @"Boolean", 1589);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1450, v1451, v1452, v1453, @"Boolean", 1590);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1454, v1455, v1456, v1457, @"Object(TSDStroke)", 1591);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1458, v1459, v1460, v1461, @"Integer", 1592);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1462, v1463, v1464, v1465, @"Integer", 1593);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1466, v1467, v1468, v1469, @"Integer", 1594);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1470, v1471, v1472, v1473, @"Boolean", 1595);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1474, v1475, v1476, v1477, @"Boolean", 1596);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1478, v1479, v1480, v1481, @"Boolean", 1597);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1482, v1483, v1484, v1485, @"Boolean", 1598);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1486, v1487, v1488, v1489, @"Object(TSCH3DLightingPackage)", 1599);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1490, v1491, v1492, v1493, @"Object(TSCH3DLightingPackage)", 1600);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1494, v1495, v1496, v1497, @"Object(TSCH3DLightingPackage)", 1601);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1498, v1499, v1500, v1501, @"Object(TSCH3DLightingPackage)", 1602);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1502, v1503, v1504, v1505, @"Object(TSCH3DLightingPackage)", 1603);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1506, v1507, v1508, v1509, @"Object(TSCH3DLightingPackage)", 1604);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1510, v1511, v1512, v1513, @"Object(TSDShadow)", 1605);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1514, v1515, v1516, v1517, @"Object(TSDShadow)", 1606);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1518, v1519, v1520, v1521, @"Object(TSDShadow)", 1607);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1522, v1523, v1524, v1525, @"Object(TSDShadow)", 1608);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1526, v1527, v1528, v1529, @"Object(TSDShadow)", 1609);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1530, v1531, v1532, v1533, @"Integer", 1610);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1534, v1535, v1536, v1537, @"String", 1611);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1538, v1539, v1540, v1541, @"Integer", 1612);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1542, v1543, v1544, v1545, @"Float", 1613);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1546, v1547, v1548, v1549, @"Integer", 1614);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1550, v1551, v1552, v1553, @"Object(TSDShadow)", 1615);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1554, v1555, v1556, v1557, @"Float", 1616);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1558, v1559, v1560, v1561, @"Integer", 1617);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1562, v1563, v1564, v1565, @"Object(TSDShadow)", 1618);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1566, v1567, v1568, v1569, @"Object(TSCH3DFill)", 1619);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1570, v1571, v1572, v1573, @"Object(TSCH3DFill)", 1620);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1574, v1575, v1576, v1577, @"Object(TSCH3DFill)", 1621);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1578, v1579, v1580, v1581, @"Object(TSCH3DFill)", 1622);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1582, v1583, v1584, v1585, @"Object(TSCH3DFill)", 1623);
  objc_msgSend_setObject_forKey_(qword_280A47578, v1586, v1587, v1588, v1589, @"Object(TSCH3DFill)", 1624);
  v1594 = qword_280A47578;

  return objc_msgSend_setObject_forKey_(v1594, v1590, v1591, v1592, v1593, @"Boolean", 1625);
}

void sub_2762D52C0()
{
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = objc_msgSend_initWithObjectsAndKeys_(v5, byte_28856C5D8, v0, v1, v2, @"Default1_0DateFormat", &unk_28856C1A0, @"Default1_0NumberFormat", &unk_28856C1B8, @"Category3DGridlineOpacity", &unk_28856C1D0, @"Value3DGridlineOpacity", &unk_28856C1E8, @"Category3DGridlineStroke", &unk_28856C200, @"Value3DGridlineStroke", &unk_28856C218, @"Default3DLabelPosition", &unk_28856C230, @"DefaultDateFormat", &unk_28856C248, @"DefaultDurationFormat", &unk_28856C260, @"CategoryHorizontalSpacing", &unk_28856C278, @"DefaultLabelAngleBaselineDirection", &unk_28856C290, @"DefaultLabelExplosion", &unk_28856C2A8, @"CategoryLabelParagraphStyleIndex", &unk_28856C2C0, @"DefaultLabelParagraphStyleIndex", &unk_28856C2D8, @"ValueLabelParagraphStyleIndex", &unk_28856C2F0, @"CategoryLabelsOrientation", &unk_28856C308, @"DefaultLabelsOrientation", &unk_28856C320, @"ValueLabelsOrientation", &unk_28856C338, @"CategoryMajorGridlineOpacity", &unk_28856C350, @"ValueMajorGridlineOpacity", &unk_28856C368, @"CategoryMajorGridlineShadow", &unk_28856C380, @"ValueMajorGridlineShadow", &unk_28856C398, @"CategoryMajorGridlineStroke", &unk_28856C3B0, @"ValueMajorGridlineStroke", &unk_28856C3C8, @"CategoryMinorGridlineOpacity", &unk_28856C3E0, @"ValueMinorGridlineOpacity", &unk_28856C3F8, @"CategoryMinorGridlineShadow", &unk_28856C410, @"ValueMinorGridlineShadow", &unk_28856C428, @"CategoryMinorGridlineStroke", &unk_28856C440);
  v4 = qword_280A47588;
  qword_280A47588 = v3;
}

uint64_t sub_2762DAA60()
{
  v0 = objc_alloc_init(MEMORY[0x277D81210]);
  v1 = qword_280A47598;
  qword_280A47598 = v0;

  objc_msgSend_setObject_forKey_(qword_280A47598, v2, v3, v4, v5, @"default10DateFormat", 1228);
  objc_msgSend_setObject_forKey_(qword_280A47598, v6, v7, v8, v9, @"1_0DateFormat", 1024);
  objc_msgSend_setObject_forKey_(qword_280A47598, v10, v11, v12, v13, @"default10NumberFormat", 1229);
  objc_msgSend_setObject_forKey_(qword_280A47598, v14, v15, v16, v17, @"1_0NumberFormat", 1025);
  objc_msgSend_setObject_forKey_(qword_280A47598, v18, v19, v20, v21, @"category3dGridlineOpacity", 1230);
  objc_msgSend_setObject_forKey_(qword_280A47598, v22, v23, v24, v25, @"3dGridlineOpacity", 1026);
  objc_msgSend_setObject_forKey_(qword_280A47598, v26, v27, v28, v29, @"value3dGridlineOpacity", 1231);
  objc_msgSend_setObject_forKey_(qword_280A47598, v30, v31, v32, v33, @"3dGridlineOpacity", 1026);
  objc_msgSend_setObject_forKey_(qword_280A47598, v34, v35, v36, v37, @"category3dGridlineStroke", 1232);
  objc_msgSend_setObject_forKey_(qword_280A47598, v38, v39, v40, v41, @"3dGridlineStroke", 1027);
  objc_msgSend_setObject_forKey_(qword_280A47598, v42, v43, v44, v45, @"value3dGridlineStroke", 1233);
  objc_msgSend_setObject_forKey_(qword_280A47598, v46, v47, v48, v49, @"3dGridlineStroke", 1027);
  objc_msgSend_setObject_forKey_(qword_280A47598, v50, v51, v52, v53, @"default3dLabelPosition", 1234);
  objc_msgSend_setObject_forKey_(qword_280A47598, v54, v55, v56, v57, @"3dLabelPosition", 1028);
  objc_msgSend_setObject_forKey_(qword_280A47598, v58, v59, v60, v61, @"defaultDateFormat", 1235);
  objc_msgSend_setObject_forKey_(qword_280A47598, v62, v63, v64, v65, @"dateFormat", 1029);
  objc_msgSend_setObject_forKey_(qword_280A47598, v66, v67, v68, v69, @"defaultDurationFormat", 1236);
  objc_msgSend_setObject_forKey_(qword_280A47598, v70, v71, v72, v73, @"durationFormat", 1030);
  objc_msgSend_setObject_forKey_(qword_280A47598, v74, v75, v76, v77, @"categoryHorizontalSpacing", 1237);
  objc_msgSend_setObject_forKey_(qword_280A47598, v78, v79, v80, v81, @"horizontalSpacing", 1031);
  objc_msgSend_setObject_forKey_(qword_280A47598, v82, v83, v84, v85, @"defaultLabelAngleBaselineDirection", 1238);
  objc_msgSend_setObject_forKey_(qword_280A47598, v86, v87, v88, v89, @"labelAngleBaselineDirection", 1032);
  objc_msgSend_setObject_forKey_(qword_280A47598, v90, v91, v92, v93, @"defaultLabelExplosion", 1239);
  objc_msgSend_setObject_forKey_(qword_280A47598, v94, v95, v96, v97, @"labelExplosion", 1033);
  objc_msgSend_setObject_forKey_(qword_280A47598, v98, v99, v100, v101, @"categoryLabelParagraphStyleIndex", 1240);
  objc_msgSend_setObject_forKey_(qword_280A47598, v102, v103, v104, v105, @"labelParagraphStyleIndex", 1034);
  objc_msgSend_setObject_forKey_(qword_280A47598, v106, v107, v108, v109, @"defaultLabelParagraphStyleIndex", 1241);
  objc_msgSend_setObject_forKey_(qword_280A47598, v110, v111, v112, v113, @"labelParagraphStyleIndex", 1034);
  objc_msgSend_setObject_forKey_(qword_280A47598, v114, v115, v116, v117, @"valueLabelParagraphStyleIndex", 1242);
  objc_msgSend_setObject_forKey_(qword_280A47598, v118, v119, v120, v121, @"labelParagraphStyleIndex", 1034);
  objc_msgSend_setObject_forKey_(qword_280A47598, v122, v123, v124, v125, @"categoryLabelsOrientation", 1243);
  objc_msgSend_setObject_forKey_(qword_280A47598, v126, v127, v128, v129, @"labelsOrientation", 1035);
  objc_msgSend_setObject_forKey_(qword_280A47598, v130, v131, v132, v133, @"defaultLabelsOrientation", 1244);
  objc_msgSend_setObject_forKey_(qword_280A47598, v134, v135, v136, v137, @"labelsOrientation", 1035);
  objc_msgSend_setObject_forKey_(qword_280A47598, v138, v139, v140, v141, @"valueLabelsOrientation", 1245);
  objc_msgSend_setObject_forKey_(qword_280A47598, v142, v143, v144, v145, @"labelsOrientation", 1035);
  objc_msgSend_setObject_forKey_(qword_280A47598, v146, v147, v148, v149, @"categoryMajorGridlineOpacity", 1246);
  objc_msgSend_setObject_forKey_(qword_280A47598, v150, v151, v152, v153, @"majorGridlineOpacity", 1036);
  objc_msgSend_setObject_forKey_(qword_280A47598, v154, v155, v156, v157, @"valueMajorGridlineOpacity", 1247);
  objc_msgSend_setObject_forKey_(qword_280A47598, v158, v159, v160, v161, @"majorGridlineOpacity", 1036);
  objc_msgSend_setObject_forKey_(qword_280A47598, v162, v163, v164, v165, @"categoryMajorGridlineShadow", 1248);
  objc_msgSend_setObject_forKey_(qword_280A47598, v166, v167, v168, v169, @"majorGridlineShadow", 1037);
  objc_msgSend_setObject_forKey_(qword_280A47598, v170, v171, v172, v173, @"valueMajorGridlineShadow", 1249);
  objc_msgSend_setObject_forKey_(qword_280A47598, v174, v175, v176, v177, @"majorGridlineShadow", 1037);
  objc_msgSend_setObject_forKey_(qword_280A47598, v178, v179, v180, v181, @"categoryMajorGridlineStroke", 1250);
  objc_msgSend_setObject_forKey_(qword_280A47598, v182, v183, v184, v185, @"majorGridlineStroke", 1038);
  objc_msgSend_setObject_forKey_(qword_280A47598, v186, v187, v188, v189, @"valueMajorGridlineStroke", 1251);
  objc_msgSend_setObject_forKey_(qword_280A47598, v190, v191, v192, v193, @"majorGridlineStroke", 1038);
  objc_msgSend_setObject_forKey_(qword_280A47598, v194, v195, v196, v197, @"categoryMinorGridlineOpacity", 1252);
  objc_msgSend_setObject_forKey_(qword_280A47598, v198, v199, v200, v201, @"minorGridlineOpacity", 1039);
  objc_msgSend_setObject_forKey_(qword_280A47598, v202, v203, v204, v205, @"valueMinorGridlineOpacity", 1253);
  objc_msgSend_setObject_forKey_(qword_280A47598, v206, v207, v208, v209, @"minorGridlineOpacity", 1039);
  objc_msgSend_setObject_forKey_(qword_280A47598, v210, v211, v212, v213, @"categoryMinorGridlineShadow", 1254);
  objc_msgSend_setObject_forKey_(qword_280A47598, v214, v215, v216, v217, @"minorGridlineShadow", 1040);
  objc_msgSend_setObject_forKey_(qword_280A47598, v218, v219, v220, v221, @"valueMinorGridlineShadow", 1255);
  objc_msgSend_setObject_forKey_(qword_280A47598, v222, v223, v224, v225, @"minorGridlineShadow", 1040);
  objc_msgSend_setObject_forKey_(qword_280A47598, v226, v227, v228, v229, @"categoryMinorGridlineStroke", 1256);
  objc_msgSend_setObject_forKey_(qword_280A47598, v230, v231, v232, v233, @"minorGridlineStroke", 1041);
  objc_msgSend_setObject_forKey_(qword_280A47598, v234, v235, v236, v237, @"valueMinorGridlineStroke", 1257);
  objc_msgSend_setObject_forKey_(qword_280A47598, v238, v239, v240, v241, @"minorGridlineStroke", 1041);
  objc_msgSend_setObject_forKey_(qword_280A47598, v242, v243, v244, v245, @"defaultNumberFormat", 1258);
  objc_msgSend_setObject_forKey_(qword_280A47598, v246, v247, v248, v249, @"numberFormat", 1042);
  objc_msgSend_setObject_forKey_(qword_280A47598, v250, v251, v252, v253, @"defaultNumberFormatType", 1259);
  objc_msgSend_setObject_forKey_(qword_280A47598, v254, v255, v256, v257, @"numberFormatType", 1043);
  objc_msgSend_setObject_forKey_(qword_280A47598, v258, v259, v260, v261, @"valueNumberOfDecades", 1260);
  objc_msgSend_setObject_forKey_(qword_280A47598, v262, v263, v264, v265, @"numberOfDecades", 1044);
  objc_msgSend_setObject_forKey_(qword_280A47598, v266, v267, v268, v269, @"valueNumberOfMajorGridlines", 1261);
  objc_msgSend_setObject_forKey_(qword_280A47598, v270, v271, v272, v273, @"numberOfMajorGridlines", 1045);
  objc_msgSend_setObject_forKey_(qword_280A47598, v274, v275, v276, v277, @"valueNumberOfMinorGridlines", 1262);
  objc_msgSend_setObject_forKey_(qword_280A47598, v278, v279, v280, v281, @"numberOfMinorGridlines", 1046);
  objc_msgSend_setObject_forKey_(qword_280A47598, v282, v283, v284, v285, @"categoryPlotToEdges", 1263);
  objc_msgSend_setObject_forKey_(qword_280A47598, v286, v287, v288, v289, @"plotToEdges", 1047);
  objc_msgSend_setObject_forKey_(qword_280A47598, v290, v291, v292, v293, @"valueScale", 1264);
  objc_msgSend_setObject_forKey_(qword_280A47598, v294, v295, v296, v297, @"scale", 1048);
  objc_msgSend_setObject_forKey_(qword_280A47598, v298, v299, v300, v301, @"categoryShowAxis", 1265);
  objc_msgSend_setObject_forKey_(qword_280A47598, v302, v303, v304, v305, @"showAxis", 1049);
  objc_msgSend_setObject_forKey_(qword_280A47598, v306, v307, v308, v309, @"valueShowAxis", 1266);
  objc_msgSend_setObject_forKey_(qword_280A47598, v310, v311, v312, v313, @"showAxis", 1049);
  objc_msgSend_setObject_forKey_(qword_280A47598, v314, v315, v316, v317, @"defaultShowExtensionLines", 1267);
  objc_msgSend_setObject_forKey_(qword_280A47598, v318, v319, v320, v321, @"showExtensionLines", 1050);
  objc_msgSend_setObject_forKey_(qword_280A47598, v322, v323, v324, v325, @"categoryShowGridlineTickmarks", 1268);
  objc_msgSend_setObject_forKey_(qword_280A47598, v326, v327, v328, v329, @"showGridlineTickmarks", 1051);
  objc_msgSend_setObject_forKey_(qword_280A47598, v330, v331, v332, v333, @"valueShowGridlineTickmarks", 1269);
  objc_msgSend_setObject_forKey_(qword_280A47598, v334, v335, v336, v337, @"showGridlineTickmarks", 1051);
  objc_msgSend_setObject_forKey_(qword_280A47598, v338, v339, v340, v341, @"categoryShowLabels", 1270);
  objc_msgSend_setObject_forKey_(qword_280A47598, v342, v343, v344, v345, @"showLabels", 1052);
  objc_msgSend_setObject_forKey_(qword_280A47598, v346, v347, v348, v349, @"defaultShowLabels", 1271);
  objc_msgSend_setObject_forKey_(qword_280A47598, v350, v351, v352, v353, @"showLabels", 1052);
  objc_msgSend_setObject_forKey_(qword_280A47598, v354, v355, v356, v357, @"valueShowLabels", 1272);
  objc_msgSend_setObject_forKey_(qword_280A47598, v358, v359, v360, v361, @"showLabels", 1052);
  objc_msgSend_setObject_forKey_(qword_280A47598, v362, v363, v364, v365, @"categoryShowLastLabel", 1273);
  objc_msgSend_setObject_forKey_(qword_280A47598, v366, v367, v368, v369, @"showLastLabel", 1053);
  objc_msgSend_setObject_forKey_(qword_280A47598, v370, v371, v372, v373, @"categoryShowMajorGridlines", 1274);
  objc_msgSend_setObject_forKey_(qword_280A47598, v374, v375, v376, v377, @"showMajorGridlines", 1054);
  objc_msgSend_setObject_forKey_(qword_280A47598, v378, v379, v380, v381, @"polarCategoryShowMajorGridlines", 1275);
  objc_msgSend_setObject_forKey_(qword_280A47598, v382, v383, v384, v385, @"showMajorGridlines", 1054);
  objc_msgSend_setObject_forKey_(qword_280A47598, v386, v387, v388, v389, @"valueShowMajorGridlines", 1276);
  objc_msgSend_setObject_forKey_(qword_280A47598, v390, v391, v392, v393, @"showMajorGridlines", 1054);
  objc_msgSend_setObject_forKey_(qword_280A47598, v394, v395, v396, v397, @"categoryShowMajorTickmarks", 1277);
  objc_msgSend_setObject_forKey_(qword_280A47598, v398, v399, v400, v401, @"showMajorTickmarks", 1055);
  objc_msgSend_setObject_forKey_(qword_280A47598, v402, v403, v404, v405, @"valueShowMajorTickmarks", 1278);
  objc_msgSend_setObject_forKey_(qword_280A47598, v406, v407, v408, v409, @"showMajorTickmarks", 1055);
  objc_msgSend_setObject_forKey_(qword_280A47598, v410, v411, v412, v413, @"valueShowMinimumLabel", 1279);
  objc_msgSend_setObject_forKey_(qword_280A47598, v414, v415, v416, v417, @"showMinimumLabel", 1056);
  objc_msgSend_setObject_forKey_(qword_280A47598, v418, v419, v420, v421, @"categoryShowMinorGridlines", 1280);
  objc_msgSend_setObject_forKey_(qword_280A47598, v422, v423, v424, v425, @"showMinorGridlines", 1057);
  objc_msgSend_setObject_forKey_(qword_280A47598, v426, v427, v428, v429, @"valueShowMinorGridlines", 1281);
  objc_msgSend_setObject_forKey_(qword_280A47598, v430, v431, v432, v433, @"showMinorGridlines", 1057);
  objc_msgSend_setObject_forKey_(qword_280A47598, v434, v435, v436, v437, @"categoryShowMinorTickmarks", 1282);
  objc_msgSend_setObject_forKey_(qword_280A47598, v438, v439, v440, v441, @"showMinorTickmarks", 1058);
  objc_msgSend_setObject_forKey_(qword_280A47598, v442, v443, v444, v445, @"valueShowMinorTickmarks", 1283);
  objc_msgSend_setObject_forKey_(qword_280A47598, v446, v447, v448, v449, @"showMinorTickmarks", 1058);
  objc_msgSend_setObject_forKey_(qword_280A47598, v450, v451, v452, v453, @"categoryShowSeriesLabels", 1284);
  objc_msgSend_setObject_forKey_(qword_280A47598, v454, v455, v456, v457, @"showSeriesLabels", 1059);
  objc_msgSend_setObject_forKey_(qword_280A47598, v458, v459, v460, v461, @"multiDataShowSeriesLabels", 1285);
  objc_msgSend_setObject_forKey_(qword_280A47598, v462, v463, v464, v465, @"showSeriesLabels", 1059);
  objc_msgSend_setObject_forKey_(qword_280A47598, v466, v467, v468, v469, @"categoryShowTitle", 1286);
  objc_msgSend_setObject_forKey_(qword_280A47598, v470, v471, v472, v473, @"showTitle", 1060);
  objc_msgSend_setObject_forKey_(qword_280A47598, v474, v475, v476, v477, @"valueShowTitle", 1287);
  objc_msgSend_setObject_forKey_(qword_280A47598, v478, v479, v480, v481, @"showTitle", 1060);
  objc_msgSend_setObject_forKey_(qword_280A47598, v482, v483, v484, v485, @"categoryTickmarkLocation", 1288);
  objc_msgSend_setObject_forKey_(qword_280A47598, v486, v487, v488, v489, @"tickmarkLocation", 1061);
  objc_msgSend_setObject_forKey_(qword_280A47598, v490, v491, v492, v493, @"valueTickmarkLocation", 1289);
  objc_msgSend_setObject_forKey_(qword_280A47598, v494, v495, v496, v497, @"tickmarkLocation", 1061);
  objc_msgSend_setObject_forKey_(qword_280A47598, v498, v499, v500, v501, @"categoryTitle", 1290);
  objc_msgSend_setObject_forKey_(qword_280A47598, v502, v503, v504, v505, @"title", 1062);
  objc_msgSend_setObject_forKey_(qword_280A47598, v506, v507, v508, v509, @"categoryTitleParagraphStyleIndex", 1291);
  objc_msgSend_setObject_forKey_(qword_280A47598, v510, v511, v512, v513, @"titleParagraphStyleIndex", 1063);
  objc_msgSend_setObject_forKey_(qword_280A47598, v514, v515, v516, v517, @"defaultTitleParagraphStyleIndex", 1292);
  objc_msgSend_setObject_forKey_(qword_280A47598, v518, v519, v520, v521, @"titleParagraphStyleIndex", 1063);
  objc_msgSend_setObject_forKey_(qword_280A47598, v522, v523, v524, v525, @"valueTitleParagraphStyleIndex", 1293);
  objc_msgSend_setObject_forKey_(qword_280A47598, v526, v527, v528, v529, @"titleParagraphStyleIndex", 1063);
  objc_msgSend_setObject_forKey_(qword_280A47598, v530, v531, v532, v533, @"valueTitle", 1294);
  objc_msgSend_setObject_forKey_(qword_280A47598, v534, v535, v536, v537, @"title", 1062);
  objc_msgSend_setObject_forKey_(qword_280A47598, v538, v539, v540, v541, @"defaultUserMax", 1295);
  objc_msgSend_setObject_forKey_(qword_280A47598, v542, v543, v544, v545, @"userMax", 1064);
  objc_msgSend_setObject_forKey_(qword_280A47598, v546, v547, v548, v549, @"defaultUserMin", 1296);
  objc_msgSend_setObject_forKey_(qword_280A47598, v550, v551, v552, v553, @"userMin", 1065);
  objc_msgSend_setObject_forKey_(qword_280A47598, v554, v555, v556, v557, @"categoryVerticalSpacing", 1297);
  objc_msgSend_setObject_forKey_(qword_280A47598, v558, v559, v560, v561, @"verticalSpacing", 1066);
  objc_msgSend_setObject_forKey_(qword_280A47598, v562, v563, v564, v565, @"default3dBarShape", 1298);
  objc_msgSend_setObject_forKey_(qword_280A47598, v566, v567, v568, v569, @"3dBarShape", 1067);
  objc_msgSend_setObject_forKey_(qword_280A47598, v570, v571, v572, v573, @"default3dBevelEdges", 1299);
  objc_msgSend_setObject_forKey_(qword_280A47598, v574, v575, v576, v577, @"3dBevelEdges", 1068);
  objc_msgSend_setObject_forKey_(qword_280A47598, v578, v579, v580, v581, @"default3dChartOpacity", 1300);
  objc_msgSend_setObject_forKey_(qword_280A47598, v582, v583, v584, v585, @"3dChartOpacity", 1069);
  objc_msgSend_setObject_forKey_(qword_280A47598, v586, v587, v588, v589, @"default3dInterSetDepthGap", 1301);
  objc_msgSend_setObject_forKey_(qword_280A47598, v590, v591, v592, v593, @"3dInterSetDepthGap", 1070);
  objc_msgSend_setObject_forKey_(qword_280A47598, v594, v595, v596, v597, @"area3dLightingPackage", 1302);
  objc_msgSend_setObject_forKey_(qword_280A47598, v598, v599, v600, v601, @"3dLightingPackage", 1071);
  objc_msgSend_setObject_forKey_(qword_280A47598, v602, v603, v604, v605, @"bar3dLightingPackage", 1303);
  objc_msgSend_setObject_forKey_(qword_280A47598, v606, v607, v608, v609, @"3dLightingPackage", 1071);
  objc_msgSend_setObject_forKey_(qword_280A47598, v610, v611, v612, v613, @"column3dLightingPackage", 1304);
  objc_msgSend_setObject_forKey_(qword_280A47598, v614, v615, v616, v617, @"3dLightingPackage", 1071);
  objc_msgSend_setObject_forKey_(qword_280A47598, v618, v619, v620, v621, @"default3dLightingPackage", 1305);
  objc_msgSend_setObject_forKey_(qword_280A47598, v622, v623, v624, v625, @"3dLightingPackage", 1071);
  objc_msgSend_setObject_forKey_(qword_280A47598, v626, v627, v628, v629, @"line3dLightingPackage", 1306);
  objc_msgSend_setObject_forKey_(qword_280A47598, v630, v631, v632, v633, @"3dLightingPackage", 1071);
  objc_msgSend_setObject_forKey_(qword_280A47598, v634, v635, v636, v637, @"pie3dLightingPackage", 1307);
  objc_msgSend_setObject_forKey_(qword_280A47598, v638, v639, v640, v641, @"3dLightingPackage", 1071);
  objc_msgSend_setObject_forKey_(qword_280A47598, v642, v643, v644, v645, @"default3dRotation", 1308);
  objc_msgSend_setObject_forKey_(qword_280A47598, v646, v647, v648, v649, @"3dRotation", 1072);
  objc_msgSend_setObject_forKey_(qword_280A47598, v650, v651, v652, v653, @"area3dScale", 1309);
  objc_msgSend_setObject_forKey_(qword_280A47598, v654, v655, v656, v657, @"3dScale", 1073);
  objc_msgSend_setObject_forKey_(qword_280A47598, v658, v659, v660, v661, @"bar3dScale", 1310);
  objc_msgSend_setObject_forKey_(qword_280A47598, v662, v663, v664, v665, @"3dScale", 1073);
  objc_msgSend_setObject_forKey_(qword_280A47598, v666, v667, v668, v669, @"column3dScale", 1311);
  objc_msgSend_setObject_forKey_(qword_280A47598, v670, v671, v672, v673, @"3dScale", 1073);
  objc_msgSend_setObject_forKey_(qword_280A47598, v674, v675, v676, v677, @"default3dScale", 1312);
  objc_msgSend_setObject_forKey_(qword_280A47598, v678, v679, v680, v681, @"3dScale", 1073);
  objc_msgSend_setObject_forKey_(qword_280A47598, v682, v683, v684, v685, @"line3dScale", 1313);
  objc_msgSend_setObject_forKey_(qword_280A47598, v686, v687, v688, v689, @"3dScale", 1073);
  objc_msgSend_setObject_forKey_(qword_280A47598, v690, v691, v692, v693, @"pie3dScale", 1314);
  objc_msgSend_setObject_forKey_(qword_280A47598, v694, v695, v696, v697, @"3dScale", 1073);
  objc_msgSend_setObject_forKey_(qword_280A47598, v698, v699, v700, v701, @"default3dViewport", 1315);
  objc_msgSend_setObject_forKey_(qword_280A47598, v702, v703, v704, v705, @"3dViewport", 1074);
  objc_msgSend_setObject_forKey_(qword_280A47598, v706, v707, v708, v709, @"defaultAxisAnchorLabelAtEnds", 1316);
  objc_msgSend_setObject_forKey_(qword_280A47598, v710, v711, v712, v713, @"axisAnchorLabelAtEnds", 1075);
  objc_msgSend_setObject_forKey_(qword_280A47598, v714, v715, v716, v717, @"defaultBackgroundFill", 1317);
  objc_msgSend_setObject_forKey_(qword_280A47598, v718, v719, v720, v721, @"backgroundFill", 1076);
  objc_msgSend_setObject_forKey_(qword_280A47598, v722, v723, v724, v725, @"defaultBackgroundStroke", 1318);
  objc_msgSend_setObject_forKey_(qword_280A47598, v726, v727, v728, v729, @"backgroundStroke", 1077);
  objc_msgSend_setObject_forKey_(qword_280A47598, v730, v731, v732, v733, @"defaultBorderOpacity", 1319);
  objc_msgSend_setObject_forKey_(qword_280A47598, v734, v735, v736, v737, @"borderOpacity", 1078);
  objc_msgSend_setObject_forKey_(qword_280A47598, v738, v739, v740, v741, @"defaultBorderShadow", 1320);
  objc_msgSend_setObject_forKey_(qword_280A47598, v742, v743, v744, v745, @"borderShadow", 1079);
  objc_msgSend_setObject_forKey_(qword_280A47598, v746, v747, v748, v749, @"defaultBorderStroke", 1321);
  objc_msgSend_setObject_forKey_(qword_280A47598, v750, v751, v752, v753, @"borderStroke", 1080);
  objc_msgSend_setObject_forKey_(qword_280A47598, v754, v755, v756, v757, @"areaCalloutLineType", 1322);
  objc_msgSend_setObject_forKey_(qword_280A47598, v758, v759, v760, v761, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v762, v763, v764, v765, @"barCalloutLineType", 1323);
  objc_msgSend_setObject_forKey_(qword_280A47598, v766, v767, v768, v769, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v770, v771, v772, v773, @"bubbleCalloutLineType", 1324);
  objc_msgSend_setObject_forKey_(qword_280A47598, v774, v775, v776, v777, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v778, v779, v780, v781, @"defaultCalloutLineType", 1325);
  objc_msgSend_setObject_forKey_(qword_280A47598, v782, v783, v784, v785, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v786, v787, v788, v789, @"lineCalloutLineType", 1326);
  objc_msgSend_setObject_forKey_(qword_280A47598, v790, v791, v792, v793, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v794, v795, v796, v797, @"pieCalloutLineType", 1327);
  objc_msgSend_setObject_forKey_(qword_280A47598, v798, v799, v800, v801, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v802, v803, v804, v805, @"scatterCalloutLineType", 1328);
  objc_msgSend_setObject_forKey_(qword_280A47598, v806, v807, v808, v809, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v810, v811, v812, v813, @"stackedAreaCalloutLineType", 1329);
  objc_msgSend_setObject_forKey_(qword_280A47598, v814, v815, v816, v817, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v818, v819, v820, v821, @"stackedBarCalloutLineType", 1330);
  objc_msgSend_setObject_forKey_(qword_280A47598, v822, v823, v824, v825, @"calloutLineType", 1081);
  objc_msgSend_setObject_forKey_(qword_280A47598, v826, v827, v828, v829, @"defaultCombineLayers", 1331);
  objc_msgSend_setObject_forKey_(qword_280A47598, v830, v831, v832, v833, @"combineLayers", 1082);
  objc_msgSend_setObject_forKey_(qword_280A47598, v834, v835, v836, v837, @"defaultDEPRECATEDRoundedCornerOuterEndOnly", 1332);
  objc_msgSend_setObject_forKey_(qword_280A47598, v838, v839, v840, v841, @"dEPRECATEDRoundedCornerOuterEndOnly", 1090);
  objc_msgSend_setObject_forKey_(qword_280A47598, v842, v843, v844, v845, @"defaultDEPRECATEDRoundedCornerRadius", 1333);
  objc_msgSend_setObject_forKey_(qword_280A47598, v846, v847, v848, v849, @"dEPRECATEDRoundedCornerRadius", 1091);
  objc_msgSend_setObject_forKey_(qword_280A47598, v850, v851, v852, v853, @"defaultDataSetNameLocation", 1334);
  objc_msgSend_setObject_forKey_(qword_280A47598, v854, v855, v856, v857, @"dataSetNameLocation", 1098);
  objc_msgSend_setObject_forKey_(qword_280A47598, v858, v859, v860, v861, @"defaultDataSetNameParagraphStyleIndex", 1335);
  objc_msgSend_setObject_forKey_(qword_280A47598, v862, v863, v864, v865, @"dataSetNameParagraphStyleIndex", 1099);
  objc_msgSend_setObject_forKey_(qword_280A47598, v866, v867, v868, v869, @"defaultDonutPlaceTitleAtCenter", 1336);
  objc_msgSend_setObject_forKey_(qword_280A47598, v870, v871, v872, v873, @"donutPlaceTitleAtCenter", 1100);
  objc_msgSend_setObject_forKey_(qword_280A47598, v874, v875, v876, v877, @"defaultGridBackgroundFill", 1337);
  objc_msgSend_setObject_forKey_(qword_280A47598, v878, v879, v880, v881, @"gridBackgroundFill", 1101);
  objc_msgSend_setObject_forKey_(qword_280A47598, v882, v883, v884, v885, @"defaultGridBackgroundOpacity", 1338);
  objc_msgSend_setObject_forKey_(qword_280A47598, v886, v887, v888, v889, @"gridBackgroundOpacity", 1102);
  objc_msgSend_setObject_forKey_(qword_280A47598, v890, v891, v892, v893, @"defaultInnerRadius", 1339);
  objc_msgSend_setObject_forKey_(qword_280A47598, v894, v895, v896, v897, @"innerRadius", 1103);
  objc_msgSend_setObject_forKey_(qword_280A47598, v898, v899, v900, v901, @"defaultInterBarGap", 1340);
  objc_msgSend_setObject_forKey_(qword_280A47598, v902, v903, v904, v905, @"interBarGap", 1104);
  objc_msgSend_setObject_forKey_(qword_280A47598, v906, v907, v908, v909, @"defaultInterSetGap", 1341);
  objc_msgSend_setObject_forKey_(qword_280A47598, v910, v911, v912, v913, @"interSetGap", 1105);
  objc_msgSend_setObject_forKey_(qword_280A47598, v914, v915, v916, v917, @"defaultMultiDataControlType", 1342);
  objc_msgSend_setObject_forKey_(qword_280A47598, v918, v919, v920, v921, @"multiDataControlType", 1106);
  objc_msgSend_setObject_forKey_(qword_280A47598, v922, v923, v924, v925, @"defaultPieStartAngle", 1343);
  objc_msgSend_setObject_forKey_(qword_280A47598, v926, v927, v928, v929, @"pieStartAngle", 1107);
  objc_msgSend_setObject_forKey_(qword_280A47598, v930, v931, v932, v933, @"defaultRadarRadiusGridlineCurve", 1344);
  objc_msgSend_setObject_forKey_(qword_280A47598, v934, v935, v936, v937, @"radarRadiusGridlineCurve", 1108);
  objc_msgSend_setObject_forKey_(qword_280A47598, v938, v939, v940, v941, @"defaultRadarStartAngle", 1345);
  objc_msgSend_setObject_forKey_(qword_280A47598, v942, v943, v944, v945, @"radarStartAngle", 1109);
  objc_msgSend_setObject_forKey_(qword_280A47598, v946, v947, v948, v949, @"defaultRoundedCornerOuterEndOnly", 1346);
  objc_msgSend_setObject_forKey_(qword_280A47598, v950, v951, v952, v953, @"roundedCornerOuterEndOnly", 1110);
  objc_msgSend_setObject_forKey_(qword_280A47598, v954, v955, v956, v957, @"defaultRoundedCornerRadius", 1347);
  objc_msgSend_setObject_forKey_(qword_280A47598, v958, v959, v960, v961, @"roundedCornerRadius", 1111);
  objc_msgSend_setObject_forKey_(qword_280A47598, v962, v963, v964, v965, @"defaultShowBorder", 1348);
  objc_msgSend_setObject_forKey_(qword_280A47598, v966, v967, v968, v969, @"showBorder", 1112);
  objc_msgSend_setObject_forKey_(qword_280A47598, v970, v971, v972, v973, @"defaultShowLegend", 1349);
  objc_msgSend_setObject_forKey_(qword_280A47598, v974, v975, v976, v977, @"showLegend", 1113);
  objc_msgSend_setObject_forKey_(qword_280A47598, v978, v979, v980, v981, @"defaultShowTitle", 1350);
  objc_msgSend_setObject_forKey_(qword_280A47598, v982, v983, v984, v985, @"showTitle", 1114);
  objc_msgSend_setObject_forKey_(qword_280A47598, v986, v987, v988, v989, @"defaultSkipHiddenData", 1351);
  objc_msgSend_setObject_forKey_(qword_280A47598, v990, v991, v992, v993, @"skipHiddenData", 1115);
  objc_msgSend_setObject_forKey_(qword_280A47598, v994, v995, v996, v997, @"defaultSummaryLabelDateFormat", 1352);
  objc_msgSend_setObject_forKey_(qword_280A47598, v998, v999, v1000, v1001, @"summaryLabelDateFormat", 1116);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1002, v1003, v1004, v1005, @"defaultSummaryLabelDurationFormat", 1353);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1006, v1007, v1008, v1009, @"summaryLabelDurationFormat", 1117);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1010, v1011, v1012, v1013, @"defaultSummaryLabelNumberFormat", 1354);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1014, v1015, v1016, v1017, @"summaryLabelNumberFormat", 1118);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1018, v1019, v1020, v1021, @"defaultSummaryLabelNumberFormatType", 1355);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1022, v1023, v1024, v1025, @"summaryLabelNumberFormatType", 1119);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1026, v1027, v1028, v1029, @"defaultSummaryLabelOffset", 1356);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1030, v1031, v1032, v1033, @"summaryLabelOffset", 1120);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1034, v1035, v1036, v1037, @"defaultSummaryLabelParagraphStyleIndex", 1357);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1038, v1039, v1040, v1041, @"summaryLabelParagraphStyleIndex", 1121);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1042, v1043, v1044, v1045, @"defaultSummaryLabelShowLabels", 1358);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1046, v1047, v1048, v1049, @"summaryLabelShowLabels", 1122);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1050, v1051, v1052, v1053, @"defaultSummaryLabelValueLabelSpacing", 1359);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1054, v1055, v1056, v1057, @"summaryLabelValueLabelSpacing", 1123);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1058, v1059, v1060, v1061, @"defaultTitleColor", 1360);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1062, v1063, v1064, v1065, @"titleColor", 1125);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1066, v1067, v1068, v1069, @"defaultTitle", 1361);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1070, v1071, v1072, v1073, @"title", 1124);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1074, v1075, v1076, v1077, @"defaultTitleParagraphStyleIndex", 1362);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1078, v1079, v1080, v1081, @"titleParagraphStyleIndex", 1126);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1082, v1083, v1084, v1085, @"default10DateFormat", 1363);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1086, v1087, v1088, v1089, @"1_0DateFormat", 1127);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1090, v1091, v1092, v1093, @"default10NumberFormat", 1364);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1094, v1095, v1096, v1097, @"1_0NumberFormat", 1128);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1098, v1099, v1100, v1101, @"pie10NumberFormat", 1365);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1102, v1103, v1104, v1105, @"1_0NumberFormat", 1128);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1106, v1107, v1108, v1109, @"pie23LabelExplosion", 1366);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1110, v1111, v1112, v1113, @"2_3LabelExplosion", 1129);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1114, v1115, v1116, v1117, @"bubbleAdjustmentScale", 1367);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1118, v1119, v1120, v1121, @"adjustmentScale", 1130);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1122, v1123, v1124, v1125, @"defaultCalloutLineEndLineEnd", 1368);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1126, v1127, v1128, v1129, @"calloutLineEndLineEnd", 1131);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1130, v1131, v1132, v1133, @"defaultCalloutLineStartLineEnd", 1369);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1134, v1135, v1136, v1137, @"calloutLineStartLineEnd", 1132);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1138, v1139, v1140, v1141, @"defaultCalloutLineStrokeStyle", 1370);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1142, v1143, v1144, v1145, @"calloutLineStrokeStyle", 1133);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1146, v1147, v1148, v1149, @"defaultDateFormat", 1371);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1150, v1151, v1152, v1153, @"dateFormat", 1136);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1154, v1155, v1156, v1157, @"defaultDurationFormat", 1372);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1158, v1159, v1160, v1161, @"durationFormat", 1137);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1162, v1163, v1164, v1165, @"areaEnableCalloutLine", 1373);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1166, v1167, v1168, v1169, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1170, v1171, v1172, v1173, @"barEnableCalloutLine", 1374);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1174, v1175, v1176, v1177, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1178, v1179, v1180, v1181, @"bubbleEnableCalloutLine", 1375);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1182, v1183, v1184, v1185, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1186, v1187, v1188, v1189, @"defaultEnableCalloutLine", 1376);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1190, v1191, v1192, v1193, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1194, v1195, v1196, v1197, @"lineEnableCalloutLine", 1377);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1198, v1199, v1200, v1201, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1202, v1203, v1204, v1205, @"pieEnableCalloutLine", 1378);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1206, v1207, v1208, v1209, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1210, v1211, v1212, v1213, @"scatterEnableCalloutLine", 1379);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1214, v1215, v1216, v1217, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1218, v1219, v1220, v1221, @"stackedAreaEnableCalloutLine", 1380);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1222, v1223, v1224, v1225, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1226, v1227, v1228, v1229, @"stackedBarEnableCalloutLine", 1381);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1230, v1231, v1232, v1233, @"enableCalloutLine", 1138);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1234, v1235, v1236, v1237, @"defaultErrorBarCustomNegativeData", 1382);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1238, v1239, v1240, v1241, @"errorBarCustomNegativeData", 1139);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1242, v1243, v1244, v1245, @"defaultErrorBarCustomNegativeDataScatterX", 1383);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1246, v1247, v1248, v1249, @"errorBarCustomNegativeDataScatterX", 1140);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1250, v1251, v1252, v1253, @"defaultErrorBarCustomPositiveData", 1384);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1254, v1255, v1256, v1257, @"errorBarCustomPositiveData", 1141);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1258, v1259, v1260, v1261, @"defaultErrorBarCustomPositiveDataScatterX", 1385);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1262, v1263, v1264, v1265, @"errorBarCustomPositiveDataScatterX", 1142);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1266, v1267, v1268, v1269, @"defaultErrorBarFixedValue", 1386);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1270, v1271, v1272, v1273, @"errorBarFixedValue", 1143);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1274, v1275, v1276, v1277, @"defaultErrorBarFixedValueScatterX", 1387);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1278, v1279, v1280, v1281, @"errorBarFixedValueScatterX", 1144);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1282, v1283, v1284, v1285, @"defaultErrorBarLineEnd", 1388);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1286, v1287, v1288, v1289, @"errorBarLineEnd", 1145);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1290, v1291, v1292, v1293, @"defaultErrorBarLineEndScatterX", 1389);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1294, v1295, v1296, v1297, @"errorBarLineEndScatterX", 1146);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1298, v1299, v1300, v1301, @"defaultErrorBarPercentValue", 1390);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1302, v1303, v1304, v1305, @"errorBarPercentValue", 1147);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1306, v1307, v1308, v1309, @"defaultErrorBarPercentValueScatterX", 1391);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1310, v1311, v1312, v1313, @"errorBarPercentValueScatterX", 1148);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1314, v1315, v1316, v1317, @"defaultErrorBarSetting", 1392);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1318, v1319, v1320, v1321, @"errorBarSetting", 1149);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1322, v1323, v1324, v1325, @"defaultErrorBarSettingScatterX", 1393);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1326, v1327, v1328, v1329, @"errorBarSettingScatterX", 1150);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1330, v1331, v1332, v1333, @"defaultErrorBarShadow", 1394);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1334, v1335, v1336, v1337, @"errorBarShadow", 1151);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1338, v1339, v1340, v1341, @"defaultErrorBarSpacing", 1395);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1342, v1343, v1344, v1345, @"errorBarSpacing", 1152);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1346, v1347, v1348, v1349, @"defaultErrorBarSpacingScatterX", 1396);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1350, v1351, v1352, v1353, @"errorBarSpacingScatterX", 1153);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1354, v1355, v1356, v1357, @"defaultErrorBarStdDevValue", 1397);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1358, v1359, v1360, v1361, @"errorBarStdDevValue", 1154);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1362, v1363, v1364, v1365, @"defaultErrorBarStdDevValueScatterX", 1398);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1366, v1367, v1368, v1369, @"errorBarStdDevValueScatterX", 1155);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1370, v1371, v1372, v1373, @"defaultErrorBarStroke", 1399);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1374, v1375, v1376, v1377, @"errorBarStroke", 1156);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1378, v1379, v1380, v1381, @"defaultErrorBarStrokeScatterX", 1400);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1382, v1383, v1384, v1385, @"errorBarStrokeScatterX", 1157);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1386, v1387, v1388, v1389, @"defaultErrorBarType", 1401);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1390, v1391, v1392, v1393, @"errorBarType", 1158);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1394, v1395, v1396, v1397, @"defaultErrorBarTypeScatterX", 1402);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1398, v1399, v1400, v1401, @"errorBarTypeScatterX", 1159);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1402, v1403, v1404, v1405, @"area3dFill", 1403);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1406, v1407, v1408, v1409, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1410, v1411, v1412, v1413, @"bar3dFill", 1404);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1414, v1415, v1416, v1417, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1418, v1419, v1420, v1421, @"column3dFill", 1405);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1422, v1423, v1424, v1425, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1426, v1427, v1428, v1429, @"line3dFill", 1406);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1430, v1431, v1432, v1433, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1434, v1435, v1436, v1437, @"pie3dFill", 1407);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1438, v1439, v1440, v1441, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1442, v1443, v1444, v1445, @"areaFill", 1408);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1446, v1447, v1448, v1449, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1450, v1451, v1452, v1453, @"barFill", 1409);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1454, v1455, v1456, v1457, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1458, v1459, v1460, v1461, @"columnFill", 1410);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1462, v1463, v1464, v1465, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1466, v1467, v1468, v1469, @"defaultFill", 1411);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1470, v1471, v1472, v1473, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1474, v1475, v1476, v1477, @"mixedAreaFill", 1412);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1478, v1479, v1480, v1481, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1482, v1483, v1484, v1485, @"mixedColumnFill", 1413);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1486, v1487, v1488, v1489, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1490, v1491, v1492, v1493, @"pieFill", 1414);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1494, v1495, v1496, v1497, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1498, v1499, v1500, v1501, @"radarAreaFill", 1415);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1502, v1503, v1504, v1505, @"fill", 1160);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1506, v1507, v1508, v1509, @"radarAreaFillUseSeriesStrokeAlphaMultiplier", 1416);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1510, v1511, v1512, v1513, @"fillUseSeriesStrokeAlphaMultiplier", 1162);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1514, v1515, v1516, v1517, @"radarAreaFillUseSeriesStroke", 1417);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1518, v1519, v1520, v1521, @"fillUseSeriesStroke", 1161);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1522, v1523, v1524, v1525, @"pieLabelExplosion", 1418);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1526, v1527, v1528, v1529, @"labelExplosion", 1163);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1530, v1531, v1532, v1533, @"areaLabelParagraphStyleIndex", 1419);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1534, v1535, v1536, v1537, @"labelParagraphStyleIndex", 1164);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1538, v1539, v1540, v1541, @"barLabelParagraphStyleIndex", 1420);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1542, v1543, v1544, v1545, @"labelParagraphStyleIndex", 1164);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1546, v1547, v1548, v1549, @"defaultLabelParagraphStyleIndex", 1421);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1550, v1551, v1552, v1553, @"labelParagraphStyleIndex", 1164);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1554, v1555, v1556, v1557, @"donutLabelParagraphStyleIndex", 1422);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1558, v1559, v1560, v1561, @"labelParagraphStyleIndex", 1164);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1562, v1563, v1564, v1565, @"lineLabelParagraphStyleIndex", 1423);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1566, v1567, v1568, v1569, @"labelParagraphStyleIndex", 1164);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1570, v1571, v1572, v1573, @"mixedLabelParagraphStyleIndex", 1424);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1574, v1575, v1576, v1577, @"labelParagraphStyleIndex", 1164);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1578, v1579, v1580, v1581, @"pieLabelParagraphStyleIndex", 1425);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1582, v1583, v1584, v1585, @"labelParagraphStyleIndex", 1164);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1586, v1587, v1588, v1589, @"radarLabelParagraphStyleIndex", 1426);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1590, v1591, v1592, v1593, @"labelParagraphStyleIndex", 1164);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1594, v1595, v1596, v1597, @"bubbleLineType", 1427);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1598, v1599, v1600, v1601, @"lineType", 1165);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1602, v1603, v1604, v1605, @"lineLineType", 1428);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1606, v1607, v1608, v1609, @"lineType", 1165);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1610, v1611, v1612, v1613, @"mixedLineLineType", 1429);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1614, v1615, v1616, v1617, @"lineType", 1165);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1618, v1619, v1620, v1621, @"radarAreaLineType", 1430);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1622, v1623, v1624, v1625, @"lineType", 1165);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1626, v1627, v1628, v1629, @"scatterLineType", 1431);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1630, v1631, v1632, v1633, @"lineType", 1165);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1634, v1635, v1636, v1637, @"defaultNumberFormat", 1432);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1638, v1639, v1640, v1641, @"numberFormat", 1166);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1642, v1643, v1644, v1645, @"pieNumberFormat", 1433);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1646, v1647, v1648, v1649, @"numberFormat", 1166);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1650, v1651, v1652, v1653, @"defaultNumberFormatType", 1434);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1654, v1655, v1656, v1657, @"numberFormatType", 1167);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1658, v1659, v1660, v1661, @"pieNumberFormatType", 1435);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1662, v1663, v1664, v1665, @"numberFormatType", 1167);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1666, v1667, v1668, v1669, @"defaultOpacity", 1436);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1670, v1671, v1672, v1673, @"opacity", 1168);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1674, v1675, v1676, v1677, @"areaOutsideLabelParagraphStyleIndex", 1437);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1678, v1679, v1680, v1681, @"outsideLabelParagraphStyleIndex", 1169);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1682, v1683, v1684, v1685, @"barOutsideLabelParagraphStyleIndex", 1438);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1686, v1687, v1688, v1689, @"outsideLabelParagraphStyleIndex", 1169);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1690, v1691, v1692, v1693, @"defaultOutsideLabelParagraphStyleIndex", 1439);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1694, v1695, v1696, v1697, @"outsideLabelParagraphStyleIndex", 1169);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1698, v1699, v1700, v1701, @"donutOutsideLabelParagraphStyleIndex", 1440);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1702, v1703, v1704, v1705, @"outsideLabelParagraphStyleIndex", 1169);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1706, v1707, v1708, v1709, @"mixedOutsideLabelParagraphStyleIndex", 1441);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1710, v1711, v1712, v1713, @"outsideLabelParagraphStyleIndex", 1169);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1714, v1715, v1716, v1717, @"pieOutsideLabelParagraphStyleIndex", 1442);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1718, v1719, v1720, v1721, @"outsideLabelParagraphStyleIndex", 1169);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1722, v1723, v1724, v1725, @"radarOutsideLabelParagraphStyleIndex", 1443);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1726, v1727, v1728, v1729, @"outsideLabelParagraphStyleIndex", 1169);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1730, v1731, v1732, v1733, @"stackedPercentNumberFormat", 1444);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1734, v1735, v1736, v1737, @"percentNumberFormat", 1170);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1738, v1739, v1740, v1741, @"defaultSeriesType", 1445);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1742, v1743, v1744, v1745, @"seriesType", 1171);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1746, v1747, v1748, v1749, @"area3dShadow", 1446);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1750, v1751, v1752, v1753, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1754, v1755, v1756, v1757, @"bar3dShadow", 1447);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1758, v1759, v1760, v1761, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1762, v1763, v1764, v1765, @"column3dShadow", 1448);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1766, v1767, v1768, v1769, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1770, v1771, v1772, v1773, @"line3dShadow", 1449);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1774, v1775, v1776, v1777, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1778, v1779, v1780, v1781, @"pie3dShadow", 1450);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1782, v1783, v1784, v1785, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1786, v1787, v1788, v1789, @"areaShadow", 1451);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1790, v1791, v1792, v1793, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1794, v1795, v1796, v1797, @"barShadow", 1452);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1798, v1799, v1800, v1801, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1802, v1803, v1804, v1805, @"bubbleShadow", 1453);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1806, v1807, v1808, v1809, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1810, v1811, v1812, v1813, @"defaultShadow", 1454);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1814, v1815, v1816, v1817, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1818, v1819, v1820, v1821, @"lineShadow", 1455);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1822, v1823, v1824, v1825, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1826, v1827, v1828, v1829, @"mixedAreaShadow", 1456);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1830, v1831, v1832, v1833, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1834, v1835, v1836, v1837, @"mixedColumnShadow", 1457);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1838, v1839, v1840, v1841, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1842, v1843, v1844, v1845, @"mixedLineShadow", 1458);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1846, v1847, v1848, v1849, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1850, v1851, v1852, v1853, @"pieShadow", 1459);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1854, v1855, v1856, v1857, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1858, v1859, v1860, v1861, @"radarAreaShadow", 1460);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1862, v1863, v1864, v1865, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1866, v1867, v1868, v1869, @"scatterShadow", 1461);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1870, v1871, v1872, v1873, @"shadow", 1172);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1874, v1875, v1876, v1877, @"defaultShowErrorBar", 1462);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1878, v1879, v1880, v1881, @"showErrorBar", 1173);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1882, v1883, v1884, v1885, @"defaultShowErrorBarScatterX", 1463);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1886, v1887, v1888, v1889, @"showErrorBarScatterX", 1174);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1890, v1891, v1892, v1893, @"bubbleShowLabelsInFront", 1464);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1894, v1895, v1896, v1897, @"showLabelsInFront", 1175);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1898, v1899, v1900, v1901, @"defaultShowLabelsInFront", 1465);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1902, v1903, v1904, v1905, @"showLabelsInFront", 1175);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1906, v1907, v1908, v1909, @"scatterShowLine", 1466);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1910, v1911, v1912, v1913, @"showLine", 1176);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1914, v1915, v1916, v1917, @"bubbleShowNegativeData", 1467);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1918, v1919, v1920, v1921, @"showNegativeData", 1177);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1922, v1923, v1924, v1925, @"bubbleShowSeriesLabels", 1468);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1926, v1927, v1928, v1929, @"showSeriesLabels", 1178);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1930, v1931, v1932, v1933, @"pieShowSeriesLabels", 1469);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1934, v1935, v1936, v1937, @"showSeriesLabels", 1178);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1938, v1939, v1940, v1941, @"scatterShowSeriesLabels", 1470);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1942, v1943, v1944, v1945, @"showSeriesLabels", 1178);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1946, v1947, v1948, v1949, @"areaShowSymbol", 1471);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1950, v1951, v1952, v1953, @"showSymbol", 1179);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1954, v1955, v1956, v1957, @"lineShowSymbol", 1472);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1958, v1959, v1960, v1961, @"showSymbol", 1179);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1962, v1963, v1964, v1965, @"mixedAreaShowSymbol", 1473);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1966, v1967, v1968, v1969, @"showSymbol", 1179);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1970, v1971, v1972, v1973, @"mixedLineShowSymbol", 1474);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1974, v1975, v1976, v1977, @"showSymbol", 1179);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1978, v1979, v1980, v1981, @"radarAreaShowSymbol", 1475);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1982, v1983, v1984, v1985, @"showSymbol", 1179);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1986, v1987, v1988, v1989, @"scatterShowSymbol", 1476);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1990, v1991, v1992, v1993, @"showSymbol", 1179);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1994, v1995, v1996, v1997, @"defaultShowTrendLine", 1477);
  objc_msgSend_setObject_forKey_(qword_280A47598, v1998, v1999, v2000, v2001, @"showTrendLine", 1180);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2002, v2003, v2004, v2005, @"areaShowValueLabels", 1478);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2006, v2007, v2008, v2009, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2010, v2011, v2012, v2013, @"barShowValueLabels", 1479);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2014, v2015, v2016, v2017, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2018, v2019, v2020, v2021, @"bubbleShowValueLabels", 1480);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2022, v2023, v2024, v2025, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2026, v2027, v2028, v2029, @"defaultShowValueLabels", 1481);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2030, v2031, v2032, v2033, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2034, v2035, v2036, v2037, @"lineShowValueLabels", 1482);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2038, v2039, v2040, v2041, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2042, v2043, v2044, v2045, @"mixedShowValueLabels", 1483);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2046, v2047, v2048, v2049, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2050, v2051, v2052, v2053, @"pieShowValueLabels", 1484);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2054, v2055, v2056, v2057, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2058, v2059, v2060, v2061, @"radarShowValueLabels", 1485);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2062, v2063, v2064, v2065, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2066, v2067, v2068, v2069, @"scatterShowValueLabels", 1486);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2070, v2071, v2072, v2073, @"showValueLabels", 1181);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2074, v2075, v2076, v2077, @"bubbleSizeDimension", 1487);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2078, v2079, v2080, v2081, @"sizeDimension", 1182);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2082, v2083, v2084, v2085, @"areaStackLabels", 1488);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2086, v2087, v2088, v2089, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2090, v2091, v2092, v2093, @"barStackLabels", 1489);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2094, v2095, v2096, v2097, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2098, v2099, v2100, v2101, @"bubbleStackLabels", 1490);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2102, v2103, v2104, v2105, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2106, v2107, v2108, v2109, @"defaultStackLabels", 1491);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2110, v2111, v2112, v2113, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2114, v2115, v2116, v2117, @"lineStackLabels", 1492);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2118, v2119, v2120, v2121, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2122, v2123, v2124, v2125, @"pieStackLabels", 1493);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2126, v2127, v2128, v2129, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2130, v2131, v2132, v2133, @"scatterStackLabels", 1494);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2134, v2135, v2136, v2137, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2138, v2139, v2140, v2141, @"stackedAreaStackLabels", 1495);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2142, v2143, v2144, v2145, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2146, v2147, v2148, v2149, @"stackedBarStackLabels", 1496);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2150, v2151, v2152, v2153, @"stackLabels", 1183);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2154, v2155, v2156, v2157, @"areaStroke", 1497);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2158, v2159, v2160, v2161, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2162, v2163, v2164, v2165, @"barStroke", 1498);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2166, v2167, v2168, v2169, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2170, v2171, v2172, v2173, @"bubbleStroke", 1499);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2174, v2175, v2176, v2177, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2178, v2179, v2180, v2181, @"lineStroke", 1500);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2182, v2183, v2184, v2185, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2186, v2187, v2188, v2189, @"mixedAreaStroke", 1501);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2190, v2191, v2192, v2193, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2194, v2195, v2196, v2197, @"mixedColumnStroke", 1502);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2198, v2199, v2200, v2201, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2202, v2203, v2204, v2205, @"mixedLineStroke", 1503);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2206, v2207, v2208, v2209, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2210, v2211, v2212, v2213, @"pieStroke", 1504);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2214, v2215, v2216, v2217, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2218, v2219, v2220, v2221, @"radarAreaStroke", 1505);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2222, v2223, v2224, v2225, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2226, v2227, v2228, v2229, @"scatterStroke", 1506);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2230, v2231, v2232, v2233, @"stroke", 1184);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2234, v2235, v2236, v2237, @"areaSymbolFill", 1507);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2238, v2239, v2240, v2241, @"symbolFill", 1185);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2242, v2243, v2244, v2245, @"bubbleSymbolFill", 1508);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2246, v2247, v2248, v2249, @"symbolFill", 1185);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2250, v2251, v2252, v2253, @"lineSymbolFill", 1509);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2254, v2255, v2256, v2257, @"symbolFill", 1185);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2258, v2259, v2260, v2261, @"mixedAreaSymbolFill", 1510);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2262, v2263, v2264, v2265, @"symbolFill", 1185);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2266, v2267, v2268, v2269, @"mixedLineSymbolFill", 1511);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2270, v2271, v2272, v2273, @"symbolFill", 1185);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2274, v2275, v2276, v2277, @"radarAreaSymbolFill", 1512);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2278, v2279, v2280, v2281, @"symbolFill", 1185);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2282, v2283, v2284, v2285, @"scatterSymbolFill", 1513);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2286, v2287, v2288, v2289, @"symbolFill", 1185);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2290, v2291, v2292, v2293, @"areaSymbolFillUseSeriesFill", 1514);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2294, v2295, v2296, v2297, @"symbolFillUseSeriesFill", 1186);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2298, v2299, v2300, v2301, @"lineSymbolFillUseSeriesFill", 1515);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2302, v2303, v2304, v2305, @"symbolFillUseSeriesFill", 1186);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2306, v2307, v2308, v2309, @"mixedAreaSymbolFillUseSeriesFill", 1516);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2310, v2311, v2312, v2313, @"symbolFillUseSeriesFill", 1186);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2314, v2315, v2316, v2317, @"mixedLineSymbolFillUseSeriesFill", 1517);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2318, v2319, v2320, v2321, @"symbolFillUseSeriesFill", 1186);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2322, v2323, v2324, v2325, @"radarAreaSymbolFillUseSeriesFill", 1518);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2326, v2327, v2328, v2329, @"symbolFillUseSeriesFill", 1186);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2330, v2331, v2332, v2333, @"areaSymbolFillUseSeriesStroke", 1519);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2334, v2335, v2336, v2337, @"symbolFillUseSeriesStroke", 1187);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2338, v2339, v2340, v2341, @"bubbleSymbolFillUseSeriesStroke", 1520);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2342, v2343, v2344, v2345, @"symbolFillUseSeriesStroke", 1187);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2346, v2347, v2348, v2349, @"lineSymbolFillUseSeriesStroke", 1521);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2350, v2351, v2352, v2353, @"symbolFillUseSeriesStroke", 1187);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2354, v2355, v2356, v2357, @"mixedAreaSymbolFillUseSeriesStroke", 1522);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2358, v2359, v2360, v2361, @"symbolFillUseSeriesStroke", 1187);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2362, v2363, v2364, v2365, @"mixedLineSymbolFillUseSeriesStroke", 1523);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2366, v2367, v2368, v2369, @"symbolFillUseSeriesStroke", 1187);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2370, v2371, v2372, v2373, @"radarAreaSymbolFillUseSeriesStroke", 1524);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2374, v2375, v2376, v2377, @"symbolFillUseSeriesStroke", 1187);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2378, v2379, v2380, v2381, @"scatterSymbolFillUseSeriesStroke", 1525);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2382, v2383, v2384, v2385, @"symbolFillUseSeriesStroke", 1187);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2386, v2387, v2388, v2389, @"areaSymbolSize", 1526);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2390, v2391, v2392, v2393, @"symbolSize", 1188);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2394, v2395, v2396, v2397, @"lineSymbolSize", 1527);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2398, v2399, v2400, v2401, @"symbolSize", 1188);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2402, v2403, v2404, v2405, @"mixedAreaSymbolSize", 1528);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2406, v2407, v2408, v2409, @"symbolSize", 1188);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2410, v2411, v2412, v2413, @"mixedLineSymbolSize", 1529);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2414, v2415, v2416, v2417, @"symbolSize", 1188);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2418, v2419, v2420, v2421, @"radarAreaSymbolSize", 1530);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2422, v2423, v2424, v2425, @"symbolSize", 1188);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2426, v2427, v2428, v2429, @"scatterSymbolSize", 1531);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2430, v2431, v2432, v2433, @"symbolSize", 1188);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2434, v2435, v2436, v2437, @"areaSymbolStroke", 1532);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2438, v2439, v2440, v2441, @"symbolStroke", 1189);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2442, v2443, v2444, v2445, @"bubbleSymbolStroke", 1533);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2446, v2447, v2448, v2449, @"symbolStroke", 1189);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2450, v2451, v2452, v2453, @"lineSymbolStroke", 1534);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2454, v2455, v2456, v2457, @"symbolStroke", 1189);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2458, v2459, v2460, v2461, @"mixedAreaSymbolStroke", 1535);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2462, v2463, v2464, v2465, @"symbolStroke", 1189);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2466, v2467, v2468, v2469, @"mixedLineSymbolStroke", 1536);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2470, v2471, v2472, v2473, @"symbolStroke", 1189);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2474, v2475, v2476, v2477, @"radarAreaSymbolStroke", 1537);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2478, v2479, v2480, v2481, @"symbolStroke", 1189);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2482, v2483, v2484, v2485, @"scatterSymbolStroke", 1538);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2486, v2487, v2488, v2489, @"symbolStroke", 1189);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2490, v2491, v2492, v2493, @"areaSymbolType", 1539);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2494, v2495, v2496, v2497, @"symbolType", 1190);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2498, v2499, v2500, v2501, @"lineSymbolType", 1540);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2502, v2503, v2504, v2505, @"symbolType", 1190);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2506, v2507, v2508, v2509, @"mixedAreaSymbolType", 1541);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2510, v2511, v2512, v2513, @"symbolType", 1190);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2514, v2515, v2516, v2517, @"mixedLineSymbolType", 1542);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2518, v2519, v2520, v2521, @"symbolType", 1190);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2522, v2523, v2524, v2525, @"radarAreaSymbolType", 1543);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2526, v2527, v2528, v2529, @"symbolType", 1190);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2530, v2531, v2532, v2533, @"scatterSymbolType", 1544);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2534, v2535, v2536, v2537, @"symbolType", 1190);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2538, v2539, v2540, v2541, @"defaultTrendLineEquationOffsetX", 1545);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2542, v2543, v2544, v2545, @"trendLineEquationOffsetX", 1191);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2546, v2547, v2548, v2549, @"defaultTrendLineEquationOffsetY", 1546);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2550, v2551, v2552, v2553, @"trendLineEquationOffsetY", 1192);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2554, v2555, v2556, v2557, @"defaultTrendLineLabelString", 1547);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2558, v2559, v2560, v2561, @"trendLineLabelString", 1193);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2562, v2563, v2564, v2565, @"defaultTrendLineOrder", 1548);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2566, v2567, v2568, v2569, @"trendLineOrder", 1194);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2570, v2571, v2572, v2573, @"defaultTrendLinePeriod", 1549);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2574, v2575, v2576, v2577, @"trendLinePeriod", 1195);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2578, v2579, v2580, v2581, @"defaultTrendLineRSquaredOffsetX", 1550);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2582, v2583, v2584, v2585, @"trendLineRSquaredOffsetX", 1196);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2586, v2587, v2588, v2589, @"defaultTrendLineRSquaredOffsetY", 1551);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2590, v2591, v2592, v2593, @"trendLineRSquaredOffsetY", 1197);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2594, v2595, v2596, v2597, @"defaultTrendLineShadow", 1552);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2598, v2599, v2600, v2601, @"trendLineShadow", 1198);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2602, v2603, v2604, v2605, @"defaultTrendLineShowEquation", 1553);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2606, v2607, v2608, v2609, @"trendLineShowEquation", 1199);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2610, v2611, v2612, v2613, @"defaultTrendLineShowLabel", 1554);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2614, v2615, v2616, v2617, @"trendLineShowLabel", 1200);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2618, v2619, v2620, v2621, @"defaultTrendLineShowR2Value", 1555);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2622, v2623, v2624, v2625, @"trendLineShowR2Value", 1201);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2626, v2627, v2628, v2629, @"defaultTrendLineStroke", 1556);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2630, v2631, v2632, v2633, @"trendLineStroke", 1202);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2634, v2635, v2636, v2637, @"defaultTrendLineType", 1557);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2638, v2639, v2640, v2641, @"trendLineType", 1203);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2642, v2643, v2644, v2645, @"defaultTrendlineEquationOpacity", 1558);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2646, v2647, v2648, v2649, @"trendlineEquationOpacity", 1204);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2650, v2651, v2652, v2653, @"defaultTrendlineEquationParagraphStyleIndex", 1559);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2654, v2655, v2656, v2657, @"trendlineEquationParagraphStyleIndex", 1205);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2658, v2659, v2660, v2661, @"defaultTrendlineRSquaredOpacity", 1560);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2662, v2663, v2664, v2665, @"trendlineRSquaredOpacity", 1206);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2666, v2667, v2668, v2669, @"defaultTrendlineRSquaredParagraphStyleIndex", 1561);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2670, v2671, v2672, v2673, @"trendlineRSquaredParagraphStyleIndex", 1207);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2674, v2675, v2676, v2677, @"areaValueLabelPosition", 1562);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2678, v2679, v2680, v2681, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2682, v2683, v2684, v2685, @"barValueLabelPosition", 1563);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2686, v2687, v2688, v2689, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2690, v2691, v2692, v2693, @"bubbleValueLabelPosition", 1564);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2694, v2695, v2696, v2697, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2698, v2699, v2700, v2701, @"defaultValueLabelPosition", 1565);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2702, v2703, v2704, v2705, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2706, v2707, v2708, v2709, @"lineValueLabelPosition", 1566);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2710, v2711, v2712, v2713, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2714, v2715, v2716, v2717, @"mixedAreaValueLabelPosition", 1567);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2718, v2719, v2720, v2721, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2722, v2723, v2724, v2725, @"mixedColumnValueLabelPosition", 1568);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2726, v2727, v2728, v2729, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2730, v2731, v2732, v2733, @"mixedLineValueLabelPosition", 1569);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2734, v2735, v2736, v2737, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2738, v2739, v2740, v2741, @"radarAreaValueLabelPosition", 1570);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2742, v2743, v2744, v2745, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2746, v2747, v2748, v2749, @"scatterValueLabelPosition", 1571);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2750, v2751, v2752, v2753, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2754, v2755, v2756, v2757, @"stackedAreaValueLabelPosition", 1572);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2758, v2759, v2760, v2761, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2762, v2763, v2764, v2765, @"stackedBarValueLabelPosition", 1573);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2766, v2767, v2768, v2769, @"valueLabelPosition", 1208);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2770, v2771, v2772, v2773, @"defaultValueLabelSpacing", 1574);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2774, v2775, v2776, v2777, @"valueLabelSpacing", 1209);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2778, v2779, v2780, v2781, @"bubbleValueLabelsAxis", 1575);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2782, v2783, v2784, v2785, @"valueLabelsAxis", 1210);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2786, v2787, v2788, v2789, @"scatterValueLabelsAxis", 1576);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2790, v2791, v2792, v2793, @"valueLabelsAxis", 1210);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2794, v2795, v2796, v2797, @"pieWedgeExplosion", 1577);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2798, v2799, v2800, v2801, @"wedgeExplosion", 1211);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2802, v2803, v2804, v2805, @"defaultYAxisOrdinal", 1578);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2806, v2807, v2808, v2809, @"yAxisOrdinal", 1212);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2810, v2811, v2812, v2813, @"defaultFill", 1579);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2814, v2815, v2816, v2817, @"fill", 1213);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2818, v2819, v2820, v2821, @"defaultLabelParagraphStyleIndex", 1580);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2822, v2823, v2824, v2825, @"labelParagraphStyleIndex", 1214);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2826, v2827, v2828, v2829, @"defaultOpacity", 1581);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2830, v2831, v2832, v2833, @"opacity", 1215);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2834, v2835, v2836, v2837, @"defaultShadow", 1582);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2838, v2839, v2840, v2841, @"shadow", 1216);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2842, v2843, v2844, v2845, @"defaultStroke", 1583);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2846, v2847, v2848, v2849, @"stroke", 1217);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2850, v2851, v2852, v2853, @"defaultCustomValue", 1584);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2854, v2855, v2856, v2857, @"customValue", 1218);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2858, v2859, v2860, v2861, @"defaultLabel", 1585);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2862, v2863, v2864, v2865, @"label", 1219);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2866, v2867, v2868, v2869, @"defaultLabelParagraphStyleIndex", 1586);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2870, v2871, v2872, v2873, @"labelParagraphStyleIndex", 1220);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2874, v2875, v2876, v2877, @"defaultShadow", 1587);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2878, v2879, v2880, v2881, @"shadow", 1221);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2882, v2883, v2884, v2885, @"defaultShowLabel", 1588);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2886, v2887, v2888, v2889, @"showLabel", 1222);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2890, v2891, v2892, v2893, @"defaultShowLine", 1589);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2894, v2895, v2896, v2897, @"showLine", 1223);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2898, v2899, v2900, v2901, @"defaultShowValueLabel", 1590);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2902, v2903, v2904, v2905, @"showValueLabel", 1224);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2906, v2907, v2908, v2909, @"defaultStroke", 1591);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2910, v2911, v2912, v2913, @"stroke", 1225);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2914, v2915, v2916, v2917, @"defaultType", 1592);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2918, v2919, v2920, v2921, @"type", 1226);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2922, v2923, v2924, v2925, @"defaultValueLabelParagraphStyleIndex", 1593);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2926, v2927, v2928, v2929, @"valueLabelParagraphStyleIndex", 1227);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2930, v2931, v2932, v2933, @"defaultDEPRECATED3dBarShape", 1594);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2934, v2935, v2936, v2937, @"dEPRECATED3dBarShape", 1083);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2938, v2939, v2940, v2941, @"barDEPRECATED3dBevelEdges", 1595);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2942, v2943, v2944, v2945, @"dEPRECATED3dBevelEdges", 1084);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2946, v2947, v2948, v2949, @"columnDEPRECATED3dBevelEdges", 1596);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2950, v2951, v2952, v2953, @"dEPRECATED3dBevelEdges", 1084);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2954, v2955, v2956, v2957, @"defaultDEPRECATED3dBevelEdges", 1597);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2958, v2959, v2960, v2961, @"dEPRECATED3dBevelEdges", 1084);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2962, v2963, v2964, v2965, @"pieDEPRECATED3dBevelEdges", 1598);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2966, v2967, v2968, v2969, @"dEPRECATED3dBevelEdges", 1084);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2970, v2971, v2972, v2973, @"areaDEPRECATED3dLightingPackage", 1599);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2974, v2975, v2976, v2977, @"dEPRECATED3dLightingPackage", 1085);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2978, v2979, v2980, v2981, @"barDEPRECATED3dLightingPackage", 1600);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2982, v2983, v2984, v2985, @"dEPRECATED3dLightingPackage", 1085);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2986, v2987, v2988, v2989, @"columnDEPRECATED3dLightingPackage", 1601);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2990, v2991, v2992, v2993, @"dEPRECATED3dLightingPackage", 1085);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2994, v2995, v2996, v2997, @"defaultDEPRECATED3dLightingPackage", 1602);
  objc_msgSend_setObject_forKey_(qword_280A47598, v2998, v2999, v3000, v3001, @"dEPRECATED3dLightingPackage", 1085);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3002, v3003, v3004, v3005, @"lineDEPRECATED3dLightingPackage", 1603);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3006, v3007, v3008, v3009, @"dEPRECATED3dLightingPackage", 1085);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3010, v3011, v3012, v3013, @"pieDEPRECATED3dLightingPackage", 1604);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3014, v3015, v3016, v3017, @"dEPRECATED3dLightingPackage", 1085);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3018, v3019, v3020, v3021, @"areaDEPRECATED3dShadow", 1605);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3022, v3023, v3024, v3025, @"dEPRECATED3dShadow", 1086);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3026, v3027, v3028, v3029, @"barDEPRECATED3dShadow", 1606);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3030, v3031, v3032, v3033, @"dEPRECATED3dShadow", 1086);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3034, v3035, v3036, v3037, @"columnDEPRECATED3dShadow", 1607);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3038, v3039, v3040, v3041, @"dEPRECATED3dShadow", 1086);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3042, v3043, v3044, v3045, @"lineDEPRECATED3dShadow", 1608);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3046, v3047, v3048, v3049, @"dEPRECATED3dShadow", 1086);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3050, v3051, v3052, v3053, @"pieDEPRECATED3dShadow", 1609);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3054, v3055, v3056, v3057, @"dEPRECATED3dShadow", 1086);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3058, v3059, v3060, v3061, @"defaultDEPRECATEDAGAINMainFontNamedSize", 1610);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3062, v3063, v3064, v3065, @"dEPRECATEDAGAINMainFontNamedSize", 1087);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3066, v3067, v3068, v3069, @"defaultDEPRECATEDMainFontFamily", 1611);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3070, v3071, v3072, v3073, @"dEPRECATEDMainFontFamily", 1088);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3074, v3075, v3076, v3077, @"defaultDEPRECATEDMainFontNamedSize", 1612);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3078, v3079, v3080, v3081, @"dEPRECATEDMainFontNamedSize", 1089);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3082, v3083, v3084, v3085, @"defaultDEPRECATEDTrendlineEquationOpacity", 1613);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3086, v3087, v3088, v3089, @"dEPRECATEDTrendlineEquationOpacity", 1092);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3090, v3091, v3092, v3093, @"defaultDEPRECATEDTrendlineEquationParagraphStyleIndex", 1614);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3094, v3095, v3096, v3097, @"dEPRECATEDTrendlineEquationParagraphStyleIndex", 1093);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3098, v3099, v3100, v3101, @"defaultDEPRECATEDTrendlineEquationShadow", 1615);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3102, v3103, v3104, v3105, @"dEPRECATEDTrendlineEquationShadow", 1094);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3106, v3107, v3108, v3109, @"defaultDEPRECATEDTrendlineRSquaredOpacity", 1616);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3110, v3111, v3112, v3113, @"dEPRECATEDTrendlineRSquaredOpacity", 1095);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3114, v3115, v3116, v3117, @"defaultDEPRECATEDTrendlineRSquaredParagraphStyleIndex", 1617);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3118, v3119, v3120, v3121, @"dEPRECATEDTrendlineRSquaredParagraphStyleIndex", 1096);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3122, v3123, v3124, v3125, @"defaultDEPRECATEDTrendlineRSquaredShadow", 1618);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3126, v3127, v3128, v3129, @"dEPRECATEDTrendlineRSquaredShadow", 1097);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3130, v3131, v3132, v3133, @"areaDEPRECATED3dFill", 1619);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3134, v3135, v3136, v3137, @"dEPRECATED3dFill", 1134);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3138, v3139, v3140, v3141, @"barDEPRECATED3dFill", 1620);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3142, v3143, v3144, v3145, @"dEPRECATED3dFill", 1134);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3146, v3147, v3148, v3149, @"columnDEPRECATED3dFill", 1621);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3150, v3151, v3152, v3153, @"dEPRECATED3dFill", 1134);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3154, v3155, v3156, v3157, @"defaultDEPRECATED3dFill", 1622);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3158, v3159, v3160, v3161, @"dEPRECATED3dFill", 1134);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3162, v3163, v3164, v3165, @"lineDEPRECATED3dFill", 1623);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3166, v3167, v3168, v3169, @"dEPRECATED3dFill", 1134);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3170, v3171, v3172, v3173, @"pieDEPRECATED3dFill", 1624);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3174, v3175, v3176, v3177, @"dEPRECATED3dFill", 1134);
  objc_msgSend_setObject_forKey_(qword_280A47598, v3178, v3179, v3180, v3181, @"pieDEPRECATEDSeriesLabelsOn", 1625);
  v3186 = qword_280A47598;

  return objc_msgSend_setObject_forKey_(v3186, v3182, v3183, v3184, v3185, @"dEPRECATEDSeriesLabelsOn", 1135);
}

void sub_2762DE89C(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v7 = a2;
  v23 = objc_msgSend_g_gilliganPropertyStringFromProperty_(*(a1 + 64), a2, a4, a5, a6, a2);
  if (objc_msgSend_isEqual_(v23, v9, v10, v11, v12, *(a1 + 32)))
  {
    *(*(*(a1 + 56) + 8) + 24) = v7;
    *a3 = 1;
  }

  else
  {
    v17 = *(a1 + 40);
    v18 = objc_msgSend_intForKey_(*(a1 + 48), v13, v14, v15, v16, v7);
    objc_msgSend_addProperty_(v17, v19, v20, v21, v22, v18);
  }
}

void sub_2762DE938(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v7 = a2;
  v13 = objc_msgSend_g_gilliganPropertyStringFromProperty_(*(a1 + 48), a2, a4, a5, a6, a2);
  if (objc_msgSend_isEqual_(v13, v9, v10, v11, v12, *(a1 + 32)))
  {
    *(*(*(a1 + 40) + 8) + 24) = v7;
    *a3 = 1;
  }
}

void sub_2762DEA9C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D81210]);
  v7 = objc_msgSend_g_specificToGenericPropertyMap(*(a1 + 32), v3, v4, v5, v6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2762DEB70;
  v15[3] = &unk_27A6B7818;
  v8 = v2;
  v16 = v8;
  objc_msgSend_enumerateKeysAndValuesUsingBlock_(v7, v9, v10, v11, v12, v15);

  v13 = qword_280A475A8;
  qword_280A475A8 = v8;
  v14 = v8;
}

void sub_2762DEB70(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v9 = objc_msgSend_objectForKey_(*(a1 + 32), a2, a4, a5, a6);
  if (!v9)
  {
    v26 = objc_alloc_init(MEMORY[0x277D80AA8]);
    objc_msgSend_setObject_forKey_(*(a1 + 32), v14, v15, v16, v17, v26, a3);
    v9 = v26;
  }

  v27 = v9;
  if (a2 >= 0x80000000)
  {
    sub_2764A7BD0();
    objc_msgSend_addProperty_(v27, v18, v19, v20, v21, 0x7FFFFFFFLL);
  }

  else if (a2 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    sub_2764A7B54();
    objc_msgSend_addProperty_(v27, v22, v23, v24, v25, 0x80000000);
  }

  else
  {
    objc_msgSend_addProperty_(v9, v10, v11, v12, v13, a2);
  }
}

uint64_t sub_2762DECC0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{

  return objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, a5, a1, a2, a3, v6, v7, 4585, 0);
}

void sub_2762DED28()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1024, 1025, 1026, 1026, 1027, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1034, 1034, 1035, 1035, 1035, 1036, 1036, 1037, 1037, 1038, 1038, 1039, 1039, 1040, 1040, 1041, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1049, 1050, 1051, 1051, 1052, 1052, 1052, 1053, 1054, 1054, 1054, 1055, 1055, 1056, 1057, 1057, 1058, 1058, 1059, 1059);
  v6 = qword_280A475B8;
  qword_280A475B8 = v5;
}

void sub_2762DEF00()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A475C8;
  qword_280A475C8 = v0;
}

void sub_2762DEF80()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1228, 1229, 1234, 1235, 1236, 1239, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1270, 1271, 1272, 1284, 1285, 1286, 1287, 1290, 1294, 1295, 1296, 0);
  v6 = qword_280A475D8;
  qword_280A475D8 = v5;
}

void sub_2762DF09C()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A475E8;
  qword_280A475E8 = v0;
}

void sub_2762DF214(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A475F8;
  qword_280A475F8 = v9;
}

void sub_2762DF32C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47608;
  qword_280A47608 = v9;
}

void sub_2762DF560(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47618;
  qword_280A47618 = v9;
}

uint64_t sub_2762DF618()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47628;
  qword_280A47628 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47628, v2, v3, v4, v5, 1271, 1270);
  v10 = qword_280A47628;

  return objc_msgSend_setInt_forKey_(v10, v6, v7, v8, v9, 1271, 1272);
}

void sub_2762DF6C0()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1230, 1231, 1232, 1233, 1237, 1238, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1265, 1266, 1267, 1268, 1269, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1288, 1289, 1291, 1292, 1293, 1297, 0);
  v6 = qword_280A47638;
  qword_280A47638 = v5;
}

void sub_2762DF868()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A47648;
  qword_280A47648 = v0;
}

void sub_2762DFA80(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47658;
  qword_280A47658 = v9;
}

void sub_2762DFBC8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47668;
  qword_280A47668 = v9;
}

void sub_2762DFDB4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47678;
  qword_280A47678 = v9;
}

uint64_t sub_2762DFE6C()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47688;
  qword_280A47688 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47688, v2, v3, v4, v5, 1241, 1240);
  objc_msgSend_setInt_forKey_(qword_280A47688, v6, v7, v8, v9, 1241, 1242);
  objc_msgSend_setInt_forKey_(qword_280A47688, v10, v11, v12, v13, 1244, 1243);
  objc_msgSend_setInt_forKey_(qword_280A47688, v14, v15, v16, v17, 1244, 1245);
  objc_msgSend_setInt_forKey_(qword_280A47688, v18, v19, v20, v21, 1292, 1291);
  v26 = qword_280A47688;

  return objc_msgSend_setInt_forKey_(v26, v22, v23, v24, v25, 1292, 1293);
}

void sub_2762DFF54()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1067, 1068, 1069, 1070, 1071, 1071, 1071, 1071, 1071, 1071, 1072, 1073, 1073, 1073, 1073, 1073, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1081, 1081, 1081, 1081, 1081, 1081, 1081, 1081, 1082, 1090, 1091, 1098, 1099, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119);
  v6 = qword_280A47698;
  qword_280A47698 = v5;
}

void sub_2762E01C0()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1317, 1337, 0);
  v6 = qword_280A476A8;
  qword_280A476A8 = v5;
}

void sub_2762E0258()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1298, 1299, 1301, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1322, 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1332, 1333, 1334, 1336, 1339, 1342, 1343, 1345, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1358, 1361, 1599, 1600, 1601, 1602, 1603, 1604, 1610, 0);
  v6 = qword_280A476B8;
  qword_280A476B8 = v5;
}

void sub_2762E03F4()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A476C8;
  qword_280A476C8 = v0;
}

void sub_2762E0578(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A476D8;
  qword_280A476D8 = v9;
}

void sub_2762E06EC(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A476E8;
  qword_280A476E8 = v9;
}

void sub_2762E0ABC(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A476F8;
  qword_280A476F8 = v9;
}

uint64_t sub_2762E0B74()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47708;
  qword_280A47708 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47708, v2, v3, v4, v5, 1325, 1322);
  objc_msgSend_setInt_forKey_(qword_280A47708, v6, v7, v8, v9, 1325, 1323);
  objc_msgSend_setInt_forKey_(qword_280A47708, v10, v11, v12, v13, 1325, 1324);
  objc_msgSend_setInt_forKey_(qword_280A47708, v14, v15, v16, v17, 1325, 1326);
  objc_msgSend_setInt_forKey_(qword_280A47708, v18, v19, v20, v21, 1325, 1328);
  objc_msgSend_setInt_forKey_(qword_280A47708, v22, v23, v24, v25, 1325, 1329);
  v30 = qword_280A47708;

  return objc_msgSend_setInt_forKey_(v30, v26, v27, v28, v29, 1325, 1330);
}

void sub_2762E0C6C()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1300, 1302, 1303, 1304, 1305, 1306, 1307, 1316, 1317, 1318, 1319, 1320, 1321, 1331, 1335, 1337, 1338, 1340, 1341, 1344, 1346, 1347, 1348, 1356, 1357, 1359, 1360, 1362, 1594, 1595, 1596, 1597, 1598, 1605, 1606, 1607, 1608, 1609, 1611, 1612, 1613, 1614, 1615, 1616, 1617, 1618, 0);
  v6 = qword_280A47718;
  qword_280A47718 = v5;
}

void sub_2762E0E14()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1317, 1337, 0);
  v6 = qword_280A47728;
  qword_280A47728 = v5;
}

void sub_2762E0F8C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47738;
  qword_280A47738 = v9;
}

void sub_2762E1120(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47748;
  qword_280A47748 = v9;
}

void sub_2762E14B4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47758;
  qword_280A47758 = v9;
}

uint64_t sub_2762E156C()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47768;
  qword_280A47768 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47768, v2, v3, v4, v5, 1305, 1302);
  objc_msgSend_setInt_forKey_(qword_280A47768, v6, v7, v8, v9, 1305, 1303);
  objc_msgSend_setInt_forKey_(qword_280A47768, v10, v11, v12, v13, 1305, 1304);
  objc_msgSend_setInt_forKey_(qword_280A47768, v14, v15, v16, v17, 1305, 1306);
  v22 = qword_280A47768;

  return objc_msgSend_setInt_forKey_(v22, v18, v19, v20, v21, 1305, 1307);
}

void sub_2762E1644()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1127, 1128, 1128, 1129, 1130, 1131, 1132, 1133, 1136, 1137, 1138, 1138, 1138, 1138, 1138, 1138, 1138, 1138, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1160, 1160, 1160, 1160, 1160, 1160, 1160, 1160, 1160, 1160, 1160, 1160, 1162, 1161, 1163, 1164, 1164);
  v6 = qword_280A47778;
  qword_280A47778 = v5;
}

void sub_2762E1B2C()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1507, 1508, 1509, 1510, 1511, 1512, 1513, 1619, 1620, 1621, 1622, 1623, 1624, 0);
  v6 = qword_280A47788;
  qword_280A47788 = v5;
}

void sub_2762E1C54()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1363, 1364, 1365, 1366, 1367, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1390, 1391, 1392, 1393, 1397, 1398, 1401, 1402, 1418, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1444, 1445, 1462, 1463, 1464, 1465, 1466, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1474, 1475, 1476, 1477);
  v6 = qword_280A47798;
  qword_280A47798 = v5;
}

void sub_2762E1F78()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A477A8;
  qword_280A477A8 = v0;
}

void sub_2762E22A8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A477B8;
  qword_280A477B8 = v9;
}

void sub_2762E249C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A477C8;
  qword_280A477C8 = v9;
}

void sub_2762E26A8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A477D8;
  qword_280A477D8 = v9;
}

uint64_t sub_2762E2760()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A477E8;
  qword_280A477E8 = v0;

  objc_msgSend_setInt_forKey_(qword_280A477E8, v2, v3, v4, v5, 1364, 1365);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v6, v7, v8, v9, 1376, 1373);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v10, v11, v12, v13, 1376, 1374);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v14, v15, v16, v17, 1376, 1375);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v18, v19, v20, v21, 1376, 1377);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v22, v23, v24, v25, 1376, 1378);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v26, v27, v28, v29, 1376, 1379);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v30, v31, v32, v33, 1376, 1380);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v34, v35, v36, v37, 1376, 1381);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v38, v39, v40, v41, 1432, 1433);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v42, v43, v44, v45, 1434, 1435);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v46, v47, v48, v49, 1465, 1464);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v50, v51, v52, v53, 1481, 1478);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v54, v55, v56, v57, 1481, 1479);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v58, v59, v60, v61, 1481, 1480);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v62, v63, v64, v65, 1481, 1482);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v66, v67, v68, v69, 1481, 1483);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v70, v71, v72, v73, 1481, 1484);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v74, v75, v76, v77, 1481, 1485);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v78, v79, v80, v81, 1481, 1486);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v82, v83, v84, v85, 1491, 1488);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v86, v87, v88, v89, 1491, 1489);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v90, v91, v92, v93, 1491, 1490);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v94, v95, v96, v97, 1491, 1492);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v98, v99, v100, v101, 1491, 1493);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v102, v103, v104, v105, 1491, 1494);
  objc_msgSend_setInt_forKey_(qword_280A477E8, v106, v107, v108, v109, 1491, 1495);
  v114 = qword_280A477E8;

  return objc_msgSend_setInt_forKey_(v114, v110, v111, v112, v113, 1491, 1496);
}

void sub_2762E29A8()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1368, 1369, 1370, 1388, 1389, 1394, 1395, 1396, 1399, 1400, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1436, 1437, 1438, 1439, 1440, 1441, 1442, 1443, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1497);
  v6 = qword_280A477F8;
  qword_280A477F8 = v5;
}

void sub_2762E2DA4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1507, 1508, 1509, 1510, 1511, 1512, 1513, 1619, 1620, 1621, 1622, 1623, 1624, 0);
  v6 = qword_280A47808;
  qword_280A47808 = v5;
}

void sub_2762E2FA8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47818;
  qword_280A47818 = v9;
}

void sub_2762E30F8(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47828;
  qword_280A47828 = v9;
}

void sub_2762E3534(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47838;
  qword_280A47838 = v9;
}

uint64_t sub_2762E35EC()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47848;
  qword_280A47848 = v0;

  objc_msgSend_setInt_forKey_(qword_280A47848, v2, v3, v4, v5, 1411, 1403);
  objc_msgSend_setInt_forKey_(qword_280A47848, v6, v7, v8, v9, 1411, 1404);
  objc_msgSend_setInt_forKey_(qword_280A47848, v10, v11, v12, v13, 1411, 1405);
  objc_msgSend_setInt_forKey_(qword_280A47848, v14, v15, v16, v17, 1411, 1406);
  objc_msgSend_setInt_forKey_(qword_280A47848, v18, v19, v20, v21, 1411, 1407);
  objc_msgSend_setInt_forKey_(qword_280A47848, v22, v23, v24, v25, 1411, 1408);
  objc_msgSend_setInt_forKey_(qword_280A47848, v26, v27, v28, v29, 1411, 1409);
  objc_msgSend_setInt_forKey_(qword_280A47848, v30, v31, v32, v33, 1411, 1410);
  objc_msgSend_setInt_forKey_(qword_280A47848, v34, v35, v36, v37, 1411, 1412);
  objc_msgSend_setInt_forKey_(qword_280A47848, v38, v39, v40, v41, 1411, 1413);
  objc_msgSend_setInt_forKey_(qword_280A47848, v42, v43, v44, v45, 1411, 1414);
  objc_msgSend_setInt_forKey_(qword_280A47848, v46, v47, v48, v49, 1411, 1415);
  objc_msgSend_setInt_forKey_(qword_280A47848, v50, v51, v52, v53, 1421, 1419);
  objc_msgSend_setInt_forKey_(qword_280A47848, v54, v55, v56, v57, 1421, 1420);
  objc_msgSend_setInt_forKey_(qword_280A47848, v58, v59, v60, v61, 1421, 1422);
  objc_msgSend_setInt_forKey_(qword_280A47848, v62, v63, v64, v65, 1421, 1423);
  objc_msgSend_setInt_forKey_(qword_280A47848, v66, v67, v68, v69, 1421, 1424);
  objc_msgSend_setInt_forKey_(qword_280A47848, v70, v71, v72, v73, 1421, 1425);
  objc_msgSend_setInt_forKey_(qword_280A47848, v74, v75, v76, v77, 1421, 1426);
  objc_msgSend_setInt_forKey_(qword_280A47848, v78, v79, v80, v81, 1439, 1437);
  objc_msgSend_setInt_forKey_(qword_280A47848, v82, v83, v84, v85, 1439, 1438);
  objc_msgSend_setInt_forKey_(qword_280A47848, v86, v87, v88, v89, 1439, 1440);
  objc_msgSend_setInt_forKey_(qword_280A47848, v90, v91, v92, v93, 1439, 1441);
  objc_msgSend_setInt_forKey_(qword_280A47848, v94, v95, v96, v97, 1439, 1442);
  objc_msgSend_setInt_forKey_(qword_280A47848, v98, v99, v100, v101, 1439, 1443);
  objc_msgSend_setInt_forKey_(qword_280A47848, v102, v103, v104, v105, 1454, 1446);
  objc_msgSend_setInt_forKey_(qword_280A47848, v106, v107, v108, v109, 1454, 1447);
  objc_msgSend_setInt_forKey_(qword_280A47848, v110, v111, v112, v113, 1454, 1448);
  objc_msgSend_setInt_forKey_(qword_280A47848, v114, v115, v116, v117, 1454, 1449);
  objc_msgSend_setInt_forKey_(qword_280A47848, v118, v119, v120, v121, 1454, 1450);
  objc_msgSend_setInt_forKey_(qword_280A47848, v122, v123, v124, v125, 1454, 1451);
  objc_msgSend_setInt_forKey_(qword_280A47848, v126, v127, v128, v129, 1454, 1452);
  objc_msgSend_setInt_forKey_(qword_280A47848, v130, v131, v132, v133, 1454, 1453);
  objc_msgSend_setInt_forKey_(qword_280A47848, v134, v135, v136, v137, 1454, 1455);
  objc_msgSend_setInt_forKey_(qword_280A47848, v138, v139, v140, v141, 1454, 1456);
  objc_msgSend_setInt_forKey_(qword_280A47848, v142, v143, v144, v145, 1454, 1457);
  objc_msgSend_setInt_forKey_(qword_280A47848, v146, v147, v148, v149, 1454, 1458);
  objc_msgSend_setInt_forKey_(qword_280A47848, v150, v151, v152, v153, 1454, 1459);
  objc_msgSend_setInt_forKey_(qword_280A47848, v154, v155, v156, v157, 1454, 1460);
  objc_msgSend_setInt_forKey_(qword_280A47848, v158, v159, v160, v161, 1454, 1461);
  objc_msgSend_setInt_forKey_(qword_280A47848, v162, v163, v164, v165, 1565, 1562);
  objc_msgSend_setInt_forKey_(qword_280A47848, v166, v167, v168, v169, 1565, 1563);
  objc_msgSend_setInt_forKey_(qword_280A47848, v170, v171, v172, v173, 1565, 1566);
  objc_msgSend_setInt_forKey_(qword_280A47848, v174, v175, v176, v177, 1565, 1567);
  objc_msgSend_setInt_forKey_(qword_280A47848, v178, v179, v180, v181, 1565, 1568);
  objc_msgSend_setInt_forKey_(qword_280A47848, v182, v183, v184, v185, 1565, 1569);
  objc_msgSend_setInt_forKey_(qword_280A47848, v186, v187, v188, v189, 1565, 1570);
  objc_msgSend_setInt_forKey_(qword_280A47848, v190, v191, v192, v193, 1565, 1571);
  objc_msgSend_setInt_forKey_(qword_280A47848, v194, v195, v196, v197, 1565, 1572);
  objc_msgSend_setInt_forKey_(qword_280A47848, v198, v199, v200, v201, 1565, 1573);
  objc_msgSend_setInt_forKey_(qword_280A47848, v202, v203, v204, v205, 1622, 1619);
  objc_msgSend_setInt_forKey_(qword_280A47848, v206, v207, v208, v209, 1622, 1620);
  objc_msgSend_setInt_forKey_(qword_280A47848, v210, v211, v212, v213, 1622, 1621);
  objc_msgSend_setInt_forKey_(qword_280A47848, v214, v215, v216, v217, 1622, 1623);
  v222 = qword_280A47848;

  return objc_msgSend_setInt_forKey_(v222, v218, v219, v220, v221, 1622, 1624);
}

void sub_2762E39E4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1213, 1214, 1215, 1216, 1217, 0);
  v6 = qword_280A47858;
  qword_280A47858 = v5;
}

void sub_2762E3A90()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1579, 0);
  v6 = qword_280A47868;
  qword_280A47868 = v5;
}

void sub_2762E3B24()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A47878;
  qword_280A47878 = v0;
}

void sub_2762E3BA4()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A47888;
  qword_280A47888 = v0;
}

void sub_2762E3C90(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47898;
  qword_280A47898 = v9;
}

void sub_2762E3D9C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A478A8;
  qword_280A478A8 = v9;
}

void sub_2762E3EA4(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A478B8;
  qword_280A478B8 = v9;
}

void sub_2762E3F5C()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A478C8;
  qword_280A478C8 = v0;
}

void sub_2762E3FDC()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1579, 1580, 1581, 1582, 1583, 0);
  v6 = qword_280A478D8;
  qword_280A478D8 = v5;
}

void sub_2762E4088()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1579, 0);
  v6 = qword_280A478E8;
  qword_280A478E8 = v5;
}

void sub_2762E4198(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A478F8;
  qword_280A478F8 = v9;
}

void sub_2762E42B0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47908;
  qword_280A47908 = v9;
}

void sub_2762E4400(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47918;
  qword_280A47918 = v9;
}

void sub_2762E44B8()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47928;
  qword_280A47928 = v0;
}

void sub_2762E4538()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 0);
  v6 = qword_280A47938;
  qword_280A47938 = v5;
}

void sub_2762E4600()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A47948;
  qword_280A47948 = v0;
}

void sub_2762E4680()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1584, 1585, 1588, 1589, 1590, 1592, 0);
  v6 = qword_280A47958;
  qword_280A47958 = v5;
}

void sub_2762E4730()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A47968;
  qword_280A47968 = v0;
}

void sub_2762E4844(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47978;
  qword_280A47978 = v9;
}

void sub_2762E4950(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47988;
  qword_280A47988 = v9;
}

void sub_2762E4AB0(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A47998;
  qword_280A47998 = v9;
}

void sub_2762E4B68()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A479A8;
  qword_280A479A8 = v0;
}

void sub_2762E4BE8()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v5 = objc_msgSend_initWithProperties_(v0, v1, v2, v3, v4, 1586, 1587, 1591, 1593, 0);
  v6 = qword_280A479B8;
  qword_280A479B8 = v5;
}

void sub_2762E4C8C()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A479C8;
  qword_280A479C8 = v0;
}

void sub_2762E4D8C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A479D8;
  qword_280A479D8 = v9;
}

void sub_2762E4E98(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A479E8;
  qword_280A479E8 = v9;
}

void sub_2762E503C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v11 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, a5, a1, a2, a3);
  v9 = objc_msgSend_appSpecificPropertyOverrides(v11, v5, v6, v7, v8);
  v10 = qword_280A479F8;
  qword_280A479F8 = v9;
}

void sub_2762E50F4()
{
  v0 = objc_alloc_init(MEMORY[0x277D81208]);
  v1 = qword_280A47A08;
  qword_280A47A08 = v0;
}

uint64_t sub_2762E5138(void *a1, void *a2, void *a3, uint64_t a4, _DWORD *a5, char *a6)
{
  v39 = 0;
  v38 = 0;
  v11 = a1;
  v12 = sub_2762E5274(v11, a2, a3, a4, &v38, &v39);
  v13 = v38;
  v18 = v13;
  v19 = 0;
  if (a6 && v12)
  {
    v19 = objc_msgSend_overridesProperty_(v13, v14, v15, v16, v17, v39);
  }

  v20 = v12 ^ 1;
  if (!a5)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    *a5 = objc_msgSend_intValueForProperty_(v18, v14, v15, v16, v17, v39);
  }

  v21 = objc_msgSend_chartInfo(v11, v14, v15, v16, v17, v38);
  v26 = objc_msgSend_viewOverrideMapForStyleOwner_(v21, v22, v23, v24, v25, v11);

  if (v26)
  {
    v31 = objc_msgSend_containsProperty_(v26, v27, v28, v29, v30, a4);
    v36 = v31;
    if (a5 && v31)
    {
      *a5 = objc_msgSend_intValueForProperty_(v26, v32, v33, v34, v35, a4);
      v19 = 1;
    }

    v12 = v12 | v36;
  }

  if (a6)
  {
    *a6 = v19;
  }

  return v12;
}

uint64_t sub_2762E5274(void *a1, void *a2, void *a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v11 = a1;
  v12 = a2;
  v14 = a3;
  v118 = v11;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "BOOL p_HasValueForGeneric(__strong id<TSCHStyleOwning>, __strong id<TSCHStyleActAlike>, __strong id<TSCHStyleActAlike>, TSSProperty, __autoreleasing id<TSCHStyleActAlike> *, TSSProperty *)");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 191, 0, "invalid nil value for '%{public}s'", "owner");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    if (v12)
    {
LABEL_3:
      if (a6)
      {
        goto LABEL_4;
      }

LABEL_9:
      v55 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "BOOL p_HasValueForGeneric(__strong id<TSCHStyleOwning>, __strong id<TSCHStyleActAlike>, __strong id<TSCHStyleActAlike>, TSSProperty, __autoreleasing id<TSCHStyleActAlike> *, TSSProperty *)");
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 194, 0, "invalid nil value for '%{public}s'", "specificPtr");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
      if (a5)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  v40 = MEMORY[0x277D81150];
  v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "BOOL p_HasValueForGeneric(__strong id<TSCHStyleOwning>, __strong id<TSCHStyleActAlike>, __strong id<TSCHStyleActAlike>, TSSProperty, __autoreleasing id<TSCHStyleActAlike> *, TSSProperty *)");
  v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 192, 0, "invalid nil value for '%{public}s'", "style");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  if (!a6)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_10:
  v70 = MEMORY[0x277D81150];
  v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v15, v16, v17, "BOOL p_HasValueForGeneric(__strong id<TSCHStyleOwning>, __strong id<TSCHStyleActAlike>, __strong id<TSCHStyleActAlike>, TSSProperty, __autoreleasing id<TSCHStyleActAlike> *, TSSProperty *)");
  v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v77, v78, v79, v80, v71, v76, 195, 0, "invalid nil value for '%{public}s'", "storePtr");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
LABEL_5:
  v18 = v12;
  v19 = a6;
  v21 = objc_opt_class();
  if (v14)
  {
    objc_msgSend_properties(v14, v20, v22, v23, v24);
  }

  else
  {
    objc_msgSend_propertySet(MEMORY[0x277D80AC0], v20, v22, v23, v24);
  }
  v85 = ;
  v86 = a5;
  v91 = objc_msgSend_specificPropertyForGeneric_(v118, v87, v88, v89, v90, a4);
  if (v91)
  {
    v96 = v91;
    if (objc_msgSend_containsProperty_(v85, v92, v93, v94, v95, v91))
    {
      v97 = v14;
    }

    else
    {
      v97 = v18;
    }

    v99 = v97;
    v103 = v21;
    if (v99)
    {
      v103 = objc_opt_class();
    }

    if ((objc_msgSend_definesProperty_(v99, v98, v100, v101, v102, v96) & 1) != 0 || sub_2762E8D6C(v103, v96))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v99 = 0;
  }

  v104 = objc_msgSend_defaultPropertyForGeneric_(v118, v92, v93, v94, v95, a4);
  if (!v104)
  {
    v116 = 0;
    goto LABEL_38;
  }

  v96 = v104;
  if (objc_msgSend_containsProperty_(v85, v105, v106, v107, v108, v104))
  {
    v109 = v14;
  }

  else
  {
    v109 = v18;
  }

  v110 = v109;

  if (v110)
  {
    v21 = objc_opt_class();
  }

  if ((objc_msgSend_definesProperty_(v110, v111, v112, v113, v114, v96) & 1) == 0 && !sub_2762E8D6C(v21, v96))
  {
    v116 = 0;
    v99 = v110;
    goto LABEL_38;
  }

  v99 = v110;
LABEL_31:
  if (v19)
  {
    *v19 = v96;
  }

  if (v86)
  {
    v115 = v99;
    *v86 = v99;
  }

  v116 = 1;
LABEL_38:

  return v116;
}

uint64_t sub_2762E5660(void *a1, void *a2, void *a3, uint64_t a4, _DWORD *a5, char *a6)
{
  v40 = 0;
  v39 = 0;
  v11 = a1;
  v12 = sub_2762E5274(v11, a2, a3, a4, &v39, &v40);
  v13 = v39;
  v18 = v13;
  v19 = 0;
  if (a6 && v12)
  {
    v19 = objc_msgSend_overridesProperty_(v13, v14, v15, v16, v17, v40);
  }

  v20 = v12 ^ 1;
  if (!a5)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    objc_msgSend_floatValueForProperty_(v18, v14, v15, v16, v17, v40);
    *a5 = LODWORD(v15);
  }

  v21 = objc_msgSend_chartInfo(v11, v14, v15, v16, v17, v39);
  v26 = objc_msgSend_viewOverrideMapForStyleOwner_(v21, v22, v23, v24, v25, v11);

  if (v26)
  {
    v31 = objc_msgSend_containsProperty_(v26, v27, v28, v29, v30, a4);
    v36 = v31;
    if (a5 && v31)
    {
      objc_msgSend_floatValueForProperty_(v26, v32, v33, v34, v35, a4);
      *a5 = v37;
      v19 = 1;
    }

    v12 = v12 | v36;
  }

  if (a6)
  {
    *a6 = v19;
  }

  return v12;
}

uint64_t sub_2762E57A4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, char *a6)
{
  v39 = 0;
  v38 = 0;
  v11 = a1;
  v12 = sub_2762E5274(v11, a2, a3, a4, &v38, &v39);
  v13 = v38;
  v18 = v13;
  v19 = 0;
  if (a6 && v12)
  {
    v19 = objc_msgSend_overridesProperty_(v13, v14, v15, v16, v17, v39);
  }

  v20 = v12 ^ 1;
  if (!a5)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    *a5 = objc_msgSend_valueForProperty_(v18, v14, v15, v16, v17, v39);
  }

  v21 = objc_msgSend_chartInfo(v11, v14, v15, v16, v17, v38);
  v26 = objc_msgSend_viewOverrideMapForStyleOwner_(v21, v22, v23, v24, v25, v11);

  if (v26)
  {
    v31 = objc_msgSend_containsProperty_(v26, v27, v28, v29, v30, a4);
    v36 = v31;
    if (a5 && v31)
    {
      *a5 = objc_msgSend_objectForProperty_(v26, v32, v33, v34, v35, a4);
      v19 = 1;
    }

    v12 = v12 | v36;
  }

  if (a6)
  {
    *a6 = v19;
  }

  return v12;
}

id sub_2762E58F8(void *a1, void *a2, void *a3, uint64_t a4, char *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = String();
  switch(v12)
  {
    case 2:
      v24 = 0;
      if (sub_2762E5660(v9, v10, v11, a4, &v24, a5))
      {
        LODWORD(v19) = v24;
        v13 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v18, v19, v20, v21);
        goto LABEL_9;
      }

      break;
    case 1:
      v24 = 0;
      if (sub_2762E5138(v9, v10, v11, a4, &v24, a5))
      {
        v13 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v15, v16, v17, v24);
        goto LABEL_9;
      }

      break;
    case 0:
      v25 = 0;
      sub_2762E57A4(v9, v10, v11, a4, &v25, a5);
      v13 = v25;
LABEL_9:
      v22 = v13;
      goto LABEL_11;
  }

  v22 = 0;
LABEL_11:

  return v22;
}

id sub_2762E5FE4(int a1, const char *a2, double a3, double a4, double a5)
{
  if (a1 <= 2)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_8;
    }
  }

  else if (a1 == 3 || a1 == 4 || a1 == 5)
  {
LABEL_8:
    v5 = objc_opt_class();
    goto LABEL_9;
  }

  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "Class  _Nullable p_genericPropertyMapClassForStyleOwnerType(TSCHStyleOwnerType)");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleOwningImplementation.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 186, 0, "Why are we here?");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t sub_2762E60FC(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return dword_2764D6CDC[a1];
  }
}

uint64_t sub_2762E611C(int a1)
{
  if ((a1 - 1) > 0xE)
  {
    return 0;
  }

  else
  {
    return byte_2764D6D1C[a1 - 1];
  }
}

__CFString *sub_2762E6140(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_27A6B9500[a1];
  }
}

void sub_2762E6A50(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v13 = objc_msgSend_styleOwnerBaseUUIDString(*(a1 + 32), v3, v4, v5, v6);
  v11 = objc_msgSend_initWithUUIDString_(v2, v7, v8, v9, v10, v13);
  v12 = qword_280A47A18;
  qword_280A47A18 = v11;
}

BOOL sub_2762E8D6C(void *a1, uint64_t a2)
{
  v4 = String();
  if (v4)
  {
    if (v4 == 2)
    {
      objc_msgSend_defaultFloatValueForProperty_(a1, v5, v6, v7, v8, a2);
      v9 = v10 == INFINITY;
    }

    else
    {
      if (v4 != 1)
      {
        return 0;
      }

      v9 = objc_msgSend_defaultIntValueForProperty_(a1, v5, v6, v7, v8, a2) == 0x80000000;
    }

    return !v9;
  }

  else
  {
    v12 = objc_msgSend_defaultValueForProperty_(a1, v5, v6, v7, v8, a2);
    v11 = v12 != 0;
  }

  return v11;
}

void sub_2762E9348(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = *(a1 + 40);
  if (a2 >> 32)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCHChartMediator(Archiving) saveToArchive:]_block_invoke");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartMediator_Archiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 89, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    v8 = -1;
  }

  else
  {
    v8 = a2;
  }

  v9 = *(v7 + 24);
  if (v9 == *(v7 + 28))
  {
    v10 = v9 + 1;
    sub_2762E9624((v7 + 24), v9 + 1);
    *(*(v7 + 32) + 4 * v9) = v8;
  }

  else
  {
    *(*(v7 + 32) + 4 * v9) = v8;
    v10 = v9 + 1;
  }

  *(v7 + 24) = v10;
  v11 = objc_msgSend_intForKey_(*(*(a1 + 32) + 24), a2, a3, a4, a5, a2);
  v16 = *(a1 + 40);
  if (v11 >= 0x100000000)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHChartMediator(Archiving) saveToArchive:]_block_invoke");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartMediator_Archiving.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 91, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    v17 = -1;
  }

  else
  {
    v17 = v11;
    if (v11 < 0)
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHChartMediator(Archiving) saveToArchive:]_block_invoke");
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartMediator_Archiving.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v57, v58, v59, v60, v51, v56, 91, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
      v17 = 0;
    }
  }

  v18 = *(v16 + 40);
  if (v18 == *(v16 + 44))
  {
    v19 = v18 + 1;
    sub_2762E9624((v16 + 40), v18 + 1);
    *(*(v16 + 48) + 4 * v18) = v17;
  }

  else
  {
    *(*(v16 + 48) + 4 * v18) = v17;
    v19 = v18 + 1;
  }

  *(v16 + 40) = v19;
}

void sub_2762E9624(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    sub_2762A9678(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_2762EA22C()
{
  v0 = objc_alloc_init(MEMORY[0x277D80AC0]);
  v1 = qword_280A47A28;
  qword_280A47A28 = v0;
}

void sub_2762EAF70(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a3, a4, a5, a2);
  v10 = objc_msgSend_objectForKey_(*(a1 + 32), v6, v7, v8, v9, v15);
  objc_msgSend_addObject_(*(a1 + 40), v11, v12, v13, v14, v10);
}

void sub_2762EB2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2762EB2BC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a3, a4, a5, a2);
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v6, v7, v8, v9, *(*(*(a1 + 48) + 8) + 24));
  objc_msgSend_setObject_forKey_(*(a1 + 40), v11, v12, v13, v14, v10, v15);
  ++*(*(*(a1 + 48) + 8) + 24);
}

BOOL sub_2762ED4A8(void *a1)
{
  v1 = a1;
  v5 = v1;
  if (v1)
  {
    objc_msgSend_transform(v1, v2, 0.0, v3, v4);
  }

  v6 = fabs(0.0);
  if (v6 == 1.0 || vabdd_f64(1.0, v6) < 0.00999999978)
  {
    v8 = fabs(0.0);
    v7 = vabdd_f64(1.0, v8) < 0.00999999978 || v8 == 1.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_2762EF788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2762EF7DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2762EF7F4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v9 = v4;
  v10 = *(*(*(a1 + 32) + 8) + 40);
  if (v10)
  {
    v11 = objc_msgSend_pathType(v4, v5, v6, v7, v8);
    isEqual = objc_msgSend_isEqual_(v10, v12, v13, v14, v15, v11);

    if ((isEqual & 1) == 0)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCHSelection initWithChartInfo:paths:]_block_invoke");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHSelection.mm");
      v28 = objc_msgSend_pathType(v9, v24, v25, v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v29, v30, v31, v32, v18, v23, 62, 0, "path type mismatch %@ expects %@", v28, *(*(*(a1 + 32) + 8) + 40));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }
  }

  v37 = *(*(a1 + 32) + 8);
  v38 = *(v37 + 40);
  if (v38)
  {
    v39 = v38;
    v40 = *(v37 + 40);
    *(v37 + 40) = v39;
  }

  else
  {
    v41 = objc_msgSend_pathType(v9, v5, v6, v7, v8);
    v42 = *(*(a1 + 32) + 8);
    v40 = *(v42 + 40);
    *(v42 + 40) = v41;
  }

  return v9;
}

void sub_2762EFA70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2762EFC38(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();

  return v3;
}

id sub_2762EFD50(double a1, double a2, double a3, uint64_t a4, void *a5)
{
  v5 = objc_msgSend_copy(a5, a5, a1, a2, a3);

  return v5;
}

void sub_2762F04BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2762F05D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2762F0BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2762F34E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  if (v26)
  {
  }

  if (v28)
  {
  }

  if (*(v30 - 84))
  {
  }

  if (v23)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2762F3854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  TSCH::StylePasteboardDataArchive::~StylePasteboardDataArchive(&a10);
  _Unwind_Resume(a1);
}

_BYTE *sub_2762F3BA4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2761530FC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

id sub_2762F3E68(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CBEB38];
  v7 = objc_msgSend_count(v1, v3, v4, v5, v6);
  v12 = objc_msgSend_dictionaryWithCapacity_(v2, v8, v9, v10, v11, v7);
  v17 = objc_msgSend_allProperties(v1, v13, v14, v15, v16);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2762F403C;
  v27[3] = &unk_27A6B6D88;
  v28 = v1;
  v18 = v12;
  v29 = v18;
  v19 = v1;
  objc_msgSend_enumeratePropertiesUsingBlock_(v17, v20, v21, v22, v23, v27);

  v24 = v29;
  v25 = v18;

  return v18;
}

void sub_2762F403C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v7 = objc_msgSend_boxedObjectForProperty_(*(a1 + 32), a2, a3, a4, a5, a2);
  if (v7)
  {
    v12 = *(a1 + 40);
    v18 = v7;
    v13 = objc_msgSend_tsch_numberWithStyleProperty_(MEMORY[0x277CCABB0], v8, v9, v10, v11, a2);
    objc_msgSend_setObject_forKey_(v12, v14, v15, v16, v17, v18, v13);

    v7 = v18;
  }
}

id sub_2762F40C4(void *a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x277D80AB8]);
  v7 = objc_msgSend_count(v1, v3, v4, v5, v6);
  v12 = objc_msgSend_initWithCapacity_(v2, v8, v9, v10, v11, v7);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = objc_msgSend_allKeys(v1, v13, 0.0, v14, v15);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v17, v18, v19, &v68, v72, 16);
  if (v20)
  {
    v21 = v20;
    v22 = 0x277CCA000uLL;
    v23 = *v69;
    v66 = *v69;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v69 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v68 + 1) + 8 * i);
        objc_opt_class();
        v27 = TSUDynamicCast();
        if (!v27)
        {
          v31 = v21;
          v32 = v12;
          v33 = v1;
          v34 = v22;
          v35 = MEMORY[0x277D81150];
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v28, v29, v30, "TSSPropertyMap *TSCHPropertyMapFromMutationDict(NSDictionary<NSNumber *,id> *__strong)");
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMutationTuple.m");
          v42 = v35;
          v22 = v34;
          v1 = v33;
          v12 = v32;
          v21 = v31;
          v23 = v66;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v43, v44, v45, v46, v36, v41, 70, 0, "invalid nil value for '%{public}s'", "propNum");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
        }

        v51 = objc_msgSend_tsch_stylePropertyValue(v27, v26, v28, v29, v30);
        v56 = objc_msgSend_objectForKey_(v1, v52, v53, v54, v55, v25);
        objc_msgSend_setBoxedObject_forProperty_(v12, v57, v58, v59, v60, v56, v51);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, v62, v63, v64, &v68, v72, 16);
    }

    while (v21);
  }

  return v12;
}

id sub_2762F4308(void *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_asCurrencyFormat(a1, a2, a3, a4, a5);
  if (!v6)
  {
    v6 = objc_msgSend_asNumberFormat(a1, v7, v8, v9, v10);
  }

  return v6;
}

id sub_2762F4350(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v10 = objc_msgSend_asTSCHNumericFormat(v5, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_chartNumericFormatProperties(v10, v11, v12, v13, v14);
    v18 = v4[2](v4, v16, v17);
    v23 = objc_msgSend_chartNumericFormatByApplyingTSCHNumericFormatProperties_(v15, v19, v20, v21, v22, v18, v19);
    v28 = v23;
    if (v23)
    {
      v29 = v23;

      v5 = v29;
    }

    else
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSKFormat(TSCHNumberFormatSupport) formatByUpdatingIfTSCHNumericFormatWithBlock:]");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 173, 0, "invalid nil value for '%{public}s'", "updatedFormat");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }
  }

  return v5;
}

id sub_2762F44DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v10 = objc_msgSend_asCurrencyFormat(v5, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    objc_msgSend_chartCurrencyFormatProperties(v10, v11, v12, v13, v14);
    v4[2](&v47, v4, v46);
    v43 = v47;
    v44 = v48;
    v45 = v49;
    v20 = objc_msgSend_formatByApplyingTSCHCurrencyFormatProperties_(v15, v16, v17, v18, v19, &v43);
    v25 = v20;
    if (v20)
    {
      v26 = v20;

      v5 = v26;
    }

    else
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "[TSKFormat(TSCHNumberFormatSupport) formatByUpdatingIfCurrencyFormatWithBlock:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 187, 0, "invalid nil value for '%{public}s'", "updatedFormat");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    }
  }

  return v5;
}

id sub_2762F4694(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v10 = objc_msgSend_asFractionFormat(v5, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_chartFractionFormatProperties(v10, v11, v12, v13, v14);
    v17 = v4[2](v4, v16);
    v22 = objc_msgSend_formatByApplyingTSCHFractionFormatProperties_(v15, v18, v19, v20, v21, v17);
    v27 = v22;
    if (v22)
    {
      v28 = v22;

      v5 = v28;
    }

    else
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSKFormat(TSCHNumberFormatSupport) formatByUpdatingIfFractionFormatWithBlock:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 201, 0, "invalid nil value for '%{public}s'", "updatedFormat");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }
  }

  return v5;
}

id sub_2762F4814(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v10 = objc_msgSend_asBaseFormat(v5, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    v16 = objc_msgSend_chartBaseFormatProperties(v10, v11, v12, v13, v14);
    v17 = v4[2](v4, v16 & 0xFFFFFF);
    v22 = objc_msgSend_formatByApplyingTSCHBaseFormatProperties_(v15, v18, v19, v20, v21, v17 & 0xFFFFFF);
    v27 = v22;
    if (v22)
    {
      v28 = v22;

      v5 = v28;
    }

    else
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSKFormat(TSCHNumberFormatSupport) formatByUpdatingIfBaseFormatWithBlock:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 215, 0, "invalid nil value for '%{public}s'", "updatedFormat");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }
  }

  return v5;
}

uint64_t sub_2762F4994(void *a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_defaultDecimalPlaces(TSCHNumberFormat, a2, a3, a4, a5);
  objc_msgSend_defaultNegativeNumberStyle(TSCHNumberFormat, v6, v7, v8, v9);
  objc_msgSend_defaultShowThousandsSeparator(TSCHNumberFormat, v10, v11, v12, v13);
  v18 = objc_msgSend_decimalPlaces(a1, v14, v15, v16, v17);
  objc_msgSend_negativeStyle(a1, v19, v20, v21, v22);
  objc_msgSend_showThousandsSeparator(a1, v23, v24, v25, v26);
  return v18;
}

id sub_2762F4A10(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = objc_alloc(MEMORY[0x277D806A0]);
  v12 = objc_msgSend_formatType(a1, v8, v9, v10, v11);
  v17 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v7, v13, v14, v15, v16, v12, a3, a4, (a4 >> 8) & 1);

  return v17;
}

uint64_t sub_2762F4A80(void *a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_defaultDecimalPlaces(TSCHNumberFormat, a2, a3, a4, a5);
  objc_msgSend_defaultNegativeNumberStyle(TSCHNumberFormat, v6, v7, v8, v9);
  objc_msgSend_defaultShowThousandsSeparator(TSCHNumberFormat, v10, v11, v12, v13);
  v18 = objc_msgSend_decimalPlaces(a1, v14, v15, v16, v17);
  objc_msgSend_negativeStyle(a1, v19, v20, v21, v22);
  objc_msgSend_showThousandsSeparator(a1, v23, v24, v25, v26);
  return v18;
}

id sub_2762F4AFC(void *a1, const char *a2, uint64_t a3, __int16 a4, double a5, double a6, double a7)
{
  v9 = a1;
  objc_msgSend_chartCurrencyFormatProperties(a1, a2, a5, a6, a7);
  *&v19 = a3;
  WORD4(v19) = a4;
  v17 = v20;
  v16 = v19;
  v10 = v21;
  v18 = v10;
  if (v9)
  {
    v9 = objc_msgSend_formatByApplyingTSCHCurrencyFormatProperties_(v9, v11, v12, v13, v14, &v16);
  }

  else
  {
  }

  return v9;
}

void sub_2762F4BB0(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  sub_2762FA498(a3, a2, a4, a5, a6);
  *a3 = objc_msgSend_chartNumericFormatProperties(a1, v8, v9, v10, v11);
  *(a3 + 8) = v12;
  *(a3 + 16) = objc_msgSend_accountingStyle(a1, v12, v13, v14, v15);
  v20 = objc_msgSend_currencyCode(a1, v16, v17, v18, v19);
  v21 = *(a3 + 24);
  *(a3 + 24) = v20;
}

id sub_2762F4C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_alloc(MEMORY[0x277D80640]);
  v9 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v4, v5, v6, v7, v8, *a3, *(a3 + 8), *(a3 + 9), *(a3 + 16), *(a3 + 24));

  return v9;
}

id sub_2762F4CE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_alloc(MEMORY[0x277D80688]);
  v9 = objc_msgSend_initWithFractionAccuracy_(v4, v5, v6, v7, v8, a3);

  return v9;
}

uint64_t sub_2762F4D24(void *a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_defaultBase(TSCHNumberFormat, a2, a3, a4, a5);
  objc_msgSend_defaultBasePlaces(TSCHNumberFormat, v6, v7, v8, v9);
  objc_msgSend_defaultBaseUseMinusSign(TSCHNumberFormat, v10, v11, v12, v13);
  v18 = objc_msgSend_base(a1, v14, v15, v16, v17);
  v23 = objc_msgSend_basePlaces(a1, v19, v20, v21, v22);
  if (objc_msgSend_baseUseMinusSign(a1, v24, v25, v26, v27))
  {
    v28 = 0x10000;
  }

  else
  {
    v28 = 0;
  }

  return v28 | (v23 << 8) | v18;
}

id sub_2762F4D9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = objc_alloc(MEMORY[0x277D80620]);
  v9 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v4, v5, v6, v7, v8, a3, BYTE1(a3), (a3 >> 16) & 1);

  return v9;
}

__n128 sub_2762F5720@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v4 = a1[1].n128_u64[1];
  if (!v4)
  {
    v5 = objc_opt_class();
    v10 = objc_msgSend_defaultCurrencyCode(v5, v6, v7, v8, v9);
    v11 = a1[1].n128_u64[1];
    a1[1].n128_u64[1] = v10;

    v4 = a1[1].n128_u64[1];
  }

  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  a1[1].n128_u64[1] = 0;
  a2[1].n128_u64[1] = v4;
  return result;
}

uint64_t sub_2762F6EF8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_decimalPlacesForNumberFormatter(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_negativeStyleForNumberFormatter(*(a1 + 32), v7, v8, v9, v10);
  return v6;
}

void sub_2762F78B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2762F7A64(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend_copy(&unk_28856EB28, a5, a1, a2, a3);
  v6 = qword_280A47A38;
  qword_280A47A38 = v5;
}

uint64_t sub_2762F7F00(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v5 = a2;
  v6 = objc_msgSend_asTSCHNumericFormat(*(a1 + 32), a2, a3, a4, a5);
  v11 = v6;
  if (v6)
  {
    v5 = objc_msgSend_chartNumericFormatProperties(v6, v7, v8, v9, v10);
  }

  return v5;
}

__n128 sub_2762F8724@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  objc_storeStrong((a2 + 24), *(a1 + 32));
  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a3 + 24) = v6;
  return result;
}

__n128 sub_2762F88E4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *(a1 + 32);
  a2[1].n128_u8[0] = v3;
  result = *a2;
  *a3 = *a2;
  a3[1].n128_u8[0] = v3;
  v5 = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  a3[1].n128_u64[1] = v5;
  return result;
}

void sub_2762F9D30(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_valueForProperty_(*(a1 + 32), a2, a3, a4, a5, a2);
  objc_opt_class();
  v7 = TSUClassAndProtocolCast();

  if (v7)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }
}

void sub_2762F9EE0(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v8 = objc_msgSend_valueForProperty_(*(a1 + 32), v4, v5, v6, v7, a2);
  v45 = TSUCheckedDynamicCast();

  v13 = v45;
  if (v45)
  {
    v14 = objc_msgSend_mutableCopy(v45, v9, v10, v11, v12);
    objc_opt_class();
    v15 = TSUClassAndProtocolCast();

    if (v15)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40));
      v20 = *(a1 + 32);
      v25 = objc_msgSend_copy(v15, v21, v22, v23, v24, &unk_288579348);
      objc_msgSend_setValue_forProperty_(v20, v26, v27, v28, v29, v25, a2);
    }

    else
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHBaseStyle(TSCHCustomFormatUpdateSupport) transformFormatObjectsUsingBlock:]_block_invoke", &unk_288579348);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHNumberFormat.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 1279, 0, "invalid nil value for '%{public}s'", "format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }

    v13 = v45;
  }
}

void sub_2762FA1A4(uint64_t a1, void *a2)
{
  v16 = a2;
  if (objc_msgSend_isCustom(v16, v3, v4, v5, v6))
  {
    v12 = objc_msgSend_customFormatListKey(v16, v7, v8, v9, v10);
    if (v12)
    {
      objc_msgSend_addObject_(*(a1 + 32), v11, v13, v14, v15, v12);
    }
  }
}

uint64_t sub_2762FA498(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  *a1 = objc_msgSend_defaultDecimalPlaces(TSCHNumberFormat, a2, a3, a4, a5);
  *(a1 + 8) = objc_msgSend_defaultNegativeNumberStyle(TSCHNumberFormat, v6, v7, v8, v9);
  *(a1 + 9) = objc_msgSend_defaultShowThousandsSeparator(TSCHNumberFormat, v10, v11, v12, v13);
  *(a1 + 16) = 0;
  *(a1 + 24) = objc_msgSend_defaultCurrencyCode(TSCHNumberFormat, v14, v15, v16, v17);
  return a1;
}

void *sub_2762FA4FC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2761530FC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_2762FC7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2762FC7F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2762FC80C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a3, a4, a5, a2);
  v31 = objc_msgSend_objectForKeyedSubscript_(v6, v8, v9, v10, v11, v7);

  v15 = v31;
  if (!v31)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, v12, v13, v14, "[TSCHChunkManager textureDeliveryStylesLocalized:animationFilter:]_block_invoke");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChunkManager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 470, 0, "invalid nil value for '%{public}s'", "deliveryStyleString");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    v15 = 0;
  }

  objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v15, v12, v13, v14, v15);
}

void sub_2762FEBE8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47A48;
  qword_280A47A48 = v11;

  if (!qword_280A47A48)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSharegroupMTLDeviceToSharegroupMap sharedInstance]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 100, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2762FEEB0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x277CCAB00], a2, a3, a4, a5);
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
}

void sub_2762FF304(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47A58;
  qword_280A47A58 = v11;

  if (!qword_280A47A58)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSharegroupPool sharedInstance]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 190, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

uint64_t sub_2762FF6BC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_p_conditionLockedWaitForBackgroundThreadsWithTimeout_(*(a1 + 32), a2, 0.0, a4, a5);
  objc_msgSend_makeObjectsPerformSelector_(*(*(a1 + 32) + 32), v6, v7, v8, v9, sel_nonThreadOwnedFlushCache);
  objc_msgSend_p_removeSharegroupsFromFlushingManager(*(a1 + 32), v10, v11, v12, v13);
  *(*(a1 + 32) + 16) -= objc_msgSend_count(*(*(a1 + 32) + 32), v14, v15, v16, v17);
  result = objc_msgSend_removeAllObjects(*(*(a1 + 32) + 32), v18, v19, v20, v21);
  v27 = *(a1 + 32);
  if (*(v27 + 16))
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCH3DSharegroupPool applicationWillResignActive]_block_invoke");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 220, 0, "no sharegroups should be alive when we return from applicationWillResignActive");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    v27 = *(a1 + 32);
  }

  *(v27 + 64) = 0;
  return result;
}

void sub_2762FFC28(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_p_flushSharegroupsIfPossible(*(a1 + 32), a2, a3, a4, a5);
  v14 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v6, v7, v8, v9);
  objc_msgSend_addObject_(v14, v10, v11, v12, v13, *(a1 + 32));
}

uint64_t sub_2762FFF24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2762FFF3C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if ((objc_msgSend_p_applicationStateAllowsOpenGLObjectCreation(*(a1 + 32), a2, a3, a4, a5) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DSharegroupPool obtainSharegroup]_block_invoke");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 309, 0, "We should not ask for new sharegroups after OpenGL rendering has been disabled");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_p_obtainSharegroupFromSharegroups(*(a1 + 32), v6, v7, v8, v9);
  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (*(*(a1 + 32) + 16) >= *(*(a1 + 32) + 8) || (v32 = *(a1 + 40), objc_msgSend_sharegroupPool(TSCH3DSharegroupToken, v28, v29, v30, v31), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_uniqueSharegroupWithOwningThread_token_(TSCH3DGPUSharegroup, v34, v35, v36, v37, v32, v33), v38 = objc_claimAutoreleasedReturnValue(), v39 = *(*(a1 + 48) + 8), v40 = *(v39 + 40), *(v39 + 40) = v38, v40, v33, ++*(*(a1 + 32) + 16), !*(*(*(a1 + 48) + 8) + 40)))
    {
      do
      {
        v41 = *(*(a1 + 32) + 40);
        v42 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v28, 4.0, v30, v31);
        LOBYTE(v41) = objc_msgSend_waitUntilDate_(v41, v43, v44, v45, v46, v42);

        v51 = objc_msgSend_p_obtainSharegroupFromSharegroups(*(a1 + 32), v47, v48, v49, v50);
        v52 = *(*(a1 + 48) + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = v51;

        v54 = *(*(*(a1 + 48) + 8) + 40);
        if (!((v54 != 0) | v41 & 1))
        {
          v55 = MEMORY[0x277D81150];
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "[TSCH3DSharegroupPool obtainSharegroup]_block_invoke");
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v62, v63, v64, v65, v56, v61, 322, 0, "Timed out while waiting for a sharegroup, creating a new one");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
          v70 = *(a1 + 40);
          v75 = objc_msgSend_sharegroupPool(TSCH3DSharegroupToken, v71, v72, v73, v74);
          v80 = objc_msgSend_uniqueSharegroupWithOwningThread_token_(TSCH3DGPUSharegroup, v76, v77, v78, v79, v70, v75);
          v81 = *(*(a1 + 48) + 8);
          v82 = *(v81 + 40);
          *(v81 + 40) = v80;

          ++*(*(a1 + 32) + 16);
          v54 = *(*(*(a1 + 48) + 8) + 40);
        }
      }

      while (!v54);
    }
  }

  v83 = *(*(a1 + 32) + 56);

  return objc_msgSend_invalidateCondition(v83, v28, v29, v30, v31);
}

uint64_t sub_276300324(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (objc_msgSend_count(*(*(a1 + 32) + 32), a2, a3, a4, a5) > 1)
  {
    objc_msgSend_nonThreadOwnedFlushCache(*(a1 + 40), v6, v7, v8, v9);
    --*(*(a1 + 32) + 16);
  }

  else
  {
    objc_msgSend_addObject_(*(*(a1 + 32) + 32), v6, v7, v8, v9, *(a1 + 40));
    objc_msgSend_broadcast(*(*(a1 + 32) + 40), v10, v11, v12, v13);
  }

  objc_msgSend_invalidateCondition(*(*(a1 + 32) + 56), v14, v15, v16, v17);
  v18 = *(a1 + 32);
  v19 = *(v18 + 16);
  result = objc_msgSend_count(*(v18 + 32), v20, v21, v22, v23);
  if (v19 == result)
  {
    objc_msgSend_setCondition_(*(*(a1 + 32) + 56), v25, v26, v27, v28, 1);
    v33 = *(*(a1 + 32) + 56);

    return objc_msgSend_scheduleCheckCondition(v33, v29, v30, v31, v32);
  }

  return result;
}

uint64_t sub_2763004CC(uint64_t result, const char *a2, double a3, double a4, double a5)
{
  v6 = *(result + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v7 + 1;
  if (!v7)
  {
    v8 = result;
    objc_msgSend_p_conditionLockedWaitForBackgroundThreadsWithTimeout_(*(result + 32), a2, 2.0, a4, a5);
    v13 = *(*(v8 + 32) + 32);

    return objc_msgSend_makeObjectsPerformSelector_(v13, v9, v10, v11, v12, sel_nonThreadOwnedFlushCache);
  }

  return result;
}

uint64_t sub_276300618(uint64_t result, const char *a2, double a3, double a4, double a5)
{
  if ((--*(*(result + 32) + 24) & 0x8000000000000000) != 0)
  {
    v5 = result;
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "[TSCH3DSharegroupPool enable]_block_invoke");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 370, 0, "enable/disable mismatch with bad disable level %ld", *(*(v5 + 32) + 24));

    v21 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
  }

  return result;
}

void sub_276300908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276300920(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2763009AC;
  v8[3] = &unk_27A6B9890;
  v8[4] = v6;
  result = objc_msgSend_p_canUseOpenGLWithCheck_(v6, a2, COERCE_DOUBLE(3221225472), a4, a5, v8);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_276300A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276300A70(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276300AFC;
  v8[3] = &unk_27A6B9890;
  v8[4] = v6;
  result = objc_msgSend_p_canUseOpenGLWithCheck_(v6, a2, COERCE_DOUBLE(3221225472), a4, a5, v8);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_276300BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276300BC0(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276300C4C;
  v8[3] = &unk_27A6B9890;
  v8[4] = v6;
  result = objc_msgSend_p_canUseOpenGLWithCheck_(v6, a2, COERCE_DOUBLE(3221225472), a4, a5, v8);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_276300CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276300D10(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276300D9C;
  v8[3] = &unk_27A6B9890;
  v8[4] = v6;
  result = objc_msgSend_p_canUseOpenGLWithCheck_(v6, a2, COERCE_DOUBLE(3221225472), a4, a5, v8);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_276300F54(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (objc_msgSend_condition(*(*(a1 + 32) + 56), a2, a3, a4, a5) && objc_msgSend_p_applicationStateAllowsObjectFlushing(*(a1 + 32), v6, v7, v8, v9))
  {
    if (byte_280A46430 == 1)
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = NSStringFromSelector(*(a1 + 40));
      NSLog(&cfstr_P_1.isa, v14, v15, v16);
    }

    objc_msgSend_makeObjectsPerformSelector_(*(*(a1 + 32) + 32), v10, v11, v12, v13, sel_nonThreadOwnedFlushCache);
    v21 = objc_msgSend_sharegroupPool(TSCH3DSharegroupToken, v17, v18, v19, v20);
    hasInterestForSharegroupToken = objc_msgSend_hasInterestForSharegroupToken_(TSCH3DGPUSharegroup, v22, v23, v24, v25, v21);

    if ((hasInterestForSharegroupToken & 1) == 0)
    {
      v31 = *(a1 + 32);

      objc_msgSend_p_flushSharegroupsIfPossible(v31, v27, v28, v29, v30);
    }
  }
}

void sub_2763015EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DSharegroup;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_276301870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_276301950(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_276301AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_276301C0C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2763023B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_276302B9C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_flushAllResourcesForContext_(*(*(a1 + 32) + 16), a2, a3, a4, a5, *(*(a1 + 32) + 64));
  objc_msgSend_removeAllObjects(*(*(a1 + 32) + 32), v7, v8, v9, v10);
  v19 = objc_msgSend_delegate(*(a1 + 32), v11, v12, v13, v14);
  objc_msgSend_didFlushCache(v19, v15, v16, v17, v18);
}

void sub_276303458(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v26 = objc_msgSend_flushResources_context_(*(*(a1 + 32) + 16), a2, a3, a4, a5, *(*(a1 + 32) + 32), *(*(a1 + 32) + 64));
  if (byte_280A46430 == 1)
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 32);
    v12 = NSStringFromSelector(*(a1 + 40));
    v17 = objc_msgSend_count(*(*(a1 + 32) + 32), v13, v14, v15, v16);
    v22 = objc_msgSend_count(v26, v18, v19, v20, v21);
    NSLog(&cfstr_PPreLuPostLu.isa, v10, v11, v12, v17, v22);
  }

  v23 = objc_msgSend_mutableCopy(v26, v6, v7, v8, v9);
  v24 = *(a1 + 32);
  v25 = *(v24 + 32);
  *(v24 + 32) = v23;
}

void sub_276303730(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v28 = objc_msgSend_flushResources_context_(*(*(a1 + 32) + 16), a2, a3, a4, a5, *(a1 + 40), *(*(a1 + 32) + 64));
  if (objc_msgSend_count(v28, v5, v6, v7, v8))
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DGPUSharegroup p_forceFlushResourceSet:]_block_invoke");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 914, 0, "Unable to force flush all resources in set. Are they still protected?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }
}

void sub_276303F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSCH3DCachedSharegroupToken;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

void sub_276304048(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2763041A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_276304380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2763044CC(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47A68;
  qword_280A47A68 = v11;

  if (!qword_280A47A68)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DInteractiveCanvasSharegroupToken token]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 1085, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_276304784(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47A78;
  qword_280A47A78 = v11;

  if (!qword_280A47A78)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DExportSharegroupToken token]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 1105, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_276304A3C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47A88;
  qword_280A47A88 = v11;

  if (!qword_280A47A88)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCH3DSharegroupPoolSharegroupToken token]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSharegroup.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 1125, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_276304FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_276305418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSCH3DSharegroupMapSharegroupToken;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2763056E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_276306464(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id sub_276308020(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      goto LABEL_6;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_msgSend_copyWithContext_(v3, v5, v6, v7, v8, *(a1 + 32));
LABEL_6:
    v9 = v4;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  objc_opt_class();
  v11 = TSUClassAndProtocolCast();
  v9 = objc_msgSend_copy(v11, v12, v13, v14, v15, &unk_28856FD90);

  if (!v9)
  {
LABEL_7:
    v9 = v3;
  }

LABEL_8:

  return v9;
}

void sub_276308A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void sub_276308B68(uint64_t a1, const char *a2, _BYTE *a3, double a4, double a5, double a6)
{
  v9 = objc_msgSend_intValueForProperty_(*(a1 + 32), a2, a4, a5, a6, a2);
  v14 = objc_msgSend_intValueForProperty_(*(a1 + 40), v10, v11, v12, v13, a2);
  v19 = v14;
  if (v9 == 0x80000000 || v14 == 0x80000000)
  {
    if (v9 != 0x80000000 && v14 == 0x80000000)
    {
      v22 = *(a1 + 64);
      if (v22)
      {
        v23 = MEMORY[0x277CCACA8];
        v184 = String();
        v28 = objc_msgSend_stringWithFormat_(v23, v24, v25, v26, v27, @"Iterating styles: Checking Paragraph styles. Source defines a value for ParagraphStyleIndex property %@ and other does not.", v184);
        objc_msgSend_addObject_(v22, v29, v30, v31, v32, v28);
      }

      else
      {
        *a3 = 1;
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

  else
  {
    v185 = objc_msgSend_paragraphStyles(*(a1 + 48), v15, v16, v17, v18);
    v37 = objc_msgSend_count(v185, v33, v34, v35, v36);
    v38 = v9;

    if (v37 <= v9)
    {
      v43 = MEMORY[0x277D81150];
      v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartStylePreset isEquivalentToPreset:outReasons:]_block_invoke");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v50, v51, v52, v186, v48, 668, 0, "Index out of range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
    }

    v187 = objc_msgSend_paragraphStyles(*(a1 + 56), v39, v40, v41, v42);
    v61 = objc_msgSend_count(v187, v57, v58, v59, v60);

    if (v61 <= v19)
    {
      v66 = MEMORY[0x277D81150];
      v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "[TSCHChartStylePreset isEquivalentToPreset:outReasons:]_block_invoke");
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v72, v73, v74, v75, v188, v71, 669, 0, "Index out of range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
    }

    v80 = objc_msgSend_paragraphStyles(*(a1 + 48), v62, v63, v64, v65);
    v86 = objc_msgSend_count(v80, v81, v82, v83, v84);
    v90 = *(a1 + 48);
    if (v86 <= v38)
    {
      v91 = objc_msgSend_paragraphStyles(v90, v85, v87, v88, v89);
      objc_msgSend_objectAtIndexedSubscript_(v91, v96, v97, v98, v99, 0);
    }

    else
    {
      v91 = objc_msgSend_paragraphStyles(v90, v85, v87, v88, v89);
      objc_msgSend_objectAtIndexedSubscript_(v91, v92, v93, v94, v95, v38);
    }
    v189 = ;

    v104 = objc_msgSend_paragraphStyles(*(a1 + 56), v100, v101, v102, v103);
    v110 = objc_msgSend_count(v104, v105, v106, v107, v108);
    v114 = *(a1 + 56);
    if (v110 <= v19)
    {
      v115 = objc_msgSend_paragraphStyles(v114, v109, v111, v112, v113);
      objc_msgSend_objectAtIndexedSubscript_(v115, v120, v121, v122, v123, 0);
    }

    else
    {
      v115 = objc_msgSend_paragraphStyles(v114, v109, v111, v112, v113);
      objc_msgSend_objectAtIndexedSubscript_(v115, v116, v117, v118, v119, v19);
    }
    v124 = ;

    objc_opt_class();
    v125 = TSUDynamicCast();

    if (!v125)
    {
      v130 = MEMORY[0x277D81150];
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, v127, v128, v129, "[TSCHChartStylePreset isEquivalentToPreset:outReasons:]_block_invoke");
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v133, v134, v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v137, v138, v139, v140, v131, v136, 674, 0, "invalid nil value for '%{public}s'", "TSUCastAsClass(TSSStyle, selfParaStyle)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v141, v142, v143, v144);
    }

    objc_opt_class();
    v145 = TSUDynamicCast();

    if (!v145)
    {
      v150 = MEMORY[0x277D81150];
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, v147, v148, v149, "[TSCHChartStylePreset isEquivalentToPreset:outReasons:]_block_invoke");
      v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStylePreset.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v157, v158, v159, v160, v151, v156, 675, 0, "invalid nil value for '%{public}s'", "TSUCastAsClass(TSSStyle, otherParaStyle)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162, v163, v164);
    }

    v166 = objc_msgSend_propertyMap(v189, v146, v147, v148, v149);
    if (!v166)
    {
      v166 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v165, v167, v168, v169);
    }

    v171 = objc_msgSend_propertyMap(v124, v165, v167, v168, v169);
    if (!v171)
    {
      v171 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v170, v172, v173, v174);
    }

    v175 = objc_msgSend_allProperties(v166, v170, v172, v173, v174);
    objc_msgSend_filterWithProperties_(v171, v176, v177, v178, v179, v175);

    if ((objc_msgSend_isEqual_(v166, v180, v181, v182, v183, v171) & 1) == 0)
    {
      if (!*(a1 + 64))
      {
        *a3 = 1;
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }
}

void sub_276309AEC(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 112), a2);
  v9 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80EC8], v5, v6, v7, v8);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = *(*(a1 + 32) + 112);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v50, v54, 16);
  if (v16)
  {
    v20 = *v51;
    do
    {
      v21 = 0;
      do
      {
        if (*v51 != v20)
        {
          objc_enumerationMutation(v10);
        }

        v22 = *(*(&v50 + 1) + 8 * v21);
        v23 = objc_msgSend_copy(v9, v15, v17, v18, v19, v50);
        v28 = objc_msgSend_propertyMap(v22, v24, v25, v26, v27);
        v33 = objc_msgSend_allProperties(v28, v29, v30, v31, v32);
        objc_msgSend_removeValuesForProperties_(v23, v34, v35, v36, v37, v33);

        if (objc_msgSend_count(v23, v38, v39, v40, v41))
        {
          objc_msgSend_willModifyForUpgradeWithOptions_(v22, v42, v43, v44, v45, 0);
          objc_msgSend_setValuesForProperties_(v22, v46, v47, v48, v49, v23);
        }

        ++v21;
      }

      while (v16 != v21);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, v17, v18, v19, &v50, v54, 16);
    }

    while (v16);
  }
}

void sub_276309CEC(uint64_t a1, void *a2)
{
  v10 = a2;
  v7 = objc_msgSend_firstObject(v10, v3, v4, v5, v6);
  v8 = *(a1 + 32);
  v9 = *(v8 + 120);
  *(v8 + 120) = v7;
}

void *sub_27630B864(void *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    objc_msgSend_getUUIDBytes_(v3, v4, v5, v6, v7, a1);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return a1;
}

uint64_t sub_27630B8BC(uint64_t a1)
{
  objc_opt_class();

  return MEMORY[0x2821F9670](a1, sel_registerPresetSourceClass_, v2, v3, v4);
}

id sub_27630C558(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  objc_opt_class();
  v6 = objc_getAssociatedObject(v5, qword_280A45E50);
  v7 = TSUCheckedDynamicCast();

  if (!v7)
  {
    v7 = objc_alloc_init(TSCHTextCacheMap);
    objc_setAssociatedObject(v5, qword_280A45E50, v7, 1);
  }

  v12 = objc_msgSend_textCacheForStyleProvidingSource_(v7, v8, v9, v10, v11, v4);

  objc_sync_exit(v5);

  return v12;
}

void sub_27630C644(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_27630C688(void *a1)
{
  object = a1;
  objc_sync_enter(object);
  objc_opt_class();
  v1 = objc_getAssociatedObject(object, qword_280A45E50);
  v2 = TSUCheckedDynamicCast();

  objc_msgSend_clear(v2, v3, v4, v5, v6);
  objc_sync_exit(object);
}

void sub_27630C720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_27630CAE8(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = objc_opt_class();
  v7 = objc_msgSend_initWithTSWPTextClass_(v1, v3, v4, v5, v6, v2);
  v8 = qword_280A47A98;
  qword_280A47A98 = v7;
}

void sub_27630CBE4(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = objc_opt_class();
  v7 = objc_msgSend_initWithTSWPTextClass_(v1, v3, v4, v5, v6, v2);
  v8 = qword_280A47AA8;
  qword_280A47AA8 = v7;
}

void sub_27630D29C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_27630D740(void *a1, void *a2, int a3, void *a4, int a5, double a6)
{
  v68 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a4;
  if (!v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "NSString * _Nonnull p_createCacheKeyForTextWithParagraphStyle(NSString * _Nullable __strong, TSWPParagraphStyle * _Nonnull __strong, BOOL, CGFloat, TSCHTextLayoutProperties * _Nonnull __strong, BOOL)");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 62, 0, "invalid nil value for '%{public}s'", "layoutProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
    v13 = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v33, a6, v34, v35);
  }

  v36 = v13;
  v37 = objc_msgSend_textFlags(v13, v14, v15, v16, v17);
  objc_msgSend_minSize(v36, v38, v39, v40, v41);
  v43 = v42;
  v45 = v44;
  objc_msgSend_maxSize(v36, v46, v42, v44, v47);
  v50 = 83;
  if (a5)
  {
    v50 = 73;
  }

  v51 = 78;
  if (a3)
  {
    v51 = 89;
  }

  snprintf(__str, 0x40uLL, "%c%c%p%.2f%d%.2f%.2f%.2f%.2f", v51, v50, v12, *&a6, v37, *&v43, *&v45, v48, v49);
  v52 = objc_alloc(MEMORY[0x277CCAB68]);
  v57 = objc_msgSend_initWithUTF8String_(v52, v53, v54, v55, v56, __str);
  if (objc_msgSend_length(v11, v58, v59, v60, v61))
  {
    objc_msgSend_insertString_atIndex_(v57, v62, v63, v64, v65, v11, 0);
  }

  return v57;
}

BOOL sub_2763109D8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = TSUCheckedDynamicCast();
  v8 = objc_msgSend_styleSwapSupporting(v3, v4, v5, v6, v7);
  v9 = v8 == 0;

  return v9;
}

id sub_276310BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = TSUCheckedDynamicCast();
  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "+[TSCHStyleSwapUndoTuple convertedSwapTuplesForSwapTuples:chartInfo:]_block_invoke");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 62, 0, "invalid nil value for '%{public}s'", "swapTuple");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = objc_msgSend_convertedSwapTupleForChartInfo_(v5, v4, v6, v7, v8, *(a1 + 32));

  return v24;
}

uint64_t sub_27631154C(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (v3 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v6, v7, v8, v5);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

void sub_276311D54(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_27631285C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v10, v11, v12, v13, a2, v9, v7, v8);
}

void sub_276312CA0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = a1;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, v8, v9, v10, &v49, v53, 16);
  if (v11)
  {
    v12 = *v50;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v15 = TSUCheckedDynamicCast();
        if (v15)
        {
          v19 = a3[2];
          if (!v19)
          {
            goto LABEL_13;
          }

          v20 = *(a3 + 2);
          v21 = *v19;
          if (v20 < *v19)
          {
            *(a3 + 2) = v20 + 1;
            objc_msgSend_saveToArchive_archiver_(v15, v14, v16, v17, v18, *&v19[2 * v20 + 2], v6);
            goto LABEL_15;
          }

          if (v21 == *(a3 + 3))
          {
LABEL_13:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3);
            v19 = a3[2];
            v21 = *v19;
          }

          *v19 = v21 + 1;
          v37 = sub_276474FF8(*a3);
          v38 = *(a3 + 2);
          v39 = a3[2] + 8 * v38;
          *(a3 + 2) = v38 + 1;
          *(v39 + 8) = v37;
          objc_msgSend_saveToArchive_archiver_(v15, v40, v41, v42, v43, v37, v6);
        }

        else
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[NSArray(TSCHArchivingAdditions) tsch_saveToSwapTupleArray:archiver:]");
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 453, 0, "invalid nil value for '%{public}s'", "swapTuple");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
        }

LABEL_15:
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, v45, v46, v47, &v49, v53, 16);
    }

    while (v11);
  }
}

uint64_t sub_276312F30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = a4;
  v5 = *(a3 + 8);
  v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v6, v7, v8, v9, v5);
  if (v5 >= 1)
  {
    v15 = 8;
    v16 = 0x277D81000uLL;
    do
    {
      v17 = [TSCHStyleSwapUndoTuple alloc];
      v23 = objc_msgSend_initWithArchive_unarchiver_(v17, v18, v19, v20, v21, *(*(a3 + 16) + v15), v46);
      if (!v23)
      {
        v27 = *(v16 + 336);
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[NSArray(TSCHArchivingAdditions) tsch_initWithSwapTupleArray:unarchiver:]");
        v29 = v16;
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v35, v36, v37, v38, v28, v34, 465, 0, "invalid nil value for '%{public}s'", "tuple");

        v16 = v29;
        objc_msgSend_logBacktraceThrottled(*(v29 + 336), v39, v40, v41, v42);
      }

      objc_msgSend_tsu_addNonNilObject_(v11, v22, v24, v25, v26, v23);

      v15 += 8;
      --v5;
    }

    while (v5);
  }

  v43 = objc_msgSend_initWithArray_(a1, v10, v12, v13, v14, v11);

  return v43;
}

void sub_2763130F8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = a1;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, v8, v9, v10, &v49, v53, 16);
  if (v11)
  {
    v12 = *v50;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v15 = TSUCheckedDynamicCast();
        if (v15)
        {
          v19 = a3[2];
          if (!v19)
          {
            goto LABEL_13;
          }

          v20 = *(a3 + 2);
          v21 = *v19;
          if (v20 < *v19)
          {
            *(a3 + 2) = v20 + 1;
            objc_msgSend_tsch_saveToSwapTuples_archiver_(v15, v14, v16, v17, v18, *&v19[2 * v20 + 2], v6);
            goto LABEL_15;
          }

          if (v21 == *(a3 + 3))
          {
LABEL_13:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3);
            v19 = a3[2];
            v21 = *v19;
          }

          *v19 = v21 + 1;
          v37 = sub_276475084(*a3);
          v38 = *(a3 + 2);
          v39 = a3[2] + 8 * v38;
          *(a3 + 2) = v38 + 1;
          *(v39 + 8) = v37;
          objc_msgSend_tsch_saveToSwapTuples_archiver_(v15, v40, v41, v42, v43, v37, v6);
        }

        else
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "[NSArray(TSCHArchivingAdditions) tsch_saveToSwapTuplesArray:archiver:]");
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 482, 0, "invalid nil value for '%{public}s'", "swapTuples");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
        }

LABEL_15:
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, v45, v46, v47, &v49, v53, 16);
    }

    while (v11);
  }
}

uint64_t sub_276313388(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a3 + 8);
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_initWithCapacity_(v8, v9, v10, v11, v12, v7);
  if (v7 >= 1)
  {
    v18 = 8;
    do
    {
      v19 = objc_alloc(objc_opt_class());
      v24 = objc_msgSend_tsch_initWithSwapTuples_unarchiver_(v19, v20, v21, v22, v23, *(*(a3 + 16) + v18), v6);
      objc_msgSend_addObject_(v14, v25, v26, v27, v28, v24);

      v18 += 8;
      --v7;
    }

    while (v7);
  }

  v29 = objc_msgSend_initWithArray_(a1, v13, v15, v16, v17, v14);

  return v29;
}

uint64_t sub_276313484(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  v5 = TSUDynamicCast();
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v5)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "NSInteger TSCHTupleSortForApplyComparator(__strong id _Nullable, __strong id _Nullable, void * _Nullable)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 520, 0, "invalid nil value for '%{public}s'", "tupleA");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  if (!v7)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "NSInteger TSCHTupleSortForApplyComparator(__strong id _Nullable, __strong id _Nullable, void * _Nullable)");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 521, 0, "invalid nil value for '%{public}s'", "tupleB");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = objc_msgSend_swapType(v5, v6, v8, v9, v10);
  v46 = v41;
  if (v41 == 14)
  {
    v46 = 13;
  }

  else if (v41 == 13)
  {
    v46 = 14;
  }

  v47 = objc_msgSend_swapType(v7, v42, v43, v44, v45);
  if (v47 == 14)
  {
    v47 = 13;
  }

  else if (v47 == 13)
  {
    v47 = 14;
  }

  if (v46 < v47)
  {
    v52 = -1;
  }

  else
  {
    v52 = v46 > v47;
  }

  if (!v52)
  {
    v53 = objc_msgSend_afterValue(v5, v48, v49, v50, v51);
    v58 = objc_msgSend_afterValue(v7, v54, v55, v56, v57);
    v59 = v53 == 0;
    v60 = v58 != 0;
    v61 = v58 || v53 == 0;
    v62 = !v61;
    v52 = v59 && v60 ? -1 : v62;

    if ((v59 ^ v60))
    {
      v67 = objc_msgSend_beforeValue(v7, v63, v64, v65, v66);
      v72 = objc_msgSend_beforeValue(v5, v68, v69, v70, v71);
      v73 = v67 == 0;
      v74 = v72 != 0;
      v75 = v72 || v67 == 0;
      v76 = !v75;
      v52 = v73 && v74 ? -1 : v76;

      if ((v73 ^ v74))
      {
        v82 = objc_msgSend_beforeValue(v5, v77, v78, v79, v80);
        if (!v82 || (objc_msgSend_afterValue(v5, v81, v83, v84, v85), v86 = objc_claimAutoreleasedReturnValue(), v86, v82, !v86))
        {
          v87 = objc_msgSend_beforeValue(v5, v81, v83, v84, v85);
          if (v87)
          {

LABEL_35:
            v92 = objc_msgSend_index(v7, v81, v83, v84, v85);
            v97 = objc_msgSend_index(v5, v93, v94, v95, v96);
LABEL_38:
            v107 = v92 < v97;
            v108 = v92 > v97;
            if (v92 < v97)
            {
              v52 = -1;
            }

            else
            {
              v52 = v92 > v97;
            }

            if (v3 != v4 && !v107 && !v108)
            {
              v109 = MEMORY[0x277D81150];
              v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "NSInteger TSCHTupleSortForApplyComparator(__strong id _Nullable, __strong id _Nullable, void * _Nullable)");
              v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSwapUndoTuple.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v116, v117, v118, v119, v110, v115, 565, 0, "Invalid tuple array: Two tuples for the same type & index.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123);
              v52 = 0;
            }

            goto LABEL_45;
          }

          v102 = objc_msgSend_afterValue(v5, v88, v89, v90, v91);

          if (!v102)
          {
            goto LABEL_35;
          }
        }

        v92 = objc_msgSend_index(v5, v81, v83, v84, v85);
        v97 = objc_msgSend_index(v7, v103, v104, v105, v106);
        goto LABEL_38;
      }
    }
  }

LABEL_45:

  return v52;
}

void sub_276315020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_2763156F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  if (*(Message + 24) >= 1)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_276315874;
    v7[3] = &unk_27A6B7520;
    v7[4] = a1;
    sub_2763157C8(v5, Message + 16, &unk_288584450, v7);
  }
}

void sub_2763157C8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v14, v10, v11, v12, v13, a2, v9, v7, v8);
}

void sub_27631588C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = a4;
  TSCH::ChartPresetsArchive::default_instance(v15);
  v5 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v11 = objc_msgSend_presetsOfKind_(a1, v6, v7, v8, v9, *MEMORY[0x277D80B08]);
  if (v11)
  {
    objc_msgSend_setStrongReferenceArray_message_(v15, v10, v12, v13, v14, v11, v5 + 16);
  }
}

void sub_276315FFC(void *a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_removeZoomAnimation(a1, a2, a3, a4, a5);
  objc_msgSend_frame(a1, v9, v10, v11, v12);
  x = v149.origin.x;
  y = v149.origin.y;
  width = v149.size.width;
  height = v149.size.height;
  v17 = (a3 - CGRectGetMinX(v149)) / v149.size.width;
  v150.origin.x = x;
  v150.origin.y = y;
  v150.size.width = width;
  v150.size.height = height;
  v18 = a4 - CGRectGetMinY(v150);
  v19 = v18 / height;
  v147 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v20, v18, v21, v22, @"anchorPoint");
  v25 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v23, v17, v19, v24);
  objc_msgSend_setToValue_(v147, v26, v27, v28, v29, v25);
  objc_msgSend_setFromValue_(v147, v30, v31, v32, v33, v25);

  objc_msgSend_setDuration_(v147, v34, 1.0, v35, v36);
  objc_msgSend_anchorPoint(a1, v37, v38, v39, v40);
  TSUSubtractPoints();
  v42 = width * v41;
  v44 = height * v43;
  v47 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v45, v41, v43, v46, @"position");
  v50 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v48, v42, v44, v49);
  objc_msgSend_setToValue_(v47, v51, v52, v53, v54, v50);
  objc_msgSend_setFromValue_(v47, v55, v56, v57, v58, v50);

  objc_msgSend_setDuration_(v47, v59, 0.2, v60, v61);
  objc_msgSend_setAdditive_(v47, v62, v63, v64, v65, 1);
  v70 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v66, v67, v68, v69, @"transform.scale");
  objc_msgSend_setFromValue_(v70, v71, v72, v73, v74, &unk_28856ED80);
  objc_msgSend_setToValue_(v70, v75, v76, v77, v78, &unk_28856ED90);
  v79 = *MEMORY[0x277CDA7C0];
  v84 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v80, v81, v82, v83, *MEMORY[0x277CDA7C0]);
  objc_msgSend_setTimingFunction_(v70, v85, v86, v87, v88, v84);

  objc_msgSend_setDuration_(v70, v89, 0.2, v90, v91);
  v96 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v92, v93, v94, v95, @"opacity");
  objc_msgSend_setFromValue_(v96, v97, v98, v99, v100, &unk_28856ED80);
  objc_msgSend_setToValue_(v96, v101, v102, v103, v104, &unk_28856ED90);
  v109 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v105, v106, v107, v108, v79);
  objc_msgSend_setTimingFunction_(v96, v110, v111, v112, v113, v109);

  objc_msgSend_setDuration_(v96, v114, 0.2, v115, v116);
  v117 = objc_alloc_init(MEMORY[0x277CD9E00]);
  v122 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v118, v119, v120, v121, v147, v47, v70, v96, 0);
  objc_msgSend_setAnimations_(v117, v123, v124, v125, v126, v122);

  objc_msgSend_setDuration_(v117, v127, 0.2, v128, v129);
  v134 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v130, v131, v132, v133, *MEMORY[0x277CDA7C8]);
  objc_msgSend_setTimingFunction_(v117, v135, v136, v137, v138, v134);

  *&v139 = a5;
  objc_msgSend_setSpeed_(v117, v140, v139, v141, v142);
  objc_msgSend_addAnimation_forKey_(a1, v143, v144, v145, v146, v117, @"kTSCHZoomAnimationKey");
}

void sub_276316344(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v12 = a6;
  v13 = a5;
  objc_msgSend_removeCallbackAnimationWithName_(a1, v14, v15, v16, v17, v13);
  v50 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, v19, v20, v21, @"%@: %@", @"kTSCHCallbackAnimationKey", v13);

  v26 = objc_msgSend_animation(MEMORY[0x277CD9DF8], v22, v23, v24, v25);
  v27 = objc_alloc_init(TSCHCallbackAnimationDelegate);
  objc_msgSend_setTarget_(v27, v28, v29, v30, v31, v12);

  objc_msgSend_setSelector_(v27, v32, v33, v34, v35, a7);
  objc_msgSend_setDelegate_(v26, v36, v37, v38, v39, v27);
  objc_msgSend_setBeginTime_(v26, v40, a2, v41, v42);
  objc_msgSend_setDuration_(v26, v43, a3, v44, v45);
  objc_msgSend_addAnimation_forKey_(a1, v46, v47, v48, v49, v26, v50);
}

void sub_276316468(void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, a4, a5, a6, @"%@: %@", @"kTSCHCallbackAnimationKey", a3);
  objc_msgSend_removeAnimationForKey_(a1, v7, v8, v9, v10, v11);
}

uint64_t sub_2763164D8(void *a1, const char *a2, double a3, double a4, double a5)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objc_msgSend_transform(a1, a2, 0.0, a4, a5);
  *(&v16 + 1) = -1.0 / a3;
  v10[4] = v15;
  v10[5] = v16;
  v10[6] = v17;
  v10[7] = v18;
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  return objc_msgSend_setTransform_(a1, v7, *&v13, *&v14, v8, v10);
}

void sub_276316560(void *a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_removeCDEShieldInAnimation(a1, a2, a3, a4, a5);
  v38 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v7, v8, v9, v10, @"opacity");
  objc_msgSend_setFromValue_(v38, v11, v12, v13, v14, &unk_28856ED80);
  v19 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v15, v16, v17, v18, *MEMORY[0x277CDA7C8]);
  objc_msgSend_setTimingFunction_(v38, v20, v21, v22, v23, v19);

  objc_msgSend_setBeginTime_(v38, v24, a3 + 0.0, v25, v26);
  objc_msgSend_setDuration_(v38, v27, 0.375, v28, v29);
  objc_msgSend_setFillMode_(v38, v30, v31, v32, v33, *MEMORY[0x277CDA230]);
  objc_msgSend_addAnimation_forKey_(a1, v34, v35, v36, v37, v38, @"kTSCHCDEShieldInAnimationKey");
}

void sub_276316654(void *a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_removeCDEShieldOutAnimation(a1, a2, a3, a4, a5);
  v42 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v7, v8, v9, v10, @"opacity");
  objc_msgSend_setToValue_(v42, v11, v12, v13, v14, &unk_28856ED80);
  v19 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v15, v16, v17, v18, *MEMORY[0x277CDA7C8]);
  objc_msgSend_setTimingFunction_(v42, v20, v21, v22, v23, v19);

  objc_msgSend_setBeginTime_(v42, v24, a3 + 0.375, v25, v26);
  objc_msgSend_setDuration_(v42, v27, 0.375, v28, v29);
  objc_msgSend_setFillMode_(v42, v30, v31, v32, v33, *MEMORY[0x277CDA230]);
  objc_msgSend_setRemovedOnCompletion_(v42, v34, v35, v36, v37, 0);
  objc_msgSend_addAnimation_forKey_(a1, v38, v39, v40, v41, v42, @"kTSCHCDEShieldOutAnimationKey");
}

void sub_276316754(void *a1, const char *a2, int a3, double a4, double a5, double a6, double a7)
{
  objc_msgSend_removeCDEChartFlipAnimationToFinalPosition(a1, a2, a4, a5, a6);
  objc_msgSend_addPerspectiveProjectionWithDistance_(a1, v13, a7, v14, v15);
  v102 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v16, v17, v18, v19, @"transform.rotation.y");
  objc_msgSend_setFromValue_(v102, v20, v21, v22, v23, &unk_28856ED80);
  if (a3)
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, 1.57079633, 1.57079633, v25);
  }

  else
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, -1.57079633, 1.57079633, v25);
  }
  v26 = ;
  objc_msgSend_setToValue_(v102, v27, v28, v29, v30, v26);

  v31 = *MEMORY[0x277CDA7B0];
  v36 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v32, v33, v34, v35, *MEMORY[0x277CDA7B0]);
  objc_msgSend_setTimingFunction_(v102, v37, v38, v39, v40, v36);

  objc_msgSend_setBeginTime_(v102, v41, 0.0, v42, v43);
  objc_msgSend_setDuration_(v102, v44, 0.375, v45, v46);
  v51 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v47, v48, v49, v50, @"position");
  v54 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v52, a4, a5, v53);
  objc_msgSend_setToValue_(v51, v55, v56, v57, v58, v54);

  v63 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v59, v60, v61, v62, v31);
  objc_msgSend_setTimingFunction_(v51, v64, v65, v66, v67, v63);

  objc_msgSend_setBeginTime_(v51, v68, 0.0, v69, v70);
  objc_msgSend_setDuration_(v51, v71, 0.375, v72, v73);
  v74 = objc_alloc_init(MEMORY[0x277CD9E00]);
  v79 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v75, v76, v77, v78, v102, v51, 0);
  objc_msgSend_setAnimations_(v74, v80, v81, v82, v83, v79);

  objc_msgSend_setBeginTime_(v74, v84, a6, v85, v86);
  objc_msgSend_setDuration_(v74, v87, 0.375, v88, v89);
  objc_msgSend_setFillMode_(v74, v90, v91, v92, v93, *MEMORY[0x277CDA238]);
  objc_msgSend_setRemovedOnCompletion_(v74, v94, v95, v96, v97, 0);
  objc_msgSend_addAnimation_forKey_(a1, v98, v99, v100, v101, v74, @"kTSCHCDEChartFlipInAnimationKey");
}

void sub_2763169A0(void *a1, const char *a2, int a3, double a4, double a5, double a6, double a7)
{
  objc_msgSend_removeCDEChartFlipAnimationToFinalPosition(a1, a2, a4, a5, a6);
  objc_msgSend_removeCDEChartFlipAnimationFromPosition(a1, v13, v14, v15, v16);
  objc_msgSend_addPerspectiveProjectionWithDistance_(a1, v17, a7, v18, v19);
  v140 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v20, v21, v22, v23, @"opacity");
  objc_msgSend_setToValue_(v140, v24, v25, v26, v27, &unk_28856ED80);
  objc_msgSend_setFromValue_(v140, v28, v29, v30, v31, &unk_28856ED80);
  v36 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v32, v33, v34, v35, *MEMORY[0x277CDA7C8]);
  objc_msgSend_setTimingFunction_(v140, v37, v38, v39, v40, v36);

  objc_msgSend_setBeginTime_(v140, v41, a6, v42, v43);
  objc_msgSend_setDuration_(v140, v44, 0.375, v45, v46);
  objc_msgSend_addAnimation_forKey_(a1, v47, v48, v49, v50, v140, @"pre opacity");
  v55 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v51, v52, v53, v54, @"opacity");
  objc_msgSend_setToValue_(v55, v56, v57, v58, v59, &unk_28856ED90);
  objc_msgSend_setFromValue_(v55, v60, v61, v62, v63, &unk_28856ED90);
  objc_msgSend_setDuration_(v55, v64, 0.375, v65, v66);
  v72 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v67, v68, v69, v70, @"transform.rotation.y");
  if (a3)
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, 1.57079633, 1.57079633, v73);
  }

  else
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v71, -1.57079633, 1.57079633, v73);
  }
  v74 = ;
  objc_msgSend_setFromValue_(v72, v75, v76, v77, v78, v74);

  objc_msgSend_setToValue_(v72, v79, v80, v81, v82, &unk_28856ED80);
  v83 = *MEMORY[0x277CDA7C0];
  v88 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v84, v85, v86, v87, *MEMORY[0x277CDA7C0]);
  objc_msgSend_setTimingFunction_(v72, v89, v90, v91, v92, v88);

  objc_msgSend_setDuration_(v72, v93, 0.375, v94, v95);
  v100 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v96, v97, v98, v99, @"position");
  v103 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v101, a4, a5, v102);
  objc_msgSend_setFromValue_(v100, v104, v105, v106, v107, v103);

  v112 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v108, v109, v110, v111, v83);
  objc_msgSend_setTimingFunction_(v100, v113, v114, v115, v116, v112);

  objc_msgSend_setDuration_(v100, v117, 0.375, v118, v119);
  v120 = objc_alloc_init(MEMORY[0x277CD9E00]);
  v125 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v121, v122, v123, v124, v55, v72, v100, 0);
  objc_msgSend_setAnimations_(v120, v126, v127, v128, v129, v125);

  objc_msgSend_setBeginTime_(v120, v130, a6 + 0.375, v131, v132);
  objc_msgSend_setDuration_(v120, v133, 0.375, v134, v135);
  objc_msgSend_addAnimation_forKey_(a1, v136, v137, v138, v139, v120, @"kTSCHCDEChartFlipOutAnimationKey");
}

uint64_t sub_276316C94(void *a1, const char *a2, double a3, double a4, double a5)
{
  objc_msgSend_removeAnimationForKey_(a1, a2, a3, a4, a5, @"pre opacity");

  return objc_msgSend_removeAnimationForKey_(a1, v6, v7, v8, v9, @"kTSCHCDEChartFlipOutAnimationKey");
}

void sub_276316CDC(void *a1, const char *a2, int a3, double a4, double a5, double a6, double a7)
{
  objc_msgSend_removeCDEEditorFlipInAnimation(a1, a2, a4, a5, a6);
  objc_msgSend_addPerspectiveProjectionWithDistance_(a1, v13, a7, v14, v15);
  v92 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v16, v17, v18, v19, @"transform.rotation.y");
  v20 = *MEMORY[0x277CDA7C0];
  v25 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v21, v22, v23, v24, *MEMORY[0x277CDA7C0]);
  objc_msgSend_setTimingFunction_(v92, v26, v27, v28, v29, v25);

  if (a3)
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v30, -1.57079633, -1.57079633, v31);
  }

  else
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v30, 1.57079633, -1.57079633, v31);
  }
  v32 = ;
  objc_msgSend_setFromValue_(v92, v33, v34, v35, v36, v32);

  objc_msgSend_setToValue_(v92, v37, v38, v39, v40, &unk_28856E7F8);
  objc_msgSend_setDuration_(v92, v41, 0.375, v42, v43);
  v48 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v44, v45, v46, v47, @"position");
  v51 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v49, a4, a5, v50);
  objc_msgSend_setFromValue_(v48, v52, v53, v54, v55, v51);

  v60 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v56, v57, v58, v59, v20);
  objc_msgSend_setTimingFunction_(v48, v61, v62, v63, v64, v60);

  objc_msgSend_setDuration_(v48, v65, 0.375, v66, v67);
  v68 = objc_alloc_init(MEMORY[0x277CD9E00]);
  v73 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v69, v70, v71, v72, v92, v48, 0);
  objc_msgSend_setAnimations_(v68, v74, v75, v76, v77, v73);

  objc_msgSend_setBeginTime_(v68, v78, a6 + 0.375, v79, v80);
  objc_msgSend_setDuration_(v68, v81, 0.375, v82, v83);
  objc_msgSend_setFillMode_(v68, v84, v85, v86, v87, *MEMORY[0x277CDA228]);
  objc_msgSend_addAnimation_forKey_(a1, v88, v89, v90, v91, v68, @"kTSCHCDEEditorFlipInAnimationKey");
}

void sub_276316F0C(void *a1, const char *a2, int a3, double a4, double a5, double a6, double a7)
{
  objc_msgSend_removeCDEEditorFlipOutAnimation(a1, a2, a4, a5, a6);
  objc_msgSend_addPerspectiveProjectionWithDistance_(a1, v13, a7, v14, v15);
  v108 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v16, v17, v18, v19, @"opacity");
  objc_msgSend_setToValue_(v108, v20, v21, v22, v23, &unk_28856ED90);
  objc_msgSend_setFromValue_(v108, v24, v25, v26, v27, &unk_28856ED90);
  objc_msgSend_setDuration_(v108, v28, 0.375, v29, v30);
  v35 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v31, v32, v33, v34, @"transform.rotation.y");
  objc_msgSend_setFromValue_(v35, v36, v37, v38, v39, &unk_28856ED80);
  if (a3)
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v40, -1.57079633, -1.57079633, v41);
  }

  else
  {
    objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v40, 1.57079633, -1.57079633, v41);
  }
  v42 = ;
  objc_msgSend_setToValue_(v35, v43, v44, v45, v46, v42);

  v47 = *MEMORY[0x277CDA7B0];
  v52 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v48, v49, v50, v51, *MEMORY[0x277CDA7B0]);
  objc_msgSend_setTimingFunction_(v35, v53, v54, v55, v56, v52);

  objc_msgSend_setDuration_(v35, v57, 0.375, v58, v59);
  v64 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v60, v61, v62, v63, @"position");
  v67 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v65, a4, a5, v66);
  objc_msgSend_setToValue_(v64, v68, v69, v70, v71, v67);

  v76 = objc_msgSend_functionWithName_(MEMORY[0x277CD9EF8], v72, v73, v74, v75, v47);
  objc_msgSend_setTimingFunction_(v64, v77, v78, v79, v80, v76);

  objc_msgSend_setDuration_(v64, v81, 0.375, v82, v83);
  v84 = objc_alloc_init(MEMORY[0x277CD9E00]);
  v89 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v85, v86, v87, v88, v108, v35, v64, 0);
  objc_msgSend_setAnimations_(v84, v90, v91, v92, v93, v89);

  objc_msgSend_setBeginTime_(v84, v94, a6, v95, v96);
  objc_msgSend_setDuration_(v84, v97, 0.375, v98, v99);
  objc_msgSend_setFillMode_(v84, v100, v101, v102, v103, *MEMORY[0x277CDA228]);
  objc_msgSend_addAnimation_forKey_(a1, v104, v105, v106, v107, v84, @"kTSCHCDEEditorFlipOutAnimationKey");
}

void sub_27631AEFC(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v23 = *MEMORY[0x277D85DE8];
  MinX = CGRectGetMinX(*&a2);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  points.x = MinX;
  points.y = CGRectGetMidY(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v17 = MaxX;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v19 = MidX;
  MinY = CGRectGetMinY(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  v13 = CGRectGetMidX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  v21 = v13;
  MaxY = CGRectGetMaxY(v30);
  CGContextSaveGState(a1);
  sub_27628CBE8(a1, &points, 4uLL, 2u, 2, 2.0, v14, v15);
  CGContextSetLineCap(a1, kCGLineCapSquare);
  CGContextSetLineJoin(a1, kCGLineJoinMiter);
  CGContextSetLineWidth(a1, 2.0);
  CGContextStrokeLineSegments(a1, &points, 4uLL);
  CGContextRestoreGState(a1);
}

void sub_27631BF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27631BF84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  if (*(a1 + 48) != a4)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHPresetImagerBubble p_drawShadowedContentIntoContext:size:contentsScale:preset:target:shouldCache:]_block_invoke");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPresetImager.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 1541, 0, "invalid count %lu should be %lu", a4, *(a1 + 48));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  CGContextSaveGState(*(a1 + 56));
  v30 = objc_msgSend_p_strokeFromStyle_specific_default_(*(a1 + 32), v26, v27, v28, v29, v58, 1533, 0);
  v36 = objc_msgSend_p_objectFromStyle_specific_default_(*(a1 + 32), v31, v32, v33, v34, v58, 1508, 1411);
  v40 = *(*(a1 + 40) + 8);
  if (*(v40 + 24) == 1)
  {
    hasAllResourcesForFill = objc_msgSend_tsch_hasAllResourcesForFill_(MEMORY[0x277D80248], v35, v37, v38, v39, v36);
    v40 = *(*(a1 + 40) + 8);
  }

  else
  {
    hasAllResourcesForFill = 0;
  }

  *(v40 + 24) = hasAllResourcesForFill;
  if (a4)
  {
    v42 = 0;
    v43 = (a3 + 8);
    do
    {
      CGContextSaveGState(*(a1 + 56));
      v44 = *(*(a1 + 64) + 8 * v42);
      sub_27628CB34(*(a1 + 56), *(v43 - 1) - v44, *v43 - v44, v44 + v44, v44 + v44, 0.0);
      v45 = CGPathCreateWithEllipseInRectSafe();
      objc_msgSend_p_fillPath_withFill_inContext_(*(a1 + 32), v46, v47, v48, v49, v45, v36, *(a1 + 56));
      if (v30 && objc_msgSend_shouldRender(v30, v50, v51, v52, v53))
      {
        objc_msgSend_applyToContext_insideStroke_(v30, v54, v55, v56, v57, *(a1 + 56), 1);
        CGContextAddPathSafe();
        CGContextClip(*(a1 + 56));
        CGContextAddPathSafe();
        CGContextStrokePath(*(a1 + 56));
      }

      CGPathRelease(v45);
      CGContextRestoreGState(*(a1 + 56));
      ++v42;
      v43 += 2;
    }

    while (a4 != v42);
  }

  CGContextRestoreGState(*(a1 + 56));
}

uint64_t sub_27631EC38(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_hasNoFill_(TSCHStyleUtilities, v4, v5, v6, v7, v3))
  {
    hasAllResources = 1;
  }

  else
  {
    hasAllResources = objc_msgSend_tsch_hasAllResources(v3, v8, v9, v10, v11);
  }

  return hasAllResources;
}

id sub_27631EC8C(void *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_imageData(a1, a2, a3, a4, a5);
  v11 = v6;
  if (v6 && (objc_msgSend_needsDownload(v6, v7, v8, v9, v10) & 1) == 0)
  {
    v14.receiver = a1;
    v14.super_class = &off_2885BC860;
    v12 = objc_msgSendSuper2(&v14, sel_tsch_hasAllResources);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_27631F734(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47AB8;
  qword_280A47AB8 = v11;

  if (!qword_280A47AB8)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCHConfiguration sharedChartConfiguration]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHConfiguration.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 48, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

uint64_t sub_27631FD2C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3, a4, a5);
  v11 = objc_msgSend_threadDictionary(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_objectForKey_(v11, v12, v13, v14, v15, @"kTSCHContextDictionaryKey");

  v21 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v17, v18, v19, v20, a1);
  v26 = objc_msgSend_objectForKey_(v16, v22, v23, v24, v25, v21);

  v31 = objc_msgSend_BOOLValue(v26, v27, v28, v29, v30);
  return v31;
}

void sub_27631FDD8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "void TSCHSetCGContextIsFlipped(CGContextRef, BOOL)");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHCGContextUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 29, 0, "invalid nil value for '%{public}s'", "ctx");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3, a4, a5);
  v50 = objc_msgSend_threadDictionary(v22, v23, v24, v25, v26);

  v32 = objc_msgSend_objectForKey_(v50, v27, v28, v29, v30, @"kTSCHContextDictionaryKey");
  if (!v32)
  {
    v32 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v31, v33, v34, v35);
    objc_msgSend_setObject_forKey_(v50, v36, v37, v38, v39, v32, @"kTSCHContextDictionaryKey");
  }

  v40 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v31, v33, v34, v35, a2);
  v45 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v41, v42, v43, v44, a1);
  objc_msgSend_setObject_forKey_(v32, v46, v47, v48, v49, v40, v45);
}

void sub_27631FF58(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, "void TSCHClearCGContextIsFlipped(CGContextRef)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHCGContextUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 41, 0, "invalid nil value for '%{public}s'", "ctx");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3, a4, a5);
  v40 = objc_msgSend_threadDictionary(v21, v22, v23, v24, v25);

  v31 = objc_msgSend_objectForKey_(v40, v26, v27, v28, v29, @"kTSCHContextDictionaryKey");
  if (v31)
  {
    v35 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v30, v32, v33, v34, a1);
    objc_msgSend_removeObjectForKey_(v31, v36, v37, v38, v39, v35);
  }
}

void sub_27632008C(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a5, a1, a2, a3);
  v14 = objc_msgSend_threadDictionary(v5, v6, v7, v8, v9);

  objc_msgSend_removeObjectForKey_(v14, v10, v11, v12, v13, @"kTSCHContextDictionaryKey");
}

uint64_t sub_276320100(void *a1)
{
  v2 = a1;
  if (!v2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, v3, v4, v5, "CGContextRef TSCHBitmapContextCreate(TSDCanvas *__strong, CGSize, BOOL)");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHCGContextUtilities.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 61, 0, "invalid nil value for '%{public}s'", "canvas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  objc_msgSend_canvasIsWideGamut(v2, v1, v3, v4, v5);
  objc_msgSend_supportsHDR(v2, v21, v22, v23, v24);
  v25 = TSDBitmapContextCreate();
  TSDCGContextSetShouldRenderHDRContent();

  return v25;
}

void sub_276323F18(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v6 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  v12 = qword_280A47AC8;
  qword_280A47AC8 = v11;

  if (!qword_280A47AC8)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "+[TSCHAssetColorMap sharedInstance]_block_invoke");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHAssetColorMap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 25, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v32 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v32, v28, v29, v30, v31);
  }
}

void sub_2763279C4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7, CGContext *a8)
{
  v14 = a7;
  v19 = v14;
  if (v14)
  {
    v20 = objc_msgSend_path(v14, v15, v16, v17, v18);

    if (v20)
    {
      CGContextSaveGState(a8);
      v25 = objc_msgSend_color(a1, v21, v22, v23, v24);
      v30 = objc_msgSend_CGColor(v25, v26, v27, v28, v29);
      CGContextSetFillColorWithColor(a8, v30);

      memset(&v86, 0, sizeof(v86));
      CGAffineTransformMakeTranslation(&v86, a2, a3);
      v84 = v86;
      CGAffineTransformScale(&transform, &v84, a5, a5);
      v86 = transform;
      v84 = transform;
      CGAffineTransformRotate(&transform, &v84, a4);
      v86 = transform;
      v33 = objc_msgSend_path(v19, v31, transform.tx, transform.c, v32);
      v34 = v33;
      v39 = objc_msgSend_CGPath(v34, v35, v36, v37, v38);
      CGPathGetBoundingBox(v39);

      v44 = objc_msgSend_line(MEMORY[0x277D80308], v40, v41, v42, v43);
      isEqual = objc_msgSend_isEqual_(v19, v45, v46, v47, v48, v44);

      if (isEqual)
      {
        objc_msgSend_width(a1, v50, v51, v52, v53);
      }

      transform = v86;
      CGContextConcatCTM(a8, &transform);
      TSURectWithSizeAlignedToRect();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      sub_27628CB34(a8, v54, v56, v58, v60, 0.0);
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v87.origin.x = v55;
      v87.origin.y = v57;
      v87.size.width = v59;
      v87.size.height = v61;
      CGRectGetMinX(v87);
      v88.origin.x = v55;
      v88.origin.y = v57;
      v88.size.width = v59;
      v88.size.height = v61;
      CGRectGetWidth(v88);
      v89.origin.x = v63;
      v89.origin.y = v65;
      v89.size.width = v67;
      v89.size.height = v69;
      CGRectGetWidth(v89);
      v90.origin.x = v55;
      v90.origin.y = v57;
      v90.size.width = v59;
      v90.size.height = v61;
      CGRectGetHeight(v90);
      TSURectWithSizeAlignedToRect();
      v74 = v70;
      v75 = v71;
      v76 = v72;
      v77 = v73;
      if (isEqual)
      {
        CGContextFillRect(a8, *&v70);
      }

      else
      {
        MinX = CGRectGetMinX(*&v70);
        v91.origin.x = v74;
        v91.origin.y = v75;
        v91.size.width = v76;
        v91.size.height = v77;
        MaxY = CGRectGetMaxY(v91);
        CGContextMoveToPoint(a8, MinX, MaxY);
        v92.origin.x = v74;
        v92.origin.y = v75;
        v92.size.width = v76;
        v92.size.height = v77;
        MaxX = CGRectGetMaxX(v92);
        v93.origin.x = v74;
        v93.origin.y = v75;
        v93.size.width = v76;
        v93.size.height = v77;
        v81 = CGRectGetMaxY(v93);
        CGContextAddLineToPoint(a8, MaxX, v81);
        v94.origin.x = v74;
        v94.origin.y = v75;
        v94.size.width = v76;
        v94.size.height = v77;
        MidX = CGRectGetMidX(v94);
        v95.origin.x = v74;
        v95.origin.y = v75;
        v95.size.width = v76;
        v95.size.height = v77;
        MinY = CGRectGetMinY(v95);
        CGContextAddLineToPoint(a8, MidX, MinY);
        CGContextClosePath(a8);
        CGContextFillPath(a8);
      }

      CGContextRestoreGState(a8);
    }
  }
}

void sub_276327EC4(uint64_t a1, uint64_t a2)
{
  v158 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v143 = a2;
  v9 = objc_msgSend_seriesAtIndex_(*(a1 + 32), v5, v6, v7, v8, a2);
  if (objc_msgSend_renderSeriesForClass_(v9, v10, v11, v12, v13, *(a1 + 64)))
  {
    v18 = objc_msgSend_errorBarData(v9, v14, v15, v16, v17);
    v23 = objc_msgSend_seriesType(v9, v19, v20, v21, v22);
    v28 = objc_msgSend_elementBuilder(v23, v24, v25, v26, v27);

    v140 = v18;
    if (v18 && v28)
    {
      v138 = v4;
      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      obj = *(a1 + 40);
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, v30, v31, v32, &v153, v157, 16);
      v37 = v18;
      if (!v33)
      {
        goto LABEL_50;
      }

      v38 = v33;
      v39 = *v154;
      v40 = 3.14159265;
      v139 = v9;
      v141 = *v154;
      v142 = v28;
      while (1)
      {
        v41 = 0;
        v144 = v38;
        do
        {
          if (*v154 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v153 + 1) + 8 * v41);
          if (objc_msgSend_showErrorBarsForAxisID_(v37, v34, v40, v35, v36, v42))
          {
            v43 = *(MEMORY[0x277CBF398] + 16);
            v152.origin = *MEMORY[0x277CBF398];
            v152.size = v43;
            v151 = 0;
            v44 = objc_msgSend_renderGroupIndexSetForSeriesIndex_(*(a1 + 48), v34, v152.origin.x, v43.width, v36, v143);
            v49 = objc_msgSend_countOfErrorBarsInSeries_forGroups_forAxisID_forBodyLayout_outClipRect_outNewErrorBarDescriptors_(v28, v45, v46, v47, v48, v9, v44, v42, *(a1 + 56), &v152, &v151);
            if (!v49)
            {
              goto LABEL_47;
            }

            v50 = v49;
            if (TSDCGContextHasBackgroundsSuppressed())
            {
              v55 = objc_msgSend_strokeForAxisID_(v37, v51, v52, v53, v54, v42);
              v60 = objc_msgSend_stroke(MEMORY[0x277D80368], v56, v57, v58, v59);
              objc_msgSend_setPropertiesFromStroke_(v60, v61, v62, v63, v64, v55);
              v69 = objc_msgSend_blackColor(MEMORY[0x277D81180], v65, v66, v67, v68);
              objc_msgSend_setColor_(v60, v70, v71, v72, v73, v69);

              v78 = 0;
              v79 = 1.0;
            }

            else
            {
              objc_msgSend_opacityForAxisID_(v37, v51, v52, v53, v54, v42);
              v79 = *&v80;
              v78 = objc_msgSend_shadowForAxisID_(v37, v81, v80, v82, v83, v42);
              v60 = objc_msgSend_strokeForAxisID_(v37, v84, v85, v86, v87, v42);
            }

            v88 = 0.0;
            if (v60 && objc_msgSend_shouldRender(v60, v74, v75, v76, v77))
            {
              objc_msgSend_width(v60, v74, v89, v90, v91);
              v88 = v92;
            }

            if (v88 > 1.0)
            {
              v93 = (v88 + -1.0) * 0.6 + 1.0;
            }

            else
            {
              v93 = v88;
            }

            v94 = objc_msgSend_cap(v60, v74, (v88 + -1.0) * 0.6 + 1.0, 0.6, 1.0);
            v147 = v78;
            if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v95, v96, v97, v98, v78))
            {
              v103 = objc_msgSend_shadowsEnabled(*(a1 + 48), v99, v100, v101, v102);
              CGContextSaveGState(*(a1 + 72));
              if (v103)
              {
                objc_msgSend_viewScale(*(a1 + 48), v104, v105, v106, v107);
                v109 = v108;
                v113 = sub_27631FD2C(*(a1 + 72), v110, v108, v111, v112);
                objc_msgSend_applyToContext_viewScale_flipped_(v78, v114, v109, v115, v116, *(a1 + 72), v113);
                CGContextBeginTransparencyLayerWithRect(*(a1 + 72), v152, 0);
                v146 = 1;
LABEL_25:
                v117 = v88 * 0.5;
                CGContextClipToRectSafe();
                objc_msgSend_applyToContext_(v60, v118, v119, v120, v121, *(a1 + 72));
                CGContextSetBlendMode(*(a1 + 72), kCGBlendModeCopy);
                CGContextSetAlpha(*(a1 + 72), v79);
                v122 = 0;
                do
                {
                  v149 = 0u;
                  v150 = 0u;
                  v148 = 0u;
                  v124 = *(v151 + v122 + 16);
                  v123 = *(v151 + v122 + 32);
                  v148 = *(v151 + v122);
                  v149 = v124;
                  v150 = v123;
                  sub_27628C654(*(a1 + 72), &v148, &v149, 0, v88);
                  v126 = *(&v148 + 1);
                  v125 = *&v148;
                  v128 = *(&v149 + 1);
                  v127 = *&v149;
                  if (v94 == 1)
                  {
                    if (BYTE8(v150) == 1)
                    {
                      v126 = *(&v148 + 1) - v117;
                    }

                    else
                    {
                      v125 = v117 + *&v148;
                    }

                    if (BYTE8(v150) == 1)
                    {
                      v128 = v117 + *(&v149 + 1);
                    }

                    else
                    {
                      v127 = *&v149 - v117;
                    }
                  }

                  CGContextBeginPath(*(a1 + 72));
                  CGContextMoveToPoint(*(a1 + 72), v125, v126);
                  CGContextAddLineToPoint(*(a1 + 72), v127, v128);
                  CGContextStrokePath(*(a1 + 72));
                  if (v150 != 10)
                  {
                    if (BYTE8(v150))
                    {
                      v132 = 0.0;
                    }

                    else
                    {
                      v132 = 1.57079633;
                    }

                    v133 = objc_msgSend_lineEndWithType_(MEMORY[0x277D80308], v129, 0.0, v130, v131);
                    objc_msgSend_aaDefeatedPaintLineEnd_atPoint_atAngle_withScale_inContext_(v60, v134, *&v148, *(&v148 + 1), v132, v133, *(a1 + 72), v93);
                  }

                  if (DWORD1(v150) != 10)
                  {
                    if (BYTE8(v150))
                    {
                      v135 = 3.14159265;
                    }

                    else
                    {
                      v135 = 4.71238898;
                    }

                    v136 = objc_msgSend_lineEndWithType_(MEMORY[0x277D80308], v129, 4.71238898, 3.14159265, v131);
                    objc_msgSend_aaDefeatedPaintLineEnd_atPoint_atAngle_withScale_inContext_(v60, v137, *&v149, *(&v149 + 1), v135, v136, *(a1 + 72), v93);
                  }

                  v122 += 48;
                  --v50;
                }

                while (v50);
                if (v146)
                {
                  CGContextEndTransparencyLayer(*(a1 + 72));
                }

                CGContextRestoreGState(*(a1 + 72));

                v9 = v139;
                v37 = v140;
LABEL_47:
                free(v151);

                v39 = v141;
                v28 = v142;
                v38 = v144;
                goto LABEL_48;
              }
            }

            else
            {
              CGContextSaveGState(*(a1 + 72));
            }

            v146 = 0;
            goto LABEL_25;
          }

LABEL_48:
          ++v41;
        }

        while (v41 != v38);
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, v40, v35, v36, &v153, v157, 16);
        if (!v38)
        {
LABEL_50:

          v4 = v138;
          break;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_276328BC8(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if (objc_msgSend_renderTrendLinesForSeriesIndex_(*(a1 + 32), a2, a3, a4, a5, a2))
  {
    v11 = objc_msgSend_seriesAtIndex_(*(a1 + 40), v7, v8, v9, v10, a2);
    if (objc_msgSend_renderSeriesForClass_(v11, v12, v13, v14, v15, *(a1 + 72)))
    {
      v20 = objc_msgSend_seriesType(v11, v16, v17, v18, v19);
      v25 = objc_msgSend_elementBuilder(v20, v21, v22, v23, v24);

      if (v25)
      {
        v124 = *(MEMORY[0x277CBF398] + 16);
        v125 = *MEMORY[0x277CBF398];
        v133.origin = *MEMORY[0x277CBF398];
        v133.size = v124;
        v28 = *(a1 + 48);
        v132 = 0;
        objc_msgSend_trendlineElementForSeries_forBodyLayout_outElementBounds_outElementClipRect_outElementPath_(v25, v26, v133.origin.x, v124.width, v27, v11, v28, 0, &v133, &v132);
        v29 = v132;
        if (v29 && !CGRectIsNull(v133) && (objc_msgSend_isEmpty(v29, v30, v31, v32, v33) & 1) == 0)
        {
          v38 = objc_msgSend_objectValueForProperty_(v11, v34, v35, v36, v37, 1202);
          objc_msgSend_rootedLayoutRect(*(*(a1 + 56) + 8), v39, v40, v41, v42);
          CGRectInset(v134, -2.0, -2.0);
          CGContextSaveGState(*(a1 + 80));
          CGContextClipToRectSafe();
          if (*(a1 + 88))
          {
            v47 = 0;
            hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v43, v44, v45, v46, 0);
          }

          else
          {
            v47 = objc_msgSend_objectValueForProperty_(v11, v43, v44, v45, v46, 1198);
            hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v53, v54, v55, v56, v47);
          }

          if (hasShadow && objc_msgSend_shadowsEnabled(*(a1 + 32), v49, v50, v51, v52))
          {
            objc_msgSend_viewScale(*(a1 + 56), v49, v50, v51, v52);
            v58 = v57;
            v62 = sub_27631FD2C(*(a1 + 80), v59, v57, v60, v61);
            objc_msgSend_applyToContext_viewScale_flipped_(v47, v63, v58, v64, v65, *(a1 + 80), v62);
          }

          objc_msgSend_applyToContext_insideStroke_(v38, v49, v50, v51, v52, *(a1 + 80), 0);
          objc_msgSend_addPathToContext_(v29, v66, v67, v68, v69, *(a1 + 80));
          CGContextStrokePath(*(a1 + 80));
          CGContextRestoreGState(*(a1 + 80));
          v74 = objc_msgSend_trendLineData(v11, v70, v71, v72, v73);
          v79 = objc_msgSend_showEquation(v74, v75, v76, v77, v78);
          v84 = objc_msgSend_showRSquared(v74, v80, v81, v82, v83);
          objc_msgSend_equationTextOpacity(v74, v85, v86, v87, v88);
          v90 = *&v89;
          objc_msgSend_rSquaredTextOpacity(v74, v91, v89, v92, v93);
          v98 = *&v95;
          if ((v79 & 1) != 0 || v84)
          {
            objc_msgSend_viewScale(*(a1 + 56), v94, v95, v96, v97);
            v100 = v99;
            v104 = objc_msgSend_sharedText(TSCHText, v101, v99, v102, v103);
            v131.origin = v125;
            v131.size = v124;
            aStr = 0;
            v105 = *(a1 + 64);
            memset(v129, 0, 56);
            objc_msgSend_transformForRenderingTrendlineTextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outNewString_(v25, v106, 0.0, v125.x, v107, v11, v105, 0, &v131, v129, &aStr);
            v108 = v129[0];
            if (aStr)
            {
              Length = CFAttributedStringGetLength(aStr);
              if (Length)
              {
                v110 = Length;
                if (!CGRectIsNull(v131))
                {
                  if (v108)
                  {
                    CGContextSaveGState(*(a1 + 80));
                    CGContextSetAlpha(*(a1 + 80), v90);
                    v111 = *(a1 + 80);
                    transform = *&v129[1];
                    CGContextConcatCTM(v111, &transform);
                    CGContextClipToRectSafe();
                    objc_msgSend_drawAttributedString_paragraphStyle_styleProvidingSource_intoContext_atPosition_range_viewScale_(v104, v112, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v100, aStr, v108, 0, *(a1 + 80), 0, v110);
                    CGContextRestoreGState(*(a1 + 80));
                  }
                }
              }

              if (aStr)
              {
                CFRelease(aStr);
              }
            }

            v131.origin = v125;
            v131.size = v124;
            memset(&v129[1], 0, 48);
            v113 = *(a1 + 64);
            v126 = 0;
            v127 = 0;
            objc_msgSend_transformForRenderingR2TextForSeries_forAreaLayout_outElementSize_outClipRect_outParagraphStyle_outString_(v25, v114, 0.0, v125.x, v115, v11, v113, 0, &v131, &v127, &v126);
            v116 = v127;
            v117 = v126;
            if (objc_msgSend_length(v117, v118, v119, v120, v121) && !CGRectIsNull(v131))
            {
              if (v116)
              {
                CGContextSaveGState(*(a1 + 80));
                CGContextSetAlpha(*(a1 + 80), v98);
                v122 = *(a1 + 80);
                transform = *&v129[1];
                CGContextConcatCTM(v122, &transform);
                CGContextClipToRectSafe();
                objc_msgSend_drawText_paragraphStyle_intoContext_atPosition_viewScale_(v104, v123, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v100, v117, v116, *(a1 + 80));
                CGContextRestoreGState(*(a1 + 80));
              }
            }
          }
        }
      }
    }
  }
}

double sub_27632D088(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "CGFloat ColumnWidthAssumingNumColumns(NSUInteger, NSUInteger, TSCHLegendModelCache *__strong)");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 482, 0, "invalid nil value for '%{public}s'", "usingModelCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_cells(v6, v5, v7, v8, v9);
  v30 = objc_msgSend_cellCount(v6, v26, v27, v28, v29);
  v35 = 0.0;
  if (v30 > a1)
  {
    v36 = v30;
    do
    {
      v37 = objc_msgSend_objectAtIndexedSubscript_(v25, v31, v32, v33, v34, a1);
      objc_msgSend_size(v37, v38, v39, v40, v41);
      if (v35 < v42)
      {
        v35 = v42;
      }

      a1 += a2;
    }

    while (a1 < v36);
  }

  return v35;
}

void sub_27632D770(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (!a3)
  {
    v6 = a4;
    objc_opt_class();
    v15 = TSUDynamicCast();

    if (v15)
    {
      v11 = objc_msgSend_mappedStyleForStyle_(*(a1 + 32), v15, v7, v8, v9, v15);
      if (v11 != v15)
      {
        objc_msgSend_setObject_forProperty_(*(a1 + 40), v10, v12, v13, v14, v11, a2);
      }
    }
  }
}

id sub_27632D97C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();

  v10 = objc_msgSend_mappedStyleForStyle_bakeComputable_(*(a1 + 32), v5, v6, v7, v8, v4, *(a1 + 40));
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "+[TSCHStyleMapper mappedStylesWithMapper:forStyles:bakeComputable:]_block_invoke");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 139, 0, "invalid nil value for '%{public}s'", "mapped");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  return v10;
}

void sub_27632DE80(double a1, double a2, double a3, uint64_t a4, const char *a5)
{
  v5 = objc_msgSend_computableProperties(TSCHChartSeries, a5, a1, a2, a3);
  v10 = objc_msgSend_expandProperties_(TSCHChartSeriesType, v6, v7, v8, v9, v5);

  v15 = objc_msgSend_mutableCopy(v10, v11, v12, v13, v14);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_27632DF64;
  v27[3] = &unk_27A6B9A90;
  v28 = v15;
  v16 = v15;
  objc_msgSend_enumeratePropertiesUsingBlock_(v10, v17, v18, v19, v20, v27);
  v25 = objc_msgSend_copy(v16, v21, v22, v23, v24);
  v26 = qword_280A47AD8;
  qword_280A47AD8 = v25;
}

uint64_t sub_27632DF64(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  result = objc_msgSend_muxDefaultPropertyForSpecificProperty_(TSCHChartSeriesStyle, a2, a3, a4, a5, a2);
  if (result)
  {
    v11 = result;
    v12 = *(a1 + 32);

    return objc_msgSend_addProperty_(v12, v7, v8, v9, v10, v11);
  }

  return result;
}

id sub_27632ED04(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v10 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "TSSStyle *p_dereferencedParagraphStyle(TSCHChartStyleState *__strong, TSSStyle *__strong, TSSProperty, TSSStylesheet *__strong)");
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v61, v62, v63, v64, v55, v60, 330, 0, "invalid nil value for '%{public}s'", "referencingStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v39 = MEMORY[0x277D81150];
  v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "TSSStyle *p_dereferencedParagraphStyle(TSCHChartStyleState *__strong, TSSStyle *__strong, TSSProperty, TSSStylesheet *__strong)");
  v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 329, 0, "invalid nil value for '%{public}s'", "styleNetwork");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a3)
  {
    goto LABEL_4;
  }

LABEL_9:
  v69 = MEMORY[0x277D81150];
  v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "TSSStyle *p_dereferencedParagraphStyle(TSCHChartStyleState *__strong, TSSStyle *__strong, TSSProperty, TSSStylesheet *__strong)");
  v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v76, v77, v78, v79, v70, v75, 331, 0, "Invalid index property");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82, v83);
LABEL_4:
  v14 = objc_msgSend_paragraphStyles(v7, v9, v11, v12, v13);
  if (!objc_msgSend_count(v14, v15, v16, v17, v18))
  {
    v84 = MEMORY[0x277D81150];
    v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "TSSStyle *p_dereferencedParagraphStyle(TSCHChartStyleState *__strong, TSSStyle *__strong, TSSProperty, TSSStylesheet *__strong)");
    v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v91, v92, v93, v94, v85, v90, 356, 0, "Couldn't find any paragraph styles in the prior state while adopting new stylesheet. Look into this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v96, v97, v98);
    v99 = sub_276331A54(v10);
    goto LABEL_17;
  }

  v23 = objc_msgSend_intValueForMUXedProperty_(v8, v19, v20, v21, v22, a3);
  if (v23 == 0x80000000)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "TSSStyle *p_dereferencedParagraphStyle(TSCHChartStyleState *__strong, TSSStyle *__strong, TSSProperty, TSSStylesheet *__strong)");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 349, 0, "Got back TSSUndefinedInt. This should not be. At the very least we should have gotten a fall thru default.");
LABEL_15:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114);
    objc_msgSend_objectAtIndexedSubscript_(v14, v115, v116, v117, v118, 0);
    goto LABEL_16;
  }

  v100 = v23;
  if ((v23 & 0x80000000) != 0 || objc_msgSend_count(v14, v24, v25, v26, v27) <= v23)
  {
    v101 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "TSSStyle *p_dereferencedParagraphStyle(TSCHChartStyleState *__strong, TSSStyle *__strong, TSSProperty, TSSStylesheet *__strong)");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, v103, v104, v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    v106 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v107, v108, v109, v110, v29, v34, 342, 0, "%@: value out of range", v106);

    goto LABEL_15;
  }

  objc_msgSend_objectAtIndexedSubscript_(v14, v24, v25, v26, v27, v100);
  v99 = LABEL_16:;
LABEL_17:
  v119 = v99;

  return v119;
}

id sub_2763300D8(void *a1, void *a2, int a3, void *a4)
{
  v164 = *MEMORY[0x277D85DE8];
  v6 = a1;
  v8 = a2;
  if (!v6)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "TSCHChartStyleState *p_mappedState(TSCHChartStyleState *__strong, TSCHStyleMapper *__strong, BOOL, TSUPointerKeyDictionary *__autoreleasing *)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartInfoAdoptStylesheet.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 257, 0, "invalid nil value for '%{public}s'", "sourceState");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = objc_msgSend_dictionary(MEMORY[0x277D812B8], v7, v9, v10, v11);
  v32 = objc_msgSend_copy(v6, v28, v29, v30, v31);
  v37 = v32;
  if (a3)
  {
    v38 = objc_msgSend_paragraphStyles(v32, v33, v34, v35, v36);
    objc_msgSend_removeAllObjects(v38, v39, v40, v41, v42);
  }

  v43 = MEMORY[0x277CBEB18];
  v44 = objc_msgSend_allStyles(v6, v33, v34, v35, v36);
  v49 = objc_msgSend_arrayWithArray_(v43, v45, v46, v47, v48, v44);

  if (a3)
  {
    v54 = objc_msgSend_paragraphStyles(v6, v50, v51, v52, v53);
    objc_msgSend_tsu_removeObjectsIdenticalToObjectsInArray_(v49, v55, v56, v57, v58, v54);
  }

  v59 = objc_msgSend_seriesPrivateStyles(v6, v50, v51, v52, v53);
  objc_msgSend_tsu_removeObjectsIdenticalToObjectsInArray_(v49, v60, v61, v62, v63, v59);

  v64 = v49;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, 0.0, v66, v67, &v159, v163, 16);
  if (v68)
  {
    v73 = v68;
    v74 = *v160;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v160 != v74)
        {
          objc_enumerationMutation(v64);
        }

        v77 = *(*(&v159 + 1) + 8 * i);
        v81 = v77;
        if (v8)
        {
          v81 = objc_msgSend_mappedStyleForStyle_(v8, v76, v78, v79, v80, v77);

          objc_msgSend_replaceAllInstancesOfStyle_withStyle_(v37, v82, v83, v84, v85, v77, v81);
        }

        objc_msgSend_setObject_forKey_(v27, v76, v78, v79, v80, v77, v81);
      }

      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v86, v87, v88, v89, &v159, v163, 16);
    }

    while (v73);
  }

  v90 = objc_msgSend_seriesThemeStyles(v6, v69, v70, v71, v72);
  v155 = objc_msgSend_count(v90, v91, v92, v93, v94);

  v99 = objc_msgSend_seriesPrivateStyles(v6, v95, v96, v97, v98);
  v104 = objc_msgSend_count(v99, v100, v101, v102, v103);

  v156 = v104;
  if (v104)
  {
    v109 = 0;
    do
    {
      objc_opt_class();
      v110 = v6;
      v115 = objc_msgSend_seriesPrivateStyles(v6, v111, v112, v113, v114);
      v120 = objc_msgSend_objectAtIndexedSubscript_(v115, v116, v117, v118, v119, v109);
      v121 = TSUDynamicCast();

      if (v121)
      {
        v123 = v121;
        v127 = v123;
        if (v8)
        {
          v127 = objc_msgSend_mappedStyleForStyle_bakeComputable_(v8, v122, v124, v125, v126, v123, v109 < v155);

          objc_msgSend_replaceAllInstancesOfStyle_withStyle_(v37, v128, v129, v130, v131, v123, v127);
        }

        objc_msgSend_setObject_forKey_(v27, v122, v124, v125, v126, v123, v127);
      }

      ++v109;
      v6 = v110;
    }

    while (v156 != v109);
  }

  if (a4)
  {
    v132 = v27;
    *a4 = v27;
  }

  v133 = objc_msgSend_themeChartStyleState(v6, v105, v106, v107, v108);
  v138 = objc_msgSend_copy(v133, v134, v135, v136, v137);
  objc_msgSend_setThemeChartStyleState_(v37, v139, v140, v141, v142, v138);

  v147 = objc_msgSend_themeChartStyleState(v37, v143, v144, v145, v146);
  v157[0] = MEMORY[0x277D85DD0];
  v157[1] = 3221225472;
  v157[2] = sub_276331B0C;
  v157[3] = &unk_27A6B9AB8;
  v158 = v8;
  v148 = v8;
  objc_msgSend_replaceStylesUsingBlock_(v147, v149, v150, v151, v152, v157);

  return v37;
}

BOOL sub_276330560(void *a1)
{
  v1 = a1;
  v10 = objc_msgSend_type(v1, v2, v3, v4, v5) != 9 && objc_msgSend_type(v1, v6, v7, v8, v9) != 15;

  return v10;
}

uint64_t sub_276330F84(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_type(v4, v6, v7, v8, v9);
  v15 = objc_msgSend_type(v5, v11, v12, v13, v14);
  if (v10 == 15)
  {
    v20 = 12;
  }

  else
  {
    v20 = v10;
  }

  if (v10 == 12)
  {
    v21 = 15;
  }

  else
  {
    v21 = v20;
  }

  if (v15 == 15)
  {
    v22 = 12;
  }

  else
  {
    v22 = v15;
  }

  if (v15 == 12)
  {
    v23 = 15;
  }

  else
  {
    v23 = v22;
  }

  v24 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v16, v17, v18, v19, v21);
  v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v25, v26, v27, v28, v23);
  v34 = objc_msgSend_compare_(v24, v30, v31, v32, v33, v29);

  if (!v34)
  {
    v39 = MEMORY[0x277CCABB0];
    v40 = objc_msgSend_index(v4, v35, v36, v37, v38);
    v45 = objc_msgSend_numberWithUnsignedInteger_(v39, v41, v42, v43, v44, v40);
    v46 = MEMORY[0x277CCABB0];
    v51 = objc_msgSend_index(v5, v47, v48, v49, v50);
    v56 = objc_msgSend_numberWithUnsignedInteger_(v46, v52, v53, v54, v55, v51);
    v34 = objc_msgSend_compare_(v45, v57, v58, v59, v60, v56);
  }

  return v34;
}

void sub_2763310A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12 = objc_msgSend_p_formatSemanticTag_(*(a1 + 40), v8, v9, v10, v11, v5);
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = v14;
  v20 = objc_msgSend_UTF8String(v15, v16, v17, v18, v19);
  objc_msgSend_appendFormat_(v7, v21, v22, v23, v24, @"%@: <%-22s %p>", v12, v20, v6);

  v29 = objc_msgSend_parent(v6, v25, v26, v27, v28);
  if (v29)
  {
    v34 = v29;
    do
    {
      v35 = *(a1 + 32);
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = v37;
      v43 = objc_msgSend_UTF8String(v38, v39, v40, v41, v42);
      objc_msgSend_appendFormat_(v35, v44, v45, v46, v47, @" parent: <%-22s %p>", v43, v34);

      v52 = objc_msgSend_parent(v34, v48, v49, v50, v51);

      v34 = v52;
    }

    while (v52);
  }

  v53 = *(a1 + 32);
  v54 = objc_msgSend_rootIdentifiedAncestor(v6, v30, v31, v32, v33);
  v59 = objc_msgSend_styleIdentifier(v54, v55, v56, v57, v58);
  objc_msgSend_appendFormat_(v53, v60, v61, v62, v63, @" rootIdentifier: %@", v59);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = *(a1 + 32);
    v69 = objc_msgSend_boxedValueForProperty_(v6, v64, v65, v66, v67, 16);
    v74 = objc_msgSend_boxedValueForProperty_(v6, v70, v71, v72, v73, 17);
    objc_msgSend_appendFormat_(v68, v75, v76, v77, v78, @" fontName: %@ size: %@", v69, v74);
  }

  objc_msgSend_appendString_(*(a1 + 32), v64, v65, v66, v67, @"\n");
  v79 = objc_opt_class();
  v84 = objc_msgSend_properties(v79, v80, v81, v82, v83);
  v89 = objc_msgSend_mutableCopy(v84, v85, v86, v87, v88);

  objc_msgSend_intersectPropertySet_(v89, v90, v91, v92, v93, *(a1 + 48));
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x2020000000;
  v106 = 0;
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = sub_27633135C;
  v100[3] = &unk_27A6B9B00;
  v104 = v105;
  v101 = *(a1 + 32);
  v94 = v6;
  v95 = *(a1 + 40);
  v102 = v94;
  v103 = v95;
  objc_msgSend_enumeratePropertiesUsingBlock_(v89, v96, v97, v98, v99, v100);

  _Block_object_dispose(v105, 8);
}

void sub_276331344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27633135C(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_appendString_(*(a1 + 32), a2, a3, a4, a5, @"                              References Paragraph Styles: (Property => Index)\n");
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v7 = objc_msgSend_intValueForProperty_(*(a1 + 40), a2, a3, a4, a5, a2);
  v12 = objc_msgSend_intValueForMUXedProperty_(*(a1 + 40), v8, v9, v10, v11, a2);
  v17 = objc_msgSend_paragraphStyles(*(a1 + 48), v13, v14, v15, v16);
  v22 = objc_msgSend_count(v17, v18, v19, v20, v21);
  v23 = v12;

  if (v22 <= v12)
  {
    v49 = MEMORY[0x277CCACA8];
    v33 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, v25, v26, v27, v12);
    v82 = objc_msgSend_stringWithFormat_(v49, v50, v51, v52, v53, @"{ DANGLING PARAGRAPH STYLE REFERENCE: %@}", v33);
  }

  else
  {
    v28 = objc_msgSend_paragraphStyles(*(a1 + 48), v24, v25, v26, v27);
    v33 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v30, v31, v32, v12);

    v34 = MEMORY[0x277CCACA8];
    v39 = objc_msgSend_boxedValueForProperty_(v33, v35, v36, v37, v38, 16);
    v44 = objc_msgSend_boxedValueForProperty_(v33, v40, v41, v42, v43, 17);
    v82 = objc_msgSend_stringWithFormat_(v34, v45, v46, v47, v48, @"{ font: %@ size: %@ }", v39, v44);
  }

  if (v7 == v23)
  {
    v54 = *(a1 + 32);
    v55 = String();
    v56 = v55;
    v61 = objc_msgSend_UTF8String(v56, v57, v58, v59, v60);
    objc_msgSend_appendFormat_(v54, v82, v62, v63, v64, @"                                 %62s = %-2ld %@\n", v61, v23, v82);
  }

  else
  {
    v65 = objc_opt_class();
    objc_msgSend_muxDefaultPropertyForSpecificProperty_(v65, v66, v67, v68, v69, a2);
    v70 = *(a1 + 32);
    v55 = String();
    v71 = v55;
    v76 = objc_msgSend_UTF8String(v71, v72, v73, v74, v75);
    v77 = String();
    objc_msgSend_appendFormat_(v70, v78, v79, v80, v81, @"                                 %62s = %-2ld (=> %@) %@\n", v76, v23, v77, v82);
  }
}

uint64_t sub_2763319F0(void *a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  for (result = objc_msgSend_intValueForProperty_(a1, a2, a4, a5, a6); result == 0x80000000; result = objc_msgSend_intValueForProperty_(a1, v15, v16, v17, v18, v14))
  {
    v9 = objc_opt_class();
    v14 = objc_msgSend_muxDefaultPropertyForSpecificProperty_(v9, v10, v11, v12, v13, a3);
    if (!v14)
    {
      return 0x80000000;
    }
  }

  return result;
}

id sub_276331A54(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_paragraphStyleIdentifierForRoleIndex_ordinal_(TSCHChartInfo, v2, v3, v4, v5, 0, 0);
  v12 = objc_msgSend_cascadedStyleWithIdentifier_(v1, v7, v8, v9, v10, v6);
  if (!v12)
  {
    v16 = objc_msgSend_context(v1, v11, v13, v14, v15);
    v12 = objc_msgSend_defaultParagraphStyleWithContext_(TSCHChartStyle, v17, v18, v19, v20, v16);

    objc_msgSend_addStyle_(v1, v21, v22, v23, v24, v12);
  }

  return v12;
}

void sub_2763327F4(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v11 = objc_msgSend_boxedDefaultValueForProperty_(*(a1 + 40), a2, a3, a4, a5, a2);
  if (v11)
  {
    objc_msgSend_setBoxedObject_forProperty_(*(a1 + 32), v7, v8, v9, v10, v11, a2);
  }
}

void sub_276338A14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276338FE8()
{
  v0 = objc_alloc_init(TSCHCartesianElementBuilderCoordinateAdapter);
  v1 = qword_280A47AF0;
  qword_280A47AF0 = v0;
}

void sub_276339210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27633925C(void *a1, const char *a2, double a3, double a4, double a5)
{
  v11 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 8), a2, a3, a4, a5, a1[5]);
  v10 = objc_msgSend_CGPath(v11, v6, v7, v8, v9);
  *(*(a1[6] + 8) + 24) = CGPathRetain(v10);
}

uint64_t sub_2763392E0(void *a1, const char *a2, double a3, double a4, double a5)
{
  v6 = a1[4];
  v7 = *(v6 + 8);
  if (v7)
  {
    v8 = v7;
    v9 = *(v6 + 8);
    *(v6 + 8) = v8;
  }

  else
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
    v11 = a1[4];
    v9 = *(v11 + 8);
    *(v11 + 8) = v10;
  }

  v17 = a1[5];
  v16 = a1[6];
  v18 = *(a1[4] + 8);

  return objc_msgSend_setObject_forKeyedSubscript_(v18, v12, v13, v14, v15, v16, v17);
}

void sub_27633B34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);

  _Block_object_dispose((v37 - 184), 8);
  _Unwind_Resume(a1);
}

__n128 sub_27633B450(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void *sub_27633B460(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5, double a6)
{
  Index = objc_msgSend_lastIndex(*(a1 + 32), a2, a4, a5, a6);
  v14 = *(a1 + 80) + 24 * a3;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) != 0 || Index == a2 && *(a1 + 120) != 1)
  {
    v18 = 0;
  }

  else if (*(v14 + 16))
  {
    v18 = TSUEqualPointsWithThreshold();
  }

  else
  {
    v18 = *(a1 + 121);
  }

  v19 = *(a1 + 120) & (v17 ^ 1) | v18;
  result = *(a1 + 40);
  if (!result)
  {
    if (v19)
    {
      goto LABEL_23;
    }

    v25 = *(a1 + 104);
    goto LABEL_22;
  }

  result = objc_msgSend_unitSpaceValueForSeries_groupIndex_(result, v10, v11, v12, v13, *(a1 + 48), a2);
  v22 = (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v23 = v21 < 0.0 && ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v21 >= 0.0)
  {
    v22 = 0;
  }

  v24 = (*&v21 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v22;
  if (((v24 | v23) & 1) == 0 && (v19 & 1) == 0)
  {
    v25 = fmax(v21 * *(a1 + 88) - *(a1 + 96), 2.0);
LABEL_22:
    v26 = *(a1 + 112) + 40 * *(*(*(a1 + 72) + 8) + 24);
    *v26 = v15;
    *(v26 + 8) = v16;
    *(v26 + 16) = v25;
    *(v26 + 24) = v17 & 1;
    *(v26 + 25) = 0;
    *(v26 + 28) = 0;
    *(v26 + 32) = a2;
    ++*(*(*(a1 + 72) + 8) + 24);
    v27 = *(*(a1 + 64) + 8);
    *(v27 + 48) = v15;
    *(v27 + 56) = v16;
  }

LABEL_23:
  v28 = *(*(a1 + 56) + 8);
  if (*(v28 + 24) == 1)
  {
    *(v28 + 24) = 0;
  }

  return result;
}

void sub_27633C75C(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v26 = *a1;
    if (!*a2)
    {
      v7 = sub_276343D14(*a2, *(a2 + 8), v4, v5, v6);
      v12 = v7;
      if (v7)
      {
        objc_msgSend_CGPointValue(v7, v8, v9, v10, v11);
      }

      else
      {
        v13 = *MEMORY[0x277CBF348];
        v14 = *(MEMORY[0x277CBF348] + 8);
      }

      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
    }

    v16 = sub_276343D14(*a2, *(a2 + 8), v4, v5, v6);
    if (v16)
    {
      objc_msgSend_addObject_(v26, v15, v17, v18, v19, v16);
      objc_msgSend_CGPointValue(v16, v20, v21, v22, v23);
      *(a1 + 24) = v24;
      *(a1 + 32) = v25;
    }
  }
}

__n128 sub_27633D9AC(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_27633D9D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_27633DA10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_27633DA28(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_27633DA38(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v95 = a2;
  v93 = *MEMORY[0x277CBF348];
  v94 = v93;
  v92 = v93;
  if (objc_msgSend_hasErrorDataForInputAxis_outputAxis_inputAxisContinuous_outputAxisContinuous_groupIndex_groupsCount_barVertical_barType_outUnitValue_outUnitPositive_outUnitNegative_(*(a1 + 32), a2, *&v93, a4, a5, *(a1 + 40), *(a1 + 48), *(a1 + 228), *(a1 + 229), a2, *(a1 + 120), *(a1 + 230), *(a1 + 128), &v94, &v93, &v92))
  {
    sub_27634600C(*(a1 + 231), *&v94, *(&v94 + 1), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168));
    v7 = sub_27634600C(*(a1 + 231), *&v93, *(&v93 + 1), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168));
    v9 = v8;
    v83 = sub_27634600C(*(a1 + 231), *&v92, *(&v92 + 1), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168));
    r1 = v96.origin.y;
    v10 = *(a1 + 224);
    v11 = v7;
    v13 = *(a1 + 176);
    v12 = *(a1 + 184);
    v96.size.width = v7 - v83;
    y = v96.origin.y;
    v87 = v9;
    v96.size.height = v9 - v96.origin.y;
    v15 = *(a1 + 192);
    v14 = *(a1 + 200);
    v96.origin.x = v83;
    v103 = CGRectStandardize(v96);
    v97.origin.x = v13;
    v97.origin.y = v12;
    v97.size.width = v15;
    v97.size.height = v14;
    if (CGRectIntersectsRect(v97, v103))
    {
      TSURectWithPoints();
      v20 = *(a1 + 208);
      v21 = -v20;
      if (*(a1 + 230))
      {
        v22 = -v20;
      }

      else
      {
        v22 = 0.0;
      }

      if (*(a1 + 230))
      {
        v21 = 0.0;
      }

      v98 = CGRectInset(*&v16, v22, v21);
      x = v98.origin.x;
      v25 = v98.origin.y;
      width = v98.size.width;
      height = v98.size.height;
      if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
      {
        v98 = CGRectUnion(*(*(*(a1 + 80) + 8) + 48), v98);
      }

      *(*(*(a1 + 80) + 8) + 48) = v98;
      if (*(a1 + 224) != 10)
      {
        if (*(a1 + 230) == 1)
        {
          v28 = v9 + *(a1 + 216);
          v29 = 0.0;
        }

        else
        {
          v28 = v9 + 0.0;
          v29 = -*(a1 + 216);
        }

        v30 = *(a1 + 56);
        v80 = width;
        v81 = x;
        if (v30)
        {
          v31 = 4.71238898;
          if (*(a1 + 230))
          {
            v31 = 3.14159265;
          }

          v32 = *(a1 + 64);
          v33 = *(MEMORY[0x277CBF2C0] + 16);
          *v88 = *MEMORY[0x277CBF2C0];
          *&v88[16] = v33;
          *&v88[32] = *(MEMORY[0x277CBF2C0] + 32);
          objc_msgSend_boundsForLineEnd_atPoint_atAngle_withScale_transform_(v30, v23, v7 + v29, v28, v31, v32, v88);
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v42 = *(*(a1 + 80) + 8);
          v43 = v42[6];
          v44 = v42[7];
          v45 = v42[8];
          v46 = v42[9];
        }

        else
        {
          v47 = *(*(a1 + 80) + 8);
          v43 = v47[6];
          v44 = v47[7];
          v45 = v47[8];
          v46 = v47[9];
          v41 = v46;
          v39 = v45;
          v37 = v44;
          v35 = v43;
        }

        v104.origin.x = v35;
        v104.origin.y = v37;
        v104.size.width = v39;
        v104.size.height = v41;
        *(*(*(a1 + 80) + 8) + 48) = CGRectUnion(*&v43, v104);
        v99.size.width = v80;
        v99.origin.x = v81;
        v99.origin.y = v25;
        v99.size.height = height;
        v105.origin.x = v35;
        v105.origin.y = v37;
        v105.size.width = v39;
        v105.size.height = v41;
        v100 = CGRectUnion(v99, v105);
        v49 = v100.origin.x;
        v50 = v100.origin.y;
        v51 = v100.size.width;
        if (*(a1 + 230) == 1)
        {
          v52 = r1 - *(a1 + 216);
          v53 = 0.0;
        }

        else
        {
          v52 = r1 + 0.0;
          v53 = *(a1 + 216);
        }

        r1a = v100.size.height;
        v54 = *(a1 + 56);
        v82 = v50;
        if (v54)
        {
          v55 = 1.57079633;
          if (*(a1 + 230))
          {
            v55 = 0.0;
          }

          v56 = *(a1 + 64);
          v57 = *(MEMORY[0x277CBF2C0] + 16);
          *v88 = *MEMORY[0x277CBF2C0];
          *&v88[16] = v57;
          *&v88[32] = *(MEMORY[0x277CBF2C0] + 32);
          objc_msgSend_boundsForLineEnd_atPoint_atAngle_withScale_transform_(v54, v48, v83 + v53, v52, v55, v56, v88);
          v59 = v58;
          v61 = v60;
          v63 = v62;
          v65 = v64;
          v66 = *(*(a1 + 80) + 8);
          v67 = v66[6];
          v68 = v66[7];
          v69 = v66[8];
          v70 = v66[9];
        }

        else
        {
          v71 = *(*(a1 + 80) + 8);
          v67 = v71[6];
          v68 = v71[7];
          v69 = v71[8];
          v70 = v71[9];
          v65 = v70;
          v63 = v69;
          v61 = v68;
          v59 = v67;
        }

        v106.origin.x = v59;
        v106.origin.y = v61;
        v106.size.width = v63;
        v106.size.height = v65;
        *(*(*(a1 + 80) + 8) + 48) = CGRectUnion(*&v67, v106);
        v101.origin.x = v49;
        v101.origin.y = v82;
        v101.size.width = v51;
        v101.size.height = r1a;
        v107.origin.x = v59;
        v107.origin.y = v61;
        v107.size.width = v63;
        v107.size.height = v65;
        v102 = CGRectUnion(v101, v107);
        x = v102.origin.x;
        v25 = v102.origin.y;
        width = v102.size.width;
        height = v102.size.height;
      }

      if ((*(a1 + 232) & 1) != 0 || objc_msgSend_p_testIntersectionOfRect_againstSortedRects_withInset_isVertical_(*(a1 + 72), v23, x, v25, width, *(*(*(a1 + 96) + 8) + 40), 1, height, 0.0))
      {
        if (*(a1 + 233) == 1)
        {
          v90 = 0u;
          v91 = 0u;
          v89 = 0u;
          sub_27634844C(v10, v10, *(a1 + 230), &v89, v83, y, v11, v87);
          v72 = *(*(a1 + 104) + 8);
          *v88 = a2;
          *&v88[8] = v89;
          *&v88[24] = v90;
          *&v88[40] = v91;
          sub_276343E78((v72 + 48), v88);
        }

        sub_276344308((*(*(a1 + 112) + 8) + 48), &v95);
        v73 = *(*(*(a1 + 96) + 8) + 40);
        v75 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v74, x, v25, width, height);
        objc_msgSend_addObject_(v73, v76, v77, v78, v79, v75);

        *(*(*(a1 + 88) + 8) + 24) = 0;
      }
    }
  }
}