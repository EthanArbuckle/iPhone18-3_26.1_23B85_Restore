@interface TSCH3DChartValueLabelsSceneObject
- (id)convertSelectionPathTo3D:(id)a3 path:(id)a4;
- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5;
- (void)renderAnnotatedLabels:(id)a3;
@end

@implementation TSCH3DChartValueLabelsSceneObject

- (void)renderAnnotatedLabels:(id)a3
{
  v18 = a3;
  v8 = objc_msgSend_scene(v18, v4, v5, v6, v7);
  v13 = objc_msgSend_main(v8, v9, v10, v11, v12);

  objc_msgSend_renderLabelsSceneObject_pipeline_(v13, v14, v15, v16, v17, self, v18);
}

- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5
{
  v79[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = v9;
  if (v9)
  {
    objc_msgSend_element(v9, v10, v11, v12, v13);
    v19 = v78;
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "[TSCH3DChartValueLabelsSceneObject selectionPathForInfo:scene:pickedPoint:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartValueLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 39, 0, "invalid nil value for '%{public}s'", "pickedPoint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    v19 = 0;
  }

  v35 = objc_msgSend_model(v7, v15, v16, v17, v18);
  v40 = objc_msgSend_seriesAtIndex_(v35, v36, v37, v38, v39, v19);

  if (!v40)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "[TSCH3DChartValueLabelsSceneObject selectionPathForInfo:scene:pickedPoint:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartValueLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 43, 0, "invalid nil value for '%{public}s'", "series");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
  }

  v60 = objc_msgSend_intValueForProperty_defaultValue_(v40, v41, v42, v43, v44, 1164, 0);
  v61 = objc_opt_class();
  v66 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v62, v63, v64, v65, v19);
  v79[0] = v66;
  v71 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v67, v68, v69, v70, v79, 1);
  v76 = objc_msgSend_selectionPathWithClass_styleIndex_type_name_arguments_(TSCH3DSelectionPath, v72, v73, v74, v75, v61, v60, @"text", @"seriesValueLabel", v71);

  return v76;
}

- (id)convertSelectionPathTo3D:(id)a3 path:(id)a4
{
  v68[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_argumentsCount(v6, v7, v8, v9, v10) == 1)
  {
    v15 = objc_msgSend_argumentAtIndex_(v6, v11, v12, v13, v14, 0);
    v20 = objc_msgSend_unsignedIntegerValue(v15, v16, v17, v18, v19);
    v25 = objc_msgSend_model(v5, v21, v22, v23, v24);
    v30 = objc_msgSend_seriesAtIndex_(v25, v26, v27, v28, v29, v20);

    if (!v30)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "[TSCH3DChartValueLabelsSceneObject convertSelectionPathTo3D:path:]");
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartValueLabelsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v42, v43, v44, v45, v36, v41, 60, 0, "invalid nil value for '%{public}s'", "series");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    }

    v50 = objc_msgSend_intValueForProperty_defaultValue_(v30, v31, v32, v33, v34, 1164, 0);
    v51 = objc_opt_class();
    v56 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v52, v53, v54, v55, v20);
    v68[0] = v56;
    v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v57, v58, v59, v60, v68, 1);
    v66 = objc_msgSend_selectionPathWithClass_styleIndex_type_name_arguments_(TSCH3DSelectionPath, v62, v63, v64, v65, v51, v50, @"text", @"seriesValueLabel", v61);
  }

  else
  {
    v66 = 0;
  }

  return v66;
}

@end