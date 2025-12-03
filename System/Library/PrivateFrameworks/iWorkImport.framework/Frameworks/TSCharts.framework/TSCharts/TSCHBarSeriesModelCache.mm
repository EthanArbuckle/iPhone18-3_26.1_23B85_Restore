@interface TSCHBarSeriesModelCache
- (TSCHBarSeriesModelCache)initWithChartModel:(id)model forSeries:(unint64_t)series;
@end

@implementation TSCHBarSeriesModelCache

- (TSCHBarSeriesModelCache)initWithChartModel:(id)model forSeries:(unint64_t)series
{
  modelCopy = model;
  v11 = objc_msgSend_chartInfo(modelCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfSeries(modelCopy, v12, v13, v14, v15);
  if (v11 && v16 > series)
  {
    v258.receiver = self;
    v258.super_class = TSCHBarSeriesModelCache;
    v21 = [(TSCHBarSeriesModelCache *)&v258 init];
    v26 = v21;
    if (v21)
    {
      v21->_seriesIndex = series;
      v27 = objc_msgSend_seriesAtIndex_(modelCopy, v22, v23, v24, v25, series);
      series = v26->_series;
      v26->_series = v27;

      v33 = objc_msgSend_seriesType(v26->_series, v29, v30, v31, v32);
      v38 = objc_msgSend_axisIDForAxisType_(v26->_series, v34, v35, v36, v37, 2);
      v43 = objc_msgSend_axisIDForAxisType_(v26->_series, v39, v40, v41, v42, 1);
      v48 = objc_msgSend_axisForID_(modelCopy, v44, v45, v46, v47, v38);
      v53 = objc_msgSend_axisForID_(modelCopy, v49, v50, v51, v52, v43);
      objc_opt_class();
      objc_msgSend_isCategory(v53, v54, v55, v56, v57);
      v58 = TSUDynamicCast();
      valueAxis = v26->_valueAxis;
      v26->_valueAxis = v58;

      if (v26->_valueAxis == v48)
      {
        v60 = v53;
      }

      else
      {
        v60 = v48;
      }

      objc_storeStrong(&v26->_groupAxis, v60);
      if (!v26->_valueAxis)
      {
        v65 = MEMORY[0x277D81150];
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "[TSCHBarSeriesModelCache initWithChartModel:forSeries:]");
        v66 = v256 = v33;
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarSeriesModelCache.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v72, v73, v74, v75, v66, v71, 59, 0, "invalid nil value for '%{public}s'", "_valueAxis");

        v33 = v256;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
      }

      if (!v26->_groupAxis)
      {
        v80 = MEMORY[0x277D81150];
        v257 = v33;
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v62, v63, v64, "[TSCHBarSeriesModelCache initWithChartModel:forSeries:]");
        v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarSeriesModelCache.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v87, v88, v89, v90, v81, v86, 60, 0, "invalid nil value for '%{public}s'", "_groupAxis");

        v33 = v257;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
      }

      v99 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v95, v96, v97, v98, 1208, 0);
      v104 = objc_msgSend_filterChartLabelPosition_(v33, v100, v101, v102, v103, v99);
      v26->_labelPosition = v104;
      if ((v104 & 2) != 0)
      {
        v109 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v105, v106, v107, v108, 1169, 0);
      }

      else
      {
        v109 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v105, v106, v107, v108, 1164, 0);
      }

      v114 = objc_msgSend_paragraphStyleAtIndex_(v11, v110, v111, v112, v113, v109);
      paragraphStyle = v26->_paragraphStyle;
      v26->_paragraphStyle = v114;

      v120 = objc_msgSend_model(v26->_series, v116, v117, v118, v119);
      v125 = objc_msgSend_numberOfGroupsInSeries_(v120, v121, v122, v123, v124, v26->_series);

      v130 = objc_msgSend_numberOfSeriesForCalculatingBarWidth_(v33, v126, v127, v128, v129, modelCopy);
      LODWORD(v131) = 1120403456;
      objc_msgSend_floatValueForProperty_defaultValue_(v11, v132, v131, v133, v134, 1105);
      v136 = v135;
      LODWORD(v137) = 10.0;
      objc_msgSend_floatValueForProperty_defaultValue_(v11, v138, v137, v139, v140, 1104);
      v145 = 0.5;
      v142 = v136 / 100.0 * 0.5;
      v144 = v143 / 100.0;
      *&v145 = (v144 * ((v130 - 1) * v125)) + (((v125 * v142) + (v125 * v142)) + (v130 * v125));
      v26->_barWidthRatio = 1.0 / *&v145;
      v26->_barGroupGapRatio = (v142 / *&v145);
      v146 = (v144 / *&v145);
      if (v130 < 2)
      {
        v146 = 0.0;
      }

      v26->_barGapRatio = v146;
      v26->_valueLabelsOn = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v141, v146, 0.0, v145, 1181, 0) != 0;
      v26->_summaryValueLabelsOn = objc_msgSend_intValueForProperty_defaultValue_(v11, v147, v148, v149, v150, 1122, 0) != 0;
      v151 = v26->_valueAxis;
      objc_msgSend_interceptForAxis_(v151, v152, v153, v154, v155, v26->_groupAxis);
      objc_msgSend_unitSpaceValueForDataSpaceValue_(v151, v156, v157, v158, v159);
      v26->_unitSpaceIntercept = v160;
      v164 = objc_msgSend_objectValueForProperty_(v26->_series, v161, v160, v162, v163, 1160);
      LOBYTE(v151) = objc_opt_respondsToSelector();
      v169 = objc_msgSend_objectValueForProperty_(v26->_series, v165, v166, v167, v168, 1160);
      v174 = v169;
      if (v151)
      {
        v175 = objc_msgSend_copy(v169, v170, v171, v172, v173);
        fill = v26->_fill;
        v26->_fill = v175;
      }

      else
      {
        v193 = v26->_fill;
        v26->_fill = v169;
        v174 = v193;
      }

      v198 = objc_msgSend_objectValueForProperty_(v26->_series, v194, v195, v196, v197, 1184);
      v199 = objc_opt_respondsToSelector();
      v204 = objc_msgSend_objectValueForProperty_(v26->_series, v200, v201, v202, v203, 1184);
      v209 = v204;
      if (v199)
      {
        v210 = objc_msgSend_copy(v204, v205, v206, v207, v208);
        stroke = v26->_stroke;
        v26->_stroke = v210;
      }

      else
      {
        v212 = v26->_stroke;
        v26->_stroke = v204;
        v209 = v212;
      }

      LODWORD(v213) = 1.0;
      objc_msgSend_floatValueForProperty_defaultValue_(v26->_series, v214, v213, v215, v216, 1168);
      v218 = v217;
      v26->_opacity = v218;
      if (objc_msgSend_groupedShadowsForChartModel_(TSCHStyleUtilities, v219, v218, v220, v221, modelCopy))
      {
        v226 = objc_msgSend_seriesAtIndex_(modelCopy, v222, v223, v224, v225, 0);
        v231 = objc_msgSend_objectValueForProperty_(v226, v227, v228, v229, v230, 1172);
        v236 = objc_msgSend_copy(v231, v232, v233, v234, v235);
        shadow = v26->_shadow;
        v26->_shadow = v236;
      }

      else
      {
        v238 = objc_msgSend_chartType(v11, v222, v223, v224, v225);
        v243 = objc_msgSend_supportsSeriesShadow(v238, v239, v240, v241, v242);

        if (v243)
        {
          v226 = objc_msgSend_objectValueForProperty_(v26->_series, v244, v245, v246, v247, 1172);
          v252 = objc_msgSend_copy(v226, v248, v249, v250, v251);
          v253 = v26->_shadow;
          v26->_shadow = v252;
        }

        else
        {
          v254 = objc_msgSend_nullShadow(TSCHStyleUtilities, v244, v245, v246, v247);
          v226 = v26->_shadow;
          v26->_shadow = v254;
        }
      }
    }

    self = v26;
    selfCopy = self;
  }

  else
  {
    v177 = MEMORY[0x277D81150];
    v178 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHBarSeriesModelCache initWithChartModel:forSeries:]");
    v183 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v179, v180, v181, v182, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBarSeriesModelCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v177, v184, v185, v186, v187, v178, v183, 36, 0, "Bad inputs to [TSCHBarSeriesModelCache initWithChartModel:forSeries:]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v188, v189, v190, v191);
    selfCopy = 0;
  }

  return selfCopy;
}

@end