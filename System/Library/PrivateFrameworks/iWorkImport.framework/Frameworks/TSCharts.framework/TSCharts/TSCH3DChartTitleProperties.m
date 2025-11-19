@interface TSCH3DChartTitleProperties
+ (id)propertiesWithInfo:(id)a3 styleIndex:(unint64_t)a4 styleProvidingSource:(id)a5;
- (TSCH3DChartTitleProperties)initWithInfo:(id)a3 styleIndex:(unint64_t)a4 styleProvidingSource:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSCH3DChartTitleProperties

+ (id)propertiesWithInfo:(id)a3 styleIndex:(unint64_t)a4 styleProvidingSource:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a1 alloc];
  v15 = objc_msgSend_initWithInfo_styleIndex_styleProvidingSource_(v10, v11, v12, v13, v14, v8, a4, v9);

  return v15;
}

- (TSCH3DChartTitleProperties)initWithInfo:(id)a3 styleIndex:(unint64_t)a4 styleProvidingSource:(id)a5
{
  v9 = a3;
  v10 = a5;
  v39.receiver = self;
  v39.super_class = TSCH3DChartTitleProperties;
  v11 = [(TSCH3DChartTitleProperties *)&v39 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_info, a3);
    v17 = objc_msgSend_paragraphStyleAtIndex_(v12->_info, v13, v14, v15, v16, a4);
    v18 = [TSCH3DLabelResources alloc];
    v38 = 0x200000001;
    v22 = objc_msgSend_initWithSize_(v18, v19, COERCE_DOUBLE(0x200000001), v20, v21, &v38);
    labels = v12->_labels;
    v12->_labels = v22;

    objc_msgSend_setStyleProvidingSource_(v12->_labels, v24, v25, v26, v27, v10);
    v28 = v12->_labels;
    v38 = 0;
    objc_msgSend_setParagraphStyle_forKey_atIndex_(v28, v29, v30, v31, v32, v17, a4, &v38);
    v33 = v12->_labels;
    v38 = 0x100000000;
    objc_msgSend_setParagraphStyle_forKey_atIndex_(v33, v34, COERCE_DOUBLE(0x100000000), v35, v36, v17, a4, &v38);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v9 = v4;
  if (v4)
  {
    if (v4[1])
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DChartTitleProperties copyWithZone:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartTitleSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 278, 0, "expected nil value for '%{public}s'", "prop->_info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    if (*(v9 + 2))
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DChartTitleProperties copyWithZone:]");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartTitleSceneObject.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v32, v33, v34, v35, v26, v31, 279, 0, "expected nil value for '%{public}s'", "prop->_labels");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39);
    }

    objc_storeStrong(v9 + 1, self->_info);
    objc_storeStrong(v9 + 2, self->_labels);
    *(v9 + 24) = self->_hidden;
  }

  return v9;
}

@end