@interface TSWPPlaceholderSmartField
- (TSWPPlaceholderSmartField)initWithContext:(id)a3;
- (id)copyWithContext:(id)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)setIsLocalizable:(BOOL)a3;
- (void)setScriptTag:(id)a3;
@end

@implementation TSWPPlaceholderSmartField

- (void)setIsLocalizable:(BOOL)a3
{
  if (self->_localizable != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->_localizable = a3;
  }
}

- (void)setScriptTag:(id)a3
{
  v4 = a3;
  if (self->_scriptTag != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_scriptTag, v8);
    v4 = v8;
  }
}

- (TSWPPlaceholderSmartField)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWPPlaceholderSmartField;
  return [(TSWPSmartField *)&v4 initWithContext:a3];
}

- (id)copyWithContext:(id)a3
{
  v15.receiver = self;
  v15.super_class = TSWPPlaceholderSmartField;
  v4 = [(TSWPSmartField *)&v15 copyWithContext:a3];
  v4[88] = objc_msgSend_isLocalizable(self, v5, v6);
  v9 = objc_msgSend_scriptTag(self, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);
  v13 = *(v4 + 12);
  *(v4 + 12) = v12;

  return v4;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  if (objc_msgSend_preUFFVersion(v10, v4, v5) >= 0x2CBDA3978)
  {
    v6 = v10;
    google::protobuf::internal::AssignDescriptors();
    v8 = objc_msgSend_messageWithDescriptor_(v6, v7, off_2812DC408[140]);

    objc_msgSend_loadFromArchive_unarchiver_(self, v9, v8, v6);
  }
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276DDAF60, off_2812DC408[140]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 4))
  {
    v7 = *(a3 + 4);
  }

  else
  {
    v7 = &TSWP::_SmartFieldArchive_default_instance_;
  }

  v13.receiver = self;
  v13.super_class = TSWPPlaceholderSmartField;
  [(TSWPSmartField *)&v13 loadFromArchive:v7 unarchiver:v6];
  v8 = *(a3 + 4);
  if ((v8 & 4) != 0)
  {
    self->_localizable = *(a3 + 40);
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v9, v10, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
    scriptTag = self->_scriptTag;
    self->_scriptTag = v11;
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 2u;
  v7 = *(a3 + 4);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v8);
    *(a3 + 4) = v7;
  }

  v14.receiver = self;
  v14.super_class = TSWPPlaceholderSmartField;
  [(TSWPSmartField *)&v14 saveToArchive:v7 archiver:v6];
  localizable = self->_localizable;
  *(a3 + 4) |= 4u;
  *(a3 + 40) = localizable;
  scriptTag = self->_scriptTag;
  if (scriptTag)
  {
    v13 = objc_msgSend_UTF8String(scriptTag, v9, v10);
    sub_276DDAE38(a3, v13);
  }
}

@end