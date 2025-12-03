@interface TSWPMergeFieldType
+ (id)skipMergeFieldType;
- (BOOL)isEqual:(id)equal;
- (TSWPMergeFieldType)initWithArchive:(const void *)archive;
- (TSWPMergeFieldType)initWithContactsProperty:(id)property key:(id)key label:(id)label tableKey:(id)tableKey;
- (unint64_t)hash;
- (void)loadFromArchive:(const void *)archive;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSWPMergeFieldType

- (TSWPMergeFieldType)initWithContactsProperty:(id)property key:(id)key label:(id)label tableKey:(id)tableKey
{
  propertyCopy = property;
  keyCopy = key;
  labelCopy = label;
  tableKeyCopy = tableKey;
  if (!(propertyCopy | tableKeyCopy))
  {
    v16 = MEMORY[0x277D81150];
    v26 = labelCopy;
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSWPMergeFieldType initWithContactsProperty:key:label:tableKey:]");
    v17 = v27 = keyCopy;
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPMergeFieldType.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 24, 0, "Invalid nil in TWSPMergeFieldType");

    labelCopy = v26;
    keyCopy = v27;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v28.receiver = self;
  v28.super_class = TSWPMergeFieldType;
  v23 = [(TSWPMergeFieldType *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_contactsProperty, property);
    objc_storeStrong(&v24->_contactsKey, key);
    objc_storeStrong(&v24->_contactsLabel, label);
    objc_storeStrong(&v24->_tableKey, tableKey);
  }

  return v24;
}

+ (id)skipMergeFieldType
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___TSWPMergeFieldType;
  v2 = objc_msgSendSuper2(&v7, sel_alloc);
  v5 = objc_msgSend_init(v2, v3, v4);

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v5 = v3;
  contactsProperty = self->_contactsProperty;
  if (!contactsProperty)
  {
    tableKey = self->_tableKey;
    if (!tableKey)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  objc_msgSend_addObject_(v3, v4, contactsProperty);
  contactsKey = self->_contactsKey;
  if (contactsKey)
  {
    objc_msgSend_addObject_(v5, v4, contactsKey);
  }

  tableKey = self->_contactsLabel;
  if (tableKey)
  {
LABEL_5:
    objc_msgSend_addObject_(v5, v4, tableKey);
  }

LABEL_6:
  isSkipType = objc_msgSend_isSkipType(self, v4, tableKey);
  objc_msgSend_addBool_(v5, v10, isSkipType);
  v13 = objc_msgSend_hashValue(v5, v11, v12);

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(isEqualToString) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (objc_msgSend_isSkipType(self, v6, v7))
      {
        LOBYTE(isEqualToString) = objc_msgSend_isSkipType(v5, v8, v9);
LABEL_38:

        goto LABEL_39;
      }

      contactsProperty = self->_contactsProperty;
      if (!contactsProperty)
      {
        tableKey = self->_tableKey;
        if (tableKey)
        {
          v20 = objc_msgSend_tableKey(v5, v8, v9);
          v21 = tableKey;
          v22 = v20;
          v24 = v22;
          if (v21 == v22)
          {
            LOBYTE(isEqualToString) = 1;
          }

          else if (v22)
          {
            LOBYTE(isEqualToString) = objc_msgSend_isEqualToString_(v21, v23, v22);
          }

          else
          {
            LOBYTE(isEqualToString) = 0;
          }
        }

        else
        {
          LOBYTE(isEqualToString) = 0;
        }

        goto LABEL_38;
      }

      v12 = objc_msgSend_contactsProperty(v5, v8, v9);
      v13 = contactsProperty;
      v14 = v12;
      v16 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        if (!v14)
        {
          LOBYTE(isEqualToString) = 0;
LABEL_34:

LABEL_35:
          goto LABEL_38;
        }

        isEqualToString = objc_msgSend_isEqualToString_(v13, v15, v14);

        if (!isEqualToString)
        {
          goto LABEL_35;
        }
      }

      contactsKey = self->_contactsKey;
      v26 = objc_msgSend_contactsKey(v5, v17, v18);
      v27 = contactsKey;
      v28 = v26;
      v13 = v28;
      if (v27 == v28)
      {
      }

      else
      {
        LOBYTE(isEqualToString) = 0;
        if (!v27 || !v28)
        {
          v34 = v28;
LABEL_33:

          goto LABEL_34;
        }

        isEqualToString = objc_msgSend_isEqualToString_(v27, v29, v28);

        if (!isEqualToString)
        {
          goto LABEL_34;
        }
      }

      contactsLabel = self->_contactsLabel;
      v33 = objc_msgSend_contactsLabel(v5, v30, v31);
      v34 = contactsLabel;
      v35 = v33;
      v27 = v35;
      if (v34 == v35)
      {
        LOBYTE(isEqualToString) = 1;
      }

      else
      {
        LOBYTE(isEqualToString) = 0;
        if (v34 && v35)
        {
          LOBYTE(isEqualToString) = objc_msgSend_isEqualToString_(v34, v36, v35);
        }
      }

      goto LABEL_33;
    }

    LOBYTE(isEqualToString) = 0;
  }

LABEL_39:

  return isEqualToString;
}

- (TSWPMergeFieldType)initWithArchive:(const void *)archive
{
  v8.receiver = self;
  v8.super_class = TSWPMergeFieldType;
  v4 = [(TSWPMergeFieldType *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_loadFromArchive_(v4, v5, archive);
  }

  return v6;
}

- (void)loadFromArchive:(const void *)archive
{
  v5 = *(archive + 4);
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_msgSend_tsp_initWithProtobufString_(v6, v7, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setContactsProperty_(self, v8, v18);

    v5 = *(archive + 4);
  }

  if ((v5 & 2) != 0)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_msgSend_tsp_initWithProtobufString_(v9, v10, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setContactsKey_(self, v11, v19);

    v5 = *(archive + 4);
  }

  if ((v5 & 4) != 0)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, *(archive + 5) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setContactsLabel_(self, v14, v20);

    v5 = *(archive + 4);
  }

  if ((v5 & 8) != 0)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = objc_msgSend_tsp_initWithProtobufString_(v15, v16, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setTableKey_(self, v17, v21);
  }
}

- (void)saveToArchive:(void *)archive
{
  v5 = objc_msgSend_contactsProperty(self, a2, archive);
  if (objc_msgSend_length(v5, v6, v7))
  {
    v10 = v5;
    v8 = objc_msgSend_UTF8String(v10, v11, v12);
    if (v8)
    {
      *(archive + 4) |= 1u;
      sub_276DA9454(__p, v8);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v13 = objc_msgSend_contactsKey(self, v8, v9);
  if (objc_msgSend_length(v13, v14, v15))
  {
    v18 = v13;
    v16 = objc_msgSend_UTF8String(v18, v19, v20);
    if (v16)
    {
      *(archive + 4) |= 2u;
      sub_276DA9454(__p, v16);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v21 = objc_msgSend_contactsLabel(self, v16, v17);
  if (objc_msgSend_length(v21, v22, v23))
  {
    v26 = v21;
    v24 = objc_msgSend_UTF8String(v26, v27, v28);
    if (v24)
    {
      *(archive + 4) |= 4u;
      sub_276DA9454(__p, v24);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v29 = objc_msgSend_tableKey(self, v24, v25);
  if (objc_msgSend_length(v29, v30, v31))
  {
    v32 = v29;
    v35 = objc_msgSend_UTF8String(v32, v33, v34);
    if (v35)
    {
      *(archive + 4) |= 8u;
      sub_276DA9454(__p, v35);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

@end