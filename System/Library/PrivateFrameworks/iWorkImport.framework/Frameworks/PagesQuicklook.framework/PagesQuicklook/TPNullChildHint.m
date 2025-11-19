@interface TPNullChildHint
- (TPNullChildHint)initWithContext:(id)a3 hint:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setHint:(id)a3;
@end

@implementation TPNullChildHint

- (TPNullChildHint)initWithContext:(id)a3 hint:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (v8)
  {
    v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v9, v10, v11, v12);

    if (v13 != v8)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPNullChildHint initWithContext:hint:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v31, v20, v26, 1193, 0, "should only be used for null hints");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
    }
  }

  v39.receiver = self;
  v39.super_class = TPNullChildHint;
  v37 = [(TPNullChildHint *)&v39 initWithContext:v6];

  return v37;
}

- (void)loadFromUnarchiver:(id)a3
{
  v8 = a3;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithDescriptor_(v8, v3, v4, v5, v6, v7, off_2812F85B8[38]);
}

- (void)saveToArchiver:(id)a3
{
  v8 = a3;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(v8, v3, v4, v5, v6, v7, sub_275FE7008, off_2812F85B8[38]);
}

- (void)setHint:(id)a3
{
  v32 = a3;
  v8 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v4, v5, v6, v7);

  if (v8 != v32)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPNullChildHint setHint:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHint.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 1211, 0, "should only be used for null hints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }
}

@end