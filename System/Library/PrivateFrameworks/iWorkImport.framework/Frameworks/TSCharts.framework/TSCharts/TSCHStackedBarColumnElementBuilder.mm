@interface TSCHStackedBarColumnElementBuilder
- (CGPath)newRoundedRectPathWithRect:(CGRect)a3 chartInfo:(id)a4 series:(id)a5 groupIndex:(unint64_t)a6 isVertical:(BOOL)a7 forGroups:(id)a8 forBodyLayout:(id)a9;
- (double)p_beginValueForSeries:(id)a3 groupIndex:(unint64_t)a4 unitSpaceIntercept:(double)a5 relativelyPositive:(BOOL)a6 valueAxis:(id)a7;
- (id)p_stackedRectsWithChartInfo:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5;
- (unint64_t)countOfSummaryLabelsForGroups:(id)a3 forBodyLayout:(id)a4 outNewTransforms:(CGAffineTransform *)a5 outNewElementSizes:(CGSize *)a6 outNewClipRects:(CGRect *)a7 outNewStrings:(id *)a8;
@end

@implementation TSCHStackedBarColumnElementBuilder

- (double)p_beginValueForSeries:(id)a3 groupIndex:(unint64_t)a4 unitSpaceIntercept:(double)a5 relativelyPositive:(BOOL)a6 valueAxis:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a7;
  v18 = objc_msgSend_seriesIndex(v11, v13, v14, v15, v16);
  if (v18)
  {
    v23 = objc_msgSend_model(v11, v17, v19, v20, v21);
    v27 = v18 - 1;
    while (1)
    {
      v28 = objc_msgSend_seriesAtIndex_(v23, v22, v24, v25, v26, v27);
      objc_msgSend_unitSpaceValueForSeries_groupIndex_(v12, v29, v30, v31, v32, v28, a4);
      v34 = v33;
      v35 = v33 >= a5 || v8;
      v36 = v33 >= a5 && v8;
      if (v35 != 1 || v36)
      {
        break;
      }

      if (--v27 >= v18)
      {
        goto LABEL_14;
      }
    }

    a5 = v34;
LABEL_14:
  }

  return a5;
}

- (id)p_stackedRectsWithChartInfo:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v57 = a4;
  v58 = a5;
  v54 = v7;
  v12 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9, v10, v11);
  v17 = objc_msgSend_model(v7, v13, v14, v15, v16);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v21 = objc_msgSend_seriesList(v17, v18, 0.0, v19, v20);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, v24, v25, &v61, v65, 16);
  if (v27)
  {
    v55 = *v62;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v62 != v55)
        {
          objc_enumerationMutation(v21);
        }

        v32 = *(*(&v61 + 1) + 8 * i);
        v59 = 0;
        v60 = 0;
        v33 = objc_msgSend_countOfBarRectsForSeries_forGroups_forBodyLayout_outNewGroupIndexArray_outNewElementRectsArray_outNewClipRectsArray_(self, v26, v28, v29, v30, v32, v57, v58, &v59, &v60, 0);
        v38 = objc_msgSend_seriesIndex(v32, v34, v35, v36, v37);
        v44 = objc_msgSend_barModelCacheForSeries_(v17, v39, v40, v41, v42, v38);
        v45 = v21;
        if (v33)
        {
          v46 = 0;
          for (j = 0; j != v33; ++j)
          {
            objc_msgSend_updateStackRectsDictionary_withElementRect_groupIndex_barModelCache_(TSCHRenderUtilities, v43, *(v60 + v46), *(v60 + v46 + 8), *(v60 + v46 + 16), v12, *(v59 + j), v44, *(v60 + v46 + 24));
            v46 += 32;
          }
        }

        if (v60)
        {
          free(v60);
        }

        v21 = v45;
        if (v59)
        {
          free(v59);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v26, v28, v29, v30, &v61, v65, 16);
    }

    while (v27);
  }

  v52 = objc_msgSend_copy(v12, v48, v49, v50, v51);

  return v52;
}

- (CGPath)newRoundedRectPathWithRect:(CGRect)a3 chartInfo:(id)a4 series:(id)a5 groupIndex:(unint64_t)a6 isVertical:(BOOL)a7 forGroups:(id)a8 forBodyLayout:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  v21 = sub_276348D78(a5, a6);
  v26 = objc_msgSend_p_stackedRectsWithChartInfo_forGroups_forBodyLayout_(self, v22, v23, v24, v25, v18, v19, v20);
  v27 = sub_2762A204C(a6, v26, v18, v21, self->super._vertical);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v32 = CGRectStandardize(v31);
  v29 = sub_2762A1B4C(v27, v28, v32.origin.x, v32.origin.y, v32.size.width, v32.size.height);
  CGPathRelease(v27);

  return v29;
}

- (unint64_t)countOfSummaryLabelsForGroups:(id)a3 forBodyLayout:(id)a4 outNewTransforms:(CGAffineTransform *)a5 outNewElementSizes:(CGSize *)a6 outNewClipRects:(CGRect *)a7 outNewStrings:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v20 = v15;
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

  if (v15)
  {
    if (a7 || a5 || a8)
    {
      v21 = objc_msgSend_chart(v15, v16, v17, v18, v19);
      v26 = objc_msgSend_model(v21, v22, v23, v24, v25);

      v31 = objc_msgSend_chart(v26, v27, v28, v29, v30);
      v36 = objc_msgSend_intValueForProperty_defaultValue_(v31, v32, v33, v34, v35, 1122, 0);

      if (!v36)
      {
        a8 = 0;
LABEL_54:

        goto LABEL_55;
      }

      v41 = objc_msgSend_seriesList(v26, v37, v38, v39, v40);
      v46 = objc_msgSend_count(v41, v42, v43, v44, v45) - 1;

      v51 = objc_msgSend_barModelCacheForSeries_(v26, v47, v48, v49, v50, v46);
      v239 = v51;
      if (v51)
      {
        if (objc_msgSend_summaryValueLabelsOn(v51, v52, v53, v54, v55))
        {
          v312[0] = 0;
          v312[1] = v312;
          v312[2] = 0x5812000000;
          v312[3] = sub_27634A224;
          v312[4] = sub_27634A230;
          v312[5] = &unk_27657B92B;
          memset(v313, 0, sizeof(v313));
          v314 = 1065353216;
          v309[0] = 0;
          v309[1] = v309;
          v309[2] = 0x5812000000;
          v309[3] = sub_27634A238;
          v309[4] = sub_27634A244;
          v309[5] = &unk_27657B92B;
          memset(v310, 0, sizeof(v310));
          v311 = 1065353216;
          v306[0] = 0;
          v306[1] = v306;
          v306[2] = 0x5812000000;
          v306[3] = sub_27634A24C;
          v306[4] = sub_27634A258;
          v306[5] = &unk_27657B92B;
          memset(v307, 0, sizeof(v307));
          v308 = 1065353216;
          v303[0] = 0;
          v303[1] = v303;
          v303[2] = 0x5812000000;
          v303[3] = sub_27634A260;
          v303[4] = sub_27634A26C;
          v303[5] = &unk_27657B92B;
          memset(v304, 0, sizeof(v304));
          v305 = 1065353216;
          v236 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v56, COERCE_DOUBLE(0x5812000000), 0.0, v57);
          v62 = objc_msgSend_seriesList(v26, v58, v59, v60, v61);
          v67 = objc_msgSend_lastObject(v62, v63, v64, v65, v66);

          v238 = v67;
          v72 = objc_msgSend_seriesType(v67, v68, v69, v70, v71);
          v235 = objc_msgSend_elementBuilder(v72, v73, v74, v75, v76);

          v81 = objc_msgSend_allGroupsIndexSetForSeries_(v26, v77, v78, v79, v80, v67);
          v234 = v81;
          if (v14)
          {
            v82 = v14;
          }

          else
          {
            v82 = v81;
          }

          v233 = v82;

          v237 = objc_msgSend_valueAxis(v239, v83, v84, v85, v86);
          if (!v237)
          {
            v91 = MEMORY[0x277D81150];
            v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v88, v89, v90, "[TSCHStackedBarColumnElementBuilder countOfSummaryLabelsForGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
            v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v98, v99, v100, v101, v92, v97, 1353, 0, "invalid nil value for '%{public}s'", "valueAxis");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v102, v103, v104, v105);
          }

          objc_opt_class();
          v107 = TSUDynamicCast();
          if (v107)
          {
            v232 = v107;
            v111 = objc_msgSend_chart(v26, v106, v108, v109, v110);
            v229 = objc_msgSend_intValueForProperty_defaultValue_(v111, v112, v113, v114, v115, 1123, 0) != 0;

            v120 = objc_msgSend_chart(v26, v116, v117, v118, v119);
            v231 = objc_msgSend_summaryLabelDataFormatter(v120, v121, v122, v123, v124);

            v129 = objc_msgSend_chart(v26, v125, v126, v127, v128);
            v134 = objc_msgSend_intValueForProperty_defaultValue_(v129, v130, v131, v132, v133, 1121, 0);

            v139 = objc_msgSend_chart(v26, v135, v136, v137, v138);
            v230 = objc_msgSend_paragraphStyleAtIndex_(v139, v140, v141, v142, v143, v134);

            objc_msgSend_rootedLayoutRect(v20, v144, v145, v146, v147);
            v149 = v148;
            v151 = v150;
            v153 = v152;
            v155 = v154;
            v299[0] = MEMORY[0x277D85DD0];
            v299[1] = 3221225472;
            v299[2] = sub_27634EF74;
            v299[3] = &unk_27A6B9DC8;
            v299[4] = self;
            v156 = v26;
            v300 = v156;
            v157 = v234;
            v301 = v157;
            v302 = v20;
            v228 = objc_msgSend_barStackRectsWithFrame_withBlock_(v156, v158, v149, v151, v153, v299, v155);
            v297[0] = 0;
            v297[1] = v297;
            v297[2] = 0x3032000000;
            v297[3] = sub_27634A274;
            v297[4] = sub_27634A284;
            v298 = objc_msgSend_array(MEMORY[0x277CBEB18], v159, COERCE_DOUBLE(0x3032000000), v160, v161);
            v282[0] = MEMORY[0x277D85DD0];
            v282[1] = 3221225472;
            v282[2] = sub_27634EFEC;
            v282[3] = &unk_27A6B9DF0;
            v226 = v228;
            v283 = v226;
            v284 = self;
            v285 = v232;
            v227 = v231;
            v286 = v227;
            v225 = v230;
            v287 = v225;
            v288 = v156;
            v296 = v229;
            v289 = v235;
            v291 = v297;
            v292 = v312;
            v293 = v309;
            v294 = v306;
            v162 = v236;
            v290 = v162;
            v295 = v303;
            objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v157, v163, v164, v165, v166, 2, v282);
            v278 = 0;
            v279 = &v278;
            v280 = 0x2020000000;
            v281 = 0;
            v269 = 0;
            v270 = &v269;
            v271 = 0x4812000000;
            v272 = sub_27634AB14;
            v273 = sub_27634AB38;
            v274 = &unk_27657B92B;
            v276 = 0;
            v277 = 0;
            v275 = 0;
            v260 = 0;
            v261 = &v260;
            v262 = 0x4812000000;
            v263 = sub_27634AB50;
            v264 = sub_27634AB74;
            v265 = &unk_27657B92B;
            v267 = 0;
            v268 = 0;
            v266 = 0;
            v251 = 0;
            v252 = &v251;
            v253 = 0x4812000000;
            v254 = sub_27634AB8C;
            v255 = sub_27634ABB0;
            v256 = &unk_27657B92B;
            v258 = 0;
            v259 = 0;
            __p = 0;
            v170 = objc_msgSend_array(MEMORY[0x277CBEB18], v167, COERCE_DOUBLE(0x4812000000), v168, v169);
            v240[0] = MEMORY[0x277D85DD0];
            v240[1] = 3221225472;
            v240[2] = sub_27634F3FC;
            v240[3] = &unk_27A6B9D50;
            v243 = v303;
            v244 = &v269;
            v245 = v312;
            v246 = &v260;
            v247 = v309;
            v248 = &v251;
            v249 = v306;
            v171 = v170;
            v241 = v171;
            v242 = v162;
            v250 = &v278;
            v172 = v233;
            objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v233, v173, v174, v175, v176, 2, v240);
            v181 = v279;
            if (a5)
            {
              *a5 = malloc_type_calloc(0x30uLL, v279[3], 0x1000040EED21634uLL);
              v181 = v279;
              if (v279[3])
              {
                v182 = 0;
                v183 = 0;
                do
                {
                  v184 = (v270[6] + v182 * 48);
                  v185 = &(*a5)[v182];
                  v178 = *v184;
                  v179 = v184[1];
                  v180 = v184[2];
                  *&v185->c = v179;
                  *&v185->tx = v180;
                  *&v185->a = v178;
                  ++v183;
                  ++v182;
                }

                while (v183 < v181[3]);
              }
            }

            if (a6)
            {
              *a6 = malloc_type_calloc(0x10uLL, v181[3], 0x1000040451B5BE8uLL);
              v181 = v279;
              if (v279[3])
              {
                v186 = 0;
                v187 = 0;
                do
                {
                  v178 = *(v261[6] + v186 * 16);
                  (*a6)[v186] = v178;
                  ++v187;
                  v181 = v279;
                  ++v186;
                }

                while (v187 < v279[3]);
              }
            }

            if (a7)
            {
              v177 = v181[3];
              if (v177)
              {
                v188 = malloc_type_calloc(0x20uLL, v177, 0x1000040E0EAB150uLL);
                v181 = v279;
                v189 = v279[3];
                *a7 = v188;
                if (v189)
                {
                  v190 = 0;
                  v191 = 0;
                  do
                  {
                    v192 = (v252[6] + v190 * 32);
                    v193 = &(*a7)[v190];
                    v178 = *v192;
                    v179 = v192[1];
                    v193->origin = *v192;
                    v193->size = v179;
                    ++v191;
                    v181 = v279;
                    ++v190;
                  }

                  while (v191 < v279[3]);
                }
              }

              else
              {
                *a7 = 0;
              }
            }

            if (a8 && v181[3])
            {
              *a8 = objc_msgSend_subarrayWithRange_(v171, v177, v178.width, v179.width, v180.width, 0);
              v181 = v279;
            }

            a8 = v181[3];

            _Block_object_dispose(&v251, 8);
            if (__p)
            {
              v258 = __p;
              operator delete(__p);
            }

            _Block_object_dispose(&v260, 8);
            v107 = v232;
            if (v266)
            {
              v267 = v266;
              operator delete(v266);
            }

            _Block_object_dispose(&v269, 8);
            if (v275)
            {
              v276 = v275;
              operator delete(v275);
            }

            _Block_object_dispose(&v278, 8);

            _Block_object_dispose(v297, 8);
          }

          else
          {
            a8 = 0;
            v172 = v233;
          }

          _Block_object_dispose(v303, 8);
          sub_276343E2C(v304);
          _Block_object_dispose(v306, 8);
          sub_276343E2C(v307);
          _Block_object_dispose(v309, 8);
          sub_276343E2C(v310);
          _Block_object_dispose(v312, 8);
          sub_276343E2C(v313);
          goto LABEL_53;
        }
      }

      else
      {
        v209 = MEMORY[0x277D81150];
        v210 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "[TSCHStackedBarColumnElementBuilder countOfSummaryLabelsForGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
        v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v211, v212, v213, v214, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v209, v216, v217, v218, v219, v210, v215, 1332, 0, "invalid nil value for '%{public}s'", "barModelCache");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v220, v221, v222, v223);
      }

      a8 = 0;
      v172 = v14;
LABEL_53:

      v14 = v172;
      goto LABEL_54;
    }
  }

  else
  {
    v194 = MEMORY[0x277D81150];
    v195 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHStackedBarColumnElementBuilder countOfSummaryLabelsForGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
    v200 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v196, v197, v198, v199, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v194, v201, v202, v203, v204, v195, v200, 1317, 0, "invalid nil value for '%{public}s'", "bodyLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v205, v206, v207, v208);
    a8 = 0;
  }

LABEL_55:

  return a8;
}

@end