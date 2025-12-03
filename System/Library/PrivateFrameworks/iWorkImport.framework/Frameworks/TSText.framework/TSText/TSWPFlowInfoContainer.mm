@interface TSWPFlowInfoContainer
- (NSString)debugDescription;
- (TSWPFlowInfoContainer)initWithContext:(id)context;
- (void)addFlowInfo:(id)info;
- (void)addFlowInfo:(id)info dolcContext:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeFlowInfo:(id)info;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPFlowInfoContainer

- (TSWPFlowInfoContainer)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TSWPFlowInfoContainer;
  v5 = [(TSWPFlowInfoContainer *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    flowInfos = v5->_flowInfos;
    v5->_flowInfos = v6;
  }

  return v5;
}

- (void)addFlowInfo:(id)info dolcContext:(id)context
{
  infoCopy = info;
  contextCopy = context;
  if (infoCopy)
  {
    objc_msgSend_willModify(self, v6, v7);
    v11 = objc_msgSend_context(self, v9, v10);
    v14 = objc_msgSend_documentRoot(v11, v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_context(self, v15, v16);
      v20 = objc_msgSend_documentRoot(v17, v18, v19);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(infoCopy, v21, v20, contextCopy);
    }

    UserInterfaceIdentifier = objc_msgSend_nextUserInterfaceIdentifier(self, v15, v16);
    objc_msgSend_setUserInterfaceIdentifier_(infoCopy, v23, UserInterfaceIdentifier);
    objc_msgSend_setNextUserInterfaceIdentifier_(self, v24, UserInterfaceIdentifier + 1);
    objc_msgSend_addObject_(self->_flowInfos, v25, infoCopy);
    if (v14)
    {
      v28 = objc_msgSend_context(self, v26, v27);
      v31 = objc_msgSend_documentRoot(v28, v29, v30);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(infoCopy, v32, v31, contextCopy);
    }
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPFlowInfoContainer addFlowInfo:dolcContext:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfoContainer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 50, 0, "invalid nil value for '%{public}s'", "flowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
  }
}

- (void)addFlowInfo:(id)info
{
  infoCopy = info;
  v6 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v4, v5);
  objc_msgSend_addFlowInfo_dolcContext_(self, v7, infoCopy, v6);
}

- (void)removeFlowInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_indexOfObject_(self->_flowInfos, v4, infoCopy);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPFlowInfoContainer removeFlowInfo:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFlowInfoContainer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 78, 0, "attempting to remove flow %@ that does not exist", infoCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  else if (infoCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    v17 = objc_msgSend_context(self, v15, v16);
    v20 = objc_msgSend_documentRoot(v17, v18, v19);

    if (v20)
    {
      v23 = objc_msgSend_context(self, v21, v22);
      v26 = objc_msgSend_documentRoot(v23, v24, v25);
      objc_msgSend_willBeRemovedFromDocumentRoot_(infoCopy, v27, v26);
    }

    objc_msgSend_removeObject_(self->_flowInfos, v21, infoCopy);
    if (v20)
    {
      v30 = objc_msgSend_context(self, v28, v29);
      v33 = objc_msgSend_documentRoot(v30, v31, v32);
      objc_msgSend_wasRemovedFromDocumentRoot_(infoCopy, v34, v33);
    }

    if (v7 == objc_msgSend_count(self->_flowInfos, v28, v29))
    {
      UserInterfaceIdentifier = objc_msgSend_nextUserInterfaceIdentifier(self, v35, v36);
      objc_msgSend_setNextUserInterfaceIdentifier_(self, v38, UserInterfaceIdentifier - 1);
    }
  }
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = objc_msgSend_flowInfos(self, v8, v9, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v16, v20, 16);
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v16 + 1) + 8 * v15++), v12, rootCopy, contextCopy);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v16, v20, 16);
    }

    while (v13);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v10 = objc_msgSend_context(rootCopy, v8, v9);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v11, v10);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = objc_msgSend_flowInfos(self, v12, v13, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v20, v24, 16);
  if (v17)
  {
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v20 + 1) + 8 * v19++), v16, rootCopy, contextCopy);
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v20, v24, 16);
    }

    while (v17);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v22 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = objc_msgSend_flowInfos(self, v5, v6, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v17 + 1) + 8 * v12++), v9, rootCopy);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v17, v21, 16);
    }

    while (v10);
  }

  v15 = objc_msgSend_context(rootCopy, v13, v14);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v16, v15);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v18 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = objc_msgSend_flowInfos(self, v5, v6, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v13 + 1) + 8 * v12++), v9, rootCopy);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[180]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276E189B0;
  v9[3] = &unk_27A6F4740;
  v9[4] = self;
  sub_276E18904(unarchiverCopy, archive + 24, &unk_28864DE38, v9);
  if (*(archive + 16))
  {
    objc_msgSend_setNextUserInterfaceIdentifier_(self, v7, *(archive + 12));
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276E189BC;
  v8[3] = &unk_27A6F46E8;
  v8[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v7, v8);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276E18CC8, off_2812DC408[180]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_flowInfos(self, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_flowInfos(self, v12, v13);
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v15, v14, archive + 24);
  }

  UserInterfaceIdentifier = objc_msgSend_nextUserInterfaceIdentifier(self, v12, v13);
  *(archive + 4) |= 1u;
  *(archive + 12) = UserInterfaceIdentifier;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"(%@*) %p\nnextUserInterfaceIdentifier:%lu\n%@", v4, self, self->_nextUserInterfaceIdentifier, self->_flowInfos);
}

@end