@interface TSWPCitationSmartField
+ (BOOL)isValidCitationField:(id)a3;
- (id)copyWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setCitationRecords:(id)a3;
- (void)setIsLocalizable:(BOOL)a3;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPCitationSmartField

- (void)setCitationRecords:(id)a3
{
  v4 = a3;
  if (self->_citationRecords != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_citationRecords, v8);
    v4 = v8;
  }
}

- (void)setIsLocalizable:(BOOL)a3
{
  if (self->_isLocalizable != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_isLocalizable = a3;
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[148]);

  if (objc_msgSend_hasPreUFFVersion(v4, v7, v8))
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
    v19.super_class = TSWPCitationSmartField;
    [(TSWPSmartField *)&v19 loadFromArchive:v10 unarchiver:v4];
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
    v18.super_class = TSWPCitationSmartField;
    [(TSWPSmartField *)&v18 loadFromArchive:v13 unarchiver:v4];
    if ((*(v6 + 16) & 4) != 0)
    {
      self->_isLocalizable = *(v6 + 64);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276DF8E7C;
  v17[3] = &unk_27A6F4740;
  v17[4] = self;
  v14 = v4;
  v15 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v14, v16, v6 + 24, v15, 0, v17);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276DF938C, off_2812DC408[148]);

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
  v11.super_class = TSWPCitationSmartField;
  [(TSWPSmartField *)&v11 saveToArchive:v7 archiver:v4];
  isLocalizable = self->_isLocalizable;
  *(v6 + 16) |= 4u;
  *(v6 + 64) = isLocalizable;
  objc_msgSend_setStrongReferenceArray_message_(v4, v10, self->_citationRecords, v6 + 24);
}

- (id)copyWithContext:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TSWPCitationSmartField;
  v5 = [(TSWPSmartField *)&v24 copyWithContext:v4];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_citationRecords;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v25, 16);
  if (v10)
  {
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = objc_msgSend_copyWithContext_(*(*(&v20 + 1) + 8 * v12), v9, v4, v20);
        objc_msgSend_addObject_(v6, v14, v13);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v25, 16);
    }

    while (v10);
  }

  v17 = objc_msgSend_copy(v6, v15, v16);
  v18 = v5[11];
  v5[11] = v17;

  *(v5 + 96) = self->_isLocalizable;
  return v5;
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSWPCitationSmartField;
  [(TSWPSmartField *)&v9 willBeRemovedFromDocumentRoot:v4];
  v7 = objc_msgSend_editingDelegate(self, v5, v6);
  objc_msgSend_citationSmartField_willBeRemovedFromDocument_(v7, v8, self, v4);
}

+ (BOOL)isValidCitationField:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_range(v4, v5, v6);
    v10 = v9;
    v12 = objc_msgSend_parentStorage(v7, v9, v11);
    v20 = *MEMORY[0x277D81490];
    v14 = objc_msgSend_changeAtCharIndex_outRange_(v12, v13, v8, &v20);
    v17 = v14;
    v18 = v20 > v8 || !v14 || *(&v20 + 1) + v20 < &v10[v8] || (objc_msgSend_isDeletion(v14, v15, v16) & 1) == 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end