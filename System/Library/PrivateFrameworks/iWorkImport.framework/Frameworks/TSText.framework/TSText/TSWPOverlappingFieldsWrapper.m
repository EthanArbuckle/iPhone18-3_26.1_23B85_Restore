@interface TSWPOverlappingFieldsWrapper
- (BOOL)isEqualToOverlappingFieldWrapper:(id)a3;
- (BOOL)isEquivalentToObject:(id)a3;
- (TSWPOverlappingFieldsWrapper)initWithField:(id)a3 parentStorage:(id)a4;
- (TSWPOverlappingFieldsWrapper)initWithFields:(id)a3 parentStorage:(id)a4;
- (id)copyWithContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)findFieldWithTextAttributeUUIDString:(id)a3;
- (id)parentStorage;
- (unint64_t)indexOfField:(id)a3;
- (unint64_t)sortedSearchForIndexOfField:(id)a3;
- (void)addField:(id)a3;
- (void)removeField:(id)a3;
- (void)resetTextAttributeUUIDString;
- (void)setParentStorage:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPOverlappingFieldsWrapper

- (TSWPOverlappingFieldsWrapper)initWithFields:(id)a3 parentStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = TSWPOverlappingFieldsWrapper;
  v10 = [(TSWPOverlappingFieldsWrapper *)&v23 init];
  if (v10)
  {
    if (objc_msgSend_count(v6, v8, v9))
    {
      v13 = objc_msgSend_mutableCopy(v6, v11, v12);
      fields = v10->_fields;
      v10->_fields = v13;

      objc_storeWeak(&v10->_parentStorage, v7);
    }

    else
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPOverlappingFieldsWrapper initWithFields:parentStorage:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 61, 0, "Expected at least 1 field.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      v10 = 0;
    }
  }

  return v10;
}

- (TSWPOverlappingFieldsWrapper)initWithField:(id)a3 parentStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = TSWPOverlappingFieldsWrapper;
  v8 = [(TSWPOverlappingFieldsWrapper *)&v23 init];
  v10 = v8;
  if (v8)
  {
    if (v6)
    {
      objc_storeWeak(&v8->_parentStorage, v7);
      v11 = objc_alloc(MEMORY[0x277CBEB18]);
      v13 = objc_msgSend_initWithObjects_(v11, v12, v6, 0);
      fields = v10->_fields;
      v10->_fields = v13;
    }

    else
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPOverlappingFieldsWrapper initWithField:parentStorage:]");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 75, 0, "invalid nil value for '%{public}s'", "field");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      fields = v10;
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_fields(self, v5, v6);
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);
  v10 = objc_msgSend_initWithFields_parentStorage_(v4, v9, v7, WeakRetained);

  return v10;
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_fields;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v14 + 1) + 8 * v13++), v10, v6, v7, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_fields;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v14 + 1) + 8 * v13++), v10, v6, v7, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_fields;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = objc_msgSend_parentStorage(v12, v7, v8, v16);
        WeakRetained = objc_loadWeakRetained(&self->_parentStorage);
        v15 = v13 == WeakRetained;

        if (v15)
        {
          objc_msgSend_willBeRemovedFromDocumentRoot_(v12, v7, v4);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v16, v20, 16);
    }

    while (v9);
  }
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_fields;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = objc_msgSend_parentStorage(v12, v7, v8, v15);
        v14 = v13 == 0;

        if (v14)
        {
          objc_msgSend_wasRemovedFromDocumentRoot_(v12, v7, v4);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v15, v19, 16);
    }

    while (v9);
  }
}

- (void)setParentStorage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_fields;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v15, 16);
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_setParentStorage_(*(*(&v11 + 1) + 8 * v10++), v7, v4, v11);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v11, v15, 16);
    }

    while (v8);
  }

  objc_storeWeak(&self->_parentStorage, v4);
}

- (id)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

- (unint64_t)sortedSearchForIndexOfField:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPOverlappingFieldsWrapper sortedSearchForIndexOfField:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 134, 0, "invalid nil value for '%{public}s'", "field");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  fields = self->_fields;
  v15 = objc_msgSend_count(fields, v4, v5);
  v17 = objc_msgSend_indexOfObject_inSortedRange_options_usingComparator_(fields, v16, v6, 0, v15, 1024, &unk_2885FE8B0);

  return v17;
}

- (id)findFieldWithTextAttributeUUIDString:(id)a3
{
  v6 = a3;
  for (i = 0; i < objc_msgSend_count(self->_fields, v4, v5); ++i)
  {
    v9 = objc_msgSend_objectAtIndexedSubscript_(self->_fields, v8, i);
    v12 = objc_msgSend_textAttributeUUIDString(v9, v10, v11);
    isEqualToString = objc_msgSend_isEqualToString_(v6, v13, v12);

    if (isEqualToString)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)addField:(id)a3
{
  v30 = a3;
  if (!v30)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSWPOverlappingFieldsWrapper addField:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 160, 0, "invalid nil value for '%{public}s'", "field");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  hasField = objc_msgSend_hasField_(self, v4, v30);
  v14 = hasField;
  if (hasField)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPOverlappingFieldsWrapper addField:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 162, 0, "Found field.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPOverlappingFieldsWrapper addField:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 163, 0, "Inserting wrong field kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  if ((v14 & 1) == 0)
  {
    objc_msgSend_addObject_(self->_fields, v22, v30);
  }
}

- (void)removeField:(id)a3
{
  v21 = a3;
  v6 = objc_msgSend_indexOfField_(self, v4, v21);
  if (!v21)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPOverlappingFieldsWrapper removeField:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 171, 0, "invalid nil value for '%{public}s'", "field");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPOverlappingFieldsWrapper removeField:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 172, 0, "Field not found.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  else
  {
    objc_msgSend_removeObjectAtIndex_(self->_fields, v5, v6);
  }
}

- (unint64_t)indexOfField:(id)a3
{
  v6 = a3;
  for (i = 0; ; ++i)
  {
    if (i >= objc_msgSend_count(self->_fields, v4, v5))
    {
      i = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

    v9 = objc_msgSend_objectAtIndexedSubscript_(self->_fields, v8, i);
    v12 = v9;
    if (v9 == v6)
    {
      break;
    }

    v13 = objc_msgSend_textAttributeUUIDString(v9, v10, v11);
    v16 = objc_msgSend_textAttributeUUIDString(v6, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v13, v17, v16);

    if (isEqualToString)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  return i;
}

- (BOOL)isEqualToOverlappingFieldWrapper:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = v4;
  if (self == v4)
  {
    v27 = 1;
  }

  else if (v4)
  {
    v8 = objc_msgSend_fields(v4, v5, v6);
    v11 = objc_msgSend_count(v8, v9, v10);
    v14 = objc_msgSend_fields(self, v12, v13);
    v17 = objc_msgSend_count(v14, v15, v16);

    if (v11 == v17)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = self->_fields;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v29, v33, 16);
      if (v21)
      {
        v22 = 0;
        v23 = *v30;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v18);
            }

            v25 = *(*(&v29 + 1) + 8 * i);
            v26 = objc_msgSend_objectAtIndexedSubscript_(v8, v20, v22, v29);
            LOBYTE(v25) = v25 == v26;

            if ((v25 & 1) == 0)
            {
              v27 = 0;
              goto LABEL_17;
            }

            ++v22;
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v29, v33, 16);
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v27 = 1;
LABEL_17:
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)isEquivalentToObject:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = v4;
  if (v4 == self)
  {
    v35 = 1;
  }

  else if (v4)
  {
    v8 = objc_msgSend_fields(v4, v5, v6);
    v11 = objc_msgSend_count(v8, v9, v10);
    v14 = objc_msgSend_fields(self, v12, v13);
    v17 = objc_msgSend_count(v14, v15, v16);

    if (v11 == v17)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = self->_fields;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v53, v57, 16);
      if (v20)
      {
        v21 = 0;
        v22 = *v54;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v53 + 1) + 8 * i);
            v27 = objc_msgSend_objectAtIndexedSubscript_(v8, v19, v21);
            if (v24 != v27)
            {
              v28 = objc_msgSend_textAttributeUUIDString(v24, v25, v26);
              v31 = objc_msgSend_textAttributeUUIDString(v27, v29, v30);
              v33 = v31;
              if (!v28)
              {
                v36 = MEMORY[0x277D81150];
                v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSWPOverlappingFieldsWrapper isEquivalentToObject:]");
                v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 243, 0, "Expect to have a UUIDString.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
                if (v33)
                {
                }

                else
                {
LABEL_22:
                  v43 = MEMORY[0x277D81150];
                  v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSWPOverlappingFieldsWrapper isEquivalentToObject:]");
                  v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingField.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 244, 0, "Expect to have a UUIDString for other field.");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
                }

LABEL_24:
                v35 = 0;
                goto LABEL_25;
              }

              if (!v31)
              {
                goto LABEL_22;
              }

              isEqualToString = objc_msgSend_isEqualToString_(v28, v32, v31);

              if ((isEqualToString & 1) == 0)
              {
                goto LABEL_24;
              }
            }

            ++v21;
          }

          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v53, v57, 16);
          v35 = 1;
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v35 = 1;
      }

LABEL_25:
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)copyWithContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_fields;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v9)
  {
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = objc_msgSend_copyWithContext_(*(*(&v18 + 1) + 8 * v11), v8, v4, v18);
        objc_msgSend_addObject_(v5, v13, v12);

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v18, v22, 16);
    }

    while (v9);
  }

  v14 = [TSWPOverlappingFieldsWrapper alloc];
  v16 = objc_msgSend_initWithFields_parentStorage_(v14, v15, v5, 0);

  return v16;
}

- (void)resetTextAttributeUUIDString
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_fields;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v8, v4, &unk_288643E30, v10))
        {
          objc_msgSend_resetTextAttributeUUIDString(v8, v4, v9);
        }
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v10, v14, 16);
    }

    while (v5);
  }
}

- (id)description
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, &stru_28860A0F0);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_fields;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v35, v40, 16);
  if (v6)
  {
    v7 = 0;
    v8 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        if (v7)
        {
          objc_msgSend_appendString_(v3, v5, @", ");
        }

        v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%p", v10);
        objc_msgSend_appendString_(v3, v12, v11);

        v7 = 1;
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v35, v40, 16);
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obja = self->_fields;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v13, &v31, v39, 16);
  if (v16)
  {
    v17 = *v32;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(obja);
        }

        v19 = MEMORY[0x277CCACA8];
        v20 = objc_msgSend_textAttributeUUIDString(*(*(&v31 + 1) + 8 * j), v14, v15);
        v22 = objc_msgSend_componentsSeparatedByString_(v20, v21, @"-");
        v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0);
        v26 = objc_msgSend_stringWithFormat_(v19, v25, @"\n\t\t%@", v24);
        objc_msgSend_appendString_(v3, v27, v26);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v14, &v31, v39, 16);
    }

    while (v16);
  }

  return v3;
}

@end