@interface TPFootnoteContainerInfo
- (id)copyWithContext:(id)a3;
- (void)clearBackPointerToParentInfoIfNeeded:(id)a3;
- (void)setGeometry:(id)a3;
- (void)setOwningAttachment:(id)a3;
- (void)setPrimitiveGeometry:(id)a3;
@end

@implementation TPFootnoteContainerInfo

- (void)setGeometry:(id)a3
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPFootnoteContainerInfo setGeometry:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 60, 0, "Nothing should try to set a geometry on %@", self);

  v26 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v26, v21, v22, v23, v24, v25);
}

- (void)setPrimitiveGeometry:(id)a3
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPFootnoteContainerInfo setPrimitiveGeometry:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 64, 0, "Nothing should try to set a primitive geometry on %@", self);

  v26 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v26, v21, v22, v23, v24, v25);
}

- (void)setOwningAttachment:(id)a3
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPFootnoteContainerInfo setOwningAttachment:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 72, 0, "%@ cannot be owned by an attachment because it is not a subclass of TSDDrawableInfo", self);

  v26 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v26, v21, v22, v23, v24, v25);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_parentInfo(self, v5, v6, v7, v8, v9);

  if (v10 == v4)
  {

    objc_msgSend_setParentInfo_(self, v11, v12, v13, v14, v15, 0);
  }
}

- (id)copyWithContext:(id)a3
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPFootnoteContainerInfo copyWithContext:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 100, 0, "Nothing should try to make a copy of %@", self);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);

  return objc_alloc_init(TPFootnoteContainerInfo);
}

@end