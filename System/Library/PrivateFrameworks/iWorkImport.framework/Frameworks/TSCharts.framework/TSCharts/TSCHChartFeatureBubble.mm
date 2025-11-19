@interface TSCHChartFeatureBubble
- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4;
- (TSCHChartFeatureBubble)initWithChartType:(id)a3;
- (id)defaultDataFileName;
- (id)filteredStyleOwnersFromStyleOwners:(id)a3;
- (id)genericToSpecificPropertyMap;
- (id)supportedSeriesTypes;
- (unint64_t)gridOffsetToSeriesForScatterFormat:(int)a3;
- (unint64_t)styleIndexForAxisID:(id)a3;
- (void)updateTitlesForExportingModel:(id)a3 info:(id)a4;
@end

@implementation TSCHChartFeatureBubble

- (TSCHChartFeatureBubble)initWithChartType:(id)a3
{
  v34[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TSCHChartAxisID alloc];
  v10 = objc_msgSend_initWithType_ordinal_(v5, v6, v7, v8, v9, 1, 0);
  v11 = [TSCHChartAxisID alloc];
  v16 = objc_msgSend_initWithType_ordinal_(v11, v12, v13, v14, v15, 2, 0, v10);
  v34[1] = v16;
  v17 = [TSCHChartAxisID alloc];
  v22 = objc_msgSend_initWithType_ordinal_(v17, v18, v19, v20, v21, 4, 0);
  v34[2] = v22;
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v24, v25, v26, v34, 3);

  v32 = objc_msgSend_initWithChartType_valueAxisIDs_categoryAxisIDs_(self, v28, v29, v30, v31, v4, v27, 0);
  return v32;
}

- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4
{
  v9 = objc_msgSend_type(a3, a2, v4, v5, v6);
  if ((v9 - 1) > 1)
  {
    if (v9 == 4)
    {
      v16 = objc_opt_class();
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v16 = objc_msgSend_p_selectAxisClassForScale_linearClass_logClass_percentClass_(self, v12, v13, v14, v15, a4, v10, v11, 0);
  }

  return v16;
}

- (unint64_t)styleIndexForAxisID:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_type(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_ordinal(v3, v9, v10, v11, v12);
  v15 = v8 == 1 && v13 == 0;

  return v15;
}

- (id)defaultDataFileName
{
  v5 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, v2, v3, v4);
  if (objc_msgSend_designModeEnabled(v5, v6, v7, v8, v9))
  {
    v10 = @"TSCHDesignDefaultDataBubble.plist";
  }

  else
  {
    v10 = @"TSCHDefaultDataBubble.plist";
  }

  v11 = v10;

  return v10;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276358648;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47BE0 != -1)
  {
    dispatch_once(&qword_280A47BE0, block);
  }

  return qword_280A47BD8;
}

- (void)updateTitlesForExportingModel:(id)a3 info:(id)a4
{
  v83 = a3;
  v5 = a4;
  if (objc_msgSend_valueAxisStyleCount(v5, v6, v7, v8, v9) <= 1)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartFeatureBubble updateTitlesForExportingModel:info:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 1840, 0, "insufficient value axis style count for bubble export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_valueAxisNonstyleAtIndex_(v5, v10, v11, v12, v13, 1);
  v35 = objc_msgSend_valueForProperty_(v29, v30, v31, v32, v33, 1294);
  if (!v35)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v36, v37, v38, "[TSCHChartFeatureBubble updateTitlesForExportingModel:info:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 1844, 0, "no category title to export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  objc_msgSend_setCategoryTitle_(v83, v34, v36, v37, v38, v35);
  v58 = objc_msgSend_valueAxisNonstyleAtIndex_(v5, v54, v55, v56, v57, 0);
  v64 = objc_msgSend_valueForProperty_(v58, v59, v60, v61, v62, 1294);
  if (!v64)
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v65, v66, v67, "[TSCHChartFeatureBubble updateTitlesForExportingModel:info:]");
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 1849, 0, "no value title to export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
  }

  objc_msgSend_setValueTitle_(v83, v63, v65, v66, v67, v64);
}

- (id)supportedSeriesTypes
{
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_msgSend_bubbleSeries(TSCHChartSeriesType, a2, v2, v3, v4);
  v11 = objc_msgSend_setWithObject_(v5, v7, v8, v9, v10, v6);

  return v11;
}

- (unint64_t)gridOffsetToSeriesForScatterFormat:(int)a3
{
  if (a3 == 1)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)filteredStyleOwnersFromStyleOwners:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = objc_msgSend_set(MEMORY[0x277CBEB58], v4, v5, v6, v7);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v3;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, v12, v13, &v23, v27, 16);
  if (v14)
  {
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_msgSend_addObject_(v8, v18, v19, v20, v21, v17, v23);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, v19, v20, v21, &v23, v27, 16);
    }

    while (v14);
  }

  return v8;
}

@end