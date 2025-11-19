@interface TSCH3DChartSeriesNameLabelsSceneObject
- (id)p_axisLabelsFromScene:(id)a3;
- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5;
- (int)knobsModeForLabelType:(int)a3 scene:(id)a4;
- (void)renderAnnotatedLabels:(id)a3;
@end

@implementation TSCH3DChartSeriesNameLabelsSceneObject

- (void)renderAnnotatedLabels:(id)a3
{
  v18 = a3;
  v8 = objc_msgSend_scene(v18, v4, v5, v6, v7);
  v13 = objc_msgSend_main(v8, v9, v10, v11, v12);

  objc_msgSend_renderSeriesLabelsSceneObject_pipeline_(v13, v14, v15, v16, v17, self, v18);
}

- (id)p_axisLabelsFromScene:(id)a3
{
  v3 = a3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_2763639F4;
  v34 = sub_276363A04;
  v35 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_276363A0C;
  v29[3] = &unk_27A6B9E18;
  v29[4] = &v30;
  objc_msgSend_enumerateAllObjectsUsingBlock_(v3, v4, COERCE_DOUBLE(3221225472), v5, v6, v29);
  v11 = v31[5];
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DChartSeriesNameLabelsSceneObject p_axisLabelsFromScene:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesNameLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 47, 0, "invalid nil value for '%{public}s'", "result");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v11 = v31[5];
  }

  v27 = v11;
  _Block_object_dispose(&v30, 8);

  return v27;
}

- (int)knobsModeForLabelType:(int)a3 scene:(id)a4
{
  v6 = a4;
  v12 = objc_msgSend_p_axisLabelsFromScene_(self, v7, v8, v9, v10, v6);
  if (a3 != 6)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartSeriesNameLabelsSceneObject knobsModeForLabelType:scene:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesNameLabelsSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 54, 0, "invalid label type %lu should be %lu", a3, 6);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_knobsModeForLabelType_scene_(v12, v11, v13, v14, v15, 3, v6);

  return v31;
}

- (id)selectionPathForInfo:(id)a3 scene:(id)a4 pickedPoint:(id)a5
{
  v7 = a3;
  v12 = objc_msgSend_p_axisLabelsFromScene_(self, v8, v9, v10, v11, a4);
  v17 = objc_msgSend_axisForInfo_(TSCHChartCategoryAxis, v13, v14, v15, v16, v7);
  v22 = objc_msgSend_selectionPathForInfo_axis_selectionPathLabelIndex_(v12, v18, v19, v20, v21, v7, v17, 0x7FFFFFFFFFFFFFFFLL);

  return v22;
}

@end