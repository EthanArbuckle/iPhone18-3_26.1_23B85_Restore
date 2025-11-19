@interface TSCHLegendCellModelCache
- (CGRect)badgeFillFrame;
- (CGRect)badgeFrame;
- (CGRect)labelFrame;
- (CGSize)size;
- (TSCHLegendCellModelCache)initWithChartModel:(id)a3 cellType:(int)a4 seriesIndex:(unint64_t)a5 withMetrics:(id)a6 overrideLabel:(id)a7 styleProvidingSource:(id)a8;
- (id)fill;
- (id)symbolFill;
@end

@implementation TSCHLegendCellModelCache

- (TSCHLegendCellModelCache)initWithChartModel:(id)a3 cellType:(int)a4 seriesIndex:(unint64_t)a5 withMetrics:(id)a6 overrideLabel:(id)a7 styleProvidingSource:(id)a8
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v22 = objc_msgSend_chartInfo(v13, v17, v18, v19, v20);
  if (v22)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v93 = MEMORY[0x277D81150];
    v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "[TSCHLegendCellModelCache initWithChartModel:cellType:seriesIndex:withMetrics:overrideLabel:styleProvidingSource:]");
    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v100, v101, v102, v103, v94, v99, 294, 0, "invalid nil value for '%{public}s'", "chartInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v108 = MEMORY[0x277D81150];
  v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "[TSCHLegendCellModelCache initWithChartModel:cellType:seriesIndex:withMetrics:overrideLabel:styleProvidingSource:]");
  v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v115, v116, v117, v118, v109, v114, 295, 0, "invalid nil value for '%{public}s'", "metrics");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120, v121, v122);
LABEL_3:
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  else
  {
    v26 = objc_msgSend_seriesAtIndex_(v13, v21, v23, v24, v25, a5);
  }

  v27 = 0;
  if (v14 && v22)
  {
    v291.receiver = self;
    v291.super_class = TSCHLegendCellModelCache;
    v28 = [(TSCHLegendCellModelCache *)&v291 init];
    v29 = v28;
    if (!v28)
    {
LABEL_69:
      self = v29;
      v27 = self;
      goto LABEL_70;
    }

    v288 = v22;
    v28->_legendCellType = a4;
    v28->_seriesIndex = a5;
    objc_storeStrong(&v28->_series, v26);
    v34 = objc_msgSend_seriesType(v26, v30, v31, v32, v33);
    v29->_badgeType = objc_msgSend_legendBadgeType(v34, v35, v36, v37, v38);

    objc_msgSend_badgeSize(v14, v39, v40, v41, v42);
    v44 = *&v43;
    objc_msgSend_badgeSize(v14, v45, v43, v46, v47);
    v49 = *&v48;
    v53 = objc_msgSend_seriesType(v29->_series, v50, v48, v51, v52);
    v54 = v29->_series;
    LODWORD(v34) = objc_msgSend_intValueForProperty_defaultValue_(v54, v55, v56, v57, v58, 1179, 0);
    v64 = objc_msgSend_defaultSymbolType(v53, v59, v60, v61, v62);
    if (v34)
    {
      LODWORD(v64) = objc_msgSend_intValueForProperty_defaultValue_(v54, v63, v65, v66, v67, 1190, v64);
    }

    v68 = v44;

    v29->_symbolType = v64;
    legendCellType = v29->_legendCellType;
    if (legendCellType)
    {
      v290 = 0;
      goto LABEL_13;
    }

    badgeType = v29->_badgeType;
    if ((badgeType | 4) != 6)
    {
      v290 = 0;
LABEL_31:
      if (badgeType == 1)
      {
        v157 = objc_msgSend_seriesType(v26, v69, v70, v71, v72);
        v162 = objc_msgSend_supportsLineConnectionStyle(v157, v158, v159, v160, v161);
      }

      else
      {
        v162 = 0;
      }

      v163 = objc_msgSend_intValueForProperty_defaultValue_(v29->_series, v69, v70, v71, v72, 1176, v162);
      if (v163)
      {
        v163 = objc_msgSend_intValueForProperty_defaultValue_(v29->_series, v164, v165, v166, v167, 1165, 0);
      }

      v29->_lineType = v163;
      v168 = objc_msgSend_seriesType(v29->_series, v164, v165, v166, v167);
      v173 = objc_msgSend_legendStrokeForSeries_(v168, v169, v170, v171, v172, v29->_series);
      v178 = objc_msgSend_mutableCopy(v173, v174, v175, v176, v177);

      v181 = 4.5;
      v182 = 5.5;
      if (v29->_badgeType == 1)
      {
        v183 = 5.5;
      }

      else
      {
        v183 = 4.5;
      }

      if (v178)
      {
        if (objc_msgSend_shouldRender(v178, v179, 4.5, 5.5, v180))
        {
          v184 = v68 / v183;
          v185 = fmax(v68 / v183, 1.0);
          objc_msgSend_width(v178, v179, v184, 1.0, v180);
          if (v181 > v185)
          {
            objc_msgSend_setWidth_(v178, v179, v185, v182, v180);
          }
        }
      }

      if (v290)
      {
        objc_msgSend_width(v178, v179, v181, v182, v180);
        objc_msgSend_setWidth_(v178, v187, v186 + v186, v188, v189);
      }

      objc_storeStrong(&v29->_stroke, v178);
      shouldRender = objc_msgSend_shouldRender(v29->_stroke, v190, v191, v192, v193);
      v198 = 0.0;
      if (shouldRender)
      {
        objc_msgSend_width(v29->_stroke, v195, 0.0, v196, v197);
      }

      v29->_effectiveStrokeWidth = v198;

      v203 = objc_msgSend_objectValueForProperty_(v29->_series, v199, v200, v201, v202, 1189);
      v208 = objc_msgSend_mutableCopy(v203, v204, v205, v206, v207);

      if (v29->_badgeType == 1)
      {
        v211 = 5.5;
      }

      else
      {
        v211 = 4.5;
      }

      if (v208)
      {
        if (objc_msgSend_shouldRender(v208, v209, 4.5, 5.5, v210))
        {
          v214 = v68 / v211;
          v215 = fmax(v68 / v211, 1.0);
          objc_msgSend_width(v208, v212, v214, 1.0, v213);
          if (v219 > v215)
          {
            objc_msgSend_setWidth_(v208, v216, v215, v217, v218);
          }
        }
      }

      objc_storeStrong(&v29->_symbolStroke, v208);
      v224 = objc_msgSend_shouldRender(v29->_symbolStroke, v220, v221, v222, v223);
      v228 = 0.0;
      if (v224)
      {
        objc_msgSend_width(v29->_symbolStroke, v225, 0.0, v226, v227);
      }

      v29->_effectiveSymbolStrokeWidth = v228;

      v233 = objc_msgSend_name(v29->_series, v229, v230, v231, v232);
      v238 = objc_msgSend_copy(v233, v234, v235, v236, v237);
      labelString = v29->_labelString;
      v29->_labelString = v238;

      goto LABEL_57;
    }

    if (v64)
    {
      v290 = 0;
    }

    else
    {
      if (badgeType == 6)
      {
        v156 = objc_msgSend_fill(v29, v69, v70, v71, v72);
        v290 = v156 != 0;

        legendCellType = v29->_legendCellType;
LABEL_13:
        if (legendCellType == 1)
        {
          v29->_badgeType = 1;
          v124 = objc_msgSend_trendLineLegendText(v29->_series, v69, v70, v71, v72);
          v129 = objc_msgSend_copy(v124, v125, v126, v127, v128);
          v130 = v29->_labelString;
          v29->_labelString = v129;

          v135 = objc_msgSend_objectValueForProperty_(v29->_series, v131, v132, v133, v134, 1202);
          v141 = objc_msgSend_color(v135, v136, v137, v138, v139);
          if (!v141)
          {
            v141 = objc_msgSend_clearColor(MEMORY[0x277D81180], v140, v142, v143, v144);
          }

          v145 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v140, 2.0, v143, v144, v141);
          stroke = v29->_stroke;
          v29->_stroke = v145;

          symbolStroke = v29->_symbolStroke;
          v29->_symbolStroke = 0;

          *&v29->_symbolType = 0x100000000;
          v151 = objc_msgSend_shouldRender(v29->_stroke, v148, COERCE_DOUBLE(0x100000000), v149, v150);
          v155 = 0.0;
          if (v151)
          {
            objc_msgSend_width(v29->_stroke, v152, 0.0, v153, v154);
          }

          v29->_effectiveStrokeWidth = v155;
          v29->_effectiveSymbolStrokeWidth = 0.0;

          goto LABEL_57;
        }

        if (legendCellType)
        {
          v74 = MEMORY[0x277D81150];
          v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "[TSCHLegendCellModelCache initWithChartModel:cellType:seriesIndex:withMetrics:overrideLabel:styleProvidingSource:]");
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHLegendModelCache.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 394, 0, "Unknown TSCHLegendCellType");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
LABEL_57:
          if (v15)
          {
            v240 = objc_msgSend_copy(v15, v89, v90, v91, v92);
            v241 = v29->_labelString;
            v29->_labelString = v240;
          }

          v242 = v49;
          v243 = objc_msgSend_length(v29->_labelString, v89, v90, v91, v92);
          v249 = objc_msgSend_sharedText(TSCHText, v244, v245, v246, v247);
          if (v243)
          {
            v253 = v29->_labelString;
            v254 = objc_msgSend_paragraphStyle(v14, v248, v250, v251, v252);
            objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v249, v255, 0.0, v256, v257, v253, v254, 1, 0, v16, 0, 0);
            v259 = v258;
            v261 = v260;
          }

          else
          {
            v262 = objc_msgSend_paragraphStyle(v14, v248, v250, v251, v252);
            v259 = 0.0;
            objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v249, v263, 0.0, v264, v265, @" ", v262, 1, 0, v16, 0, 0);
            v261 = v266;
          }

          objc_msgSend_symbolGap(v14, v267, v268, v269, v270);
          if (v261 <= v242)
          {
            v272 = v242;
          }

          else
          {
            v272 = v261;
          }

          v29->_cellSize.width = v259 + v68 + v271;
          v29->_cellSize.height = v272;
          TSURectWithCenterAndSize();
          v274 = v273;
          v276 = v275;
          v29->_badgeFrame.origin.x = v277;
          v29->_badgeFrame.origin.y = v278;
          v29->_badgeFrame.size.width = v273;
          v29->_badgeFrame.size.height = v275;
          TSURectWithCenterAndSize();
          v29->_labelFrame.origin.x = v279;
          v29->_labelFrame.origin.y = v280;
          v29->_labelFrame.size.width = v281;
          v29->_labelFrame.size.height = v282;
          v22 = v288;
          if (v290)
          {
            TSURectWithSize();
            v274 = v286;
          }

          else
          {
            v284 = v276 * 0.5;
            v283 = 0.0;
            v285 = v276 * 0.5;
          }

          v29->_badgeFillFrame.origin.x = v283;
          v29->_badgeFillFrame.origin.y = v284;
          v29->_badgeFillFrame.size.width = v274;
          v29->_badgeFillFrame.size.height = v285;

          goto LABEL_69;
        }

        goto LABEL_30;
      }

      v290 = 1;
    }

LABEL_30:
    badgeType = v29->_badgeType;
    goto LABEL_31;
  }

LABEL_70:

  return v27;
}

- (id)fill
{
  if (self->_legendCellType == 1 || self->_badgeType == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_msgSend_seriesType(self->_series, a2, v2, v3, v4);
    v6 = objc_msgSend_legendFillForSeries_(v7, v8, v9, v10, v11, self->_series);
  }

  return v6;
}

- (id)symbolFill
{
  if (self->_legendCellType == 1)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v7 = objc_msgSend_intValueForProperty_defaultValue_(self->_series, a2, v2, v3, v4, 1186, 0);
  v12 = objc_msgSend_intValueForProperty_defaultValue_(self->_series, v8, v9, v10, v11, 1187, 0);
  if (v7)
  {
    v5 = objc_msgSend_fill(self, v13, v14, v15, v16);
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v12 || !self->_stroke || (v17 = objc_alloc(MEMORY[0x277D801F8]), objc_msgSend_stroke(self, v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_color(v22, v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend_initWithColor_(v17, v28, v29, v30, v31, v27), v27, v22, !v5))
  {
LABEL_9:
    v5 = objc_msgSend_objectValueForProperty_(self->_series, v13, v14, v15, v16, 1185);
  }

LABEL_10:

  return v5;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_cellSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)badgeFrame
{
  objc_copyStruct(v6, &self->_badgeFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)badgeFillFrame
{
  objc_copyStruct(v6, &self->_badgeFillFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)labelFrame
{
  objc_copyStruct(v6, &self->_labelFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end