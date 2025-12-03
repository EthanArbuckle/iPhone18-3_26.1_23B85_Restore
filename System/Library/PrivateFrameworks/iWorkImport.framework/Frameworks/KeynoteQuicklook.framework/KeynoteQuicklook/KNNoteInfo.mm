@interface KNNoteInfo
- (BOOL)isAnchoredToText;
- (BOOL)isFloatingAboveText;
- (BOOL)isInlineWithText;
- (BOOL)isThemeContent;
- (CGRect)frameForPrinting;
- (KNNoteInfo)initWithContext:(id)context containedStorage:(id)storage;
- (NSArray)childInfos;
- (TSDInfo)parentInfo;
- (id)childEnumerator;
- (id)copyWithContext:(id)context;
- (id)objectUUIDPath;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)dealloc;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setContainedStorage:(id)storage;
- (void)setGeometry:(id)geometry;
- (void)setOwningAttachment:(id)attachment;
- (void)setParentInfo:(id)info;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation KNNoteInfo

- (KNNoteInfo)initWithContext:(id)context containedStorage:(id)storage
{
  contextCopy = context;
  storageCopy = storage;
  v35.receiver = self;
  v35.super_class = KNNoteInfo;
  v8 = [(KNNoteInfo *)&v35 initWithContext:contextCopy];
  if (v8)
  {
    if (storageCopy)
    {
      v9 = storageCopy;
      containedStorage = v8->_containedStorage;
      v8->_containedStorage = v9;
    }

    else
    {
      objc_opt_class();
      v13 = objc_msgSend_documentRoot(contextCopy, v11, v12);
      containedStorage = TSUCheckedDynamicCast();

      v16 = objc_msgSend_show(containedStorage, v14, v15);
      v19 = objc_msgSend_theme(v16, v17, v18);
      v22 = objc_msgSend_defaultPresenterNotesParagraphStyle(v19, v20, v21);

      v23 = objc_alloc(MEMORY[0x277D80F28]);
      v26 = objc_msgSend_stylesheet(containedStorage, v24, v25);
      v29 = objc_msgSend_initialListStyle(v22, v27, v28);
      v31 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v23, v30, contextCopy, 0, 4, v26, v22, v29, 0, 0);
      v32 = v8->_containedStorage;
      v8->_containedStorage = v31;
    }

    objc_msgSend_setParentInfo_(v8->_containedStorage, v33, v8);
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_setParentInfo_(self->_containedStorage, a2, 0);
  containedStorage = self->_containedStorage;
  self->_containedStorage = 0;

  v4.receiver = self;
  v4.super_class = KNNoteInfo;
  [(KNNoteInfo *)&v4 dealloc];
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = [KNNoteInfo alloc];
  v8 = objc_msgSend_initWithContext_(v5, v6, contextCopy);
  if (v8)
  {
    v9 = objc_msgSend_copyWithContext_(self->_containedStorage, v7, contextCopy);
    v10 = v8[10];
    v8[10] = v9;

    objc_msgSend_setParentInfo_(v8[10], v11, v8);
  }

  return v8;
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  mapperCopy = mapper;
  stylesheetCopy = stylesheet;
  objc_msgSend_willModify(self, v8, v9);
  v13 = objc_msgSend_containedStorage(self, v10, v11);
  objc_msgSend_adoptStylesheet_withMapper_(v13, v12, stylesheetCopy, mapperCopy);
}

- (void)setContainedStorage:(id)storage
{
  storageCopy = storage;
  if (self->_containedStorage != storageCopy)
  {
    v10 = storageCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_setParentInfo_(self->_containedStorage, v8, 0);
    objc_storeStrong(&self->_containedStorage, storage);
    objc_msgSend_setParentInfo_(self->_containedStorage, v9, self);
    storageCopy = v10;
  }
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNNoteInfo setGeometry:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 110, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[KNNoteInfo setGeometry:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, v13, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (TSDInfo)parentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  return WeakRetained;
}

- (void)setParentInfo:(id)info
{
  obj = info;
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentInfo, obj);
    v5 = obj;
  }
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_parentInfo);

  if (WeakRetained == neededCopy)
  {

    objc_storeWeak(&self->_parentInfo, 0);
  }
}

- (BOOL)isFloatingAboveText
{
  v3 = objc_msgSend_owningAttachment(self, a2, v2);
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isAnchoredToText
{
  v3 = objc_msgSend_owningAttachment(self, a2, v2);
  isAnchored = objc_msgSend_isAnchored(v3, v4, v5);

  return isAnchored;
}

- (BOOL)isInlineWithText
{
  if (objc_msgSend_isFloatingAboveText(self, a2, v2))
  {
    return 0;
  }

  else
  {
    return objc_msgSend_isAnchoredToText(self, v4, v5) ^ 1;
  }
}

- (void)setOwningAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[KNNoteInfo setOwningAttachment:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 158, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[KNNoteInfo setOwningAttachment:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, v13, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (BOOL)isThemeContent
{
  v3 = objc_msgSend_parentInfo(self, a2, v2);
  isThemeContent = objc_msgSend_isThemeContent(v3, v4, v5);

  return isThemeContent;
}

- (NSArray)childInfos
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_containedStorage)
  {
    v4[0] = self->_containedStorage;
    v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)childEnumerator
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v9 = objc_msgSend_containedStorage(self, v5, v6);
  if (v9)
  {
    objc_msgSend_addObject_(v4, v7, v9);
  }

  v10 = objc_msgSend_objectEnumerator(v4, v7, v8);

  return v10;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  rootCopy = root;
  v11 = objc_msgSend_containedStorage(self, v8, v9);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v11, v10, rootCopy, contextCopy);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  rootCopy = root;
  v10 = objc_msgSend_context(rootCopy, v8, v9);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v11, v10);

  v15 = objc_msgSend_containedStorage(self, v12, v13);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v15, v14, rootCopy, contextCopy);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v7 = objc_msgSend_containedStorage(self, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentRoot_(v7, v8, rootCopy);

  v12 = objc_msgSend_context(rootCopy, v9, v10);

  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v11, v12);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v8 = objc_msgSend_containedStorage(self, v5, v6);
  objc_msgSend_wasRemovedFromDocumentRoot_(v8, v7, rootCopy);
}

- (id)objectUUIDPath
{
  objc_opt_class();
  v5 = objc_msgSend_parentInfo(self, v3, v4);
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[KNNoteInfo objectUUIDPath]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNNoteInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 380, 0, "invalid nil value for '%{public}s'", "tspParentInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_objectUUIDPath(v6, v7, v8);
  v19 = objc_msgSend_objectUUID(self, v17, v18);
  v21 = objc_msgSend_UUIDPathByAppendingUUID_(v16, v20, v19);

  return v21;
}

- (CGRect)frameForPrinting
{
  x = self->_frameForPrinting.origin.x;
  y = self->_frameForPrinting.origin.y;
  width = self->_frameForPrinting.size.width;
  height = self->_frameForPrinting.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[20]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275DBB1D8, off_2812EA908[20]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275DBB110;
  v11[3] = &unk_27A698B58;
  v11[4] = self;
  v8 = unarchiverCopy;
  v10 = objc_opt_class();
  if (v7)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v8, v9, v7, v10, 0, v11);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v8, v9, MEMORY[0x277D80A18], v10, 0, v11);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = objc_msgSend_containedStorage(self, v6, v7);
  *(archive + 4) |= 1u;
  v10 = *(archive + 3);
  if (!v10)
  {
    v11 = *(archive + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C8F050](v11);
    *(archive + 3) = v10;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v8, v9, v10);
}

@end