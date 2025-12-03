@interface TSWPTOCAttachment
- (TSWPTOCInfo)tocInfo;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)loadTOCAttachmentMessage:(const void *)message fromUnarchiver:(id)unarchiver;
- (void)saveTOCAttachmentMessage:(void *)message archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
@end

@implementation TSWPTOCAttachment

- (TSWPTOCInfo)tocInfo
{
  objc_opt_class();
  v5 = objc_msgSend_drawable(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[130]);

  objc_msgSend_loadTOCAttachmentMessage_fromUnarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276F30918, off_2812DC408[130]);

  objc_msgSend_saveTOCAttachmentMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadTOCAttachmentMessage:(const void *)message fromUnarchiver:(id)unarchiver
{
  if (*(message + 3))
  {
    v4 = *(message + 3);
  }

  else
  {
    v4 = &TSWP::_DrawableAttachmentArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSWPTOCAttachment;
  [(TSWPDrawableAttachment *)&v5 loadMessage:v4 fromUnarchiver:unarchiver];
}

- (void)saveTOCAttachmentMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  *(message + 4) |= 1u;
  v7 = *(message + 3);
  if (!v7)
  {
    v8 = *(message + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DrawableAttachmentArchive>(v8);
    *(message + 3) = v7;
  }

  v9.receiver = self;
  v9.super_class = TSWPTOCAttachment;
  [(TSWPDrawableAttachment *)&v9 saveMessage:v7 toArchiver:archiverCopy];
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9);
  objc_msgSend_postNotificationName_object_(v10, v11, @"TSWPTOCAttachmentWillBeAddedNotification", rootCopy);

  v12.receiver = self;
  v12.super_class = TSWPTOCAttachment;
  [(TSWPDrawableAttachment *)&v12 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v9.receiver = self;
  v9.super_class = TSWPTOCAttachment;
  [(TSWPDrawableAttachment *)&v9 wasRemovedFromDocumentRoot:rootCopy];
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6);
  objc_msgSend_postNotificationName_object_(v7, v8, @"TSWPTOCAttachmentWasRemovedNotification", rootCopy);
}

@end