@interface TSCH2DSageGeometryHelper
+ (CGRect)computeSageChartAreaBoundsForChartInfo:(id)a3 geometryRect:(CGRect)a4 returningContainingViewportSize:(id *)a5;
- (BOOL)aspectRatioLocked;
- (BOOL)bottomAxisLabelsVisible;
- (BOOL)calculateChartExplodedSize;
- (BOOL)isArea;
- (BOOL)isLine;
- (BOOL)isScatter;
- (BOOL)isVertical;
- (BOOL)leftAxisLabelsVisible;
- (BOOL)p_labelsVisible:(id)a3;
- (BOOL)rightAxisLabelsVisible;
- (CGRect)computeSageLayoutCBBForSpiceDoc:(BOOL)a3;
- (CGSize)measureText:(id)a3 withParagraphStyle:(id)a4;
- (double)_bottomAxisOuterWidth;
- (double)_horizontalAxisLabelsHeight;
- (double)_leftAxisOuterWidth;
- (double)_rightAxisOuterWidth;
- (double)_seriesSymbolWidth;
- (double)_topAxisOuterWidth;
- (double)_verticalAxisLabelsWidth:(BOOL)a3;
- (double)distanceFromXAxisUsingParagraphStyle:(id)a3;
- (double)distanceFromYAxisUsingParagraphStyle:(id)a3;
- (double)p_widthFromTicksAndStrokeForAxis:(id)a3;
- (double)xAxisLabelHeight;
- (double)yAxisLabelHeight:(BOOL)a3;
- (void)calculateCategoryAxisTitleSize;
- (void)calculateChartAxisLabelsSize;
- (void)calculateChartAxisSize;
- (void)calculateChartBodySize;
- (void)calculateChartTitleSize;
- (void)calculateValueAxisTitleSize;
- (void)calculateValueAxisY2TitleSize;
@end

@implementation TSCH2DSageGeometryHelper

+ (CGRect)computeSageChartAreaBoundsForChartInfo:(id)a3 geometryRect:(CGRect)a4 returningContainingViewportSize:(id *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  v10 = a3;
  if (!a5 || *a5)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "+[TSCH2DSageGeometryHelper computeSageChartAreaBoundsForChartInfo:geometryRect:returningContainingViewportSize:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DSageGeometryHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 57, 0, "bad value passed for sizeValuePointer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_chartLayoutWithChartInfo_(TSCHChartLayout, v9, v11, v12, v13, v10);
  objc_msgSend_layoutForChartBodySize_(v29, v30, width, height, v31);
  objc_msgSend_chartBodyFrame(v29, v32, v33, v34, v35);
  v37 = v36;
  v39 = v38;
  objc_msgSend_chartAreaFrame(v29, v40, v41, v42, v36);
  v44 = v43;
  v46 = v45;

  TSUSubtractPoints();
  TSURectWithOriginAndSize();
  v88 = v48;
  v89 = v47;
  v86 = v50;
  v87 = v49;
  v92 = *(MEMORY[0x277CBF348] + 8);
  v93 = *MEMORY[0x277CBF348];
  v94 = v37;
  v95 = v39;
  v90 = v39 * 0.05;
  v91 = v37 * 0.05;
  v51 = 3;
  while (1)
  {
    v52 = objc_alloc(MEMORY[0x277D802E8]);
    v54 = objc_msgSend_initWithPosition_size_(v52, v53, v93, v92, v44, v46);
    v59 = objc_msgSend_helperWithImportedChartInfo_importedInfoGeometry_(a1, v55, v56, v57, v58, v10, v54);
    TSURectWithSize();
    v97 = CGRectStandardize(v96);
    x = v97.origin.x;
    y = v97.origin.y;
    v62 = v97.size.width;
    v63 = v97.size.height;
    objc_msgSend_computeSageLayoutCBBForSpiceDoc_(v59, v64, v97.origin.x, v97.origin.y, v97.size.width, 0);
    v99 = CGRectStandardize(v98);
    v65 = v99.origin.x;
    v66 = v99.size.width;
    v67 = v99.size.height;
    v68 = vabdd_f64(v99.size.height, v95);
    if (vabdd_f64(v99.size.width, v94) < v91 && v68 < v90)
    {
      break;
    }

    v44 = v44 + v94 - v99.size.width;
    v46 = v46 + v95 - v99.size.height;

    if (!--v51)
    {
      v71 = v88;
      v70 = v89;
      v73 = v86;
      v72 = v87;
      goto LABEL_12;
    }
  }

  v74 = v65;
  v84 = v99.origin.y;
  v85 = v65;
  v75 = v99.origin.y;
  CGRectGetMinX(v99);
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = v62;
  v100.size.height = v63;
  CGRectGetMinX(v100);
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = v62;
  v101.size.height = v63;
  CGRectGetMaxX(v101);
  v102.origin.x = v85;
  v102.origin.y = v75;
  v102.size.width = v66;
  v102.size.height = v67;
  CGRectGetMaxX(v102);
  v103.origin.x = v85;
  v103.origin.y = v75;
  v103.size.width = v66;
  v103.size.height = v67;
  CGRectGetMinY(v103);
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = v62;
  v104.size.height = v63;
  CGRectGetMinY(v104);
  v105.origin.x = x;
  v105.origin.y = y;
  v105.size.width = v62;
  v105.size.height = v63;
  CGRectGetMaxY(v105);
  v106.origin.y = v84;
  v106.origin.x = v85;
  v106.size.width = v66;
  v106.size.height = v67;
  CGRectGetMaxY(v106);
  TSURectWithOriginAndSize();
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v73 = v79;

LABEL_12:
  v80 = v70;
  v81 = v71;
  v82 = v72;
  v83 = v73;
  result.size.height = v83;
  result.size.width = v82;
  result.origin.y = v81;
  result.origin.x = v80;
  return result;
}

- (BOOL)isVertical
{
  v5 = objc_msgSend_chartType(self->super._chartInfo, a2, v2, v3, v4);
  v11 = objc_msgSend_barChart(TSCHChartType, v6, v7, v8, v9);
  if (v5 == v11)
  {
    v16 = 0;
  }

  else
  {
    v15 = objc_msgSend_stackedBarChart(TSCHChartType, v10, v12, v13, v14);
    v16 = v5 != v15;
  }

  return v16;
}

- (BOOL)isArea
{
  v5 = objc_msgSend_chartType(self->super._chartInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_areaChart(TSCHChartType, v6, v7, v8, v9);
  v11 = v5 == v10;

  return v11;
}

- (BOOL)isLine
{
  v5 = objc_msgSend_chartType(self->super._chartInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_lineChart(TSCHChartType, v6, v7, v8, v9);
  v11 = v5 == v10;

  return v11;
}

- (BOOL)isScatter
{
  v5 = objc_msgSend_chartType(self->super._chartInfo, a2, v2, v3, v4);
  v10 = objc_msgSend_scatterChart(TSCHChartType, v6, v7, v8, v9);
  v11 = v5 == v10;

  return v11;
}

- (BOOL)aspectRatioLocked
{
  v5 = objc_msgSend_chartType(self->super._chartInfo, a2, v2, v3, v4);
  hasFixedFrameRatio = objc_msgSend_hasFixedFrameRatio(v5, v6, v7, v8, v9);

  return hasFixedFrameRatio;
}

- (CGRect)computeSageLayoutCBBForSpiceDoc:(BOOL)a3
{
  objc_msgSend_naturalSize(self, a2, v3, v4, v5, a3);
  TSURectWithSize();
  v9 = v8;
  verticalAxisOverhang = self->_verticalAxisOverhang;
  p_rightAxisBounds = &self->_rightAxisBounds;
  p_rightAxisLabelsBounds = &self->_rightAxisLabelsBounds;
  if (self->_horizontalAxisOverhang >= self->_rightAxisBounds.size.width + self->_valueAxisY2TitleBounds.size.width + self->_rightAxisLabelsBounds.size.width)
  {
    horizontalAxisOverhang = self->_horizontalAxisOverhang;
  }

  else
  {
    horizontalAxisOverhang = self->_rightAxisBounds.size.width + self->_valueAxisY2TitleBounds.size.width + self->_rightAxisLabelsBounds.size.width;
  }

  height = self->_topRightChartTitleOverhang.height;
  width = self->_bottomLeftValueAxisTitleOverhang.width;
  v149 = horizontalAxisOverhang;
  v143 = self->_bottomLeftCategoryAxisTitleOverhang.height;
  v144 = self->_bottomLeftValueAxisTitleOverhang.height;
  v12 = self->_bottomLeftValueAxisY2TitleOverhang.width;
  v146 = v12;
  v147 = self->_bottomLeftCategoryAxisTitleOverhang.width;
  v142 = self->_bottomLeftValueAxisY2TitleOverhang.height;
  v13 = *MEMORY[0x277CBF3A0];
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  self->_topLegendBounds.origin = *MEMORY[0x277CBF3A0];
  self->_topLegendBounds.size = v14;
  p_leftLegendBounds = &self->_leftLegendBounds;
  self->_leftLegendBounds.origin = v13;
  self->_leftLegendBounds.size = v14;
  p_bottomLegendBounds = &self->_bottomLegendBounds;
  self->_bottomLegendBounds.origin = v13;
  self->_bottomLegendBounds.size = v14;
  self->_rightLegendBounds.origin = v13;
  self->_rightLegendBounds.size = v14;
  objc_msgSend_calculateChartAxisLabelsSize(self, v7, v13.x, v14.width, v12);
  objc_msgSend_calculateChartAxisSize(self, v16, v17, v18, v19);
  objc_msgSend_calculateChartTitleSize(self, v20, v21, v22, v23);
  objc_msgSend_calculateValueAxisTitleSize(self, v24, v25, v26, v27);
  objc_msgSend_calculateCategoryAxisTitleSize(self, v28, v29, v30, v31);
  objc_msgSend_calculateValueAxisY2TitleSize(self, v32, v33, v34, v35);
  objc_msgSend_calculateChartExplodedSize(self, v36, v37, v38, v39);
  objc_msgSend_calculateChartBodySize(self, v40, v41, v42, v43);
  p_explodedBounds = &self->_explodedBounds;
  v45 = self->_explodedBounds.size.width;
  v46 = self->_explodedBounds.size.height;
  self->_topAxisBounds.size.width = v45;
  self->_leftAxisBounds.size.height = v46;
  p_bottomAxisBounds = &self->_bottomAxisBounds;
  self->_bottomAxisBounds.size.width = v45;
  self->_rightAxisBounds.size.height = v46;
  v48 = self->_explodedBounds.size.width;
  v49 = self->_explodedBounds.size.height;
  self->_topAxisLabelsBounds.size.width = v48;
  p_leftAxisLabelsBounds = &self->_leftAxisLabelsBounds;
  self->_leftAxisLabelsBounds.size.height = v49;
  p_bottomAxisLabelsBounds = &self->_bottomAxisLabelsBounds;
  self->_bottomAxisLabelsBounds.size.width = v48;
  self->_rightAxisLabelsBounds.size.height = v49;
  v52 = self->_topRightChartTitleOverhang.height;
  v152 = self->_bottomLeftValueAxisTitleOverhang.width;
  v145 = self->_bottomLeftCategoryAxisTitleOverhang.width;
  v139 = self->_bottomLeftCategoryAxisTitleOverhang.height;
  v53 = self->_bottomLeftValueAxisY2TitleOverhang.width;
  v140 = self->_bottomLeftValueAxisY2TitleOverhang.height;
  v141 = self->_bottomLeftValueAxisTitleOverhang.height;
  x = self->_explodedBounds.origin.x;
  y = self->_explodedBounds.origin.y;
  if (objc_msgSend_isVertical(self, v56, v140, v145, v141))
  {
    v61 = &OBJC_IVAR___TSCH2DSageGeometryHelper__valueAxisTitleBounds;
  }

  else
  {
    v61 = &OBJC_IVAR___TSCH2DSageGeometryHelper__categoryAxisTitleBounds;
  }

  v62 = *(&self->super._importedInfoGeometry + *v61);
  if (objc_msgSend_isVertical(self, v57, v58, v59, v60))
  {
    v64 = &OBJC_IVAR___TSCH2DSageGeometryHelper__categoryAxisTitleBounds;
  }

  else
  {
    v64 = &OBJC_IVAR___TSCH2DSageGeometryHelper__valueAxisTitleBounds;
  }

  v65 = *(&self->_verticalAxisOverhang + *v64);
  p_leftLegendBounds->origin.x = v62;
  self->_leftLegendBounds.origin.y = v65;
  p_bottomLegendBounds->origin.x = v62;
  self->_bottomLegendBounds.origin.y = v65;
  v66 = self->_leftLegendBounds.size.width;
  v67 = self->_bottomLegendBounds.size.height;
  p_leftAxisLabelsBounds->origin.x = p_leftLegendBounds->origin.x + v66;
  self->_leftAxisLabelsBounds.origin.y = v65 + v67;
  v68 = v67 + self->_bottomLegendBounds.origin.y;
  p_bottomAxisLabelsBounds->origin.x = v66 + p_leftLegendBounds->origin.x;
  self->_bottomAxisLabelsBounds.origin.y = v68;
  v69 = self->_leftAxisLabelsBounds.size.width;
  v70 = self->_bottomAxisLabelsBounds.size.height;
  self->_leftAxisBounds.origin.x = p_leftAxisLabelsBounds->origin.x + v69;
  self->_leftAxisBounds.origin.y = v68 + v70;
  v71 = v70 + self->_bottomAxisLabelsBounds.origin.y;
  p_bottomAxisBounds->origin.x = v69 + p_leftAxisLabelsBounds->origin.x;
  self->_bottomAxisBounds.origin.y = v71;
  v72 = self->_leftAxisBounds.origin.x + self->_leftAxisBounds.size.width;
  v73 = v71 + self->_bottomAxisBounds.size.height;
  p_explodedBounds->origin.x = v72;
  self->_explodedBounds.origin.y = v73;
  v74 = self->_explodedBounds.size.width;
  v75 = self->_explodedBounds.size.height;
  v77 = self->_chartBodyBounds.size.width;
  v76 = self->_chartBodyBounds.size.height;
  v78 = v73 + self->_explodedBodyShift.y + (v75 - v76) * 0.5;
  self->_chartBodyBounds.origin.x = v72 + self->_explodedBodyShift.x + (v74 - v77) * 0.5;
  self->_chartBodyBounds.origin.y = v78;
  v79 = self->_horizontalAxisOverhang;
  self->_rightAxisBounds.origin.y = self->_leftAxisBounds.origin.y;
  v80 = self->_explodedBounds.origin.y;
  p_rightAxisBounds->origin.x = v74 + p_explodedBounds->origin.x + v79;
  self->_topAxisBounds.origin.x = p_bottomAxisBounds->origin.x;
  self->_topAxisBounds.origin.y = v75 + v80 + self->_verticalAxisOverhang;
  v81 = self->_rightAxisBounds.size.width;
  v82 = self->_leftAxisLabelsBounds.origin.y;
  p_rightAxisLabelsBounds->origin.x = p_rightAxisBounds->origin.x + v81;
  self->_rightAxisLabelsBounds.origin.y = v82;
  v83 = self->_topAxisBounds.origin.y + self->_topAxisBounds.size.height;
  self->_topAxisLabelsBounds.origin.x = p_bottomAxisLabelsBounds->origin.x;
  self->_topAxisLabelsBounds.origin.y = v83;
  v84 = self->_rightAxisLabelsBounds.size.width;
  v85 = self->_leftLegendBounds.origin.y;
  self->_rightLegendBounds.origin.x = p_rightAxisLabelsBounds->origin.x + v84;
  self->_rightLegendBounds.origin.y = v85;
  v86 = self->_topAxisLabelsBounds.origin.y + self->_topAxisLabelsBounds.size.height;
  self->_topLegendBounds.origin.x = p_bottomLegendBounds->origin.x;
  self->_topLegendBounds.origin.y = v86;
  if (self->_chartExplodedSizeValid)
  {
    v87 = height - v52;
    v88 = x - p_explodedBounds->origin.x;
    v89 = y - self->_explodedBounds.origin.y;
    v90 = self->_verticalAxisOverhang;
    if (v88 != 0.0 || v89 != 0.0)
    {
      goto LABEL_16;
    }

    v91 = v84 + v81 + self->_valueAxisY2TitleBounds.size.width;
    if (self->_horizontalAxisOverhang >= v91)
    {
      v91 = self->_horizontalAxisOverhang;
    }

    v84 = v149;
    v92 = v88 + v149 - v91;
    rightAxisWidthChange = self->_rightAxisWidthChange;
    if (rightAxisWidthChange + v92 != 0.0 || (v84 = *MEMORY[0x277CBF3A8], v138 = *(MEMORY[0x277CBF3A8] + 8), v87 != v138) || rightAxisWidthChange != 0.0 || width - v152 + v147 - v145 + v146 - v53 != v84 || (v84 = v144 - v141 + v143 - v139 + v142 - v140, v84 != v138) || self->_bottomAxisHeightChange != 0.0 || self->_topAxisHeightChange != 0.0)
    {
LABEL_16:
      v94 = verticalAxisOverhang - v90;
      objc_msgSend__topAxisOuterWidth(self, v63, v90, verticalAxisOverhang, v84);
      v98 = self->_verticalAxisOverhang;
      if (v96 < v98)
      {
        self->_topAxisHeightChange = 0.0;
      }

      objc_msgSend_naturalSize(self, v95, v96, v98, v97);
      v100 = v99 - (v87 + v94 + v89 + self->_topAxisHeightChange);
      if (v100 >= 0.0)
      {
        v9 = v99 - (v87 + v94 + v89 + self->_topAxisHeightChange);
      }

      else
      {
        v9 = -v100;
      }

      self->_rightAxisWidthChange = 0.0;
      self->_bottomAxisHeightChange = 0.0;
      self->_topAxisHeightChange = 0.0;
      v77 = self->_chartBodyBounds.size.width;
      v76 = self->_chartBodyBounds.size.height;
    }
  }

  v101 = self->_chartBodyBounds.origin.x;
  v102 = v9 + 0.0 - v76 - self->_chartBodyBounds.origin.y;
  if ((TSUNearlyEqualSizes() & 1) == 0 && objc_msgSend_aspectRatioLocked(self, v103, v104, v105, v106))
  {
    __asm { FMOV            V1.2D, #0.5 }

    TSUCenterOfRect();
    TSURectWithCenterAndSize();
    v116 = v115;
    v117 = v113;
    v77 = v114;
    v76 = v118;
    if (v115 <= -0.5 || v113 <= -0.5)
    {
      v119 = MEMORY[0x277D81150];
      v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, -0.5, v113, v114, "[TSCH2DSageGeometryHelper computeSageLayoutCBBForSpiceDoc:]");
      v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v122, v123, v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DSageGeometryHelper.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v119, v126, v127, v128, v129, v120, v125, 400, 0, "explosion has borked something");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132, v133);
    }

    v101 = fmax(v116, 0.0);
    v102 = fmax(v117, 0.0);
  }

  v134 = v101;
  v135 = v102;
  v136 = v77;
  v137 = v76;
  result.size.height = v137;
  result.size.width = v136;
  result.origin.y = v135;
  result.origin.x = v134;
  return result;
}

- (void)calculateChartAxisLabelsSize
{
  p_topAxisLabelsBounds = &self->_topAxisLabelsBounds;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  self->_topAxisLabelsBounds.origin = *MEMORY[0x277CBF3A0];
  self->_topAxisLabelsBounds.size = v6;
  p_leftAxisLabelsBounds = &self->_leftAxisLabelsBounds;
  self->_leftAxisLabelsBounds.origin = v5;
  self->_leftAxisLabelsBounds.size = v6;
  p_bottomAxisLabelsBounds = &self->_bottomAxisLabelsBounds;
  self->_bottomAxisLabelsBounds.origin = v5;
  self->_bottomAxisLabelsBounds.size = v6;
  p_rightAxisLabelsBounds = &self->_rightAxisLabelsBounds;
  self->_rightAxisLabelsBounds.origin = v5;
  self->_rightAxisLabelsBounds.size = v6;
  self->_verticalAxisOverhang = 0.0;
  self->_horizontalAxisOverhang = 0.0;
  v10 = objc_msgSend_chartType(self->super._chartInfo, a2, v5.x, v6.width, v2);
  v15 = objc_msgSend_rendersBackgroundAxis(v10, v11, v12, v13, v14);

  if (v15)
  {
    if (objc_msgSend_leftAxisLabelsVisible(self, v16, v17, v18, v19))
    {
      objc_msgSend__verticalAxisLabelsWidth_(self, v20, v21, width, v23, 1);
      width = p_leftAxisLabelsBounds->size.width;
      v21 = v24 + width;
      p_leftAxisLabelsBounds->size.width = v21;
    }

    if (objc_msgSend_bottomAxisLabelsVisible(self, v20, v21, width, v23))
    {
      objc_msgSend__horizontalAxisLabelsHeight(self, v25, v26, height, v28);
      height = p_bottomAxisLabelsBounds->size.height;
      v26 = v29 + height;
      p_bottomAxisLabelsBounds->size.height = v26;
    }

    if (objc_msgSend_rightAxisLabelsVisible(self, v25, v26, height, v28))
    {
      objc_msgSend__verticalAxisLabelsWidth_(self, v30, v31, v32, v33, 0);
      v32 = p_rightAxisLabelsBounds->size.width;
      v31 = v34 + v32;
      p_rightAxisLabelsBounds->size.width = v31;
    }

    if (objc_msgSend_topAxisLabelsVisible(self, v30, v31, v32, v33))
    {
      objc_msgSend__horizontalAxisLabelsHeight(self, v35, v36, v37, v38);
      p_topAxisLabelsBounds->size.height = v39 + p_topAxisLabelsBounds->size.height;
    }

    p_leftAxisLabelsBounds->size.width = ceil(p_leftAxisLabelsBounds->size.width);
    p_bottomAxisLabelsBounds->size.height = ceil(p_bottomAxisLabelsBounds->size.height);
    p_rightAxisLabelsBounds->size.width = ceil(p_rightAxisLabelsBounds->size.width);
    p_topAxisLabelsBounds->size.height = ceil(p_topAxisLabelsBounds->size.height);
    self->_verticalAxisOverhang = ceil(self->_verticalAxisOverhang);
    self->_horizontalAxisOverhang = ceil(self->_horizontalAxisOverhang);
  }
}

- (BOOL)p_labelsVisible:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_model(self, v5, v6, v7, v8);
  v14 = objc_msgSend_axisForID_(v9, v10, v11, v12, v13, v4);

  if (!v14)
  {
    goto LABEL_6;
  }

  v19 = 1;
  if (!objc_msgSend_intValueForProperty_defaultValue_(v14, v15, v16, v17, v18, 1052, 1))
  {
    if (objc_msgSend_isCategory(v14, v20, v21, v22, v23))
    {
      v28 = objc_msgSend_model(v14, v24, v25, v26, v27);
      v33 = objc_msgSend_chartInfo(v28, v29, v30, v31, v32);
      v38 = objc_msgSend_chartType(v33, v34, v35, v36, v37);
      v43 = objc_msgSend_supportsSeriesLabels(v38, v39, v40, v41, v42);

      if (v43)
      {
        v19 = objc_msgSend_intValueForProperty_defaultValue_(v14, v44, v45, v46, v47, 1059, 0) != 0;
        goto LABEL_7;
      }
    }

LABEL_6:
    v19 = 0;
  }

LABEL_7:

  return v19;
}

- (BOOL)leftAxisLabelsVisible
{
  v6 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, a2, v2, v3, v4, 2, 0);
  LOBYTE(self) = objc_msgSend_p_labelsVisible_(self, v7, v8, v9, v10, v6);

  return self;
}

- (BOOL)rightAxisLabelsVisible
{
  v6 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, a2, v2, v3, v4, 2, 1);
  LOBYTE(self) = objc_msgSend_p_labelsVisible_(self, v7, v8, v9, v10, v6);

  return self;
}

- (BOOL)bottomAxisLabelsVisible
{
  v6 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, a2, v2, v3, v4, 1, 0);
  LOBYTE(self) = objc_msgSend_p_labelsVisible_(self, v7, v8, v9, v10, v6);

  return self;
}

- (void)calculateChartAxisSize
{
  p_topAxisBounds = &self->_topAxisBounds;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  self->_topAxisBounds.origin = *MEMORY[0x277CBF3A0];
  self->_topAxisBounds.size = v6;
  p_leftAxisBounds = &self->_leftAxisBounds;
  self->_leftAxisBounds.origin = v5;
  self->_leftAxisBounds.size = v6;
  p_bottomAxisBounds = &self->_bottomAxisBounds;
  self->_bottomAxisBounds.origin = v5;
  self->_bottomAxisBounds.size = v6;
  p_rightAxisBounds = &self->_rightAxisBounds;
  self->_rightAxisBounds.origin = v5;
  self->_rightAxisBounds.size = v6;
  v10 = objc_msgSend_chartType(self->super._chartInfo, a2, v5.x, v6.width, v2);
  v15 = objc_msgSend_rendersBackgroundAxis(v10, v11, v12, v13, v14);

  if (v15)
  {
    width = p_rightAxisBounds->size.width;
    objc_msgSend__rightAxisOuterWidth(self, v16, v17, v18, v19);
    v22 = width - v21;
    self->_rightAxisWidthChange = v22;
    height = p_bottomAxisBounds->size.height;
    objc_msgSend__bottomAxisOuterWidth(self, v24, v22, v25, v26);
    v28 = height - v27;
    self->_bottomAxisHeightChange = v28;
    v29 = p_topAxisBounds->size.height;
    objc_msgSend__topAxisOuterWidth(self, v30, v28, v31, v32);
    v34 = v29 - v33;
    self->_topAxisHeightChange = v34;
    objc_msgSend__leftAxisOuterWidth(self, v35, v34, v36, v37);
    p_leftAxisBounds->size.width = v38;
    objc_msgSend__bottomAxisOuterWidth(self, v39, v38, v40, v41);
    p_bottomAxisBounds->size.height = v42;
    objc_msgSend__rightAxisOuterWidth(self, v43, v42, v44, v45);
    p_rightAxisBounds->size.width = v46;
    objc_msgSend__topAxisOuterWidth(self, v47, v46, v48, v49);
    p_topAxisBounds->size.height = v50;
  }
}

- (void)calculateChartTitleSize
{
  p_chartTitleBounds = &self->_chartTitleBounds;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  self->_chartTitleBounds.origin = *MEMORY[0x277CBF3A0];
  self->_chartTitleBounds.size = v5;
  v6 = *MEMORY[0x277CBF3A8];
  self->_bottomLeftChartTitleOverhang = *MEMORY[0x277CBF3A8];
  p_topRightChartTitleOverhang = &self->_topRightChartTitleOverhang;
  self->_topRightChartTitleOverhang = v6;
  p_explodedBodyShift = &self->_explodedBodyShift;
  v9 = *MEMORY[0x277CBF348];
  self->_explodedBodyShift = *MEMORY[0x277CBF348];
  p_outsideLabelsChartTitleShift = &self->_outsideLabelsChartTitleShift;
  self->_outsideLabelsChartTitleShift = v9;
  if (objc_msgSend_intValueForProperty_defaultValue_(self->super._chartInfo, a2, v9.x, v5.width, v2, 1114, 0))
  {
    v94 = objc_msgSend_objectValueForProperty_(self->super._chartInfo, v11, v12, v13, v14, 1124);
    v19 = objc_msgSend_intValueForProperty_defaultValue_(self->super._chartInfo, v15, v16, v17, v18, 1126, 0);
    v24 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v20, v21, v22, v23, v19);
    objc_msgSend_measureText_withParagraphStyle_(self, v25, v26, v27, v28, v94, v24);
    p_chartTitleBounds->size.width = v29;
    p_chartTitleBounds->size.height = v30;
    objc_msgSend_chartTitlePadding(self, v31, v29, v30, v32);
    v34 = v33 + p_chartTitleBounds->size.height;
    p_chartTitleBounds->size.height = v34;
    verticalAxisOverhang = self->_verticalAxisOverhang;
    v36 = v34 - verticalAxisOverhang;
    p_topRightChartTitleOverhang->height = v36;
    v39 = objc_msgSend_chartType(self->super._chartInfo, v37, v36, verticalAxisOverhang, v38);
    v44 = objc_msgSend_rendersUsingRadialGeometry(v39, v40, v41, v42, v43);

    if (v44)
    {
      v93 = v24;
      v49 = objc_msgSend_p_model(self, v45, v46, v47, v48);
      v54 = objc_msgSend_numberOfSeries(v49, v50, v51, v52, v53);
      if (v54)
      {
        v59 = v54;
        v60 = 0;
        v61 = 0;
        v92 = v54 - 1;
        v62 = 0.0;
        do
        {
          while (1)
          {
            v63 = objc_msgSend_seriesAtIndex_(v49, v55, v56, v57, v58, v60);
            if ((objc_msgSend_intValueForProperty_defaultValue_(v63, v64, v65, v66, v67, 1208, 0) & 2) == 0)
            {
              break;
            }

            v72 = objc_msgSend_intValueForProperty_defaultValue_(v63, v68, v69, v70, v71, 1169, 0);
            v77 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v73, v74, v75, v76, v72);
            objc_msgSend_measureText_withParagraphStyle_(self, v78, v79, v80, v81, @"0", v77);
            v62 = fmax(v62, v82);

            v61 = 1;
            if (v92 == v60++)
            {
              goto LABEL_13;
            }
          }

          ++v60;
        }

        while (v59 != v60);
        if ((v61 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_13:
        v84 = v62 * 0.5;
        if (self->_chartExplodedSizeValid)
        {
          v85 = fmin(self->_chartBodyBounds.size.width, self->_chartBodyBounds.size.height) * 0.5;
          height = p_topRightChartTitleOverhang->height;
        }

        else
        {
          objc_msgSend_maximumExplosion(self->super._chartInfo, v55, v56, v57, v58);
          if (v88 >= 1.0)
          {
            v90 = v88;
          }

          else
          {
            v90 = v88 + 1.0;
          }

          objc_msgSend_naturalSize(self, v87, v88, v88 + 1.0, v89);
          height = p_topRightChartTitleOverhang->height;
          v85 = round(floor(((height + v90 * 10.0 * (v91 - v84)) / (v90 * 10.0 + 1.0) - height) / v90) * 0.5);
        }

        v58 = 5.0;
        v57 = v84 + v85 / 5.0;
        p_outsideLabelsChartTitleShift->y = v57;
        v56 = height + v57;
        p_topRightChartTitleOverhang->height = v56;
      }

LABEL_20:
      if (objc_msgSend_aspectRatioLocked(self, v55, v56, v57, v58))
      {
        p_explodedBodyShift->x = p_topRightChartTitleOverhang->height * 0.5;
        p_explodedBodyShift->y = 0.0;
      }

      v24 = v93;
    }
  }
}

- (void)calculateValueAxisTitleSize
{
  v94 = *MEMORY[0x277D85DE8];
  p_valueAxisTitleBounds = &self->_valueAxisTitleBounds;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  self->_valueAxisTitleBounds.origin = *MEMORY[0x277CBF3A0];
  self->_valueAxisTitleBounds.size = v5;
  p_bottomLeftValueAxisTitleOverhang = &self->_bottomLeftValueAxisTitleOverhang;
  v7 = *MEMORY[0x277CBF3A8];
  self->_bottomLeftValueAxisTitleOverhang = *MEMORY[0x277CBF3A8];
  self->_topRightValueAxisTitleOverhang = v7;
  v8 = objc_msgSend_p_model(self, a2, v7.width, v5.width, v2);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v12 = objc_msgSend_axisList(v8, v9, 0.0, v10, v11, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v89, v93, 16);
  if (v18)
  {
    v22 = *v90;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v90 != v22)
        {
          objc_enumerationMutation(v12);
        }

        v24 = *(*(&v89 + 1) + 8 * i);
        if ((objc_msgSend_isCategory(v24, v17, v19, v20, v21) & 1) == 0)
        {
          v18 = v24;
          goto LABEL_11;
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v17, v19, v20, v21, &v89, v93, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (objc_msgSend_isScatter(self, v25, v26, v27, v28))
  {
    v33 = objc_msgSend_p_model(self, v29, v30, v31, v32);
    v38 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v34, v35, v36, v37, 2, 0);
    v43 = objc_msgSend_axisForID_(v33, v39, v40, v41, v42, v38);

    v18 = v43;
  }

  if (objc_msgSend_intValueForProperty_defaultValue_(v18, v29, v30, v31, v32, 1060, 0))
  {
    v48 = objc_msgSend_chartType(self->super._chartInfo, v44, v45, v46, v47);
    v53 = objc_msgSend_rendersBackgroundAxis(v48, v49, v50, v51, v52);

    if (v53)
    {
      v58 = objc_msgSend_objectValueForProperty_(v18, v54, v55, v56, v57, 1062);
      v63 = objc_msgSend_intValueForProperty_defaultValue_(v18, v59, v60, v61, v62, 1063, 0);
      v68 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v64, v65, v66, v67, v63);
      objc_msgSend_measureText_withParagraphStyle_(self, v69, v70, v71, v72, v58, v68);
      *p_valueAxisTitleBounds[1].i64 = v73;
      *&p_valueAxisTitleBounds[1].i64[1] = v74;
      if (objc_msgSend_isVertical(self, v75, v73, v74, v76))
      {
        v78 = vextq_s8(p_valueAxisTitleBounds[1], p_valueAxisTitleBounds[1], 8uLL);
        p_valueAxisTitleBounds[1] = v78;
      }

      if (objc_msgSend_isVertical(self, v77, *v78.i64, v79, v80))
      {
        objc_msgSend_yAxisTitlePadding_(self, v81, v82, v83, v84, 1);
        v86 = v85 + *p_valueAxisTitleBounds[1].i64;
        *p_valueAxisTitleBounds[1].i64 = v86;
        p_bottomLeftValueAxisTitleOverhang->width = v86;
      }

      else
      {
        objc_msgSend_xAxisTitlePadding(self, v81, v82, v83, v84);
        v88 = v87 + *&p_valueAxisTitleBounds[1].i64[1];
        *&p_valueAxisTitleBounds[1].i64[1] = v88;
        p_bottomLeftValueAxisTitleOverhang->height = v88;
      }
    }
  }
}

- (void)calculateCategoryAxisTitleSize
{
  v94 = *MEMORY[0x277D85DE8];
  p_categoryAxisTitleBounds = &self->_categoryAxisTitleBounds;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  self->_categoryAxisTitleBounds.origin = *MEMORY[0x277CBF3A0];
  self->_categoryAxisTitleBounds.size = v5;
  p_bottomLeftCategoryAxisTitleOverhang = &self->_bottomLeftCategoryAxisTitleOverhang;
  v7 = *MEMORY[0x277CBF3A8];
  self->_bottomLeftCategoryAxisTitleOverhang = *MEMORY[0x277CBF3A8];
  self->_topRightCategoryAxisTitleOverhang = v7;
  v8 = objc_msgSend_p_model(self, a2, v7.width, v5.width, v2);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v12 = objc_msgSend_axisList(v8, v9, 0.0, v10, v11, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v89, v93, 16);
  if (v18)
  {
    v22 = *v90;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v90 != v22)
        {
          objc_enumerationMutation(v12);
        }

        v24 = *(*(&v89 + 1) + 8 * i);
        if (objc_msgSend_isCategory(v24, v17, v19, v20, v21))
        {
          v18 = v24;
          goto LABEL_11;
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v17, v19, v20, v21, &v89, v93, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (objc_msgSend_isScatter(self, v25, v26, v27, v28))
  {
    v33 = objc_msgSend_p_model(self, v29, v30, v31, v32);
    v38 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v34, v35, v36, v37, 1, 0);
    v43 = objc_msgSend_axisForID_(v33, v39, v40, v41, v42, v38);

    v18 = v43;
  }

  if (objc_msgSend_intValueForProperty_defaultValue_(v18, v29, v30, v31, v32, 1060, 0))
  {
    v48 = objc_msgSend_chartType(self->super._chartInfo, v44, v45, v46, v47);
    v53 = objc_msgSend_rendersBackgroundAxis(v48, v49, v50, v51, v52);

    if (v53)
    {
      v58 = objc_msgSend_objectValueForProperty_(v18, v54, v55, v56, v57, 1062);
      v63 = objc_msgSend_intValueForProperty_defaultValue_(v18, v59, v60, v61, v62, 1063, 0);
      v68 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v64, v65, v66, v67, v63);
      objc_msgSend_measureText_withParagraphStyle_(self, v69, v70, v71, v72, v58, v68);
      *p_categoryAxisTitleBounds[1].i64 = v73;
      *&p_categoryAxisTitleBounds[1].i64[1] = v74;
      if ((objc_msgSend_isVertical(self, v75, v73, v74, v76) & 1) == 0)
      {
        v78 = vextq_s8(p_categoryAxisTitleBounds[1], p_categoryAxisTitleBounds[1], 8uLL);
        p_categoryAxisTitleBounds[1] = v78;
      }

      if (objc_msgSend_isVertical(self, v77, *v78.i64, v79, v80))
      {
        objc_msgSend_xAxisTitlePadding(self, v81, v82, v83, v84);
        v86 = v85 + *&p_categoryAxisTitleBounds[1].i64[1];
        *&p_categoryAxisTitleBounds[1].i64[1] = v86;
        p_bottomLeftCategoryAxisTitleOverhang->height = v86;
      }

      else
      {
        objc_msgSend_yAxisTitlePadding_(self, v81, v82, v83, v84, 1);
        v88 = v87 + *p_categoryAxisTitleBounds[1].i64;
        *p_categoryAxisTitleBounds[1].i64 = v88;
        p_bottomLeftCategoryAxisTitleOverhang->width = v88;
      }
    }
  }
}

- (void)calculateValueAxisY2TitleSize
{
  p_valueAxisY2TitleBounds = &self->_valueAxisY2TitleBounds;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  self->_valueAxisY2TitleBounds.origin = *MEMORY[0x277CBF3A0];
  self->_valueAxisY2TitleBounds.size = v5;
  v6 = *MEMORY[0x277CBF3A8];
  self->_bottomLeftValueAxisY2TitleOverhang = *MEMORY[0x277CBF3A8];
  p_topRightValueAxisY2TitleOverhang = &self->_topRightValueAxisY2TitleOverhang;
  self->_topRightValueAxisY2TitleOverhang = v6;
  v67 = objc_msgSend_p_model(self, a2, v6.width, v5.width, v2);
  v12 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v8, v9, v10, v11, 2, 1);
  v17 = objc_msgSend_axisForID_(v67, v13, v14, v15, v16, v12);
  if (objc_msgSend_intValueForProperty_defaultValue_(v17, v18, v19, v20, v21, 1060, 0))
  {
    v26 = objc_msgSend_chartType(self->super._chartInfo, v22, v23, v24, v25);
    v31 = objc_msgSend_rendersBackgroundAxis(v26, v27, v28, v29, v30);

    if (v31)
    {
      v36 = objc_msgSend_objectValueForProperty_(v17, v32, v33, v34, v35, 1062);
      v41 = objc_msgSend_intValueForProperty_defaultValue_(v17, v37, v38, v39, v40, 1063, 0);
      v46 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v42, v43, v44, v45, v41);
      objc_msgSend_measureText_withParagraphStyle_(self, v47, v48, v49, v50, v36, v46);
      *p_valueAxisY2TitleBounds[1].i64 = v51;
      *&p_valueAxisY2TitleBounds[1].i64[1] = v52;
      if (objc_msgSend_isVertical(self, v53, v51, v52, v54))
      {
        v56 = vextq_s8(p_valueAxisY2TitleBounds[1], p_valueAxisY2TitleBounds[1], 8uLL);
        p_valueAxisY2TitleBounds[1] = v56;
      }

      if (objc_msgSend_isVertical(self, v55, *v56.i64, v57, v58))
      {
        objc_msgSend_yAxisTitlePadding_(self, v59, v60, v61, v62, 0);
        v64 = v63 + *p_valueAxisY2TitleBounds[1].i64;
        *p_valueAxisY2TitleBounds[1].i64 = v64;
        self->_bottomLeftValueAxisY2TitleOverhang.width = v64;
      }

      else
      {
        objc_msgSend_xAxisTitlePadding(self, v59, v60, v61, v62);
        v66 = v65 + *&p_valueAxisY2TitleBounds[1].i64[1];
        *&p_valueAxisY2TitleBounds[1].i64[1] = v66;
        p_topRightValueAxisY2TitleOverhang->height = v66;
      }
    }
  }
}

- (BOOL)calculateChartExplodedSize
{
  objc_msgSend_naturalSize(self, a2, v2, v3, v4);
  v9 = v8 - self->_leftLegendBounds.size.width - self->_leftAxisLabelsBounds.size.width - self->_leftAxisBounds.size.width;
  width = self->_rightAxisBounds.size.width;
  if (width < self->_horizontalAxisOverhang)
  {
    width = self->_horizontalAxisOverhang;
  }

  v11 = v9 - width - self->_rightAxisLabelsBounds.size.width - self->_rightLegendBounds.size.width;
  v12 = v7 - self->_bottomLegendBounds.size.height - self->_bottomAxisLabelsBounds.size.height - self->_bottomAxisBounds.size.height - self->_topAxisBounds.size.height - self->_topAxisLabelsBounds.size.height;
  height = self->_topLegendBounds.size.height;
  verticalAxisOverhang = self->_verticalAxisOverhang;
  v15 = v12 - height;
  v16 = v15 - verticalAxisOverhang;
  v17 = self->_topRightChartTitleOverhang.height;
  if (objc_msgSend_aspectRatioLocked(self, v6, v15, height, verticalAxisOverhang))
  {
    v19 = self->_topRightChartTitleOverhang.height;
    v11 = v11 - v19;
  }

  v22 = v16 - v17;
  if (objc_msgSend_isVertical(self, v18, v19, v20, v21))
  {
    v25 = v11 - self->_valueAxisTitleBounds.size.width;
    v26 = v22 - self->_categoryAxisTitleBounds.size.height;
    v27 = self->_valueAxisY2TitleBounds.size.width;
    v28 = v25 - v27;
  }

  else
  {
    v28 = v11 - self->_categoryAxisTitleBounds.size.width;
    v25 = v22 - self->_valueAxisTitleBounds.size.height;
    v27 = self->_valueAxisY2TitleBounds.size.height;
    v26 = v25 - v27;
  }

  v29 = objc_msgSend_chartType(self->super._chartInfo, v23, v25, v27, v24);
  v34 = objc_msgSend_rendersBackgroundAxis(v29, v30, v31, v32, v33);

  v35 = floor(v28);
  v36 = floor(v26);
  if (!v34)
  {
    v35 = v28;
    v36 = v26;
  }

  self->_explodedBounds.size.width = v35;
  self->_explodedBounds.size.height = v36;
  return 1;
}

- (void)calculateChartBodySize
{
  v6 = objc_msgSend_chartType(self->super._chartInfo, a2, v2, v3, v4);
  hasExplodableSeriesElements = objc_msgSend_hasExplodableSeriesElements(v6, v7, v8, v9, v10);

  if (hasExplodableSeriesElements)
  {
    objc_msgSend_maximumExplosion(self->super._chartInfo, v12, v13, v14, v15);
    if (v16 < 1.0)
    {
      v16 = v16 + 1.0;
    }

    __asm { FMOV            V1.2D, #0.5 }

    self->_chartBodyBounds.size = vrndmq_f64(vaddq_f64(vdivq_f64(self->_explodedBounds.size, vdupq_lane_s64(*&v16, 0)), _Q1));
  }

  else
  {
    size = self->_explodedBounds.size;
    self->_chartBodyBounds.origin = self->_explodedBounds.origin;
    self->_chartBodyBounds.size = size;
  }
}

- (double)_seriesSymbolWidth
{
  v5 = objc_msgSend_p_model(self, a2, v2, v3, v4);
  v10 = objc_msgSend_numberOfSeries(v5, v6, v7, v8, v9);
  if (v10)
  {
    v15 = v10;
    v16 = 0;
    v17 = 0.0;
    do
    {
      v18 = objc_msgSend_seriesAtIndex_(v5, v11, v12, v13, v14, v16);
      v23 = objc_msgSend_objectValueForProperty_(v18, v19, v20, v21, v22, 1189);
      v28 = v23;
      if (v23)
      {
        objc_msgSend_width(v23, v24, v25, v26, v27);
        if (v30 > v17)
        {
          objc_msgSend_width(v28, v29, v30, v31, v32);
          v17 = v33;
        }
      }

      ++v16;
    }

    while (v15 != v16);
    v34 = v17 * 5.0;
  }

  else
  {
    v34 = 0.0;
  }

  return v34;
}

- (double)p_widthFromTicksAndStrokeForAxis:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_intValueForProperty_defaultValue_(self->super._chartInfo, v5, v6, v7, v8, 1112, 0);
  v15 = v9 | objc_msgSend_intValueForProperty_defaultValue_(v4, v10, v11, v12, v13, 1049, 0);
  v19 = v15 != 0;
  if (v15)
  {
    v20 = objc_msgSend_objectValueForProperty_(self->super._chartInfo, v14, v16, v17, v18, 1080);
    shouldRender = objc_msgSend_shouldRender(v20, v21, v22, v23, v24);
  }

  else
  {
    v20 = 0;
    shouldRender = objc_msgSend_shouldRender(0, v14, v16, v17, v18);
  }

  v30 = 0.0;
  v31 = 0.0;
  if (shouldRender)
  {
    objc_msgSend_width(v20, v26, v27, v28, v29);
    v28 = 0.5;
    v31 = v27 * 0.5;
  }

  if (objc_msgSend_shouldRender(v20, v26, v27, v28, v29))
  {
    objc_msgSend_width(v20, v32, v33, v34, v35);
    v30 = v36;
  }

  v37 = v30 * 4.0;
  if (v30 > 1.0)
  {
    v38 = v30 * 4.0;
  }

  else
  {
    v38 = 5.0;
  }

  v39 = objc_msgSend_intValueForProperty_defaultValue_(v4, v32, v37, 5.0, v35, 1061, 2);
  if (objc_msgSend_intValueForProperty_defaultValue_(v4, v40, v41, v42, v43, 1055, 0))
  {
    if (v39 != 1)
    {
      if (v39 == 2)
      {
        v31 = v38 * 0.5;
      }

      else
      {
        v31 = v38;
      }
    }
  }

  else if (!v19)
  {
    v31 = 0.0;
  }

  return v31;
}

- (double)_leftAxisOuterWidth
{
  v6 = objc_msgSend_p_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v7, v8, v9, v10, 2, 0);
  v16 = objc_msgSend_axisForID_(v6, v12, v13, v14, v15, v11);
  objc_msgSend_p_widthFromTicksAndStrokeForAxis_(self, v17, v18, v19, v20, v16);
  v22 = v21;

  return v22;
}

- (double)_bottomAxisOuterWidth
{
  v6 = objc_msgSend_p_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v7, v8, v9, v10, 1, 0);
  v16 = objc_msgSend_axisForID_(v6, v12, v13, v14, v15, v11);
  objc_msgSend_p_widthFromTicksAndStrokeForAxis_(self, v17, v18, v19, v20, v16);
  v22 = v21;

  return v22;
}

- (double)_rightAxisOuterWidth
{
  v6 = objc_msgSend_p_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v7, v8, v9, v10, 2, 1);
  v16 = objc_msgSend_axisForID_(v6, v12, v13, v14, v15, v11);
  v21 = objc_msgSend_intValueForProperty_defaultValue_(self->super._chartInfo, v17, v18, v19, v20, 1112, 0);
  if (v21 | objc_msgSend_intValueForProperty_defaultValue_(v16, v22, v23, v24, v25, 1049, 0))
  {
    v30 = objc_msgSend_objectValueForProperty_(self->super._chartInfo, v26, v27, v28, v29, 1080);
    objc_msgSend_width(v30, v31, v32, v33, v34);
    v36 = v35;
  }

  else
  {
    v37 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v26, v27, v28, v29, 1, 0);
    v30 = objc_msgSend_axisForID_(v6, v38, v39, v40, v41, v37);

    v46 = objc_msgSend_objectValueForProperty_(v30, v42, v43, v44, v45, 1038);
    v36 = 0.0;
    if (objc_msgSend_shouldRender(v46, v47, v48, v49, v50))
    {
      objc_msgSend_width(v46, v51, v52, v53, v54);
      v36 = v55;
    }
  }

  objc_msgSend__seriesSymbolWidth(self, v56, v57, v58, v59);
  if (v36 >= v60)
  {
    v60 = v36;
  }

  v61 = v60 * 0.5;

  return v61;
}

- (double)_topAxisOuterWidth
{
  v6 = objc_msgSend_p_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v7, v8, v9, v10, 1, 1);
  v16 = objc_msgSend_axisForID_(v6, v12, v13, v14, v15, v11);
  v21 = objc_msgSend_intValueForProperty_defaultValue_(self->super._chartInfo, v17, v18, v19, v20, 1112, 0);
  v30 = 0.0;
  if (v21 | objc_msgSend_intValueForProperty_defaultValue_(v16, v22, v23, v24, v25, 1049, 0))
  {
    v31 = objc_msgSend_objectValueForProperty_(self->super._chartInfo, v26, v27, v28, v29, 1080);
    if (objc_msgSend_shouldRender(v31, v32, v33, v34, v35))
    {
      objc_msgSend_width(v31, v36, v37, v38, v39);
      v30 = v40 * 0.5;
    }
  }

  else
  {
    v31 = 0;
  }

  return v30;
}

- (double)_verticalAxisLabelsWidth:(BOOL)a3
{
  v6 = a3;
  v8 = objc_msgSend_p_model(self, a2, v3, v4, v5);
  v13 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v9, v10, v11, v12, 2, !v6);
  v18 = objc_msgSend_axisForID_(v8, v14, v15, v16, v17, v13);
  v23 = objc_msgSend_intValueForProperty_defaultValue_(v18, v19, v20, v21, v22, 1034, 0);
  v28 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v24, v25, v26, v27, v23);
  if (objc_msgSend_isCategory(v18, v29, v30, v31, v32))
  {
    v37 = objc_msgSend_numberOfValues(v8, v33, v34, v35, v36);
    if (objc_msgSend_intValueForProperty_defaultValue_(v18, v38, v39, v40, v41, 1052, 1))
    {
      if (v37 < 1)
      {
        v47 = 0.0;
      }

      else
      {
        v46 = 0;
        v47 = 0.0;
        do
        {
          v48 = objc_msgSend_nameForCategory_(v8, v42, v43, v44, v45, v46);
          objc_msgSend_measureText_withParagraphStyle_(self, v49, v50, v51, v52, v48, v28);
          v54 = v53;

          if (v47 < v54)
          {
            v47 = v54;
          }

          ++v46;
        }

        while (v37 != v46);
      }

      objc_msgSend_distanceFromYAxisUsingParagraphStyle_(self, v42, v43, v44, v45, v28);
      v85 = v47 + v43;
    }

    else
    {
      v85 = 0.0;
    }

    v95 = objc_msgSend_chartType(self->super._chartInfo, v42, v43, v44, v45);
    if (objc_msgSend_supportsSeriesLabels(v95, v96, v97, v98, v99))
    {
      v104 = objc_msgSend_intValueForProperty_defaultValue_(v18, v100, v101, v102, v103, 1059, 0);

      if (v104)
      {
        v109 = objc_msgSend_numberOfSeries(v8, v105, v106, v107, v108);
        if (v109 >= 1)
        {
          v114 = v109;
          v115 = 0;
          v116 = 0.0;
          do
          {
            v117 = objc_msgSend_nameForSeries_(v8, v110, v111, v112, v113, v115);
            objc_msgSend_measureText_withParagraphStyle_(self, v118, v119, v120, v121, v117, v28);
            v123 = v122;

            if (v116 < v123)
            {
              v116 = v123;
            }

            ++v115;
          }

          while (v114 != v115);
          if (v116 > 0.0)
          {
            objc_msgSend_seriesCategoryLabelsHorizontalGutter(self, v110, v111, v112, v113);
            v85 = v85 + v116 + v124;
          }
        }
      }
    }

    else
    {
    }

LABEL_31:
    self->_verticalAxisOverhang = 0.0;
    v94 = 0.0;
    goto LABEL_32;
  }

  v55 = objc_msgSend_majorGridLocations(v18, v33, v34, v35, v36);
  v60 = objc_msgSend_count(v55, v56, v57, v58, v59);

  if (v60 < 1)
  {
    v84 = *(MEMORY[0x277CBF3A8] + 8);
    v66 = 0.0;
  }

  else
  {
    v65 = 0;
    v66 = 0.0;
    do
    {
      v67 = objc_msgSend_majorGridLocations(v18, v61, v62, v63, v64);
      v72 = objc_msgSend_objectAtIndexedSubscript_(v67, v68, v69, v70, v71, v65);

      v77 = objc_msgSend_formattedStringForAxisValue_(v18, v73, v74, v75, v76, v72);
      objc_msgSend_measureText_withParagraphStyle_(self, v78, v79, v80, v81, v77, v28);
      v84 = v83;
      if (v66 < v82)
      {
        v66 = v82;
      }

      ++v65;
    }

    while (v60 != v65);
  }

  objc_msgSend_distanceFromYAxisUsingParagraphStyle_(self, v61, v62, v63, v64, v28);
  v85 = v66 + v86;
  if (!objc_msgSend_leftAxisLabelsVisible(self, v87, v86, v88, v89))
  {
    goto LABEL_31;
  }

  objc_msgSend__topAxisOuterWidth(self, v90, 0.5, v91, v92);
  v94 = fmax(v84 * 0.5 - ceil(v93), 0.0) + 2.0;
  self->_verticalAxisOverhang = v94;
LABEL_32:
  self->_verticalAxisOverhang = ceil(v94);

  return v85;
}

- (double)_horizontalAxisLabelsHeight
{
  v6 = objc_msgSend_p_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v7, v8, v9, v10, 1, 0);
  v16 = objc_msgSend_axisForID_(v6, v12, v13, v14, v15, v11);
  width = *MEMORY[0x277CBF3A8];
  objc_msgSend_floatValueForProperty_defaultValue_(v16, v18, 0.0, v19, v20, 1035);
  v22 = v21;
  v23 = v22 * -0.0174532925;
  if (!objc_msgSend_isCategory(v16, v24, v22, v25, v26))
  {
    v78 = objc_msgSend_majorGridLocations(v16, v27, v28, v29, v30);
    v83 = objc_msgSend_count(v78, v79, v80, v81, v82);

    v88 = objc_msgSend_intValueForProperty_defaultValue_(v16, v84, v85, v86, v87, 1034, 0);
    v36 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v89, v90, v91, v92, v88);
    if ((objc_msgSend_isScatter(self, v93, v94, v95, v96) & 1) == 0)
    {
      objc_msgSend_floatValueForProperty_defaultValue_(v16, v97, 0.0, v99, v100, 1035);
      v98 = v101;
      v23 = v98 * -0.0174532925;
    }

    if (v83 < 1)
    {
      v103 = 0.0;
    }

    else
    {
      v102 = 0;
      v103 = 0.0;
      do
      {
        v104 = objc_msgSend_majorGridLocations(v16, v97, v98, v99, v100);
        v109 = objc_msgSend_objectAtIndexedSubscript_(v104, v105, v106, v107, v108, v102);

        v114 = objc_msgSend_formattedStringForAxisValue_(v16, v110, v111, v112, v113, v109);
        objc_msgSend_measureText_withParagraphStyle_(self, v115, v116, v117, v118, v114, v36);
        TSURectWithSize();
        v120 = v119;
        v122 = v121;
        v124 = v123;
        v126 = v125;
        CGAffineTransformMakeRotation(&v183, v23);
        v186.origin.x = v120;
        v186.origin.y = v122;
        v186.size.width = v124;
        v186.size.height = v126;
        v187 = CGRectApplyAffineTransform(v186, &v183);
        width = v187.size.width;
        if (v103 < v187.size.height + -2.0)
        {
          v103 = v187.size.height + -2.0;
        }

        ++v102;
      }

      while (v83 != v102);
    }

    objc_msgSend_distanceFromXAxisUsingParagraphStyle_(self, v97, v98, v99, v100, v36);
    v77 = v103 + v174;
    self->_horizontalAxisOverhang = width * 0.5;
    goto LABEL_38;
  }

  v31 = objc_msgSend_intValueForProperty_defaultValue_(v16, v27, v28, v29, v30, 1034, 0);
  v36 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v32, v33, v34, v35, v31);
  if (objc_msgSend_intValueForProperty_defaultValue_(v16, v37, v38, v39, v40, 1052, 1))
  {
    v45 = objc_msgSend_numberOfValues(v6, v41, v42, v43, v44);
    v50 = 0.0;
    v51 = 0.0;
    if (v45 >= 1)
    {
      v52 = v45;
      for (i = 0; i != v52; ++i)
      {
        v54 = objc_msgSend_nameForCategory_(v6, v46, height, v48, v49, i);
        objc_msgSend_measureText_withParagraphStyle_(self, v55, v56, v57, v58, v54, v36);

        TSURectWithSize();
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v66 = v65;
        CGAffineTransformMakeRotation(&v183, v23);
        v184.origin.x = v60;
        v184.origin.y = v62;
        v184.size.width = v64;
        v184.size.height = v66;
        *(&v48 - 1) = CGRectApplyAffineTransform(v184, &v183);
        if (v51 >= v185.size.height)
        {
          height = v51;
        }

        else
        {
          height = v185.size.height;
        }

        v51 = floor(height);
      }

      width = v49;
    }

    objc_msgSend_distanceFromXAxisUsingParagraphStyle_(self, v46, height, v48, v49, v36);
    v68 = v51 + v67;
    if (objc_msgSend_bottomAxisLabelsVisible(self, v69, v67, v70, v71) && ((objc_msgSend_isArea(self, v72, v73, v74, v75) & 1) != 0 || objc_msgSend_isLine(self, v72, v76, v74, v75)))
    {
      v50 = width * 0.5;
    }

    self->_horizontalAxisOverhang = v50;
    v77 = v68 + -2.0;
    objc_msgSend_chartType(self->super._chartInfo, v72, -2.0, v74, v75);
  }

  else
  {
    v77 = -2.0;
    objc_msgSend_chartType(self->super._chartInfo, v41, v42, v43, v44);
  }
  v127 = ;
  if (!objc_msgSend_supportsSeriesLabels(v127, v128, v129, v130, v131))
  {

    goto LABEL_38;
  }

  v136 = objc_msgSend_intValueForProperty_defaultValue_(v16, v132, v133, v134, v135, 1059, 0);

  if (v136)
  {
    v141 = objc_msgSend_numberOfSeries(v6, v137, v138, v139, v140);
    if (v141 < 1)
    {
      v173 = 0;
      v148 = 1;
    }

    else
    {
      v146 = v141;
      v182 = v11;
      v147 = 0;
      v148 = 1;
      v149 = 0.0;
      do
      {
        v150 = objc_msgSend_nameForSeries_(v6, v142, v143, v144, v145, v147);
        objc_msgSend_measureText_withParagraphStyle_(self, v151, v152, v153, v154, v150, v36);

        TSURectWithSize();
        v156 = v155;
        v158 = v157;
        v160 = v159;
        v162 = v161;
        CGAffineTransformMakeRotation(&v183, v23);
        v188.origin.x = v156;
        v188.origin.y = v158;
        v188.size.width = v160;
        v188.size.height = v162;
        v189 = CGRectApplyAffineTransform(v188, &v183);
        v163 = v189.size.height;
        v165 = objc_msgSend_nameForSeries_(v6, v164, v189.origin.x, v189.origin.y, v189.size.width, v147);
        if (v165)
        {
          v166 = v165;
          v167 = objc_msgSend_nameForSeries_(v6, v142, v143, v144, v145, v147);
          isEqualToString = objc_msgSend_isEqualToString_(v167, v168, v169, v170, v171, &stru_288528678);

          v148 &= isEqualToString;
        }

        if (v149 < v163)
        {
          v149 = v163;
        }

        ++v147;
      }

      while (v146 != v147);
      v173 = v149 > 0.0;
      if ((v148 & 1) == 0)
      {
        v176 = v77 + v149;
        v11 = v182;
        goto LABEL_42;
      }

      v11 = v182;
    }

    v176 = v77;
LABEL_42:
    if (v173)
    {
      v77 = v176;
    }

    if (!objc_msgSend_intValueForProperty_defaultValue_(v16, v142, v176, v144, v145, 1052, 1))
    {
      objc_msgSend_distanceFromXAxisUsingParagraphStyle_(self, v177, v178, v179, v180, v36);
      goto LABEL_48;
    }

    if ((v148 & 1) == 0)
    {
      objc_msgSend_seriesCategoryLabelsVerticalGutter(self, v177, v178, v179, v180);
LABEL_48:
      v77 = v77 + v181;
    }
  }

LABEL_38:

  return v77;
}

- (double)xAxisLabelHeight
{
  v6 = objc_msgSend_p_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v7, v8, v9, v10, 1, 0);
  v16 = objc_msgSend_axisForID_(v6, v12, v13, v14, v15, v11);
  v21 = objc_msgSend_intValueForProperty_defaultValue_(v16, v17, v18, v19, v20, 1034, 0);
  if (v16)
  {
    objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v22, v23, v24, v25, v21);
  }

  else
  {
    CategoryAxisParagraphStyle = objc_msgSend_p_paragraphStyleIndexOfFirstCategoryAxisParagraphStyle(self->super._chartInfo, v22, v23, v24, v25);
    objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v27, v28, v29, v30, CategoryAxisParagraphStyle);
  }
  v31 = ;
  objc_msgSend_fontHeight_(self, v32, v33, v34, v35, v31);
  v37 = v36;

  return v37;
}

- (double)yAxisLabelHeight:(BOOL)a3
{
  v6 = a3;
  v8 = objc_msgSend_p_model(self, a2, v3, v4, v5);
  v13 = objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v9, v10, v11, v12, 2, !v6);
  v18 = objc_msgSend_axisForID_(v8, v14, v15, v16, v17, v13);
  v23 = objc_msgSend_intValueForProperty_defaultValue_(v18, v19, v20, v21, v22, 1034, 0);
  v28 = objc_msgSend_paragraphStyleAtIndex_(self->super._chartInfo, v24, v25, v26, v27, v23);
  objc_msgSend_fontHeight_(self, v29, v30, v31, v32, v28);
  v34 = v33;

  return v34;
}

- (double)distanceFromXAxisUsingParagraphStyle:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_sharedText(TSCHText, v4, v5, v6, v7);
  v13 = objc_msgSend_retainedCTFontForParagraphStyle_(v8, v9, v10, v11, v12, v3);

  if (!v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH2DSageGeometryHelper distanceFromXAxisUsingParagraphStyle:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DSageGeometryHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 1181, 0, "invalid nil value for '%{public}s'", "font");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  Ascent = CTFontGetAscent(v13);
  v34 = Ascent + CTFontGetDescent(v13);
  CFRelease(v13);
  return v34 * 0.5;
}

- (double)distanceFromYAxisUsingParagraphStyle:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_sharedText(TSCHText, v4, v5, v6, v7);
  v13 = objc_msgSend_retainedCTFontForParagraphStyle_(v8, v9, v10, v11, v12, v3);

  if (!v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "[TSCH2DSageGeometryHelper distanceFromYAxisUsingParagraphStyle:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH2DSageGeometryHelper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v26, v27, v28, v19, v24, 1192, 0, "invalid nil value for '%{public}s'", "font");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32);
  }

  Ascent = CTFontGetAscent(v13);
  v34 = Ascent + CTFontGetDescent(v13);
  CFRelease(v13);
  return v34 * 0.5 + 5.0;
}

- (CGSize)measureText:(id)a3 withParagraphStyle:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (v7)
  {
    v11 = objc_msgSend_sharedText(TSCHText, v6, v8, v9, v10);
    objc_msgSend_measureText_paragraphStyle_(v11, v12, v13, v14, v15, v5, v7);
    v17 = v16;
    v19 = v18;

    v22 = *(MEMORY[0x277CBF3A8] + 8);
    v23 = *MEMORY[0x277CBF3A8] == v17 && v22 == v19;
    if (v23 && (objc_msgSend_isEqual_(&stru_288528678, v20, *MEMORY[0x277CBF3A8], v22, v21, v5) & 1) == 0)
    {
      v28 = objc_msgSend_sharedText(TSCHText, v24, v25, v26, v27);
      objc_msgSend_measureText_paragraphStyle_(v28, v29, v30, v31, v32, v5, v7);
      v17 = v33;
      v19 = v34;
    }
  }

  else
  {
    v17 = *MEMORY[0x277CBF3A8];
    v19 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v35 = v17;
  v36 = v19;
  result.height = v36;
  result.width = v35;
  return result;
}

@end