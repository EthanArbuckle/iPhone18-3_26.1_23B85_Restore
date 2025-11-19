@interface TSCHLineAreaSeriesModelCache
- (TSCHLineAreaSeriesModelCache)initWithChartModel:(id)a3 forSeries:(unint64_t)a4;
- (void)dealloc;
@end

@implementation TSCHLineAreaSeriesModelCache

- (TSCHLineAreaSeriesModelCache)initWithChartModel:(id)a3 forSeries:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_chartInfo(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_numberOfSeries(v6, v12, v13, v14, v15);
  if (v11 && v16 > a4)
  {
    v386.receiver = self;
    v386.super_class = TSCHLineAreaSeriesModelCache;
    v21 = [(TSCHLineAreaSeriesModelCache *)&v386 init];
    v26 = v21;
    if (!v21)
    {
LABEL_55:
      self = v26;
      v96 = self;
      goto LABEL_56;
    }

    v21->_seriesIndex = a4;
    v27 = objc_msgSend_seriesAtIndex_(v6, v22, v23, v24, v25, a4);
    series = v26->_series;
    v26->_series = v27;

    v33 = objc_msgSend_seriesType(v26->_series, v29, v30, v31, v32);
    v38 = objc_msgSend_model(v26->_series, v34, v35, v36, v37);
    v43 = objc_msgSend_chartInfo(v38, v39, v40, v41, v42);
    v48 = objc_msgSend_chartType(v43, v44, v45, v46, v47);
    v53 = objc_msgSend_usesCartesianCoordinates(v48, v49, v50, v51, v52);

    if (v53)
    {
      v58 = objc_msgSend_axisIDForAxisType_(v26->_series, v54, v55, v56, v57, 2);
      groupAxis = objc_msgSend_axisIDForAxisType_(v26->_series, v59, v60, v61, v62, 1);
      v68 = objc_msgSend_axisForID_(v6, v64, v65, v66, v67, v58);
      v73 = objc_msgSend_axisForID_(v6, v69, v70, v71, v72, groupAxis);
      objc_opt_class();
      objc_msgSend_isCategory(v73, v74, v75, v76, v77);
      v78 = TSUDynamicCast();
      valueAxis = v26->_valueAxis;
      v26->_valueAxis = v78;

      if (v26->_valueAxis == v68)
      {
        v80 = v73;
      }

      else
      {
        v80 = v68;
      }

      objc_storeStrong(&v26->_groupAxis, v80);
    }

    else
    {
      objc_opt_class();
      v101 = objc_msgSend_axisIDForAxisType_(v26->_series, v97, v98, v99, v100, 5);
      v106 = objc_msgSend_axisForID_(v6, v102, v103, v104, v105, v101);
      v107 = TSUDynamicCast();
      v108 = v26->_valueAxis;
      v26->_valueAxis = v107;

      v58 = objc_msgSend_axisIDForAxisType_(v26->_series, v109, v110, v111, v112, 6);
      v117 = objc_msgSend_axisForID_(v6, v113, v114, v115, v116, v58);
      groupAxis = v26->_groupAxis;
      v26->_groupAxis = v117;
    }

    if (!v26->_valueAxis)
    {
      v122 = MEMORY[0x277D81150];
      v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v119, v120, v121, "[TSCHLineAreaSeriesModelCache initWithChartModel:forSeries:]");
      v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaSeriesModelCache.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v129, v130, v131, v132, v123, v128, 67, 0, "invalid nil value for '%{public}s'", "_valueAxis");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135, v136);
    }

    if (!v26->_groupAxis)
    {
      v137 = MEMORY[0x277D81150];
      v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v119, v120, v121, "[TSCHLineAreaSeriesModelCache initWithChartModel:forSeries:]");
      v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v139, v140, v141, v142, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaSeriesModelCache.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v137, v144, v145, v146, v147, v138, v143, 68, 0, "invalid nil value for '%{public}s'", "_groupAxis");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149, v150, v151);
    }

    v26->_showLabelsInFront = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v118, v119, v120, v121, 1175, 1) != 0;
    v156 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v152, v153, v154, v155, 1208, 0);
    v161 = objc_msgSend_filterChartLabelPosition_(v33, v157, v158, v159, v160, v156);
    v26->_labelPosition = v161;
    if ((v161 & 2) != 0)
    {
      v166 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v162, v163, v164, v165, 1169, 0);
    }

    else
    {
      v166 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v162, v163, v164, v165, 1164, 0);
    }

    v171 = objc_msgSend_paragraphStyleAtIndex_(v11, v167, v168, v169, v170, v166);
    paragraphStyle = v26->_paragraphStyle;
    v26->_paragraphStyle = v171;

    v177 = objc_msgSend_objectValueForProperty_(v26->_series, v173, v174, v175, v176, 1184);
    v182 = objc_msgSend_copy(v177, v178, v179, v180, v181);
    seriesStroke = v26->_seriesStroke;
    v26->_seriesStroke = v182;

    v188 = objc_msgSend_fillForSeries(v26->_series, v184, v185, v186, v187);
    v189 = objc_opt_respondsToSelector();
    v194 = objc_msgSend_fillForSeries(v26->_series, v190, v191, v192, v193);
    v199 = v194;
    if (v189)
    {
      v200 = objc_msgSend_copy(v194, v195, v196, v197, v198);
      seriesFill = v26->_seriesFill;
      v26->_seriesFill = v200;
    }

    else
    {
      v202 = v26->_seriesFill;
      v26->_seriesFill = v194;
      v199 = v202;
    }

    v207 = objc_msgSend_chartType(v11, v203, v204, v205, v206);
    v212 = objc_msgSend_supportsSeriesShadow(v207, v208, v209, v210, v211);

    if (v212)
    {
      v217 = objc_msgSend_objectValueForProperty_(v26->_series, v213, v214, v215, v216, 1172);
      v222 = objc_msgSend_copy(v217, v218, v219, v220, v221);
      seriesShadow = v26->_seriesShadow;
      v26->_seriesShadow = v222;
    }

    else
    {
      v224 = objc_msgSend_nullShadow(TSCHStyleUtilities, v213, v214, v215, v216);
      v217 = v26->_seriesShadow;
      v26->_seriesShadow = v224;
    }

    v229 = objc_msgSend_seriesType(v26->_series, v225, v226, v227, v228);
    v230 = v26->_series;
    v235 = objc_msgSend_intValueForProperty_defaultValue_(v230, v231, v232, v233, v234, 1179, 0);
    v241 = objc_msgSend_defaultSymbolType(v229, v236, v237, v238, v239);
    if (v235)
    {
      LODWORD(v241) = objc_msgSend_intValueForProperty_defaultValue_(v230, v240, v242, v243, v244, 1190, v241);
    }

    v26->_symbolType = v241;
    v249 = objc_msgSend_objectValueForProperty_(v26->_series, v245, v246, v247, v248, 1189);
    v254 = objc_msgSend_mutableCopy(v249, v250, v251, v252, v253);

    if ((v26->_symbolType - 5) <= 1)
    {
      objc_msgSend_width(v254, v255, v256, v257, v258);
      objc_msgSend_setWidth_(v254, v260, v259 * 1.41421356, 1.41421356, v261);
    }

    objc_storeStrong(&v26->_symbolStroke, v254);
    LODWORD(v262) = 2139095039;
    objc_msgSend_floatValueForProperty_defaultValue_(v26->_series, v263, v262, v264, v265, 1188);
    v384 = v33;
    if (*&v267 == 3.4028e38)
    {
      v270 = 0;
    }

    else
    {
      v270 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v266, v267, v268, v269);
    }

    objc_opt_class();
    v275 = objc_msgSend_elementBuilder(v229, v271, v272, v273, v274);
    v276 = TSUDynamicCast();

    v385 = v270;
    if (!v276)
    {
      v281 = MEMORY[0x277D81150];
      v282 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v277, v278, v279, v280, "[TSCHLineAreaSeriesModelCache initWithChartModel:forSeries:]");
      v287 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, v284, v285, v286, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaSeriesModelCache.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v281, v288, v289, v290, v291, v282, v287, 115, 0, "invalid nil value for '%{public}s'", "elementBuilder");

      v270 = v385;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v292, v293, v294, v295);
    }

    objc_msgSend_dataPointDimension_symbolType_stroke_(v276, v277, v278, v279, v280, v270, v26->_symbolType, v26->_symbolStroke);
    v297 = v296;
    v26->_dataPointSize = v297;
    v301 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v298, v297, v299, v300, 1181, 0);
    v26->_showValueLabels = v301 != 0;
    if (!v301)
    {
      v306 = objc_msgSend_seriesType(v26->_series, v302, v303, v304, v305);
      v311 = objc_msgSend_supportsValueLabelsSeriesName(v306, v307, v308, v309, v310);

      if (v311)
      {
        v26->_showValueLabels = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v302, v303, v304, v305, 1178, 0) != 0;
      }
    }

    LODWORD(v303) = 1.0;
    objc_msgSend_floatValueForProperty_defaultValue_(v26->_series, v302, v303, v304, v305, 1168);
    v313 = v312;
    v26->_opacity = v313;
    if (objc_msgSend_specificPropertyForGeneric_(v26->_series, v314, v313, v315, v316, 1176) || objc_msgSend_defaultPropertyForGeneric_(v26->_series, v317, v318, v319, v320, 1176))
    {
      v325 = v26->_series;
      if (objc_msgSend_intValueForProperty_defaultValue_(v325, v326, v327, v328, v329, 1176, 0))
      {
        v334 = objc_msgSend_intValueForProperty_defaultValue_(v325, v330, v331, v332, v333, 1165, 0);
      }

      else
      {
        v334 = 0;
      }
    }

    else
    {
      v334 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v321, v322, v323, v324, 1165, 1);
    }

    v26->_lineType = v334;
    v26->_unitSymbolPath = objc_msgSend_newUnitPathForSymbol_symbolSize_stroke_(TSCHRenderUtilities, v335, v26->_dataPointSize, v336, v337, v26->_symbolType, v26->_symbolStroke);
    v342 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v338, v339, v340, v341, 1186, 0);
    v347 = objc_msgSend_chartType(v11, v343, v344, v345, v346);
    if (objc_msgSend_supportsSeriesStroke(v347, v348, v349, v350, v351))
    {
      v356 = objc_msgSend_intValueForProperty_defaultValue_(v26->_series, v352, v353, v354, v355, 1187, 0);

      if (!v342)
      {
        if (v356)
        {
          v362 = objc_msgSend_objectValueForProperty_(v26->_series, v357, v358, v359, v360, 1184);
          if (v362)
          {
            v366 = MEMORY[0x277D801F8];
            v367 = objc_msgSend_color(v26->_seriesStroke, v361, v363, v364, v365);
            v372 = objc_msgSend_colorWithColor_(v366, v368, v369, v370, v371, v367);
          }

          else
          {
            v372 = 0;
          }

          if (v372)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_50;
      }
    }

    else
    {

      if (!v342)
      {
        goto LABEL_50;
      }
    }

    v372 = objc_msgSend_fillForSeries(v26->_series, v357, v358, v359, v360);
    if (v372 || (objc_msgSend_clearColor(MEMORY[0x277D801F8], v373, v374, v375, v376), (v372 = objc_claimAutoreleasedReturnValue()) != 0))
    {
LABEL_51:
      if (objc_opt_respondsToSelector())
      {
        v381 = objc_msgSend_copy(v372, v377, v378, v379, v380);
      }

      else
      {
        v381 = v372;
      }

      symbolFill = v26->_symbolFill;
      v26->_symbolFill = v381;

      goto LABEL_55;
    }

LABEL_50:
    v372 = objc_msgSend_objectValueForProperty_(v26->_series, v357, v358, v359, v360, 1185);
    goto LABEL_51;
  }

  v81 = MEMORY[0x277D81150];
  v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCHLineAreaSeriesModelCache initWithChartModel:forSeries:]");
  v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLineAreaSeriesModelCache.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v88, v89, v90, v91, v82, v87, 39, 0, "Bad inputs to [TSCHLineAreaSeriesModelCache initWithChartModel:forSeries:]");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93, v94, v95);
  v96 = 0;
LABEL_56:

  return v96;
}

- (void)dealloc
{
  CGPathRelease(self->_unitSymbolPath);
  v3.receiver = self;
  v3.super_class = TSCHLineAreaSeriesModelCache;
  [(TSCHLineAreaSeriesModelCache *)&v3 dealloc];
}

@end