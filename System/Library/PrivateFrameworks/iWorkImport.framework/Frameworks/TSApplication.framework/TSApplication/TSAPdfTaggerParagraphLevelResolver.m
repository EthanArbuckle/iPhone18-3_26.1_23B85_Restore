@interface TSAPdfTaggerParagraphLevelResolver
- (BOOL)paragraphInfo:(id)a3 matchesParagraphInfo:(id)a4 level:(int)a5;
- (TSAPdfTagger)tagger;
- (TSAPdfTaggerParagraphLevelResolver)initWithTagger:(id)a3;
- (int)levelOfCurrentParagraph:(id *)a3;
- (int)tagType;
@end

@implementation TSAPdfTaggerParagraphLevelResolver

- (TSAPdfTaggerParagraphLevelResolver)initWithTagger:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSAPdfTaggerParagraphLevelResolver;
  v5 = [(TSAPdfTaggerParagraphLevelResolver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tagger, v4);
  }

  return v6;
}

- (int)tagType
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAPdfTaggerParagraphLevelResolver tagType]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPdfTagger.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 877, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSAPdfTaggerParagraphLevelResolver tagType]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (int)levelOfCurrentParagraph:(id *)a3
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAPdfTaggerParagraphLevelResolver levelOfCurrentParagraph:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPdfTagger.mm", v7);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v5, v8, 882, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v21 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v20, v18, "[TSAPdfTaggerParagraphLevelResolver levelOfCurrentParagraph:]");
  v23 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v22, *MEMORY[0x277CBE658], v21, 0);
  v24 = v23;

  objc_exception_throw(v23);
}

- (BOOL)paragraphInfo:(id)a3 matchesParagraphInfo:(id)a4 level:(int)a5
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSAPdfTaggerParagraphLevelResolver paragraphInfo:matchesParagraphInfo:level:]", v10);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPdfTagger.mm", v13);
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v17, v11, v14, 887, 0, "Abstract method not overridden by %{public}@", v16);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  v21 = MEMORY[0x277CBEAD8];
  v22 = MEMORY[0x277CCACA8];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v27 = objc_msgSend_stringWithFormat_(v22, v25, @"Abstract method not overridden by %@: %s", v26, v24, "[TSAPdfTaggerParagraphLevelResolver paragraphInfo:matchesParagraphInfo:level:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v21, v28, *MEMORY[0x277CBE658], v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

- (TSAPdfTagger)tagger
{
  WeakRetained = objc_loadWeakRetained(&self->_tagger);

  return WeakRetained;
}

@end