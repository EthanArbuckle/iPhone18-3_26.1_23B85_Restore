@interface TSWPFilenameSmartField
- (id)copyWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setDisplayFlags:(unsigned int)flags;
@end

@implementation TSWPFilenameSmartField

- (void)setDisplayFlags:(unsigned int)flags
{
  if (self->_displayFlags != flags)
  {
    objc_msgSend_willModify(self, a2, *&flags);
    self->_displayFlags = flags;
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DC408[154]);

  if (*(v6 + 24))
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
  }

  v8.receiver = self;
  v8.super_class = TSWPFilenameSmartField;
  [(TSWPPlaceholderSmartField *)&v8 loadFromArchive:v7 unarchiver:unarchiverCopy];
  self->_displayFlags = *(v6 + 32);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276DF14A4, off_2812DC408[154]);

  *(v6 + 16) |= 1u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v8);
    *(v6 + 24) = v7;
  }

  v10.receiver = self;
  v10.super_class = TSWPFilenameSmartField;
  [(TSWPPlaceholderSmartField *)&v10 saveToArchive:v7 archiver:archiverCopy];
  displayFlags = self->_displayFlags;
  *(v6 + 16) |= 2u;
  *(v6 + 32) = displayFlags;
}

- (id)copyWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = TSWPFilenameSmartField;
  result = [(TSWPPlaceholderSmartField *)&v5 copyWithContext:context];
  *(result + 26) = self->_displayFlags;
  return result;
}

@end