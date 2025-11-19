@interface TSCHChartValueAxis
+ (id)axisForInfo:(id)a3;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromFixedMinValue:(SEL)a3 fixedMaxValue:(double)a4 spreadRanges:(double)a5;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromFixedNegativeMinValue:(SEL)a3 positiveMaxValue:(double)a4 spreadRanges:(double)a5;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromFixedPositiveMinValue:(SEL)a3 positiveMaxValue:(double)a4 spreadRanges:(double)a5;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromMinValue:(SEL)a3 maxValue:(double)a4 userValues:(double)a5;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromNegativeMinValue:(SEL)a3 fixedPositiveMaxValue:(double)a4 spreadRanges:(double)a5;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromNegativeMinValue:(SEL)a3 positiveMaxValue:(double)a4 spreadRanges:(double)a5;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromPositiveMinValue:(SEL)a3 fixedPositiveMaxValue:(double)a4 spreadRanges:(double)a5;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromPositiveMinValue:(SEL)a3 positiveMaxValue:(double)a4 spreadRanges:(double)a5;
- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_calculateAxisDescFromMinValue:(SEL)a3 maxValue:(double)a4 userValues:(double)a5;
- (BOOL)supportsReferenceLines;
- (NSNumber)userMax;
- (NSNumber)userMin;
- (double)p_calculateAxisDeltaFromSpread:(double)a3 spreadRanges:(id *)a4;
- (id)computeMajorGridlinesFromMinMaxInAnalysis:(id)a3;
- (id)defaultProperties;
- (id)g_genericToSpecificPropertyMap;
- (id)p_computeMajorGridlines:(int64_t)a3 analysis:(id)a4;
- (id)p_computeMajorGridlinesAutomaticallyInAnalysis:(id)a3 forHorizChart:(BOOL)a4;
- (int)specificPropertyForGeneric:(int)a3;
- (pair<TSCH3DAxisLabelEnumerator)labelEnumeratorPair;
- (void)adjustMinMaxForDataRangeInAnalysis:(id)a3;
- (void)p_includeZeroWithMinValue:(double *)a3 maxValue:(double *)a4 userValues:(int64_t)a5;
- (void)updateModelAxisAnalysis:(id)a3;
- (void)updateModelMinMaxForErrorBarsOnSeries:(id)a3 axisID:(id)a4 analysis:(id)a5;
- (void)updateModelMinMaxForTrendLineOnSeries:(id)a3 axisID:(id)a4 analysis:(id)a5;
@end

@implementation TSCHChartValueAxis

+ (id)axisForInfo:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_chartType(v3, v4, v5, v6, v7);
  isHorizontal = objc_msgSend_isHorizontal(v8, v9, v10, v11, v12);

  v19 = objc_msgSend_model(v3, v14, v15, v16, v17);
  if (isHorizontal)
  {
    objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v18, v20, v21, v22, 1, 0);
  }

  else
  {
    objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v18, v20, v21, v22, 2, 0);
  }
  v23 = ;
  v28 = objc_msgSend_axisForID_(v19, v24, v25, v26, v27, v23);

  return v28;
}

- (pair<TSCH3DAxisLabelEnumerator)labelEnumeratorPair
{
  v7 = v2;
  v14 = objc_msgSend_kind(TSCH3DValueAxisLabelKind, a2, v3, v4, v5);
  *v7 = objc_msgSend_enumeratorWithAxis_kind_(TSCH3DAxisLabelEnumerator, v8, v9, v10, v11, self);
  v7[1] = 0;

  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (BOOL)supportsReferenceLines
{
  v6 = objc_msgSend_axisID(self, a2, v2, v3, v4);
  if (objc_msgSend_ordinal(v6, v7, v8, v9, v10))
  {
    v15 = 0;
  }

  else
  {
    v16 = objc_msgSend_model(self, v11, v12, v13, v14);
    v21 = objc_msgSend_chartInfo(v16, v17, v18, v19, v20);
    v26 = objc_msgSend_chartType(v21, v22, v23, v24, v25);
    v15 = objc_msgSend_supportsReferenceLines(v26, v27, v28, v29, v30);
  }

  return v15;
}

- (NSNumber)userMax
{
  v5 = objc_msgSend_objectValueForProperty_(self, a2, v2, v3, v4, 1064);
  v10 = v5;
  if (v5)
  {
    objc_msgSend_floatValue(v5, v6, v7, v8, v9);
    if (v11 == 3.4028e38)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (NSNumber)userMin
{
  v5 = objc_msgSend_objectValueForProperty_(self, a2, v2, v3, v4, 1065);
  v10 = v5;
  if (v5)
  {
    objc_msgSend_floatValue(v5, v6, v7, v8, v9);
    if (v11 == 1.1755e-38)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)updateModelAxisAnalysis:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = TSCHChartValueAxis;
  [(TSCHChartAxis *)&v40 updateModelAxisAnalysis:v4];
  v9 = objc_msgSend_axisID(self, v5, v6, v7, v8);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = objc_msgSend_model(self, v10, 0.0, v11, v12, 0);
  v18 = objc_msgSend_seriesList(v13, v14, v15, v16, v17);

  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, v21, v22, &v36, v41, 16);
  if (v23)
  {
    v28 = v23;
    v29 = *v37;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v18);
        }

        v31 = *(*(&v36 + 1) + 8 * i);
        objc_msgSend_updateModelMinMaxForTrendLineOnSeries_axisID_analysis_(self, v24, v25, v26, v27, v31, v9, v4);
        objc_msgSend_updateModelMinMaxForErrorBarsOnSeries_axisID_analysis_(self, v32, v33, v34, v35, v31, v9, v4);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, v25, v26, v27, &v36, v41, 16);
    }

    while (v28);
  }
}

- (void)updateModelMinMaxForTrendLineOnSeries:(id)a3 axisID:(id)a4 analysis:(id)a5
{
  v47 = a3;
  v8 = a4;
  v9 = a5;
  objc_msgSend_modelMin(v9, v10, v11, v12, v13);
  v15 = v14;
  objc_msgSend_modelMax(v9, v16, v14, v17, v18);
  v20 = v19;
  v24 = objc_msgSend_trendLineData(v47, v21, v19, v22, v23);
  v29 = v24;
  if (v24 && objc_msgSend_showTrendLineForAxisID_(v24, v25, v26, v27, v28, v8))
  {
    objc_msgSend_minValueForAxisID_(v29, v25, v30, v27, v28, v8);
    objc_msgSend_doubleModelToAxisValue_forSeries_(self, v31, v32, v33, v34, v47);
    if (v36 < v15)
    {
      v15 = v36;
    }

    objc_msgSend_maxValueForAxisID_(v29, v35, v36, v37, v38, v8);
    objc_msgSend_doubleModelToAxisValue_forSeries_(self, v39, v40, v41, v42, v47);
    if (v43 > v20)
    {
      v20 = v43;
    }
  }

  objc_msgSend_setModelMin_(v9, v25, v15, v27, v28);
  objc_msgSend_setModelMax_(v9, v44, v20, v45, v46);
}

- (void)updateModelMinMaxForErrorBarsOnSeries:(id)a3 axisID:(id)a4 analysis:(id)a5
{
  v47 = a3;
  v8 = a4;
  v9 = a5;
  objc_msgSend_modelMin(v9, v10, v11, v12, v13);
  v15 = v14;
  objc_msgSend_modelMax(v9, v16, v14, v17, v18);
  v20 = v19;
  v24 = objc_msgSend_errorBarData(v47, v21, v19, v22, v23);
  v29 = v24;
  if (v24 && objc_msgSend_showErrorBarsForAxisID_(v24, v25, v26, v27, v28, v8))
  {
    objc_msgSend_minValueForAxisID_(v29, v25, v30, v27, v28, v8);
    objc_msgSend_doubleModelToAxisValue_forSeries_(self, v31, v32, v33, v34, v47);
    if (v36 < v15)
    {
      v15 = v36;
    }

    objc_msgSend_maxValueForAxisID_(v29, v35, v36, v37, v38, v8);
    objc_msgSend_doubleModelToAxisValue_forSeries_(self, v39, v40, v41, v42, v47);
    if (v43 > v20)
    {
      v20 = v43;
    }
  }

  objc_msgSend_setModelMin_(v9, v25, v15, v27, v28);
  objc_msgSend_setModelMax_(v9, v44, v20, v45, v46);
}

- (void)adjustMinMaxForDataRangeInAnalysis:(id)a3
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_min(v4, v5, v6, v7, v8);
  v10 = v9;
  objc_msgSend_max(v4, v11, v9, v12, v13);
  v15 = v14;
  if (objc_msgSend_supportsReferenceLines(self, v16, v14, v17, v18))
  {
    v101 = v4;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v23 = objc_msgSend_referenceLines(self, v19, 0.0, v21, v22);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v25, v26, v27, &v102, v106, 16);
    if (v28)
    {
      v29 = v28;
      v30 = *v103;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v103 != v30)
          {
            objc_enumerationMutation(v23);
          }

          objc_opt_class();
          v32 = TSUDynamicCast();
          if (objc_msgSend_intValueForProperty_defaultValue_(v32, v33, v34, v35, v36, 1226, 0) == 5)
          {
            objc_opt_class();
            v41 = objc_msgSend_objectValueForProperty_(v32, v37, v38, v39, v40, 1218);
            v42 = TSUDynamicCast();

            objc_msgSend_doubleValue(v42, v43, v44, v45, v46);
            if (v47 < v10)
            {
              v10 = v47;
            }

            if (v47 >= v15)
            {
              v15 = v47;
            }
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v48, v49, v50, v51, &v102, v106, 16);
      }

      while (v29);
    }

    v4 = v101;
  }

  v52 = v10 - v15;
  v53 = vabdd_f64(v10, v15);
  v54 = objc_msgSend_userMin(self, v19, v20, v21, v22);
  v59 = objc_msgSend_userMax(self, v55, v56, v57, v58);
  v64 = objc_msgSend_gridValueType(self, v60, v61, v62, v63);
  v69 = objc_msgSend_intValueForProperty_defaultValue_(self, v65, v66, v67, v68, 1045, 1);
  v74 = v69;
  if (v59)
  {
    objc_msgSend_doubleValue(v59, v70, v71, v72.n128_f64[0], v73);
    v15 = v71;
  }

  else if (v69 >= 1)
  {
    v72.n128_f64[0] = v53;
    v80 = sub_27628B250(v64, v70, v15, v72, v73);
    v15 = v80;
    if (v64 != 2)
    {
      if (v80 < 0.0)
      {
        if (v52 == 0.0 || (v80 = fabs(v80 * 0.165), v53 > v80))
        {
          v15 = 0.0;
        }
      }

      if (!v54)
      {
        v81.n128_f64[0] = v53;
        v10 = sub_27628B14C(v64, v79, v10, v81, v82);
        if (v10 > 0.0 && (v53 > v15 * 0.165 || v52 == 0.0))
        {
          objc_msgSend_setMin_(v4, v70, 0.0, v72.n128_f64[0], v73);
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      objc_msgSend_doubleValue(v54, v79, v80, v81.n128_f64[0], v82);
      if (v71 >= v15)
      {
        objc_msgSend_doubleValue(v54, v70, v71, v72.n128_f64[0], v73);
        v90 = fmin(v53, 10.0);
        v15 = v90 + v91;
        objc_msgSend_doubleValue(v54, v92, v91, v90, v93);
        goto LABEL_20;
      }

LABEL_19:
      objc_msgSend_doubleValue(v54, v70, v71, v72.n128_f64[0], v73);
LABEL_20:
      v10 = v75;
      goto LABEL_21;
    }

    if (v54)
    {
      objc_msgSend_doubleValue(v54, v79, v80, v81.n128_f64[0], v82);
      if (v71 >= v15)
      {
        objc_msgSend_doubleValue(v54, v70, v71, v72.n128_f64[0], v73);
        v83.n128_f64[0] = v53;
        v71 = sub_27628B250(2, v84, v85, v83, v86);
        v15 = v71;
      }

      goto LABEL_19;
    }

    v89 = v10;
LABEL_50:
    v81.n128_f64[0] = v53;
    v75 = sub_27628B14C(2, v79, v89, v81, v82);
    goto LABEL_20;
  }

  if (v54)
  {
    goto LABEL_19;
  }

  if (v74 < 1)
  {
    goto LABEL_21;
  }

  v72.n128_f64[0] = v53;
  v87 = sub_27628B14C(v64, v70, v10, v72, v73);
  v10 = v87;
  if (v64 == 2)
  {
    if (!v59)
    {
      goto LABEL_21;
    }

    objc_msgSend_doubleValue(v59, v70, v87, v72.n128_f64[0], v73);
    if (v88 > v10)
    {
      goto LABEL_21;
    }

    objc_msgSend_doubleValue(v59, v70, v88, v72.n128_f64[0], v73);
    goto LABEL_50;
  }

  if (v87 > 0.0)
  {
    if (v53 > v15 * 0.165 || v52 == 0.0)
    {
      v10 = 0.0;
    }

    if (v59)
    {
      objc_msgSend_doubleValue(v59, v70, 0.0, v72.n128_f64[0], v73);
      if (v95 <= v10)
      {
        objc_msgSend_doubleValue(v59, v70, v95, v72.n128_f64[0], v73);
        v96 = fmin(v53, 10.0);
        objc_msgSend_setMin_(v4, v98, v97 - v96, v96, v99);
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  objc_msgSend_setMin_(v4, v70, v10, v72.n128_f64[0], v73);
LABEL_22:
  objc_msgSend_setMax_(v4, v76, v15, v77, v78);
}

- (id)computeMajorGridlinesFromMinMaxInAnalysis:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_intValueForProperty_defaultValue_(self, v5, v6, v7, v8, 1045, 1);
  if (v9)
  {
    v14 = objc_msgSend_p_computeMajorGridlines_analysis_(self, v10, v11, v12, v13, v9, v4);
  }

  else
  {
    v15 = objc_msgSend_model(self, v10, v11, v12, v13);
    v20 = objc_msgSend_chartInfo(v15, v16, v17, v18, v19);
    v25 = objc_msgSend_chartType(v20, v21, v22, v23, v24);
    isHorizontal = objc_msgSend_isHorizontal(v25, v26, v27, v28, v29);
    v14 = objc_msgSend_p_computeMajorGridlinesAutomaticallyInAnalysis_forHorizChart_(self, v31, v32, v33, v34, v4, isHorizontal);
  }

  return v14;
}

- (id)p_computeMajorGridlines:(int64_t)a3 analysis:(id)a4
{
  v6 = a4;
  objc_msgSend_min(v6, v7, v8, v9, v10);
  v12 = v11;
  objc_msgSend_max(v6, v13, v11, v14, v15);
  v17 = v16;
  v21 = objc_msgSend_userMin(self, v18, v16, v19, v20);
  v27 = objc_msgSend_userMax(self, v22, v23, v24, v25);
  if (v17 >= v12)
  {
    v31 = v17;
  }

  else
  {
    v31 = v12;
  }

  if (v17 >= v12)
  {
    v17 = v12;
  }

  objc_msgSend_axisInterceptPosition(self, v26, v28, v29, v30);
  v34 = v33;
  v35 = v17 - v33;
  v36 = v31 - v33;
  if (a3 < 0)
  {
    v37 = 1;
  }

  else
  {
    v37 = a3;
  }

  if (v35 <= 0.0 && v36 >= 0.0 || v35 == 0.0 && v36 < 0.0)
  {
    if (v36 <= 0.0 && v35 < 0.0)
    {
      v38 = fabs(v35) - fabs(v36);
LABEL_30:
      v41 = v38 / v37;
      goto LABEL_31;
    }

    v39 = fabs(v36);
    v40 = fabs(v35);
    if (v39 <= v40)
    {
      if (v39 >= v40)
      {
        if (v36 == 0.0)
        {
          v36 = v35 + v37;
          v41 = 1.0;
          goto LABEL_31;
        }

        v41 = (v39 - fmax(v35, 0.0)) / v37;
        if (v21 || v41 == 0.0)
        {
LABEL_31:
          v47 = 0.0;
          v48 = fmax(v36, 0.0);
          if (v36 >= 0.0)
          {
            v49 = 0.0;
          }

          else
          {
            v49 = v35;
          }

          v50 = fabs(v36);
          if (v36 >= 0.0)
          {
            v47 = v50;
          }

          v43 = v47 / v37;
          v44 = 1;
          if (v36 == v35)
          {
            v45 = v43;
          }

          else
          {
            v45 = v41;
          }

          if (v36 == v35)
          {
            v46 = v48;
          }

          else
          {
            v46 = v36;
          }

          if (v36 == v35)
          {
            v35 = v49;
          }

          goto LABEL_44;
        }

LABEL_69:
        v35 = v41 * floor(v35 / v41);
        goto LABEL_31;
      }

      if (!(v27 | v21))
      {
        v41 = (v40 - fmin(v36, 0.0)) / v37;
        v36 = v41 * ceil(v36 / v41);
        goto LABEL_31;
      }
    }

    else if (!(v27 | v21))
    {
      v41 = (v39 - fmax(v35, 0.0)) / v37;
      goto LABEL_69;
    }

    v38 = v36 - v35;
    goto LABEL_30;
  }

  v42 = vabdd_f64(v36, v35);
  if (v42 == INFINITY)
  {
    v42 = 1.79769313e308;
  }

  v41 = v42 / v37;
  v43 = v35 + v37;
  v44 = 0;
  if (v36 == v35)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = v41;
  }

  if (v36 == v35)
  {
    v46 = v35 + v37;
  }

  else
  {
    v46 = v36;
  }

LABEL_44:
  v52 = objc_msgSend_array(MEMORY[0x277CBEB18], v32, v36, v41, v43);
  if (v45 != 0.0)
  {
    if (v44 && (v35 < 0.0 || v46 < 0.0) && (v46 <= 0.0 ? (v55 = v35 > 0.0) : (v55 = 1), v55 ? (v56 = v21 == 0) : (v56 = 0), v56 ? (v57 = v27 == 0) : (v57 = 0), v57))
    {
      v75 = llround(v35 / v45);
      if ((v75 & 0x8000000000000000) != 0)
      {
        do
        {
          TSUClamp();
          v80 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v77, v34 + v76, v78, v79);
          objc_msgSend_addObject_(v52, v81, v82, v83, v84, v80);
        }

        while (!__CFADD__(v75++, 1));
      }

      if (v35 <= 0.0 && v46 >= 0.0)
      {
        TSUClamp();
        v90 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v87, v34 + v86, v88, v89);
        objc_msgSend_addObject_(v52, v91, v92, v93, v94, v90);
      }

      v95 = llround(v46 / v45);
      if (v95 >= 1)
      {
        v96 = 1;
        do
        {
          TSUClamp();
          v101 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v98, v34 + v97, v99, v100);
          objc_msgSend_addObject_(v52, v102, v103, v104, v105, v101);

          ++v96;
          --v95;
        }

        while (v95);
      }
    }

    else
    {
      v58 = v46 - v35;
      v54 = INFINITY;
      v53 = 1.79769313e308;
      if (vabdd_f64(v46, v35) == INFINITY)
      {
        v58 = 1.79769313e308;
      }

      v59 = llround(v58 / v45);
      if ((v59 & 0x8000000000000000) == 0)
      {
        v60 = 0;
        v61 = v59 + 1;
        do
        {
          TSUClamp();
          v66 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v63, v34 + v62, v64, v65);
          objc_msgSend_addObject_(v52, v67, v68, v69, v70, v66);

          ++v60;
        }

        while (v61 != v60);
      }
    }
  }

  objc_msgSend_setMin_(v6, v51, v34 + v35, v53, v54);
  objc_msgSend_setMax_(v6, v71, v34 + v46, v72, v73);

  return v52;
}

- (void)p_includeZeroWithMinValue:(double *)a3 maxValue:(double *)a4 userValues:(int64_t)a5
{
  if (a3 && a4 && (v11 = *a3, v10 = *a4, *a3 <= *a4))
  {
    v29 = *a3;
    if ((~a5 & 3) != 0 && v11 != 0.0)
    {
      v30 = *a4;
      if (*a4 != 0.0 && (v29 >= 0.0 || v30 < 0.0))
      {
        v31 = vabdd_f64(v30, v29);
        if (v31 != INFINITY && v31 / fmin(fabs(v30), fabs(v29)) > 0.2)
        {
          if ((a5 & 2) != 0 || v29 >= 0.0)
          {
            if ((a5 & 1) == 0 && v30 > 0.0)
            {
              *a3 = 0.0;
            }
          }

          else
          {
            *a4 = 0.0;
          }
        }
      }
    }
  }

  else
  {
    v32 = v5;
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v10, v11, v12, "[TSCHChartValueAxis p_includeZeroWithMinValue:maxValue:userValues:]", a4, a5, v8, v7, v6, v32);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 384, 0, "Invalid arguments");

    v28 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v28, v24, v25, v26, v27);
  }
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromPositiveMinValue:(SEL)a3 positiveMaxValue:(double)a4 spreadRanges:(double)a5
{
  if (a4 >= a5 || a4 < 0.0 || a5 <= 0.0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_axisDescFromPositiveMinValue:positiveMaxValue:spreadRanges:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 495, 0, "Arguments are not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (a4 == 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = -(a5 - a4 * 3.0) * 0.5;
  }

  retstr->var0 = v27;
  v28 = a5 - v27;
  objc_msgSend_p_calculateAxisDeltaFromSpread_spreadRanges_(self, a3, a5 - v27, 0.0, v6, a6);
  v30 = v29;
  retstr->var2 = v29;
  if (a4 != 0.0)
  {
    v27 = v27 - fmod(v27, v29);
    retstr->var0 = v27;
    v28 = a5 - v27;
  }

  v32 = a5 + v28 * 0.05 + v30 - fmod(a5 + v28 * 0.05, v30);
  retstr->var1 = v32;
  retstr->var3 = vcvtad_u64_f64((v32 - v27) / v30);
  return result;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromNegativeMinValue:(SEL)a3 positiveMaxValue:(double)a4 spreadRanges:(double)a5
{
  if (a4 >= a5 || a4 >= 0.0 || a5 <= 0.0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_axisDescFromNegativeMinValue:positiveMaxValue:spreadRanges:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 517, 0, "Arguments are not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v27 = a5 - a4;
  objc_msgSend_p_calculateAxisDeltaFromSpread_spreadRanges_(self, a3, a5 - a4, a5, v6, a6);
  v29 = v28;
  retstr->var2 = v28;
  v30 = a4 + (a5 - a4) * -0.05 - (v28 - fmod(-(a4 + (a5 - a4) * -0.05), v28));
  retstr->var0 = v30;
  v32 = a5 + v27 * 0.05 + v29 - fmod(a5 + v27 * 0.05, v29);
  retstr->var1 = v32;
  retstr->var3 = vcvtad_u64_f64((v32 - v30) / v29);
  return result;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromFixedPositiveMinValue:(SEL)a3 positiveMaxValue:(double)a4 spreadRanges:(double)a5
{
  if (a4 >= a5 || a4 < 0.0 || a5 <= 0.0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_axisDescFromFixedPositiveMinValue:positiveMaxValue:spreadRanges:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 533, 0, "Arguments are not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_p_calculateAxisDeltaFromSpread_spreadRanges_(self, a3, a5 - a4, a5, v6, a6);
  v28 = v27;
  retstr->var2 = v27;
  v29 = fmod(a4, v27);
  retstr->var0 = a4;
  v31 = a5 - v29 + (a5 - a4) * 0.05 + v29 + v28 - fmod(a5 - v29 + (a5 - a4) * 0.05, v28);
  retstr->var1 = v31;
  retstr->var3 = vcvtad_u64_f64((v31 - a4) / v28);
  return result;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromFixedNegativeMinValue:(SEL)a3 positiveMaxValue:(double)a4 spreadRanges:(double)a5
{
  if (a4 >= a5 || a4 >= 0.0 || a5 < 0.0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_axisDescFromFixedNegativeMinValue:positiveMaxValue:spreadRanges:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 551, 0, "Arguments are not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_p_calculateAxisDeltaFromSpread_spreadRanges_(self, a3, a5 - a4, a5, v6, a6);
  v28 = v27;
  retstr->var2 = v27;
  v29 = fmod(-a4, v27);
  retstr->var0 = a4;
  v31 = a5 + (a5 - a4) * 0.05 + v29 + v28 - fmod(a5 + (a5 - a4) * 0.05 + v29, v28) - v29;
  retstr->var1 = v31;
  retstr->var3 = vcvtad_u64_f64((v31 - a4) / v28);
  return result;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromPositiveMinValue:(SEL)a3 fixedPositiveMaxValue:(double)a4 spreadRanges:(double)a5
{
  if (a4 >= a5 || a4 < 0.0 || a5 <= 0.0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_axisDescFromPositiveMinValue:fixedPositiveMaxValue:spreadRanges:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 569, 0, "Arguments are not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  retstr->var0 = 0.0;
  retstr->var1 = 0.0;
  retstr->var2 = 0.0;
  objc_msgSend_p_calculateAxisDeltaFromSpread_spreadRanges_(self, a3, a5 - a4, a5, v6, a6);
  v28 = v27;
  retstr->var2 = v27;
  if (a4 == 0.0)
  {
    retstr->var0 = 0.0;
    v30 = fmod(a5, v27);
    if (v30 == 0.0)
    {
      v31 = 0.0;
      goto LABEL_14;
    }

    v31 = v30 - v28;
  }

  else
  {
    v32 = fmod(a5, v27);
    if (v32 == 0.0)
    {
      v33 = v32;
    }

    else
    {
      v33 = v28 - v32;
    }

    v31 = (v33 - (a5 - a4 * 3.0)) * 0.5 - (v33 + fmod((v33 - (a5 - a4 * 3.0)) * 0.5, v28));
  }

  retstr->var0 = v31;
LABEL_14:
  retstr->var1 = a5;
  retstr->var3 = vcvtad_u64_f64((a5 - v31) / v28);
  return result;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromNegativeMinValue:(SEL)a3 fixedPositiveMaxValue:(double)a4 spreadRanges:(double)a5
{
  if (a4 >= a5 || a4 >= 0.0 || a5 <= 0.0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_axisDescFromNegativeMinValue:fixedPositiveMaxValue:spreadRanges:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 600, 0, "Arguments are not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_p_calculateAxisDeltaFromSpread_spreadRanges_(self, a3, a5 - a4, a5, v6, a6);
  v28 = v27;
  retstr->var2 = v27;
  v29 = fmod(a5, v27);
  if (v29 == 0.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28 - v29;
  }

  v32 = a4 + (a5 - a4) * -0.05 + v30 - (v30 + v28 - fmod(-(a4 + (a5 - a4) * -0.05 + v30), v28));
  retstr->var0 = v32;
  retstr->var1 = a5;
  retstr->var3 = vcvtad_u64_f64((a5 - v32) / v28);
  return result;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromFixedMinValue:(SEL)a3 fixedMaxValue:(double)a4 spreadRanges:(double)a5
{
  if (a4 >= a5)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_axisDescFromFixedMinValue:fixedMaxValue:spreadRanges:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 621, 0, "Arguments are not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  result = objc_msgSend_p_calculateAxisDeltaFromSpread_spreadRanges_(self, a3, a5 - a4, a5, v6, a6);
  retstr->var1 = a5;
  retstr->var2 = v28;
  retstr->var0 = a4;
  retstr->var3 = (__PAIR128__(vcvtad_u64_f64((a5 - a4) / v28), *&a5) - COERCE_UNSIGNED_INT64(a4 + round((a5 - a4) / v28) * v28)) >> 64;
  return result;
}

- (double)p_calculateAxisDeltaFromSpread:(double)a3 spreadRanges:(id *)a4
{
  v7 = a3;
  if (a3 <= 0.0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, v4, v5, "[TSCHChartValueAxis p_calculateAxisDeltaFromSpread:spreadRanges:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 638, 0, "Argument is not valid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  result = 0.1;
  while (1)
  {
    while (v7 <= a4->var0)
    {
      v7 = v7 * 10.0;
      result = result / 10.0;
    }

    if (v7 <= a4->var1)
    {
      v24 = 0.2;
      return result * v24;
    }

    if (a4[1].var0 < v7 && v7 <= a4[1].var1)
    {
      break;
    }

    if (a4[2].var0 < v7 && v7 <= a4[2].var1)
    {
      return result;
    }

    result = result * 10.0;
    v7 = v7 / 10.0;
  }

  v24 = 0.5;
  return result * v24;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_calculateAxisDescFromMinValue:(SEL)a3 maxValue:(double)a4 userValues:(double)a5
{
  if (a5 <= 0.0 || a4 >= a5)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_calculateAxisDescFromMinValue:maxValue:userValues:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 663, 0, "Values are not correct");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  switch(a6)
  {
    case 0:
    case 8:

      result = MEMORY[0x2821F9670](self, sel_p_axisDescFromPositiveMinValue_positiveMaxValue_spreadRanges_, a4, a5, v6);
      break;
    case 1:
    case 9:

      result = MEMORY[0x2821F9670](self, sel_p_axisDescFromFixedPositiveMinValue_positiveMaxValue_spreadRanges_, a4, a5, v6);
      break;
    case 2:
    case 10:

      result = MEMORY[0x2821F9670](self, sel_p_axisDescFromPositiveMinValue_fixedPositiveMaxValue_spreadRanges_, a4, a5, v6);
      break;
    case 4:
    case 12:

      result = MEMORY[0x2821F9670](self, sel_p_axisDescFromNegativeMinValue_positiveMaxValue_spreadRanges_, a4, a5, v6);
      break;
    case 5:
    case 13:

      result = MEMORY[0x2821F9670](self, sel_p_axisDescFromFixedNegativeMinValue_positiveMaxValue_spreadRanges_, a4, a5, v6);
      break;
    case 6:
    case 14:

      result = MEMORY[0x2821F9670](self, sel_p_axisDescFromNegativeMinValue_fixedPositiveMaxValue_spreadRanges_, a4, a5, v6);
      break;
    default:

      result = MEMORY[0x2821F9670](self, sel_p_axisDescFromFixedMinValue_fixedMaxValue_spreadRanges_, a4, a5, v6);
      break;
  }

  return result;
}

- ($78FA2DCC9A9B4AE6DCC3A2946DFE0BC9)p_axisDescFromMinValue:(SEL)a3 maxValue:(double)a4 userValues:(double)a5
{
  v10 = self;
  if (a4 > a5)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, a4, a5, v6, "[TSCHChartValueAxis p_axisDescFromMinValue:maxValue:userValues:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 737, 0, "Values are not correct");

    self = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  if (a4 >= 0.0 || a5 > 0.0)
  {
    if (a4 == a5)
    {
      retstr->var0 = a4;
      retstr->var1 = a4 + 1.0;
      retstr->var2 = 1.0;
      retstr->var3 = 1;
    }

    else
    {

      return MEMORY[0x2821F9670](v10, sel_p_calculateAxisDescFromMinValue_maxValue_userValues_, a4, a5, v6);
    }
  }

  else
  {
    self = objc_msgSend_p_axisDescFromMinValue_maxValue_userValues_(v10, a3, -a5, -a4, v6, a6);
    *&retstr->var0 = vnegq_f64(vextq_s8(*&retstr->var0, *&retstr->var0, 8uLL));
  }

  return self;
}

- (id)p_computeMajorGridlinesAutomaticallyInAnalysis:(id)a3 forHorizChart:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_msgSend_modelMin(v6, v7, v8, v9, v10);
  v12 = v11;
  objc_msgSend_modelMax(v6, v13, v11, v14, v15);
  v17 = v16;
  v21 = objc_msgSend_userMin(self, v18, v16, v19, v20);

  if (v21)
  {
    v26 = objc_msgSend_userMin(self, v22, v23, v24, v25);
    objc_msgSend_doubleValue(v26, v27, v28, v29, v30);
    v12 = v31;
    v76 = v31;

    v32 = 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_msgSend_userMax(self, v22, v23, v24, v25);

  if (v33)
  {
    v32 |= 2uLL;
    v38 = objc_msgSend_userMax(self, v34, v35, v36, v37);
    objc_msgSend_doubleValue(v38, v39, v40, v41, v42);
    v17 = v43;
  }

  if (v4)
  {
    v44 = v32 | 8;
  }

  else
  {
    v44 = v32;
  }

  objc_msgSend_axisInterceptPosition(self, v34, v35, v36, v37);
  v49 = v48;
  v76 = v12 - v48;
  v50 = v12 - v48;
  v51 = v17 - v48;
  v75 = v51;
  v52 = MEMORY[0x277CBEBF8];
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v51 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    objc_msgSend_p_includeZeroWithMinValue_maxValue_userValues_(self, v45, v51, v46, v47, &v76, &v75, v44);
    v54 = v76;
    if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v55 = v75;
      if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v75 >= v76)
        {
          v56 = v75;
          v55 = v76;
        }

        else
        {
          v75 = v76;
          v76 = v55;
          v56 = v54;
        }

        objc_msgSend_p_axisDescFromMinValue_maxValue_userValues_(self, v53, v55, v56, 0.0, v44, 0);
        v52 = objc_msgSend_array(MEMORY[0x277CBEB18], v57, v58, v59, v60);
        v62 = 0;
        do
        {
          v63 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v61, v49 + v74 + v62 * 0.0, v74, 0.0);
          objc_msgSend_addObject_(v52, v64, v65, v66, v67, v63);

          ++v62;
        }

        while (!v62);
        objc_msgSend_setMin_(v6, v61, v49 + v74, v68, v69);
        objc_msgSend_setMax_(v6, v70, v49 + 0.0, v71, v72);
      }
    }
  }

  return v52;
}

- (id)defaultProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_g_genericToDefaultPropertyMap(self, v4, v5, v6, v7);
  v13 = objc_msgSend_arrayOfBoxedKeys(v8, v9, v10, v11, v12);
  objc_msgSend_addObjectsFromArray_(v3, v14, v15, v16, v17, v13);

  v22 = objc_msgSend_g_genericToSpecificPropertyMap(self, v18, v19, v20, v21);
  v27 = objc_msgSend_arrayOfBoxedKeys(v22, v23, v24, v25, v26);
  objc_msgSend_addObjectsFromArray_(v3, v28, v29, v30, v31, v27);

  v36 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v32, v33, v34, v35, v3);

  return v36;
}

- (int)specificPropertyForGeneric:(int)a3
{
  v6 = *&a3;
  v8 = objc_msgSend_p_GetGenericToValuePropertyMap(self, a2, v3, v4, v5);
  if (!objc_msgSend_containsKey_(v8, v9, v10, v11, v12, v6) || (v17 = objc_msgSend_intForKey_(v8, v13, v14, v15, v16, v6)) == 0)
  {
    v19.receiver = self;
    v19.super_class = TSCHChartValueAxis;
    v17 = [(TSCHChartAxis *)&v19 specificPropertyForGeneric:v6];
  }

  return v17;
}

- (id)g_genericToSpecificPropertyMap
{
  if (qword_280A47320 != -1)
  {
    sub_2764A7820();
  }

  v3 = qword_280A47318;

  return v3;
}

@end