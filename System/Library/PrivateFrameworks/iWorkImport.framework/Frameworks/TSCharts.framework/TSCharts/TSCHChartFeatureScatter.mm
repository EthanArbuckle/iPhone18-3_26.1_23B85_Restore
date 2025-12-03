@interface TSCHChartFeatureScatter
- (Class)valueAxisClassForID:(id)d scale:(int64_t)scale;
- (TSCHChartFeatureScatter)initWithChartType:(id)type;
- (id)defaultDataFileName;
- (id)genericToSpecificPropertyMap;
- (id)supportedSeriesTypes;
- (id)userInterfaceName;
- (unint64_t)gridOffsetToSeriesForScatterFormat:(int)format;
- (unint64_t)styleIndexForAxisID:(id)d;
- (void)updateTitlesForExportingModel:(id)model info:(id)info;
@end

@implementation TSCHChartFeatureScatter

- (TSCHChartFeatureScatter)initWithChartType:(id)type
{
  v28[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [TSCHChartAxisID alloc];
  v10 = objc_msgSend_initWithType_ordinal_(v5, v6, v7, v8, v9, 1, 0);
  v28[0] = v10;
  v11 = [TSCHChartAxisID alloc];
  v16 = objc_msgSend_initWithType_ordinal_(v11, v12, v13, v14, v15, 2, 0);
  v28[1] = v16;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v18, v19, v20, v28, 2);

  v26 = objc_msgSend_initWithChartType_valueAxisIDs_categoryAxisIDs_(self, v22, v23, v24, v25, typeCopy, v21, MEMORY[0x277CBEBF8]);
  return v26;
}

- (Class)valueAxisClassForID:(id)d scale:(int64_t)scale
{
  if (objc_msgSend_type(d, a2, v4, v5, v6) - 1 > 1)
  {
    v15 = 0;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v15 = objc_msgSend_p_selectAxisClassForScale_linearClass_logClass_percentClass_(self, v11, v12, v13, v14, scale, v9, v10, 0);
  }

  return v15;
}

- (unint64_t)styleIndexForAxisID:(id)d
{
  dCopy = d;
  v8 = objc_msgSend_type(dCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_ordinal(dCopy, v9, v10, v11, v12);
  v15 = v8 == 1 && v13 == 0;

  return v15;
}

- (id)defaultDataFileName
{
  v5 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, v2, v3, v4);
  if (objc_msgSend_designModeEnabled(v5, v6, v7, v8, v9))
  {
    v10 = @"TSCHDesignDefaultDataScatter.plist";
  }

  else
  {
    v10 = @"TSCHDefaultDataScatter.plist";
  }

  v11 = v10;

  return v10;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2763567B0;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47B80 != -1)
  {
    dispatch_once(&qword_280A47B80, block);
  }

  return qword_280A47B78;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Scatter", &stru_288528678, @"TSCharts");

  return v10;
}

- (void)updateTitlesForExportingModel:(id)model info:(id)info
{
  modelCopy = model;
  infoCopy = info;
  if (objc_msgSend_valueAxisStyleCount(infoCopy, v6, v7, v8, v9) <= 1)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartFeatureScatter updateTitlesForExportingModel:info:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 1228, 0, "insufficient value axis style count for scatter export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_valueAxisNonstyleAtIndex_(infoCopy, v10, v11, v12, v13, 1);
  v35 = objc_msgSend_valueForProperty_(v29, v30, v31, v32, v33, 1294);
  if (!v35)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v36, v37, v38, "[TSCHChartFeatureScatter updateTitlesForExportingModel:info:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 1232, 0, "no category title to export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  objc_msgSend_setCategoryTitle_(modelCopy, v34, v36, v37, v38, v35);
  v58 = objc_msgSend_valueAxisNonstyleAtIndex_(infoCopy, v54, v55, v56, v57, 0);
  v64 = objc_msgSend_valueForProperty_(v58, v59, v60, v61, v62, 1294);
  if (!v64)
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v65, v66, v67, "[TSCHChartFeatureScatter updateTitlesForExportingModel:info:]");
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 1237, 0, "no value title to export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
  }

  objc_msgSend_setValueTitle_(modelCopy, v63, v65, v66, v67, v64);
}

- (id)supportedSeriesTypes
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_scatterSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  v11 = objc_msgSend_setWithObject_(v5, v7, v8, v9, v10, v6);

  return v11;
}

- (unint64_t)gridOffsetToSeriesForScatterFormat:(int)format
{
  if (format == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end