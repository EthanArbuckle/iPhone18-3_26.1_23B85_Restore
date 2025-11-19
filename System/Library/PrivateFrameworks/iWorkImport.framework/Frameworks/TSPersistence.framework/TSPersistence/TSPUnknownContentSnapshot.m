@interface TSPUnknownContentSnapshot
- (TSPUnknownContentSnapshot)init;
- (TSPUnknownContentSnapshot)initWithMessages:(id)a3 preserveFields:(id)a4 preserveUntilModifiedFields:(id)a5 shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration:(BOOL)a6;
- (id)newFieldTree;
- (id)newUnknownContentSnapshotWithMessages:(id)a3;
- (void)enumerateKnownFieldRulesUsingBlock:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)updateMessageInfo:(void *)a3;
@end

@implementation TSPUnknownContentSnapshot

- (TSPUnknownContentSnapshot)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPUnknownContentSnapshot init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownContent.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 181, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%s: %s", "Do not call method", "[TSPUnknownContentSnapshot init]");
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v12, *MEMORY[0x277CBE658], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

- (TSPUnknownContentSnapshot)initWithMessages:(id)a3 preserveFields:(id)a4 preserveUntilModifiedFields:(id)a5 shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = TSPUnknownContentSnapshot;
  v14 = [(TSPUnknownContentSnapshot *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_messages, a3);
    objc_storeStrong(&v15->_preserveFields, a4);
    objc_storeStrong(&v15->_preserveUntilModifiedFields, a5);
    v15->_shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration = a6;
  }

  return v15;
}

- (id)newUnknownContentSnapshotWithMessages:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6) || objc_msgSend_count(self->_preserveFields, v7, v8) || objc_msgSend_count(self->_preserveUntilModifiedFields, v9, v10))
  {
    v11 = [TSPUnknownContentSnapshot alloc];
    shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration = objc_msgSend_initWithMessages_preserveFields_preserveUntilModifiedFields_shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration_(v11, v12, v4, self->_preserveFields, self->_preserveUntilModifiedFields, self->_shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration);
  }

  else
  {
    shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration = 0;
  }

  return shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration;
}

- (id)newFieldTree
{
  v31 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_preserveFields, a2, v2) || objc_msgSend_count(self->_preserveUntilModifiedFields, v4, v5))
  {
    v6 = objc_alloc_init(TSPFieldTree);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_preserveFields;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v30, 16);
    if (v10)
    {
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend_addField_(v6, v9, *(*(&v25 + 1) + 8 * v12++));
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v30, 16);
      }

      while (v10);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = self->_preserveUntilModifiedFields;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v29, 16);
    if (v16)
    {
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_addField_(v6, v15, *(*(&v21 + 1) + 8 * v18++), v21);
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v21, v29, 16);
      }

      while (v16);
    }
  }

  else
  {
    v6 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)saveToArchiver:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_newFieldTree(self, v4, v5);
  objc_msgSend_saveToArchiver_(v6, v7, v8);
}

- (void)updateMessageInfo:(void *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_preserveFields;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v27, 16);
  if (v8)
  {
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_updateMessageInfo_(*(*(&v22 + 1) + 8 * v10++), v7, a3);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v22, v27, 16);
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_preserveUntilModifiedFields;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v26, 16);
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

        objc_msgSend_updateMessageInfo_(*(*(&v18 + 1) + 8 * v16++), v13, a3, v18);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v18, v26, 16);
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)enumerateKnownFieldRulesUsingBlock:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_33;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = self;
  obj = self->_messages;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v37, v41, 16);
  if (!v8)
  {
    goto LABEL_32;
  }

  v9 = *v38;
  v29 = *v38;
LABEL_4:
  v10 = 0;
  v30 = v8;
  while (1)
  {
    if (*v38 != v9)
    {
      objc_enumerationMutation(obj);
    }

    v11 = objc_msgSend_messageInfo(*(*(&v37 + 1) + 8 * v10), v6, v7, v29);
    v12 = v11;
    if (!*(v11 + 200))
    {
      v13 = *(v11 + 56);
      if (v13 >= 1)
      {
        break;
      }
    }

LABEL_30:
    if (++v10 == v8)
    {
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v37, v41, 16);
      if (!v8)
      {
        goto LABEL_32;
      }

      goto LABEL_4;
    }
  }

  v36 = 0;
  v14 = UnsafePointer(v11 + 168, v6);
  if (v36 == 1)
  {
    goto LABEL_32;
  }

  v15 = v14;
  v16 = 0;
  v17 = 1;
  do
  {
    v18 = *(*(v12 + 64) + 8 * v17);
    if ((*(v18 + 16) & 0x10) != 0 && *(v18 + 116) == -1)
    {
      v19 = *(v18 + 120);
      if (v19 == 2)
      {
        v20 = 5;
      }

      else
      {
        if (v19 != 1 || !v32->_shouldIncludePreserveUntilModifiedFieldsInKnownFieldRuleEnumeration)
        {
          goto LABEL_26;
        }

        v20 = 4;
      }

      v21 = UnsafePointer(v18 + 72, v6);
      if (v21 && (*(v18 + 16) & 1) != 0)
      {
        v23 = objc_alloc(MEMORY[0x277CCACA8]);
        v22 = objc_msgSend_tsp_initWithProtobufString_(v23, v24, *(v18 + 96) & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        v22 = 0;
      }

      if (*(v18 + 104))
      {
        v25 = *(v18 + 104);
      }

      else
      {
        v25 = &qword_2812FC940;
      }

      v26 = v22;
      v33 = v20;
      v34 = v21;
      v35 = v26;
      v4[2](v4, v25, &v33, v15, &v36);

      v16 = v36;
    }

LABEL_26:
    if (v16)
    {
      break;
    }
  }

  while (v17++ < v13);
  v9 = v29;
  v8 = v30;
  if ((v16 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_32:

LABEL_33:
  v28 = *MEMORY[0x277D85DE8];
}

@end