@interface TSAShortcutController
+ (id)localizedStringForShortcut:(id)shortcut;
- (TSADocumentRoot)documentRoot;
- (TSAShortcutController)initWithDocumentRoot:(id)root;
- (id)shortcutForStyle:(id)style;
- (id)styleForShortcut:(id)shortcut;
- (void)dealloc;
- (void)documentWillUnload;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeStylesNotInTheme;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setStyle:(id)style forShortcut:(id)shortcut;
@end

@implementation TSAShortcutController

+ (id)localizedStringForShortcut:(id)shortcut
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSAShortcutController localizedStringForShortcut:]", v3);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 90, 0, "No implementation for iOS");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11, v12);
  return 0;
}

- (TSAShortcutController)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  if (!rootCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSAShortcutController initWithDocumentRoot:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 97, 0, "Expecting a document root");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_context(rootCopy, v4, v5, v6);
  v20.receiver = self;
  v20.super_class = TSAShortcutController;
  v18 = [(TSAShortcutController *)&v20 initWithContext:v17];

  if (v18)
  {
    objc_storeWeak(&v18->_documentRoot, rootCopy);
  }

  return v18;
}

- (void)dealloc
{
  objc_msgSend_documentWillUnload(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = TSAShortcutController;
  [(TSAShortcutController *)&v5 dealloc];
}

- (void)documentWillUnload
{
  objc_storeWeak(&self->_documentRoot, 0);
  shortcutToStyleDictionary = self->_shortcutToStyleDictionary;
  self->_shortcutToStyleDictionary = 0;

  styleToShortcutDictionary = self->_styleToShortcutDictionary;
  self->_styleToShortcutDictionary = 0;
}

- (id)shortcutForStyle:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    v7 = objc_msgSend_objectForKey_(self->_styleToShortcutDictionary, v4, styleCopy, v5);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSAShortcutController shortcutForStyle:]", v5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 125, 0, "Need to provide a style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    v7 = 0;
  }

  return v7;
}

- (id)styleForShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if (!objc_msgSend_length(shortcutCopy, v5, v6, v7))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSAShortcutController styleForShortcut:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 133, 0, "Need to provide shortcut");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (objc_msgSend_length(shortcutCopy, v8, v9, v10))
  {
    v22 = objc_msgSend_objectForKey_(self->_shortcutToStyleDictionary, v20, shortcutCopy, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)setStyle:(id)style forShortcut:(id)shortcut
{
  styleCopy = style;
  shortcutCopy = shortcut;
  if (styleCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
    v14 = objc_msgSend_context(WeakRetained, v11, v12, v13);
    v18 = objc_msgSend_context(styleCopy, v15, v16, v17);
    isEqual = objc_msgSend_isEqual_(v14, v19, v18, v20);

    if ((isEqual & 1) == 0)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSAShortcutController setStyle:forShortcut:]", v23);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 141, 0, "Style is in a different document");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
    }

    objc_opt_class();
    v33 = TSUDynamicCast();
    if (v33 || (objc_opt_class(), TSUDynamicCast(), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      objc_opt_class();
      v69 = TSUDynamicCast();

      if (!v69)
      {
        v70 = MEMORY[0x277D81150];
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAShortcutController setStyle:forShortcut:]", v8);
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v73);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v75, v71, v74, 146, 0, "Style must be one of character, paragraph or list");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78);
      }
    }
  }

  objc_msgSend_willModify(self, v6, v7, v8);
  if (objc_msgSend_length(shortcutCopy, v34, v35, v36))
  {
    v41 = objc_msgSend_styleForShortcut_(self, v37, shortcutCopy, v38);
    if (v41)
    {
      objc_msgSend_removeObjectForKey_(self->_styleToShortcutDictionary, v39, v41, v40);
    }

    objc_msgSend_removeObjectForKey_(self->_shortcutToStyleDictionary, v39, shortcutCopy, v40);
  }

  v42 = styleCopy;
  if (styleCopy)
  {
    v45 = objc_msgSend_shortcutForStyle_(self, v37, styleCopy, v38);
    if (v45)
    {
      objc_msgSend_removeObjectForKey_(self->_shortcutToStyleDictionary, v43, v45, v44);
    }

    objc_msgSend_removeObjectForKey_(self->_styleToShortcutDictionary, v43, styleCopy, v44);

    if (objc_msgSend_length(shortcutCopy, v46, v47, v48))
    {
      if (!self->_shortcutToStyleDictionary)
      {
        v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
        shortcutToStyleDictionary = self->_shortcutToStyleDictionary;
        self->_shortcutToStyleDictionary = v49;
      }

      if (!self->_styleToShortcutDictionary)
      {
        v51 = objc_alloc_init(MEMORY[0x277D81308]);
        styleToShortcutDictionary = self->_styleToShortcutDictionary;
        self->_styleToShortcutDictionary = v51;
      }

      objc_msgSend_setObject_forKey_(self->_shortcutToStyleDictionary, v37, styleCopy, shortcutCopy);
      objc_msgSend_setObject_forKey_(self->_styleToShortcutDictionary, v53, shortcutCopy, styleCopy);
    }
  }

  v54 = objc_msgSend_count(self->_shortcutToStyleDictionary, v37, v42, v38);
  if (v54 != objc_msgSend_count(self->_styleToShortcutDictionary, v55, v56, v57))
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSAShortcutController setStyle:forShortcut:]", v59);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAShortcutController.mm", v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 188, 0, "Left dictionaries in inconsistent state");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
  }
}

- (void)removeStylesNotInTheme
{
  v38 = *MEMORY[0x277D85DE8];
  objc_msgSend_allKeys(self->_styleToShortcutDictionary, a2, v2, v3);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v33, v37, 16);
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
        v14 = objc_msgSend_theme(WeakRetained, v11, v12, v13);
        objc_opt_class();
        v15 = TSUClassAndProtocolCast();
        v18 = objc_msgSend_indexOfPreset_(v14, v16, v15, v17, &unk_28854A698) == 0x7FFFFFFFFFFFFFFFLL;

        if (v18)
        {
          v21 = objc_msgSend_shortcutForStyle_(self, v19, v9, v20);
          if (objc_msgSend_length(v21, v22, v23, v24))
          {
            objc_msgSend_willModify(self, v25, v26, v27);
            objc_msgSend_removeObjectForKey_(self->_shortcutToStyleDictionary, v28, v21, v29);
            objc_msgSend_removeObjectForKey_(self->_styleToShortcutDictionary, v30, v9, v31);
          }
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v33, v37, 16);
    }

    while (v6);
  }
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v8 = objc_alloc_init(MEMORY[0x277D81308]);
  v9 = *(archive + 6);
  if (v9 >= 1)
  {
    v10 = 8;
    v11 = MEMORY[0x277D80A18];
    do
    {
      v12 = *(*(archive + 4) + v10);
      v13 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(v12 + 24) & 0xFFFFFFFFFFFFFFFELL, v7);
      v14 = *(v12 + 32);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_2760B6DE0;
      v25[3] = &unk_27A6B02E8;
      v15 = v13;
      v26 = v15;
      v27 = v8;
      v16 = unarchiverCopy;
      v18 = objc_opt_class();
      if (v14)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v17, v14, v18, 0, v25);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v17, v11, v18, 0, v25);
      }

      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2760B6E54;
  v23[3] = &unk_27A6B0338;
  v23[4] = self;
  v19 = v8;
  v24 = v19;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v20, v23, v21);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F3500[8], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  shortcutToStyleDictionary = self->_shortcutToStyleDictionary;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2760B72D4;
  v11[3] = &unk_27A6B0360;
  v12 = archiverCopy;
  archiveCopy = archive;
  v8 = archiverCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(shortcutToStyleDictionary, v9, v11, v10);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2760B75AC, off_2812F3500[8]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (TSADocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end