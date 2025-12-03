@interface KNObjectPlaceholderLayout
- (id)instructionalStorageForContainedStorage:(id)storage storageKind:(unsigned __int8)kind;
@end

@implementation KNObjectPlaceholderLayout

- (id)instructionalStorageForContainedStorage:(id)storage storageKind:(unsigned __int8)kind
{
  HIDWORD(v58) = kind;
  storageCopy = storage;
  v8 = objc_msgSend_info(self, v6, v7);
  v11 = objc_msgSend_documentRoot(v8, v9, v10);
  v14 = objc_msgSend_theme(v11, v12, v13);

  objc_opt_class();
  v59 = v14;
  v16 = objc_msgSend_presetOfKind_index_(v14, v15, *MEMORY[0x277D80BB8], 0);
  v17 = TSUDynamicCast();

  v20 = objc_msgSend_defaultParagraphStyle(v17, v18, v19);
  v23 = objc_msgSend_initialListStyle(v20, v21, v22);
  v25 = v23;
  if (v20)
  {
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[KNObjectPlaceholderLayout instructionalStorageForContainedStorage:storageKind:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNObjectPlaceholderLayout.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v45, v47, 40, 0, "invalid nil value for '%{public}s'", "paragraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
    if (v25)
    {
      goto LABEL_3;
    }
  }

  v51 = MEMORY[0x277D81150];
  v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[KNObjectPlaceholderLayout instructionalStorageForContainedStorage:storageKind:]");
  v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNObjectPlaceholderLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 41, 0, "invalid nil value for '%{public}s'", "listStyle");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
LABEL_3:
  v26 = objc_alloc(MEMORY[0x277D80F28]);
  v29 = objc_msgSend_context(storageCopy, v27, v28);
  v32 = objc_msgSend_info(self, v30, v31);
  v35 = objc_msgSend_instructionalText(v32, v33, v34);
  v38 = objc_msgSend_stylesheet(storageCopy, v36, v37);
  v40 = objc_msgSend_writingDirectionForParagraphAtCharIndex_(storageCopy, v39, 0);

  LODWORD(v58) = v40;
  v42 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v26, v41, v29, v35, HIDWORD(v58), v38, v20, v25, 0, 0, v58);

  return v42;
}

@end