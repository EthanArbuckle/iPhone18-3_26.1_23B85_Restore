@interface TSCHTSWPTextWithDelegate
- (TSCHTSWPTextWithDelegate)initWithText:(id)a3 textDelegate:(id)a4;
@end

@implementation TSCHTSWPTextWithDelegate

- (TSCHTSWPTextWithDelegate)initWithText:(id)a3 textDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v40.receiver = self;
  v40.super_class = TSCHTSWPTextWithDelegate;
  v10 = [(TSCHTSWPTextWithDelegate *)&v40 init];
  if (v10)
  {
    v14 = objc_msgSend_delegate(v7, v9, v11, v12, v13);

    if (v14 != v8)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "[TSCHTSWPTextWithDelegate initWithText:textDelegate:]");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHText.mm");
      v30 = objc_msgSend_delegate(v7, v26, v27, v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v31, v32, v33, v34, v20, v25, 233, 0, "Text delegate mismatch %@ expects %@", v30, v8);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
    }

    objc_storeStrong(&v10->_text, a3);
    objc_storeStrong(&v10->_textDelegate, a4);
  }

  return v10;
}

@end