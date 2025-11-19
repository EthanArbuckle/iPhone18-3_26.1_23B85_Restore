@interface TSCHTrendLineData
+ (int64_t)getTrendLineTypeForSeries:(id)a3;
- ($F24F406B2B787EFB06265DBA3D28CBD5)p_unitPoint:(id)a3 toScreenFrame:(CGRect)a4 offset:(double)a5 vertical:(BOOL)a6;
- (BOOL)showEquation;
- (BOOL)showRSquared;
- (BOOL)showTrendLineForAxisID:(id)a3;
- (BOOL)showTrendLineLegendText;
- (NSString)rSquaredText;
- (NSString)trendLineLegendText;
- (TSCHTrendLineData)initWithSeries:(id)a3;
- (__CFAttributedString)newEquationAttributedString;
- (double)maxValueForAxisID:(id)a3;
- (double)minValueForAxisID:(id)a3;
- (float)equationTextOpacity;
- (float)rSquaredTextOpacity;
- (id)p_dataPointValues;
- (id)p_linePathFromPoints:(id *)a3 count:(unint64_t)a4;
- (id)trendLinePathForChartRect:(CGRect)a3 offsetInBody:(double)a4 vertical:(BOOL)a5;
- (int64_t)p_getTrendLineType;
- (unint64_t)p_fillArrayX:(double *)a3 andY:(double *)a4 fromPoints:(id)a5 hasNegativeX:(BOOL *)a6;
- (unint64_t)p_fillArrayX:(id)a3 andY:(id)a4 fromPoints:(id)a5;
- (void)dealloc;
- (void)p_addPathToTrendLinePathWithPoints:(id *)a3 count:(unint64_t)a4 curved:(BOOL)a5 curveFitter:(id)a6;
- (void)p_calcBounds;
- (void)p_calcBoundsForMovingAverage;
- (void)p_calcMARegression:(unint64_t)a3 xData:(id)a4 yData:(id)a5;
- (void)p_calcRegression:(unint64_t)a3 xData:(double *)a4 yData:(double *)a5;
- (void)p_generateRegression;
- (void)p_releaseCache;
- (void)p_updateTrendLineData;
- (void)trendLineUnitSpacePoints:(id *)a3 count:(unint64_t *)a4 drawCurve:(BOOL *)a5 maxPoints:(unint64_t)a6;
- (void)updateIfNeeded;
@end

@implementation TSCHTrendLineData

+ (int64_t)getTrendLineTypeForSeries:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_model(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_chartInfo(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartType(v13, v14, v15, v16, v17);
  if (objc_msgSend_supportsTrendLines(v18, v19, v20, v21, v22))
  {
    v23 = v3;
    if (objc_msgSend_intValueForProperty_defaultValue_(v23, v24, v25, v26, v27, 1180, 0))
    {
      v32 = objc_msgSend_intValueForProperty_defaultValue_(v23, v28, v29, v30, v31, 1203, 0);
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (TSCHTrendLineData)initWithSeries:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSCHTrendLineData;
  v5 = [(TSCHTrendLineData *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_series, v4);
    v6->_lineType = 0;
    regression = v6->_regression;
    v6->_regression = 0;

    v6->_trendLineInvalid = 1;
    *&v6->_inputAxisType = 0;
    objc_msgSend_p_releaseCache(v6, v8, v9, v10, v11);
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_p_releaseCache(self, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSCHTrendLineData;
  [(TSCHTrendLineData *)&v6 dealloc];
}

- (BOOL)showTrendLineLegendText
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v8 = objc_msgSend_model(WeakRetained, v4, v5, v6, v7);
  v13 = objc_msgSend_chartInfo(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartType(v13, v14, v15, v16, v17);

  if (objc_msgSend_supportsTrendLines(v18, v19, v20, v21, v22))
  {
    v23 = objc_loadWeakRetained(&self->_series);
    v28 = objc_msgSend_intValueForProperty_defaultValue_(v23, v24, v25, v26, v27, 1200, 0) != 0;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)showEquation
{
  if (!self->_showTrendLine)
  {
    return 0;
  }

  lineType = self->_lineType;
  if (!lineType || lineType == 6)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_series);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(WeakRetained, v6, v7, v8, v9, 1199, 0) != 0;

  return v10;
}

- (BOOL)showRSquared
{
  if (!self->_showTrendLine)
  {
    return 0;
  }

  lineType = self->_lineType;
  if (!lineType || lineType == 6)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_series);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(WeakRetained, v6, v7, v8, v9, 1201, 0) != 0;

  return v10;
}

- (NSString)rSquaredText
{
  objc_msgSend_rSquared(self->_regression, a2, v2, v3, v4);
  v9 = v6;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    WeakRetained = objc_loadWeakRetained(&self->_series);
    v21 = objc_msgSend_model(WeakRetained, v17, v18, v19, v20);
    v26 = objc_msgSend_chartInfo(v21, v22, v23, v24, v25);
    v31 = objc_msgSend_drawableInfo(v26, v27, v28, v29, v30);
    v36 = objc_msgSend_documentRoot(v31, v32, v33, v34, v35);
    v10 = objc_msgSend_documentLocale(v36, v37, v38, v39, v40);

    v50 = 0;
    v44 = objc_msgSend_numberFormatterStringFromDouble_withFormat_useDecimalPlaces_minDecimalPlaces_decimalPlaces_showThousandsSeparator_currencyCode_suppressMinusSign_(v10, v41, v9, v42, v43, @"#.####", 0, 0, 0, 0, 0, v50);
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, v46, v47, v48, @"R² = %@", v44);
  }

  else
  {
    v10 = sub_276360774(v6, v7, v8);
    v15 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, v12, v13, v14, @"R² is undefined.", &stru_288528678, @"TSCharts");
  }

  return v15;
}

- (NSString)trendLineLegendText
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v8 = objc_msgSend_objectValueForProperty_(WeakRetained, v4, v5, v6, v7, 1193);

  if (!v8 || !objc_msgSend_length(v8, v9, v10, v11, v12))
  {
    v13 = sub_276360774(v10, v11, v12);
    v18 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, v15, v16, v17, @"Trend %lu", &stru_288528678, @"TSCharts");

    v19 = MEMORY[0x277CCACA8];
    v20 = objc_loadWeakRetained(&self->_series);
    v25 = objc_msgSend_seriesIndex(v20, v21, v22, v23, v24);
    v30 = objc_msgSend_stringWithFormat_(v19, v26, v27, v28, v29, v18, v25 + 1);

    v8 = v30;
  }

  return v8;
}

- (float)equationTextOpacity
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  LODWORD(v3) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(WeakRetained, v4, v3, v5, v6, 1204);
  v8 = v7;

  return v8;
}

- (float)rSquaredTextOpacity
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  LODWORD(v3) = 1.0;
  objc_msgSend_floatValueForProperty_defaultValue_(WeakRetained, v4, v3, v5, v6, 1206);
  v8 = v7;

  return v8;
}

- (BOOL)showTrendLineForAxisID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v10 = objc_msgSend_type(v4, v6, v7, v8, v9);
  v15 = objc_msgSend_axisForAxisType_(WeakRetained, v11, v12, v13, v14, v10);

  v20 = objc_msgSend_axisID(v15, v16, v17, v18, v19);
  isEqual = objc_msgSend_isEqual_(v4, v21, v22, v23, v24, v20);

  v30 = isEqual && (objc_msgSend_isCategory(v15, v26, v27, v28, v29) & 1) == 0 && self->_showTrendLine;
  return v30;
}

- (void)updateIfNeeded
{
  if (self->_trendLineInvalid)
  {
    WeakRetained = objc_loadWeakRetained(&self->_series);
    v20 = objc_msgSend_axisForAxisType_(WeakRetained, v5, v6, v7, v8, 2);

    isCategory = objc_msgSend_isCategory(v20, v9, v10, v11, v12);
    if (isCategory)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    if (isCategory)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    self->_inputAxisType = v18;
    self->_outputAxisType = v19;
    objc_msgSend_p_updateTrendLineData(self, v14, v15, v16, v17);
    self->_trendLineInvalid = 0;
  }
}

- (double)minValueForAxisID:(id)a3
{
  v4 = a3;
  objc_msgSend_updateIfNeeded(self, v5, v6, v7, v8);
  v13 = objc_msgSend_type(v4, v9, v10, v11, v12);

  if (v13 != self->_inputAxisType)
  {
    return self->_minYValue;
  }

  WeakRetained = objc_loadWeakRetained(&self->_series);
  v19 = objc_msgSend_axisForAxisType_(WeakRetained, v15, v16, v17, v18, self->_inputAxisType);

  if (objc_msgSend_isCategory(v19, v20, v21, v22, v23))
  {
    minXValue = self->_minXValue + -1.0;
  }

  else
  {
    minXValue = self->_minXValue;
  }

  return minXValue;
}

- (double)maxValueForAxisID:(id)a3
{
  v4 = a3;
  objc_msgSend_updateIfNeeded(self, v5, v6, v7, v8);
  v13 = objc_msgSend_type(v4, v9, v10, v11, v12);

  if (v13 != self->_inputAxisType)
  {
    return self->_maxYValue;
  }

  WeakRetained = objc_loadWeakRetained(&self->_series);
  v19 = objc_msgSend_axisForAxisType_(WeakRetained, v15, v16, v17, v18, self->_inputAxisType);

  if (objc_msgSend_isCategory(v19, v20, v21, v22, v23))
  {
    maxXValue = self->_maxXValue + -1.0;
  }

  else
  {
    maxXValue = self->_maxXValue;
  }

  return maxXValue;
}

- (void)trendLineUnitSpacePoints:(id *)a3 count:(unint64_t *)a4 drawCurve:(BOOL *)a5 maxPoints:(unint64_t)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v16 = objc_msgSend_axisForAxisType_(WeakRetained, v12, v13, v14, v15, self->_inputAxisType);

  v17 = objc_loadWeakRetained(&self->_series);
  v22 = objc_msgSend_axisForAxisType_(v17, v18, v19, v20, v21, self->_outputAxisType);

  if (a3 && a4 && a5)
  {
    *a4 = 0;
    *a3 = 0;
    *a5 = 0;
    v139 = a3;
    if (self->_lineType == 6)
    {
      v23 = self->_regression;
      v28 = objc_msgSend_numTrendPoint(v23, v24, v25, v26, v27);
      *a4 = v28;
      *a5 = 0;
      *a3 = malloc_type_calloc(0x10uLL, v28, 0x5C16FB05uLL);
      if (*a4)
      {
        v33 = 0;
        v34 = 0;
        v138 = a4;
        v140 = v22;
        do
        {
          if (v34 >> 31)
          {
            v35 = MEMORY[0x277D81150];
            v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "int BLASintForNSUInteger(NSUInteger)");
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 42, 0, "Overflowed BLAS int type argument.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
            v50 = 0x7FFFFFFFLL;
            objc_msgSend_trendXValueAtIndex_(v23, v51, v52, v53, v54, 0x7FFFFFFFLL);
            v56 = v55;
            v57 = MEMORY[0x277D81150];
            v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v55, v59, v60, "int BLASintForNSUInteger(NSUInteger)");
            v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v67, v68, v69, v70, v61, v66, 42, 0, "Overflowed BLAS int type argument.");

            a3 = v139;
            a4 = v138;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
          }

          else
          {
            objc_msgSend_trendXValueAtIndex_(v23, v29, v30, v31, v32, v34);
            v56 = v76;
            v50 = v34;
          }

          objc_msgSend_trendYValueAtIndex_(v23, v75, v76, v77, v78, v50, v138);
          v80 = v79;
          isCategory = objc_msgSend_isCategory(v16, v81, v79, v82, v83);
          v88 = v56 + -1.0;
          if (isCategory)
          {
            v56 = v56 + -1.0;
          }

          if (objc_msgSend_isRangeContinuous(v16, v85, v88, v86, v87))
          {
            objc_msgSend_unitSpaceValueForDataSpaceValue_(v16, v89, v56, v90, v91);
          }

          else
          {
            objc_msgSend_unitSpaceValueForCountSpaceValue_(v16, v89, v56, v90, v91);
          }

          v22 = v140;
          *(*a3 + v33) = v93;
          objc_msgSend_unitSpaceValueForDataSpaceValue_(v140, v92, v80, v94, v95);
          *(*a3 + v33 + 8) = v30;
          ++v34;
          v33 += 16;
        }

        while (v34 < *a4);
      }
    }

    else
    {
      *a4 = a6 + 1;
      *a5 = self->_lineType != 1;
      *a3 = malloc_type_calloc(0x10uLL, a6 + 1, 0x4BFBEF5uLL);
      maxXValue = self->_maxXValue;
      minXValue = self->_minXValue;
      v98 = maxXValue - minXValue;
      v99 = a6;
      if (objc_msgSend_isCategory(v16, v100, maxXValue, v101, v102))
      {
        if (minXValue < 1.0)
        {
          v106 = MEMORY[0x277D81150];
          v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, 1.0, v104, v105, "[TSCHTrendLineData trendLineUnitSpacePoints:count:drawCurve:maxPoints:]");
          v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, v109, v110, v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v113, v114, v115, v116, v107, v112, 307, 0, "Trendline discontinuous min value is one based, but is less than 1.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118, v119, v120);
        }

        minXValue = minXValue + -1.0;
      }

      v121 = 0;
      v122 = 0;
      v123 = self->_minXValue;
      v141 = v123;
      v124 = *a4 - 1;
      v125 = v98 / v99;
      do
      {
        if (v124 == v121)
        {
          v123 = self->_maxXValue;
          v141 = v123;
        }

        objc_msgSend_estimateForX_(self->_regression, v103, v123, v104, v105, &v141);
        v127 = v126;
        if ((*&v126 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          goto LABEL_25;
        }

        if (objc_msgSend_isRangeContinuous(v16, v103, v121, v104, v105))
        {
          objc_msgSend_unitSpaceValueForDataSpaceValue_(v16, v128, minXValue + v125 * v121, v129, v130);
        }

        else
        {
          objc_msgSend_unitSpaceValueForCountSpaceValue_(v16, v128, minXValue + v125 * v121, v129, v130);
        }

        v135 = v132;
        objc_msgSend_unitSpaceValueForDataSpaceValue_(v22, v131, v127, v133, v134);
        if ((v136 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_25:
          --*a4;
        }

        else
        {
          v137 = (*a3 + 16 * v122);
          *v137 = v135;
          v137[1] = v136;
          ++v122;
        }

        v123 = v125 + v141;
        v141 = v125 + v141;
        ++v121;
      }

      while (v121 <= v124);
    }
  }
}

- (__CFAttributedString)newEquationAttributedString
{
  regression = self->_regression;
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v9 = objc_msgSend_model(WeakRetained, v5, v6, v7, v8);
  v14 = objc_msgSend_chartInfo(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_drawableInfo(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_documentRoot(v19, v20, v21, v22, v23);
  v29 = objc_msgSend_documentLocale(v24, v25, v26, v27, v28);
  v34 = objc_msgSend_getEquationStringAndBuildSuperscriptRangesArray_(regression, v30, v31, v32, v33, v29);

  if (objc_msgSend_length(v34, v35, v36, v37, v38))
  {
    v43 = objc_msgSend_numSuperscriptRanges(self->_regression, v39, v40, v41, v42);
    Mutable = CFAttributedStringCreateMutable(0, 0);
    v80.location = 0;
    v80.length = 0;
    v78 = v34;
    CFAttributedStringReplaceString(Mutable, v80, v34);
    valuePtr = 1;
    v46 = CFNumberCreate(0, kCFNumberNSIntegerType, &valuePtr);
    if (v43)
    {
      v50 = 0;
      v51 = v43;
      v52 = *MEMORY[0x277CC4A18];
      do
      {
        v53 = self->_regression;
        if (v50 >> 31)
        {
          v54 = MEMORY[0x277D81150];
          v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v47, v48, v49, "int BLASintForNSUInteger(NSUInteger)");
          v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v61, v62, v63, v64, v55, v60, 42, 0, "Overflowed BLAS int type argument.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68);
          v73 = objc_msgSend_superscriptRangeAtIndex_(v53, v69, v70, v71, v72, 0x7FFFFFFFLL, v78);
        }

        else
        {
          v73 = objc_msgSend_superscriptRangeAtIndex_(v53, v45, v47, v48, v49, v50, v78);
        }

        v75 = v74;
        v81.location = v73;
        v81.length = v75;
        CFAttributedStringSetAttribute(Mutable, v81, v52, v46);
        ++v50;
      }

      while (v51 != v50);
    }

    CFRelease(v46);
    Copy = CFAttributedStringCreateCopy(0, Mutable);
    CFRelease(Mutable);
    v34 = v78;
  }

  else
  {
    Copy = 0;
  }

  return Copy;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)p_unitPoint:(id)a3 toScreenFrame:(CGRect)a4 offset:(double)a5 vertical:(BOOL)a6
{
  v6 = a4.origin.y + a3.var0 * a4.size.height + a5;
  v7 = a4.origin.x + a3.var1 * a4.size.width;
  v8 = a4.origin.y + a4.size.height - a3.var1 * a4.size.height;
  v9 = a4.origin.x + a3.var0 * a4.size.width + a5;
  if (!a6)
  {
    v8 = v6;
    v9 = v7;
  }

  result.var1 = v8;
  result.var0 = v9;
  return result;
}

- (id)p_linePathFromPoints:(id *)a3 count:(unint64_t)a4
{
  v9 = a4 - 1;
  if (a4 <= 1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHTrendLineData p_linePathFromPoints:count:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 392, 0, "p_linePathFromPoints: need more than one point to make a path.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  if (a4 >= 2)
  {
    p_var1 = &a3[1].var1;
    do
    {
      CGPathAddLineToPointSafe();
      p_var1 += 16;
      --v9;
    }

    while (v9);
  }

  v31 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v26, v27, v28, v29, Mutable);
  CGPathRelease(Mutable);

  return v31;
}

- (void)p_addPathToTrendLinePathWithPoints:(id *)a3 count:(unint64_t)a4 curved:(BOOL)a5 curveFitter:(id)a6
{
  v6 = a5;
  v10 = a6;
  if (v6)
  {
    if (a4 < 3)
    {
      if (a4 != 2)
      {
        goto LABEL_9;
      }

      v30 = v10;
      cachedTrendLinePath = self->_cachedTrendLinePath;
      v15 = objc_msgSend_p_linePathFromPoints_count_(self, v11, v12, v13, v14, a3, 2);
      objc_msgSend_appendBezierPath_(cachedTrendLinePath, v26, v27, v28, v29, v15);
    }

    else
    {
      v30 = v10;
      v15 = objc_msgSend_bezierPathFittingPointArray_count_(v10, v11, v12, v13, v14, a3, a4);
      objc_msgSend_appendBezierPath_(self->_cachedTrendLinePath, v16, v17, v18, v19, v15);
    }
  }

  else
  {
    if (a4 < 2)
    {
      goto LABEL_9;
    }

    v30 = v10;
    v20 = self->_cachedTrendLinePath;
    v15 = objc_msgSend_p_linePathFromPoints_count_(self, v11, v12, v13, v14, a3, a4);
    objc_msgSend_appendBezierPath_(v20, v21, v22, v23, v24, v15);
  }

  v10 = v30;
LABEL_9:
}

- (id)trendLinePathForChartRect:(CGRect)a3 offsetInBody:(double)a4 vertical:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = self;
  objc_sync_enter(v11);
  cachedTrendLinePath = v11->_cachedTrendLinePath;
  if (!cachedTrendLinePath || v11->_cachedChartVertical != v5 || vabdd_f64(a4, v11->_offsetInBody) > 0.01 || (TSUNearlyEqualRects() & 1) == 0)
  {
    v83 = 0;
    size = 0;
    v82 = 0;
    if (v5)
    {
      v17 = width;
    }

    else
    {
      v17 = height;
    }

    if (v17 <= 180.0)
    {
      v18 = 120.0;
      if (v17 > 120.0)
      {
        v18 = 0.5;
        v17 = v17 * 0.5;
      }
    }

    else
    {
      v18 = 3.0;
      v17 = v17 / 3.0;
    }

    objc_msgSend_trendLineUnitSpacePoints_count_drawCurve_maxPoints_(v11, v12, v17, v18, v13, &v83, &size, &v82, vcvtpd_u64_f64(v17));
    if (!size || !v83)
    {
      free(v83);
      objc_msgSend_p_releaseCache(v11, v67, v68, v69, v70);
      v71 = 0;
      goto LABEL_71;
    }

    v20 = 0;
    for (i = 0; i < size; ++i)
    {
      v22 = v83 + v20;
      objc_msgSend_p_unitPoint_toScreenFrame_offset_vertical_(v11, v19, *(v83 + v20), *(v83 + v20 + 8), x, v5, y, width, height, a4);
      *v22 = v23;
      v22[1] = v24;
      v20 += 16;
    }

    objc_msgSend_p_unitPoint_toScreenFrame_offset_vertical_(v11, v19, 0.0, 0.0, x, v5, y, width, height, a4);
    v80 = v25;
    v27 = v26;
    objc_msgSend_p_unitPoint_toScreenFrame_offset_vertical_(v11, v28, 1.0, 1.0, x, v5, y, width, height, a4);
    v30 = v29;
    v32 = v31;
    v33 = objc_alloc_init(MEMORY[0x277D81160]);
    v34 = v11->_cachedTrendLinePath;
    v11->_cachedTrendLinePath = v33;

    v35 = objc_alloc_init(MEMORY[0x277D80210]);
    objc_msgSend_setErrorDistance_(v35, v36, 4.0, v37, v38);
    objc_msgSend_setErrorIterations_(v35, v39, v40, v41, v42, 4);
    v79 = y;
    v44 = malloc_type_calloc(0x10uLL, size, 0x539253DBuLL);
    v77 = a4;
    v48 = size;
    if (size)
    {
      v49 = 0;
      v50 = 0;
      v51 = v27 + 1000.0;
      v52 = v32 + -1000.0;
      v53 = v30 + 1000.0;
      v54 = v80 + -1000.0;
      v45 = NAN;
      v46 = NAN;
      do
      {
        v55 = *(v83 + v49);
        v56 = *(v83 + 2 * v49 + 1);
        if (v49 && ((v57 = vabdd_f64(v46, *&v55), v46 != *&v55) ? (v58 = v57 < 0.5) : (v58 = 1), v58 && ((v47 = vabdd_f64(v45, v56), v45 != v56) ? (v59 = v47 < 0.5) : (v59 = 1), v59)))
        {
          *&v60 = v46;
          v56 = v45;
        }

        else
        {
          v61 = *&v55 > v53;
          if (*&v55 < v54)
          {
            v61 = 1;
          }

          v62 = v56 < v52 || v56 > v51;
          v63 = v82 == 1 && v61;
          v64 = v82 == 1 && v62;
          v60 = *(v83 + v49);
          v47 = fabs(v56);
          if (v64 || v63 || (v55 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || v47 == INFINITY)
          {
            if ((v55 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || v47 == INFINITY)
            {
              v81 = v46;
              v56 = v45;
            }

            else
            {
              if (*&v55 <= v53)
              {
                v65 = v54;
              }

              else
              {
                v65 = v53;
              }

              if (v63)
              {
                *&v60 = v65;
              }

              v66 = &v44[v50];
              if (v56 <= v51)
              {
                v45 = v52;
              }

              else
              {
                v45 = v51;
              }

              if (v64)
              {
                v56 = v45;
              }

              v81 = *&v60;
              *v66 = v60;
              v66[1] = v56;
              ++v50;
            }

            if (v50 < 2)
            {
              v50 = 0;
            }

            else
            {
              objc_msgSend_p_addPathToTrendLinePathWithPoints_count_curved_curveFitter_(v11, v43, v45, v46, v47, v44);
              v50 = 0;
              v48 = size;
            }

            *&v60 = v81;
          }

          else
          {
            v44[v50++] = v55;
          }
        }

        ++v49;
        v45 = v56;
        v46 = *&v60;
      }

      while (v49 < v48);
    }

    else
    {
      v50 = 0;
    }

    objc_msgSend_p_addPathToTrendLinePathWithPoints_count_curved_curveFitter_(v11, v43, v45, v46, v47, v44, v50, v82, v35, *&v77);
    free(v83);
    free(v44);
    v11->_cachedChartVertical = v5;
    v11->_cachedChartFrame.origin.x = x;
    v11->_cachedChartFrame.origin.y = v79;
    v11->_cachedChartFrame.size.width = width;
    v11->_cachedChartFrame.size.height = height;
    v11->_offsetInBody = v78;

    cachedTrendLinePath = v11->_cachedTrendLinePath;
  }

  if (objc_msgSend_isEmpty(cachedTrendLinePath, v12, v15, v16, v13))
  {
    objc_msgSend_p_releaseCache(v11, v72, v73, v74, v75);
  }

  v71 = v11->_cachedTrendLinePath;
LABEL_71:
  objc_sync_exit(v11);

  return v71;
}

- (int64_t)p_getTrendLineType
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v8 = objc_msgSend_model(WeakRetained, v4, v5, v6, v7);

  v13 = objc_msgSend_chartInfo(v8, v9, v10, v11, v12);
  v18 = objc_msgSend_chartType(v13, v14, v15, v16, v17);
  if (objc_msgSend_supportsTrendLines(v18, v19, v20, v21, v22) && objc_msgSend_numberOfValues(v8, v23, v24, v25, v26) >= 2)
  {
    objc_copyWeak(&to, &self->_series);
    v28 = objc_loadWeakRetained(&to);
    if (objc_msgSend_intValueForProperty_defaultValue_(v28, v29, v30, v31, v32, 1180, 0))
    {
      v33 = objc_loadWeakRetained(&to);
      v27 = objc_msgSend_intValueForProperty_defaultValue_(v33, v34, v35, v36, v37, 1203, 0);
    }

    else
    {
      v27 = 0;
    }

    objc_destroyWeak(&to);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)p_dataPointValues
{
  WeakRetained = objc_loadWeakRetained(&self->_series);
  v8 = objc_msgSend_model(WeakRetained, v4, v5, v6, v7);

  v103 = v8;
  v13 = objc_msgSend_numberOfValues(v8, v9, v10, v11, v12);
  v104 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v14, v15, v16, v17, v13);
  v18 = objc_loadWeakRetained(&self->_series);
  v23 = objc_msgSend_axisForAxisType_(v18, v19, v20, v21, v22, self->_inputAxisType);

  isCategory = objc_msgSend_isCategory(v23, v24, v25, v26, v27);
  v29 = objc_loadWeakRetained(&self->_series);
  v34 = objc_msgSend_axisForAxisType_(v29, v30, v31, v32, v33, self->_outputAxisType);

  v38 = -INFINITY;
  *&self->_maxXValue = xmmword_2764D6FE0;
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v40 = objc_loadWeakRetained(&self->_series);
      v45 = objc_msgSend_valueForAxis_valueIndex_(v40, v41, v42, v43, v44, v23, i);

      if (v45)
      {
        objc_msgSend_doubleValue(v45, v46, v47, v48, v49);
      }

      else
      {
        v50 = NAN;
      }

      if (isCategory)
      {
        v51 = v50 + 1.0;
      }

      else
      {
        v51 = v50;
      }

      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v52.f64[1] = self->_minXValue;
        v52.f64[0] = v51;
        v53.f64[0] = self->_maxXValue;
        v53.f64[1] = v51;
        *&self->_maxXValue = vbslq_s8(vcgtq_f64(v52, v53), vdupq_lane_s64(*&v51, 0), *&self->_maxXValue);
      }

      v105 = v51;
      v54 = objc_loadWeakRetained(&self->_series);
      v59 = objc_msgSend_valueForAxis_valueIndex_(v54, v55, v56, v57, v58, v34, i);

      if (v59)
      {
        objc_msgSend_doubleValue(v59, v60, v61, v62, v63);
        v65 = v64;
        if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v66 = [TSCHTrendDataPoint alloc];
          v69 = objc_msgSend_initWithPointX_pointY_forValueIndex_(v66, v67, v105, v65, v68, i);
          objc_msgSend_addObject_(v104, v70, v71, v72, v73, v69);
        }
      }
    }
  }

  if (self->_lineType == 6)
  {
    goto LABEL_19;
  }

  v74 = objc_msgSend_chartInfo(v103, v35, v38, v36, v37);
  v79 = objc_msgSend_chartType(v74, v75, v76, v77, v78);
  v84 = objc_msgSend_scatterChart(TSCHChartType, v80, v81, v82, v83);
  v89 = v84;
  if (v79 == v84)
  {
  }

  else
  {
    v90 = objc_msgSend_chartType(v74, v85, v86, v87, v88);
    v95 = objc_msgSend_bubbleChart(TSCHChartType, v91, v92, v93, v94);

    if (v90 != v95)
    {

LABEL_19:
      v100 = v104;
      v101 = v104;
      goto LABEL_22;
    }
  }

  v100 = v104;
  v101 = objc_msgSend_sortedArrayUsingSelector_(v104, v96, v97, v98, v99, sel_xValueCompare_);

LABEL_22:

  return v101;
}

- (void)p_calcBounds
{
  regression = self->_regression;
  if (regression && self->_showTrendLine)
  {
    maxXValue = self->_maxXValue;
    minXValue = self->_minXValue;
    v6 = (maxXValue - minXValue) / 1000.0;
    objc_msgSend_estimateForX_(regression, a2, maxXValue - minXValue, 1000.0, v2, &minXValue);
    self->_maxYValue = v9;
    self->_minYValue = v9;
    v10 = self->_maxXValue;
    v11 = v6 + self->_minXValue;
    v13 = v11;
    while (v11 < v10)
    {
      objc_msgSend_estimateForX_(self->_regression, v7, v11, v10, v8, &v13);
      if (v12 > self->_maxYValue)
      {
        self->_maxYValue = v12;
      }

      if (v12 < self->_minYValue)
      {
        self->_minYValue = v12;
      }

      v11 = v6 + v13;
      v13 = v6 + v13;
      v10 = self->_maxXValue;
    }
  }
}

- (void)p_calcRegression:(unint64_t)a3 xData:(double *)a4 yData:(double *)a5
{
  v9 = a3 - 1;
  if (a3 <= 1)
  {
    self->_showTrendLine = 0;
    return;
  }

  v12 = a3;
  lineType = self->_lineType;
  if (lineType > 2)
  {
    if (lineType > 4)
    {
      if (lineType != 5)
      {
        if (lineType == 6)
        {
          self->_showTrendLine = 0;
          v15 = MEMORY[0x277D81150];
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, "[TSCHTrendLineData p_calcRegression:xData:yData:]");
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 706, 0, "Trying to build a moving average trend line when we should not.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
        }

        goto LABEL_32;
      }

      v14 = MEMORY[0x277D811B8];
    }

    else
    {
      if (lineType == 3)
      {
        WeakRetained = objc_loadWeakRetained(&self->_series);
        v35 = objc_msgSend_intValueForProperty_defaultValue_(WeakRetained, v31, v32, v33, v34, 1194, 2);

        if (v35 >= v12)
        {
          v36 = v9;
        }

        else
        {
          v36 = v35;
        }

        if (v36 <= 2)
        {
          v37 = 2;
        }

        else
        {
          v37 = v36;
        }

        v39 = objc_alloc(MEMORY[0x277D812C8]);
        if (v12 >> 31)
        {
          v43 = MEMORY[0x277D81150];
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v40, v41, v42, "int BLASintForNSUInteger(NSUInteger)");
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 42, 0, "Overflowed BLAS int type argument.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
          v12 = 0x7FFFFFFFLL;
        }

        if (v36 >> 31)
        {
          v58 = MEMORY[0x277D81150];
          v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v40, v41, v42, "int BLASintForNSUInteger(NSUInteger)");
          v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v65, v66, v67, v68, v59, v64, 42, 0, "Overflowed BLAS int type argument.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
          v37 = 0x7FFFFFFFLL;
        }

        inited = objc_msgSend_initAffineWithMappings_xs_ys_xOrder_(v39, v38, v40, v41, v42, v12, a4, a5, v37);
        goto LABEL_31;
      }

      v14 = MEMORY[0x277D812D8];
    }

LABEL_28:
    v75 = [v14 alloc];
    if (v12 >> 31)
    {
      v79 = MEMORY[0x277D81150];
      v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, v76, v77, v78, "int BLASintForNSUInteger(NSUInteger)");
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v86, v87, v88, v89, v80, v85, 42, 0, "Overflowed BLAS int type argument.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93);
      v12 = 0x7FFFFFFFLL;
    }

    inited = objc_msgSend_initAffineWithMappings_xs_ys_xDimension_(v75, v74, v76, v77, v78, v12, a4, a5, 1);
LABEL_31:
    regression = self->_regression;
    self->_regression = inited;

    goto LABEL_32;
  }

  if (lineType)
  {
    if (lineType == 1)
    {
      v14 = MEMORY[0x277D81220];
      goto LABEL_28;
    }

    if (lineType == 2)
    {
      v14 = MEMORY[0x277D81238];
      goto LABEL_28;
    }
  }

  else
  {
    self->_showTrendLine = 0;
  }

LABEL_32:
  self->_showTrendLine = objc_msgSend_isModelValid(self->_regression, a2, v5, v6, v7);
}

- (void)p_calcBoundsForMovingAverage
{
  regression = self->_regression;
  if (regression && self->_showTrendLine)
  {
    v66 = regression;
    v8 = objc_msgSend_numTrendPoint(v66, v4, v5, v6, v7);
    *&self->_maxXValue = xmmword_2764D6FE0;
    *&self->_maxYValue = xmmword_2764D6FE0;
    if (v8 >= 2)
    {
      v12 = v8;
      objc_msgSend_trendXValueAtIndex_(v66, v9, -INFINITY, v10, v11, 0);
      self->_maxXValue = v13;
      self->_minXValue = v13;
      objc_msgSend_trendYValueAtIndex_(v66, v14, v13, v15, v16, 0);
      v21 = 1;
      self->_maxYValue = v18;
      self->_minYValue = v18;
      do
      {
        if (v21 >> 31)
        {
          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, minYValue, v20, "int BLASintForNSUInteger(NSUInteger)");
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 42, 0, "Overflowed BLAS int type argument.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
          v37 = 0x7FFFFFFFLL;
          objc_msgSend_trendXValueAtIndex_(v66, v38, v39, v40, v41, 0x7FFFFFFFLL);
          v43 = v42;
          v44 = MEMORY[0x277D81150];
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v42, v46, v47, "int BLASintForNSUInteger(NSUInteger)");
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v54, v55, v56, v57, v48, v53, 42, 0, "Overflowed BLAS int type argument.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
        }

        else
        {
          objc_msgSend_trendXValueAtIndex_(v66, v17, v18, minYValue, v20, v21);
          v43 = v63;
          v37 = v21;
        }

        objc_msgSend_trendYValueAtIndex_(v66, v62, v63, v64, v65, v37);
        if (v43 > self->_maxXValue)
        {
          self->_maxXValue = v43;
        }

        if (v43 < self->_minXValue)
        {
          self->_minXValue = v43;
        }

        if (v18 > self->_maxYValue)
        {
          self->_maxYValue = v18;
        }

        minYValue = self->_minYValue;
        if (v18 < minYValue)
        {
          self->_minYValue = v18;
        }

        ++v21;
      }

      while (v12 != v21);
    }
  }
}

- (void)p_calcMARegression:(unint64_t)a3 xData:(id)a4 yData:(id)a5
{
  v74 = a4;
  v9 = a5;
  if (a3 <= 2)
  {
    goto LABEL_2;
  }

  lineType = self->_lineType;
  if ((lineType - 1) >= 5)
  {
    if (lineType == 6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_series);
      v30 = 2;
      v35 = objc_msgSend_intValueForProperty_defaultValue_(WeakRetained, v31, v32, v33, v34, 1195, 2);

      if (v35 >= a3)
      {
        v36 = a3 - 1;
      }

      else
      {
        v36 = v35;
      }

      if (v36 > 2)
      {
        v30 = v36;
      }

      v38 = objc_alloc(MEMORY[0x277D81240]);
      if (a3 >> 31)
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v39, v40, v41, "int BLASintForNSUInteger(NSUInteger)");
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 42, 0, "Overflowed BLAS int type argument.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
        a3 = 0x7FFFFFFFLL;
      }

      if (v36 >> 31)
      {
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v39, v40, v41, "int BLASintForNSUInteger(NSUInteger)");
        v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 42, 0, "Overflowed BLAS int type argument.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
        v30 = 0x7FFFFFFFLL;
      }

      v72 = objc_msgSend_initWithMappings_xs_ys_numPeriod_(v38, v37, v39, v40, v41, a3, v74, v9, v30);
      regression = self->_regression;
      self->_regression = v72;
    }

    else if (!lineType)
    {
LABEL_2:
      self->_showTrendLine = 0;
    }
  }

  else
  {
    self->_showTrendLine = 0;
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHTrendLineData p_calcMARegression:xData:yData:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 776, 0, "Trying to build a non moving average trend line when we should be building a moving average trendline.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }
}

- (unint64_t)p_fillArrayX:(id)a3 andY:(id)a4 fromPoints:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  if (self->_lineType != 6)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHTrendLineData p_fillArrayX:andY:fromPoints:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 799, 0, "Trend Line type is not moving average and it should be.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_count(v11, v10, v12, v13, v14);
  if (v30)
  {
    v35 = v30;
    v36 = 0;
    v37 = 0;
    for (i = 0; i != v35; ++i)
    {
      v39 = v37;
      v37 = objc_msgSend_objectAtIndexedSubscript_(v11, v31, v32, v33, v34, i);

      objc_msgSend_dataPointX(v37, v40, v41, v42, v43);
      v45 = v44;
      v46 = v44;
      objc_msgSend_dataPointY(v37, v47, v44, v48, v49);
      v50 = v32;
      if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v51 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v31, v45, v33, v34);
        objc_msgSend_addObject_(v8, v52, v53, v54, v55, v51);

        v59 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v56, v50, v57, v58);
        objc_msgSend_addObject_(v9, v60, v61, v62, v63, v59);

        ++v36;
      }
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (unint64_t)p_fillArrayX:(double *)a3 andY:(double *)a4 fromPoints:(id)a5 hasNegativeX:(BOOL *)a6
{
  v10 = a5;
  if (self->_lineType == 6)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHTrendLineData p_fillArrayX:andY:fromPoints:hasNegativeX:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHTrendLineData.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 825, 0, "Trend Line type is moving average and is should not be.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_count(v10, v9, v11, v12, v13);
  if (!v29)
  {
    v35 = 0;
    goto LABEL_17;
  }

  v34 = v29;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  while (1)
  {
    v38 = v37;
    v37 = objc_msgSend_objectAtIndexedSubscript_(v10, v30, v31, v32, v33, v36);

    objc_msgSend_dataPointX(v37, v39, v40, v41, v42);
    v44 = v43;
    v45 = v43;
    objc_msgSend_dataPointY(v37, v46, v43, v47, v48);
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    if (v44 <= 0.0)
    {
      *a6 = 1;
    }

    v32 = fmin(v44, v31);
    if ((self->_lineType & 0xFFFFFFFFFFFFFFFELL) == 4 && v32 <= 0.0)
    {
      break;
    }

    a3[v35] = v44;
    a4[v35++] = v31;
LABEL_12:
    if (v34 == ++v36)
    {
      goto LABEL_16;
    }
  }

  v35 = 0;
LABEL_16:

LABEL_17:
  return v35;
}

- (void)p_generateRegression
{
  v6 = objc_msgSend_p_dataPointValues(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);
  if (!v11)
  {
    goto LABEL_10;
  }

  v16 = v11;
  if (self->_lineType == 6)
  {
    v17 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v12, v13, v14, v15, v11);
    v22 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v18, v19, v20, v21, v16);
    v27 = objc_msgSend_p_fillArrayX_andY_fromPoints_(self, v23, v24, v25, v26, v17, v22, v6);
    objc_msgSend_p_calcMARegression_xData_yData_(self, v28, v29, v30, v31, v27, v17, v22);
    objc_msgSend_p_calcBoundsForMovingAverage(self, v32, v33, v34, v35);
  }

  else
  {
    v52 = 0;
    v36 = 8 * v11;
    v37 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
    v38 = malloc_type_malloc(v36, 0x100004000313F17uLL);
    hasNegativeX = objc_msgSend_p_fillArrayX_andY_fromPoints_hasNegativeX_(self, v39, v40, v41, v42, v37, v38, v6, &v52);
    if (self->_lineType == 2 && v52 == 1)
    {
      self->_showTrendLine = 0;
    }

    else
    {
      objc_msgSend_p_calcRegression_xData_yData_(self, v43, v45, v46, v47, hasNegativeX, v37, v38);
      objc_msgSend_p_calcBounds(self, v48, v49, v50, v51);
    }

    free(v37);
    free(v38);
  }

  if (!self->_regression)
  {
LABEL_10:
    self->_showTrendLine = 0;
  }
}

- (void)p_updateTrendLineData
{
  regression = self->_regression;
  self->_regression = 0;

  self->_showTrendLine = 0;
  TrendLineType = objc_msgSend_p_getTrendLineType(self, v4, v5, v6, v7);
  self->_lineType = TrendLineType;
  if (TrendLineType)
  {
    self->_showTrendLine = 1;

    MEMORY[0x2821F9670](self, sel_p_generateRegression, v9, v10, v11);
  }
}

- (void)p_releaseCache
{
  obj = self;
  objc_sync_enter(obj);
  cachedTrendLinePath = obj->_cachedTrendLinePath;
  obj->_cachedTrendLinePath = 0;

  v3 = *(MEMORY[0x277CBF3A0] + 16);
  obj->_cachedChartFrame.origin = *MEMORY[0x277CBF3A0];
  obj->_cachedChartFrame.size = v3;
  obj->_offsetInBody = 0.0;
  obj->_cachedChartVertical = 0;
  objc_sync_exit(obj);
}

@end