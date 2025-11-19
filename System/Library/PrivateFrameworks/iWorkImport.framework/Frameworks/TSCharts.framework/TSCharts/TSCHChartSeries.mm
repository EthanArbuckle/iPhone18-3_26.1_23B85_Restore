@interface TSCHChartSeries
+ (id)computableProperties;
+ (id)computedFillOrStroke:(id)a3 forSeriesIndex:(unint64_t)a4 numberOfThemeSeries:(unint64_t)a5;
- (BOOL)floatValueForLabelExplosion:(float *)a3;
- (BOOL)hasCustomFormatForGridValueType:(int)a3;
- (BOOL)hasFloatValueForProperty:(int)a3 value:(float *)a4;
- (BOOL)hasIntValueForProperty:(int)a3 value:(int *)a4;
- (BOOL)hasObjectValueForProperty:(int)a3 value:(id *)a4;
- (BOOL)isDownsampled;
- (BOOL)isMultiData;
- (BOOL)p_seriesIndexWithinThemeStyleCount;
- (BOOL)renderSeriesForClass:(Class)a3;
- (BOOL)showTrendLineLegendText;
- (BOOL)supportsNegativeStyle;
- (NSString)trendLineLegendText;
- (TSCHChartModel)chartModel;
- (TSCHChartModel)model;
- (TSCHChartSeries)initWithChartModel:(id)a3 index:(unint64_t)a4;
- (TSCHErrorBarData)errorBarData;
- (TSCHStyleActAlike)style;
- (TSCHTrendLineData)trendLineData;
- (double)effectiveLabelExplosion;
- (float)floatValueForProperty:(int)a3 defaultValue:(float)a4;
- (id)axisForAxisType:(int)a3;
- (id)axisIDForAxisType:(int)a3;
- (id)axisTypesForValueLabelString;
- (id)chartInfo;
- (id)context;
- (id)customFormatForGridValueType:(int)a3;
- (id)defaultProperties;
- (id)drawableInfo;
- (id)fillForSeries;
- (id)formattedValueLabelStringForGroupIndex:(unint64_t)a3;
- (id)g_genericToDefaultPropertyMap;
- (id)g_operationPropertyNameForGenericProperty:(int)a3;
- (id)multiDataValueEnumeratorForAxisID:(id)a3;
- (id)nonstyle;
- (id)objectValueForProperty:(int)a3;
- (id)p_axisStorageForType:(int)a3 create:(BOOL)a4;
- (id)p_downsampleDataFromCurrentModel;
- (id)p_representativeThemeSeries;
- (id)p_seriesNonStyleOrDefaultNonStyle;
- (id)seriesNameStringForGroupIndex:(unint64_t)a3;
- (id)swapTuplesForMutations:(id)a3 forImport:(BOOL)a4;
- (id)transformedTuplesWithTuple:(id)a3;
- (id)valueForAxis:(id)a3 groupIndex:(unint64_t)a4;
- (id)valueForAxis:(id)a3 groupIndex:(unint64_t)a4 multiDataSetIndex:(unint64_t)a5;
- (id)valueForAxis:(id)a3 valueIndex:(unint64_t)a4;
- (id)valueForAxis:(id)a3 valueIndex:(unint64_t)a4 multiDataSetIndex:(unint64_t)a5;
- (id)valueForAxisID:(id)a3 groupIndex:(unint64_t)a4;
- (id)valueForAxisID:(id)a3 groupIndex:(unint64_t)a4 multiDataSetIndex:(unint64_t)a5;
- (id)valueForAxisID:(id)a3 valueIndex:(unint64_t)a4;
- (id)valueForAxisID:(id)a3 valueIndex:(unint64_t)a4 multiDataSetIndex:(unint64_t)a5;
- (id)valueForProperty:(int)a3;
- (id)valueLabelStringForGroupIndex:(unint64_t)a3;
- (int)adjustedNumberFormatType;
- (int)defaultPropertyForGeneric:(int)a3;
- (int)gridValueType;
- (int)intValueForProperty:(int)a3 defaultValue:(int)a4;
- (int)seriesElementType;
- (int)specificPropertyForGeneric:(int)a3;
- (unint64_t)groupIndexOfValueIndex:(unint64_t)a3;
- (unint64_t)multiDataSetIndex;
- (unint64_t)multiDataSetIndexForAxis:(id)a3;
- (unint64_t)multiDataSetIndexForAxisID:(id)a3;
- (unint64_t)numberOfGroups;
- (unint64_t)numberOfValues;
- (unint64_t)valueIndexAtGroupIndex:(unint64_t)a3;
- (unsigned)valueLabelPosition;
- (void)invalidateCacheDataForSynchronization;
- (void)modelSyncSetStyle:(id)a3;
- (void)p_generateComputedProperty:(int)a3 objectValue:(id *)a4 intValue:(int *)a5 floatValue:(float *)a6;
- (void)resetSeriesStorage;
- (void)setAxisID:(id)a3 forAxisType:(int)a4;
- (void)setGridAdapter:(id)a3 forAxisType:(int)a4;
- (void)setGridAdapterForName:(id)a3;
- (void)setSeriesElementType:(int)a3;
- (void)setSeriesStorage:(id)a3;
- (void)setValue:(id)a3 forAxisID:(id)a4 index:(unint64_t)a5;
@end

@implementation TSCHChartSeries

- (TSCHChartSeries)initWithChartModel:(id)a3 index:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartSeries initWithChartModel:index:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 111, 0, "invalid nil value for '%{public}s'", "chartModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v41.receiver = self;
  v41.super_class = TSCHChartSeries;
  v26 = [(TSCHChartSeries *)&v41 init];
  v27 = v26;
  if (v26)
  {
    v26->_seriesIndex = a4;
    v28 = objc_alloc_init(MEMORY[0x277D81210]);
    axisTable = v27->_axisTable;
    v27->_axisTable = v28;

    objc_storeWeak(&v27->_model, v7);
    objc_initWeak(&location, v27);
    v30 = objc_alloc(MEMORY[0x277D811C8]);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_27623A6B4;
    v38[3] = &unk_27A6B6E28;
    objc_copyWeak(&v39, &location);
    v35 = objc_msgSend_initForReentrant_withGenerator_(v30, v31, v32, v33, v34, 0, v38);
    downsampleDataCache = v27->_downsampleDataCache;
    v27->_downsampleDataCache = v35;

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v27;
}

- (id)drawableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = objc_msgSend_chartInfo(WeakRetained, v3, v4, v5, v6);
  v12 = objc_msgSend_drawableInfo(v7, v8, v9, v10, v11);

  return v12;
}

- (int)seriesElementType
{
  seriesType = self->_seriesType;
  if (seriesType)
  {
    return objc_msgSend_seriesElementType(seriesType, a2, v2, v3, v4);
  }

  else
  {
    return -1;
  }
}

- (void)setSeriesElementType:(int)a3
{
  v6 = *&a3;
  v22 = objc_msgSend_chartInfo(self, a2, v3, v4, v5);
  v12 = objc_msgSend_chartType(v22, v8, v9, v10, v11);
  v17 = objc_msgSend_seriesTypeForSeriesElementType_defaultSeriesIndex_(v12, v13, v14, v15, v16, v6, 0);
  objc_msgSend_setSeriesType_(self, v18, v19, v20, v21, v17);
}

- (id)p_axisStorageForType:(int)a3 create:(BOOL)a4
{
  v7 = a4;
  v9 = a3;
  v10 = objc_msgSend_objectForKey_(self->_axisTable, a2, v4, v5, v6, a3);
  v11 = v10;
  if (v7 && !v10)
  {
    v11 = objc_alloc_init(TSCHChartSeriesAxisStorage);
    objc_msgSend_setObject_forKey_(self->_axisTable, v12, v13, v14, v15, v11, v9);
  }

  return v11;
}

- (TSCHTrendLineData)trendLineData
{
  v7 = objc_msgSend_intValueForProperty_defaultValue_(self, a2, v2, v3, v4, 1203, 0);
  trendLineData = self->_trendLineData;
  if (v7)
  {
    if (!trendLineData)
    {
      v12 = [TSCHTrendLineData alloc];
      v17 = objc_msgSend_initWithSeries_(v12, v13, v14, v15, v16, self);
      v18 = self->_trendLineData;
      self->_trendLineData = v17;

      trendLineData = self->_trendLineData;
    }

    objc_msgSend_updateIfNeeded(trendLineData, v6, v8, v9, v10);
  }

  else
  {
    self->_trendLineData = 0;
  }

  v19 = self->_trendLineData;

  return v19;
}

- (BOOL)showTrendLineLegendText
{
  v5 = objc_msgSend_trendLineData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_showTrendLineLegendText(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)supportsNegativeStyle
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_axisTypesForValueLabelString(self, a2, v2, v3, v4);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v35 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v32, v36, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v33;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v6);
        }

        v19 = objc_msgSend_unsignedIntegerValue(*(*(&v32 + 1) + 8 * i), v12, v13, v14, v15, v32);
        objc_opt_class();
        v24 = objc_msgSend_axisForAxisType_(self, v20, v21, v22, v23, v19);
        v25 = TSUDynamicCast();

        if (v25 && (objc_msgSend_supportsNegativeStyle(v25, v26, v27, v28, v29) & 1) != 0)
        {

          v30 = 1;
          goto LABEL_12;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, v13, v14, v15, &v32, v36, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0;
LABEL_12:

  return v30;
}

- (NSString)trendLineLegendText
{
  v5 = objc_msgSend_trendLineData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_trendLineLegendText(v5, v6, v7, v8, v9);

  return v10;
}

- (TSCHErrorBarData)errorBarData
{
  hasErrorBarsForSeries = objc_msgSend_hasErrorBarsForSeries_(TSCHErrorBarData, a2, v2, v3, v4, self);
  errorBarData = self->_errorBarData;
  if (hasErrorBarsForSeries)
  {
    if (!errorBarData)
    {
      v12 = [TSCHErrorBarData alloc];
      v17 = objc_msgSend_initWithSeries_(v12, v13, v14, v15, v16, self);
      v18 = self->_errorBarData;
      self->_errorBarData = v17;

      errorBarData = self->_errorBarData;
    }

    objc_msgSend_updateIfNeeded(errorBarData, v6, v8, v9, v10);
  }

  else
  {
    self->_errorBarData = 0;
  }

  v19 = self->_errorBarData;

  return v19;
}

- (BOOL)isMultiData
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  isMultiData = objc_msgSend_isMultiData(WeakRetained, v3, v4, v5, v6);

  return isMultiData;
}

- (unint64_t)multiDataSetIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = objc_msgSend_multiDataSetIndex(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (unint64_t)numberOfValues
{
  v6 = objc_msgSend_allValues(self->_axisTable, a2, v2, v3, v4);
  v11 = objc_msgSend_objectEnumerator(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_nextObject(v11, v12, v13, v14, v15);

  if (objc_msgSend_isMultiData(self, v17, v18, v19, v20))
  {
    v25 = 1;
  }

  else
  {
    v25 = objc_msgSend_numberOfValues(v16, v21, v22, v23, v24);
  }

  return v25;
}

- (id)axisIDForAxisType:(int)a3
{
  v6 = objc_msgSend_p_axisStorageForType_create_(self, a2, v3, v4, v5, *&a3, 0);
  v11 = objc_msgSend_axisID(v6, v7, v8, v9, v10);

  return v11;
}

- (id)axisForAxisType:(int)a3
{
  v7 = objc_msgSend_axisIDForAxisType_(self, a2, v3, v4, v5, *&a3);
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v13 = objc_msgSend_axisForID_(WeakRetained, v9, v10, v11, v12, v7);

  return v13;
}

- (void)setAxisID:(id)a3 forAxisType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v15 = objc_msgSend_p_axisStorageForType_create_(self, v7, v8, v9, v10, v4, 1);
  objc_msgSend_setAxisID_(v15, v11, v12, v13, v14, v6);
}

- (void)setGridAdapter:(id)a3 forAxisType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v15 = objc_msgSend_p_axisStorageForType_create_(self, v7, v8, v9, v10, v4, 1);
  objc_msgSend_setAdapter_(v15, v11, v12, v13, v14, v6);
}

- (void)setGridAdapterForName:(id)a3
{
  v5 = a3;
  nameAdapter = self->_nameAdapter;
  p_nameAdapter = &self->_nameAdapter;
  if (nameAdapter != v5)
  {
    v8 = v5;
    objc_storeStrong(p_nameAdapter, a3);
    v5 = v8;
  }
}

- (void)invalidateCacheDataForSynchronization
{
  objc_msgSend_invalidateData(self->_trendLineData, a2, v2, v3, v4);
  objc_msgSend_invalidateData(self->_errorBarData, v6, v7, v8, v9);
  downsampleDataCache = self->_downsampleDataCache;

  objc_msgSend_invalidate(downsampleDataCache, v10, v11, v12, v13);
}

- (unint64_t)multiDataSetIndexForAxis:(id)a3
{
  if (objc_msgSend_isCategory(a3, a2, v3, v4, v5))
  {
    return 0;
  }

  return objc_msgSend_multiDataSetIndex(self, v7, v8, v9, v10);
}

- (unint64_t)multiDataSetIndexForAxisID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v10 = objc_msgSend_axisForID_(WeakRetained, v6, v7, v8, v9, v4);

  v15 = objc_msgSend_multiDataSetIndexForAxis_(self, v11, v12, v13, v14, v10);
  return v15;
}

- (id)valueForAxisID:(id)a3 valueIndex:(unint64_t)a4 multiDataSetIndex:(unint64_t)a5
{
  v11 = objc_msgSend_type(a3, a2, v5, v6, v7);
  v16 = objc_msgSend_p_axisStorageForType_create_(self, v12, v13, v14, v15, v11, 1);
  v21 = objc_msgSend_valueAtIndex_multiDataSetIndex_(v16, v17, v18, v19, v20, a4, a5);

  return v21;
}

- (id)valueForAxisID:(id)a3 valueIndex:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_multiDataSetIndexForAxisID_(self, v7, v8, v9, v10, v6);
  v16 = objc_msgSend_valueForAxisID_valueIndex_multiDataSetIndex_(self, v12, v13, v14, v15, v6, a4, v11);

  return v16;
}

- (id)valueForAxis:(id)a3 valueIndex:(unint64_t)a4 multiDataSetIndex:(unint64_t)a5
{
  v11 = objc_msgSend_axisID(a3, a2, v5, v6, v7);
  v16 = objc_msgSend_type(v11, v12, v13, v14, v15);
  v21 = objc_msgSend_p_axisStorageForType_create_(self, v17, v18, v19, v20, v16, 1);

  v26 = objc_msgSend_valueAtIndex_multiDataSetIndex_(v21, v22, v23, v24, v25, a4, a5);

  return v26;
}

- (id)valueForAxis:(id)a3 valueIndex:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_multiDataSetIndexForAxis_(self, v7, v8, v9, v10, v6);
  v16 = objc_msgSend_valueForAxis_valueIndex_multiDataSetIndex_(self, v12, v13, v14, v15, v6, a4, v11);

  return v16;
}

- (id)valueForAxisID:(id)a3 groupIndex:(unint64_t)a4 multiDataSetIndex:(unint64_t)a5
{
  v8 = a3;
  v13 = objc_msgSend_valueIndexAtGroupIndex_(self, v9, v10, v11, v12, a4);
  v18 = objc_msgSend_valueForAxisID_valueIndex_multiDataSetIndex_(self, v14, v15, v16, v17, v8, v13, a5);

  return v18;
}

- (id)valueForAxisID:(id)a3 groupIndex:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_valueIndexAtGroupIndex_(self, v7, v8, v9, v10, a4);
  v16 = objc_msgSend_valueForAxisID_valueIndex_(self, v12, v13, v14, v15, v6, v11);

  return v16;
}

- (id)valueForAxis:(id)a3 groupIndex:(unint64_t)a4 multiDataSetIndex:(unint64_t)a5
{
  v8 = a3;
  v13 = objc_msgSend_valueIndexAtGroupIndex_(self, v9, v10, v11, v12, a4);
  v18 = objc_msgSend_valueForAxis_valueIndex_multiDataSetIndex_(self, v14, v15, v16, v17, v8, v13, a5);

  return v18;
}

- (id)valueForAxis:(id)a3 groupIndex:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_valueIndexAtGroupIndex_(self, v7, v8, v9, v10, a4);
  v16 = objc_msgSend_valueForAxis_valueIndex_(self, v12, v13, v14, v15, v6, v11);

  return v16;
}

- (void)setValue:(id)a3 forAxisID:(id)a4 index:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v14 = objc_msgSend_type(v8, v10, v11, v12, v13);
  v28 = objc_msgSend_p_axisStorageForType_create_(self, v15, v16, v17, v18, v14, 1);
  v23 = objc_msgSend_multiDataSetIndexForAxisID_(self, v19, v20, v21, v22, v8);

  objc_msgSend_setValue_atIndex_multiDataSetIndex_(v28, v24, v25, v26, v27, v9, a5, v23);
}

- (id)multiDataValueEnumeratorForAxisID:(id)a3
{
  v7 = objc_msgSend_type(a3, a2, v3, v4, v5);
  v12 = objc_msgSend_p_axisStorageForType_create_(self, v8, v9, v10, v11, v7, 1);
  v17 = objc_msgSend_adapter(v12, v13, v14, v15, v16);

  return v17;
}

- (BOOL)renderSeriesForClass:(Class)a3
{
  v7 = objc_msgSend_seriesRendererClasses(self->_seriesType, a2, v3, v4, v5);
  v12 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v8, v9, v10, v11, a3);
  v17 = objc_msgSend_containsObject_(v7, v13, v14, v15, v16, v12);

  return v17;
}

- (void)setSeriesStorage:(id)a3
{
  v5 = a3;
  seriesStorage = self->_seriesStorage;
  p_seriesStorage = &self->_seriesStorage;
  if (seriesStorage != v5)
  {
    v8 = v5;
    objc_storeStrong(p_seriesStorage, a3);
    v5 = v8;
  }
}

- (void)resetSeriesStorage
{
  v10 = objc_msgSend_resetSeriesStorage_forSeries_(self->_seriesType, a2, v2, v3, v4, self->_seriesStorage, self);
  objc_msgSend_setSeriesStorage_(self, v6, v7, v8, v9, v10);
}

- (id)customFormatForGridValueType:(int)a3
{
  if (a3 == 3)
  {
    v6 = 0;
  }

  else
  {
    if (a3 == 2)
    {
      objc_msgSend_valueForProperty_(self, a2, v3, v4, v5, 1136);
    }

    else
    {
      objc_msgSend_valueForProperty_(self, a2, v3, v4, v5, 1166);
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

- (int)gridValueType
{
  v6 = objc_msgSend_axisTypesForValueLabelString(self, a2, v2, v3, v4);
  if (objc_msgSend_count(v6, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_objectAtIndexedSubscript_(v6, v11, v12, v13, v14, 0);
    v20 = objc_msgSend_unsignedIntegerValue(v15, v16, v17, v18, v19);

    v25 = objc_msgSend_axisForAxisType_(self, v21, v22, v23, v24, v20);
    v30 = v25;
    if (v25)
    {
      v31 = objc_msgSend_gridValueType(v25, v26, v27, v28, v29);
    }

    else
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "[TSCHChartSeries gridValueType]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 359, 0, "invalid nil value for '%{public}s'", "axis");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
      v31 = 1;
    }
  }

  else
  {
    v31 = 1;
  }

  return v31;
}

- (int)adjustedNumberFormatType
{
  v6 = objc_msgSend_gridValueType(self, a2, v2, v3, v4);
  v11 = objc_msgSend_intValueForProperty_defaultValue_(self, v7, v8, v9, v10, 1167, 2);
  hasCustomFormatForGridValueType = objc_msgSend_hasCustomFormatForGridValueType_(self, v12, v13, v14, v15, v6);
  v21 = objc_msgSend_model(self, v17, v18, v19, v20);
  LODWORD(v6) = objc_msgSend_adjustNumberFormatType_forChartModel_gridValueType_hasCustomFormat_(TSCHChartInfo, v22, v23, v24, v25, v11, v21, v6, hasCustomFormatForGridValueType);

  return v6;
}

- (BOOL)hasCustomFormatForGridValueType:(int)a3
{
  v6 = objc_msgSend_customFormatForGridValueType_(self, a2, v3, v4, v5, *&a3);
  v7 = v6 != 0;

  return v7;
}

- (id)axisTypesForValueLabelString
{
  v6 = objc_msgSend_seriesType(self, a2, v2, v3, v4);
  v11 = objc_msgSend_supportsValueLabelsAxisOption(v6, v7, v8, v9, v10);

  if (!v11)
  {
    v27 = objc_msgSend_seriesType(self, v12, v13, v14, v15);
    v26 = objc_msgSend_axisTypesForValueLabels(v27, v28, v29, v30, v31);

    goto LABEL_10;
  }

  v16 = objc_msgSend_intValueForProperty_defaultValue_(self, v12, v13, v14, v15, 1210, 4);
  v21 = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18, v19, v20);
  v26 = v21;
  if ((v16 & 1) == 0)
  {
    if ((v16 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    objc_msgSend_addObject_(v26, v22, v23, v24, v25, &unk_28856BD80);
    if ((v16 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  objc_msgSend_addObject_(v21, v22, v23, v24, v25, &unk_28856BD68);
  if ((v16 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v16 & 4) != 0)
  {
LABEL_9:
    objc_msgSend_addObject_(v26, v22, v23, v24, v25, &unk_28856BD98);
  }

LABEL_10:

  return v26;
}

- (id)formattedValueLabelStringForGroupIndex:(unint64_t)a3
{
  v8 = objc_msgSend_seriesNameStringForGroupIndex_(self, a2, v3, v4, v5);
  v13 = objc_msgSend_valueLabelStringForGroupIndex_(self, v9, v10, v11, v12, a3);
  if (objc_msgSend_length(v13, v14, v15, v16, v17) || objc_msgSend_length(v8, v18, v19, v20, v21))
  {
    if (objc_msgSend_length(v13, v18, v19, v20, v21) && objc_msgSend_length(v8, v22, v23, v24, v25))
    {
      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, v23, v24, v25, @"%@\n%@", v8, v13);
      goto LABEL_10;
    }

    if (objc_msgSend_length(v13, v22, v23, v24, v25))
    {
      v26 = v13;
      goto LABEL_10;
    }

    if (objc_msgSend_length(v8, v27, v28, v29, v30))
    {
      v26 = v8;
LABEL_10:
      v31 = v26;
      if (v26)
      {
        goto LABEL_12;
      }
    }
  }

  v31 = &stru_288528678;
LABEL_12:

  return v31;
}

- (id)seriesNameStringForGroupIndex:(unint64_t)a3
{
  v7 = objc_msgSend_seriesType(self, a2, v3, v4, v5, a3);
  v12 = objc_msgSend_supportsValueLabelsSeriesName(v7, v8, v9, v10, v11);

  if (v12 && objc_msgSend_intValueForProperty_defaultValue_(self, v13, v14, v15, v16, 1178, 0) && (objc_msgSend_name(self, v17, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_length(v21, v22, v23, v24, v25), v21, v26))
  {
    v31 = objc_msgSend_name(self, v27, v28, v29, v30);
  }

  else
  {
    v31 = &stru_288528678;
  }

  return v31;
}

- (id)valueLabelStringForGroupIndex:(unint64_t)a3
{
  v129 = *MEMORY[0x277D85DE8];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v8 = objc_msgSend_valueAxisList(WeakRetained, v5, 0.0, v6, v7);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, v11, v12, &v124, v128, 16);
  if (v13)
  {
    v18 = v13;
    v19 = *v125;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v125 != v19)
        {
          objc_enumerationMutation(v8);
        }

        v21 = *(*(&v124 + 1) + 8 * i);
        if ((objc_msgSend_supportsFormattedStringForInvalidValue(v21, v14, v15, v16, v17) & 1) == 0)
        {
          objc_msgSend_unitSpaceValueForSeries_groupIndex_(v21, v14, v15, v16, v17, self, a3);
          if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            v39 = &stru_288528678;
            goto LABEL_29;
          }
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, v15, v16, v17, &v124, v128, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  if (objc_msgSend_intValueForProperty_defaultValue_(self, v22, v23, v24, v25, 1181, 0))
  {
    v8 = objc_msgSend_axisTypesForValueLabelString(self, v26, v27, v28, v29);
    v123 = objc_msgSend_count(v8, v30, v31, v32, v33);
    if (v123)
    {
      v121 = a3;
      v38 = 0;
      v39 = &stru_288528678;
      do
      {
        v40 = objc_msgSend_objectAtIndexedSubscript_(v8, v34, v35, v36, v37, v38);
        v45 = objc_msgSend_intValue(v40, v41, v42, v43, v44);
        v50 = objc_msgSend_axisIDForAxisType_(self, v46, v47, v48, v49, v45);
        v56 = objc_msgSend_axisForID_(WeakRetained, v51, v52, v53, v54, v50);
        if (!v56)
        {
          v60 = MEMORY[0x277D81150];
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v57, v58, v59, "[TSCHChartSeries valueLabelStringForGroupIndex:]");
          v62 = v61 = v39;
          v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v68, v69, v70, v71, v62, v67, 461, 0, "invalid nil value for '%{public}s'", "valueAxis");

          v39 = v61;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
        }

        v76 = objc_msgSend_valueForAxis_groupIndex_(self, v55, v57, v58, v59, v56, v121);
        v81 = v76;
        if (v123 < 2)
        {
          if (v76)
          {
            v96 = objc_msgSend_formattedStringForSeries_groupIndex_(v56, v77, v78, v79, v80, self, v121);
            v101 = objc_msgSend_length(v96, v106, v107, v108, v109);
          }

          else
          {
            v96 = 0;
            v101 = objc_msgSend_length(0, v77, v78, v79, v80);
          }
        }

        else
        {
          objc_msgSend_doubleValue(v76, v77, v78, v79, v80);
          objc_msgSend_doubleModelToAxisValue_forSeries_(v56, v82, v83, v84, v85, self);
          objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v86, v87, v88, v89);
          v91 = v90 = v39;
          v96 = objc_msgSend_formattedStringForAxisValue_(v56, v92, v93, v94, v95, v91);

          v39 = v90;
          v101 = objc_msgSend_length(v96, v97, v98, v99, v100);
        }

        if (v101)
        {
          if (objc_msgSend_length(v39, v102, v103, v104, v105))
          {
            v114 = objc_msgSend_stringByAppendingString_(v39, v110, v111, v112, v113, @", ");

            v119 = objc_msgSend_stringByAppendingString_(v114, v115, v116, v117, v118, v96);
          }

          else
          {
            v119 = v96;
            v114 = v39;
          }

          v39 = v119;
        }

        ++v38;
      }

      while (v123 != v38);
    }

    else
    {
      v39 = &stru_288528678;
    }

LABEL_29:
  }

  else
  {
    v39 = &stru_288528678;
  }

  return v39;
}

- (unsigned)valueLabelPosition
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartInfo(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_seriesType(self, v12, v13, v14, v15);
  v21 = objc_msgSend_intValueForProperty_defaultValue_(self, v17, v18, v19, v20, 1208, 0);
  v26 = objc_msgSend_chartInfo(v6, v22, v23, v24, v25);
  v31 = objc_msgSend_chartType(v26, v27, v28, v29, v30);
  v36 = objc_msgSend_supportsLabelExplosion(v31, v32, v33, v34, v35);

  if (v36)
  {
    objc_msgSend_floatValueForProperty_defaultValue_(self, v37, 0.0, v39, v40, 1163);
    v42 = *&v41;
    v46 = objc_msgSend_supportsCalloutLines(v16, v43, v41, v44, v45);
    v51 = objc_msgSend_intValueForProperty_defaultValue_(self, v47, v48, v49, v50, 1138, 2);
    v56 = objc_msgSend_intValueForProperty_defaultValue_(v11, v52, v53, v54, v55, 1081, 0);
    v57 = v46 ^ 1;
    if (!v51)
    {
      v57 = 1;
    }

    if (v56 != 1)
    {
      v57 = 1;
    }

    if (v57)
    {
      v58 = 1;
    }

    else
    {
      v58 = 2;
    }

    if (v42 < 100.0)
    {
      LODWORD(v21) = v58;
    }

    else
    {
      LODWORD(v21) = 2;
    }
  }

  else
  {
    v59 = objc_msgSend_legalChartLabelPositions(v16, v37, v38, v39, v40);
    v64 = objc_msgSend_filterChartLabelPosition_(v16, v60, v61, v62, v63, v21);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v65 = v59;
    v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, v67, v68, v69, &v84, v88, 16);
    if (v70)
    {
      v75 = v70;
      v76 = *v85;
      while (2)
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v85 != v76)
          {
            objc_enumerationMutation(v65);
          }

          v78 = objc_msgSend_intValue(*(*(&v84 + 1) + 8 * i), v71, v72, v73, v74, v84);
          if (v64 == objc_msgSend_filterChartLabelPosition_(v16, v79, v80, v81, v82, v78))
          {
            LODWORD(v21) = v78;
            goto LABEL_22;
          }
        }

        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v71, v72, v73, v74, &v84, v88, 16);
        if (v75)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  return v21;
}

- (id)fillForSeries
{
  if (objc_msgSend_supportsUseSeriesStrokeColorForFill(self->_seriesType, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_intValueForProperty_defaultValue_(self, v6, v7, v8, v9, 1161, 0);
    v15 = objc_msgSend_objectValueForProperty_(self, v11, v12, v13, v14, 1184);
    v20 = v15;
    if (v15 && v10)
    {
      v21 = objc_msgSend_color(v15, v16, v17, v18, v19);
      LODWORD(v22) = 1041865114;
      objc_msgSend_floatValueForProperty_defaultValue_(self, v23, v22, v24, v25, 1162);
      v27 = *&v26;
      objc_msgSend_alphaComponent(v21, v28, v26, v29, v30);
      *&v31 = v31 * v27;
      v32 = MEMORY[0x277D801F8];
      v35 = objc_msgSend_colorWithAlphaComponent_(v21, v33, *&v31, v27, v34);
      v40 = objc_msgSend_colorWithColor_(v32, v36, v37, v38, v39, v35);

      if (v40)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if (objc_msgSend_supportsSeriesFill(self->_seriesType, v6, v7, v8, v9))
  {
    objc_msgSend_objectValueForProperty_(self, v41, v42, v43, v44, 1160);
    v40 = LABEL_11:;
    goto LABEL_13;
  }

  if (objc_msgSend_supportsFillSetFill(self->_seriesType, v41, v42, v43, v44))
  {
    v49 = objc_msgSend_fillSetFillProperty(self->_seriesType, v45, v46, v47, v48);
    objc_msgSend_objectValueForProperty_(self, v50, v51, v52, v53, v49);
    goto LABEL_11;
  }

  v40 = 0;
LABEL_13:

  return v40;
}

+ (id)computableProperties
{
  if (qword_280A46BA8 != -1)
  {
    sub_2764A6FE0();
  }

  v3 = qword_280A46BA0;

  return v3;
}

- (void)modelSyncSetStyle:(id)a3
{
  objc_storeStrong(&self->_style, a3);
  v5 = a3;
  v15 = objc_msgSend_chartInfo(self, v6, v7, v8, v9);
  objc_opt_class();
  v10 = TSUDynamicCast();

  self->_styleIsPrivate = objc_msgSend_seriesStyleIsPrivate_(v15, v11, v12, v13, v14, v10);
}

- (BOOL)p_seriesIndexWithinThemeStyleCount
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_chartInfo(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_seriesIndex(self, v12, v13, v14, v15);
    v21 = v16 < objc_msgSend_numberOfThemeSeriesStyles(v11, v17, v18, v19, v20);
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

- (id)p_representativeThemeSeries
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_seriesIndex(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chartInfo(v6, v12, v13, v14, v15);

  if (v16 && (objc_msgSend_model(self, v17, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_chartInfo(v21, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend_numberOfThemeSeriesStyles(v26, v27, v28, v29, v30), v26, v21, v31 - 1 < v11) && !objc_msgSend_isFakeSeriesForHiddenDataExport(self, v32, v33, v34, v35))
  {
    v42 = v11 % v31;
    v43 = objc_msgSend_seriesList(v6, v36, v37, v38, v39);
    v48 = objc_msgSend_count(v43, v44, v45, v46, v47);

    if (v42 >= v48)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "[TSCHChartSeries p_representativeThemeSeries]");
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v60, v61, v62, v63, v54, v59, 613, 0, "Representative theme series beyond count of series list.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67);
    }

    v68 = objc_msgSend_seriesList(v6, v49, v50, v51, v52);
    if (v42 >= objc_msgSend_count(v68, v69, v70, v71, v72))
    {
      v40 = self;
    }

    else
    {
      v77 = objc_msgSend_seriesList(v6, v73, v74, v75, v76);
      v40 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, v79, v80, v81, v42);
    }
  }

  else
  {
    v40 = self;
  }

  return v40;
}

- (int)specificPropertyForGeneric:(int)a3
{
  v8 = objc_msgSend_genericToSpecificPropertyMap(self->_seriesType, a2, v3, v4, v5);
  if (!v8)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHChartSeries specificPropertyForGeneric:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 622, 0, "invalid nil value for '%{public}s'", "map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (objc_msgSend_containsKey_(v8, v7, v9, v10, v11, a3))
  {
    v31 = objc_msgSend_intForKey_(v8, v27, v28, v29, v30, a3);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (int)defaultPropertyForGeneric:(int)a3
{
  v7 = objc_msgSend_p_genericToDefaultPropertyMap(self, a2, v3, v4, v5);
  if (objc_msgSend_containsKey_(v7, v8, v9, v10, v11, a3))
  {
    v16 = objc_msgSend_intForKey_(v7, v12, v13, v14, v15, a3);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)computedFillOrStroke:(id)a3 forSeriesIndex:(unint64_t)a4 numberOfThemeSeries:(unint64_t)a5
{
  v8 = a3;
  if (!a5)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "+[TSCHChartSeries computedFillOrStroke:forSeriesIndex:numberOfThemeSeries:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 635, 0, "no default series, dividing by zero");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (a5 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = a5;
  }

  v28 = objc_msgSend_lightenFillOrStroke_byPercent_(TSCHRenderUtilities, v7, ((a4 / v27 % 6) / -6.0 + 1.0) * 0.8 + 0.2, 0.2, 0.8, v8);

  return v28;
}

- (void)p_generateComputedProperty:(int)a3 objectValue:(id *)a4 intValue:(int *)a5 floatValue:(float *)a6
{
  v12 = objc_msgSend_chartInfo(self, a2, v6, v7, v8, *&a3, a4, a5, a6);
  v39 = v12;
  if (v12)
  {
    v17 = objc_msgSend_numberOfThemeSeriesStyles(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = self->_seriesIndex + 1;
  }

  if (a3 > 1184)
  {
    if (a3 == 1189)
    {
LABEL_12:
      if (!a4)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (a3 != 1185)
    {
LABEL_15:
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCHChartSeries p_generateComputedProperty:objectValue:intValue:floatValue:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 665, 0, "Cannot compute property: %ld", a3);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
      goto LABEL_16;
    }
  }

  else if (a3 != 1160)
  {
    if (a3 != 1184)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_13:
  objc_opt_class();
  v18 = TSUDynamicCast();
  if (v18)
  {
    v23 = v18;
    *a4 = objc_msgSend_computedFillOrStroke_forSeriesIndex_numberOfThemeSeries_(TSCHChartSeries, v19, v20, v21, v22, v18, self->_seriesIndex, v17);
  }

LABEL_16:
}

- (BOOL)hasIntValueForProperty:(int)a3 value:(int *)a4
{
  v8 = *&a3;
  style = self->_style;
  v11 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(self, a2, v4, v5, v6);
  v12 = sub_2762E5130(self, style, v11, v8, a4);

  if (v8 == 1212 && (v12 & 1) == 0)
  {
    if (self->_nonStyle)
    {
      return 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_model);
      v18 = objc_msgSend_seriesIndex(self, v14, v15, v16, v17);
      v23 = objc_msgSend_defaultOrdinalForAxisType_seriesIndex_(WeakRetained, v19, v20, v21, v22, 2, v18);

      if (v23 >> 31)
      {
        sub_2764A6FF4();
        return 1;
      }

      else
      {
        return v23 != 0;
      }
    }
  }

  return v12;
}

- (BOOL)hasFloatValueForProperty:(int)a3 value:(float *)a4
{
  v8 = *&a3;
  style = self->_style;
  v11 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(self, a2, v4, v5, v6);
  LOBYTE(a4) = sub_2762E5658(self, style, v11, v8, a4);

  return a4;
}

- (BOOL)hasObjectValueForProperty:(int)a3 value:(id *)a4
{
  v8 = *&a3;
  style = self->_style;
  v11 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(self, a2, v4, v5, v6);
  LOBYTE(a4) = sub_2762E579C(self, style, v11, v8, a4);

  return a4;
}

- (int)intValueForProperty:(int)a3 defaultValue:(int)a4
{
  v8 = *&a3;
  v52 = 0;
  v51 = 0;
  style = self->_style;
  v11 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(self, a2, v4, v5, v6);
  v12 = sub_2762E5138(self, style, v11, v8, &v52, &v51);

  if (self->_styleIsPrivate && ((v51 & 1) != 0 || (objc_msgSend_p_seriesIndexWithinThemeStyleCount(self, v13, v14, v15, v16) & 1) != 0) || (objc_msgSend_computableProperties(TSCHChartSeries, v13, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_containsProperty_(v17, v18, v19, v20, v21, v8), v17, !v22))
  {
    if (v8 == 1212)
    {
      v38 = v12;
    }

    else
    {
      v38 = 1;
    }

    if ((v38 & 1) != 0 || self->_nonStyle)
    {
      goto LABEL_14;
    }

    WeakRetained = objc_loadWeakRetained(&self->_model);
    v44 = objc_msgSend_seriesIndex(self, v40, v41, v42, v43);
    v49 = objc_msgSend_defaultOrdinalForAxisType_seriesIndex_(WeakRetained, v45, v46, v47, v48, 2, v44);

    if (v49 >> 31)
    {
      sub_2764A7084();
      LODWORD(v49) = 0x7FFFFFFF;
    }

    if (v49 == a4)
    {
LABEL_14:
      if ((v12 & 1) == 0)
      {
        return a4;
      }
    }

    else
    {
      return v49;
    }
  }

  else
  {
    v27 = objc_msgSend_p_representativeThemeSeries(self, v23, v24, v25, v26);
    v28 = v27[2];
    v33 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(v27, v29, v30, v31, v32);
    sub_2762E5138(self, v28, v33, v8, &v52, 0);

    objc_msgSend_p_generateComputedProperty_objectValue_intValue_floatValue_(self, v34, v35, v36, v37, v8, 0, &v52, 0);
  }

  return v52;
}

- (float)floatValueForProperty:(int)a3 defaultValue:(float)a4
{
  v7 = *&a3;
  v39 = 0.0;
  v38 = 0;
  style = self->_style;
  v10 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(self, a2, *&a4, v4, v5);
  v11 = sub_2762E5660(self, style, v10, v7, &v39, &v38);

  if (self->_styleIsPrivate && ((v38 & 1) != 0 || (objc_msgSend_p_seriesIndexWithinThemeStyleCount(self, v12, v13, v14, v15) & 1) != 0) || (objc_msgSend_computableProperties(TSCHChartSeries, v12, v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_containsProperty_(v16, v17, v18, v19, v20, v7), v16, !v21))
  {
    if ((v11 & 1) == 0)
    {
      return a4;
    }
  }

  else
  {
    v26 = objc_msgSend_p_representativeThemeSeries(self, v22, v23, v24, v25);
    v27 = v26[2];
    v32 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(v26, v28, v29, v30, v31);
    sub_2762E5660(self, v27, v32, v7, &v39, 0);

    objc_msgSend_p_generateComputedProperty_objectValue_intValue_floatValue_(self, v33, v34, v35, v36, v7, 0, 0, &v39);
  }

  return v39;
}

- (id)objectValueForProperty:(int)a3
{
  v6 = *&a3;
  v42 = 0;
  style = self->_style;
  v9 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(self, a2, v3, v4, v5);
  v41 = 0;
  v10 = sub_2762E57A4(self, style, v9, v6, &v41, &v42);
  v11 = v41;

  if (self->_styleIsPrivate && ((v42 & 1) != 0 || objc_msgSend_p_seriesIndexWithinThemeStyleCount(self, v12, v13, v14, v15)))
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = objc_msgSend_computableProperties(TSCHChartSeries, v12, v13, v14, v15);
  v21 = objc_msgSend_containsProperty_(v16, v17, v18, v19, v20, v6);

  if (v21)
  {
    v26 = objc_msgSend_p_representativeThemeSeries(self, v22, v23, v24, v25);
    v27 = v26[2];
    v32 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(v26, v28, v29, v30, v31);
    v40 = v11;
    sub_2762E57A4(self, v27, v32, v6, &v40, 0);
    v33 = v40;

    v39 = v33;
    objc_msgSend_p_generateComputedProperty_objectValue_intValue_floatValue_(self, v34, v35, v36, v37, v6, &v39, 0, 0);
    v11 = v39;

    goto LABEL_9;
  }

  if (v10)
  {
LABEL_9:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_10:

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)valueForProperty:(int)a3
{
  v6 = *&a3;
  v54 = 0;
  style = self->_style;
  v9 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(self, a2, v3, v4, v5);
  v10 = sub_2762E58F8(self, style, v9, v6, &v54);

  if (!self->_styleIsPrivate || (v54 & 1) == 0 && (objc_msgSend_p_seriesIndexWithinThemeStyleCount(self, v11, v12, v13, v14) & 1) == 0)
  {
    v15 = objc_msgSend_computableProperties(TSCHChartSeries, v11, v12, v13, v14);
    v20 = objc_msgSend_containsProperty_(v15, v16, v17, v18, v19, v6);

    if (v20)
    {
      v25 = objc_msgSend_p_representativeThemeSeries(self, v21, v22, v23, v24);
      v26 = v25[2];
      v31 = objc_msgSend_p_seriesNonStyleOrDefaultNonStyle(v25, v27, v28, v29, v30);
      v32 = sub_2762E58F8(self, v26, v31, v6, 0);

      v53 = v32;
      objc_msgSend_p_generateComputedProperty_objectValue_intValue_floatValue_(self, v33, v34, v35, v36, v6, &v53, 0, 0);
      v10 = v53;
    }
  }

  if (v6 == 1212 && !v10)
  {
    if (self->_nonStyle)
    {
      v10 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_model);
      v42 = objc_msgSend_seriesIndex(self, v38, v39, v40, v41);
      v47 = objc_msgSend_defaultOrdinalForAxisType_seriesIndex_(WeakRetained, v43, v44, v45, v46, 2, v42);

      v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v48, v49, v50, v51, v47);
    }
  }

  return v10;
}

- (id)swapTuplesForMutations:(id)a3 forImport:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  seriesIndex = self->_seriesIndex;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_27623D208;
  v14[3] = &unk_27A6B6838;
  objc_copyWeak(&v15, &location);
  v12 = objc_msgSend_convertToStyleSwapTuplesForStyleOwner_styleSwapType_nonStyleSwapType_index_fromMutations_forImport_withOptionalStyleValueConversionBlock_(TSCHPropertyMutationHelper, v8, v9, v10, v11, self, 10, 11, seriesIndex, v6, v4, v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v12;
}

- (id)chartInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_model);
  v7 = objc_msgSend_chartInfo(WeakRetained, v3, v4, v5, v6);

  return v7;
}

- (id)context
{
  v5 = objc_msgSend_chartInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_context(v5, v6, v7, v8, v9);

  return v10;
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

- (id)defaultProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_g_genericToDefaultPropertyMap(self, v4, v5, v6, v7);
  v13 = objc_msgSend_arrayOfBoxedKeys(v8, v9, v10, v11, v12);
  objc_msgSend_addObjectsFromArray_(v3, v14, v15, v16, v17, v13);

  v22 = objc_msgSend_genericToSpecificPropertyMap(self->_seriesType, v18, v19, v20, v21);
  v27 = objc_msgSend_arrayOfBoxedKeys(v22, v23, v24, v25, v26);
  objc_msgSend_addObjectsFromArray_(v3, v28, v29, v30, v31, v27);

  v36 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v32, v33, v34, v35, v3);

  return v36;
}

- (id)transformedTuplesWithTuple:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v9 = objc_msgSend_arrayWithObjects_count_(v3, v5, v6, v7, v8, v11, 1);

  return v9;
}

- (id)p_seriesNonStyleOrDefaultNonStyle
{
  nonStyle = self->_nonStyle;
  if (nonStyle)
  {
    v6 = nonStyle;
  }

  else
  {
    v6 = objc_msgSend_defaultNonStyle(TSCHChartSeriesDefaultNonStyle, a2, v2, v3, v4);
  }

  return v6;
}

- (id)p_downsampleDataFromCurrentModel
{
  v6 = objc_msgSend_model(self, a2, v2, v3, v4);
  v11 = objc_msgSend_syncRoot(v6, v7, v8, v9, v10);
  objc_sync_enter(v11);
  v16 = objc_msgSend_seriesType(self, v12, v13, v14, v15);
  if (objc_msgSend_supportsDownsampling(v16, v17, v18, v19, v20))
  {
    v25 = objc_msgSend_numberOfValues(v6, v21, v22, v23, v24);
    v26 = qword_280A45390;

    if (v25 > v26)
    {
      v31 = objc_msgSend_downsampleDataForSeries_threshold_(TSCHDownsampler, v27, v28, v29, v30, self, qword_280A45390);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v31 = objc_msgSend_emptyData(TSCHDownsampleData, v27, v28, v29, v30);
LABEL_6:
  v32 = v31;
  objc_sync_exit(v11);

  return v32;
}

- (unint64_t)numberOfGroups
{
  if (objc_msgSend_isDownsampled(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_downsampleData(self, v6, v7, v8, v9);
    v15 = objc_msgSend_indexSet(v10, v11, v12, v13, v14);
    v20 = objc_msgSend_count(v15, v16, v17, v18, v19);
  }

  else
  {
    v10 = objc_msgSend_model(self, v6, v7, v8, v9);
    v20 = objc_msgSend_numberOfValues(v10, v21, v22, v23, v24);
  }

  return v20;
}

- (BOOL)isDownsampled
{
  v5 = objc_msgSend_downsampleData(self, a2, v2, v3, v4);
  v10 = objc_msgSend_indexSet(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14) != 0;

  return v15;
}

- (unint64_t)groupIndexOfValueIndex:(unint64_t)a3
{
  if (objc_msgSend_isDownsampled(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_downsampleData(self, v8, v9, v10, v11);
    a3 = objc_msgSend_positionOfIndex_(v12, v13, v14, v15, v16, a3);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartSeries groupIndexOfValueIndex:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 947, 0, "expected to find an index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  return a3;
}

- (unint64_t)valueIndexAtGroupIndex:(unint64_t)a3
{
  if (objc_msgSend_isDownsampled(self, a2, v3, v4, v5))
  {
    v12 = objc_msgSend_downsampleData(self, v8, v9, v10, v11);
    a3 = objc_msgSend_indexAtPosition_(v12, v13, v14, v15, v16, a3);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCHChartSeries valueIndexAtGroupIndex:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartSeries.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 953, 0, "expected to find an index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  return a3;
}

- (TSCHChartModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (TSCHChartModel)chartModel
{
  WeakRetained = objc_loadWeakRetained(&self->_chartModel);

  return WeakRetained;
}

- (id)g_genericToDefaultPropertyMap
{
  if (qword_280A472A0 != -1)
  {
    sub_2764A7794();
  }

  v3 = qword_280A47298;

  return v3;
}

- (id)g_operationPropertyNameForGenericProperty:(int)a3
{
  v6 = *&a3;
  v8 = objc_msgSend_specificPropertyForGeneric_(self, a2, v3, v4, v5);
  if (v8 || (v8 = objc_msgSend_defaultPropertyForGeneric_(self, v9, v10, v11, v12, v6), v8))
  {
    v13 = v8;
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartSeries(__PropertyMaps_GEN) g_operationPropertyNameForGenericProperty:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHPropertyMaps.GEN.m");
    v33 = String();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v27, v32, 280, 0, "No specific property found for generic %@", v33);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    v13 = 0;
  }

  v14 = objc_msgSend_g_specificPropertyToOperationNameBimap(TSCHBaseStyle, v9, v10, v11, v12);
  v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, v16, v17, v18, v13);
  v24 = objc_msgSend_objectForKeyedSubscript_(v14, v20, v21, v22, v23, v19);

  return v24;
}

- (BOOL)floatValueForLabelExplosion:(float *)a3
{
  v8 = objc_msgSend_seriesType(self, a2, v3, v4, v5);
  LOBYTE(a3) = objc_msgSend_floatValueForLabelExplosion_series_(v8, v9, v10, v11, v12, a3, self);

  return a3;
}

- (double)effectiveLabelExplosion
{
  v11 = 0.0;
  if (objc_msgSend_floatValueForLabelExplosion_(self, a2, v2, v3, v4, &v11))
  {
    return v11;
  }

  else
  {
    objc_msgSend_defaultPieLabelExplosionPercentage(TSCHStyleUtilities, v5, v6, v7, v8);
  }

  return v9;
}

@end