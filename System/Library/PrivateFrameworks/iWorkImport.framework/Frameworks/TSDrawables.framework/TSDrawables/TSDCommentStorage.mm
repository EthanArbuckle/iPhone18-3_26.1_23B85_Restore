@interface TSDCommentStorage
+ (id)p_sanitizedCommentTextForString:(id)a3;
- (BOOL)isEqualToCommentStorage:(id)a3;
- (BOOL)p_canDeleteCommentStorageWithAuthor:(id)a3 docIsReadOnly:(BOOL)a4;
- (BOOL)p_canModifyCommentStorageWithAuthor:(id)a3 docIsReadOnly:(BOOL)a4;
- (BOOL)p_matchesCommentStorage:(id)a3;
- (TSDCommentStorage)initWithContext:(id)a3 author:(id)a4;
- (TSDCommentStorage)initWithContext:(id)a3 text:(id)a4 creationDate:(id)a5 author:(id)a6 replies:(id)a7 storageUUID:(id)a8;
- (TSDCommentStorage)parent;
- (TSDCommentStorage)storageWithUUID:(id)a3;
- (id)copyByAppendingText:(id)a3;
- (id)copyWithAuthor:(id)a3;
- (id)copyWithContext:(id)a3 preserveStorageUUID:(BOOL)a4;
- (id)copyWithDate:(id)a3;
- (id)copyWithDeletedReply:(id)a3;
- (id)copyWithEditedReply:(id)a3;
- (id)copyWithInsertedReply:(id)a3;
- (id)copyWithReplies:(id)a3;
- (id)copyWithText:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)creationDateString;
- (id)creationDateStringShort;
- (id)description;
- (id)matchingReply:(id)a3;
- (void)commentWillBeAddedToDocumentRoot;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setAuthor:(id)a3;
- (void)setCreationDate:(id)a3;
- (void)setReplies:(id)a3;
- (void)setStorageUUID:(id)a3;
- (void)setText:(id)a3;
@end

@implementation TSDCommentStorage

- (void)setCreationDate:(id)a3
{
  v4 = a3;
  if (self->_creationDate != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_creationDate, v8);
    v4 = v8;
  }
}

- (void)setAuthor:(id)a3
{
  v7 = a3;
  if (self->_author != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_author, a3);
  }
}

- (void)setReplies:(id)a3
{
  v7 = a3;
  if (self->_replies != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_replies, a3);
  }
}

- (void)setStorageUUID:(id)a3
{
  v4 = a3;
  if (self->_storageUUID != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_storageUUID, v8);
    v4 = v8;
  }
}

- (TSDCommentStorage)initWithContext:(id)a3 text:(id)a4 creationDate:(id)a5 author:(id)a6 replies:(id)a7 storageUUID:(id)a8
{
  v60 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v14 = a4;
  v52 = a5;
  v53 = a6;
  v50 = a7;
  v16 = a8;
  if (!v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDCommentStorage initWithContext:text:creationDate:author:replies:storageUUID:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 60, 0, "Invalid parameter not satisfying: %{public}s", "text != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  if (!v52)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDCommentStorage initWithContext:text:creationDate:author:replies:storageUUID:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 61, 0, "Invalid parameter not satisfying: %{public}s", "creationDate != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  if (!v53)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDCommentStorage initWithContext:text:creationDate:author:replies:storageUUID:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 62, 0, "Invalid parameter not satisfying: %{public}s", "author != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
  }

  v58.receiver = self;
  v58.super_class = TSDCommentStorage;
  v38 = [(TSDCommentStorage *)&v58 initWithContext:v51];
  v40 = v38;
  if (v38)
  {
    objc_msgSend_setText_(v38, v39, v14);
    objc_storeStrong(&v40->_creationDate, a5);
    objc_storeStrong(&v40->_author, a6);
    objc_storeStrong(&v40->_replies, a7);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = v40->_replies;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v54, v59, 16);
    if (v44)
    {
      v45 = *v55;
      do
      {
        v46 = 0;
        do
        {
          if (*v55 != v45)
          {
            objc_enumerationMutation(v41);
          }

          objc_msgSend_setParent_(*(*(&v54 + 1) + 8 * v46++), v43, v40);
        }

        while (v44 != v46);
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v54, v59, 16);
      }

      while (v44);
    }

    if (!v16)
    {
      v16 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v47, v48);
    }

    objc_storeStrong(&v40->_storageUUID, v16);
  }

  return v40;
}

- (TSDCommentStorage)initWithContext:(id)a3 author:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v8, v9);
  v12 = objc_msgSend_initWithContext_text_creationDate_author_replies_storageUUID_(self, v11, v6, &stru_28857D120, v10, v7, 0, 0);

  return v12;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_author(self, a2, v2);
  v8 = objc_msgSend_displayName(v5, v6, v7);
  v11 = objc_msgSend_creationDate(self, v9, v10);
  v14 = objc_msgSend_text(self, v12, v13);
  v17 = objc_msgSend_replies(self, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v4, v18, @"<TSDCommentStorage: %p author: %@ creationDate: %@ text: %@ replies: %@>", self, v8, v11, v14, v17);

  return v19;
}

- (id)creationDateString
{
  v4 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2);
  v7 = objc_msgSend_creationDate(self, v5, v6);
  v9 = objc_msgSend_tsu_relativeAnnotationStringForEarlierDate_(v4, v8, v7);

  return v9;
}

- (id)creationDateStringShort
{
  v4 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2);
  v7 = objc_msgSend_creationDate(self, v5, v6);
  v9 = objc_msgSend_tsu_relativeAnnotationStringForEarlierDate_withDateFormatter_shortAsPossible_(v4, v8, v7, 0, 1);

  return v9;
}

- (void)commentWillBeAddedToDocumentRoot
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_context(self, a2, v2);
  v7 = objc_msgSend_documentRoot(v4, v5, v6);
  v10 = objc_msgSend_annotationAuthorStorage(v7, v8, v9);

  if (v10)
  {
    v55 = v10;
    v13 = objc_msgSend_author(self, v11, v12);

    if (!v13)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSDCommentStorage commentWillBeAddedToDocumentRoot]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 111, 0, "invalid nil value for '%{public}s'", "self.author");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    v23 = objc_msgSend_author(self, v14, v15);

    if (v23)
    {
      v26 = objc_msgSend_author(self, v24, v25);
      v28 = objc_msgSend_authorInStorageAddingAuthorIfNecessary_(v10, v27, v26);
      objc_msgSend_setAuthor_(self, v29, v28);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v30 = objc_msgSend_replies(self, v24, v25);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v56, v60, 16);
    if (v34)
    {
      v35 = *v57;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v56 + 1) + 8 * i);
          v38 = objc_msgSend_author(v37, v32, v33);
          v39 = v38 == 0;

          if (v39)
          {
            v42 = MEMORY[0x277D81150];
            v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "[TSDCommentStorage commentWillBeAddedToDocumentRoot]");
            v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 118, 0, "invalid nil value for '%{public}s'", "reply.author");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
          }

          v49 = objc_msgSend_author(v37, v40, v41);
          v50 = v49 == 0;

          if (!v50)
          {
            v51 = objc_msgSend_author(v37, v32, v33);
            v53 = objc_msgSend_authorInStorageAddingAuthorIfNecessary_(v55, v52, v51);
            objc_msgSend_setAuthor_(v37, v54, v53);
          }
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v56, v60, 16);
      }

      while (v34);
    }

    v10 = v55;
  }
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  v8 = *(a3 + 4);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v9, v10, *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setText_(self, v12, v11);

    v8 = *(a3 + 4);
  }

  if ((v8 & 2) != 0)
  {
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    if (*(a3 + 7))
    {
      v15 = objc_msgSend_tsp_initWithMessage_(v13, v14, *(a3 + 7));
    }

    else
    {
      v15 = objc_msgSend_tsp_initWithMessage_(v13, v14, MEMORY[0x277D809C0]);
    }

    v17 = v15;
    objc_msgSend_setCreationDate_(self, v16, v15);

    v8 = *(a3 + 4);
  }

  if ((v8 & 4) != 0)
  {
    v18 = *(a3 + 8);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2767B7E68;
    v33[3] = &unk_27A6CDE40;
    v33[4] = self;
    v19 = v7;
    v20 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v21, v18, v20, 0, v33);

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2767B7E74;
    v32[3] = &unk_27A6CC790;
    v32[4] = self;
    objc_msgSend_addFinalizeHandler_(v19, v22, v32);
  }

  if (*(a3 + 8) >= 1)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2767B7FC0;
    v31[3] = &unk_27A6CC598;
    v31[4] = self;
    v23 = v7;
    v24 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v23, v25, a3 + 24, v24, 0, v31);
  }

  if ((*(a3 + 16) & 8) != 0)
  {
    v26 = objc_alloc(MEMORY[0x277CCAD78]);
    if (*(a3 + 9))
    {
      v28 = objc_msgSend_tsp_initWithMessage_(v26, v27, *(a3 + 9));
    }

    else
    {
      v28 = objc_msgSend_tsp_initWithMessage_(v26, v27, MEMORY[0x277D809E0]);
    }

    storageUUID = self->_storageUUID;
    self->_storageUUID = v28;
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_2767B80E4;
    v30[3] = &unk_27A6CC790;
    v30[4] = self;
    objc_msgSend_addFinalizeHandler_(v7, v6, v30);
  }
}

- (id)copyWithReplies:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_context(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(self, v8, v7);

  objc_msgSend_setReplies_(v9, v10, v4);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v4;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v22, 16);
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_setParent_(*(*(&v18 + 1) + 8 * v16++), v13, v9, v18);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v18, v22, 16);
    }

    while (v14);
  }

  return v9;
}

- (id)copyWithText:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_context(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(self, v8, v7);

  objc_msgSend_setText_(v9, v10, v4);
  return v9;
}

+ (id)p_sanitizedCommentTextForString:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_length(v3, v4, v5);
  if (v6 >= 0x3D090)
  {
    objc_msgSend_substringToIndex_(v3, v7, 250000);
  }

  else
  {
    objc_msgSend_substringToIndex_(v3, v7, v6);
  }
  v8 = ;

  return v8;
}

- (void)setText:(id)a3
{
  v7 = a3;
  v5 = objc_msgSend_p_sanitizedCommentTextForString_(TSDCommentStorage, v4, v7);
  text = self->_text;
  self->_text = v5;
}

- (id)copyWithInsertedReply:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_context(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(self, v8, v7);

  v10 = MEMORY[0x277CBEB18];
  v13 = objc_msgSend_replies(v9, v11, v12);
  v15 = objc_msgSend_arrayWithArray_(v10, v14, v13);

  objc_msgSend_setParent_(v4, v16, v9);
  objc_msgSend_addObject_(v15, v17, v4);
  objc_msgSend_sortUsingComparator_(v15, v18, &unk_288579A68);
  objc_msgSend_setReplies_(v9, v19, v15);

  return v9;
}

- (id)copyWithEditedReply:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_copyWithDeletedReply_(self, v5, v4);
  v8 = objc_msgSend_copyWithInsertedReply_(v6, v7, v4);

  return v8;
}

- (id)copyWithDeletedReply:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_context(self, v6, v7);
  v11 = objc_msgSend_text(self, v9, v10);
  v14 = objc_msgSend_creationDate(self, v12, v13);
  v17 = objc_msgSend_author(self, v15, v16);
  v20 = objc_msgSend_storageUUID(self, v18, v19);
  v22 = objc_msgSend_initWithContext_text_creationDate_author_replies_storageUUID_(v5, v21, v8, v11, v14, v17, 0, v20);

  v25 = objc_msgSend_replies(self, v23, v24);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_2767B8888;
  v33[3] = &unk_27A6CDE68;
  v26 = v4;
  v34 = v26;
  v35 = self;
  v27 = v22;
  v36 = v27;
  v29 = objc_msgSend_tsu_arrayByTransformingWithBlock_(v25, v28, v33);

  objc_msgSend_setReplies_(v27, v30, v29);
  v31 = v27;

  return v31;
}

- (id)copyByAppendingText:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDCommentStorage copyByAppendingText:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 290, 0, "invalid nil value for '%{public}s'", "text");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_text(self, v4, v5);
  v17 = objc_msgSend_text(self, v15, v16);
  v20 = objc_msgSend_length(v17, v18, v19);

  if (!v20)
  {
    v25 = v14;
    v14 = v6;
    goto LABEL_7;
  }

  if (objc_msgSend_length(v6, v21, v22))
  {
    v25 = objc_msgSend_text(self, v23, v24);
    v27 = objc_msgSend_stringByAppendingFormat_(v25, v26, @"\n%@", v6);

    v14 = v27;
LABEL_7:
  }

  v28 = objc_msgSend_copyWithText_(self, v23, v14);

  return v28;
}

- (id)copyWithAuthor:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDCommentStorage copyWithAuthor:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 303, 0, "invalid nil value for '%{public}s'", "author");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_context(self, v4, v5);
  v16 = objc_msgSend_copyWithContext_(self, v15, v14);

  objc_msgSend_setAuthor_(v16, v17, v6);
  return v16;
}

- (id)copyWithDate:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_context(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(self, v8, v7);

  objc_msgSend_setCreationDate_(v9, v10, v4);
  return v9;
}

- (id)copyWithContext:(id)a3 preserveStorageUUID:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (v4)
  {
    objc_msgSend_storageUUID(self, v6, v7);
  }

  else
  {
    objc_msgSend_UUID(MEMORY[0x277CCAD78], v6, v7);
  }
  v9 = ;
  v10 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_text(self, v11, v12);
  v16 = objc_msgSend_creationDate(self, v14, v15);
  v19 = objc_msgSend_author(self, v17, v18);
  v21 = objc_msgSend_initWithContext_text_creationDate_author_replies_storageUUID_(v10, v20, v8, v13, v16, v19, 0, v9);

  v24 = objc_msgSend_replies(self, v22, v23);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = sub_2767B8ECC;
  v35 = &unk_27A6CDE90;
  v25 = v8;
  v36 = v25;
  v26 = v21;
  v37 = v26;
  v28 = objc_msgSend_tsu_arrayByTransformingWithBlock_(v24, v27, &v32);

  objc_msgSend_setReplies_(v26, v29, v28, v32, v33, v34, v35);
  v30 = v26;

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_context(self, a2, a3);
  v6 = objc_msgSend_copyWithContext_(self, v5, v4);

  return v6;
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812F5188[118]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_2767B9EB4, off_2812F5188[118]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v45 = a4;
  v8 = objc_msgSend_text(self, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_text(self, v9, v10);
    v12 = v11;
    v15 = objc_msgSend_UTF8String(v12, v13, v14);
    sub_2767B9330(a3, v15);
  }

  v16 = objc_msgSend_creationDate(self, v9, v10);

  if (v16)
  {
    v20 = objc_msgSend_creationDate(self, v17, v18);
    *(a3 + 4) |= 2u;
    v21 = *(a3 + 7);
    if (!v21)
    {
      v22 = *(a3 + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C9BAB0](v22);
      *(a3 + 7) = v21;
    }

    objc_msgSend_tsp_saveToMessage_(v20, v19, v21);
  }

  v23 = objc_msgSend_author(self, v17, v18);

  if (v23)
  {
    v27 = objc_msgSend_author(self, v24, v25);
    *(a3 + 4) |= 4u;
    v28 = *(a3 + 8);
    if (!v28)
    {
      v29 = *(a3 + 1);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C9BB20](v29);
      *(a3 + 8) = v28;
    }

    objc_msgSend_setStrongReference_message_(v45, v26, v27, v28);
  }

  v30 = objc_msgSend_replies(self, v24, v25);
  v33 = objc_msgSend_count(v30, v31, v32);

  if (v33)
  {
    v36 = objc_msgSend_replies(self, v34, v35);
    objc_msgSend_setStrongReferenceArray_message_(v45, v37, v36, a3 + 24);
  }

  v38 = objc_msgSend_storageUUID(self, v34, v35);

  if (v38)
  {
    v42 = objc_msgSend_storageUUID(self, v39, v40);
    *(a3 + 4) |= 8u;
    v43 = *(a3 + 9);
    if (!v43)
    {
      v44 = *(a3 + 1);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x277C9BAE0](v44);
      *(a3 + 9) = v43;
    }

    objc_msgSend_tsp_saveToMessage_(v42, v41, v43);
  }
}

- (BOOL)p_canModifyCommentStorageWithAuthor:(id)a3 docIsReadOnly:(BOOL)a4
{
  v8 = a3;
  if (a4)
  {
    v9 = 0;
  }

  else if ((objc_msgSend_isShared(self, v6, v7) & 1) != 0 && (objc_msgSend_author(self, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), isPublicAuthor = objc_msgSend_isPublicAuthor(v12, v13, v14), v12, (isPublicAuthor & 1) == 0))
  {
    v18 = MEMORY[0x277D800A8];
    v19 = objc_msgSend_author(self, v16, v17);
    v9 = objc_msgSend_author_matchesAuthor_(v18, v20, v19, v8);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)p_canDeleteCommentStorageWithAuthor:(id)a3 docIsReadOnly:(BOOL)a4
{
  v8 = a3;
  if (a4)
  {
    v9 = 0;
  }

  else if ((objc_msgSend_isShared(self, v6, v7) & 1) != 0 && (objc_msgSend_isOwner(self, v10, v11) & 1) == 0 && ((objc_msgSend_isOwner(self, v12, v13) & 1) != 0 || (objc_msgSend_parent(self, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v16)) && (objc_msgSend_author(self, v14, v15), v17 = objc_claimAutoreleasedReturnValue(), isPublicAuthor = objc_msgSend_isPublicAuthor(v17, v18, v19), v17, (isPublicAuthor & 1) == 0))
  {
    v24 = MEMORY[0x277D800A8];
    v25 = objc_msgSend_author(self, v21, v22);
    v9 = objc_msgSend_author_matchesAuthor_(v24, v26, v25, v8);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)matchingReply:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_2767B9784;
  v19 = sub_2767B9794;
  v20 = 0;
  v7 = objc_msgSend_replies(self, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2767B979C;
  v12[3] = &unk_27A6CDEB8;
  v8 = v4;
  v13 = v8;
  v14 = &v15;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v9, v12);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (TSDCommentStorage)storageWithUUID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_storageUUID(self, v5, v6);
  v8 = v4;
  v9 = v7;
  if (v8 | v9 && (v11 = v9, isEqual = objc_msgSend_isEqual_(v8, v10, v9), v11, v8, v11, !isEqual))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = objc_msgSend_replies(self, v13, v14, 0);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v23, v27, 16);
    if (v19)
    {
      v20 = *v24;
LABEL_6:
      v21 = 0;
      while (1)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v15 = objc_msgSend_storageWithUUID_(*(*(&v23 + 1) + 8 * v21), v18, v8);
        if (v15)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v23, v27, 16);
          if (v19)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v15 = 0;
    }
  }

  else
  {
    v15 = self;
  }

  return v15;
}

- (BOOL)p_matchesCommentStorage:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = MEMORY[0x277D800A8];
    v8 = objc_msgSend_author(self, v4, v5);
    v11 = objc_msgSend_author(v6, v9, v10);
    if (objc_msgSend_author_matchesAuthor_(v7, v12, v8, v11))
    {
      v15 = objc_msgSend_creationDate(self, v13, v14);
      v18 = objc_msgSend_creationDate(v6, v16, v17);
      isEqualToDate = objc_msgSend_tsu_isEqualToDate_(v15, v19, v18);
    }

    else
    {
      isEqualToDate = 0;
    }
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDCommentStorage p_matchesCommentStorage:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 469, 0, "invalid nil value for '%{public}s'", "otherCommentStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    isEqualToDate = 0;
  }

  return isEqualToDate;
}

- (BOOL)isEqualToCommentStorage:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = MEMORY[0x277D800A8];
    v8 = objc_msgSend_author(self, v4, v5);
    v11 = objc_msgSend_author(v6, v9, v10);
    if (objc_msgSend_author_matchesAuthor_(v7, v12, v8, v11))
    {
      v15 = objc_msgSend_creationDate(self, v13, v14);
      v18 = objc_msgSend_creationDate(v6, v16, v17);
      if (objc_msgSend_tsu_isEqualToDate_(v15, v19, v18))
      {
        v22 = objc_msgSend_text(self, v20, v21);
        v25 = objc_msgSend_text(v6, v23, v24);
        isEqualToString = objc_msgSend_isEqualToString_(v22, v26, v25);
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
  }

  else
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDCommentStorage isEqualToCommentStorage:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCommentStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 484, 0, "invalid nil value for '%{public}s'", "otherCommentStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (TSDCommentStorage)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end