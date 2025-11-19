@interface KNClassicThemeRecord
- (KNClassicThemeRecord)initWithContext:(id)a3;
- (void)addMaster:(id)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setStylesheetRecord:(id)a3;
- (void)setUUID:(id)a3;
@end

@implementation KNClassicThemeRecord

- (void)setUUID:(id)a3
{
  v4 = a3;
  if (self->_UUID != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_UUID, v8);
    v4 = v8;
  }
}

- (void)setStylesheetRecord:(id)a3
{
  v7 = a3;
  if (self->_stylesheetRecord != v7)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_stylesheetRecord, a3);
  }
}

- (KNClassicThemeRecord)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KNClassicThemeRecord;
  v5 = [(KNClassicThemeRecord *)&v9 initWithContext:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    masters = v5->_masters;
    v5->_masters = v6;
  }

  return v5;
}

- (void)addMaster:(id)a3
{
  v7 = a3;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_addObject_(self->_masters, v6, v7);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v7 = *(a3 + 4);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL);
    UUID = self->_UUID;
    self->_UUID = v10;

    v7 = *(a3 + 4);
  }

  if ((v7 & 2) != 0)
  {
    v12 = *(a3 + 7);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_275DC7974;
    v20[3] = &unk_27A697FC8;
    v20[4] = self;
    v13 = v6;
    v14 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v15, v12, v14, 0, v20);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_275DC7980;
  v19[3] = &unk_27A697A10;
  v19[4] = self;
  v16 = v6;
  v17 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v16, v18, a3 + 24, v17, 0, v19);
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v28 = a4;
  v8 = objc_msgSend_UUID(self, v6, v7);
  v11 = objc_msgSend_length(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_UUID(self, v12, v13);
    v15 = v14;
    v18 = objc_msgSend_UTF8String(v15, v16, v17);
    sub_275DC7AF0(a3, v18);
  }

  v19 = objc_msgSend_stylesheetRecord(self, v12, v13);

  if (v19)
  {
    v23 = objc_msgSend_stylesheetRecord(self, v20, v21);
    *(a3 + 4) |= 2u;
    v24 = *(a3 + 7);
    if (!v24)
    {
      v25 = *(a3 + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C8F050](v25);
      *(a3 + 7) = v24;
    }

    objc_msgSend_setStrongReference_message_(v28, v22, v23, v24);
  }

  v26 = objc_msgSend_masters(self, v20, v21);
  objc_msgSend_setStrongReferenceArray_message_(v28, v27, v26, a3 + 24);
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812EA908[24]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_275DC7DD4, off_2812EA908[24]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

@end