@interface TSWPTOCAttachment
- (TSWPTOCInfo)tocInfo;
- (void)loadFromUnarchiver:(id)a3;
- (void)loadTOCAttachmentMessage:(const void *)a3 fromUnarchiver:(id)a4;
- (void)saveTOCAttachmentMessage:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
@end

@implementation TSWPTOCAttachment

- (TSWPTOCInfo)tocInfo
{
  objc_opt_class();
  v5 = objc_msgSend_drawable(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DC408[130]);

  objc_msgSend_loadTOCAttachmentMessage_fromUnarchiver_(self, v6, v5, v7);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276F30918, off_2812DC408[130]);

  objc_msgSend_saveTOCAttachmentMessage_archiver_(self, v6, v5, v7);
}

- (void)loadTOCAttachmentMessage:(const void *)a3 fromUnarchiver:(id)a4
{
  if (*(a3 + 3))
  {
    v4 = *(a3 + 3);
  }

  else
  {
    v4 = &TSWP::_DrawableAttachmentArchive_default_instance_;
  }

  v5.receiver = self;
  v5.super_class = TSWPTOCAttachment;
  [(TSWPDrawableAttachment *)&v5 loadMessage:v4 fromUnarchiver:a4];
}

- (void)saveTOCAttachmentMessage:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  *(a3 + 4) |= 1u;
  v7 = *(a3 + 3);
  if (!v7)
  {
    v8 = *(a3 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DrawableAttachmentArchive>(v8);
    *(a3 + 3) = v7;
  }

  v9.receiver = self;
  v9.super_class = TSWPTOCAttachment;
  [(TSWPDrawableAttachment *)&v9 saveMessage:v7 toArchiver:v6];
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9);
  objc_msgSend_postNotificationName_object_(v10, v11, @"TSWPTOCAttachmentWillBeAddedNotification", v6);

  v12.receiver = self;
  v12.super_class = TSWPTOCAttachment;
  [(TSWPDrawableAttachment *)&v12 willBeAddedToDocumentRoot:v6 dolcContext:v7];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSWPTOCAttachment;
  [(TSWPDrawableAttachment *)&v9 wasRemovedFromDocumentRoot:v4];
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6);
  objc_msgSend_postNotificationName_object_(v7, v8, @"TSWPTOCAttachmentWasRemovedNotification", v4);
}

@end