@interface TPOrphanPageGenerator
- (BOOL)wantsPageInSectionHint:(id)a3 withState:(id)a4;
- (TPOrphanPageGenerator)initWithDocumentRoot:(id)a3;
- (void)createOrUpdatePageHintInSectionHint:(id)a3 withState:(id)a4;
@end

@implementation TPOrphanPageGenerator

- (TPOrphanPageGenerator)initWithDocumentRoot:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = TPOrphanPageGenerator;
  v5 = [(TPOrphanPageGenerator *)&v32 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_documentRoot, v4);

    if (!v4)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "[TPOrphanPageGenerator initWithDocumentRoot:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPOrphanPageGenerator.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 28, 0, "Orphan page generator must be created with a document controller");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)wantsPageInSectionHint:(id)a3 withState:(id)a4
{
  v29 = objc_msgSend_onLastSection(v5, v6, v7, v8, v9, v10) && (WeakRetained = objc_loadWeakRetained(&self->_documentRoot), objc_msgSend_floatingDrawables(WeakRetained, v12, v13, v14, v15, v16), v17 = v5 = a4;

  return v29;
}

- (void)createOrUpdatePageHintInSectionHint:(id)a3 withState:(id)a4
{
  v5 = a3;
  v11 = objc_msgSend_pageIndex(a4, v6, v7, v8, v9, v10);
  v22 = objc_msgSend_pageHintForPageIndex_(v5, v12, v13, v14, v15, v16, v11);

  objc_msgSend_setPageKind_(v22, v17, v18, v19, v20, v21, 3);
}

@end