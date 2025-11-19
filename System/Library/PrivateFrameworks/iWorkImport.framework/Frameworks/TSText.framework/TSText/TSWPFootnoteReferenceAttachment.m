@interface TSWPFootnoteReferenceAttachment
- (BOOL)isEqual:(id)a3;
- (TSWPFootnoteReferenceAttachment)initWithContext:(id)a3;
- (TSWPFootnoteReferenceAttachment)initWithContext:(id)a3 wpStorage:(id)a4;
- (id)childEnumerator;
- (id)copyWithContext:(id)a3;
- (id)objectsForStyleMigrating;
- (unint64_t)findCharIndexWithHintIndex:(unint64_t *)a3;
- (unint64_t)hash;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)applyMark;
- (void)checkDebug;
- (void)dealloc;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setContainedStorage:(id)a3;
- (void)setCustomMarkString:(id)a3;
- (void)setParentStorage:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPFootnoteReferenceAttachment

- (TSWPFootnoteReferenceAttachment)initWithContext:(id)a3 wpStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = TSWPFootnoteReferenceAttachment;
  v8 = [(TSWPAttachment *)&v20 initWithContext:v6];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setContainedStorage_(v8, v9, v7);
    if (!v10->_containedStorage)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPFootnoteReferenceAttachment initWithContext:wpStorage:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFootnoteReferenceAttachment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 35, 0, "invalid nil value for '%{public}s'", "_containedStorage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }
  }

  return v10;
}

- (TSWPFootnoteReferenceAttachment)initWithContext:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_documentRoot(v4, v5, v6);
  v10 = objc_msgSend_theme(v7, v8, v9);
  v13 = objc_msgSend_defaultParagraphStyle(v10, v11, v12);
  v14 = [TSWPStorage alloc];
  v17 = objc_msgSend_stylesheet(v7, v15, v16);
  v20 = objc_msgSend_initialListStyle(v13, v18, v19);
  v28 = -1;
  v22 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v14, v21, v4, 0, 2, v17, v13, v20, 0, 0, v28);

  v24 = objc_msgSend_initWithContext_wpStorage_(self, v23, v4, v22);
  objc_msgSend_applyMark(v24, v25, v26);

  return v24;
}

- (void)dealloc
{
  objc_msgSend_setOwningAttachment_(self->_containedStorage, a2, 0);
  objc_msgSend_setParentInfo_(self->_containedStorage, v3, 0);
  v4.receiver = self;
  v4.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPFootnoteReferenceAttachment *)&v4 dealloc];
}

- (void)applyMark
{
  v4 = objc_msgSend_context(self, a2, v2);

  if (v4)
  {
    objc_msgSend_willModify(self, v5, v6);
  }

  v7 = [TSWPFootnoteMarkAttachment alloc];
  v10 = objc_msgSend_context(self, v8, v9);
  v16 = objc_msgSend_initWithContext_(v7, v11, v10);

  v14 = objc_msgSend_containedStorage(self, v12, v13);
  objc_msgSend_insertAttachmentOrFootnote_range_(v14, v15, v16, 0, 0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TSWPFootnoteReferenceAttachment;
  if ([(TSWPAttachment *)&v19 isEqual:v4])
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v8 = v5;
    if (v5 && (containedStorage = self->_containedStorage, objc_msgSend_containedStorage(v5, v6, v7), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(containedStorage) = objc_msgSend_isEqual_(containedStorage, v11, v10), v10, containedStorage))
    {
      v15 = objc_msgSend_customMarkString(v8, v12, v13);
      customMarkString = self->_customMarkString;
      if (v15 == customMarkString)
      {
        isEqualToString = 1;
      }

      else
      {
        isEqualToString = 0;
        if (v15 && customMarkString)
        {
          isEqualToString = objc_msgSend_isEqualToString_(customMarkString, v14, v15);
        }
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  objc_msgSend_addObject_(v3, v4, self->_containedStorage);
  objc_msgSend_addObject_(v3, v5, self->_customMarkString);
  v8 = objc_msgSend_hashValue(v3, v6, v7);

  return v8;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  containedStorage = self->_containedStorage;
  v8 = objc_msgSend_length(containedStorage, v6, v7);
  v10 = objc_msgSend_newSubstorageWithRange_context_flags_(containedStorage, v9, 0, v8, v4, 1);
  v11 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_initWithContext_wpStorage_(v11, v12, v4, v10);
  v16 = objc_msgSend_copy(self->_customMarkString, v14, v15);
  v17 = v13[10];
  v13[10] = v16;

  return v13;
}

- (void)setContainedStorage:(id)a3
{
  v16 = a3;
  if (self->_containedStorage != v16)
  {
    v7 = objc_msgSend_context(self, v5, v6);

    if (v7)
    {
      objc_msgSend_willModify(self, v8, v9);
    }

    objc_msgSend_setOwningAttachment_(self->_containedStorage, v8, 0);
    objc_msgSend_setParentInfo_(self->_containedStorage, v10, 0);
    objc_storeStrong(&self->_containedStorage, a3);
    objc_msgSend_setOwningAttachment_(self->_containedStorage, v11, self);
    v14 = objc_msgSend_parentStorage(self, v12, v13);
    objc_msgSend_setContainedStorageParentInfoToStorage_(self, v15, v14);
  }
}

- (void)setParentStorage:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v6 setParentStorage:v4];
  objc_msgSend_setContainedStorageParentInfoToStorage_(self, v5, v4);
}

- (void)setCustomMarkString:(id)a3
{
  v11 = a3;
  v6 = objc_msgSend_context(self, v4, v5);

  if (v6)
  {
    objc_msgSend_willModify(self, v7, v8);
  }

  v9 = objc_msgSend_copy(v11, v7, v8);
  customMarkString = self->_customMarkString;
  self->_customMarkString = v9;
}

- (unint64_t)findCharIndexWithHintIndex:(unint64_t *)a3
{
  v5 = objc_msgSend_parentStorage(self, a2, a3);
  CharIndexForFootnoteAttachment_withHintIndex = objc_msgSend_findCharIndexForFootnoteAttachment_withHintIndex_(v5, v6, self, a3);

  return CharIndexForFootnoteAttachment_withHintIndex;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v12 willBeAddedToDocumentRoot:v6 dolcContext:v7];
  v10 = objc_msgSend_containedStorage(self, v8, v9);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v10, v11, v6, v7);
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v12 wasAddedToDocumentRoot:v6 dolcContext:v7];
  v10 = objc_msgSend_containedStorage(self, v8, v9);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v10, v11, v6, v7);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v9 willBeRemovedFromDocumentRoot:v4];
  v7 = objc_msgSend_containedStorage(self, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentRoot_(v7, v8, v4);
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v9 wasRemovedFromDocumentRoot:v4];
  v7 = objc_msgSend_containedStorage(self, v5, v6);
  objc_msgSend_wasRemovedFromDocumentRoot_(v7, v8, v4);
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend_pushMappingContext_(v7, v8, self);
  v11.receiver = self;
  v11.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPAttachment *)&v11 adoptStylesheet:v6 withMapper:v7];
  objc_msgSend_adoptStylesheet_withMapper_(self->_containedStorage, v9, v6, v7);
  objc_msgSend_popMappingContext_(v7, v10, self);
}

- (id)objectsForStyleMigrating
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_containedStorage(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_containedStorage(self, v4, v5);
    v11[0] = v7;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v11, 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)childEnumerator
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_containedStorage(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_containedStorage(self, v4, v5);
    v14[0] = v7;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v14, 1);
    v12 = objc_msgSend_objectEnumerator(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)checkDebug
{
  v4 = objc_msgSend_parentStorage(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_parentStorage(self, v5, v6);
    CharIndexForFootnoteAttachment = objc_msgSend_findCharIndexForFootnoteAttachment_(v7, v8, self);

    if (CharIndexForFootnoteAttachment == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPFootnoteReferenceAttachment checkDebug]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFootnoteReferenceAttachment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 216, 0, "Attachment not found in parent storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }
  }

  if (!self->_containedStorage)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPFootnoteReferenceAttachment checkDebug]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFootnoteReferenceAttachment.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 218, 0, "invalid nil value for '%{public}s'", "_containedStorage");

    v24 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v24, v22, v23);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[132]);

  if (*(v6 + 32))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = &TSWP::_TextualAttachmentArchive_default_instance_;
  }

  v18.receiver = self;
  v18.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPTextualAttachment *)&v18 loadFromArchive:v7 unarchiver:v4];
  v9 = *(v6 + 16);
  if ((v9 & 4) != 0)
  {
    v10 = *(v6 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276DF6664;
    v17[3] = &unk_27A6F46C0;
    v17[4] = self;
    v11 = v4;
    v12 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v13, v10, v12, 0, v17);

    v9 = *(v6 + 16);
  }

  if (v9)
  {
    v14 = *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      v14 = *v14;
    }

    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v14);
    objc_msgSend_setCustomMarkString_(self, v16, v15);
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276DF68F0, off_2812DC408[132]);

  *(v6 + 16) |= 2u;
  v7 = *(v6 + 32);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextualAttachmentArchive>(v8);
    *(v6 + 32) = v7;
  }

  v16.receiver = self;
  v16.super_class = TSWPFootnoteReferenceAttachment;
  [(TSWPTextualAttachment *)&v16 saveToArchive:v7 archiver:v4];
  containedStorage = self->_containedStorage;
  if (containedStorage)
  {
    *(v6 + 16) |= 4u;
    v12 = *(v6 + 40);
    if (!v12)
    {
      v13 = *(v6 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA3250](v13);
      *(v6 + 40) = v12;
    }

    objc_msgSend_setStrongReference_message_(v4, v9, containedStorage, v12);
  }

  customMarkString = self->_customMarkString;
  if (customMarkString)
  {
    v15 = objc_msgSend_UTF8String(customMarkString, v9, v10);
    sub_276DF67CC(v6, v15);
  }
}

@end