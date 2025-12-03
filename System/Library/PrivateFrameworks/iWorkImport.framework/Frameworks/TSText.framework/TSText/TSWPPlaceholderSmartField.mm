@interface TSWPPlaceholderSmartField
- (TSWPPlaceholderSmartField)initWithContext:(id)context;
- (id)copyWithContext:(id)context;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setIsLocalizable:(BOOL)localizable;
- (void)setScriptTag:(id)tag;
@end

@implementation TSWPPlaceholderSmartField

- (void)setIsLocalizable:(BOOL)localizable
{
  if (self->_localizable != localizable)
  {
    objc_msgSend_willModify(self, a2, localizable);
    self->_localizable = localizable;
  }
}

- (void)setScriptTag:(id)tag
{
  tagCopy = tag;
  if (self->_scriptTag != tagCopy)
  {
    v9 = tagCopy;
    objc_msgSend_willModify(self, tagCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_scriptTag, v8);
    tagCopy = v8;
  }
}

- (TSWPPlaceholderSmartField)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSWPPlaceholderSmartField;
  return [(TSWPSmartField *)&v4 initWithContext:context];
}

- (id)copyWithContext:(id)context
{
  v15.receiver = self;
  v15.super_class = TSWPPlaceholderSmartField;
  v4 = [(TSWPSmartField *)&v15 copyWithContext:context];
  v4[88] = objc_msgSend_isLocalizable(self, v5, v6);
  v9 = objc_msgSend_scriptTag(self, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);
  v13 = *(v4 + 12);
  *(v4 + 12) = v12;

  return v4;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_preUFFVersion(unarchiverCopy, v4, v5) >= 0x2CBDA3978)
  {
    v6 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v8 = objc_msgSend_messageWithDescriptor_(v6, v7, off_2812DC408[140]);

    objc_msgSend_loadFromArchive_unarchiver_(self, v9, v8, v6);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276DDAF60, off_2812DC408[140]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TSWP::_SmartFieldArchive_default_instance_;
  }

  v13.receiver = self;
  v13.super_class = TSWPPlaceholderSmartField;
  [(TSWPSmartField *)&v13 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(archive + 4);
  if ((v8 & 4) != 0)
  {
    self->_localizable = *(archive + 40);
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v9, v10, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    scriptTag = self->_scriptTag;
    self->_scriptTag = v11;
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v8);
    *(archive + 4) = v7;
  }

  v14.receiver = self;
  v14.super_class = TSWPPlaceholderSmartField;
  [(TSWPSmartField *)&v14 saveToArchive:v7 archiver:archiverCopy];
  localizable = self->_localizable;
  *(archive + 4) |= 4u;
  *(archive + 40) = localizable;
  scriptTag = self->_scriptTag;
  if (scriptTag)
  {
    v13 = objc_msgSend_UTF8String(scriptTag, v9, v10);
    sub_276DDAE38(archive, v13);
  }
}

@end