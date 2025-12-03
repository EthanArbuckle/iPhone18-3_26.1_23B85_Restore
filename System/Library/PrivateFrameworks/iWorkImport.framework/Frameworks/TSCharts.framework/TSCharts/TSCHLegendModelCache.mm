@interface TSCHLegendModelCache
- (CGSize)largestCellSize;
- (TSCHLegendModelCache)initWithChartModel:(id)model textEditingSelectionPair:(id)pair styleProvidingSource:(id)source;
- (id)cellForSeriesIndex:(unint64_t)index cellType:(int)type;
- (id)viewCacheForWidth:(double)width;
@end

@implementation TSCHLegendModelCache

- (TSCHLegendModelCache)initWithChartModel:(id)model textEditingSelectionPair:(id)pair styleProvidingSource:(id)source
{
  v312 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  pairCopy = pair;
  sourceCopy = source;
  v16 = objc_msgSend_chartInfo(modelCopy, v11, v12, v13, v14);
  v305 = modelCopy;
  if (v16)
  {
    v310.receiver = self;
    v310.super_class = TSCHLegendModelCache;
    v20 = [(TSCHLegendModelCache *)&v310 init];
    v21 = v20;
    if (!v20)
    {
LABEL_52:
      self = v21;
      selfCopy = self;
      goto LABEL_53;
    }

    v304 = sourceCopy;
    objc_storeWeak(&v20->_styleProvidingSource, sourceCopy);
    v26 = objc_msgSend_legend(v16, v22, v23, v24, v25);
    v21->_legendOn = objc_msgSend_intValueForProperty_defaultValue_(v16, v27, v28, v29, v30, 1113, 1) != 0;
    v35 = objc_msgSend_intValueForProperty_defaultValue_(v26, v31, v32, v33, v34, 1214, 0);
    v40 = objc_msgSend_paragraphStyleAtIndex_(v16, v36, v37, v38, v39, v35);
    paragraphStyle = v21->_paragraphStyle;
    v21->_paragraphStyle = v40;

    v46 = objc_msgSend_objectValueForProperty_(v26, v42, v43, v44, v45, 1216);
    v47 = objc_opt_respondsToSelector();
    v52 = objc_msgSend_objectValueForProperty_(v26, v48, v49, v50, v51, 1216);
    v57 = v52;
    if (v47)
    {
      v58 = objc_msgSend_copy(v52, v53, v54, v55, v56);
      shadow = v21->_shadow;
      v21->_shadow = v58;
    }

    else
    {
      v76 = v21->_shadow;
      v21->_shadow = v52;
      v57 = v76;
    }

    v81 = objc_msgSend_objectValueForProperty_(v26, v77, v78, v79, v80, 1217);
    v82 = objc_opt_respondsToSelector();
    v87 = objc_msgSend_objectValueForProperty_(v26, v83, v84, v85, v86, 1217);
    v92 = v87;
    if (v82)
    {
      v93 = objc_msgSend_copy(v87, v88, v89, v90, v91);
      p_stroke = &v21->_stroke;
      stroke = v21->_stroke;
      v21->_stroke = v93;
    }

    else
    {
      p_stroke = &v21->_stroke;
      v96 = v21->_stroke;
      v21->_stroke = v87;
      v92 = v96;
    }

    v101 = objc_msgSend_objectValueForProperty_(v26, v97, v98, v99, v100, 1213);
    v102 = objc_opt_respondsToSelector();
    v107 = objc_msgSend_objectValueForProperty_(v26, v103, v104, v105, v106, 1213);
    v112 = v107;
    if (v102)
    {
      v113 = objc_msgSend_copy(v107, v108, v109, v110, v111);
      fill = v21->_fill;
      v21->_fill = v113;
    }

    else
    {
      v115 = v21->_fill;
      v21->_fill = v107;
      v112 = v115;
    }

    LODWORD(v116) = 1.0;
    objc_msgSend_floatValueForProperty_defaultValue_(v26, v117, v116, v118, v119, 1215);
    v121 = v120;
    v21->_opacity = v121;
    shouldRender = objc_msgSend_shouldRender(v21->_stroke, v122, v121, v123, v124);
    v129 = 0.0;
    if (shouldRender)
    {
      objc_msgSend_width(*p_stroke, v126, 0.0, v127, v128);
    }

    v21->_effectiveStrokeWidth = v129;
    v130 = objc_msgSend_chartType(v16, v126, v129, v127, v128);
    v21->_reverseSingleColumnLegendOrder = objc_msgSend_reverseSingleColumnLegendOrder(v130, v131, v132, v133, v134);

    v139 = objc_msgSend_documentRoot(v16, v135, v136, v137, v138);
    v21->_legendIsRTL = objc_msgSend_isDirectionRightToLeft(v139, v140, v141, v142, v143);

    objc_opt_class();
    v148 = objc_msgSend_first(pairCopy, v144, v145, v146, v147);
    v149 = TSUDynamicCast();

    objc_opt_class();
    v154 = objc_msgSend_second(pairCopy, v150, v151, v152, v153);
    v155 = TSUDynamicCast();

    v297 = v16;
    v298 = pairCopy;
    v296 = v149;
    if (v149)
    {
      v160 = objc_msgSend_name(v149, v156, v157, v158, v159);
      isEqualToString = objc_msgSend_isEqualToString_(v160, v161, v162, v163, v164, @"seriesName");

      v170 = v305;
      if (isEqualToString)
      {
        objc_opt_class();
        v175 = objc_msgSend_argumentAtIndex_(v149, v171, v172, v173, v174, 0);
        v176 = TSUDynamicCast();

        v302 = objc_msgSend_unsignedIntegerValue(v176, v177, v178, v179, v180);
        v299 = -1;
      }

      else
      {
        v181 = objc_msgSend_name(v149, v166, v167, v168, v169);
        v186 = objc_msgSend_isEqualToString_(v181, v182, v183, v184, v185, @"trendLineName");

        if (!v186)
        {
          v302 = -1;
          v299 = -1;
          goto LABEL_23;
        }

        objc_opt_class();
        v191 = objc_msgSend_argumentAtIndex_(v149, v187, v188, v189, v190, 0);
        v176 = TSUDynamicCast();

        v299 = objc_msgSend_unsignedIntegerValue(v176, v192, v193, v194, v195);
        v302 = -1;
      }
    }

    else
    {
      v302 = -1;
      v299 = -1;
      v170 = v305;
    }

LABEL_23:
    v196 = [TSCHLegendCellMetrics alloc];
    v201 = objc_msgSend_initWithParagraphStyle_(v196, v197, v198, v199, v200, v21->_paragraphStyle);
    v206 = objc_msgSend_numberOfSeries(v170, v202, v203, v204, v205);
    v212 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v207, v208, v209, v210, v206);
    v303 = v212;
    v301 = v206;
    if (v206)
    {
      v216 = 0;
      v217 = TSCHPresetImagerBarFamily;
      v300 = v155;
      do
      {
        if (v302 == v216)
        {
          v218 = v155;
        }

        else
        {
          v218 = 0;
        }

        v219 = v218;
        v220 = objc_alloc(&v217[82]);
        v225 = objc_msgSend_initWithChartModel_cellType_seriesIndex_withMetrics_overrideLabel_styleProvidingSource_(v220, v221, v222, v223, v224, v170, 0, v216, v201, v219, v304);
        v226 = v201;
        v227 = v155;
        v228 = v225;
        objc_msgSend_addObject_(v212, v229, v230, v231, v232, v225);
        v237 = objc_msgSend_seriesAtIndex_(v170, v233, v234, v235, v236, v216);
        if (objc_msgSend_showTrendLineLegendText(v237, v238, v239, v240, v241))
        {
          if (v299 == v216)
          {
            v242 = v227;
          }

          else
          {
            v242 = 0;
          }

          v243 = v242;

          v244 = objc_alloc(&v217[82]);
          v249 = objc_msgSend_initWithChartModel_cellType_seriesIndex_withMetrics_overrideLabel_styleProvidingSource_(v244, v245, v246, v247, v248, v305, 1, v216, v226, v243, v304);

          objc_msgSend_addObject_(v212, v250, v251, v252, v253, v249);
          v228 = v249;
          v219 = v243;
          v170 = v305;
        }

        v201 = v226;

        ++v216;
        v155 = v300;
        v212 = v303;
        v217 = TSCHPresetImagerBarFamily;
      }

      while (v301 != v216);
    }

    objc_msgSend_titleHeight(v201, v211, v213, v214, v215);
    v255 = v254;
    v256 = v255 * 0.5;
    objc_msgSend_symbolGap(v201, v257, v255, 0.5, v258);
    v263 = v262;
    if (v256 >= v263)
    {
      v263 = v256;
    }

    v21->_horizontalCellSpacing = v263;
    objc_msgSend_lineGap(v201, v259, v263, v260, v261);
    v267 = v266;
    if (v267 < 0.0)
    {
      v267 = 0.0;
    }

    v21->_verticalCellSpacing = v267;
    objc_msgSend_symbolGap(v201, v264, v267, 0.0, v265);
    v21->_symbolGap = v268;
    v269 = objc_alloc(MEMORY[0x277CBEA60]);
    v274 = objc_msgSend_initWithArray_(v269, v270, v271, v272, v273, v212);
    cells = v21->_cells;
    v21->_cells = v274;

    v21->_cellCount = objc_msgSend_count(v21->_cells, v276, v277, v278, v279);
    v280 = *MEMORY[0x277CBF3A8];
    v281 = *(MEMORY[0x277CBF3A8] + 8);
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    v282 = v21->_cells;
    v287 = objc_msgSend_countByEnumeratingWithState_objects_count_(v282, v283, v284, v285, v286, &v306, v311, 16);
    if (v287)
    {
      v292 = v287;
      v293 = *v307;
      pairCopy = v298;
      sourceCopy = v304;
      do
      {
        for (i = 0; i != v292; ++i)
        {
          if (*v307 != v293)
          {
            objc_enumerationMutation(v282);
          }

          objc_msgSend_size(*(*(&v306 + 1) + 8 * i), v288, v289, v290, v291);
          if (v280 < v289)
          {
            v280 = v289;
          }

          if (v281 < v290)
          {
            v281 = v290;
          }
        }

        v292 = objc_msgSend_countByEnumeratingWithState_objects_count_(v282, v288, v289, v290, v291, &v306, v311, 16);
      }

      while (v292);
    }

    else
    {
      pairCopy = v298;
      sourceCopy = v304;
    }

    v21->_largestCellSize.width = v280;
    v21->_largestCellSize.height = v281;

    modelCopy = v305;
    v16 = v297;
    goto LABEL_52;
  }

  v60 = MEMORY[0x277D81150];
  v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v17, v18, v19, "[TSCHLegendModelCache initWithChartModel:textEditingSelectionPair:styleProvidingSource:]");
  v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 145, 0, "invalid nil value for '%{public}s'", "chartInfo");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  selfCopy = 0;
LABEL_53:

  return selfCopy;
}

- (id)cellForSeriesIndex:(unint64_t)index cellType:(int)type
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_cells;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v22, v26, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v6);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if (objc_msgSend_seriesIndex(v19, v12, v13, v14, v15, v22) == index && objc_msgSend_cellType(v19, v12, v13, v14, v15) == type)
        {
          v20 = v19;
          goto LABEL_12;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, v13, v14, v15, &v22, v26, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_12:

  return v20;
}

- (id)viewCacheForWidth:(double)width
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastLegendViewCache = selfCopy->_lastLegendViewCache;
  if (!lastLegendViewCache || (lastLegendWidth = selfCopy->_lastLegendWidth, lastLegendWidth != width) || lastLegendWidth == 0.0)
  {
    selfCopy->_lastLegendWidth = width;
    v7 = [TSCHLegendViewCache alloc];
    lastLegendViewCache = objc_msgSend_initWithLegendModelCache_legendWidth_(v7, v8, width, v9, v10, selfCopy);
    v11 = selfCopy->_lastLegendViewCache;
    selfCopy->_lastLegendViewCache = lastLegendViewCache;
  }

  v12 = lastLegendViewCache;
  objc_sync_exit(selfCopy);

  return v12;
}

- (CGSize)largestCellSize
{
  objc_copyStruct(v4, &self->_largestCellSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end