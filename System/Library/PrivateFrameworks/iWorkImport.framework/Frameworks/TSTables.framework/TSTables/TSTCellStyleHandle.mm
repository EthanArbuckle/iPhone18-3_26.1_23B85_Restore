@interface TSTCellStyleHandle
+ (id)handleForCellStyle:(id)a3;
- (TSTCellStyleHandle)initWithCellStyle:(id)a3;
@end

@implementation TSTCellStyleHandle

+ (id)handleForCellStyle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 alloc];
    v9 = objc_msgSend_initWithCellStyle_(v5, v6, v4, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (TSTCellStyleHandle)initWithCellStyle:(id)a3
{
  v8 = a3;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCellStyleHandle initWithCellStyle:]", v10, v11);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyleHandle.m", v15, v16);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v13, v17, 27, 0, "expected cell style got %{public}@", v19);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v21, v22, v23, v24);
      v25 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCellStyleHandle initWithCellStyle:]", v6, v7);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyleHandle.m", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v31, 23, 0, "invalid nil value for '%{public}s'", "cellStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
  }

  v64.receiver = self;
  v64.super_class = TSTCellStyleHandle;
  v37 = [(TSTCellStyleHandle *)&v64 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_cellStyle, a3);
    v38->_isVariation = objc_msgSend_isVariation(v8, v39, v40, v41, v42);
    v38->_cellWraps = (objc_msgSend_intValueForProperty_(v8, v43, 896, v44, v45) & 0x7FFFFFFF) != 0;
    v38->_verticalAlignment = objc_msgSend_intValueForProperty_(v8, v46, 903, v47, v48);
    v38->_overridesPadding = objc_msgSend_overridesProperty_(v8, v49, 904, v50, v51);
    objc_opt_class();
    v55 = objc_msgSend_valueForProperty_(v8, v52, 904, v53, v54);
    v56 = TSUCheckedDynamicCast();
    v61 = objc_msgSend_copy(v56, v57, v58, v59, v60);
    padding = v38->_padding;
    v38->_padding = v61;
  }

  self = v38;
  v25 = self;
LABEL_8:

  return v25;
}

@end