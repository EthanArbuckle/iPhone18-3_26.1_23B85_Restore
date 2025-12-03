@interface TSCH3DChartMutableElementProperties
- (id)copyWithZone:(_NSZone *)zone;
- (id)renderingLightingModelForSeries:(id)series;
@end

@implementation TSCH3DChartMutableElementProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v83.receiver = self;
  v83.super_class = TSCH3DChartMutableElementProperties;
  v4 = [(TSCH3DChartElementProperties *)&v83 copyWithZone:zone];
  v9 = v4;
  if (v4)
  {
    if (v4[2])
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DChartMutableElementProperties copyWithZone:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 142, 0, "expected nil value for '%{public}s'", "result->_lightingModels");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    objc_storeStrong(v9 + 2, self->_lightingModels);
    if (v9[3])
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "[TSCH3DChartMutableElementProperties copyWithZone:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v36, v37, v38, v39, v30, v35, 144, 0, "expected nil value for '%{public}s'", "result->_labels");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
    }

    objc_storeStrong(v9 + 3, self->_labels);
    if (v9[4])
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "[TSCH3DChartMutableElementProperties copyWithZone:]");
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v55, v56, v57, v58, v49, v54, 146, 0, "expected nil value for '%{public}s'", "result->_chartTransform");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
    }

    objc_storeStrong(v9 + 4, self->_chartTransform);
    if (v9[5])
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, "[TSCH3DChartMutableElementProperties copyWithZone:]");
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 148, 0, "expected nil value for '%{public}s'", "result->_elementsTransform");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
    }

    objc_storeStrong(v9 + 5, self->_elementsTransform);
  }

  return v9;
}

- (id)renderingLightingModelForSeries:(id)series
{
  seriesCopy = series;
  if (!self->_lightingModels)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v6, v7, v8, "[TSCH3DChartMutableElementProperties renderingLightingModelForSeries:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementProperties.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 155, 0, "invalid nil value for '%{public}s'", "_lightingModels");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v39[0] = 0;
  v39[1] = objc_msgSend_seriesIndex(seriesCopy, v4, v6, v7, v8);
  if (objc_msgSend_hasObjectAtIndex_(self->_lightingModels, v24, v25, v26, v27, v39))
  {
    v32 = objc_msgSend_objectAtIndex_(self->_lightingModels, v28, v29, v30, v31, v39);
  }

  else
  {
    v38.receiver = self;
    v38.super_class = TSCH3DChartMutableElementProperties;
    v32 = [(TSCH3DChartElementProperties *)&v38 renderingLightingModelForSeries:seriesCopy];
    objc_msgSend_setObject_atIndex_(self->_lightingModels, v33, v34, v35, v36, v32, v39);
  }

  return v32;
}

@end