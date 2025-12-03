@interface TSCHReferenceLineNonStyleItem
- (BOOL)isEqual:(id)equal;
- (TSCHReferenceLineNonStyleItem)initWithNonStyle:(id)style uuid:(id)uuid;
- (id)description;
- (id)initFromUnarchiver:(id)unarchiver message:(const void *)message;
- (void)saveToArchiver:(id)archiver message:(void *)message;
@end

@implementation TSCHReferenceLineNonStyleItem

- (TSCHReferenceLineNonStyleItem)initWithNonStyle:(id)style uuid:(id)uuid
{
  styleCopy = style;
  uuidCopy = uuid;
  v18.receiver = self;
  v18.super_class = TSCHReferenceLineNonStyleItem;
  v9 = [(TSCHReferenceLineNonStyleItem *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nonStyle, style);
    v15 = objc_msgSend_copy(uuidCopy, v11, v12, v13, v14);
    UUID = v10->_UUID;
    v10->_UUID = v15;
  }

  return v10;
}

- (id)description
{
  v55.receiver = self;
  v55.super_class = TSCHReferenceLineNonStyleItem;
  v3 = [(TSCHReferenceLineNonStyleItem *)&v55 description];
  v8 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);

  v9 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_uuid(self, v10, v11, v12, v13);
  v19 = objc_msgSend_UUIDString(v14, v15, v16, v17, v18);
  v24 = objc_msgSend_stringWithFormat_(v9, v20, v21, v22, v23, @" uuid: %@", v19);
  v29 = objc_msgSend_length(v8, v25, v26, v27, v28);
  objc_msgSend_insertString_atIndex_(v8, v30, v31, v32, v33, v24, v29 - 1);

  v34 = MEMORY[0x277CCACA8];
  v39 = objc_msgSend_nonStyle(self, v35, v36, v37, v38);
  v44 = objc_msgSend_stringWithFormat_(v34, v40, v41, v42, v43, @" nonStyle: %@", v39);
  v49 = objc_msgSend_length(v8, v45, v46, v47, v48);
  objc_msgSend_insertString_atIndex_(v8, v50, v51, v52, v53, v44, v49 - 1);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v35 = 1;
  }

  else if (equalCopy && (v6 = objc_opt_class(), (objc_msgSend_isMemberOfClass_(v5, v7, v8, v9, v10, v6) & 1) != 0))
  {
    v11 = v5;
    v16 = objc_msgSend_uuid(self, v12, v13, v14, v15);
    v21 = objc_msgSend_uuid(v11, v17, v18, v19, v20);
    v22 = v16;
    v24 = v21;
    if (v22 | v24 && (isEqual = objc_msgSend_isEqual_(v22, v23, v25, v26, v27, v24), v24, v22, !isEqual))
    {
      v35 = 0;
    }

    else
    {
      v29 = objc_msgSend_nonStyle(self, v23, v25, v26, v27);
      v34 = objc_msgSend_nonStyle(v11, v30, v31, v32, v33);
      v35 = v29 == v34;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)initFromUnarchiver:(id)unarchiver message:(const void *)message
{
  unarchiverCopy = unarchiver;
  v25.receiver = self;
  v25.super_class = TSCHReferenceLineNonStyleItem;
  v7 = [(TSCHReferenceLineNonStyleItem *)&v25 init];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    if (*(message + 4))
    {
      v13 = objc_msgSend_tsp_initWithMessage_(v8, v9, v10, v11, v12, *(message + 4));
    }

    else
    {
      v13 = objc_msgSend_tsp_initWithMessage_(v8, v9, v10, v11, v12, MEMORY[0x277D809E0]);
    }

    UUID = v7->_UUID;
    v7->_UUID = v13;

    v15 = *(message + 3);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2761EA9B4;
    v23[3] = &unk_27A6B6A70;
    v24 = v7;
    v16 = unarchiverCopy;
    v18 = objc_opt_class();
    if (v15)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v17, v19, v20, v21, v15, v18, 0, v23);
    }

    else
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v17, v19, v20, v21, MEMORY[0x277D80A18], v18, 0, v23);
    }
  }

  return v7;
}

- (void)saveToArchiver:(id)archiver message:(void *)message
{
  archiverCopy = archiver;
  UUID = self->_UUID;
  *(message + 4) |= 2u;
  v11 = *(message + 4);
  if (!v11)
  {
    v12 = *(message + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x277C97B40](v12);
    *(message + 4) = v11;
  }

  objc_msgSend_tsp_saveToMessage_(UUID, v6, v7, v8, v9, v11);
  nonStyle = self->_nonStyle;
  *(message + 4) |= 1u;
  v18 = *(message + 3);
  if (!v18)
  {
    v19 = *(message + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x277C97B90](v19);
    *(message + 3) = v18;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v13, v14, v15, v16, nonStyle, v18);
}

@end