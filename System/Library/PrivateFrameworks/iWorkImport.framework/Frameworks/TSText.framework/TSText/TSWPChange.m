@interface TSWPChange
- (BOOL)canMergeWithKind:(int)a3 session:(id)a4;
- (BOOL)isEquivalentToObject:(id)a3;
- (BOOL)isHidden;
- (BOOL)showsHiddenDeletionMarkup;
- (BOOL)showsMarkup;
- (TSUColor)changeAdornmentsColor;
- (TSUColor)textMarkupColor;
- (TSWPChange)initWithContext:(id)a3;
- (TSWPChange)initWithContext:(id)a3 kind:(int)a4 session:(id)a5;
- (TSWPStorage)parentStorage;
- (id)copyWithContext:(id)a3;
- (void)i_setTextAttributeUUIDString:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)migrateWithDocumentRoot:(id)a3;
- (void)p_invalidateAnnotationResultsForDocumentRoot:(id)a3 key:(id)a4;
- (void)resetTextAttributeUUIDString;
- (void)saveToArchiver:(id)a3;
- (void)setDate:(id)a3;
- (void)setSession:(id)a3;
- (void)trackedTextDidChange;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPChange

- (void)setSession:(id)a3
{
  v7 = a3;
  if (self->_session != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_session, a3);
  }
}

- (void)setDate:(id)a3
{
  v4 = a3;
  if (self->_date != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_date, v8);
    v4 = v8;
  }
}

- (TSWPChange)initWithContext:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TSWPChange;
  v7 = [(TSWPChange *)&v17 initWithContext:v4];
  if (v7)
  {
    v8 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v5, v6);
    v11 = objc_msgSend_UUIDString(v8, v9, v10);
    v14 = objc_msgSend_copy(v11, v12, v13);
    textAttributeUUIDString = v7->_textAttributeUUIDString;
    v7->_textAttributeUUIDString = v14;
  }

  return v7;
}

- (TSWPChange)initWithContext:(id)a3 kind:(int)a4 session:(id)a5
{
  v8 = a3;
  v9 = a5;
  v11 = objc_msgSend_initWithContext_(self, v10, v8);
  v12 = v11;
  if (v11)
  {
    *(v11 + 72) = a4;
    objc_storeStrong((v11 + 80), a5);
    v13 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    date = v12->_date;
    v12->_date = v13;
  }

  return v12;
}

- (BOOL)isHidden
{
  v3 = self;
  v4 = objc_msgSend_documentRoot(self, a2, v2);
  v7 = objc_msgSend_changeVisibility(v4, v5, v6);

  kind = v3->_kind;
  v11 = objc_msgSend_date(v3->_session, v9, v10);
  LOBYTE(v3) = objc_msgSend_shouldShowChangeKind_date_(v7, v12, kind, v11);

  return v3 ^ 1;
}

- (BOOL)showsMarkup
{
  v4 = objc_msgSend_documentRoot(self, a2, v2);
  v7 = objc_msgSend_changeVisibility(v4, v5, v6);

  if (objc_msgSend_isHidden(self, v8, v9))
  {
    v12 = 0;
  }

  else
  {
    kind = self->_kind;
    v14 = objc_msgSend_date(self->_session, v10, v11);
    v12 = objc_msgSend_shouldShowMarkupForChangeKind_date_(v7, v15, kind, v14);
  }

  return v12;
}

- (void)migrateWithDocumentRoot:(id)a3
{
  v14 = objc_msgSend_context(a3, a2, a3);
  if (v14)
  {
    v6 = objc_msgSend_session(self, v4, v5);
    if (v6)
    {
      objc_opt_class();
      v9 = objc_msgSend_objectUUID(v6, v7, v8);
      v11 = objc_msgSend_objectWithUUIDIfAvailable_(v14, v10, v9);
      v12 = TSUDynamicCast();

      if (v12 && v12 != v6)
      {
        objc_msgSend_setSession_(self, v13, v12);
      }
    }
  }
}

- (BOOL)showsHiddenDeletionMarkup
{
  if (self->_kind != 2)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPChange showsHiddenDeletionMarkup]");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPChange.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 111, 0, "Only call this method for deletions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    if (self->_kind != 2)
    {
      return 0;
    }
  }

  if (!objc_msgSend_isHidden(self, a2, v2) || (objc_msgSend_showsMarkup(self, v11, v12) & 1) != 0)
  {
    return 0;
  }

  v17 = objc_msgSend_documentRoot(self, v13, v14);
  v20 = objc_msgSend_changeVisibility(v17, v18, v19);

  v23 = objc_msgSend_date(self->_session, v21, v22);
  v15 = objc_msgSend_shouldShowMarkupForChangeKind_date_(v20, v24, 1, v23);

  return v15;
}

- (TSUColor)textMarkupColor
{
  v3 = objc_msgSend_author(self->_session, a2, v2);
  v6 = objc_msgSend_colors(v3, v4, v5);
  v9 = objc_msgSend_textMarkupColor(v6, v7, v8);

  return v9;
}

- (TSUColor)changeAdornmentsColor
{
  v3 = objc_msgSend_author(self->_session, a2, v2);
  v6 = objc_msgSend_colors(v3, v4, v5);
  v9 = objc_msgSend_changeAdornmentsColor(v6, v7, v8);

  return v9;
}

- (void)i_setTextAttributeUUIDString:(id)a3
{
  v7 = a3;
  if (self->_textAttributeUUIDString != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_textAttributeUUIDString, a3);
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[168]);

  v8 = *(v6 + 16);
  if ((v8 & 8) != 0)
  {
    v9 = *(v6 + 48);
    self->_kind = v9;
    if (v9)
    {
LABEL_3:
      if ((v8 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (self->_kind)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSWPChange loadFromUnarchiver:]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPChange.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 148, 0, "Change has unkonwn kind");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  v8 = *(v6 + 16);
  if ((v8 & 2) == 0)
  {
LABEL_4:
    if ((v8 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v21 = objc_alloc(MEMORY[0x277CBEAA8]);
    if (*(v6 + 40))
    {
      v23 = objc_msgSend_tsp_initWithMessage_(v21, v22, *(v6 + 40));
    }

    else
    {
      v23 = objc_msgSend_tsp_initWithMessage_(v21, v22, MEMORY[0x277D809C0]);
    }

    date = self->_date;
    self->_date = v23;

    if ((*(v6 + 16) & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_9:
  v17 = *(v6 + 32);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_276E099BC;
  v29[3] = &unk_27A6F4DD0;
  v29[4] = self;
  v18 = v4;
  v19 = objc_opt_class();
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v18, v20, v17, v19, 0, v29);

  v8 = *(v6 + 16);
  if ((v8 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v25 = objc_alloc(MEMORY[0x277CCACA8]);
  v28 = objc_msgSend_tsp_initWithProtobufString_(v25, v26, *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL);
  if (v28)
  {
    objc_msgSend_i_setTextAttributeUUIDString_(self, v27, v28);
  }

LABEL_17:
}

- (void)saveToArchiver:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276E0A760, off_2812DC408[168]);

  kind = self->_kind;
  if (kind)
  {
    *(v6 + 16) |= 8u;
    *(v6 + 48) = kind;
  }

  session = self->_session;
  if (session)
  {
    *(v6 + 16) |= 2u;
    v10 = *(v6 + 32);
    if (!v10)
    {
      v11 = *(v6 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277CA3250](v11);
      *(v6 + 32) = v10;
    }

    objc_msgSend_setWeakReference_message_(v4, v7, session, v10);
  }

  date = self->_date;
  if (date)
  {
    *(v6 + 16) |= 4u;
    v13 = *(v6 + 40);
    if (!v13)
    {
      v14 = *(v6 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277CA31F0](v14);
      *(v6 + 40) = v13;
    }

    objc_msgSend_tsp_saveToMessage_(date, v7, v13);
  }

  textAttributeUUIDString = self->_textAttributeUUIDString;
  if (textAttributeUUIDString)
  {
    sub_276D9F478(v16, textAttributeUUIDString);
    sub_276E09BA0(v6, __s);
    if (v17)
    {
      free(v17);
    }
  }
}

- (void)trackedTextDidChange
{
  v5 = objc_msgSend_documentRoot(self, a2, v2);
  objc_msgSend_p_invalidateAnnotationResultsForDocumentRoot_key_(self, v4, v5, *MEMORY[0x277D805C0]);
}

- (void)resetTextAttributeUUIDString
{
  v8 = objc_msgSend_UUID(MEMORY[0x277CCAD78], a2, v2);
  v6 = objc_msgSend_UUIDString(v8, v4, v5);
  objc_msgSend_i_setTextAttributeUUIDString_(self, v7, v6);
}

- (BOOL)isEquivalentToObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      v10 = objc_msgSend_textAttributeUUIDString(v6, v7, v8);
      if (!self->_textAttributeUUIDString)
      {
        v11 = MEMORY[0x277D81150];
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPChange isEquivalentToObject:]");
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPChange.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 212, 0, "Expect to have a UUIDString.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
      }

      if (v10)
      {
        textAttributeUUIDString = self->_textAttributeUUIDString;
        if (textAttributeUUIDString)
        {
          isEqualToString = objc_msgSend_isEqualToString_(textAttributeUUIDString, v9, v10);
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPChange isEquivalentToObject:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPChange.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 213, 0, "Expect to have a UUIDString for other object.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
      }

      isEqualToString = 0;
      goto LABEL_12;
    }

    isEqualToString = 0;
  }

LABEL_13:

  return isEqualToString;
}

- (void)p_invalidateAnnotationResultsForDocumentRoot:(id)a3 key:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v9 = v7;
  if (v6)
  {
    if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x277D805C8]))
    {
      v12 = [TSWPChangeDetails alloc];
      v15 = objc_msgSend_initWithChange_(v12, v13, self);
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v23 = objc_msgSend_parentStorage(self, v10, v11);
      v26 = objc_msgSend_parentStorage(self, v24, v25);
      v28 = objc_msgSend_rangeForChange_(v26, v27, self);
      v15 = objc_msgSend_changeDetailsForChange_withRange_(v23, v29, self, v28, v29);

      if (!v15)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v39[0] = v15;
    v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v39, 1);
    v37 = v9;
    v38 = v30;
    v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, &v38, &v37, 1);
    v35 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v33, v34);
    objc_msgSend_postNotificationName_object_userInfo_(v35, v36, *MEMORY[0x277D805B0], v6, v32);

    goto LABEL_8;
  }

  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPChange p_invalidateAnnotationResultsForDocumentRoot:key:]");
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPChange.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 226, 0, "Annotation Controller: Document Root should not be nil unless unit testing.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
LABEL_9:
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v34 = a3;
  v7 = objc_msgSend_context(v34, v5, v6);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v8, v7);

  v11 = objc_msgSend_parentStorage(self, v9, v10);

  if (!v11)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPChange wasAddedToDocumentRoot:dolcContext:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPChange.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 253, 0, "Expect wasAddedToDocumentRoot to have a non-null parent storage: %{public}@", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  objc_opt_class();
  v20 = TSUDynamicCast();
  v23 = objc_msgSend_parentStorage(self, v21, v22);
  v25 = objc_msgSend_changeSessionManagerForModel_(v20, v24, v23);

  if (!v25)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSWPChange wasAddedToDocumentRoot:dolcContext:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPChange.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 256, 0, "Expect to find a valid change session manager for TSWPChange (%@)", self);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  objc_msgSend_p_invalidateAnnotationResultsForDocumentRoot_key_(self, v26, v34, *MEMORY[0x277D805B8]);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v9 = a3;
  objc_msgSend_p_invalidateAnnotationResultsForDocumentRoot_key_(self, v4, v9, *MEMORY[0x277D805C8]);
  v7 = objc_msgSend_context(v9, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v8, v7);
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithContext_(v5, v6, v4);
  v8 = v7;
  if (v7)
  {
    *(v7 + 72) = self->_kind;
    objc_storeStrong((v7 + 80), self->_session);
    v11 = objc_msgSend_copy(self->_date, v9, v10);
    v12 = *(v8 + 88);
    *(v8 + 88) = v11;

    WeakRetained = objc_loadWeakRetained(&self->_parentStorage);
    objc_storeWeak((v8 + 64), WeakRetained);

    objc_msgSend_i_setTextAttributeUUIDString_(v8, v14, self->_textAttributeUUIDString);
  }

  return v8;
}

- (BOOL)canMergeWithKind:(int)a3 session:(id)a4
{
  v6 = a4;
  v8 = v6;
  if (self->_kind == a3)
  {
    isEqualToSession = objc_msgSend_isEqualToSession_(v6, v7, self->_session);
  }

  else
  {
    isEqualToSession = 0;
  }

  return isEqualToSession;
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end