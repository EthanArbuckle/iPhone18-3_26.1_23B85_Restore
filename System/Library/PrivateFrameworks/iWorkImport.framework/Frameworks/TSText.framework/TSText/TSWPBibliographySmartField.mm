@interface TSWPBibliographySmartField
+ (BOOL)isValidBibliographyField:(id)field;
- (id)citationSmartFields;
- (id)copyWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setCitationRecords:(id)records;
- (void)setIsLocalizable:(BOOL)localizable;
@end

@implementation TSWPBibliographySmartField

- (void)setCitationRecords:(id)records
{
  recordsCopy = records;
  if (self->_citationRecords != recordsCopy)
  {
    v9 = recordsCopy;
    objc_msgSend_willModify(self, recordsCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_citationRecords, v8);
    recordsCopy = v8;
  }
}

- (void)setIsLocalizable:(BOOL)localizable
{
  if (self->_isLocalizable != localizable)
  {
    objc_msgSend_willModify(self, a2, localizable);
    self->_isLocalizable = localizable;
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DC408[144]);

  if (objc_msgSend_hasPreUFFVersion(unarchiverCopy, v7, v8))
  {
    if (*(v6 + 48))
    {
      v9 = *(v6 + 48);
    }

    else
    {
      v9 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
    }

    if (*(v9 + 4))
    {
      v10 = *(v9 + 4);
    }

    else
    {
      v10 = &TSWP::_SmartFieldArchive_default_instance_;
    }

    v19.receiver = self;
    v19.super_class = TSWPBibliographySmartField;
    [(TSWPSmartField *)&v19 loadFromArchive:v10 unarchiver:unarchiverCopy];
    if ((*(v9 + 16) & 4) != 0)
    {
      self->_isLocalizable = *(v9 + 40);
    }

    objc_msgSend_willModifyForUpgrade(self, v11, v12);
  }

  else
  {
    if (*(v6 + 56))
    {
      v13 = *(v6 + 56);
    }

    else
    {
      v13 = &TSWP::_SmartFieldArchive_default_instance_;
    }

    v18.receiver = self;
    v18.super_class = TSWPBibliographySmartField;
    [(TSWPSmartField *)&v18 loadFromArchive:v13 unarchiver:unarchiverCopy];
    if ((*(v6 + 16) & 4) != 0)
    {
      self->_isLocalizable = *(v6 + 64);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276DF96DC;
  v17[3] = &unk_27A6F4740;
  v17[4] = self;
  v14 = unarchiverCopy;
  v15 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v14, v16, v6 + 24, v15, 0, v17);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276DF9EB0, off_2812DC408[144]);

  *(v6 + 16) |= 2u;
  v7 = *(v6 + 56);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v8);
    *(v6 + 56) = v7;
  }

  v11.receiver = self;
  v11.super_class = TSWPBibliographySmartField;
  [(TSWPSmartField *)&v11 saveToArchive:v7 archiver:archiverCopy];
  isLocalizable = self->_isLocalizable;
  *(v6 + 16) |= 4u;
  *(v6 + 64) = isLocalizable;
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v10, self->_citationRecords, v6 + 24);
}

- (id)copyWithContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = TSWPBibliographySmartField;
  v5 = [(TSWPSmartField *)&v29 copyWithContext:contextCopy];
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_count(self->_citationRecords, v7, v8);
  v11 = objc_msgSend_initWithCapacity_(v6, v10, v9);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = self->_citationRecords;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v25, v30, 16);
  if (v15)
  {
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = objc_msgSend_copyWithContext_(*(*(&v25 + 1) + 8 * v17), v14, contextCopy, v25);
        objc_msgSend_addObject_(v11, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v25, v30, 16);
    }

    while (v15);
  }

  v22 = objc_msgSend_copy(v11, v20, v21);
  v23 = v5[11];
  v5[11] = v22;

  *(v5 + 96) = self->_isLocalizable;
  return v5;
}

- (id)citationSmartFields
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_parentStorage(self, a2, v2);
  v7 = objc_msgSend_parentStorage(self, v5, v6);
  v10 = objc_msgSend_range(v7, v8, v9);
  v47 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(v4, v11, 6, v10, v11);

  v48 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v47;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v50, v54, 16);
  if (v15)
  {
    v16 = *v51;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v20 = TSUDynamicCast();
        if (v20)
        {
          if (objc_msgSend_count(self->_citationRecords, v18, v19))
          {
            v23 = objc_msgSend_citationRecords(v20, v21, v22);
            v26 = objc_msgSend_count(v23, v24, v25) == 0;

            if (!v26)
            {
              objc_opt_class();
              v29 = objc_msgSend_citationRecords(v20, v27, v28);
              v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0);
              v32 = TSUDynamicCast();

              objc_opt_class();
              v34 = objc_msgSend_objectAtIndexedSubscript_(self->_citationRecords, v33, 0);
              v35 = TSUDynamicCast();

              v38 = objc_msgSend_endNoteXML(v32, v36, v37);
              v41 = objc_msgSend_endNoteXML(v35, v39, v40);
              isEqualToString = objc_msgSend_isEqualToString_(v38, v42, v41);

              if (isEqualToString)
              {
                objc_msgSend_addObject_(v48, v44, v20);
              }
            }
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v50, v54, 16);
    }

    while (v15);
  }

  return v48;
}

+ (BOOL)isValidBibliographyField:(id)field
{
  fieldCopy = field;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_range(v4, v5, v6);
    v10 = v9;
    v12 = objc_msgSend_parentStorage(v7, v9, v11);
    v17 = *MEMORY[0x277D81490];
    v14 = objc_msgSend_changeAtCharIndex_outRange_(v12, v13, v8, &v17);
    v15 = !v14 || v17 > v8 || *(&v17 + 1) + v17 < &v10[v8];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end