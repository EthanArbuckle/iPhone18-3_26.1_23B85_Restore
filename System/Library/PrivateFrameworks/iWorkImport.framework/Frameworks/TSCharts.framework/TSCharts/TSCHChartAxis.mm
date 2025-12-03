@interface TSCHChartAxis
+ (id)axisForInfo:(id)info;
+ (id)paragraphStyleForLabelsFontForInfo:(id)info;
+ (tvec2<float>)sizeOfLabelsForInfo:(id)info onlyHeight:(BOOL)height;
+ (tvec2<float>)sizeOfSeriesLabelsForInfo:(id)info onlyHeight:(BOOL)height;
- (BOOL)hasCustomFormatForGridValueType:(int)type;
- (BOOL)supportsLabelAngleBaselineOptions;
- (NSArray)majorGridLocations;
- (NSArray)minorGridLocations;
- (NSArray)referenceLines;
- (NSString)description;
- (TSCHChartAxis)initWithAxisID:(id)d model:(id)model;
- (TSCHChartAxis)nonTransientCounterpart;
- (TSCHChartAxisAnalysis)analysis;
- (TSCHChartAxisAnalysis)axisAnalysisFromCurrentModel;
- (TSCHChartAxisAnalysis)multiDataSetAnalysis;
- (TSCHChartAxisInterceptAnalysis)interceptAnalysis;
- (TSCHChartModel)model;
- (TSCHStyleActAlike)style;
- (TSULocale)locale;
- (double)axisInterceptPosition;
- (double)currentDataSetModelAverage;
- (double)currentDataSetModelMax;
- (double)currentDataSetModelMedian;
- (double)currentDataSetModelMin;
- (double)interceptForAxis:(id)axis;
- (double)max;
- (double)min;
- (double)modelMax;
- (double)modelMin;
- (double)range;
- (double)unitSpaceCenterValueForSeries:(id)series groupIndex:(unint64_t)index;
- (double)unitSpaceCenterValueForValue:(double)value;
- (double)unitSpaceCenterValueHalfOffsetWithCount:(double)count;
- (double)unitSpaceCenterValuesForSeries:(id)series groupIndexSet:(id)set count:(unint64_t)count;
- (double)unitSpaceValueForCountSpaceValue:(double)value;
- (double)unitSpaceValueForCountSpaceValue:(double)value min:(double)min count:(double)count;
- (double)unitSpaceValueForDataSpaceValue:(double)value;
- (double)unitSpaceValueForDataSpaceValue:(double)value min:(double)min max:(double)max;
- (double)unitSpaceValueForSeries:(id)series groupIndex:(unint64_t)index;
- (double)unitSpaceValueForSeries:(id)series groupIndex:(unint64_t)index min:(double)min max:(double)max;
- (double)unitSpaceValuesForCountSpaceValuesWithCount:(unint64_t)count;
- (double)unitSpaceValuesForSeries:(id)series groupIndexSet:(id)set;
- (double)unitSpaceValuesForSeries:(id)series groupIndexSet:(id)set min:(double)min max:(double)max;
- (float)floatValueForProperty:(int)property defaultValue:(float)value;
- (id)chartInfo;
- (id)computeMajorGridlinesFromMinMaxInAnalysis:(id)analysis;
- (id)computeMinorGridlinesFromMajorGridlinesInAnalysis:(id)analysis;
- (id)context;
- (id)customFormatForGridValueType:(int)type;
- (id)defaultProperties;
- (id)drawableInfo;
- (id)formattedStringForAxisValue:(id)value;
- (id)formattedStringForSeries:(id)series groupIndex:(unint64_t)index;
- (id)formattedStringForSeries:(id)series groupIndex:(unint64_t)index multiDataSetIndex:(unint64_t)setIndex;
- (id)g_genericToDefaultPropertyMap;
- (id)g_operationPropertyNameForGenericProperty:(int)property;
- (id)gridValueAxisToModelValue:(double)value;
- (id)inspectorStringForSeries:(id)series groupIndex:(unint64_t)index value:(id)value;
- (id)nonstyle;
- (id)objectValueForProperty:(int)property;
- (id)p_axisDataFormatterFromCurrentModel;
- (id)p_dataFormatterForSeries:(id)series groupIndex:(unint64_t)index onlyForValidValue:(BOOL)value;
- (id)p_fixupNegativeStyleForDataFormatter:(id)formatter;
- (id)p_interceptAnalysisFromCurrentModel;
- (id)p_multiDataAxisAnalysisFromCurrentModel;
- (id)referenceLineAtIndex:(unint64_t)index;
- (id)referenceLineWithUUID:(id)d;
- (id)swapTuplesForMutations:(id)mutations forImport:(BOOL)import;
- (id)transformedTuplesWithTuple:(id)tuple;
- (id)unitSpaceValuesForDataSpaceValues:(id)values;
- (id)valueForFormattedString:(id)string;
- (int)adjustedNumberFormatType;
- (int)defaultPropertyForGeneric:(int)generic;
- (int)gridValueType;
- (int)intValueForProperty:(int)property defaultValue:(int)value;
- (int)p_axisGridValueType;
- (int64_t)currentAxisScaleSetting;
- (tvec2<float>)sizeOfLabelsForInfo:(id)info enumerator:(id)enumerator onlyHeight:(BOOL)height;
- (unint64_t)axisIndex;
- (unint64_t)p_count;
- (void)invalidateMultiDataSetAnalysis;
- (void)invalidateTransientState;
- (void)p_setupMultiDataSetAnalysisCacheIfNeeded;
- (void)propertiesWereMutated:(id)mutated;
- (void)setNonStyle:(id)style index:(unint64_t)index;
- (void)setStyle:(id)style index:(unint64_t)index;
- (void)updateAxisDateInterceptInAnalysis:(id)analysis;
- (void)updateGridValueTypeInterceptInAnalysis:(id)analysis;
- (void)updateMinMaxGridLocationsInAnalysis:(id)analysis;
- (void)updateModelAxisAnalysis:(id)analysis;
- (void)updateMultiDataModelAxisAnalysis:(id)analysis;
@end

@implementation TSCHChartAxis

- (tvec2<float>)sizeOfLabelsForInfo:(id)info enumerator:(id)enumerator onlyHeight:(BOOL)height
{
  heightCopy = height;
  v9 = v5;
  infoCopy = info;
  enumeratorCopy = enumerator;
  v15 = objc_msgSend_intValueForProperty_defaultValue_(self, v11, v12, v13, v14, 1034, 0);
  v20 = objc_msgSend_paragraphStyleAtIndex_(infoCopy, v16, v17, v18, v19, v15);
  v25 = objc_msgSend_enumerator(enumeratorCopy, v21, v22, v23, v24);
  v31 = objc_msgSend_sharedText(TSCHText, v26, v27, v28, v29);
  v35 = 0;
  v36 = 0.0;
  v37 = 0.0;
  while (1)
  {
    v38 = objc_msgSend_nextObject(v25, v30, v32, v33, v34);
    v43 = v38;
    if (!v38)
    {
      break;
    }

    v44 = objc_msgSend_string(v38, v39, v40, v41, v42);

    if (!heightCopy)
    {
      v49 = objc_msgSend_string(v43, v45, v46, v47, v48);
      objc_msgSend_measureText_paragraphStyle_(v31, v50, v51, v52, v53, v49, v20);
      v55 = v54;
      v57 = v56;

      v58 = v55;
      if (v36 <= v58)
      {
        v36 = v55;
      }

      v59 = v57;
      if (v37 <= v59)
      {
        v37 = v57;
      }
    }

    v35 = v44;
  }

  if (heightCopy && v35)
  {
    objc_msgSend_measureText_paragraphStyle_(v31, v39, v40, v41, v42, v35, v20);
    v37 = v60;
  }

  *v9 = floorf(v36);
  v9[1] = floorf(v37);

  return v61;
}

+ (tvec2<float>)sizeOfLabelsForInfo:(id)info onlyHeight:(BOOL)height
{
  heightCopy = height;
  v7 = v4;
  infoCopy = info;
  v13 = objc_msgSend_axisForInfo_(self, v9, v10, v11, v12, infoCopy);
  v18 = v13;
  if (v13)
  {
    objc_msgSend_labelEnumeratorPair(v13, v14, v15, v16, v17);
    objc_msgSend_sizeOfLabelsForInfo_enumerator_onlyHeight_(v18, v19, v20, v21, v22, infoCopy, v40, heightCopy);
    v23 = v41;
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "+[TSCHChartAxis(TSCH3DLabelSizeUtility) sizeOfLabelsForInfo:onlyHeight:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 250, 0, "invalid nil value for '%{public}s'", "axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    v23 = 0;
    v40 = 0;
    *v7 = 0;
  }

  return v39;
}

+ (tvec2<float>)sizeOfSeriesLabelsForInfo:(id)info onlyHeight:(BOOL)height
{
  heightCopy = height;
  v7 = v4;
  infoCopy = info;
  v13 = objc_msgSend_axisForInfo_(self, v9, v10, v11, v12, infoCopy);
  v18 = v13;
  if (v13)
  {
    objc_msgSend_labelEnumeratorPair(v13, v14, v15, v16, v17);
    if (v55)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "+[TSCHChartAxis(TSCH3DLabelSizeUtility) sizeOfSeriesLabelsForInfo:onlyHeight:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 257, 0, "invalid nil value for '%{public}s'", "axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    v54 = 0;
    v55 = 0;
  }

  v38 = MEMORY[0x277D81150];
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "+[TSCHChartAxis(TSCH3DLabelSizeUtility) sizeOfSeriesLabelsForInfo:onlyHeight:]");
  v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 259, 0, "invalid nil value for '%{public}s'", "enumerators.second");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
  if (!v18)
  {
    *v7 = 0;
    goto LABEL_8;
  }

LABEL_6:
  objc_msgSend_sizeOfLabelsForInfo_enumerator_onlyHeight_(v18, v19, v20, v21, v22, infoCopy, v55, heightCopy);
LABEL_8:

  return v53;
}

+ (id)paragraphStyleForLabelsFontForInfo:(id)info
{
  infoCopy = info;
  v10 = objc_msgSend_axisForInfo_(self, v5, v6, v7, v8, infoCopy);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "+[TSCHChartAxis(TSCH3DLabelSizeUtility) paragraphStyleForLabelsFontForInfo:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 269, 0, "invalid nil value for '%{public}s'", "axis");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_intValueForProperty_defaultValue_(v10, v9, v11, v12, v13, 1034, 0);
  v34 = objc_msgSend_paragraphStyleAtIndex_(infoCopy, v30, v31, v32, v33, v29);

  return v34;
}

+ (id)axisForInfo:(id)info
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "+[TSCHChartAxis(TSCH3DLabelSizeUtility) axisForInfo:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DAxisEnumerator.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 277, 0, "must be implemented by subclass");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (TSCHChartAxis)initWithAxisID:(id)d model:(id)model
{
  dCopy = d;
  modelCopy = model;
  if (!modelCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartAxis initWithAxisID:model:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 69, 0, "invalid nil value for '%{public}s'", "model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v72.receiver = self;
  v72.super_class = TSCHChartAxis;
  v28 = [(TSCHChartAxis *)&v72 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_axisID, d);
    objc_storeWeak(&v29->_model, modelCopy);
    objc_initWeak(&location, v29);
    WeakRetained = objc_loadWeakRetained(&v29->_model);
    isTransient = objc_msgSend_isTransient(WeakRetained, v31, v32, v33, v34);

    if (isTransient)
    {
      v36 = objc_loadWeakRetained(&v29->_model);
      v41 = objc_msgSend_chartInfo(v36, v37, v38, v39, v40);
      v46 = objc_msgSend_model(v41, v42, v43, v44, v45);

      v51 = objc_msgSend_axisForID_(v46, v47, v48, v49, v50, dCopy);
      objc_storeWeak(&v29->_nonTransientCounterpart, v51);
    }

    else
    {
      v52 = objc_alloc(MEMORY[0x277D811C8]);
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = sub_2762277F8;
      v69[3] = &unk_27A6B6C40;
      objc_copyWeak(&v70, &location);
      v57 = objc_msgSend_initForReentrant_withGenerator_(v52, v53, v54, v55, v56, 0, v69);
      interceptCache = v29->_interceptCache;
      v29->_interceptCache = v57;

      v59 = objc_alloc(MEMORY[0x277D811C8]);
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_276227844;
      v67[3] = &unk_27A6B6C68;
      objc_copyWeak(&v68, &location);
      v64 = objc_msgSend_initForReentrant_withGenerator_(v59, v60, v61, v62, v63, 0, v67);
      analysisCache = v29->_analysisCache;
      v29->_analysisCache = v64;

      objc_destroyWeak(&v68);
      objc_destroyWeak(&v70);
    }

    objc_destroyWeak(&location);
  }

  return v29;
}

- (void)p_setupMultiDataSetAnalysisCacheIfNeeded
{
  if (!self->_multiDataSetAnalysisCache)
  {
    WeakRetained = objc_loadWeakRetained(&self->_model);
    isMultiData = objc_msgSend_isMultiData(WeakRetained, v4, v5, v6, v7);

    if ((isMultiData & 1) == 0)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartAxis p_setupMultiDataSetAnalysisCacheIfNeeded]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 99, 0, "Should only get here for a multi data model");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    objc_initWeak(&location, self);
    v28 = objc_alloc(MEMORY[0x277D811C8]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_276227A14;
    v35[3] = &unk_27A6B6C68;
    objc_copyWeak(&v36, &location);
    v33 = objc_msgSend_initForReentrant_withGenerator_(v28, v29, v30, v31, v32, 0, v35);
    multiDataSetAnalysisCache = self->_multiDataSetAnalysisCache;
    self->_multiDataSetAnalysisCache = v33;

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }
}

- (TSULocale)locale
{
  v6 = objc_msgSend_drawableInfo(self, a2, v2, v3, v4);
  v11 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_documentLocale(v11, v12, v13, v14, v15);

  if (!v16)
  {
    v21 = objc_msgSend_drawableInfo(self, v17, v18, v19, v20);

    if (v21)
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v22, v23, v24, v25);
    }
  }

  return v16;
}

- (NSArray)referenceLines
{
  objc_opt_class();
  v7 = objc_msgSend_model(self, v3, v4, v5, v6);
  v12 = objc_msgSend_referenceLinesMap(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_axisID(self, v13, v14, v15, v16);
  v22 = objc_msgSend_objectForKeyedSubscript_(v12, v18, v19, v20, v21, v17);
  v23 = TSUCheckedDynamicCast();

  return v23;
}

- (id)referenceLineAtIndex:(unint64_t)index
{
  v7 = objc_msgSend_referenceLines(self, a2, v3, v4, v5);
  if (objc_msgSend_count(v7, v8, v9, v10, v11) <= index)
  {
    v16 = 0;
  }

  else
  {
    v16 = objc_msgSend_objectAtIndexedSubscript_(v7, v12, v13, v14, v15, index);
  }

  return v16;
}

- (id)referenceLineWithUUID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = objc_msgSend_referenceLines(self, v5, 0.0, v6, v7, 0, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v33, v37, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v34 != v15)
      {
        objc_enumerationMutation(v8);
      }

      objc_opt_class();
      v17 = TSUDynamicCast();
      v22 = objc_msgSend_uuid(v17, v18, v19, v20, v21);
      isEqual = objc_msgSend_isEqual_(v22, v23, v24, v25, v26, dCopy);

      if (isEqual)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v28, v29, v30, v31, &v33, v37, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v17 = 0;
  }

  return v17;
}

- (TSCHChartAxisInterceptAnalysis)interceptAnalysis
{
  WeakRetained = objc_loadWeakRetained(&self->_nonTransientCounterpart);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  interceptCache = v6->_interceptCache;

  return objc_msgSend_value(interceptCache, v8, v9, v10, v11);
}

- (TSCHChartAxisAnalysis)analysis
{
  WeakRetained = objc_loadWeakRetained(&self->_nonTransientCounterpart);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  analysisCache = v6->_analysisCache;

  return objc_msgSend_value(analysisCache, v8, v9, v10, v11);
}

- (TSCHChartAxisAnalysis)multiDataSetAnalysis
{
  objc_msgSend_p_setupMultiDataSetAnalysisCacheIfNeeded(self, a2, v2, v3, v4);
  multiDataSetAnalysisCache = self->_multiDataSetAnalysisCache;

  return objc_msgSend_value(multiDataSetAnalysisCache, v6, v7, v8, v9);
}

- (void)invalidateTransientState
{
  WeakRetained = objc_loadWeakRetained(&self->_nonTransientCounterpart);

  if (!WeakRetained)
  {
    objc_msgSend_invalidate(self->_interceptCache, v4, v5, v6, v7);
    objc_msgSend_invalidate(self->_analysisCache, v8, v9, v10, v11);
  }

  v12 = objc_loadWeakRetained(&self->_model);
  isMultiData = objc_msgSend_isMultiData(v12, v13, v14, v15, v16);

  if (isMultiData)
  {

    objc_msgSend_invalidateMultiDataSetAnalysis(self, v18, v19, v20, v21);
  }
}

- (void)invalidateMultiDataSetAnalysis
{
  objc_msgSend_p_setupMultiDataSetAnalysisCacheIfNeeded(self, a2, v2, v3, v4);
  multiDataSetAnalysisCache = self->_multiDataSetAnalysisCache;

  objc_msgSend_invalidate(multiDataSetAnalysisCache, v6, v7, v8, v9);
}

- (int64_t)currentAxisScaleSetting
{
  v6 = objc_msgSend_intValueForProperty_defaultValue_(self, a2, v2, v3, v4, 1048, 1);
  v11 = objc_msgSend_model(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chartInfo(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_chartType(v16, v17, v18, v19, v20);

  v26 = objc_msgSend_supportedAxisScales(v21, v22, v23, v24, v25);
  v31 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v27, v28, v29, v30, v6);
  v36 = objc_msgSend_containsObject_(v26, v32, v33, v34, v35, v31);

  if (!v36)
  {
    v6 = 1;
  }

  return v6;
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

    if (v11 == v16 && (axisID = self->_axisID, objc_msgSend_axisID(v9, v17, v18, v19, v20), v22 = objc_claimAutoreleasedReturnValue(), LODWORD(axisID) = objc_msgSend_intersectsAxisID_(axisID, v23, v24, v25, v26, v22), v22, axisID))
    {
      objc_msgSend_axisInterceptPosition(self, v27, v28, v29, v30);
      v10 = v31;
    }

    else
    {
      v10 = NAN;
    }
  }

  return v10;
}

- (double)axisInterceptPosition
{
  v5 = objc_msgSend_interceptAnalysis(self, a2, v2, v3, v4);
  objc_msgSend_axisInterceptPosition(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)min
{
  v5 = objc_msgSend_analysis(self, a2, v2, v3, v4);
  objc_msgSend_min(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)max
{
  v5 = objc_msgSend_analysis(self, a2, v2, v3, v4);
  objc_msgSend_max(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)range
{
  v6 = objc_msgSend_analysis(self, a2, v2, v3, v4);
  objc_msgSend_max(v6, v7, v8, v9, v10);
  v12 = v11;
  v16 = objc_msgSend_analysis(self, v13, v11, v14, v15);
  objc_msgSend_min(v16, v17, v18, v19, v20);
  v22 = v12 - v21;

  return v22;
}

- (unint64_t)p_count
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  if (objc_msgSend_isMultiData(WeakRetained, v4, v5, v6, v7))
  {
    v12 = 1;
  }

  else
  {
    v12 = objc_msgSend_p_rangeCount(self, v8, v9, v10, v11);
  }

  return v12;
}

- (NSArray)majorGridLocations
{
  v5 = objc_msgSend_analysis(self, a2, v2, v3, v4);
  v10 = objc_msgSend_majorGridLocations(v5, v6, v7, v8, v9);

  return v10;
}

- (NSArray)minorGridLocations
{
  v5 = objc_msgSend_analysis(self, a2, v2, v3, v4);
  v10 = objc_msgSend_minorGridLocations(v5, v6, v7, v8, v9);

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_axisID(self, v6, v7, v8, v9);
  v15 = objc_msgSend_debuggingName(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_stringWithFormat_(v3, v16, v17, v18, v19, @"<%@: %p %@>", v5, self, v15);

  return v20;
}

- (void)updateGridValueTypeInterceptInAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v8 = objc_msgSend_p_axisGridValueType(self, v4, v5, v6, v7);
  objc_msgSend_setGridValueType_(analysisCopy, v9, v10, v11, v12, v8);
  if (objc_msgSend_gridValueType(analysisCopy, v13, v14, v15, v16) == 2)
  {
    v21 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v17, v18, v19, v20);
    v26 = objc_msgSend_dateValueWithNSDate_(TSCHChartGridValue, v22, v23, v24, v25, v21);
    objc_msgSend_doubleValue(v26, v27, v28, v29, v30);
    objc_msgSend_setAxisInterceptPosition_(analysisCopy, v31, v32, v33, v34);
  }
}

- (id)p_interceptAnalysisFromCurrentModel
{
  v3 = objc_alloc_init(TSCHChartAxisInterceptAnalysis);
  v8 = objc_msgSend_model(self, v4, v5, v6, v7);
  v13 = objc_msgSend_syncRoot(v8, v9, v10, v11, v12);

  objc_sync_enter(v13);
  v18 = objc_msgSend_model(self, v14, v15, v16, v17);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_27622857C;
  v25[3] = &unk_27A6B6C90;
  v25[4] = self;
  v19 = v3;
  v26 = v19;
  objc_msgSend_disableCachingMediatorDataDuringBlock_(v18, v20, v21, v22, v23, v25);

  objc_sync_exit(v13);

  return v19;
}

- (TSCHChartAxisAnalysis)axisAnalysisFromCurrentModel
{
  v3 = objc_alloc_init(TSCHChartAxisAnalysis);
  v8 = objc_msgSend_model(self, v4, v5, v6, v7);
  v13 = objc_msgSend_syncRoot(v8, v9, v10, v11, v12);

  objc_sync_enter(v13);
  v18 = objc_msgSend_model(self, v14, v15, v16, v17);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_2762286A0;
  v25[3] = &unk_27A6B6C90;
  v25[4] = self;
  v19 = v3;
  v26 = v19;
  objc_msgSend_disableCachingMediatorDataDuringBlock_(v18, v20, v21, v22, v23, v25);

  objc_sync_exit(v13);

  return v19;
}

- (id)p_multiDataAxisAnalysisFromCurrentModel
{
  v3 = objc_alloc_init(TSCHChartAxisAnalysis);
  v8 = objc_msgSend_model(self, v4, v5, v6, v7);
  v13 = objc_msgSend_syncRoot(v8, v9, v10, v11, v12);

  objc_sync_enter(v13);
  objc_msgSend_updateMultiDataModelAxisAnalysis_(self, v14, v15, v16, v17, v3);
  objc_sync_exit(v13);

  return v3;
}

- (int)gridValueType
{
  v5 = objc_msgSend_interceptAnalysis(self, a2, v2, v3, v4);
  v10 = objc_msgSend_gridValueType(v5, v6, v7, v8, v9);

  return v10;
}

- (int)adjustedNumberFormatType
{
  v6 = objc_msgSend_gridValueType(self, a2, v2, v3, v4);
  hasCustomFormatForGridValueType = objc_msgSend_hasCustomFormatForGridValueType_(self, v7, v8, v9, v10, v6);
  v16 = objc_msgSend_intValueForProperty_defaultValue_(self, v12, v13, v14, v15, 1043, 2);
  v21 = objc_msgSend_model(self, v17, v18, v19, v20);
  LODWORD(v6) = objc_msgSend_adjustNumberFormatType_forChartModel_gridValueType_hasCustomFormat_(TSCHChartInfo, v22, v23, v24, v25, v16, v21, v6, hasCustomFormatForGridValueType);

  return v6;
}

- (id)customFormatForGridValueType:(int)type
{
  if (type == 3)
  {
    v6 = 0;
  }

  else
  {
    if (type == 2)
    {
      objc_msgSend_valueForProperty_(self, a2, v3, v4, v5, 1029);
    }

    else
    {
      objc_msgSend_valueForProperty_(self, a2, v3, v4, v5, 1042);
    }
    v7 = ;
    v8 = TSUCheckedProtocolCast();

    if (objc_msgSend_isCustom(v8, v9, v10, v11, v12, &unk_288578C80))
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)hasCustomFormatForGridValueType:(int)type
{
  v6 = objc_msgSend_customFormatForGridValueType_(self, a2, v3, v4, v5, *&type);
  v7 = v6 != 0;

  return v7;
}

- (int)p_axisGridValueType
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_axisID(self, v7, v8, v9, v10);
  v16 = objc_msgSend_type(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_chartInfo(self, v17, v18, v19, v20);
  v26 = objc_msgSend_chartType(v21, v22, v23, v24, v25);
  v31 = objc_msgSend_maxCellsToCheckForGridValueType(v26, v27, v28, v29, v30);

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v74 = v6;
  obj = objc_msgSend_seriesList(v6, v32, 0.0, v33, v34);
  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, v36, v37, v38, &v83, v88, 16);
  if (v78)
  {
    v43 = 0;
    v44 = *v84;
    v76 = v16;
    v75 = *v84;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v84 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v83 + 1) + 8 * i);
        v47 = objc_msgSend_axisIDForAxisType_(v46, v39, v40, v41, v42, v16);
        isEqual = objc_msgSend_isEqual_(v11, v48, v49, v50, v51, v47);

        if (isEqual)
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v53 = objc_msgSend_multiDataValueEnumeratorForAxisID_(v46, v39, 0.0, v41, v42, v11);
          v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, v55, v56, v57, &v79, v87, 16);
          if (v58)
          {
            v63 = v58;
            v64 = 0;
            v65 = *v80;
LABEL_9:
            v66 = 0;
            while (1)
            {
              if (*v80 != v65)
              {
                objc_enumerationMutation(v53);
              }

              v67 = *(*(&v79 + 1) + 8 * v66);
              if (v67)
              {
                v68 = objc_msgSend_chartGridValueType(v67, v59, v60, v61, v62);
                v69 = v43 ? v43 : v68;
                v70 = v68 != v43 && v43 != 0;
                v43 = v69;
                ++v64;
                if (v70 || v64 >= v31)
                {
                  break;
                }
              }

              if (v63 == ++v66)
              {
                v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v59, v60, v61, v62, &v79, v87, 16);
                if (v63)
                {
                  goto LABEL_9;
                }

                v70 = 0;
                break;
              }
            }

            v16 = v76;
            v44 = v75;
            if (v64 || v70)
            {
              goto LABEL_32;
            }
          }

          else
          {
          }
        }
      }

      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, v40, v41, v42, &v83, v88, 16);
    }

    while (v78);
    v70 = 0;
  }

  else
  {
    v70 = 0;
    v43 = 0;
  }

LABEL_32:

  if (v43)
  {
    v71 = v70;
  }

  else
  {
    v71 = 1;
  }

  if (v71)
  {
    v72 = 1;
  }

  else
  {
    v72 = v43;
  }

  return v72;
}

- (void)updateModelAxisAnalysis:(id)analysis
{
  v115 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  WeakRetained = objc_loadWeakRetained(&self->_model);
  isMultiData = objc_msgSend_isMultiData(WeakRetained, v5, v6, v7, v8);

  v14 = objc_msgSend_analyzerForAxis_needsMedian_(TSCHChartAxisAnalyzer, v10, v11, v12, v13, self, isMultiData ^ 1u);
  v19 = objc_msgSend_axisID(self, v15, v16, v17, v18);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v20 = objc_loadWeakRetained(&self->_model);
  v25 = objc_msgSend_seriesList(v20, v21, v22, v23, v24);

  obj = v25;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, v27, v28, v29, &v109, v114, 16);
  if (v30)
  {
    v35 = v30;
    v36 = *v110;
    do
    {
      v37 = 0;
      do
      {
        if (*v110 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v109 + 1) + 8 * v37);
        v39 = objc_msgSend_type(v19, v31, v32, v33, v34, analysisCopy);
        v44 = objc_msgSend_axisIDForAxisType_(v38, v40, v41, v42, v43, v39);
        isEqual = objc_msgSend_isEqual_(v44, v45, v46, v47, v48, v19);

        if (isEqual)
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v50 = objc_msgSend_multiDataValueEnumeratorForAxisID_(v38, v31, 0.0, v33, v34, v19);
          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, v52, v53, v54, &v105, v113, 16);
          if (v55)
          {
            v60 = v55;
            v61 = *v106;
            do
            {
              v62 = 0;
              do
              {
                if (*v106 != v61)
                {
                  objc_enumerationMutation(v50);
                }

                objc_msgSend_addGridValue_forSeries_(v14, v56, v57, v58, v59, *(*(&v105 + 1) + 8 * v62++), v38);
              }

              while (v60 != v62);
              v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v56, v57, v58, v59, &v105, v113, 16);
            }

            while (v60);
          }
        }

        ++v37;
      }

      while (v37 != v35);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, v32, v33, v34, &v109, v114, 16);
    }

    while (v35);
  }

  objc_msgSend_min(v14, v63, v64, v65, v66);
  v68 = v67;
  objc_msgSend_setDataSetModelMin_(analysisCopy, v69, v67, v70, v71);
  objc_msgSend_setModelMin_(analysisCopy, v72, v68, v73, v74);
  objc_msgSend_max(v14, v75, v76, v77, v78);
  v80 = v79;
  objc_msgSend_setDataSetModelMax_(analysisCopy, v81, v79, v82, v83);
  objc_msgSend_setModelMax_(analysisCopy, v84, v80, v85, v86);
  objc_msgSend_average(v14, v87, v88, v89, v90);
  objc_msgSend_setModelAverage_(analysisCopy, v91, v92, v93, v94);
  objc_msgSend_median(v14, v95, v96, v97, v98);
  objc_msgSend_setModelMedian_(analysisCopy, v99, v100, v101, v102);
}

- (void)updateMultiDataModelAxisAnalysis:(id)analysis
{
  v126 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  WeakRetained = objc_loadWeakRetained(&self->_model);
  isMultiData = objc_msgSend_isMultiData(WeakRetained, v5, v6, v7, v8);

  if ((isMultiData & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartAxis updateMultiDataModelAxisAnalysis:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 388, 0, "Should only get here for a multi data model");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_analyzerForAxis_needsMedian_(TSCHChartAxisAnalyzer, v10, v11, v12, v13, self, 1);
  v34 = objc_msgSend_axisID(self, v30, v31, v32, v33);
  v35 = objc_loadWeakRetained(&self->_model);
  v40 = objc_msgSend_multiDataSetIndex(v35, v36, v37, v38, v39);

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v41 = objc_loadWeakRetained(&self->_model);
  v46 = objc_msgSend_seriesList(v41, v42, v43, v44, v45);

  obj = v46;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, v48, v49, v50, &v121, v125, 16);
  if (v51)
  {
    v56 = v51;
    v120 = *v122;
    do
    {
      v57 = 0;
      do
      {
        if (*v122 != v120)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v121 + 1) + 8 * v57);
        v59 = objc_msgSend_type(v34, v52, v53, v54, v55);
        v64 = objc_msgSend_axisIDForAxisType_(v58, v60, v61, v62, v63, v59);
        isEqual = objc_msgSend_isEqual_(v64, v65, v66, v67, v68, v34);

        if (isEqual)
        {
          v70 = objc_msgSend_numberOfValues(v58, v52, v53, v54, v55);
          if (v70)
          {
            v71 = v70;
            for (i = 0; i != v71; ++i)
            {
              v73 = objc_msgSend_valueForAxis_valueIndex_multiDataSetIndex_(v58, v52, v53, v54, v55, self, i, v40);
              objc_msgSend_addGridValue_forSeries_(v29, v74, v75, v76, v77, v73, v58);
            }
          }
        }

        ++v57;
      }

      while (v57 != v56);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, v53, v54, v55, &v121, v125, 16);
    }

    while (v56);
  }

  objc_msgSend_min(v29, v78, v79, v80, v81);
  v83 = v82;
  objc_msgSend_setDataSetModelMin_(analysisCopy, v84, v82, v85, v86);
  objc_msgSend_setModelMin_(analysisCopy, v87, v83, v88, v89);
  objc_msgSend_max(v29, v90, v91, v92, v93);
  v95 = v94;
  objc_msgSend_setDataSetModelMax_(analysisCopy, v96, v94, v97, v98);
  objc_msgSend_setModelMax_(analysisCopy, v99, v95, v100, v101);
  objc_msgSend_average(v29, v102, v103, v104, v105);
  objc_msgSend_setModelAverage_(analysisCopy, v106, v107, v108, v109);
  objc_msgSend_median(v29, v110, v111, v112, v113);
  objc_msgSend_setModelMedian_(analysisCopy, v114, v115, v116, v117);
}

- (double)modelMin
{
  v5 = objc_msgSend_analysis(self, a2, v2, v3, v4);
  objc_msgSend_modelMin(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)modelMax
{
  v5 = objc_msgSend_analysis(self, a2, v2, v3, v4);
  objc_msgSend_modelMax(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

- (double)currentDataSetModelMin
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  if (objc_msgSend_isMultiData(WeakRetained, v4, v5, v6, v7))
  {
    objc_msgSend_multiDataSetAnalysis(self, v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend_analysis(self, v8, v9, v10, v11);
  }
  v12 = ;

  objc_msgSend_dataSetModelMin(v12, v13, v14, v15, v16);
  v18 = v17;

  return v18;
}

- (double)currentDataSetModelMax
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  if (objc_msgSend_isMultiData(WeakRetained, v4, v5, v6, v7))
  {
    objc_msgSend_multiDataSetAnalysis(self, v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend_analysis(self, v8, v9, v10, v11);
  }
  v12 = ;

  objc_msgSend_dataSetModelMax(v12, v13, v14, v15, v16);
  v18 = v17;

  return v18;
}

- (double)currentDataSetModelAverage
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  if (objc_msgSend_isMultiData(WeakRetained, v4, v5, v6, v7))
  {
    objc_msgSend_multiDataSetAnalysis(self, v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend_analysis(self, v8, v9, v10, v11);
  }
  v12 = ;

  objc_msgSend_modelAverage(v12, v13, v14, v15, v16);
  v18 = v17;

  return v18;
}

- (double)currentDataSetModelMedian
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  if (objc_msgSend_isMultiData(WeakRetained, v4, v5, v6, v7))
  {
    objc_msgSend_multiDataSetAnalysis(self, v8, v9, v10, v11);
  }

  else
  {
    objc_msgSend_analysis(self, v8, v9, v10, v11);
  }
  v12 = ;

  objc_msgSend_modelMedian(v12, v13, v14, v15, v16);
  v18 = v17;

  return v18;
}

- (id)gridValueAxisToModelValue:(double)value
{
  objc_msgSend_doubleAxisToModelValue_(self, a2, value, v3, v4);

  return objc_msgSend_numberValueWithDouble_(TSCHChartGridValue, v5, v6, v7, v8);
}

- (void)updateMinMaxGridLocationsInAnalysis:(id)analysis
{
  analysisCopy = analysis;
  v8 = objc_msgSend_model(self, v4, v5, v6, v7);
  v13 = objc_msgSend_syncRoot(v8, v9, v10, v11, v12);

  objc_sync_enter(v13);
  objc_msgSend_updateModelAxisAnalysis_(self, v14, v15, v16, v17, analysisCopy);
  objc_msgSend_modelMin(analysisCopy, v18, v19, v20, v21);
  objc_msgSend_setMin_(analysisCopy, v22, v23, v24, v25);
  objc_msgSend_modelMax(analysisCopy, v26, v27, v28, v29);
  objc_msgSend_setMax_(analysisCopy, v30, v31, v32, v33);
  objc_msgSend_adjustMinMaxForDataRangeInAnalysis_(self, v34, v35, v36, v37, analysisCopy);
  v42 = objc_msgSend_computeMajorGridlinesFromMinMaxInAnalysis_(self, v38, v39, v40, v41, analysisCopy);
  objc_msgSend_setMajorGridLocations_(analysisCopy, v43, v44, v45, v46, v42);

  v51 = objc_msgSend_computeMinorGridlinesFromMajorGridlinesInAnalysis_(self, v47, v48, v49, v50, analysisCopy);
  objc_msgSend_setMinorGridLocations_(analysisCopy, v52, v53, v54, v55, v51);

  objc_sync_exit(v13);
}

- (id)computeMajorGridlinesFromMinMaxInAnalysis:(id)analysis
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartAxis computeMajorGridlinesFromMinMaxInAnalysis:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 483, 0, "subclasses must implement computeMajorGridlinesFromMinMax");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

- (id)computeMinorGridlinesFromMajorGridlinesInAnalysis:(id)analysis
{
  v7 = objc_msgSend_majorGridLocations(analysis, a2, v3, v4, v5);
  v12 = objc_msgSend_count(v7, v8, v9, v10, v11);
  v17 = objc_msgSend_intValueForProperty_defaultValue_(self, v13, v14, v15, v16, 1046, 0);
  v22 = 0;
  if (v17 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v17;
  }

  if (v7 && v12 >= 2)
  {
    v105 = v12 - 1;
    v24 = 0.0;
    for (i = 1; i != v12; ++i)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(v7, v18, v19, v20, v21, i, v105);
      objc_msgSend_doubleValue(v26, v27, v28, v29, v30);
      v32 = v31;

      v37 = objc_msgSend_objectAtIndexedSubscript_(v7, v33, v34, v35, v36, i - 1);
      objc_msgSend_doubleValue(v37, v38, v39, v40, v41);
      v43 = v42;

      v19 = v32 - v43;
      if (v32 - v43 > v24)
      {
        v24 = v32 - v43;
      }
    }

    if (v24 == 0.0)
    {
      v22 = 0;
    }

    else
    {
      v45 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v18, v19, v20, v21, v105 * v23);
      v48 = 0;
      v49 = (v23 + 1);
      v50 = v24 / v49;
      do
      {
        v106 = v48 + 1;
        v51 = objc_msgSend_objectAtIndexedSubscript_(v7, v44, v49, v46, v47);
        objc_msgSend_doubleValue(v51, v52, v53, v54, v55);
        v57 = v56;

        v62 = objc_msgSend_objectAtIndexedSubscript_(v7, v58, v59, v60, v61, v48);
        objc_msgSend_doubleValue(v62, v63, v64, v65, v66);
        v68 = v67;

        v69 = (v57 - v68) / v50;
        v70 = v69;
        v46 = v69;
        LODWORD(v71) = v69 == v46;
        v49 = vabdd_f64(v46, v69);
        if (v49 < 0.001)
        {
          v71 = 1;
        }

        else
        {
          v71 = v71;
        }

        v72 = v70 - v71;
        if (v70 - v71 >= 1)
        {
          v73 = 1;
          do
          {
            v74 = v68 + v73 * v50;
            if (v57 <= 0.0)
            {
              v74 = v57 - v73 * v50;
            }

            v75 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v44, v74, v57 - v73 * v50, v47);
            objc_msgSend_addObject_(v45, v76, v77, v78, v79, v75);
            if (!v48)
            {
              v84 = objc_msgSend_axisID(self, v80, v81, v82, v83);
              v89 = objc_msgSend_type(v84, v85, v86, v87, v88);

              if (v89 == 6)
              {
                v94 = MEMORY[0x277CCABB0];
                objc_msgSend_doubleValue(v75, v90, v91, v92, v93);
                v99 = objc_msgSend_numberWithDouble_(v94, v96, -v95, v97, v98);
                objc_msgSend_insertObject_atIndex_(v45, v100, v101, v102, v103, v99, 0);
              }
            }

            ++v73;
            --v72;
          }

          while (v72);
        }

        ++v48;
      }

      while (v106 != v105);
      v22 = objc_msgSend_copy(v45, v44, v49, v46, v47);
    }
  }

  return v22;
}

- (double)unitSpaceValueForSeries:(id)series groupIndex:(unint64_t)index min:(double)min max:(double)max
{
  seriesCopy = series;
  if (!seriesCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "[TSCHChartAxis unitSpaceValueForSeries:groupIndex:min:max:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 560, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_valueForAxis_groupIndex_(seriesCopy, v10, v12, v13, v14, self, index);
  v35 = v30;
  if (v30 && (objc_msgSend_doubleValue(v30, v31, v32, v33, v34), (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL))
  {
    objc_msgSend_doubleModelToAxisValue_forSeries_(self, v36, v37, v38, v39, seriesCopy);
    objc_msgSend_unitSpaceValueForDataSpaceValue_min_max_(self, v41, v42, min, max);
    v40 = v43;
  }

  else
  {
    v40 = NAN;
  }

  return v40;
}

- (double)unitSpaceValuesForSeries:(id)series groupIndexSet:(id)set min:(double)min max:(double)max
{
  seriesCopy = series;
  setCopy = set;
  if (!seriesCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCHChartAxis unitSpaceValuesForSeries:groupIndexSet:min:max:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 583, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_count(setCopy, v11, v13, v14, v15);
  v36 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v32, v33, v34, v35, 8 * v31);
  v37 = v36;
  v42 = objc_msgSend_mutableBytes(v37, v38, v39, v40, v41);
  v47 = objc_msgSend_null(MEMORY[0x277CBEB68], v43, v44, v45, v46);
  v48 = objc_autoreleasePoolPush();
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_276229B38;
  v56[3] = &unk_27A6B6CB8;
  v49 = seriesCopy;
  v57 = v49;
  selfCopy = self;
  v50 = v47;
  v59 = v50;
  v60 = v42;
  minCopy = min;
  maxCopy = max;
  objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(setCopy, v51, v52, v53, v54, v56);

  objc_autoreleasePoolPop(v48);
  return v42;
}

- (double)unitSpaceValueForSeries:(id)series groupIndex:(unint64_t)index
{
  seriesCopy = series;
  objc_msgSend_min(self, v7, v8, v9, v10);
  v12 = v11;
  objc_msgSend_max(self, v13, v11, v14, v15);
  objc_msgSend_unitSpaceValueForSeries_groupIndex_min_max_(self, v16, v12, v17, v18, seriesCopy, index);
  v20 = v19;

  return v20;
}

- (double)unitSpaceValuesForSeries:(id)series groupIndexSet:(id)set
{
  setCopy = set;
  seriesCopy = series;
  objc_msgSend_min(self, v8, v9, v10, v11);
  v13 = v12;
  objc_msgSend_max(self, v14, v12, v15, v16);
  v20 = objc_msgSend_unitSpaceValuesForSeries_groupIndexSet_min_max_(self, v17, v13, v18, v19, seriesCopy, setCopy);

  return v20;
}

- (double)unitSpaceValueForDataSpaceValue:(double)value min:(double)min max:(double)max
{
  valueCopy = value;
  if ((*&value & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if ((*&min & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, value, min, max, "[TSCHChartAxis unitSpaceValueForDataSpaceValue:min:max:]");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 637, 0, "inf/NAN minValue!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    }

    if ((*&max & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, value, min, max, "[TSCHChartAxis unitSpaceValueForDataSpaceValue:min:max:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 638, 0, "inf/NAN maxValue!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    }

    if (max - min < 0.0)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, value, min, max, "[TSCHChartAxis unitSpaceValueForDataSpaceValue:min:max:]");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v46, v47, v48, v39, v44, 639, 0, "max - min < 0!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    }

    if (max == min)
    {
      if (max == valueCopy)
      {
        return 0.0;
      }

      else
      {
        return NAN;
      }
    }

    else
    {
      return (valueCopy - min) / (max - min);
    }
  }

  return valueCopy;
}

- (double)unitSpaceValueForDataSpaceValue:(double)value
{
  objc_msgSend_min(self, a2, value, v3, v4);
  v8 = v7;
  objc_msgSend_max(self, v9, v7, v10, v11);

  objc_msgSend_unitSpaceValueForDataSpaceValue_min_max_(self, v12, value, v8, v13);
  return result;
}

- (id)unitSpaceValuesForDataSpaceValues:(id)values
{
  v48 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = MEMORY[0x277CBEB18];
  v10 = objc_msgSend_count(valuesCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_arrayWithCapacity_(v5, v11, v12, v13, v14, v10);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = valuesCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, &v43, v47, 16);
  if (v21)
  {
    v26 = v21;
    v27 = *v44;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_doubleValue(*(*(&v43 + 1) + 8 * i), v22, v23, v24, v25, v43);
        objc_msgSend_unitSpaceValueForDataSpaceValue_(self, v29, v30, v31, v32);
        v37 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v33, v34, v35, v36);
        objc_msgSend_addObject_(v15, v38, v39, v40, v41, v37);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v22, v23, v24, v25, &v43, v47, 16);
    }

    while (v26);
  }

  return v15;
}

- (double)unitSpaceValueForCountSpaceValue:(double)value min:(double)min count:(double)count
{
  objc_msgSend_doubleModelToAxisValue_forSeries_(self, a2, value, min, count, 0);
  v11 = v8;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if ((*&min & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartAxis unitSpaceValueForCountSpaceValue:min:count:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 670, 0, "inf/NAN minValue!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    }

    if ((*&count & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartAxis unitSpaceValueForCountSpaceValue:min:count:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 671, 0, "inf/NAN maxValue!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    }

    v42 = count - min;
    if (v42 <= 0.0)
    {
      v43 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCHChartAxis unitSpaceValueForCountSpaceValue:min:count:]");
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 672, 0, "max - min <= 0!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    }

    return (v11 - min) / v42;
  }

  return v11;
}

- (double)unitSpaceValueForCountSpaceValue:(double)value
{
  objc_msgSend_min(self, a2, value, v3, v4);
  v8 = v7;
  v13 = objc_msgSend_p_count(self, v9, v7, v10, v11);

  objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(self, v12, value, v8, v13);
  return result;
}

- (double)unitSpaceCenterValueHalfOffsetWithCount:(double)count
{
  isRangeContinuous = objc_msgSend_isRangeContinuous(self, a2, count, v3, v4);
  result = 0.0;
  if ((isRangeContinuous & 1) == 0)
  {
    return 1.0 / (count + count);
  }

  return result;
}

- (double)unitSpaceCenterValueForValue:(double)value
{
  if (objc_msgSend_isRangeContinuous(self, a2, value, v3, v4))
  {
    objc_msgSend_unitSpaceValueForDataSpaceValue_(self, v7, value, v8, v9);
  }

  else
  {
    objc_msgSend_unitSpaceValueForCountSpaceValue_(self, v7, value, v8, v9);
  }

  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v17 = objc_msgSend_numberOfValues(WeakRetained, v13, v14, v15, v16);
  objc_msgSend_unitSpaceCenterValueHalfOffsetWithCount_(self, v18, v17, v19, v20);
  v22 = v11 + v21;

  return v22;
}

- (double)unitSpaceCenterValueForSeries:(id)series groupIndex:(unint64_t)index
{
  seriesCopy = series;
  if (objc_msgSend_isRangeContinuous(self, v7, v8, v9, v10))
  {
    objc_msgSend_unitSpaceValueForSeries_groupIndex_(self, v11, v12, v13, v14, seriesCopy, index);
  }

  else
  {
    objc_msgSend_unitSpaceValueForCountSpaceValue_(self, v11, index, v13, v14);
  }

  v16 = v15;
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v22 = objc_msgSend_numberOfGroupsInSeries_(WeakRetained, v18, v19, v20, v21, seriesCopy);
  objc_msgSend_unitSpaceCenterValueHalfOffsetWithCount_(self, v23, v22, v24, v25);
  v27 = v16 + v26;

  return v27;
}

- (double)unitSpaceCenterValuesForSeries:(id)series groupIndexSet:(id)set count:(unint64_t)count
{
  seriesCopy = series;
  setCopy = set;
  if (!seriesCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCHChartAxis unitSpaceCenterValuesForSeries:groupIndexSet:count:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 702, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_count(setCopy, v9, v11, v12, v13);
  isRangeContinuous = objc_msgSend_isRangeContinuous(self, v30, v31, v32, v33);
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v40 = objc_msgSend_numberOfGroupsInSeries_(WeakRetained, v36, v37, v38, v39, seriesCopy);
  objc_msgSend_unitSpaceCenterValueHalfOffsetWithCount_(self, v41, v40, v42, v43);
  v45 = v44;

  if (isRangeContinuous)
  {
    v50 = objc_msgSend_unitSpaceValuesForSeries_groupIndexSet_(self, v46, v47, v48, v49, seriesCopy, setCopy);
  }

  else
  {
    v51 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v46, v47, v48, v49, 8 * v29);
    v52 = v51;
    v50 = objc_msgSend_mutableBytes(v52, v53, v54, v55, v56);

    if (v29 > count || objc_msgSend_lastIndex(setCopy, v57, v58, v59, v60) >= count)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "[TSCHChartAxis unitSpaceCenterValuesForSeries:groupIndexSet:count:]");
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v68, v69, v70, v71, v62, v67, 710, 0, "values out of range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
    }

    objc_msgSend_min(self, v57, v58, v59, v60);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_27622A6B4;
    v82[3] = &unk_27A6B6CE0;
    v82[4] = self;
    v82[5] = v50;
    *&v82[6] = v76;
    v82[7] = count;
    objc_msgSend_tsu_enumerateIndexesAndPositionsUsingBlock_(setCopy, v77, v76, COERCE_DOUBLE(3221225472), v78, v82);
  }

  if (v45 != 0.0 && v29 != 0)
  {
    v80 = v50;
    do
    {
      *v80 = v45 + *v80;
      ++v80;
      --v29;
    }

    while (v29);
  }

  return v50;
}

- (double)unitSpaceValuesForCountSpaceValuesWithCount:(unint64_t)count
{
  v8 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], a2, v3, v4, v5, 8 * count);
  v9 = v8;
  v14 = objc_msgSend_mutableBytes(v9, v10, v11, v12, v13);

  if (count)
  {
    v19 = 0;
    do
    {
      objc_msgSend_min(self, v15, v16, v17, v18);
      objc_msgSend_unitSpaceValueForCountSpaceValue_min_count_(self, v20, v19, v21, count);
      v14[v19++] = v16;
    }

    while (count != v19);
  }

  return v14;
}

- (id)p_fixupNegativeStyleForDataFormatter:(id)formatter
{
  formatterCopy = formatter;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v9 = v4;
  v10 = formatterCopy;
  if (v4)
  {
    v10 = objc_msgSend_numberFormatByResettingToDefaultNegativeStyleIfAvailable(v4, v5, v6, v7, v8);
  }

  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCHChartAxis p_fixupNegativeStyleForDataFormatter:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 747, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  return v10;
}

- (id)p_axisDataFormatterFromCurrentModel
{
  v6 = objc_msgSend_intValueForProperty_defaultValue_(self, a2, v2, v3, v4, 1043, 2);
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_mediator(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v17, v18, v19, v20);
  v26 = objc_msgSend_supportsNumberFormatSameAsSource(v21, v22, v23, v24, v25);

  if (v16)
  {
    if (v26 && v6 == 1)
    {
      v32 = objc_msgSend_drawableInfo(self, v27, v28, v29, v30);
      v37 = objc_msgSend_documentRoot(v32, v33, v34, v35, v36);
      v42 = objc_msgSend_dataFormatterForAxis_documentRoot_(v16, v38, v39, v40, v41, self, v37);
LABEL_16:

LABEL_17:
      objc_msgSend_p_fixupNegativeStyleForDataFormatter_(self, v113, v114, v115, v116, v42, v138);
      goto LABEL_18;
    }
  }

  v43 = objc_msgSend_interceptAnalysis(self, v27, v28, v29, v30);
  v48 = objc_msgSend_gridValueType(v43, v44, v45, v46, v47);

  switch(v48)
  {
    case 3:
      v32 = objc_msgSend_objectValueForProperty_(self, v49, v50, v51, v52, 1030);
      v138 = &unk_288578DF0;
      v42 = TSUCheckedProtocolCast();
      goto LABEL_17;
    case 2:
      objc_opt_class();
      v85 = objc_msgSend_objectValueForProperty_(self, v81, v82, v83, v84, 1029);
      v32 = TSUCheckedDynamicCast();

      if (!v32)
      {
        v90 = MEMORY[0x277D81150];
        v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v87, v88, v89, "[TSCHChartAxis p_axisDataFormatterFromCurrentModel]");
        v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v97, v98, v99, v100, v91, v96, 769, 0, "invalid nil value for '%{public}s'", "formatObject");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104);
      }

      v37 = objc_msgSend_drawableInfo(self, v86, v87, v88, v89);
      v66 = objc_msgSend_documentRoot(v37, v105, v106, v107, v108);
      v42 = objc_msgSend_dataFormatterForDocumentRoot_(v32, v109, v110, v111, v112, v66);
      goto LABEL_15;
    case 1:
      objc_opt_class();
      v57 = objc_msgSend_objectValueForProperty_(self, v53, v54, v55, v56, 1042);
      v32 = TSUCheckedDynamicCast();

      v37 = objc_msgSend_drawableInfo(self, v58, v59, v60, v61);
      v66 = objc_msgSend_documentRoot(v37, v62, v63, v64, v65);
      v71 = objc_msgSend_chartInfo(self, v67, v68, v69, v70);
      v76 = objc_msgSend_pasteboardCustomFormatList(v71, v72, v73, v74, v75);
      v42 = objc_msgSend_dataFormatterForDocumentRoot_pasteboardCustomFormatList_(v32, v77, v78, v79, v80, v66, v76);

LABEL_15:
      goto LABEL_16;
  }

  v119 = MEMORY[0x277D81150];
  v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "[TSCHChartAxis p_axisDataFormatterFromCurrentModel]");
  v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v122, v123, v124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v119, v126, v127, v128, v129, v120, v125, 777, 0, "Unsupported grid value type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v130, v131, v132, v133);
  v42 = 0;
  objc_msgSend_p_fixupNegativeStyleForDataFormatter_(self, v134, v135, v136, v137, 0);
  v117 = LABEL_18:;

  return v117;
}

- (id)p_dataFormatterForSeries:(id)series groupIndex:(unint64_t)index onlyForValidValue:(BOOL)value
{
  valueCopy = value;
  seriesCopy = series;
  v13 = objc_msgSend_intValueForProperty_defaultValue_(seriesCopy, v9, v10, v11, v12, 1167, 2);
  v18 = objc_msgSend_chartInfo(self, v14, v15, v16, v17);
  v23 = objc_msgSend_mediator(v18, v19, v20, v21, v22);

  v28 = objc_msgSend_sharedChartConfiguration(TSCHConfiguration, v24, v25, v26, v27);
  v33 = objc_msgSend_supportsNumberFormatSameAsSource(v28, v29, v30, v31, v32);

  if (v23)
  {
    if (v33 && v13 == 1)
    {
      v39 = objc_msgSend_drawableInfo(self, v34, v35, v36, v37);
      v44 = objc_msgSend_documentRoot(v39, v40, v41, v42, v43);
      v49 = objc_msgSend_dataFormatterForAxis_documentRoot_(v23, v45, v46, v47, v48, self, v44);
LABEL_25:

      goto LABEL_26;
    }
  }

  if (!valueCopy || (objc_msgSend_valueForAxis_groupIndex_(seriesCopy, v34, v35, v36, v37, self, index), v50 = objc_claimAutoreleasedReturnValue(), v50, v50))
  {
    v51 = objc_msgSend_interceptAnalysis(self, v34, v35, v36, v37);
    v56 = objc_msgSend_gridValueType(v51, v52, v53, v54, v55);

    hasCustomFormatForGridValueType = objc_msgSend_hasCustomFormatForGridValueType_(self, v57, v58, v59, v60, v56);
    v66 = objc_msgSend_model(self, v62, v63, v64, v65);
    hasCustomFormat = objc_msgSend_adjustNumberFormatType_forChartModel_gridValueType_hasCustomFormat_(TSCHChartInfo, v67, v68, v69, v70, v13, v66, v56, hasCustomFormatForGridValueType);

    if (v56 == 2)
    {
      v76 = 7;
    }

    else
    {
      v76 = 2;
    }

    if (hasCustomFormat != 9)
    {
      v76 = hasCustomFormat;
    }

    if (v76)
    {
      if (v76 == 10)
      {
        v39 = objc_msgSend_objectValueForProperty_(seriesCopy, v72, v73, v74, v75, 1137);
        v49 = TSUCheckedProtocolCast();
LABEL_26:

        v156 = objc_msgSend_p_fixupNegativeStyleForDataFormatter_(self, v152, v153, v154, v155, v49);

        goto LABEL_27;
      }

      if (v76 == 7)
      {
        objc_opt_class();
        v81 = objc_msgSend_objectValueForProperty_(seriesCopy, v77, v78, v79, v80, 1136);
        v39 = TSUCheckedDynamicCast();

        if (!v39)
        {
          v86 = MEMORY[0x277D81150];
          v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "[TSCHChartAxis p_dataFormatterForSeries:groupIndex:onlyForValidValue:]");
          v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v93, v94, v95, v96, v87, v92, 828, 0, "invalid nil value for '%{public}s'", "formatObject");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98, v99, v100);
        }

        v44 = objc_msgSend_drawableInfo(self, v82, v83, v84, v85);
        v105 = objc_msgSend_documentRoot(v44, v101, v102, v103, v104);
        v49 = objc_msgSend_dataFormatterForDocumentRoot_(v39, v106, v107, v108, v109, v105);
        goto LABEL_24;
      }
    }

    else
    {
      v110 = MEMORY[0x277D81150];
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v73, v74, v75, "[TSCHChartAxis p_dataFormatterForSeries:groupIndex:onlyForValidValue:]");
      v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, v113, v114, v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v117, v118, v119, v120, v111, v116, 837, 0, "Invalid label format type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v121, v122, v123, v124);
    }

    objc_opt_class();
    v129 = objc_msgSend_objectValueForProperty_(seriesCopy, v125, v126, v127, v128, 1166);
    v39 = TSUCheckedDynamicCast();

    v44 = objc_msgSend_drawableInfo(self, v130, v131, v132, v133);
    v105 = objc_msgSend_documentRoot(v44, v134, v135, v136, v137);
    v142 = objc_msgSend_chartInfo(self, v138, v139, v140, v141);
    v147 = objc_msgSend_pasteboardCustomFormatList(v142, v143, v144, v145, v146);
    v49 = objc_msgSend_dataFormatterForDocumentRoot_pasteboardCustomFormatList_(v39, v148, v149, v150, v151, v105, v147);

LABEL_24:
    goto LABEL_25;
  }

  v156 = 0;
LABEL_27:

  return v156;
}

- (id)inspectorStringForSeries:(id)series groupIndex:(unint64_t)index value:(id)value
{
  seriesCopy = series;
  valueCopy = value;
  v14 = valueCopy;
  if (!valueCopy)
  {
    v14 = objc_msgSend_valueForAxis_groupIndex_(seriesCopy, v9, v11, v12, v13, self, index);
  }

  v15 = objc_msgSend_p_dataFormatterForSeries_groupIndex_onlyForValidValue_(self, v9, v11, v12, v13, seriesCopy, index, valueCopy == 0);
  v20 = objc_msgSend_locale(self, v16, v17, v18, v19);
  v25 = objc_msgSend_chartFormattedInspectorStringForValue_locale_(v15, v21, v22, v23, v24, v14, v20);

  return v25;
}

- (BOOL)supportsLabelAngleBaselineOptions
{
  v5 = objc_msgSend_axisID(self, a2, v2, v3, v4);
  v10 = objc_msgSend_type(v5, v6, v7, v8, v9) == 6;

  return v10;
}

- (id)formattedStringForAxisValue:(id)value
{
  if (value)
  {
    objc_msgSend_doubleValue(value, a2, v3, v4, v5);
    v11 = objc_msgSend_gridValueAxisToModelValue_(self, v7, v8, v9, v10);
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

- (id)formattedStringForSeries:(id)series groupIndex:(unint64_t)index
{
  seriesCopy = series;
  v11 = objc_msgSend_valueForAxis_groupIndex_(seriesCopy, v7, v8, v9, v10, self, index);
  v16 = objc_msgSend_dataFormatterForSeries_groupIndex_(self, v12, v13, v14, v15, seriesCopy, index);

  v21 = objc_msgSend_locale(self, v17, v18, v19, v20);
  v26 = objc_msgSend_chartFormattedStringForValue_locale_(v16, v22, v23, v24, v25, v11, v21);

  return v26;
}

- (id)valueForFormattedString:(id)string
{
  if (string)
  {
    v7 = MEMORY[0x277CCABB0];
    objc_msgSend_doubleValue(string, a2, v4, v5, v6);
    v12 = objc_msgSend_numberWithDouble_(v7, v8, v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateAxisDateInterceptInAnalysis:(id)analysis
{
  v73 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  v8 = objc_msgSend_axisID(self, v4, v5, v6, v7);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v14 = objc_msgSend_seriesList(WeakRetained, v10, v11, v12, v13);

  obj = v14;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v16, v17, v18, &v67, v72, 16);
  if (v19)
  {
    v24 = v19;
    v25 = *v68;
    v26 = 0.0;
    v27 = 1;
    v28 = 0.0;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v68 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v67 + 1) + 8 * i);
        v31 = objc_msgSend_type(v8, v20, v21, v22, v23);
        v36 = objc_msgSend_axisIDForAxisType_(v30, v32, v33, v34, v35, v31);
        isEqual = objc_msgSend_isEqual_(v36, v37, v38, v39, v40, v8);

        if (isEqual)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v42 = objc_msgSend_multiDataValueEnumeratorForAxisID_(v30, v20, 0.0, v22, v23, v8);
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, v44, v45, v46, &v63, v71, 16);
          if (v47)
          {
            v52 = v47;
            v53 = *v64;
            do
            {
              for (j = 0; j != v52; ++j)
              {
                if (*v64 != v53)
                {
                  objc_enumerationMutation(v42);
                }

                v55 = *(*(&v63 + 1) + 8 * j);
                if (v55)
                {
                  objc_msgSend_doubleValue(v55, v48, v49, v50, v51);
                  v56 = fabs(v49);
                  v57 = v56 == INFINITY;
                  v58 = v56 == INFINITY;
                  if (v56 == INFINITY)
                  {
                    v50 = v26;
                  }

                  else
                  {
                    v50 = v49;
                  }

                  if (v57)
                  {
                    v51 = v28;
                  }

                  else
                  {
                    v51 = v49;
                  }

                  if ((v58 | v27))
                  {
                    v27 &= v58;
                    v26 = v50;
                    v28 = v51;
                  }

                  else
                  {
                    if (v49 > v26)
                    {
                      v26 = v49;
                    }

                    v27 = 0;
                    if (v49 < v28)
                    {
                      v28 = v49;
                    }
                  }
                }
              }

              v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v48, v49, v50, v51, &v63, v71, 16);
            }

            while (v52);
          }
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, v21, v22, v23, &v67, v72, 16);
    }

    while (v24);
  }

  else
  {
    v26 = 0.0;
    v28 = 0.0;
  }

  objc_msgSend_setAxisInterceptPosition_(analysisCopy, v59, v28 + (v26 - v28) * -0.1, -0.1, v60);
}

- (id)formattedStringForSeries:(id)series groupIndex:(unint64_t)index multiDataSetIndex:(unint64_t)setIndex
{
  seriesCopy = series;
  WeakRetained = objc_loadWeakRetained(&self->_model);
  isMultiData = objc_msgSend_isMultiData(WeakRetained, v10, v11, v12, v13);

  if (isMultiData)
  {
    v20 = objc_msgSend_valueForAxis_groupIndex_multiDataSetIndex_(seriesCopy, v15, v16, v17, v18, self, index, setIndex);
    if (v20 && (objc_msgSend_p_dataFormatterForSeries_groupIndex_onlyForValidValue_(self, v19, v21, v22, v23, seriesCopy, index, 0), (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v29 = v24;
      v30 = objc_msgSend_locale(self, v25, v26, v27, v28);
      v35 = objc_msgSend_chartFormattedStringForValue_locale_(v29, v31, v32, v33, v34, v20, v30);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = objc_msgSend_formattedStringForSeries_groupIndex_(self, v15, v16, v17, v18, seriesCopy, index);
  }

  return v35;
}

- (void)setStyle:(id)style index:(unint64_t)index
{
  styleCopy = style;
  isCategory = objc_msgSend_isCategory(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chartInfo(self, v12, v13, v14, v15);
  v21 = v16;
  if (isCategory)
  {
    objc_msgSend_categoryAxisStyleAtIndex_(v16, v17, v18, v19, v20, index);
  }

  else
  {
    objc_msgSend_valueAxisStyleAtIndex_(v16, v17, v18, v19, v20, index);
  }
  v22 = ;

  if (v22 == styleCopy)
  {
    objc_storeStrong(&self->_style, style);
    self->_styleIndex = index;
  }

  else
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCHChartAxis setStyle:index:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 954, 0, "cannot set an axis style the info doesn't manage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }
}

- (void)setNonStyle:(id)style index:(unint64_t)index
{
  styleCopy = style;
  isCategory = objc_msgSend_isCategory(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chartInfo(self, v12, v13, v14, v15);
  v21 = v16;
  if (isCategory)
  {
    objc_msgSend_categoryAxisNonstyleAtIndex_(v16, v17, v18, v19, v20, index);
  }

  else
  {
    objc_msgSend_valueAxisNonstyleAtIndex_(v16, v17, v18, v19, v20, index);
  }
  v22 = ;

  if (v22 == styleCopy)
  {
    objc_storeStrong(&self->_nonStyle, style);
    self->_nonStyleIndex = index;
  }

  else
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCHChartAxis setNonStyle:index:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartAxis.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 967, 0, "cannot set an axis nonstyle the info doesn't manage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }
}

- (unint64_t)axisIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v8 = objc_msgSend_axisList(WeakRetained, v4, v5, v6, v7);
  v13 = objc_msgSend_indexOfObject_(v8, v9, v10, v11, v12, self);

  return v13;
}

- (id)defaultProperties
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v11 = objc_msgSend_g_genericToDefaultPropertyMap(self, v7, v8, v9, v10);
  v16 = objc_msgSend_arrayOfBoxedKeys(v11, v12, v13, v14, v15);
  objc_msgSend_addObjectsFromArray_(v6, v17, v18, v19, v20, v16);

  return v6;
}

- (int)defaultPropertyForGeneric:(int)generic
{
  v7 = objc_msgSend_p_genericToDefaultPropertyMap(self, a2, v3, v4, v5);
  if (objc_msgSend_containsKey_(v7, v8, v9, v10, v11, generic))
  {
    v16 = objc_msgSend_intForKey_(v7, v12, v13, v14, v15, generic);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int)intValueForProperty:(int)property defaultValue:(int)value
{
  v6 = 0;
  if (sub_2762E5130(self, self->_style, self->_nonStyle, *&property, &v6))
  {
    return v6;
  }

  else
  {
    return value;
  }
}

- (float)floatValueForProperty:(int)property defaultValue:(float)value
{
  v7 = 0.0;
  v5 = sub_2762E5658(self, self->_style, self->_nonStyle, *&property, &v7);
  result = v7;
  if (!v5)
  {
    return value;
  }

  return result;
}

- (id)objectValueForProperty:(int)property
{
  v3 = *&property;
  style = self->_style;
  nonStyle = self->_nonStyle;
  v9 = 0;
  v6 = sub_2762E579C(self, style, nonStyle, v3, &v9);
  v7 = v9;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    v7 = 0;
  }

  return v7;
}

- (id)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = objc_msgSend_chartInfo(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (id)drawableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = objc_msgSend_chartInfo(WeakRetained, v3, v4, v5, v6);
  v12 = objc_msgSend_drawableInfo(v7, v8, v9, v10, v11);

  return v12;
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = objc_msgSend_chartInfo(WeakRetained, v3, v4, v5, v6);
  v12 = objc_msgSend_context(v7, v8, v9, v10, v11);

  return v12;
}

- (id)swapTuplesForMutations:(id)mutations forImport:(BOOL)import
{
  importCopy = import;
  mutationsCopy = mutations;
  if (objc_msgSend_isCategory(self, v7, v8, v9, v10))
  {
    v15 = 7;
  }

  else
  {
    v15 = 5;
  }

  if (objc_msgSend_isCategory(self, v11, v12, v13, v14))
  {
    objc_msgSend_convertToStyleSwapTuplesForStyleOwner_styleSwapType_nonStyleSwapType_index_fromMutations_forImport_withOptionalStyleValueConversionBlock_(TSCHPropertyMutationHelper, v16, v17, v18, v19, self, v15, 8, self->_styleIndex, mutationsCopy, importCopy, 0);
  }

  else
  {
    objc_msgSend_convertToStyleSwapTuplesForStyleOwner_styleSwapType_nonStyleSwapType_index_fromMutations_forImport_withOptionalStyleValueConversionBlock_(TSCHPropertyMutationHelper, v16, v17, v18, v19, self, v15, 6, self->_styleIndex, mutationsCopy, importCopy, 0);
  }
  v20 = ;

  return v20;
}

- (void)propertiesWereMutated:(id)mutated
{
  mutatedCopy = mutated;
  if (objc_msgSend_count(mutatedCopy, v4, v5, v6, v7))
  {
    v8 = objc_alloc(MEMORY[0x277D80AC0]);
    v13 = objc_msgSend_specificPropertyForGeneric_(self, v9, v10, v11, v12, 1045);
    v18 = objc_msgSend_specificPropertyForGeneric_(self, v14, v15, v16, v17, 1046);
    v23 = objc_msgSend_specificPropertyForGeneric_(self, v19, v20, v21, v22, 1044);
    v28 = objc_msgSend_specificPropertyForGeneric_(self, v24, v25, v26, v27, 1054);
    v33 = objc_msgSend_specificPropertyForGeneric_(self, v29, v30, v31, v32, 1057);
    v38 = objc_msgSend_specificPropertyForGeneric_(self, v34, v35, v36, v37, 1064);
    v43 = objc_msgSend_specificPropertyForGeneric_(self, v39, v40, v41, v42, 1065);
    v48 = objc_msgSend_initWithProperties_(v8, v44, v45, v46, v47, v13, v18, v23, v28, v33, v38, v43, 0);
    if (objc_msgSend_intersectsProperties_(mutatedCopy, v49, v50, v51, v52, v48))
    {
      objc_msgSend_invalidateTransientState(self, v53, v54, v55, v56);
    }
  }
}

- (TSCHStyleActAlike)style
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (id)nonstyle
{
  objc_opt_class();

  return TSUDynamicCast();
}

- (id)transformedTuplesWithTuple:(id)tuple
{
  v70[1] = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addObject_(v5, v6, v7, v8, v9, tupleCopy);
  v14 = objc_msgSend_axisID(self, v10, v11, v12, v13);
  if (objc_msgSend_type(v14, v15, v16, v17, v18) == 2)
  {
    v23 = objc_msgSend_axisID(self, v19, v20, v21, v22);
    v28 = objc_msgSend_ordinal(v23, v24, v25, v26, v27) == 1;
  }

  else
  {
    v28 = 0;
  }

  v33 = objc_msgSend_axisID(self, v29, v30, v31, v32);
  if (objc_msgSend_type(v33, v34, v35, v36, v37) == 1 || v28)
  {
    v42 = objc_msgSend_mutations(tupleCopy, v38, v39, v40, v41);
    v47 = objc_msgSend_objectForKey_(v42, v43, v44, v45, v46, &unk_28856BD38);

    if (!v47)
    {
      goto LABEL_9;
    }

    v69 = &unk_28856BD50;
    v70[0] = MEMORY[0x277CBEC38];
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v48, v49, v50, v51, v70, &v69, 1);
    v52 = [TSCHPropertyMutationTuple alloc];
    v57 = objc_msgSend_chartInfo(self, v53, v54, v55, v56);
    v62 = objc_msgSend_initWithStyleOwner_mutations_(v52, v58, v59, v60, v61, v57, v33);

    objc_msgSend_addObject_(v5, v63, v64, v65, v66, v62);
  }

LABEL_9:
  v67 = objc_msgSend_copy(v5, v48, v49, v50, v51);

  return v67;
}

- (TSCHChartModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (TSCHChartAxis)nonTransientCounterpart
{
  WeakRetained = objc_loadWeakRetained(&self->_nonTransientCounterpart);

  return WeakRetained;
}

- (id)g_genericToDefaultPropertyMap
{
  if (qword_280A47290 != -1)
  {
    sub_2764A7780();
  }

  v3 = qword_280A47288;

  return v3;
}

- (id)g_operationPropertyNameForGenericProperty:(int)property
{
  v6 = *&property;
  v8 = objc_msgSend_specificPropertyForGeneric_(self, a2, v3, v4, v5);
  if (v8 || (v8 = objc_msgSend_defaultPropertyForGeneric_(self, v9, v10, v11, v12, v6), v8))
  {
    v13 = v8;
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartAxis(__PropertyMaps_GEN) g_operationPropertyNameForGenericProperty:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMaps.GEN.m");
    v33 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v27, v32, 190, 0, "No specific property found for generic %@", v33);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    v13 = 0;
  }

  v14 = objc_msgSend_g_specificPropertyToOperationNameBimap(TSCHBaseStyle, v9, v10, v11, v12);
  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v16, v17, v18, v13);
  v24 = objc_msgSend_objectForKeyedSubscript_(v14, v20, v21, v22, v23, v19);

  return v24;
}

@end