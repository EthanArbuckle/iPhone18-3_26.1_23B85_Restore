@interface TSCHPieSeriesModelCache
- (BOOL)shouldRenderLabel;
- (TSCHChartSeries)series;
- (TSCHPieSeriesModelCache)initWithPrior:(id)a3 orChartModel:(id)a4 forSeries:(unint64_t)a5;
- (id)labelStringForType:(int64_t)a3;
- (id)labelStringWithValueLabelString:(id)a3 seriesNameLabelString:(id)a4;
@end

@implementation TSCHPieSeriesModelCache

- (TSCHPieSeriesModelCache)initWithPrior:(id)a3 orChartModel:(id)a4 forSeries:(unint64_t)a5
{
  v8 = a3;
  WeakRetained = a4;
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(v8 + 1);
  }

  v15 = objc_msgSend_chartInfo(WeakRetained, v9, v11, v12, v13);
  if (v15 && objc_msgSend_numberOfSeries(WeakRetained, v14, v16, v17, v18) > a5)
  {
    if (objc_msgSend_seriesIndex(v8, v19, v20, v21, v22) < a5)
    {

      v8 = 0;
    }

    v301.receiver = self;
    v301.super_class = TSCHPieSeriesModelCache;
    v24 = [(TSCHPieSeriesModelCache *)&v301 init];
    if (v24)
    {
      v28 = objc_msgSend_seriesAtIndex_(WeakRetained, v23, v25, v26, v27, 0);
      v33 = objc_msgSend_axisIDForAxisType_(v28, v29, v30, v31, v32, 3);

      objc_opt_class();
      v295 = v33;
      v38 = objc_msgSend_axisForID_(WeakRetained, v34, v35, v36, v37, v33);
      v39 = TSUDynamicCast();

      objc_storeStrong(&v24->_axis, v39);
      if (!v39)
      {
        v44 = MEMORY[0x277D81150];
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "[TSCHPieSeriesModelCache initWithPrior:orChartModel:forSeries:]");
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieSeriesModelCache.m");
        v51 = v50 = a5;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v52, v53, v54, v55, v45, v51, 66, 0, "invalid nil value for '%{public}s'", "axis");

        a5 = v50;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
      }

      objc_storeWeak(&v24->_chartModel, WeakRetained);
      objc_storeWeak(&v24->_chartInfo, v15);
      v296 = v15;
      if (v8)
      {
        v24->_currentSeriesStartAngle = *(v8 + 11);
        v24->_numberOfSeries = *(v8 + 5);
        v24->_totalValue = *(v8 + 6);
        v60 = objc_loadWeakRetained(v8 + 4);
        objc_storeWeak(&v24->_singleCircleSeriesElement, v60);

        v24->_isSingleCircleSpecialCase = v8[24];
        v64 = *(v8 + 12);
        v24->_currentSeriesAngleSweep = v64;
      }

      else
      {
        v66 = objc_loadWeakRetained(&v24->_chartInfo);
        objc_msgSend_floatValueForProperty_defaultValue_(v66, v67, 0.0, v68, v69, 1107);
        v71 = v70;

        v72 = (-90.0 - v71) * 0.0174532925;
        v24->_currentSeriesStartAngle = v72;
        v24->_currentSeriesAngleSweep = 0.0;
        v24->_numberOfSeries = objc_msgSend_numberOfSeries(WeakRetained, v73, v72, 0.0174532925, v74);
        objc_msgSend_totalForGroupIndex_(v39, v75, v76, v77, v78, 0);
        v24->_totalValue = v79;
        objc_storeWeak(&v24->_singleCircleSeriesElement, 0);
        v300 = 0;
        LOBYTE(v66) = objc_msgSend_isSingleCircleSpecialCaseOutSeries_(v15, v80, v81, v82, v83, &v300);
        v84 = v300;
        v24->_isSingleCircleSpecialCase = v66;
        objc_storeWeak(&v24->_singleCircleSeriesElement, v84);
      }

      p_numberOfSeries = (v8 + 64);
      v297 = v8;
      v298 = v39;
      if (!v8)
      {
        p_numberOfSeries = &v24->_numberOfSeries;
      }

      v86 = *p_numberOfSeries;
      if (*p_numberOfSeries > a5)
      {
        v299 = a5;
        do
        {
          v24->_currentSeriesIndex = --v86;
          v87 = objc_msgSend_seriesAtIndex_(WeakRetained, v61, v64, v62, v63, v86);
          objc_storeWeak(&v24->_currentSeries, v87);

          v24->_currentSeriesStartAngle = v24->_currentSeriesStartAngle - v24->_currentSeriesAngleSweep;
          v24->_currentSeriesAngleSweep = 0.0;
          v24->_currentSeriesAxisValue = 0.0;
          v24->_currentSeriesPercentage = 0.0;
          v88 = objc_loadWeakRetained(&v24->_currentSeries);
          v93 = objc_msgSend_valueForAxis_groupIndex_(v88, v89, v90, v91, v92, v39, 0);

          if (!v24->_isSingleCircleSpecialCase && v93)
          {
            goto LABEL_20;
          }

          if (v24->_isSingleCircleSpecialCase)
          {
            v124 = objc_loadWeakRetained(&v24->_currentSeries);
            v129 = objc_msgSend_seriesIndex(v124, v125, v126, v127, v128);
            v130 = objc_loadWeakRetained(&v24->_singleCircleSeriesElement);
            if (v129 == objc_msgSend_seriesIndex(v130, v131, v132, v133, v134))
            {
              v135 = objc_loadWeakRetained(&v24->_currentSeries);
              v140 = objc_msgSend_chartInfo(v135, v136, v137, v138, v139);
              v141 = WeakRetained;
              v142 = objc_loadWeakRetained(&v24->_singleCircleSeriesElement);
              v147 = objc_msgSend_chartInfo(v142, v143, v144, v145, v146);

              WeakRetained = v141;
              v39 = v298;

              a5 = v299;
              if (v140 == v147)
              {
                if (v93)
                {
LABEL_20:
                  objc_msgSend_doubleValue(v93, v94, v95, v96, v97);
                  v99 = v98;
                  v100 = objc_loadWeakRetained(&v24->_currentSeries);
                  objc_msgSend_doubleModelToAxisValue_forSeries_(v39, v101, v99, v102, v103, v100);
                  v24->_currentSeriesAxisValue = v104;
                }

                else
                {
                  v24->_currentSeriesAxisValue = 0.0;
                }

                totalValue = v24->_totalValue;
                v106 = 1.0;
                if (!v24->_isSingleCircleSpecialCase)
                {
                  v106 = v24->_currentSeriesAxisValue / totalValue;
                }

                v24->_currentSeriesPercentage = v106;
                v107 = v106 * 6.28318531;
                v24->_currentSeriesAngleSweep = v107;
                v24->_currentSeriesNullData = 0;
                if (totalValue == 0.0)
                {
                  currentSeriesAxisValue = v24->_currentSeriesAxisValue;
                  if (currentSeriesAxisValue != 0.0)
                  {
                    v109 = MEMORY[0x277D81150];
                    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, currentSeriesAxisValue, v107, v97, "[TSCHPieSeriesModelCache initWithPrior:orChartModel:forSeries:]");
                    v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieSeriesModelCache.m");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v116, v117, v118, v119, v110, v115, 112, 0, "value is not zero, but total value somehow IS zero.  That's not possible.  Something is very wrong.");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v120, v121, v122, v123);
                  }
                }

                goto LABEL_33;
              }
            }

            else
            {

              a5 = v299;
            }
          }

          v24->_currentSeriesNullData = 1;
LABEL_33:
        }

        while (v86 > a5);
      }

      currentSeriesStartAngle = v24->_currentSeriesStartAngle;
      currentSeriesAngleSweep = v24->_currentSeriesAngleSweep;
      v24->_midAngle = currentSeriesStartAngle + currentSeriesAngleSweep * -0.5;
      v24->_endAngle = currentSeriesStartAngle - currentSeriesAngleSweep;
      v150 = objc_loadWeakRetained(&v24->_currentSeries);
      objc_msgSend_floatValueForProperty_defaultValue_(v150, v151, 0.0, v152, v153, 1211);
      v24->_wedgeExplosion = v154;

      v24->_labelExplosion = 0.0;
      v155 = objc_loadWeakRetained(&v24->_currentSeries);
      objc_msgSend_floatValueForLabelExplosion_(v155, v156, v157, v158, v159, &v24->_labelExplosion);

      if (v24->_isSingleCircleSpecialCase)
      {
        v24->_effectiveWedgeExplosion = 0.0;
      }

      else
      {
        v160 = objc_loadWeakRetained(&v24->_currentSeries);
        objc_msgSend_floatValueForProperty_defaultValue_(v160, v161, 0.0, v162, v163, 1211);
        v24->_effectiveWedgeExplosion = v164;
      }

      v15 = v296;
      v165 = objc_loadWeakRetained(&v24->_currentSeries);
      objc_msgSend_effectiveLabelExplosion(v165, v166, v167, v168, v169);
      *&v170 = v170;
      v24->_effectiveLabelExplosion = *&v170;

      effectiveLabelExplosion = v24->_effectiveLabelExplosion;
      v172 = effectiveLabelExplosion / 100.0;
      v175 = objc_msgSend_chartType(v296, v173, effectiveLabelExplosion, 100.0, v174);
      v180 = objc_msgSend_supportsInnerRadius(v175, v176, v177, v178, v179);

      v185 = objc_msgSend_valueForProperty_(v296, v181, v182, v183, v184, 1103);
      v189 = v185;
      v190 = 0.0;
      if (v180)
      {
        objc_msgSend_floatValue(v185, v186, 0.0, v187, v188);
        v190 = v191;
      }

      if (v172 >= v190 && v172 <= 1.0)
      {
        v193 = 1164;
      }

      else
      {
        v193 = 1169;
      }

      v194 = objc_loadWeakRetained(&v24->_currentSeries);
      v199 = objc_msgSend_intValueForProperty_defaultValue_(v194, v195, v196, v197, v198, v193, 0);

      v200 = objc_loadWeakRetained(&v24->_chartInfo);
      v205 = objc_msgSend_paragraphStyleAtIndex_(v200, v201, v202, v203, v204, v199);
      paragraphStyle = v24->_paragraphStyle;
      v24->_paragraphStyle = v205;

      v207 = objc_loadWeakRetained(&v24->_currentSeries);
      v212 = objc_msgSend_valueLabelStringForGroupIndex_(v207, v208, v209, v210, v211, 0);
      v217 = objc_msgSend_copy(v212, v213, v214, v215, v216);
      valueLabelString = v24->_valueLabelString;
      v24->_valueLabelString = v217;

      v219 = objc_loadWeakRetained(&v24->_currentSeries);
      v224 = objc_msgSend_seriesNameStringForGroupIndex_(v219, v220, v221, v222, v223, 0);
      v229 = objc_msgSend_copy(v224, v225, v226, v227, v228);
      seriesNameLabelString = v24->_seriesNameLabelString;
      v24->_seriesNameLabelString = v229;

      v235 = objc_msgSend_labelStringWithValueLabelString_seriesNameLabelString_(v24, v231, v232, v233, v234, v24->_valueLabelString, v24->_seriesNameLabelString);
      v240 = objc_msgSend_copy(v235, v236, v237, v238, v239);
      labelString = v24->_labelString;
      v24->_labelString = v240;

      v246 = objc_msgSend_groupedShadowsForChartModel_(TSCHStyleUtilities, v242, v243, v244, v245, WeakRetained);
      v24->_groupedShadow = v246;
      v8 = v297;
      if (v246)
      {
        v251 = objc_msgSend_seriesAtIndex_(WeakRetained, v247, v248, v249, v250, 0);
      }

      else
      {
        v251 = objc_loadWeakRetained(&v24->_currentSeries);
      }

      v256 = v251;
      v257 = objc_msgSend_objectValueForProperty_(v251, v252, v253, v254, v255, 1172);
      v262 = objc_msgSend_copy(v257, v258, v259, v260, v261);
      seriesShadow = v24->_seriesShadow;
      v24->_seriesShadow = v262;

      if ((objc_msgSend_hasShadow_(TSCHStyleUtilities, v264, v265, v266, v267, v24->_seriesShadow) & 1) == 0)
      {
        v268 = v24->_seriesShadow;
        v24->_seriesShadow = 0;
      }

      v269 = objc_loadWeakRetained(&v24->_currentSeries);
      v274 = objc_msgSend_objectValueForProperty_(v269, v270, v271, v272, v273, 1184);
      v279 = objc_msgSend_copy(v274, v275, v276, v277, v278);
      seriesStroke = v24->_seriesStroke;
      v24->_seriesStroke = v279;

      v281 = objc_loadWeakRetained(&v24->_currentSeries);
      v286 = objc_msgSend_objectValueForProperty_(v281, v282, v283, v284, v285, 1160);
      seriesFill = v24->_seriesFill;
      v24->_seriesFill = v286;

      v288 = objc_loadWeakRetained(&v24->_currentSeries);
      LODWORD(v289) = 1.0;
      objc_msgSend_floatValueForProperty_defaultValue_(v288, v290, v289, v291, v292, 1168);
      v24->_seriesOpacity = v293;
    }

    self = v24;
    v65 = self;
  }

  else
  {
    v65 = 0;
  }

  return v65;
}

- (id)labelStringWithValueLabelString:(id)a3 seriesNameLabelString:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_length(v5, v7, v8, v9, v10) && objc_msgSend_length(v6, v11, v12, v13, v14))
  {
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, v12, v13, v14, @"%@\n%@", v6, v5);
LABEL_8:
    v20 = v15;
    goto LABEL_9;
  }

  if (objc_msgSend_length(v5, v11, v12, v13, v14))
  {
    v15 = v5;
    goto LABEL_8;
  }

  if (objc_msgSend_length(v6, v16, v17, v18, v19))
  {
    v15 = v6;
    goto LABEL_8;
  }

  v20 = &stru_288528678;
LABEL_9:

  return v20;
}

- (BOOL)shouldRenderLabel
{
  v6 = objc_msgSend_axis(self, a2, v2, v3, v4);
  WeakRetained = objc_loadWeakRetained(&self->_currentSeries);
  v12 = objc_msgSend_dataFormatterForSeries_groupIndex_(v6, v8, v9, v10, v11, WeakRetained, 0);

  v17 = objc_msgSend_convertToPersistableStyleObject(v12, v13, v14, v15, v16);
  LODWORD(WeakRetained) = objc_msgSend_formatType(v17, v18, v19, v20, v21);

  if (WeakRetained == 258 && (v26 = objc_msgSend_numberOfDecimalPlaces(v12, v22, v23, v24, v25), v26 != 253))
  {
    v28 = self->_currentSeriesAxisValue / self->_totalValue * 100.0;
    v29 = __exp10(v26);
    v24 = round(v29 * v28);
    v23 = v24 / v29;
    v27 = v23 != 0.0;
  }

  else
  {
    v27 = 1;
  }

  shouldRenderCalloutLine = objc_msgSend_shouldRenderCalloutLine(self, v22, v23, v24, v25);
  if (!self->_currentSeriesNullData && (currentSeriesPercentage = self->_currentSeriesPercentage, currentSeriesPercentage > 0.0) && ((v35 = shouldRenderCalloutLine, objc_msgSend_length(self->_valueLabelString, v31, currentSeriesPercentage, v32, v33)) || objc_msgSend_length(self->_seriesNameLabelString, v36, v37, v38, v39)))
  {
    v40 = v27 | v35;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)labelStringForType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = objc_msgSend_valueLabelString(self, a2, v3, v4, v5);
    }

    else
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHPieSeriesModelCache labelStringForType:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPieSeriesModelCache.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 244, 0, "Invalid label type: %ld", a3);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
      v7 = &stru_288528678;
    }
  }

  else
  {
    v7 = objc_msgSend_seriesNameLabelString(self, a2, v3, v4, v5);
  }

  return v7;
}

- (TSCHChartSeries)series
{
  WeakRetained = objc_loadWeakRetained(&self->_currentSeries);

  return WeakRetained;
}

@end