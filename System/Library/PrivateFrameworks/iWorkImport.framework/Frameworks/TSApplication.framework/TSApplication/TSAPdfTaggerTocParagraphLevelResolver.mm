@interface TSAPdfTaggerTocParagraphLevelResolver
- (int)levelOfCurrentParagraph:(id *)paragraph;
@end

@implementation TSAPdfTaggerTocParagraphLevelResolver

- (int)levelOfCurrentParagraph:(id *)paragraph
{
  v5 = objc_msgSend_tagger(self, a2, paragraph, v3);
  v9 = objc_msgSend_topmostTocChunkContext(v5, v6, v7, v8);

  if (!v9)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSAPdfTaggerTocParagraphLevelResolver levelOfCurrentParagraph:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAPdfTagger.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 936, 0, "invalid nil value for '%{public}s'", "tocContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v22 = objc_msgSend_tagger(self, v10, v11, v12);
  v26 = objc_msgSend_topmostColumnContext(v22, v23, v24, v25);

  v30 = objc_msgSend_paragraphEnumerator(v26, v27, v28, v29);
  v31 = TSWPParagraphEnumerator::paragraphStyle(v30, 0);
  v34 = objc_msgSend_levelForParagraphStyle_(v9, v32, v31, v33);

  return v34;
}

@end