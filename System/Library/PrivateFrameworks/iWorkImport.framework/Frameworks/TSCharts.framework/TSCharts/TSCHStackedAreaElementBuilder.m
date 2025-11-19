@interface TSCHStackedAreaElementBuilder
- ($5C4A7F080D05DAA414778C98C68F800C)p_createPointArrayForSeries:(id)a3 inAreaFrame:(CGRect)a4 groupIndexSet:(id)a5 outCount:(unint64_t *)a6;
- ($9E5495ABC9D17321C375100FE022AE0A)p_centerPointsForSeries:(id)a3 groupIndexSet:(id)a4 nullsUseIntercept:(BOOL)a5 plotAreaFrame:(CGRect)a6;
- (BOOL)p_addBottomStroke:(id *)a3 toPath:(CGPath *)a4 seriesIndex:(unint64_t)a5 withPointsArray:(id *)a6 withCount:(unint64_t)a7;
- (unint64_t)countOfSummaryLabelsForGroups:(id)a3 forBodyLayout:(id)a4 outNewTransforms:(CGAffineTransform *)a5 outNewElementSizes:(CGSize *)a6 outNewClipRects:(CGRect *)a7 outNewStrings:(id *)a8;
@end

@implementation TSCHStackedAreaElementBuilder

- ($5C4A7F080D05DAA414778C98C68F800C)p_createPointArrayForSeries:(id)a3 inAreaFrame:(CGRect)a4 groupIndexSet:(id)a5 outCount:(unint64_t *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  objc_opt_class();
  v19 = objc_msgSend_axisForAxisType_(v13, v15, v16, v17, v18, 2);
  v20 = TSUDynamicCast();

  PointArrayForSeries_inAreaFrame_groupIndexSet_cullBadPoints_outCount = objc_msgSend_p_createPointArrayForSeries_inAreaFrame_groupIndexSet_cullBadPoints_outCount_(self, v21, x, y, width, v13, v14, v20 == 0, a6, height);
  return PointArrayForSeries_inAreaFrame_groupIndexSet_cullBadPoints_outCount;
}

- ($9E5495ABC9D17321C375100FE022AE0A)p_centerPointsForSeries:(id)a3 groupIndexSet:(id)a4 nullsUseIntercept:(BOOL)a5 plotAreaFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  v18 = objc_msgSend_axisForAxisType_(v12, v14, v15, v16, v17, 2);
  v19 = TSUDynamicCast();

  v29.receiver = self;
  v29.super_class = TSCHStackedAreaElementBuilder;
  v20 = [(TSCHLineAreaScatterElementBuilder *)&v29 p_centerPointsForSeries:v12 groupIndexSet:v13 nullsUseIntercept:v19 != 0 plotAreaFrame:x, y, width, height];
  v25 = v20;
  if (v19)
  {
    v26 = 0;
    p_var1 = &v20->var1;
    while (v26 < objc_msgSend_count(v13, v21, v22, v23, v24))
    {
      *p_var1 = 1;
      p_var1 += 24;
      ++v26;
    }
  }

  return v25;
}

- (BOOL)p_addBottomStroke:(id *)a3 toPath:(CGPath *)a4 seriesIndex:(unint64_t)a5 withPointsArray:(id *)a6 withCount:(unint64_t)a7
{
  v119 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v7, v8, v9, "[TSCHStackedAreaElementBuilder p_addBottomStroke:toPath:seriesIndex:withPointsArray:withCount:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 2712, 0, "invalid nil value for '%{public}s'", "state");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (CGPathIsEmpty(a4))
  {
    return 1;
  }

  if (!a5)
  {
    v115.receiver = self;
    v115.super_class = TSCHStackedAreaElementBuilder;
    return [(TSCHAreaElementBuilder *)&v115 p_addBottomStroke:a3 toPath:a4 seriesIndex:0 withPointsArray:a6 withCount:a7];
  }

  x = a3->var2.origin.x;
  y = a3->var2.origin.y;
  width = a3->var2.size.width;
  height = a3->var2.size.height;
  var0 = a3->var0;
  v40 = objc_msgSend_axisIDForAxisType_(a3->var1, v31, v32, v33, v34, 1);
  v45 = objc_msgSend_axisForID_(var0, v41, v42, v43, v44, v40);

  if (!v45)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCHStackedAreaElementBuilder p_addBottomStroke:toPath:seriesIndex:withPointsArray:withCount:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v57, v58, v59, v60, v51, v56, 2723, 0, "invalid nil value for '%{public}s'", "xAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
  }

  objc_opt_class();
  v65 = a3->var0;
  v70 = objc_msgSend_axisIDForAxisType_(a3->var1, v66, v67, v68, v69, 2);
  v75 = objc_msgSend_axisForID_(v65, v71, v72, v73, v74, v70);
  v76 = TSUDynamicCast();

  if (!v76)
  {
    v81 = MEMORY[0x277D81150];
    v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, "[TSCHStackedAreaElementBuilder p_addBottomStroke:toPath:seriesIndex:withPointsArray:withCount:]");
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v88, v89, v90, v91, v82, v87, 2725, 0, "invalid nil value for '%{public}s'", "yAxis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94, v95);
  }

  objc_msgSend_interceptForAxis_(v76, v77, v78, v79, v80, v45);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v76, v96, v97, v98, v99);
  v104 = objc_msgSend_seriesAtIndex_(a3->var0, v100, v101, v102, v103, a5 - 1);
  v116 = 0;
  v109 = objc_msgSend_allGroupsIndexSetForSeries_(a3->var0, v105, v106, v107, v108, v104);
  v111 = objc_msgSend_p_createPointArrayForSeries_inAreaFrame_groupIndexSet_outCount_(self, v110, x, y, width, v104, v109, &v116, height);

  if (v116)
  {
    if (v116 == 1)
    {
      v118 = *(v111 + 1);
      v117[0] = *(v111 + 25);
      *(v117 + 7) = v111[4];
      free(v111);
      v111 = malloc_type_calloc(2uLL, 0x28uLL, 0x100004020A5FE2DuLL);
      *v111 = CGRectGetMinX(a3->var2);
      *(v111 + 1) = v118;
      *(v111 + 24) = 1;
      *(v111 + 25) = v117[0];
      v111[4] = *(v117 + 7);
      v111[5] = CGRectGetMaxX(a3->var2);
      *(v111 + 3) = v118;
      *(v111 + 64) = 1;
      *(v111 + 65) = v117[0];
      v111[9] = *(v117 + 7);
      v116 = 2;
    }

    v112 = 0;
    v113 = -1;
    do
    {
      CGPathAddLineToPointSafe();
      ++v112;
      --v113;
    }

    while (v112 < v116);
    goto LABEL_17;
  }

  if (v111)
  {
LABEL_17:
    free(v111);
  }

  return 1;
}

- (unint64_t)countOfSummaryLabelsForGroups:(id)a3 forBodyLayout:(id)a4 outNewTransforms:(CGAffineTransform *)a5 outNewElementSizes:(CGSize *)a6 outNewClipRects:(CGRect *)a7 outNewStrings:(id *)a8
{
  v12 = a3;
  v13 = a4;
  v18 = v13;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (!v13)
  {
    v246 = MEMORY[0x277D81150];
    v247 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCHStackedAreaElementBuilder countOfSummaryLabelsForGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
    v252 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v248, v249, v250, v251, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaScatterElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v246, v253, v254, v255, v256, v247, v252, 2801, 0, "invalid nil value for '%{public}s'", "bodyLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v257, v258, v259, v260);
LABEL_40:
    v261 = 0;
    goto LABEL_71;
  }

  if (!a7 && !a5 && !a8)
  {
    goto LABEL_40;
  }

  v19 = objc_msgSend_chart(v13, v14, v15, v16, v17);
  v24 = objc_msgSend_model(v19, v20, v21, v22, v23);

  v29 = objc_msgSend_chart(v24, v25, v26, v27, v28);
  v34 = objc_msgSend_intValueForProperty_defaultValue_(v29, v30, v31, v32, v33, 1122, 0);

  if (v34)
  {
    v39 = objc_msgSend_seriesList(v24, v35, v36, v37, v38);
    v44 = objc_msgSend_lastObject(v39, v40, v41, v42, v43);

    objc_opt_class();
    v49 = objc_msgSend_axisForAxisType_(v44, v45, v46, v47, v48, 2);
    v50 = TSUDynamicCast();

    if (v50)
    {
      v298 = v50;
      v292 = v44;
      objc_opt_class();
      v55 = objc_msgSend_axisForAxisType_(v44, v51, v52, v53, v54, 1);
      v286 = TSUDynamicCast();

      v60 = objc_msgSend_chart(v24, v56, v57, v58, v59);
      v295 = objc_msgSend_intValueForProperty_defaultValue_(v60, v61, v62, v63, v64, 1123, 0);

      v362 = 0;
      v363 = &v362;
      v364 = 0x5812000000;
      v365 = sub_276340A04;
      v366 = sub_276340A10;
      v367 = &unk_27657B92B;
      memset(v368, 0, sizeof(v368));
      v369 = 1065353216;
      v354 = 0;
      v355 = &v354;
      v356 = 0x5812000000;
      v357 = sub_276340A18;
      v358 = sub_276340A24;
      v359 = &unk_27657B92B;
      memset(v360, 0, sizeof(v360));
      v361 = 1065353216;
      v346 = 0;
      v347 = &v346;
      v348 = 0x5812000000;
      v349 = sub_276340A2C;
      v350 = sub_276340A38;
      v351 = &unk_27657B92B;
      memset(v352, 0, sizeof(v352));
      v353 = 1065353216;
      v338 = 0;
      v339 = &v338;
      v340 = 0x5812000000;
      v341 = sub_27633D9FC;
      v342 = sub_27633DA08;
      v343 = &unk_27657B92B;
      memset(v344, 0, sizeof(v344));
      v345 = 1065353216;
      v290 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v65, COERCE_DOUBLE(0x5812000000), 0.0, v66);
      v71 = objc_msgSend_chart(v24, v67, v68, v69, v70);
      v294 = objc_msgSend_summaryLabelDataFormatter(v71, v72, v73, v74, v75);

      v80 = objc_msgSend_chart(v24, v76, v77, v78, v79);
      v85 = objc_msgSend_intValueForProperty_defaultValue_(v80, v81, v82, v83, v84, 1121, 0);

      v90 = objc_msgSend_chart(v24, v86, v87, v88, v89);
      v293 = objc_msgSend_paragraphStyleAtIndex_(v90, v91, v92, v93, v94, v85);

      v99 = objc_msgSend_chart(v24, v95, v96, v97, v98);
      v104 = objc_msgSend_intValueForProperty_defaultValue_(v99, v100, v101, v102, v103, 1122, 0);

      if (v104)
      {
        v283 = v18;
        v289 = v24;
        v109 = objc_msgSend_allGroupsIndexSetForSeries_(v24, v105, v106, v107, v108, v44);
        v110 = v109;
        if (v12)
        {
          v111 = v12;
        }

        else
        {
          v111 = v109;
        }

        v285 = v111;

        v288 = v110;
        objc_msgSend_rootedLayoutRect(v18, v112, v113, v114, v115);
        v313 = 0;
        v297 = v116;
        v299 = v117;
        v284 = objc_msgSend_p_createPointArrayForSeries_inAreaFrame_groupIndexSet_cullBadPoints_outCount_(self, v118, v119, v116, v120, v44, v110, 1, &v313);
        objc_msgSend_interceptForAxis_(v50, v121, v122, v123, v124, v286);
        objc_msgSend_unitSpaceValueForDataSpaceValue_(v50, v125, v126, v127, v128);
        v296 = v129;
        v291 = objc_msgSend_array(MEMORY[0x277CBEB18], v130, v129, v131, v132);
        v135 = v299;
        if (v313 >= 1)
        {
          v136 = v297 + v299;
          v137 = v313 + 1;
          v138 = &v284[40 * v313 - 8];
          do
          {
            v334 = *v138;
            v139 = *(v138 - 4);
            v140 = *(v138 - 3);
            if (objc_msgSend_containsIndex_(v110, v133, v136, v135, v134))
            {
              TSURectWithPoints();
              if (TSUNearlyContainsRect())
              {
                v141 = v44;
                if (objc_msgSend_intValueForProperty_defaultValue_(v141, v142, v143, v144, v145, 1179, 0))
                {
                  v150 = objc_msgSend_seriesType(v141, v146, v147, v148, v149);
                  v155 = objc_msgSend_defaultSymbolType(v150, v151, v152, v153, v154);
                  v160 = objc_msgSend_intValueForProperty_defaultValue_(v141, v156, v157, v158, v159, 1190, v155);
                }

                else
                {
                  v150 = objc_msgSend_seriesType(v141, v146, v147, v148, v149);
                  v160 = objc_msgSend_defaultSymbolType(v150, v161, v162, v163, v164);
                }

                v165 = v160;

                v170 = objc_msgSend_objectValueForProperty_(v141, v166, v167, v168, v169, 1189);
                objc_msgSend_p_symbolRectWithSymbolPoint_symbolType_symbolSize_stroke_(self, v171, v139, v140, *(v138 - 2), v165, v170);
                v173 = v172;
                v175 = v174;
                v177 = v176;
                v179 = v178;
                objc_msgSend_totalForGroupIndex_(v298, v180, v172, v174, v176, v334);
                v185 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v181, v182, v183, v184);
                v190 = objc_msgSend_locale(v298, v186, v187, v188, v189);
                v195 = objc_msgSend_chartFormattedStringForValue_locale_(v294, v191, v192, v193, v194, v185, v190);

                v196 = *(MEMORY[0x277CBF398] + 16);
                v319 = *MEMORY[0x277CBF398];
                v320 = v196;
                v199 = objc_msgSend_sharedText(TSCHText, v197, *&v319, *&v196, v198);
                objc_msgSend_measureText_paragraphStyle_outErasableFrame_(v199, v200, v201, v202, v203, v195, v293, &v319);
                v205 = v204;
                v207 = v206;

                if ((v297 + v299 - v140) / v299 < v296)
                {
                  v210 = 8;
                }

                else
                {
                  v210 = 4;
                }

                v211 = objc_msgSend_chart(v289, v208, v296, v299, v209);
                objc_msgSend_floatValueForProperty_defaultValue_(v211, v212, 0.0, v213, v214, 1120);

                objc_msgSend_labelPointForPosition_rect_stringSize_symbolType_(self, v215, v173, v175, v177, v210, v165, v179, v205, v207);
                TSUAddPoints();
                v217 = v216;
                v219 = v218;
                TSURectWithOriginAndSize();
                v225 = v221;
                v226 = v222;
                v227 = v223;
                v228 = v224;
                if (v295 || objc_msgSend_p_testIntersectionOfRect_againstSortedRects_withInset_isVertical_(self, v220, v221, v222, v223, v291, 1, v224, 1.0))
                {
                  v229 = v363;
                  CGAffineTransformMakeTranslation(&v326, v217, v219);
                  v330 = v334;
                  v331 = v326;
                  sub_2763448F0(v229 + 6, &v330);
                  v330 = v334;
                  v331.a = v205;
                  v331.b = v207;
                  sub_276344B2C(v355 + 6, &v330);
                  v330 = v334;
                  *&v331.a = v319;
                  *&v331.c = v320;
                  sub_276344D60(v347 + 6, &v330);
                  v234 = v195;
                  if (!v195)
                  {
                    v287 = objc_msgSend_null(MEMORY[0x277CBEB68], v230, v231, v232, v233);
                    v234 = v287;
                  }

                  v235 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v230, v231, v232, v233, v334);
                  objc_msgSend_setObject_forKeyedSubscript_(v290, v236, v237, v238, v239, v234, v235);

                  if (!v195)
                  {
                  }

                  sub_276344308(v339 + 6, &v334);
                  v241 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v240, v225, v226, v227, v228);
                  objc_msgSend_p_insertRectValue_intoArray_isVertical_showAll_(self, v242, v243, v244, v245, v241, v291, 1, v295 != 0);
                }

                v44 = v292;
                v110 = v288;
              }
            }

            --v137;
            v138 -= 5;
          }

          while (v137 > 1);
        }

        free(v284);

        v18 = v283;
        v24 = v289;
      }

      else
      {
        v285 = v12;
      }

      v334 = 0;
      v335 = &v334;
      v336 = 0x2020000000;
      v337 = 0;
      v330 = 0;
      *&v331.a = &v330;
      *&v331.b = 0x4812000000;
      *&v331.c = sub_276340A40;
      *&v331.d = sub_276340A64;
      *&v331.tx = &unk_27657B92B;
      v333 = 0;
      v331.ty = 0.0;
      ty = 0.0;
      v326.a = 0.0;
      *&v326.b = &v326;
      *&v326.c = 0x4812000000;
      *&v326.d = sub_276340A7C;
      *&v326.tx = sub_276340AA0;
      *&v326.ty = &unk_27657B92B;
      v328 = 0;
      v329 = 0;
      v327 = 0;
      *&v319 = 0;
      *(&v319 + 1) = &v319;
      *&v320 = 0x4812000000;
      *(&v320 + 1) = sub_276340AB8;
      v321 = sub_276340ADC;
      v322 = &unk_27657B92B;
      v324 = 0;
      v325 = 0;
      __p = 0;
      v313 = 0;
      v314 = &v313;
      v315 = 0x3032000000;
      v316 = sub_27633DA10;
      v317 = sub_27633DA20;
      v318 = objc_msgSend_array(MEMORY[0x277CBEB18], v105, COERCE_DOUBLE(0x3032000000), v107, v108);
      v302[0] = MEMORY[0x277D85DD0];
      v302[1] = 3221225472;
      v302[2] = sub_2763434F4;
      v302[3] = &unk_27A6B9C68;
      v304 = &v338;
      v305 = &v330;
      v306 = &v362;
      v307 = &v326;
      v308 = &v354;
      v309 = &v319;
      v310 = &v346;
      v311 = &v313;
      v262 = v290;
      v303 = v262;
      v312 = &v334;
      v12 = v285;
      objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v285, v263, v264, v265, v266, 2, v302);
      v271 = v335;
      v50 = v298;
      if (a5)
      {
        v267 = v335[3];
        if (v267)
        {
          *a5 = malloc_type_calloc(0x30uLL, v267, 0x1000040EED21634uLL);
          v271 = v335;
          if (v335[3])
          {
            v272 = 0;
            v273 = 0;
            do
            {
              v274 = (*(*&v331.a + 48) + v272 * 48);
              v275 = &(*a5)[v272];
              v268 = *v274;
              v269 = v274[1];
              v270 = v274[2];
              *&v275->c = v269;
              *&v275->tx = v270;
              *&v275->a = v268;
              ++v273;
              ++v272;
            }

            while (v273 < v271[3]);
          }
        }
      }

      if (a6)
      {
        v267 = v271[3];
        if (v267)
        {
          *a6 = malloc_type_calloc(0x10uLL, v267, 0x1000040451B5BE8uLL);
          v271 = v335;
          if (v335[3])
          {
            v276 = 0;
            v277 = 0;
            do
            {
              v268 = *(*(*&v326.b + 48) + v276 * 16);
              (*a6)[v276] = v268;
              ++v277;
              v271 = v335;
              ++v276;
            }

            while (v277 < v335[3]);
          }
        }
      }

      if (a7)
      {
        v267 = v271[3];
        if (v267)
        {
          *a7 = malloc_type_calloc(0x20uLL, v267, 0x1000040E0EAB150uLL);
          v271 = v335;
          if (v335[3])
          {
            v278 = 0;
            v279 = 0;
            do
            {
              v280 = (*(*(&v319 + 1) + 48) + v278 * 32);
              v281 = &(*a7)[v278];
              v268 = *v280;
              v269 = v280[1];
              v281->origin = *v280;
              v281->size = v269;
              ++v279;
              v271 = v335;
              ++v278;
            }

            while (v279 < v335[3]);
          }
        }
      }

      if (a8 && v271[3])
      {
        *a8 = objc_msgSend_subarrayWithRange_(v314[5], v267, v268.width, v269.width, v270.width, 0);
        v271 = v335;
      }

      v261 = v271[3];

      _Block_object_dispose(&v313, 8);
      _Block_object_dispose(&v319, 8);
      if (__p)
      {
        v324 = __p;
        operator delete(__p);
      }

      _Block_object_dispose(&v326, 8);
      if (v327)
      {
        v328 = v327;
        operator delete(v327);
      }

      _Block_object_dispose(&v330, 8);
      if (*&v331.ty)
      {
        ty = v331.ty;
        operator delete(*&v331.ty);
      }

      _Block_object_dispose(&v334, 8);

      _Block_object_dispose(&v338, 8);
      sub_276343E2C(v344);
      _Block_object_dispose(&v346, 8);
      sub_276343E2C(v352);
      _Block_object_dispose(&v354, 8);
      sub_276343E2C(v360);
      _Block_object_dispose(&v362, 8);
      sub_276343E2C(v368);

      v44 = v292;
    }

    else
    {
      v261 = 0;
    }
  }

  else
  {
    v261 = 0;
  }

LABEL_71:
  return v261;
}

@end