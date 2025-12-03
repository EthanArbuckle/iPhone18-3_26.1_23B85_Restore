@interface TSCHChartFeatureCategory
- (TSCHChartFeatureCategory)initWithChartType:(id)type;
- (void)updateTitlesForExportingModel:(id)model info:(id)info;
@end

@implementation TSCHChartFeatureCategory

- (TSCHChartFeatureCategory)initWithChartType:(id)type
{
  v34[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [TSCHChartAxisID alloc];
  v10 = objc_msgSend_initWithType_ordinal_(v5, v6, v7, v8, v9, 2, 0);
  v34[0] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v34, 1);

  v16 = [TSCHChartAxisID alloc];
  v21 = objc_msgSend_initWithType_ordinal_(v16, v17, v18, v19, v20, 1, 0);
  v33 = v21;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v22, v23, v24, v25, &v33, 1);

  v31 = objc_msgSend_initWithChartType_valueAxisIDs_categoryAxisIDs_(self, v27, v28, v29, v30, typeCopy, v15, v26);
  return v31;
}

- (void)updateTitlesForExportingModel:(id)model info:(id)info
{
  modelCopy = model;
  infoCopy = info;
  if (objc_msgSend_categoryAxisStyleCount(infoCopy, v6, v7, v8, v9) != 1)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCHChartFeatureCategory updateTitlesForExportingModel:info:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 735, 0, "only 1 category axis is supported for export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_categoryAxisNonstyleAtIndex_(infoCopy, v10, v11, v12, v13, 0);
  v35 = objc_msgSend_valueForProperty_(v29, v30, v31, v32, v33, 1290);
  if (!v35)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v36, v37, v38, "[TSCHChartFeatureCategory updateTitlesForExportingModel:info:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 738, 0, "no category title to export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
  }

  objc_msgSend_setCategoryTitle_(modelCopy, v34, v36, v37, v38, v35);
  if (!objc_msgSend_valueAxisStyleCount(infoCopy, v54, v55, v56, v57))
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "[TSCHChartFeatureCategory updateTitlesForExportingModel:info:]");
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v69, v70, v71, v72, v63, v68, 741, 0, "cannot export without any value axis style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
  }

  v77 = objc_msgSend_valueAxisNonstyleAtIndex_(infoCopy, v58, v59, v60, v61, 0);
  v83 = objc_msgSend_valueForProperty_(v77, v78, v79, v80, v81, 1294);
  if (!v83)
  {
    v87 = MEMORY[0x277D81150];
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v84, v85, v86, "[TSCHChartFeatureCategory updateTitlesForExportingModel:info:]");
    v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v94, v95, v96, v97, v88, v93, 744, 0, "no value title to export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v98, v99, v100, v101);
  }

  objc_msgSend_setValueTitle_(modelCopy, v82, v84, v85, v86, v83);
}

@end