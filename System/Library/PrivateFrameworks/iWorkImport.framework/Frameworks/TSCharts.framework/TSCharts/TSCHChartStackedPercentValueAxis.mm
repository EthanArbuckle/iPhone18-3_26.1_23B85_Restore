@interface TSCHChartStackedPercentValueAxis
- (double)doubleAxisToModelValue:(double)value;
- (double)interceptForAxis:(id)axis;
- (double)totalForGroupIndex:(unint64_t)index series:(id)series;
- (double)totalForValueIndex:(unint64_t)index;
- (double)unitSpaceValueForDataSpaceValue:(double)value series:(id)series groupIndex:(unint64_t)index addValuesFromAllPreviousSeries:(BOOL)previousSeries;
- (double)unitSpaceValueForSeries:(id)series groupIndex:(unint64_t)index min:(double)min max:(double)max;
- (double)unitSpaceValuesForSeries:(id)series groupIndexSet:(id)set min:(double)min max:(double)max;
- (id)dataFormatter;
- (id)dataFormatterForSeries:(id)series groupIndex:(unint64_t)index;
- (id)formattedStringForAxisValue:(id)value;
- (id)formattedStringForSeries:(id)series groupIndex:(unint64_t)index;
- (id)valueForFormattedString:(id)string;
- (void)adjustMinMaxForDataRangeInAnalysis:(id)analysis;
- (void)updateGridValueTypeInterceptInAnalysis:(id)analysis;
- (void)updateModelAxisAnalysis:(id)analysis;
- (void)updateModelMinMaxForErrorBarsOnSeries:(id)series axisID:(id)d analysis:(id)analysis;
- (void)updateMultiDataModelAxisAnalysis:(id)analysis;
@end

@implementation TSCHChartStackedPercentValueAxis

- (double)totalForGroupIndex:(unint64_t)index series:(id)series
{
  v9 = objc_msgSend_valueIndexAtGroupIndex_(series, a2, v4, v5, v6, index);

  objc_msgSend_totalForValueIndex_(self, v8, v10, v11, v12, v9);
  return result;
}

- (double)totalForValueIndex:(unint64_t)index
{
  inProgressAnalysisForErrorBarData = self->_inProgressAnalysisForErrorBarData;
  if (inProgressAnalysisForErrorBarData)
  {
    v8 = inProgressAnalysisForErrorBarData;
  }

  else
  {
    v8 = objc_msgSend_analysis(self, a2, v3, v4, v5);
  }

  v13 = v8;
  v14 = objc_msgSend_totals(v8, v9, v10, v11, v12);
  v23 = 0.0;
  if (objc_msgSend_count(v14, v15, v16, v17, v18) > index)
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v14, v19, v20, v21, v22, index);
    objc_msgSend_doubleValue(v24, v25, v26, v27, v28);
    v23 = v29;
  }

  return v23;
}

- (void)updateModelAxisAnalysis:(id)analysis
{
  v104 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  objc_msgSend_setTotals_(analysisCopy, v5, v6, v7, v8, 0);
  v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_axisID(self, v9, v10, v11, v12);
  v18 = objc_msgSend_model(self, v14, v15, v16, v17);
  v92 = objc_msgSend_seriesList(v18, v19, v20, v21, v22);

  v27 = objc_msgSend_model(self, v23, v24, v25, v26);
  v32 = objc_msgSend_numberOfValues(v27, v28, v29, v30, v31);

  v91 = v32;
  if (v32)
  {
    v36 = 0;
    do
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v37 = v92;
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, v39, v40, v41, &v98, v103, 16);
      if (v42)
      {
        v47 = v42;
        v48 = *v99;
        v49 = 0.0;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v99 != v48)
            {
              objc_enumerationMutation(v37);
            }

            v51 = *(*(&v98 + 1) + 8 * i);
            v52 = objc_msgSend_valueForAxis_valueIndex_(v51, v43, v44, v45, v46, self, v36);
            v57 = v52;
            if (v52)
            {
              objc_msgSend_doubleValue(v52, v53, v54, v55, v56);
              objc_msgSend_doubleModelToAxisValue_forSeries_(self, v58, v59, v60, v61, v51);
              v49 = v49 + v62;
            }
          }

          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v43, v44, v45, v46, &v98, v103, 16);
        }

        while (v47);
      }

      else
      {
        v49 = 0.0;
      }

      v66 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v63, v49, v64, v65);
      objc_msgSend_addObject_(v93, v67, v68, v69, v70, v66);

      ++v36;
    }

    while (v36 != v91);
  }

  objc_msgSend_setModelMax_(analysisCopy, v33, 1.0, v34, v35);
  objc_msgSend_setModelMin_(analysisCopy, v71, 0.0, v72, v73);
  objc_msgSend_setTotals_(analysisCopy, v74, v75, v76, v77, v93);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v78 = v92;
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v79, v80, v81, v82, &v94, v102, 16);
  if (v83)
  {
    v88 = v83;
    v89 = *v95;
    do
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v95 != v89)
        {
          objc_enumerationMutation(v78);
        }

        objc_msgSend_updateModelMinMaxForErrorBarsOnSeries_axisID_analysis_(self, v84, v85, v86, v87, *(*(&v94 + 1) + 8 * j), v13, analysisCopy);
      }

      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v84, v85, v86, v87, &v94, v102, 16);
    }

    while (v88);
  }
}

- (void)updateMultiDataModelAxisAnalysis:(id)analysis
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartStackedPercentValueAxis updateMultiDataModelAxisAnalysis:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStackedPercentValueAxis.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 104, 0, "Should not be called for this axis since it doesn't support reference lines");

  v21 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
}

- (void)updateModelMinMaxForErrorBarsOnSeries:(id)series axisID:(id)d analysis:(id)analysis
{
  dCopy = d;
  analysisCopy = analysis;
  objc_storeStrong(&self->_inProgressAnalysisForErrorBarData, analysis);
  seriesCopy = series;
  v14 = objc_msgSend_errorBarData(seriesCopy, v10, v11, v12, v13);

  inProgressAnalysisForErrorBarData = self->_inProgressAnalysisForErrorBarData;
  self->_inProgressAnalysisForErrorBarData = 0;

  if (v14 && objc_msgSend_showErrorBarsForAxisID_(v14, v16, v17, v18, v19, dCopy))
  {
    v24 = objc_msgSend_totals(analysisCopy, v20, v21, v22, v23);
    v29 = objc_msgSend_minValueGroupIndex(v14, v25, v26, v27, v28);
    v34 = objc_msgSend_objectAtIndexedSubscript_(v24, v30, v31, v32, v33, v29);
    objc_msgSend_doubleValue(v34, v35, v36, v37, v38);
    v40 = v39;

    v45 = 0.0;
    if (v40 != 0.0)
    {
      objc_msgSend_minValueForAxisID_(v14, v41, v42, v43, v44, dCopy);
      v45 = v42 / v40;
    }

    objc_msgSend_modelMin(analysisCopy, v41, v42, v43, v44);
    if (v45 < v47)
    {
      objc_msgSend_setModelMin_(analysisCopy, v46, v45, v48, v49);
    }

    v50 = objc_msgSend_maxValueGroupIndex(v14, v46, v47, v48, v49);
    v55 = objc_msgSend_objectAtIndexedSubscript_(v24, v51, v52, v53, v54, v50);
    objc_msgSend_doubleValue(v55, v56, v57, v58, v59);
    v61 = v60;

    v66 = 0.0;
    if (v61 != 0.0)
    {
      objc_msgSend_maxValueForAxisID_(v14, v62, v63, v64, v65, dCopy);
      v66 = v63 / v61;
    }

    objc_msgSend_modelMax(analysisCopy, v62, v63, v64, v65);
    if (v66 > v70)
    {
      objc_msgSend_setModelMax_(analysisCopy, v67, v66, v68, v69);
    }
  }
}

- (double)doubleAxisToModelValue:(double)value
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, value, v3, v4, "[TSCHChartStackedPercentValueAxis doubleAxisToModelValue:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStackedPercentValueAxis.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 141, 0, "Do not call this method for this axis. It's not possible to convert back.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return value;
}

- (double)interceptForAxis:(id)axis
{
  axisCopy = axis;
  v9 = axisCopy;
  v10 = NAN;
  if (axisCopy && axisCopy != self)
  {
    v11 = objc_msgSend_model(self, v5, v6, v7, v8);
    v16 = objc_msgSend_model(v9, v12, v13, v14, v15);

    if (v11 == v16)
    {
      v21 = objc_msgSend_axisID(self, v17, v18, v19, v20);
      v26 = objc_msgSend_axisID(v9, v22, v23, v24, v25);
      v31 = objc_msgSend_intersectsAxisID_(v21, v27, v28, v29, v30, v26);

      if (v31)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = NAN;
      }
    }

    else
    {
      v10 = NAN;
    }
  }

  return v10;
}

- (id)formattedStringForAxisValue:(id)value
{
  if (value)
  {
    objc_msgSend_doubleValue(value, a2, v3, v4, v5);
    v11 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v7, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_msgSend_dataFormatter(self, a2, v3, v4, v5);
  v17 = objc_msgSend_locale(self, v13, v14, v15, v16);
  v22 = objc_msgSend_chartFormattedStringForValue_locale_(v12, v18, v19, v20, v21, v11, v17);

  return v22;
}

- (void)adjustMinMaxForDataRangeInAnalysis:(id)analysis
{
  analysisCopy = analysis;
  objc_msgSend_max(analysisCopy, v3, v4, v5, v6);
  objc_msgSend_setMax_(analysisCopy, v8, ceil(v7 * 10.0) / 10.0, v9, v10);
  objc_msgSend_min(analysisCopy, v11, v12, v13, v14);
  objc_msgSend_setMin_(analysisCopy, v16, floor(v15 * 10.0) / 10.0, v17, v18);
}

- (double)unitSpaceValueForSeries:(id)series groupIndex:(unint64_t)index min:(double)min max:(double)max
{
  seriesCopy = series;
  v13 = objc_msgSend_valueForAxis_groupIndex_(seriesCopy, v9, v10, v11, v12, self, index);
  v18 = v13;
  if (v13)
  {
    objc_msgSend_doubleValue(v13, v14, v15, v16, v17);
    objc_msgSend_doubleModelToAxisValue_forSeries_(self, v19, v20, v21, v22, seriesCopy);
  }

  else
  {
    v23 = NAN;
  }

  objc_msgSend_unitSpaceValueForDataSpaceValue_series_groupIndex_addValuesFromAllPreviousSeries_(self, v14, v23, v16, v17, seriesCopy, index, 1);
  v25 = v24;

  return v25;
}

- (double)unitSpaceValueForDataSpaceValue:(double)value series:(id)series groupIndex:(unint64_t)index addValuesFromAllPreviousSeries:(BOOL)previousSeries
{
  previousSeriesCopy = previousSeries;
  v76 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  v14 = seriesCopy;
  v15 = fabs(value);
  if (value >= 0.0)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = v15;
  }

  if (seriesCopy && previousSeriesCopy)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v17 = objc_msgSend_model(self, v11, 0.0, v12, v13, 0);
    v22 = objc_msgSend_seriesList(v17, v18, v19, v20, v21);

    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, v24, v25, v26, &v71, v75, 16);
    if (v27)
    {
      v32 = v27;
      v33 = *v72;
LABEL_8:
      v34 = 0;
      while (1)
      {
        if (*v72 != v33)
        {
          objc_enumerationMutation(v22);
        }

        v35 = *(*(&v71 + 1) + 8 * v34);
        if (v35 == v14)
        {
          break;
        }

        v36 = objc_msgSend_valueForAxis_groupIndex_(v35, v28, v29, v30, v31, self, index);
        v41 = v36;
        if (v36)
        {
          objc_msgSend_doubleValue(v36, v37, v38, v39, v40);
          objc_msgSend_doubleModelToAxisValue_forSeries_(self, v42, v43, v44, v45, v14);
          valueCopy = valueCopy + v46;
        }

        if (v32 == ++v34)
        {
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v28, v29, v30, v31, &v71, v75, 16);
          if (v32)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

  objc_msgSend_totalForGroupIndex_series_(self, v11, v15, v12, v13, index, v14);
  if (v48 == 0.0)
  {
    v50 = NAN;
  }

  else
  {
    v50 = v48;
  }

  if (value >= 0.0)
  {
    v51 = valueCopy;
  }

  else
  {
    v51 = -valueCopy;
  }

  v52 = objc_msgSend_analysis(self, v47, -valueCopy, NAN, v49);
  objc_msgSend_min(v52, v53, v54, v55, v56);
  v58 = v57;

  v63 = objc_msgSend_analysis(self, v59, v60, v61, v62);
  objc_msgSend_max(v63, v64, v65, v66, v67);
  v69 = v68;

  return (v51 / v50 - v58) / (v69 - v58);
}

- (double)unitSpaceValuesForSeries:(id)series groupIndexSet:(id)set min:(double)min max:(double)max
{
  v103 = *MEMORY[0x277D85DE8];
  seriesCopy = series;
  setCopy = set;
  if (!seriesCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHChartStackedPercentValueAxis unitSpaceValuesForSeries:groupIndexSet:min:max:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartStackedPercentValueAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 223, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_count(setCopy, v9, v11, v12, v13);
  v90 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v30, v31, v32, v33, 8 * v29);
  v38 = objc_msgSend_mutableBytes(v90, v34, v35, v36, v37);
  selfCopy = self;
  v44 = objc_msgSend_model(self, v40, v41, v42, v43);
  v49 = objc_msgSend_seriesList(v44, v45, v46, v47, v48);
  v50 = seriesCopy;
  v55 = objc_msgSend_seriesIndex(seriesCopy, v51, v52, v53, v54);
  v60 = objc_msgSend_subarrayWithRange_(v49, v56, v57, v58, v59, 0, v55 + 1);

  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  v98 = 0u;
  v89 = v60;
  obj = objc_msgSend_reverseObjectEnumerator(v60, v61, 0.0, v62, v63);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, v65, v66, v67, &v98, v102, 16);
  if (v68)
  {
    v69 = v68;
    v70 = *v99;
    do
    {
      v71 = 0;
      do
      {
        v72 = setCopy;
        if (*v99 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v73 = *(*(&v98 + 1) + 8 * v71);
        v74 = objc_autoreleasePoolPush();
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = sub_2762A44A8;
        v95[3] = &unk_27A6B73B8;
        v95[4] = v73;
        v95[5] = selfCopy;
        v97 = v38;
        v96 = v50;
        setCopy = v72;
        objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(v72, v75, v76, v77, v78, v95);

        objc_autoreleasePoolPop(v74);
        ++v71;
      }

      while (v69 != v71);
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, v80, v81, v82, &v98, v102, 16);
    }

    while (v69);
  }

  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = sub_2762A4568;
  v92[3] = &unk_27A6B73E0;
  v92[4] = selfCopy;
  v93 = v50;
  v94 = v38;
  v83 = v50;
  objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(setCopy, v84, v85, v86, v87, v92);

  return v38;
}

- (id)dataFormatter
{
  if (qword_280A47248 != -1)
  {
    sub_2764A76F8();
  }

  v3 = qword_280A47240;

  return v3;
}

- (id)dataFormatterForSeries:(id)series groupIndex:(unint64_t)index
{
  seriesCopy = series;
  if (objc_msgSend_usesPercentNumberFormatPropertyForSeriesDataFormatting(self, v7, v8, v9, v10))
  {
    objc_opt_class();
    v15 = objc_msgSend_objectValueForProperty_(seriesCopy, v11, v12, v13, v14, 1170);
    v16 = TSUCheckedDynamicCast();
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TSCHChartStackedPercentValueAxis;
    v16 = [(TSCHChartAxis *)&v18 dataFormatterForSeries:seriesCopy groupIndex:index];
  }

  return v16;
}

- (id)formattedStringForSeries:(id)series groupIndex:(unint64_t)index
{
  seriesCopy = series;
  v12 = objc_msgSend_valueForAxis_groupIndex_(seriesCopy, v7, v8, v9, v10, self, index);
  if (v12)
  {
    v16 = objc_msgSend_objectValueForProperty_(seriesCopy, v11, v13, v14, v15, 1170);
    objc_msgSend_doubleValue(v12, v17, v18, v19, v20);
    objc_msgSend_doubleModelToAxisValue_forSeries_(self, v21, v22, v23, v24, seriesCopy);
    v26 = v25;
    objc_msgSend_totalForGroupIndex_series_(self, v27, v25, v28, v29, index, seriesCopy);
    if (v31 == 0.0)
    {
      v31 = NAN;
    }

    v33 = objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v30, v26 / v31, NAN, v32);
    v38 = objc_msgSend_locale(self, v34, v35, v36, v37);
    v43 = objc_msgSend_chartFormattedStringForValue_locale_(v16, v39, v40, v41, v42, v33, v38);
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (id)valueForFormattedString:(id)string
{
  if (string)
  {
    v7 = MEMORY[0x277CCABB0];
    objc_msgSend_doubleValue(string, a2, v4, v5, v6);
    v11 = objc_msgSend_numberWithDouble_(v7, v9, v8 * 0.01, 0.01, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateGridValueTypeInterceptInAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v13.receiver = self;
  v13.super_class = TSCHChartStackedPercentValueAxis;
  [(TSCHChartAxis *)&v13 updateGridValueTypeInterceptInAnalysis:analysisCopy];
  if (objc_msgSend_gridValueType(analysisCopy, v5, v6, v7, v8) == 2)
  {
    objc_msgSend_updateAxisDateInterceptInAnalysis_(self, v9, v10, v11, v12, analysisCopy);
  }
}

@end