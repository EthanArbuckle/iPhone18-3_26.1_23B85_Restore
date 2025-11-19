@interface TSWPSectionPlaceholder
- (TSWPSectionPlaceholder)initWithContext:(id)a3;
- (TSWPStorage)parentStorage;
- (id)copyWithContext:(id)a3;
- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPSectionPlaceholder

- (TSWPSectionPlaceholder)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWPSectionPlaceholder;
  return [(TSWPSectionPlaceholder *)&v4 initWithContext:a3];
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[172]);

  if (*(v6 + 16))
  {
    v7 = *(v6 + 24);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276F32690;
    v11[3] = &unk_27A6F46C0;
    v11[4] = self;
    v8 = v4;
    v9 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v8, v10, v7, v9, 0, v11);
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276F32C3C, off_2812DC408[172]);

  v9 = objc_msgSend_parentStorage(self, v7, v8);

  if (v9)
  {
    v19 = objc_msgSend_parentStorage(self, v10, v11);
    *(v6 + 16) |= 1u;
    v20 = *(v6 + 24);
    if (!v20)
    {
      v21 = *(v6 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277CA3250](v21);
      *(v6 + 24) = v20;
    }

    objc_msgSend_setWeakReference_message_(v4, v18, v19, v20);
  }

  TSUSetCrashReporterInfo();
  v12 = MEMORY[0x277D81150];
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPSectionPlaceholder saveToArchiver:]", "[TSWPSectionPlaceholder saveToArchiver:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSectionPlaceholder.mm", 54);
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSectionPlaceholder.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v14, v16, 54, 1, "We should never archive the placeholder section. <rdar://problem/38071638>");

  TSUCrashBreakpoint();
  abort();
}

- (id)copyWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithContext_(v4, v5, v3);

  return v6;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v4 = a3;
  if (!v4)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPSectionPlaceholder willBeAddedToDocumentRoot:dolcContext:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSectionPlaceholder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 76, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    v4 = 0;
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = objc_msgSend_context(a3, a2, a3, a4);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v5, v6);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v15 = a3;
  if (!v15)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPSectionPlaceholder willBeRemovedFromDocumentRoot:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSectionPlaceholder.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 84, 0, "%@ being removed from nil document root.", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_context(v15, v4, v5);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v14, v13);
}

- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPSectionPlaceholder i_ensureHeaderFooterStoragesExistWithStylesheet:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPSectionPlaceholder.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 93, 0, "Should be defined in the real section class: i_ensureHeaderFooterStoragesExistWithStylesheet:");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end