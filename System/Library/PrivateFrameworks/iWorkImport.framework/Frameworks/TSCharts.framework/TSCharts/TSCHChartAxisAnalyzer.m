@interface TSCHChartAxisAnalyzer
+ (id)analyzerForAxis:(id)a3 needsMedian:(BOOL)a4;
- (double)average;
- (double)median;
- (id)initForAxis:(id)a3 needsMedian:(BOOL)a4;
- (void)addGridValue:(id)a3 forSeries:(id)a4;
@end

@implementation TSCHChartAxisAnalyzer

+ (id)analyzerForAxis:(id)a3 needsMedian:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 alloc];
  v12 = objc_msgSend_initForAxis_needsMedian_(v7, v8, v9, v10, v11, v6, v4);

  return v12;
}

- (id)initForAxis:(id)a3 needsMedian:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v18.receiver = self;
  v18.super_class = TSCHChartAxisAnalyzer;
  v8 = [(TSCHChartAxisAnalyzer *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_axis, a3);
    v9->_shouldCalculateMedian = 0;
    v9->_firstValue = 1;
    if (v4)
    {
      hasMedianReferenceLine = objc_msgSend_p_hasMedianReferenceLine(v9, v10, v11, v12, v13);
      v9->_shouldCalculateMedian = hasMedianReferenceLine;
      if (hasMedianReferenceLine)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        values = v9->_values;
        v9->_values = v15;
      }
    }
  }

  return v9;
}

- (void)addGridValue:(id)a3 forSeries:(id)a4
{
  v29 = a3;
  v6 = a4;
  if (v29)
  {
    objc_msgSend_doubleValue(v29, v29, v7, v8, v9);
    objc_msgSend_doubleModelToAxisValue_forSeries_(self->_axis, v10, v11, v12, v13, v6);
    v28 = v14;
    if (objc_msgSend_shouldAnalyzeAxisValue_(self->_axis, v15, v14, v16, v17))
    {
      if (self->_firstValue)
      {
        self->_firstValue = 0;
        self->_min = v28;
        self->_max = v28;
      }

      else
      {
        v21 = *&self->_min;
        v19 = vcgtq_f64(v21, vdupq_lane_s64(*&v28, 0));
        v20.i64[1] = *&self->_max;
        *v20.i64 = v28;
        v21.f64[1] = v28;
        *&self->_min = vbslq_s8(v19, v20, v21);
      }

      self->_sumOfValues = v28 + self->_sumOfValues;
      ++self->_numValues;
      if (self->_shouldCalculateMedian)
      {
        values = self->_values;
        v23 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v18, v28, *v19.i64, *v20.i64);
        objc_msgSend_addObject_(values, v24, v25, v26, v27, v23);

        self->_didCalculateMedian = 0;
      }
    }
  }
}

- (double)median
{
  if (!self->_didCalculateMedian)
  {
    self->_median = 0.0;
    if (!self->_shouldCalculateMedian)
    {
LABEL_11:
      self->_didCalculateMedian = 1;
      return self->_median;
    }

    values = self->_values;
    if (!values)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHChartAxisAnalyzer median]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxisAnalyzer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 115, 0, "invalid nil value for '%{public}s'", "_values");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
      values = self->_values;
    }

    v22 = objc_msgSend_sortedArrayUsingSelector_(values, a2, v2, v3, v4, sel_compare_);
    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);
    if (v27)
    {
      v33 = objc_msgSend_objectAtIndexedSubscript_(v22, v28, v29, v30, v31, v27 >> 1);
      objc_msgSend_doubleValue(v33, v49, v50, v51, v52);
      self->_median = v53;
    }

    else
    {
      if (!v27)
      {
LABEL_10:

        goto LABEL_11;
      }

      v32 = (v27 >> 1) - 1;
      v33 = objc_msgSend_objectAtIndexedSubscript_(v22, v28, v29, v30, v31);
      v38 = objc_msgSend_objectAtIndexedSubscript_(v22, v34, v35, v36, v37, v32);
      objc_msgSend_doubleValue(v33, v39, v40, v41, v42);
      v44 = v43;
      objc_msgSend_doubleValue(v38, v45, v43, v46, v47);
      self->_median = (v44 + v48) * 0.5;
    }

    goto LABEL_10;
  }

  return self->_median;
}

- (double)average
{
  numValues = self->_numValues;
  if (numValues)
  {
    return self->_sumOfValues / numValues;
  }

  else
  {
    return 0.0;
  }
}

@end