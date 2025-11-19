@interface TSCHBarColumnElementBuilder
+ (void)calculateGapsForChartModel:(id)a3 forTotalWidth:(float)a4 outBarWidth:(float *)a5 outBarGroupGap:(float *)a6 outBarGap:(float *)a7;
- (CGPath)newRoundedRectPathWithRect:(CGRect)a3 chartInfo:(id)a4 series:(id)a5 groupIndex:(unint64_t)a6 isVertical:(BOOL)a7 forGroups:(id)a8 forBodyLayout:(id)a9;
- (CGRect)nudgeBarElementFrame:(CGRect)a3 inPlotAreaFrame:(CGRect)a4 usingBarModelCache:(id)a5 unitSpaceValueBegin:(double)a6 unitSpaceValueEnd:(double)a7 withViewScale:(double)a8;
- (CGRect)p_createBarRectInFrame:(CGRect)a3 forSeries:(id)a4 groupIndex:(unint64_t)a5 count:(unint64_t)a6 valueAxis:(id)a7 groupAxis:(id)a8 barWidth:(float)a9 barGroupGap:(float)a10 barGap:(float)a11;
- (TSCHBarColumnElementBuilder)init;
- (TSCHBarColumnElementBuilder)initWithVertical:(BOOL)a3;
- (unint64_t)countOfBarRectsForSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewGroupIndexArray:(unint64_t *)a6 outNewElementRectsArray:(CGRect *)a7 outNewClipRectsArray:(CGRect *)a8;
- (unint64_t)countOfElementsInSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewElementBounds:(CGRect *)a6 outNewClipRects:(CGRect *)a7 outNewElementPaths:(const CGPath *)a8 outSelectionKnobLocations:(id *)a9 forHighlightPath:(BOOL)a10;
- (unint64_t)countOfErrorBarsInSeries:(id)a3 forGroups:(id)a4 forAxisID:(id)a5 forBodyLayout:(id)a6 outClipRect:(CGRect *)a7 outNewErrorBarDescriptors:(id *)a8;
- (unint64_t)countOfLabelsForSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewTransforms:(CGAffineTransform *)a6 outNewElementSizes:(CGSize *)a7 outNewClipRects:(CGRect *)a8 outNewStrings:(id *)a9;
- (void)p_calcGapsForBodyLayout:(id)a3 elementCount:(unint64_t)a4 outBarWidth:(float *)a5 outBarGroupGap:(float *)a6 outBarGap:(float *)a7;
- (void)p_nudgeBarElementFrame:(CGRect *)a3 inPlotAreaFrame:(CGRect)a4 usingBarModelCache:(id)a5 unitSpaceValueBegin:(double)a6 unitSpaceValueEnd:(double)a7 withViewScale:(double)a8;
- (void)p_trendlineInfoForSeries:(id)a3 forBodyLayout:(id)a4 outVertical:(BOOL *)a5 outOffsetInBody:(double *)a6;
@end

@implementation TSCHBarColumnElementBuilder

- (TSCHBarColumnElementBuilder)init
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHBarColumnElementBuilder init]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 61, 0, "Not the designated initializer.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  v23.receiver = self;
  v23.super_class = TSCHBarColumnElementBuilder;
  v21 = [(TSCHBarColumnElementBuilder *)&v23 init];
  if (v21)
  {
  }

  return 0;
}

- (TSCHBarColumnElementBuilder)initWithVertical:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TSCHBarColumnElementBuilder;
  result = [(TSCHBarColumnElementBuilder *)&v5 init];
  if (result)
  {
    result->_vertical = a3;
  }

  return result;
}

- (CGPath)newRoundedRectPathWithRect:(CGRect)a3 chartInfo:(id)a4 series:(id)a5 groupIndex:(unint64_t)a6 isVertical:(BOOL)a7 forGroups:(id)a8 forBodyLayout:(id)a9
{
  v9 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = a5;
  objc_msgSend_floatValueForProperty_defaultValue_(v16, v18, 0.0, v19, v20, 1111);
  v22 = *&v21;
  v26 = objc_msgSend_intValueForProperty_defaultValue_(v16, v23, v21, v24, v25, 1110, 0);
  LODWORD(a6) = sub_276348D78(v17, a6);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v30 = CGRectStandardize(v29);
  v27 = sub_2762A1C64(v9, v26 != 0, a6, 1, v30.origin.x, v30.origin.y, v30.size.width, v30.size.height, v22);

  return v27;
}

- (unint64_t)countOfElementsInSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewElementBounds:(CGRect *)a6 outNewClipRects:(CGRect *)a7 outNewElementPaths:(const CGPath *)a8 outSelectionKnobLocations:(id *)a9 forHighlightPath:(BOOL)a10
{
  v14 = a3;
  v15 = a4;
  v17 = a5;
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

  if (a9)
  {
    *a9 = 0;
  }

  if (!v14)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCHBarColumnElementBuilder countOfElementsInSeries:forGroups:forBodyLayout:outNewElementBounds:outNewClipRects:outNewElementPaths:outSelectionKnobLocations:forHighlightPath:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v47, v48, v49, v50, v41, v46, 113, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
    v55 = 0;
    goto LABEL_71;
  }

  v104 = v15;
  v105 = v17;
  v21 = objc_msgSend_seriesType(v14, v16, v18, v19, v20);
  isVertical = objc_msgSend_isVertical(v21, v22, v23, v24, v25);
  v103 = a6;

  v116 = 0;
  v117 = 0;
  v115 = 0;
  if (a6 | a8 | a9)
  {
    v31 = &v117;
  }

  else
  {
    v31 = 0;
  }

  if (a7)
  {
    v32 = objc_msgSend_countOfBarRectsForSeries_forGroups_forBodyLayout_outNewGroupIndexArray_outNewElementRectsArray_outNewClipRectsArray_(self, v27, v28, v29, v30, v14, v15, v17, &v115, v31, &v116);
  }

  else
  {
    v32 = objc_msgSend_countOfBarRectsForSeries_forGroups_forBodyLayout_outNewGroupIndexArray_outNewElementRectsArray_outNewClipRectsArray_(self, v27, v28, v29, v30, v14, v15, v17, &v115, v31, 0);
  }

  v35 = v32;
  y = *(MEMORY[0x277CBF398] + 8);
  x = *MEMORY[0x277CBF398];
  v37 = *(MEMORY[0x277CBF398] + 16);
  v36 = *(MEMORY[0x277CBF398] + 24);
  height = v36;
  width = v37;
  if (!a8)
  {
    Mutable = 0;
    if (a9)
    {
      goto LABEL_18;
    }

LABEL_21:
    v39 = 0;
    goto LABEL_22;
  }

  Mutable = CGPathCreateMutable();
  if (!a9)
  {
    goto LABEL_21;
  }

LABEL_18:
  v39 = objc_msgSend_array(MEMORY[0x277CBEB18], v33, v36, v37, v34);
LABEL_22:
  objc_msgSend_subSelectionKnobRadius(TSCHRenderUtilities, v33, v36, v37, v34);
  if (v35)
  {
    v57 = 0;
    v109 = 1.79769313e308;
    v58 = 24;
    v108 = v56 + v56;
    v114.size.width = width;
    v114.size.height = height;
    v114.origin.x = x;
    v114.origin.y = y;
    do
    {
      if (a8)
      {
        if (v117)
        {
          v118.origin.y = y;
          v118.origin.x = x;
          v118.size.height = height;
          v118.size.width = width;
          v119 = CGRectUnion(v118, *(v117 + v58 - 24));
          y = v119.origin.y;
          x = v119.origin.x;
          height = v119.size.height;
          width = v119.size.width;
          if (Mutable)
          {
            v60 = v14;
            v61 = objc_msgSend_chartInfo(v14, v59, v119.origin.x, v119.origin.y, v119.size.width);
            v66 = v61;
            if (a10 && objc_msgSend_supportsAndHasRoundedCorners(v61, v62, v63, v64, v65))
            {
              isVertical_forGroups_forBodyLayout = objc_msgSend_newRoundedRectPathWithRect_chartInfo_series_groupIndex_isVertical_forGroups_forBodyLayout_(self, v67, *(v117 + v58 - 24), *(v117 + v58 - 16), *(v117 + v58 - 8), v66, v14, *(v115 + v57), isVertical, v104, v105, *(v117 + v58));
              CGPathAddPathSafe();
              CGPathRelease(isVertical_forGroups_forBodyLayout);
            }

            else
            {
              CGPathAddRectSafe();
            }

            v14 = v60;
          }
        }
      }

      if (v116)
      {
        v114 = CGRectUnion(v114, *(v116 + v58 - 24));
      }

      if (v39 && v117)
      {
        v69 = *(v117 + v58 - 24);
        v70 = *(v117 + v58 - 16);
        v71 = *(v117 + v58 - 8);
        v72 = *(v117 + v58);
        v120.origin.x = v69;
        v120.origin.y = v70;
        v120.size.width = v71;
        v120.size.height = v72;
        MinX = CGRectGetMinX(v120);
        v121.origin.x = v69;
        v121.origin.y = v70;
        v121.size.width = v71;
        v121.size.height = v72;
        MinY = CGRectGetMinY(v121);
        TSUCenterOfRect();
        v77 = v75;
        v78 = v76;
        v79 = isVertical ? v75 : v76;
        if (v35 < qword_280A45390 || v109 - v79 > v108)
        {
          v109 = v79;
          TSURectGetMaxPoint();
          if (isVertical)
          {
            v84 = v77;
          }

          else
          {
            v84 = MinX;
          }

          if (isVertical)
          {
            v85 = v77;
          }

          else
          {
            v83 = v78;
            v85 = v82;
          }

          if (isVertical)
          {
            v86 = MinY;
          }

          else
          {
            v86 = v78;
          }

          v87 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v81, v84, v83, v84);
          objc_msgSend_addObject_(v39, v88, v89, v90, v91, v87);

          v94 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v92, v85, v86, v93);
          objc_msgSend_addObject_(v39, v95, v96, v97, v98, v94);
        }
      }

      ++v57;
      v58 += 32;
    }

    while (v35 != v57);
  }

  else
  {
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
  }

  v17 = v105;
  if (v103)
  {
    v99 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040E0EAB150uLL);
    *v103 = v99;
    v99->origin.x = x;
    v99->origin.y = y;
    v99->size.width = width;
    v99->size.height = height;
  }

  if (a7)
  {
    v100 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040E0EAB150uLL);
    *a7 = v100;
    v100->origin.x = v114.origin.x;
    v100->origin.y = v114.origin.y;
    v100->size.width = v114.size.width;
    v100->size.height = v114.size.height;
  }

  if (a8)
  {
    *a8 = malloc_type_calloc(8uLL, 1uLL, 0x6004044C4A2DFuLL);
    **a8 = CGPathRetain(Mutable);
  }

  if (a9)
  {
    v101 = v39;
    *a9 = v39;
  }

  CGPathRelease(Mutable);
  if (v117)
  {
    free(v117);
  }

  if (v116)
  {
    free(v116);
  }

  if (v115)
  {
    free(v115);
  }

  v55 = 1;
  v15 = v104;
LABEL_71:

  return v55;
}

- (unint64_t)countOfLabelsForSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewTransforms:(CGAffineTransform *)a6 outNewElementSizes:(CGSize *)a7 outNewClipRects:(CGRect *)a8 outNewStrings:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v217 = a5;
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

  if (a9)
  {
    *a9 = 0;
  }

  if (!v14)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHBarColumnElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 244, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }

  if (v217)
  {
    v35 = 0;
    if (v14 && a8 | a6 | a9)
    {
      v214 = objc_msgSend_model(v14, v16, v17, v18, v19);
      v40 = objc_msgSend_seriesIndex(v14, v36, v37, v38, v39);
      v45 = objc_msgSend_barModelCacheForSeries_(v214, v41, v42, v43, v44, v40);
      v215 = v45;
      if (v45)
      {
        if (objc_msgSend_valueLabelsOn(v45, v46, v47, v48, v49))
        {
          v297[0] = 0;
          v297[1] = v297;
          v297[2] = 0x5812000000;
          v297[3] = sub_27634A224;
          v297[4] = sub_27634A230;
          v297[5] = &unk_27657B92B;
          memset(v298, 0, sizeof(v298));
          v299 = 1065353216;
          v294[0] = 0;
          v294[1] = v294;
          v294[2] = 0x5812000000;
          v294[3] = sub_27634A238;
          v294[4] = sub_27634A244;
          v294[5] = &unk_27657B92B;
          memset(v295, 0, sizeof(v295));
          v296 = 1065353216;
          v291[0] = 0;
          v291[1] = v291;
          v291[2] = 0x5812000000;
          v291[3] = sub_27634A24C;
          v291[4] = sub_27634A258;
          v291[5] = &unk_27657B92B;
          memset(v292, 0, sizeof(v292));
          v293 = 1065353216;
          v288[0] = 0;
          v288[1] = v288;
          v288[2] = 0x5812000000;
          v288[3] = sub_27634A260;
          v288[4] = sub_27634A26C;
          v288[5] = &unk_27657B92B;
          memset(v289, 0, sizeof(v289));
          v290 = 1065353216;
          v210 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v50, COERCE_DOUBLE(0x5812000000), 0.0, v51);
          v56 = objc_msgSend_allGroupsIndexSetForSeries_(v214, v52, v53, v54, v55, v14);
          v211 = v56;
          if (v15)
          {
            v57 = v15;
          }

          else
          {
            v57 = v56;
          }

          v209 = v57;

          v62 = objc_msgSend_numberOfGroupsInSeries_(v214, v58, v59, v60, v61, v14);
          v213 = objc_msgSend_groupAxis(v215, v63, v64, v65, v66);
          v207 = v62;
          v212 = objc_msgSend_valueAxis(v215, v67, v68, v69, v70);
          if (!v212)
          {
            v75 = MEMORY[0x277D81150];
            v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, "[TSCHBarColumnElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
            v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v82, v83, v84, v85, v76, v81, 274, 0, "invalid nil value for '%{public}s'", "valueAxis");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v87, v88, v89);
          }

          objc_msgSend_interceptForAxis_(v212, v71, v72, v73, v74, v213);
          v91 = v90;
          objc_msgSend_unitSpaceIntercept(v215, v92, v90, v93, v94);
          v96 = v95;
          v100 = objc_msgSend_chartInfo(v217, v97, v95, v98, v99);
          v105 = objc_msgSend_chartType(v100, v101, v102, v103, v104);
          v110 = objc_msgSend_drawValueLabelsForZero(v105, v106, v107, v108, v109);

          objc_msgSend_rootedLayoutRect(v217, v111, v112, v113, v114);
          v120 = v119;
          v121 = v116;
          v122 = v117;
          v123 = v118;
          if (self->_vertical)
          {
            v124 = v117;
          }

          else
          {
            v124 = v118 + -2.0;
          }

          objc_msgSend_barWidthRatio(v215, v115, v118 + -2.0, v116, v117);
          v126 = v125;
          v130 = objc_msgSend_intValueForProperty_defaultValue_(v14, v127, v125, v128, v129, 1209, 0) != 0;
          v206 = objc_msgSend_seriesType(v14, v131, v132, v133, v134);
          v286[0] = 0;
          v286[1] = v286;
          v286[2] = 0x3032000000;
          v286[3] = sub_27634A274;
          v286[4] = sub_27634A284;
          v287 = objc_msgSend_array(MEMORY[0x277CBEB18], v135, COERCE_DOUBLE(0x3032000000), v136, v137);
          v260[0] = MEMORY[0x277D85DD0];
          v260[1] = 3221225472;
          v260[2] = sub_27634A28C;
          v260[3] = &unk_27A6B9D28;
          v261 = v14;
          v205 = v212;
          v262 = v205;
          v284 = v110 ^ 1;
          v204 = v206;
          v263 = v204;
          v274 = v40;
          v275 = v96;
          v276 = v207;
          v208 = v213;
          v264 = v208;
          v265 = self;
          v277 = v124;
          v266 = v215;
          v278 = v126 * v124;
          v279 = v120;
          v280 = v121;
          v281 = v122;
          v282 = v123;
          v283 = v91;
          v285 = v130;
          v267 = v214;
          v269 = v286;
          v270 = v297;
          v271 = v294;
          v272 = v291;
          v138 = v210;
          v268 = v138;
          v273 = v288;
          objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v211, v139, v140, v141, v142, 2, v260);
          v256 = 0;
          v257 = &v256;
          v258 = 0x2020000000;
          v259 = 0;
          v247 = 0;
          v248 = &v247;
          v249 = 0x4812000000;
          v250 = sub_27634AB14;
          v251 = sub_27634AB38;
          v252 = &unk_27657B92B;
          v254 = 0;
          v255 = 0;
          v253 = 0;
          v238 = 0;
          v239 = &v238;
          v240 = 0x4812000000;
          v241 = sub_27634AB50;
          v242 = sub_27634AB74;
          v243 = &unk_27657B92B;
          v245 = 0;
          v246 = 0;
          v244 = 0;
          v229 = 0;
          v230 = &v229;
          v231 = 0x4812000000;
          v232 = sub_27634AB8C;
          v233 = sub_27634ABB0;
          v234 = &unk_27657B92B;
          v236 = 0;
          v237 = 0;
          __p = 0;
          v146 = objc_msgSend_array(MEMORY[0x277CBEB18], v143, COERCE_DOUBLE(0x4812000000), v144, v145);
          v218[0] = MEMORY[0x277D85DD0];
          v218[1] = 3221225472;
          v218[2] = sub_27634ABC8;
          v218[3] = &unk_27A6B9D50;
          v221 = v288;
          v222 = &v247;
          v223 = v297;
          v224 = &v238;
          v225 = v294;
          v226 = &v229;
          v227 = v291;
          v147 = v146;
          v219 = v147;
          v148 = v138;
          v220 = v148;
          v228 = &v256;
          v149 = v209;
          objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v209, v150, v151, v152, v153, 2, v218);
          v158 = v257;
          if (a6)
          {
            *a6 = malloc_type_calloc(0x30uLL, v257[3], 0x1000040EED21634uLL);
            v158 = v257;
            if (v257[3])
            {
              v159 = 0;
              v160 = 0;
              do
              {
                v161 = (v248[6] + v159 * 48);
                v162 = &(*a6)[v159];
                v155 = *v161;
                v156 = v161[1];
                v157 = v161[2];
                *&v162->c = v156;
                *&v162->tx = v157;
                *&v162->a = v155;
                ++v160;
                ++v159;
              }

              while (v160 < v158[3]);
            }
          }

          if (a7)
          {
            *a7 = malloc_type_calloc(0x10uLL, v158[3], 0x1000040451B5BE8uLL);
            v158 = v257;
            if (v257[3])
            {
              v163 = 0;
              v164 = 0;
              do
              {
                v155 = *(v239[6] + v163 * 16);
                (*a7)[v163] = v155;
                ++v164;
                v158 = v257;
                ++v163;
              }

              while (v164 < v257[3]);
            }
          }

          if (a8)
          {
            v154 = v158[3];
            if (v154)
            {
              v165 = malloc_type_calloc(0x20uLL, v154, 0x1000040E0EAB150uLL);
              v158 = v257;
              v166 = v257[3];
              *a8 = v165;
              if (v166)
              {
                v167 = 0;
                v168 = 0;
                do
                {
                  v169 = (v230[6] + v167 * 32);
                  v170 = &(*a8)[v167];
                  v155 = *v169;
                  v156 = v169[1];
                  v170->origin = *v169;
                  v170->size = v156;
                  ++v168;
                  v158 = v257;
                  ++v167;
                }

                while (v168 < v257[3]);
              }
            }

            else
            {
              *a8 = 0;
            }
          }

          if (a9 && v158[3])
          {
            *a9 = objc_msgSend_subarrayWithRange_(v147, v154, v155.width, v156.width, v157.width, 0);
            v158 = v257;
          }

          v35 = v158[3];

          _Block_object_dispose(&v229, 8);
          if (__p)
          {
            v236 = __p;
            operator delete(__p);
          }

          _Block_object_dispose(&v238, 8);
          v201 = v214;
          v202 = v215;
          if (v244)
          {
            v245 = v244;
            operator delete(v244);
          }

          _Block_object_dispose(&v247, 8);
          if (v253)
          {
            v254 = v253;
            operator delete(v253);
          }

          _Block_object_dispose(&v256, 8);

          _Block_object_dispose(v286, 8);
          _Block_object_dispose(v288, 8);
          sub_276343E2C(v289);
          _Block_object_dispose(v291, 8);
          sub_276343E2C(v292);
          _Block_object_dispose(v294, 8);
          sub_276343E2C(v295);
          _Block_object_dispose(v297, 8);
          sub_276343E2C(v298);
          goto LABEL_52;
        }
      }

      else
      {
        v186 = MEMORY[0x277D81150];
        v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCHBarColumnElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
        v192 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v188, v189, v190, v191, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v186, v193, v194, v195, v196, v187, v192, 254, 0, "invalid nil value for '%{public}s'", "barModelCache");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v197, v198, v199, v200);
      }

      v35 = 0;
      v149 = v15;
      v201 = v214;
      v202 = v215;
LABEL_52:

      v15 = v149;
    }
  }

  else
  {
    v171 = MEMORY[0x277D81150];
    v172 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "[TSCHBarColumnElementBuilder countOfLabelsForSeries:forGroups:forBodyLayout:outNewTransforms:outNewElementSizes:outNewClipRects:outNewStrings:]");
    v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v173, v174, v175, v176, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v171, v178, v179, v180, v181, v172, v177, 245, 0, "invalid nil value for '%{public}s'", "bodyLayout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v182, v183, v184, v185);
    v35 = 0;
  }

  return v35;
}

- (unint64_t)countOfBarRectsForSeries:(id)a3 forGroups:(id)a4 forBodyLayout:(id)a5 outNewGroupIndexArray:(unint64_t *)a6 outNewElementRectsArray:(CGRect *)a7 outNewClipRectsArray:(CGRect *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v21 = v16;
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

  v117 = v16;
  if (v14)
  {
    v22 = objc_msgSend_model(v14, v17, v18, v19, v20);
    v116 = v22;
    v27 = objc_msgSend_seriesIndex(v14, v23, v24, v25, v26);
    v114 = objc_msgSend_barModelCacheForSeries_(v22, v28, v29, v30, v31, v27);
    v115 = objc_msgSend_valueAxis(v114, v32, v33, v34, v35);
    v113 = objc_msgSend_groupAxis(v114, v36, v37, v38, v39);
    v112 = objc_msgSend_shadow(v114, v40, v41, v42, v43);
    hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v44, v45, v46, v47, v112);
    if (!v15)
    {
      v15 = objc_msgSend_allGroupsIndexSetForSeries_(v22, v48, v50, v51, v52, v14);
    }

    v53 = objc_msgSend_numberOfGroupsInSeries_(v22, v48, v50, v51, v52, v14);
    v163[0] = 0;
    v162 = 0;
    objc_msgSend_p_calcGapsForBodyLayout_elementCount_outBarWidth_outBarGroupGap_outBarGap_(self, v54, v55, v56, v57, v21, v53, v163 + 4, v163, &v162);
    v153 = 0;
    v154 = &v153;
    v155 = 0x4812000000;
    v156 = sub_27634B400;
    v157 = sub_27634B424;
    v158 = &unk_27657B92B;
    v160 = 0;
    v161 = 0;
    v159 = 0;
    v144 = 0;
    v145 = &v144;
    v146 = 0x4812000000;
    v147 = sub_27634AB8C;
    v148 = sub_27634ABB0;
    v149 = &unk_27657B92B;
    v151 = 0;
    v152 = 0;
    v150 = 0;
    v135 = 0;
    v136 = &v135;
    v137 = 0x4812000000;
    v138 = sub_27634AB8C;
    v139 = sub_27634ABB0;
    v140 = &unk_27657B92B;
    v142 = 0;
    v143 = 0;
    __p = 0;
    objc_msgSend_rootedLayoutRect(v21, v58, COERCE_DOUBLE(0x4812000000), v59, v60);
    v118[0] = MEMORY[0x277D85DD0];
    v118[1] = 3221225472;
    v118[2] = sub_27634B43C;
    v118[3] = &unk_27A6B9D78;
    v118[4] = self;
    v126 = v61;
    v127 = v62;
    v128 = v63;
    v129 = v64;
    v119 = v14;
    v130 = v53;
    v65 = v115;
    v120 = v65;
    v66 = v113;
    v121 = v66;
    v131 = HIDWORD(v163[0]);
    v132 = v163[0];
    v133 = v162;
    v134 = hasShadow;
    v67 = v112;
    v122 = v67;
    v123 = &v144;
    v124 = &v135;
    v125 = &v153;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v15, v68, v69, v70, v71, 2, v118);
    if (a6)
    {
      v73 = v154[6];
      v72 = v154[7];
      v74 = malloc_type_calloc(8uLL, (v72 - v73) >> 3, 0x100004000313F17uLL);
      *a6 = v74;
      if (v72 != v73)
      {
        v75 = 0;
        if (((v72 - v73) >> 3) <= 1)
        {
          v76 = 1;
        }

        else
        {
          v76 = (v72 - v73) >> 3;
        }

        do
        {
          v74[v75] = *(v154[6] + 8 * v75);
          ++v75;
        }

        while (v76 != v75);
      }
    }

    if (a7)
    {
      v78 = v145[6];
      v77 = v145[7];
      *a7 = malloc_type_calloc(0x20uLL, (v77 - v78) >> 5, 0x1000040E0EAB150uLL);
      if (v77 != v78)
      {
        v79 = 0;
        if (((v77 - v78) >> 5) <= 1)
        {
          v80 = 1;
        }

        else
        {
          v80 = (v77 - v78) >> 5;
        }

        do
        {
          v81 = (v145[6] + v79 * 32);
          v82 = &(*a7)[v79];
          v83 = v81[1];
          v82->origin = *v81;
          v82->size = v83;
          ++v79;
          --v80;
        }

        while (v80);
      }
    }

    if (a8)
    {
      v85 = v136[6];
      v84 = v136[7];
      *a8 = malloc_type_calloc(0x20uLL, (v84 - v85) >> 5, 0x1000040E0EAB150uLL);
      if (v84 != v85)
      {
        v86 = 0;
        if (((v84 - v85) >> 5) <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = (v84 - v85) >> 5;
        }

        do
        {
          v88 = (v136[6] + v86 * 32);
          v89 = &(*a8)[v86];
          v90 = v88[1];
          v89->origin = *v88;
          v89->size = v90;
          ++v86;
          --v87;
        }

        while (v87);
      }
    }

    v92 = v145[6];
    v91 = v145[7];

    _Block_object_dispose(&v135, 8);
    if (__p)
    {
      v142 = __p;
      operator delete(__p);
    }

    v93 = v91 - v92;
    _Block_object_dispose(&v144, 8);
    if (v150)
    {
      v151 = v150;
      operator delete(v150);
    }

    v94 = v93 >> 5;
    _Block_object_dispose(&v153, 8);
    if (v159)
    {
      v160 = v159;
      operator delete(v159);
    }

    v95 = v117;
  }

  else
  {
    v96 = MEMORY[0x277D81150];
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHBarColumnElementBuilder countOfBarRectsForSeries:forGroups:forBodyLayout:outNewGroupIndexArray:outNewElementRectsArray:outNewClipRectsArray:]");
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v103, v104, v105, v106, v97, v102, 525, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v107, v108, v109, v110);
    v94 = 0;
    v95 = v117;
  }

  return v94;
}

- (CGRect)nudgeBarElementFrame:(CGRect)a3 inPlotAreaFrame:(CGRect)a4 usingBarModelCache:(id)a5 unitSpaceValueBegin:(double)a6 unitSpaceValueEnd:(double)a7 withViewScale:(double)a8
{
  v12 = a3;
  objc_msgSend_p_nudgeBarElementFrame_inPlotAreaFrame_usingBarModelCache_unitSpaceValueBegin_unitSpaceValueEnd_withViewScale_(self, a2, a4.origin.x, a4.origin.y, a4.size.width, &v12, a5, a4.size.height, a6, a7, a8);
  y = v12.origin.y;
  x = v12.origin.x;
  height = v12.size.height;
  width = v12.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (void)calculateGapsForChartModel:(id)a3 forTotalWidth:(float)a4 outBarWidth:(float *)a5 outBarGroupGap:(float *)a6 outBarGap:(float *)a7
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v14 = objc_msgSend_chartInfo(v9, v10, v11, v12, v13);
  v71 = objc_msgSend_chartType(v14, v15, v16, v17, v18);
  v23 = objc_msgSend_stackingSignRule(v71, v19, v20, v21, v22);
  v29 = objc_msgSend_numberOfValues(v9, v24, v25, v26, v27);
  v67 = a6;
  if (v23)
  {
    v34 = objc_msgSend_numberOfSeries(v9, v28, v30, v31, v32) != 0;
  }

  else
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v38 = objc_msgSend_seriesList(v9, v28, 0.0, v31, v32);
    v34 = 0;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, v40, v41, v42, &v72, v76, 16);
    if (v44)
    {
      v48 = *v73;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v73 != v48)
          {
            objc_enumerationMutation(v38);
          }

          v50 = objc_msgSend_seriesType(*(*(&v72 + 1) + 8 * i), v43, v45, v46, v47, v67);
          v55 = objc_msgSend_useInBarGapCalculations(v50, v51, v52, v53, v54);

          v34 += v55;
        }

        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v43, v45, v46, v47, &v72, v76, 16);
      }

      while (v44);
    }
  }

  LODWORD(v35) = 1120403456;
  objc_msgSend_floatValueForProperty_defaultValue_(v14, v33, v35, v36, v37, 1105, v67);
  v57 = v56;
  LODWORD(v58) = 10.0;
  objc_msgSend_floatValueForProperty_defaultValue_(v14, v59, v58, v60, v61, 1104);
  v62 = v57 / 100.0 * 0.5;
  v64 = v63 / 100.0;
  v65 = a4 / ((((v29 * v62) + (v29 * v62)) + (v34 * v29)) + (v64 * ((v34 - 1) * v29)));
  if (a5)
  {
    *a5 = v65;
  }

  if (v68)
  {
    *v68 = v65 * v62;
  }

  if (a7)
  {
    v66 = v64 * v65;
    if (v34 <= 1)
    {
      v66 = 0.0;
    }

    *a7 = v66;
  }
}

- (unint64_t)countOfErrorBarsInSeries:(id)a3 forGroups:(id)a4 forAxisID:(id)a5 forBodyLayout:(id)a6 outClipRect:(CGRect *)a7 outNewErrorBarDescriptors:(id *)a8
{
  v298[1] = *MEMORY[0x277D85DE8];
  v231 = a3;
  v12 = a4;
  v201 = a5;
  v202 = a6;
  v17 = MEMORY[0x277CBF398];
  if (a7)
  {
    v14 = *MEMORY[0x277CBF398];
    v15 = *(MEMORY[0x277CBF398] + 16);
    a7->origin = *MEMORY[0x277CBF398];
    a7->size = v15;
  }

  if (a8)
  {
    *a8 = 0;
  }

  v198 = a7;
  v232 = objc_msgSend_errorBarData(v231, v13, *&v14, v15.width, v16);
  v21 = 0;
  if (v231 && v232)
  {
    v293 = 0;
    v294 = &v293;
    v295 = 0x2020000000;
    v296 = 0;
    v200 = objc_msgSend_model(v231, v18, COERCE_DOUBLE(0x2020000000), v19, v20);
    v199 = objc_msgSend_chartInfo(v200, v22, v23, v24, v25);
    v216 = objc_msgSend_seriesType(v231, v26, v27, v28, v29);
    isVertical = objc_msgSend_isVertical(v216, v30, v31, v32, v33);
    objc_msgSend_rootedLayoutRect(v202, v34, v35, v36, v37);
    v213 = v40;
    v214 = v39;
    v217 = v42;
    v218 = v41;
    if (isVertical)
    {
      v212 = 1;
      v211 = v41;
      v192 = v40;
      v193 = *MEMORY[0x277CBF390];
      v194 = v42;
      v195 = *(MEMORY[0x277CBF390] + 16);
      objc_msgSend_chartType(v199, v38, v42, v195, *MEMORY[0x277CBF390]);
    }

    else
    {
      v192 = *(MEMORY[0x277CBF390] + 8);
      v212 = 2;
      v211 = v42;
      v193 = v39;
      v194 = *(MEMORY[0x277CBF390] + 24);
      v195 = v41;
      objc_msgSend_chartType(v199, v38, v41, v194, v41);
    }
    v197 = ;
    if (v201)
    {
      v298[0] = v201;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, v44, v45, v46, v298, 1);
    }

    else
    {
      objc_msgSend_valueAxisIDs(v197, v43, v44, v45, v46);
    }
    v196 = ;
    v51 = objc_msgSend_allGroupsIndexSetForSeries_(v200, v47, v48, v49, v50, v231);
    v215 = v51;
    if (v12)
    {
      v52 = v12;
    }

    else
    {
      v52 = v51;
    }

    v221 = v52;

    v57 = objc_msgSend_numberOfGroupsInSeries_(v200, v53, v54, v55, v56, v231);
    v292 = 0;
    v291 = 0.0;
    objc_msgSend_p_calcGapsForBodyLayout_elementCount_outBarWidth_outBarGroupGap_outBarGap_(self, v58, v59, v60, v61, v202, v57, &v292 + 4, &v292, &v291);
    v208.origin.x = *v17;
    v208.origin.y = v17[1];
    v208.size.width = v17[2];
    v208.size.height = v17[3];
    v210 = objc_msgSend_intValueForProperty_defaultValue_(v231, v62, v208.size.height, v208.size.width, v63, 1152, 0) != 0;
    v282 = 0;
    v283 = &v282;
    v284 = 0x4812000000;
    v285 = sub_27634C698;
    v286 = sub_27634C6BC;
    v287 = &unk_27657B92B;
    v290 = 0;
    __p = 0;
    v289 = 0;
    v278 = 0u;
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    obj = v196;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, v65, v66, v67, &v278, v297, 16);
    if (v69)
    {
      v209 = v57;
      v229 = *v279;
      v224 = 1;
      v71 = TSCHPresetImagerBarFamily;
      y = v208.origin.y;
      x = v208.origin.x;
      width = v208.size.width;
      height = v208.size.height;
      v204 = v208.size.height;
      v205 = v208.size.width;
      do
      {
        v74 = 0;
        v222 = v69;
        do
        {
          if (*v279 != v229)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v278 + 1) + 8 * v74);
          if (objc_msgSend_showErrorBarsForAxisID_(v232, v68, height, width, v70, v75))
          {
            v230 = objc_msgSend_axisForAxisType_(v231, v68, height, width, v70, v212);
            objc_msgSend_min(v230, v76, v77, v78, v79);
            objc_msgSend_unitSpaceValueForCountSpaceValue_(v230, v80, v81, v82, v83);
            v85 = v84;
            v89 = objc_msgSend_seriesIndexForDrawing_(v216, v86, v84, v87, v88, v231);
            v90 = *(&v292 + 1);
            v91 = *&v292;
            v92 = v291;
            v97 = objc_msgSend_strokeForAxisID_(v232, v93, v94, v95, v96, v75);
            v228 = v97;
            objc_msgSend_width(v97, v98, v99, v100, v101);
            v106 = v103;
            if (v97)
            {
              shouldRender = objc_msgSend_shouldRender(v97, v102, v103, v104, v105);
              v108 = 0.0;
              if (shouldRender)
              {
                v108 = v106;
              }
            }

            else
            {
              v108 = 0.0;
            }

            if (v108 > 1.0)
            {
              v109 = (v108 + -1.0) * 0.6 + 1.0;
            }

            else
            {
              v109 = v108;
            }

            v227 = objc_msgSend_lineEndForAxisID_(v232, v102, v108, (v108 + -1.0) * 0.6 + 1.0, 0.6, v75);
            v114 = sub_276348464(v227, v110, v111, v112, v113);
            v119 = objc_msgSend_type(v75, v115, v116, v117, v118);
            v124 = objc_msgSend_axisForAxisType_(v231, v120, v121, v122, v123, v119);
            v226 = v114;
            LOBYTE(v114) = objc_msgSend_errorBarIsVerticalForAxisID_series_(&v71[99], v125, v126, v127, v128, v75, v231);
            v133 = objc_msgSend_errorBarTypeForAxisID_series_(&v71[99], v129, v130, v131, v132, v75, v231);
            isRangeContinuous = objc_msgSend_isRangeContinuous(v230, v134, v135, v136, v137);
            v143 = objc_msgSend_isRangeContinuous(v124, v139, v140, v141, v142);
            v275[0] = 0;
            v275[1] = v275;
            v275[2] = 0x5812000000;
            v275[3] = sub_27634C6D4;
            v275[4] = sub_27634C6E0;
            v275[5] = &unk_27657B92B;
            memset(v276, 0, sizeof(v276));
            v277 = 1065353216;
            v272[0] = 0;
            v272[1] = v272;
            v272[2] = 0x5812000000;
            v272[3] = sub_27634A260;
            v272[4] = sub_27634A26C;
            v272[5] = &unk_27657B92B;
            memset(v273, 0, sizeof(v273));
            v274 = 1065353216;
            v264 = 0;
            v265 = &v264;
            v266 = 0x5012000000;
            v267 = sub_27634C6E8;
            v268 = nullsub_10;
            v269 = &unk_27657B92B;
            v144 = *(MEMORY[0x277CBF398] + 16);
            v270 = *MEMORY[0x277CBF398];
            v271 = v144;
            v262[0] = 0;
            v262[1] = v262;
            v262[2] = 0x3032000000;
            v262[3] = sub_27634A274;
            v262[4] = sub_27634A284;
            objc_msgSend_array(MEMORY[0x277CBEB18], v145, COERCE_DOUBLE(0x3032000000), *&v144, v146);
            v263 = v147 = v90 * 0.5 + v85 * v211 + v91 + (v90 * v89) + (v92 * v89);
            v235[0] = MEMORY[0x277D85DD0];
            v235[1] = 3221225472;
            v235[2] = sub_27634C6F8;
            v235[3] = &unk_27A6B9DA0;
            v148 = v232;
            v236 = v148;
            v225 = v230;
            v237 = v225;
            v149 = v124;
            v256 = isRangeContinuous;
            v257 = v143;
            v258 = v114;
            v246 = v209;
            v247 = v133;
            v248 = v214;
            v249 = v213;
            v250 = v218;
            v251 = v217;
            v259 = isVertical;
            v255 = v226;
            v252 = v147;
            v253 = v106;
            v150 = v149;
            v238 = v149;
            v242 = &v264;
            v254 = v109;
            v151 = v228;
            v239 = v151;
            v152 = v227;
            v260 = v210;
            v240 = v152;
            v241 = self;
            v261 = a8 != 0;
            v243 = v262;
            v244 = v275;
            v245 = v272;
            objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v215, v153, v154, v155, v156, 2, v235);
            v233[0] = MEMORY[0x277D85DD0];
            v233[1] = 3221225472;
            v233[2] = sub_27634CD50;
            v233[3] = &unk_27A6B9C18;
            v234 = a8 != 0;
            v233[4] = v272;
            v233[5] = &v282;
            v233[6] = v275;
            v233[7] = &v293;
            objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v221, v157, v158, v159, v160, 2, v233);
            if (CGRectIsNull(*(v265 + 6)))
            {
              v69 = v222;
              v71 = TSCHPresetImagerBarFamily;
            }

            else
            {
              v162 = *(v265 + 6);
              v163 = *(v265 + 7);
              v164 = *(v265 + 8);
              v69 = v222;
              v71 = TSCHPresetImagerBarFamily;
              if (v224)
              {
                y = *(v265 + 7);
                x = *(v265 + 6);
                v204 = *(v265 + 9);
                v205 = *(v265 + 8);
              }

              else
              {
                v304.origin.y = y;
                v304.origin.x = x;
                v304.size.height = v204;
                v304.size.width = v205;
                v165 = v265[9];
                *&v162 = CGRectUnion(*&v162, v304);
                y = v163;
                x = v162;
                v204 = v166;
                v205 = v164;
              }

              v167 = objc_msgSend_shadowForAxisID_(v148, v161, v162, v163, v164, v75);
              hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, v168, v169, v170, v171, v167);
              v174 = *(v265 + 6);
              v175 = *(v265 + 7);
              v177 = *(v265 + 8);
              v176 = *(v265 + 9);
              if (hasShadow)
              {
                objc_msgSend_shadowBoundsForRect_(v167, v173, *(v265 + 6), *(v265 + 7), *(v265 + 8), *(v265 + 9));
                v305.origin.x = v178;
                v305.origin.y = v179;
                v305.size.width = v180;
                v305.size.height = v181;
                v299.origin.x = v174;
                v299.origin.y = v175;
                v299.size.width = v177;
                v299.size.height = v176;
                v300 = CGRectUnion(v299, v305);
                v174 = v300.origin.x;
                v175 = v300.origin.y;
                v177 = v300.size.width;
                v176 = v300.size.height;
              }

              if (v224)
              {
                v208.size.width = v177;
                v208.size.height = v176;
                v208.origin.x = v174;
                v208.origin.y = v175;
              }

              else
              {
                v301.origin.x = v174;
                v301.origin.y = v175;
                v301.size.width = v177;
                v301.size.height = v176;
                v208 = CGRectUnion(v301, v208);
              }

              v224 = 0;
            }

            _Block_object_dispose(v262, 8);
            _Block_object_dispose(&v264, 8);
            _Block_object_dispose(v272, 8);
            sub_276343E2C(v273);
            _Block_object_dispose(v275, 8);
            sub_276343E2C(v276);
          }

          ++v74;
        }

        while (v69 != v74);
        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, height, width, v70, &v278, v297, 16);
      }

      while (v69);
    }

    else
    {
      y = v208.origin.y;
      x = v208.origin.x;
      v204 = v208.size.height;
      v205 = v208.size.width;
    }

    v306.origin.y = y;
    v306.origin.x = x;
    v306.size.height = v204;
    v306.size.width = v205;
    v302 = CGRectUnion(v208, v306);
    v307.origin.y = v192;
    v307.origin.x = v193;
    v307.size.height = v194;
    v307.size.width = v195;
    v303 = CGRectIntersection(v302, v307);
    v182 = v303.origin.x;
    v183 = v303.origin.y;
    v184 = v303.size.width;
    v185 = v303.size.height;
    if (a8 && (v186 = v283[7] - v283[6]) != 0)
    {
      v187 = malloc_type_calloc(0x30uLL, 0xAAAAAAAAAAAAAAABLL * (v186 >> 4), 0x1000040C179455EuLL);
      v188 = v187;
      v189 = v283[6];
      v190 = v283[7];
      if (v190 != v189)
      {
        memmove(v187, v189, v190 - v189);
      }
    }

    else
    {
      v188 = 0;
    }

    if (v198)
    {
      v198->origin.x = v182;
      v198->origin.y = v183;
      v198->size.width = v184;
      v198->size.height = v185;
    }

    if (a8)
    {
      *a8 = v188;
    }

    v21 = v294[3];
    _Block_object_dispose(&v282, 8);
    if (__p)
    {
      v289 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v293, 8);
  }

  else
  {
    v221 = v12;
  }

  return v21;
}

- (void)p_calcGapsForBodyLayout:(id)a3 elementCount:(unint64_t)a4 outBarWidth:(float *)a5 outBarGroupGap:(float *)a6 outBarGap:(float *)a7
{
  v47 = a3;
  v16 = objc_msgSend_chartInfo(v47, v12, v13, v14, v15);
  v21 = objc_msgSend_model(v47, v17, v18, v19, v20);
  objc_msgSend_rootedLayoutRect(v47, v22, v23, v24, v25);
  if (self->_vertical)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29 + -2.0;
  }

  v31 = objc_msgSend_p_numberOfSeriesForGapCalcInModel_(self, v26, v29 + -2.0, v27, v28, v21);
  LODWORD(v32) = 1120403456;
  objc_msgSend_floatValueForProperty_defaultValue_(v16, v33, v32, v34, v35, 1105);
  v37 = v36;
  LODWORD(v38) = 10.0;
  objc_msgSend_floatValueForProperty_defaultValue_(v16, v39, v38, v40, v41, 1104);
  v42 = v37 / 100.0 * 0.5;
  v44 = v43 / 100.0;
  v45 = v30 / ((((a4 * v42) + (a4 * v42)) + (v31 * a4)) + (v44 * ((v31 - 1) * a4)));
  if (a5)
  {
    *a5 = v45;
  }

  if (a6)
  {
    *a6 = v42 * v45;
  }

  if (a7)
  {
    v46 = v44 * v45;
    if (v31 <= 1)
    {
      v46 = 0.0;
    }

    *a7 = v46;
  }
}

- (CGRect)p_createBarRectInFrame:(CGRect)a3 forSeries:(id)a4 groupIndex:(unint64_t)a5 count:(unint64_t)a6 valueAxis:(id)a7 groupAxis:(id)a8 barWidth:(float)a9 barGroupGap:(float)a10 barGap:(float)a11
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  objc_opt_class();
  v21 = TSUDynamicCast();

  if (!v21)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCHBarColumnElementBuilder p_createBarRectInFrame:forSeries:groupIndex:count:valueAxis:groupAxis:barWidth:barGroupGap:barGap:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 947, 0, "expected a category axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v97 = x;
  v41 = MEMORY[0x277CBF398];
  v42 = *MEMORY[0x277CBF398];
  v43 = *(MEMORY[0x277CBF398] + 8);
  v44 = *(MEMORY[0x277CBF398] + 16);
  v45 = *(MEMORY[0x277CBF398] + 24);
  if (v18 && v20)
  {
    objc_msgSend_interceptForAxis_(v19, v22, v23, v24, v25, v20);
    objc_msgSend_unitSpaceValueForDataSpaceValue_(v19, v46, v47, v48, v49);
    v53 = v52;
    v54 = height + -2.0;
    if (self->_vertical)
    {
      v54 = width;
    }

    objc_msgSend_unitSpaceValueForSeries_groupIndex_(v19, v50, v54, width, v51, v18, a5, *&v54);
    v56 = v55;
    objc_msgSend_p_beginValueForSeries_groupIndex_unitSpaceIntercept_relativelyPositive_valueAxis_(self, v57, v53, v58, v59, v18, a5, v55 >= v53, v19);
    v61 = v60;
    objc_msgSend_min(v20, v62, v60, v63, v64);
    objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(v20, v65, a5, v66, a6);
    v70 = v69;
    v71 = fabs(v56) == INFINITY;
    if (fabs(v61) == INFINITY || v71)
    {
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      v45 = v41[3];
    }

    else
    {
      if (v61 >= v56)
      {
        v72 = v61;
      }

      else
      {
        v72 = v56;
      }

      if (v61 >= v56)
      {
        v73 = v56;
      }

      else
      {
        v73 = v61;
      }

      if (v72 > 0.0 && (v72 = 1.0, v73 < 1.0) || ((objc_msgSend_model(v18, v67, v73, v72, v68), v74 = objc_claimAutoreleasedReturnValue(), isMultiData = objc_msgSend_isMultiData(v74, v75, v76, v77, v78), v74, v61 == 0.0) ? (v80 = isMultiData) : (v80 = 0), v80 == 1 && v56 == 0.0))
      {
        TSUClamp();
        v82 = v81;
        TSUClamp();
        v84 = v83;
        v88 = objc_msgSend_p_logicalSeriesIndexForSeries_(self, v85, v83, v86, v87, v18);
        v89 = v70 * v96 + 0.0 + a10 + (v88 * a9) + (v88 * a11);
        vertical = self->_vertical;
        v91 = height * (v82 - v84);
        if (vertical)
        {
          v45 = height * (v82 - v84);
        }

        else
        {
          v45 = a9;
        }

        if (vertical)
        {
          v44 = a9;
        }

        else
        {
          v44 = width * (v82 - v84);
        }

        if (vertical)
        {
          v43 = y + height - v91 - height * v84;
        }

        else
        {
          v43 = y + height - (v96 - v89 + 1.0);
        }

        if (!vertical)
        {
          v89 = width * v84;
        }

        v42 = v97 + v89;
      }
    }
  }

  v92 = v42;
  v93 = v43;
  v94 = v44;
  v95 = v45;
  result.size.height = v95;
  result.size.width = v94;
  result.origin.y = v93;
  result.origin.x = v92;
  return result;
}

- (void)p_nudgeBarElementFrame:(CGRect *)a3 inPlotAreaFrame:(CGRect)a4 usingBarModelCache:(id)a5 unitSpaceValueBegin:(double)a6 unitSpaceValueEnd:(double)a7 withViewScale:(double)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v72 = a5;
  objc_msgSend_unitSpaceIntercept(v72, v16, v17, v18, v19);
  v24 = v21;
  v25 = v21 < 1.0 && v21 > 0.0;
  v26 = objc_msgSend_valueAxis(v72, v20, 1.0, v22, v23, *&height);
  objc_msgSend_modelMin(v26, v27, v28, v29, v30);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v26, v31, v32, v33, v34);
  v36 = v35;
  objc_msgSend_modelMax(v26, v37, v35, v38, v39);
  objc_msgSend_unitSpaceValueForDataSpaceValue_(v26, v40, v41, v42, v43);
  v45 = fmin(0.5 / a8, 0.5);
  if (self->_vertical)
  {
    if (v25 && (v24 == a6 || vabdd_f64(v24, a6) < fabs(a6 * 1.0e-10)))
    {
      v46 = a3->size.height;
      if (v24 > a7)
      {
        if (v46 <= v45)
        {
          goto LABEL_22;
        }

        a3->origin.y = v45 + a3->origin.y;
      }

      else if (v46 <= v45)
      {
LABEL_22:
        if (fabs(v46) <= v45)
        {
          v48 = *(MEMORY[0x277CBF398] + 16);
          a3->origin = *MEMORY[0x277CBF398];
          a3->size = v48;
        }

        goto LABEL_24;
      }

      a3->size.height = v46 - v45;
    }

LABEL_24:
    if (v24 > a7 && (v36 == a7 || (vabdd_f64(v36, a7) >= fabs(a7 * 1.0e-10) ? (v49 = v36 <= a7) : (v49 = 0), !v49)) || v24 <= a7 && (v44 == a7 || (vabdd_f64(v44, a7) >= fabs(a7 * 1.0e-10) ? (v50 = v44 < a7) : (v50 = 1), v50)))
    {
      if (CGRectGetMinY(*a3) - y < v45)
      {
        MinY = CGRectGetMinY(*a3);
        a3->origin.y = y + v45;
        a3->size.height = MinY - (y + v45) + fabs(a3->size.height);
      }
    }

    if (v24 == a6 || vabdd_f64(v24, a6) < fabs(a6 * 1.0e-10))
    {
      v52 = y + v71;
      if (y + v71 - CGRectGetMaxY(*a3) < v45)
      {
        v53 = a3->origin.x;
        v54 = a3->origin.y;
        v55 = a3->size.width;
        v56 = a3->size.height;
        if (v56 >= 0.0)
        {
          v57 = v52 - v45 - CGRectGetMinY(*&v53);
        }

        else
        {
          v57 = CGRectGetMinY(*&v53) - (v52 - v45);
        }

        a3->size.height = v57;
      }
    }

    v67 = a3->size.height;
    goto LABEL_74;
  }

  if (v25 && (v24 == a6 || vabdd_f64(v24, a6) < fabs(a6 * 1.0e-10)))
  {
    v47 = a3->size.width;
    if (v24 > a7)
    {
      if (v47 > v45)
      {
        goto LABEL_21;
      }
    }

    else if (v47 > v45)
    {
      a3->origin.x = v45 + a3->origin.x;
LABEL_21:
      a3->size.width = v47 - v45;
      goto LABEL_47;
    }

    if (fabs(v47) <= v45)
    {
      v58 = *(MEMORY[0x277CBF398] + 16);
      a3->origin = *MEMORY[0x277CBF398];
      a3->size = v58;
    }
  }

LABEL_47:
  if (v24 > a7 && (v36 == a7 || (vabdd_f64(v36, a7) >= fabs(a7 * 1.0e-10) ? (v59 = v36 <= a7) : (v59 = 0), !v59)) || v24 <= a7 && (v44 == a7 || (vabdd_f64(v44, a7) >= fabs(a7 * 1.0e-10) ? (v60 = v44 < a7) : (v60 = 1), v60)))
  {
    v61 = x + width;
    if (x + width - CGRectGetMaxX(*a3) < v45)
    {
      v62 = a3->origin.x;
      v63 = a3->origin.y;
      v64 = a3->size.width;
      v65 = a3->size.height;
      if (v64 >= 0.0)
      {
        v66 = v61 - v45 - CGRectGetMinX(*&v62);
      }

      else
      {
        v66 = CGRectGetMinX(*&v62) - (v61 - v45);
      }

      a3->size.width = v66;
    }
  }

  if ((v24 == a6 || vabdd_f64(v24, a6) < fabs(a6 * 1.0e-10)) && CGRectGetMinX(*a3) - x < v45)
  {
    MinX = CGRectGetMinX(*a3);
    a3->origin.x = x + v45;
    a3->size.width = MinX - (x + v45) + fabs(a3->size.width);
  }

  v67 = a3->size.width;
LABEL_74:
  if (fabs(v67) < v45)
  {
    v69 = *(MEMORY[0x277CBF398] + 16);
    a3->origin = *MEMORY[0x277CBF398];
    a3->size = v69;
  }
}

- (void)p_trendlineInfoForSeries:(id)a3 forBodyLayout:(id)a4 outVertical:(BOOL *)a5 outOffsetInBody:(double *)a6
{
  v10 = a3;
  v11 = a4;
  v16 = v11;
  if (a5)
  {
    *a5 = self->_vertical;
  }

  if (a6)
  {
    if (!v11)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHBarColumnElementBuilder p_trendlineInfoForSeries:forBodyLayout:outVertical:outOffsetInBody:]");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarColumnElementBuilder.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 1173, 0, "invalid nil value for '%{public}s'", "bodyLayout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    v33 = objc_msgSend_seriesType(v10, v12, v13, v14, v15);
    if (self->_vertical)
    {
      objc_msgSend_axisForAxisType_(v10, v32, v34, v35, v36, 1);
    }

    else
    {
      objc_msgSend_axisForAxisType_(v10, v32, v34, v35, v36, 2);
    }
    v37 = ;
    if (objc_msgSend_useInBarGapCalculations(v33, v38, v39, v40, v41))
    {
      v46 = objc_msgSend_trendLineData(v10, v42, v43, v44, v45);
      v51 = v46;
      if (v46 && (objc_msgSend_showTrendLine(v46, v47, v48, v49, v50) & 1) != 0)
      {
        objc_msgSend_min(v37, v52, v53, v54, v55);
        objc_msgSend_unitSpaceValueForCountSpaceValue_(v37, v56, v57, v58, v59);
        v61 = v60;
        v96 = 0;
        v95 = 0.0;
        v65 = objc_msgSend_model(v16, v62, v60, v63, v64);
        v70 = objc_msgSend_numberOfValues(v65, v66, v67, v68, v69);
        objc_msgSend_p_calcGapsForBodyLayout_elementCount_outBarWidth_outBarGroupGap_outBarGap_(self, v71, v72, v73, v74, v16, v70, &v96 + 4, &v96, &v95);

        objc_msgSend_rootedLayoutRect(v16, v75, v76, v77, v78);
        v80 = v79;
        v82 = v81;
        LODWORD(v65) = self->_vertical;
        v83 = v96;
        v87 = objc_msgSend_barGapIndex(v10, v84, v85, v86, v79);
        v88 = v95;
        v93 = objc_msgSend_barGapIndex(v10, v89, v90, v91, v92);
        if (v65)
        {
          v94 = v80;
        }

        else
        {
          v94 = v82;
        }

        *a6 = *(&v83 + 1) * 0.5 + v61 * v94 + *&v83 + (*(&v83 + 1) * v87) + (v88 * v93);
      }
    }
  }
}

@end