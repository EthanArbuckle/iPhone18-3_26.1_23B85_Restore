@interface TSCHChartFeatureTwoAxis
- (Class)valueAxisClassForID:(id)d scale:(int64_t)scale;
- (TSCHChartFeatureTwoAxis)initWithChartType:(id)type;
- (id)defaultDataFileName;
- (id)genericToSpecificPropertyMap;
- (id)supportedSeriesTypes;
- (id)userInterfaceName;
- (unint64_t)styleIndexForAxisID:(id)d;
- (void)updateTitlesForExportingModel:(id)model info:(id)info;
@end

@implementation TSCHChartFeatureTwoAxis

- (TSCHChartFeatureTwoAxis)initWithChartType:(id)type
{
  v40[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [TSCHChartAxisID alloc];
  v10 = objc_msgSend_initWithType_ordinal_(v5, v6, v7, v8, v9, 2, 0);
  v40[0] = v10;
  v11 = [TSCHChartAxisID alloc];
  v16 = objc_msgSend_initWithType_ordinal_(v11, v12, v13, v14, v15, 2, 1);
  v40[1] = v16;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v18, v19, v20, v40, 2);

  v22 = [TSCHChartAxisID alloc];
  v27 = objc_msgSend_initWithType_ordinal_(v22, v23, v24, v25, v26, 1, 0);
  v39 = v27;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v29, v30, v31, &v39, 1);

  v37 = objc_msgSend_initWithChartType_valueAxisIDs_categoryAxisIDs_(self, v33, v34, v35, v36, typeCopy, v21, v32);
  return v37;
}

- (Class)valueAxisClassForID:(id)d scale:(int64_t)scale
{
  v9 = objc_msgSend_type(d, a2, v4, v5, v6);
  if (v9 == 2)
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v10 = objc_msgSend_p_selectAxisClassForScale_linearClass_logClass_percentClass_(self, v13, v14, v15, v16, scale, v11, v12, 0);
  }

  else if (v9 == 1)
  {
    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)styleIndexForAxisID:(id)d
{
  dCopy = d;
  v8 = objc_msgSend_type(dCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_ordinal(dCopy, v9, v10, v11, v12);
  if (v13 < 2 && v8 == 2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v8 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

- (id)defaultDataFileName
{
  v5 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, v2, v3, v4);
  if (objc_msgSend_designModeEnabled(v5, v6, v7, v8, v9))
  {
    v10 = @"TSCHDesignDefaultDataTwoAxis.plist";
  }

  else
  {
    v10 = @"TSCHDefaultDataTwoAxis.plist";
  }

  v11 = v10;

  return v10;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276357E48;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47BD0 != -1)
  {
    dispatch_once(&qword_280A47BD0, block);
  }

  return qword_280A47BC8;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"2-Axis", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)supportedSeriesTypes
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_mixedColumnSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  v11 = objc_msgSend_mixedLineSeries(TSCHChartSeriesType, v7, v8, v9, v10);
  v16 = objc_msgSend_mixedAreaSeries(TSCHChartSeriesType, v12, v13, v14, v15);
  v21 = objc_msgSend_setWithObjects_(v5, v17, v18, v19, v20, v6, v11, v16, 0);

  return v21;
}

- (void)updateTitlesForExportingModel:(id)model info:(id)info
{
  modelCopy = model;
  infoCopy = info;
  v56.receiver = self;
  v56.super_class = TSCHChartFeatureTwoAxis;
  [(TSCHChartFeatureCategory *)&v56 updateTitlesForExportingModel:modelCopy info:infoCopy];
  if (objc_msgSend_valueAxisStyleCount(infoCopy, v8, v9, v10, v11) <= 1)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCHChartFeatureTwoAxis updateTitlesForExportingModel:info:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 1731, 0, "insufficient value axis styles for two axis export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_valueAxisNonstyleAtIndex_(infoCopy, v12, v13, v14, v15, 1);
  v37 = objc_msgSend_valueForProperty_(v31, v32, v33, v34, v35, 1294);
  if (!v37)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v38, v39, v40, "[TSCHChartFeatureTwoAxis updateTitlesForExportingModel:info:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 1734, 0, "no value 2 title!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  objc_msgSend_setValue2Title_(modelCopy, v36, v38, v39, v40, v37);
}

@end