@interface TSCHChartFeaturePieFamily
- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4;
- (TSCHChartFeaturePieFamily)initWithChartType:(id)a3;
- (id)animationDeliveryStylesForFilter:(id)a3;
- (id)genericToSpecificPropertyMap;
- (id)initialSceneWithChartInfo:(id)a3 layoutSettings:(id *)a4;
- (void)updateTitlesForExportingModel:(id)a3 info:(id)a4;
@end

@implementation TSCHChartFeaturePieFamily

- (TSCHChartFeaturePieFamily)initWithChartType:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TSCHChartAxisID alloc];
  v10 = objc_msgSend_initWithType_ordinal_(v5, v6, v7, v8, v9, 3, 0);
  v22[0] = v10;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v12, v13, v14, v22, 1);

  v20 = objc_msgSend_initWithChartType_valueAxisIDs_categoryAxisIDs_(self, v16, v17, v18, v19, v4, v15, MEMORY[0x277CBEBF8]);
  return v20;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2763543B8;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47B20 != -1)
  {
    dispatch_once(&qword_280A47B20, block);
  }

  return qword_280A47B18;
}

- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4
{
  if (objc_msgSend_type(a3, a2, v4, v5, v6) == 3)
  {
    v7 = objc_opt_class();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateTitlesForExportingModel:(id)a3 info:(id)a4
{
  v83 = a3;
  v5 = a4;
  if (objc_msgSend_categoryAxisStyleCount(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_categoryAxisNonstyleAtIndex_(v5, v10, v11, v12, v13, 0);
    v20 = objc_msgSend_valueForProperty_(v14, v15, v16, v17, v18, 1290);
    if (!v20)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v21, v22, v23, "[TSCHChartFeaturePieFamily updateTitlesForExportingModel:info:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 523, 0, "no category title to export");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }

    objc_msgSend_setCategoryTitle_(v83, v19, v21, v22, v23, v20);
  }

  if (!objc_msgSend_valueAxisStyleCount(v5, v10, v11, v12, v13))
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, "[TSCHChartFeaturePieFamily updateTitlesForExportingModel:info:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v50, v51, v52, v53, v44, v49, 527, 0, "cannot export without any value axis style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  v58 = objc_msgSend_valueAxisNonstyleAtIndex_(v5, v39, v40, v41, v42, 0);
  v64 = objc_msgSend_valueForProperty_(v58, v59, v60, v61, v62, 1294);
  if (!v64)
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v65, v66, v67, "[TSCHChartFeaturePieFamily updateTitlesForExportingModel:info:]");
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartFeature.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v75, v76, v77, v78, v69, v74, 530, 0, "no value title to export");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
  }

  objc_msgSend_setValueTitle_(v83, v63, v65, v66, v67, v64);
}

- (id)initialSceneWithChartInfo:(id)a3 layoutSettings:(id *)a4
{
  v48 = *a4;
  v47.receiver = self;
  v47.super_class = TSCHChartFeaturePieFamily;
  v4 = [(TSCHChartFeature *)&v47 initialSceneWithChartInfo:a3 layoutSettings:&v48];
  v9 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v5, v6, v7, v8, v4);
  v14 = v9;
  if (v9)
  {
    objc_msgSend_initialInfoChartScaleVec3(v9, v10, v11, v12, v13);
    objc_msgSend_infoChartScaleVec3(v14, v15, v16, v17, v18);
    LODWORD(v19) = *&v48.var4;
    LODWORD(v20) = *&v48.var0;
    LODWORD(v21) = v48.var8;
  }

  else
  {
    LODWORD(v48.var8) = 0;
    *&v48.var0 = 0;
    v21 = 0.0;
    v46 = 0;
    v19 = 0.0;
    v20 = 0.0;
    v45 = 0;
  }

  if (*&v20 > *&v19)
  {
    *&v19 = *&v20;
  }

  LODWORD(v43) = LODWORD(v19);
  HIDWORD(v43) = LODWORD(v19);
  v44 = LODWORD(v21);
  objc_msgSend_setInitialInfoChartScaleVec3_(v14, v10, v21, v19, v20, &v43);
  LODWORD(v25) = v45;
  if (*&v45 <= *(&v45 + 1))
  {
    *&v25 = *(&v45 + 1);
  }

  LODWORD(v23) = v46;
  LODWORD(v43) = LODWORD(v25);
  HIDWORD(v43) = LODWORD(v25);
  v44 = v46;
  objc_msgSend_setInfoChartScaleVec3_(v14, v22, v25, v23, v24, &v43);
  if (v14)
  {
    objc_msgSend_stageScale(v14, v26, v27, v28, v29);
    LODWORD(v30) = v42;
  }

  else
  {
    v42 = 0;
    v41 = 0;
    v30 = 0.0;
  }

  __asm { FMOV            V1.2S, #12.0 }

  v43 = _D1;
  v44 = LODWORD(v30);
  objc_msgSend_setStageScale_(v14, v26, v30, _D1, v29, &v43, v41, v42);
  LODWORD(v36) = -1083125078;
  v43 = 0.0;
  v44 = -1083125078;
  objc_msgSend_setStageOffset_(v14, v37, v36, v38, v39, &v43);

  return v4;
}

- (id)animationDeliveryStylesForFilter:(id)a3
{
  v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v3, v4, v5, a3);
  objc_msgSend_addIndex_(v6, v7, v8, v9, v10, 0);
  objc_msgSend_addIndex_(v6, v11, v12, v13, v14, 103);

  return v6;
}

@end