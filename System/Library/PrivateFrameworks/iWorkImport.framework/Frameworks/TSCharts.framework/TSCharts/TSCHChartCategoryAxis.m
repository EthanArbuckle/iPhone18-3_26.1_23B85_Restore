@interface TSCHChartCategoryAxis
+ (id)axisForInfo:(id)a3;
- (BOOL)isRangeContinuous;
- (id)computeMajorGridlinesFromMinMaxInAnalysis:(id)a3;
- (id)defaultProperties;
- (id)g_genericToSpecificPropertyMap;
- (id)p_getGenericToCategoryPropertyMap;
- (id)p_getGenericToCategoryPropertyMapForMultiData;
- (int)specificPropertyForGeneric:(int)a3;
- (pair<TSCH3DAxisLabelEnumerator)labelEnumeratorPair;
- (unint64_t)indexForSelectionPathLabelIndex:(unint64_t)a3;
- (unint64_t)selectionPathLabelIndexForIndex:(unint64_t)a3;
@end

@implementation TSCHChartCategoryAxis

+ (id)axisForInfo:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_chartType(v3, v4, v5, v6, v7);
  isHorizontal = objc_msgSend_isHorizontal(v8, v9, v10, v11, v12);

  v19 = objc_msgSend_model(v3, v14, v15, v16, v17);
  if (isHorizontal)
  {
    objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v18, v20, v21, v22, 2, 0);
  }

  else
  {
    objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v18, v20, v21, v22, 1, 0);
  }
  v23 = ;
  v28 = objc_msgSend_axisForID_(v19, v24, v25, v26, v27, v23);

  return v28;
}

- (pair<TSCH3DAxisLabelEnumerator)labelEnumeratorPair
{
  v7 = v2;
  v25 = objc_msgSend_kind(TSCH3DCategoryAxisLabelKind, a2, v3, v4, v5);
  v12 = objc_msgSend_enumeratorWithAxis_kind_(TSCH3DAxisLabelEnumerator, v8, v9, v10, v11, self);
  v17 = objc_msgSend_kind(TSCH3DSeriesLabelKind, v13, v14, v15, v16);
  v22 = objc_msgSend_enumeratorWithAxis_kind_(TSCH3DAxisLabelEnumerator, v18, v19, v20, v21, self, v17);
  *v7 = v12;
  v7[1] = v22;

  result.var1 = v24;
  result.var0 = v23;
  return result;
}

- (BOOL)isRangeContinuous
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartInfo(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_chartType(v11, v12, v13, v14, v15);

  if (objc_msgSend_supportsCategoryAxisPlotToEdgesOption(v16, v17, v18, v19, v20) && !objc_msgSend_intValueForProperty_defaultValue_(self, v21, v22, v23, v24, 1047, 1))
  {
    v59 = 0;
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v25 = objc_msgSend_seriesList(v6, v21, 0.0, v23, v24, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, v27, v28, v29, &v61, v65, 16);
    if (v30)
    {
      v35 = v30;
      v36 = *v62;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v62 != v36)
          {
            objc_enumerationMutation(v25);
          }

          v38 = *(*(&v61 + 1) + 8 * i);
          v39 = objc_msgSend_seriesType(v38, v31, v32, v33, v34);
          if (objc_msgSend_useInBarGapCalculations(v39, v40, v41, v42, v43))
          {
            v48 = objc_msgSend_axisID(self, v44, v45, v46, v47);
            v53 = objc_msgSend_type(v48, v49, v50, v51, v52);
            v58 = objc_msgSend_axisForAxisType_(v38, v54, v55, v56, v57, v53);

            if (v58)
            {
              v59 = 0;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v31, v32, v33, v34, &v61, v65, 16);
      }

      while (v35);
    }

    v59 = 1;
LABEL_15:
  }

  return v59;
}

- (unint64_t)selectionPathLabelIndexForIndex:(unint64_t)a3
{
  if ((objc_msgSend_isCategory(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartCategoryAxis selectionPathLabelIndexForIndex:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 55, 0, "should not convert label index for non-category axis %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v28 = objc_msgSend_model(self, v8, v9, v10, v11);
  v33 = objc_msgSend_multiDataSetCategoryIndexForCategory_(v28, v29, v30, v31, v32, a3);

  return v33;
}

- (unint64_t)indexForSelectionPathLabelIndex:(unint64_t)a3
{
  if ((objc_msgSend_isCategory(self, a2, v3, v4, v5) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartCategoryAxis indexForSelectionPathLabelIndex:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartCategoryAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 60, 0, "should not convert label index for non-category axis %@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v28 = objc_msgSend_model(self, v8, v9, v10, v11);
  v33 = objc_msgSend_categoryForMultiDataSetCategoryIndex_(v28, v29, v30, v31, v32, a3);

  return v33;
}

- (id)computeMajorGridlinesFromMinMaxInAnalysis:(id)a3
{
  v4 = a3;
  objc_msgSend_max(v4, v5, v6, v7, v8);
  v10 = v9;
  objc_msgSend_min(v4, v11, v9, v12, v13);
  v15 = v14;
  v19 = objc_msgSend_model(self, v16, v14, v17, v18);
  v24 = v10 - v15;
  if (objc_msgSend_isMultiData(v19, v20, v21, v22, v23))
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v30 = v25 + (objc_msgSend_isRangeContinuous(self, v26, v27, v28, v29) ^ 1);
  v35 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v31, v32, v33, v34, v30 + 1);
  objc_msgSend_addObject_(v35, v36, v37, v38, v39, &unk_28856ECE0);
  if (v30)
  {
    v42 = v30;
    v44 = fabs(v24) / v30;
    v45 = 1;
    do
    {
      v46 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v40, v15 + v44 * v45, v42, v43);
      objc_msgSend_addObject_(v35, v47, v48, v49, v50, v46);

      ++v45;
      --v30;
    }

    while (v30);
  }

  v51 = objc_msgSend_copy(v35, v40, v41, v42, v43);

  return v51;
}

- (id)p_getGenericToCategoryPropertyMapForMultiData
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_27622CD34;
  block[3] = &unk_27A6B6D38;
  block[4] = self;
  if (qword_280A46B88 != -1)
  {
    dispatch_once(&qword_280A46B88, block);
  }

  return qword_280A46B80;
}

- (id)p_getGenericToCategoryPropertyMap
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  if (objc_msgSend_isMultiData(v6, v7, v8, v9, v10))
  {
    objc_msgSend_p_getGenericToCategoryPropertyMapForMultiData(self, v11, v12, v13, v14);
  }

  else
  {
    objc_msgSend_p_getGenericToCategoryPropertyMapForNonMultiData(self, v11, v12, v13, v14);
  }
  v15 = ;

  return v15;
}

- (id)defaultProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_g_genericToDefaultPropertyMap(self, v4, v5, v6, v7);
  v13 = objc_msgSend_arrayOfBoxedKeys(v8, v9, v10, v11, v12);
  objc_msgSend_addObjectsFromArray_(v3, v14, v15, v16, v17, v13);

  v22 = objc_msgSend_p_getGenericToCategoryPropertyMap(self, v18, v19, v20, v21);
  v27 = objc_msgSend_arrayOfBoxedKeys(v22, v23, v24, v25, v26);
  objc_msgSend_addObjectsFromArray_(v3, v28, v29, v30, v31, v27);

  v36 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v32, v33, v34, v35, v3);

  return v36;
}

- (int)specificPropertyForGeneric:(int)a3
{
  v6 = *&a3;
  v8 = objc_msgSend_p_getGenericToCategoryPropertyMap(self, a2, v3, v4, v5);
  if (!objc_msgSend_containsKey_(v8, v9, v10, v11, v12, v6) || (v17 = objc_msgSend_intForKey_(v8, v13, v14, v15, v16, v6)) == 0)
  {
    v19.receiver = self;
    v19.super_class = TSCHChartCategoryAxis;
    v17 = [(TSCHChartAxis *)&v19 specificPropertyForGeneric:v6];
  }

  return v17;
}

- (id)g_genericToSpecificPropertyMap
{
  if (qword_280A47300 != -1)
  {
    sub_2764A780C();
  }

  v3 = qword_280A472F8;

  return v3;
}

@end