@interface TSWPMergeSmartField
- (TSWPMergeSmartField)initWithContext:(id)context category:(int64_t)category;
- (id)copyWithContext:(id)context;
- (id)scriptTag;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setCategory:(int64_t)category;
- (void)setFieldType:(id)type;
- (void)setGuid:(id)guid;
- (void)setHasCustomText:(BOOL)text;
- (void)setRequiresFollowingWhitespace:(BOOL)whitespace;
- (void)setWhitespace:(id)whitespace;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
@end

@implementation TSWPMergeSmartField

- (void)setFieldType:(id)type
{
  typeCopy = type;
  if (self->_fieldType != typeCopy)
  {
    v9 = typeCopy;
    objc_msgSend_willModify(self, typeCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_fieldType, v8);
    typeCopy = v8;
  }
}

- (void)setCategory:(int64_t)category
{
  if (self->_category != category)
  {
    objc_msgSend_willModify(self, a2, category);
    self->_category = category;
  }
}

- (void)setRequiresFollowingWhitespace:(BOOL)whitespace
{
  if (self->_requiresFollowingWhitespace != whitespace)
  {
    objc_msgSend_willModify(self, a2, whitespace);
    self->_requiresFollowingWhitespace = whitespace;
  }
}

- (void)setHasCustomText:(BOOL)text
{
  if (self->_hasCustomText != text)
  {
    objc_msgSend_willModify(self, a2, text);
    self->_hasCustomText = text;
  }
}

- (void)setWhitespace:(id)whitespace
{
  whitespaceCopy = whitespace;
  if (self->_whitespace != whitespaceCopy)
  {
    v9 = whitespaceCopy;
    objc_msgSend_willModify(self, whitespaceCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_whitespace, v8);
    whitespaceCopy = v8;
  }
}

- (void)setGuid:(id)guid
{
  guidCopy = guid;
  if (self->_guid != guidCopy)
  {
    v9 = guidCopy;
    objc_msgSend_willModify(self, guidCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_guid, v8);
    guidCopy = v8;
  }
}

- (TSWPMergeSmartField)initWithContext:(id)context category:(int64_t)category
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = TSWPMergeSmartField;
  v7 = [(TSWPPlaceholderSmartField *)&v17 initWithContext:contextCopy];
  v10 = v7;
  if (v7)
  {
    v7->_category = category;
    v11 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v8, v9);
    v14 = objc_msgSend_UUIDString(v11, v12, v13);
    guid = v10->_guid;
    v10->_guid = v14;
  }

  return v10;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DC408[158]);

  if (*(v6 + 72))
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
  }

  v44.receiver = self;
  v44.super_class = TSWPMergeSmartField;
  [(TSWPPlaceholderSmartField *)&v44 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(v6 + 16);
  if ((v8 & 0x80) != 0)
  {
    v10 = [TSWPMergeFieldType alloc];
    if (*(v6 + 80))
    {
      v12 = objc_msgSend_initWithArchive_(v10, v11, *(v6 + 80));
    }

    else
    {
      v12 = objc_msgSend_initWithArchive_(v10, v11, &TSWP::_MergeFieldTypeArchive_default_instance_);
    }

    fieldType = self->_fieldType;
    self->_fieldType = v12;
  }

  else
  {
    if (v8)
    {
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      fieldType = objc_msgSend_tsp_initWithProtobufString_(v13, v14, *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      fieldType = 0;
    }

    if ((*(v6 + 16) & 2) != 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = objc_msgSend_tsp_initWithProtobufString_(v16, v17, *(v6 + 32) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v15 = 0;
    }

    if ((*(v6 + 16) & 4) != 0)
    {
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = objc_msgSend_tsp_initWithProtobufString_(v19, v20, *(v6 + 40) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v18 = 0;
    }

    if ((*(v6 + 16) & 0x20) != 0)
    {
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v21 = objc_msgSend_tsp_initWithProtobufString_(v22, v23, *(v6 + 64) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v21 = 0;
    }

    if (fieldType | v21)
    {
      v24 = [TSWPMergeFieldType alloc];
      v26 = objc_msgSend_initWithContactsProperty_key_label_tableKey_(v24, v25, fieldType, v15, v18, v21);
      v27 = self->_fieldType;
      self->_fieldType = v26;
    }
  }

  v30 = *(v6 + 16);
  if ((v30 & 8) != 0)
  {
    v31 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = objc_msgSend_tsp_initWithProtobufString_(v31, v32, *(v6 + 48) & 0xFFFFFFFFFFFFFFFELL);
    whitespace = self->_whitespace;
    self->_whitespace = v33;

    v30 = *(v6 + 16);
  }

  if ((v30 & 0x10) != 0)
  {
    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v37 = objc_msgSend_tsp_initWithProtobufString_(v35, v36, *(v6 + 56) & 0xFFFFFFFFFFFFFFFELL);
    guid = self->_guid;
    self->_guid = v37;
  }

  self->_category = *(v6 + 88);
  self->_requiresFollowingWhitespace = *(v6 + 92);
  self->_hasCustomText = *(v6 + 93);
  if (!self->_guid)
  {
    if (*MEMORY[0x277D81430] != -1)
    {
      sub_276F4F788();
    }

    v39 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v28, v29);
    v42 = objc_msgSend_UUIDString(v39, v40, v41);
    v43 = self->_guid;
    self->_guid = v42;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276DF4B2C, off_2812DC408[158]);

  *(v6 + 16) |= 0x40u;
  v7 = *(v6 + 72);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v8);
    *(v6 + 72) = v7;
  }

  v49.receiver = self;
  v49.super_class = TSWPMergeSmartField;
  [(TSWPPlaceholderSmartField *)&v49 saveToArchive:v7 archiver:archiverCopy];
  fieldType = self->_fieldType;
  if (fieldType)
  {
    v12 = objc_msgSend_contactsProperty(fieldType, v9, v10);
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v17 = objc_msgSend_UTF8String(v14, v15, v16);
      *(v6 + 16) |= 1u;
      sub_276DA9454(__p, v17);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v20 = objc_msgSend_contactsLabel(self->_fieldType, v18, v19);
    v21 = v20;
    if (v20)
    {
      v22 = v20;
      v25 = objc_msgSend_UTF8String(v22, v23, v24);
      *(v6 + 16) |= 4u;
      sub_276DA9454(__p, v25);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v28 = objc_msgSend_contactsKey(self->_fieldType, v26, v27);
    v29 = v28;
    if (v28)
    {
      v30 = v28;
      v33 = objc_msgSend_UTF8String(v30, v31, v32);
      *(v6 + 16) |= 2u;
      sub_276DA9454(__p, v33);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v36 = objc_msgSend_tableKey(self->_fieldType, v34, v35);
    v37 = v36;
    if (v36)
    {
      v38 = v36;
      v41 = objc_msgSend_UTF8String(v38, v39, v40);
      *(v6 + 16) |= 0x20u;
      sub_276DA9454(__p, v41);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v51 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  whitespace = self->_whitespace;
  if (whitespace)
  {
    v43 = objc_msgSend_UTF8String(whitespace, v9, v10);
    *(v6 + 16) |= 8u;
    sub_276DA9454(__p, v43);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }
  }

  guid = self->_guid;
  if (guid)
  {
    v45 = objc_msgSend_UTF8String(guid, v9, v10);
    *(v6 + 16) |= 0x10u;
    sub_276DA9454(__p, v45);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v51 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v46 = *(v6 + 16);
  *(v6 + 88) = self->_category;
  requiresFollowingWhitespace = self->_requiresFollowingWhitespace;
  *(v6 + 16) = v46 | 0x300;
  *(v6 + 92) = requiresFollowingWhitespace;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v9, 11, v6);
  hasCustomText = self->_hasCustomText;
  *(v6 + 16) |= 0x400u;
  *(v6 + 93) = hasCustomText;
}

- (id)copyWithContext:(id)context
{
  v15.receiver = self;
  v15.super_class = TSWPMergeSmartField;
  v4 = [(TSWPPlaceholderSmartField *)&v15 copyWithContext:context];
  v7 = objc_msgSend_copy(self->_fieldType, v5, v6);
  objc_msgSend_setFieldType_(v4, v8, v7);

  objc_msgSend_setCategory_(v4, v9, self->_category);
  objc_msgSend_setRequiresFollowingWhitespace_(v4, v10, self->_requiresFollowingWhitespace);
  objc_msgSend_setHasCustomText_(v4, v11, self->_hasCustomText);
  objc_msgSend_setWhitespace_(v4, v12, self->_whitespace);
  objc_msgSend_setGuid_(v4, v13, self->_guid);
  return v4;
}

- (id)scriptTag
{
  v10.receiver = self;
  v10.super_class = TSWPMergeSmartField;
  scriptTag = [(TSWPPlaceholderSmartField *)&v10 scriptTag];
  if (!scriptTag)
  {
    v6 = objc_msgSend_fieldType(self, v3, v4);
    scriptTag = objc_msgSend_contactsProperty(v6, v7, v8);
  }

  return scriptTag;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_uniqueSmartFields(contextCopy, v5, v6))
  {
    objc_msgSend_willModify(self, v7, v8);
    v11 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v9, v10);
    v14 = objc_msgSend_UUIDString(v11, v12, v13);
    objc_msgSend_setGuid_(self, v15, v14);
  }
}

@end