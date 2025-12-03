@interface KNClassicThemeRecord
- (KNClassicThemeRecord)initWithContext:(id)context;
- (void)addMaster:(id)master;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setStylesheetRecord:(id)record;
- (void)setUUID:(id)d;
@end

@implementation KNClassicThemeRecord

- (void)setUUID:(id)d
{
  dCopy = d;
  if (self->_UUID != dCopy)
  {
    v9 = dCopy;
    objc_msgSend_willModify(self, dCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_UUID, v8);
    dCopy = v8;
  }
}

- (void)setStylesheetRecord:(id)record
{
  recordCopy = record;
  if (self->_stylesheetRecord != recordCopy)
  {
    objc_msgSend_willModify(self, v5, v6);
    objc_storeStrong(&self->_stylesheetRecord, record);
  }
}

- (KNClassicThemeRecord)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = KNClassicThemeRecord;
  v5 = [(KNClassicThemeRecord *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    masters = v5->_masters;
    v5->_masters = v6;
  }

  return v5;
}

- (void)addMaster:(id)master
{
  masterCopy = master;
  objc_msgSend_willModify(self, v4, v5);
  objc_msgSend_addObject_(self->_masters, v6, masterCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(archive + 4);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v8, v9, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    UUID = self->_UUID;
    self->_UUID = v10;

    v7 = *(archive + 4);
  }

  if ((v7 & 2) != 0)
  {
    v12 = *(archive + 7);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_275DC7974;
    v20[3] = &unk_27A697FC8;
    v20[4] = self;
    v13 = unarchiverCopy;
    v14 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v15, v12, v14, 0, v20);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_275DC7980;
  v19[3] = &unk_27A697A10;
  v19[4] = self;
  v16 = unarchiverCopy;
  v17 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v16, v18, archive + 24, v17, 0, v19);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_UUID(self, v6, v7);
  v11 = objc_msgSend_length(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_UUID(self, v12, v13);
    v15 = v14;
    v18 = objc_msgSend_UTF8String(v15, v16, v17);
    sub_275DC7AF0(archive, v18);
  }

  v19 = objc_msgSend_stylesheetRecord(self, v12, v13);

  if (v19)
  {
    v23 = objc_msgSend_stylesheetRecord(self, v20, v21);
    *(archive + 4) |= 2u;
    v24 = *(archive + 7);
    if (!v24)
    {
      v25 = *(archive + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C8F050](v25);
      *(archive + 7) = v24;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v22, v23, v24);
  }

  v26 = objc_msgSend_masters(self, v20, v21);
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v27, v26, archive + 24);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[24]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275DC7DD4, off_2812EA908[24]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end