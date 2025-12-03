@interface TSPUnknownFieldObjectReference
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSPUnknownFieldObjectReference

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v24.receiver = self;
  v24.super_class = TSPUnknownFieldObjectReference;
  [(TSPUnknownField *)&v24 loadFromUnarchiver:unarchiverCopy];
  v7 = *(self->super._fieldSet.__ptr_ + 1) - *self->super._fieldSet.__ptr_;
  if ((v7 >> 4) >= 1)
  {
    objc_msgSend_strongReferences(unarchiverCopy, v5, v6);
    v9 = 0;
    memset(v23, 0, sizeof(v23));
    v10 = (v7 >> 4) & 0x7FFFFFFF;
    memset(v22, 0, sizeof(v22));
    do
    {
      v11 = *self->super._fieldSet.__ptr_ + v9;
      if (*(v11 + 4) == 3)
      {
        operator new();
      }

      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPUnknownFieldObjectReference loadFromUnarchiver:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPUnknownField.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 137, 0, "Invalid unknown object reference field type: %d", *(v11 + 4));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
      v9 += 16;
      --v10;
    }

    while (v10);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276AD3C80;
    v21[3] = &unk_27A6E4220;
    v21[4] = self;
    objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(unarchiverCopy, v8, v23, 0, v21);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276AD3C94;
    v20[3] = &unk_27A6E4220;
    v20[4] = self;
    objc_msgSend_readRepeatedUnknownLazyReferenceMessage_ownershipMode_completion_(unarchiverCopy, v19, v22, 1, v20);
    sub_276A07EA8(v22);
    sub_276A07EA8(v23);
  }
}

- (void)saveToArchiver:(id)archiver
{
  v38 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v35.receiver = self;
  v35.super_class = TSPUnknownFieldObjectReference;
  [(TSPUnknownField *)&v35 saveToArchiver:archiverCopy];
  if (objc_msgSend_count(self->_strongObjects, v5, v6))
  {
    TSP::Reference::Reference(v34, 0);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = objc_msgSend_references(self->_strongObjects, v9, v10);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v30, v37, 16);
    if (v14)
    {
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v11);
          }

          objc_msgSend_setStrongLazyReference_message_(archiverCopy, v13, *(*(&v30 + 1) + 8 * v16++), v34);
        }

        while (v14 != v16);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v30, v37, 16);
      }

      while (v14);
    }

    TSP::Reference::~Reference(v34);
  }

  if (objc_msgSend_count(self->_weakObjects, v7, v8))
  {
    TSP::Reference::Reference(v34, 0);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = objc_msgSend_references(self->_weakObjects, v17, v18, 0);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v26, v36, 16);
    if (v22)
    {
      v23 = *v27;
      do
      {
        v24 = 0;
        do
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v19);
          }

          objc_msgSend_setWeakLazyReference_message_(archiverCopy, v21, *(*(&v26 + 1) + 8 * v24++), v34);
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v26, v36, 16);
      }

      while (v22);
    }

    TSP::Reference::~Reference(v34);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v20.receiver = self;
  v20.super_class = TSPUnknownFieldObjectReference;
  v4 = [(TSPUnknownField *)&v20 debugDescription];
  v7 = objc_msgSend_references(self->_strongObjects, v5, v6);
  v10 = objc_msgSend_debugDescription(v7, v8, v9);
  v13 = objc_msgSend_references(self->_weakObjects, v11, v12);
  v16 = objc_msgSend_debugDescription(v13, v14, v15);
  v18 = objc_msgSend_stringWithFormat_(v3, v17, @"%@ strong_objects: %@; weak_objects: %@", v4, v10, v16);;

  return v18;
}

@end