@interface TSCH3DChartAxisLabelsProperties
+ (id)propertiesWithInfo:(id)a3 labels:(id)a4 styleIndex:(unint64_t)a5;
- (TSCH3DChartAxisLabelsProperties)initWithInfo:(id)a3 labels:(id)a4 styleIndex:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSCH3DChartAxisLabelsProperties

+ (id)propertiesWithInfo:(id)a3 labels:(id)a4 styleIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 alloc];
  v15 = objc_msgSend_initWithInfo_labels_styleIndex_(v10, v11, v12, v13, v14, v8, v9, a5);

  return v15;
}

- (TSCH3DChartAxisLabelsProperties)initWithInfo:(id)a3 labels:(id)a4 styleIndex:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = TSCH3DChartAxisLabelsProperties;
  v11 = [(TSCH3DChartAxisLabelsProperties *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_info, a3);
    objc_storeStrong(&v12->_labels, a4);
    v12->_styleIndex = a5;
    v13 = objc_alloc(MEMORY[0x277D81218]);
    v18 = objc_msgSend_initWithMaxSize_(v13, v14, v15, v16, v17, 8);
    categoryStridingCache = v12->_categoryStridingCache;
    v12->_categoryStridingCache = v18;

    v12->_cachedTextFactor = -1.0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v15 = objc_msgSend_init(v10, v11, v12, v13, v14);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 8), self->_info);
    objc_storeStrong((v16 + 16), self->_labels);
    v21 = *(v16 + 32);
    *(v16 + 24) = self->_styleIndex;
    *(v16 + 40) = self->_hidden;
    if (v21)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCH3DChartAxisLabelsProperties copyWithZone:]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 121, 0, "expected nil value for '%{public}s'", "result->_selectionPath");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
    }

    objc_storeStrong((v16 + 32), self->_selectionPath);
    if (*(v16 + 48))
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DChartAxisLabelsProperties copyWithZone:]");
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAxisLabelsSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 123, 0, "expected nil value for '%{public}s'", "result->_categoryStridingCache");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
    }

    v56 = objc_alloc(MEMORY[0x277D81218]);
    v61 = objc_msgSend_initWithMaxSize_(v56, v57, v58, v59, v60, 8);
    v62 = *(v16 + 48);
    *(v16 + 48) = v61;

    *(v16 + 56) = -1082130432;
  }

  return v16;
}

@end