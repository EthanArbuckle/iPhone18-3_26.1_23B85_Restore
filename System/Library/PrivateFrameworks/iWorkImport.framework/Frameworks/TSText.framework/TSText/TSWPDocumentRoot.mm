@interface TSWPDocumentRoot
- (BOOL)containsEquation;
- (BOOL)containsVerticalText;
- (BOOL)has_30356142_build;
- (BOOL)isChangeTrackingEnabled;
- (BOOL)isIgnoringWord:(id)word;
- (BOOL)isSectionTemplateInfo:(id)info;
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (TSULocale)typesettingLocale;
- (id)documentId;
- (id)p_fontsInStylesheetUsingBlock:(id)block;
- (id)unavailableDocumentFonts;
- (int)verticalAlignmentForTextStorage:(id)storage;
- (void)addIgnoredWord:(id)word;
- (void)documentDidLoad;
- (void)fontUpdatedForStyleClient:(id)client;
- (void)removeIgnoredWord:(id)word;
- (void)setLaysOutBodyVertically:(BOOL)vertically;
- (void)willClose;
@end

@implementation TSWPDocumentRoot

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_sourceType(unarchiverCopy, v5, v6) == 1)
  {
    v9 = objc_msgSend_fileFormatVersion(unarchiverCopy, v7, v8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276DD66EC;
    v14[3] = &unk_27A6F4710;
    v14[4] = self;
    v14[5] = v9;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v10, v14);
  }

  v13.receiver = self;
  v13.super_class = TSWPDocumentRoot;
  v11 = [(TSWPDocumentRoot *)&v13 validatedLoadFromUnarchiver:unarchiverCopy];

  return v11;
}

- (BOOL)has_30356142_build
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_context(self, a2, v2);
  v5 = objc_msgSend_dataWithContentsOfPackagePath_(v3, v4, @"Metadata/BuildVersionHistory.plist");

  if (v5)
  {
    objc_opt_class();
    v7 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v6, v5, 0, 0, 0);
    v8 = TSUDynamicCast();

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16);
    if (v11)
    {
      v12 = *v23;
      v13 = MEMORY[0x277D81490];
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          objc_opt_class();
          v15 = TSUDynamicCast();
          v17 = v15;
          if (v15)
          {
            v19 = objc_msgSend_rangeOfString_(v15, v16, @"-4510-", v22) == *v13 && v18 == v13[1];
            if (!v19 || objc_msgSend_isEqualToString_(v17, v18, @"T3.2 (4710)"))
            {

              LOBYTE(v11) = 1;
              goto LABEL_18;
            }
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v20, &v22, v26, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)documentDidLoad
{
  v2.receiver = self;
  v2.super_class = TSWPDocumentRoot;
  [(TSWPDocumentRoot *)&v2 documentDidLoad];
}

- (void)willClose
{
  v2.receiver = self;
  v2.super_class = TSWPDocumentRoot;
  [(TSCKDocumentRoot *)&v2 willClose];
}

- (void)addIgnoredWord:(id)word
{
  wordCopy = word;
  if (objc_msgSend_length(wordCopy, v4, v5))
  {
    ignoredWords = self->_ignoredWords;
    v9 = objc_msgSend_lowercaseString(wordCopy, v6, v7);
    objc_msgSend_addObject_(ignoredWords, v10, v9);
  }
}

- (void)removeIgnoredWord:(id)word
{
  wordCopy = word;
  if (objc_msgSend_length(wordCopy, v4, v5))
  {
    ignoredWords = self->_ignoredWords;
    v9 = objc_msgSend_lowercaseString(wordCopy, v6, v7);
    objc_msgSend_removeObject_(ignoredWords, v10, v9);
  }
}

- (BOOL)isIgnoringWord:(id)word
{
  ignoredWords = self->_ignoredWords;
  v4 = objc_msgSend_lowercaseString(word, a2, word);
  LOBYTE(ignoredWords) = objc_msgSend_containsObject_(ignoredWords, v5, v4);

  return ignoredWords;
}

- (void)setLaysOutBodyVertically:(BOOL)vertically
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPDocumentRoot setLaysOutBodyVertically:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDocumentRoot.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 115, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPDocumentRoot setLaysOutBodyVertically:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (BOOL)containsVerticalText
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = objc_msgSend_modelEnumeratorWithFlags_(self, a2, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276E21B7C;
  v5[3] = &unk_27A6F5118;
  v5[4] = &v6;
  objc_msgSend_enumerateUsingBlock_(v2, v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)containsEquation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = objc_msgSend_modelEnumeratorWithFlags_(self, a2, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276E21CE4;
  v5[3] = &unk_27A6F5118;
  v5[4] = &v6;
  objc_msgSend_enumerateUsingBlock_(v2, v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (TSULocale)typesettingLocale
{
  if (objc_msgSend_hasFloatingLocale(self, a2, v2))
  {
    objc_msgSend_documentCreationLocale(self, v4, v5);
  }

  else
  {
    objc_msgSend_documentLocale(self, v4, v5);
  }
  v6 = ;

  return v6;
}

- (id)p_fontsInStylesheetUsingBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_msgSend_stylesheet(self, v6, v7);
  v9 = objc_autoreleasePoolPush();
  if (v8)
  {
    v10 = MEMORY[0x277D85DD0];
    do
    {
      v20[0] = v10;
      v20[1] = 3221225472;
      v20[2] = sub_276E21F00;
      v20[3] = &unk_27A6F5140;
      v11 = blockCopy;
      v20[4] = v5;
      v21 = v11;
      objc_msgSend_enumerateStylesUsingBlock_(v8, v12, v20);
      v15 = objc_msgSend_parent(v8, v13, v14);

      v8 = v15;
    }

    while (v15);
  }

  objc_autoreleasePoolPop(v9);
  v18 = objc_msgSend_copy(v5, v16, v17);

  return v18;
}

- (id)unavailableDocumentFonts
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_documentFonts(self, a2, v2);
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], v4, v5);
  v9 = objc_msgSend_sharedInstance(TSWPFontList, v7, v8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = objc_msgSend_fontForPostscriptName_(v9, v13, v17, v24);
        if ((objc_msgSend_isFallbackFont(v18, v19, v20) & 1) != 0 || objc_msgSend_isMasqueradingFont(v18, v21, v22))
        {
          objc_msgSend_addObject_(v6, v21, v17);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v28, 16);
    }

    while (v14);
  }

  return v6;
}

- (BOOL)isChangeTrackingEnabled
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPDocumentRoot isChangeTrackingEnabled]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDocumentRoot.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 294, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSWPDocumentRoot isChangeTrackingEnabled]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (int)verticalAlignmentForTextStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSWPDocumentRoot verticalAlignmentForTextStorage:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 309, 0, "invalid nil value for '%{public}s'", "textStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_wpKind(storageCopy, v3, v4);
  if (v13 > 7)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPDocumentRoot verticalAlignmentForTextStorage:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDocumentRoot.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 312, 0, "unexpected wp kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    goto LABEL_5;
  }

  if (v13 != 3)
  {
LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  v19 = objc_msgSend_parentInfo(storageCopy, v17, v18);
  v20 = TSUDynamicCast();

  if (v20)
  {
    v15 = objc_msgSend_verticalAlignment(v20, v21, v22);
  }

  else
  {
    v15 = 0;
  }

LABEL_6:
  return v15;
}

- (id)documentId
{
  v10[2] = *MEMORY[0x277D85DE8];
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v5 = self->_uuid;
    self->_uuid = v4;

    uuid = self->_uuid;
  }

  v10[0] = 0;
  v10[1] = 0;
  objc_msgSend_getUUIDBytes_(uuid, a2, v10);
  v6 = TSUHash();
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%lu", v6);

  return v8;
}

- (void)fontUpdatedForStyleClient:(id)client
{
  clientCopy = client;
  v4 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPDocumentRoot fontUpdatedForStyleClient:]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDocumentRoot.m");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v6, v8, 467, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v20 = objc_msgSend_stringWithFormat_(v16, v19, @"Abstract method not overridden by %@: %s", v18, "[TSWPDocumentRoot fontUpdatedForStyleClient:]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, v15, v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (BOOL)isSectionTemplateInfo:(id)info
{
  v3 = TSDTopmostInfoFromInfo();
  v6 = objc_msgSend_parentInfo(v3, v4, v5);
  v7 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    isMaster = objc_msgSend_isMaster(v7, v8, v9, &unk_28862D5F8);
  }

  else
  {
    isMaster = 0;
  }

  return isMaster;
}

@end