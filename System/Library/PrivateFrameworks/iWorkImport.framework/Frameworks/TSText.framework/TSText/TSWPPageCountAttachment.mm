@interface TSWPPageCountAttachment
- (id)stringWithPageNumber:(unint64_t)a3 pageCount:(unint64_t)a4 charIndex:(unint64_t)a5;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSWPPageCountAttachment

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276DD0A2C, off_2812DC408[134]);

  *(v6 + 16) |= 4u;
  v7 = *(v6 + 40);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TextualAttachmentArchive>(v8);
    *(v6 + 40) = v7;
  }

  v9.receiver = self;
  v9.super_class = TSWPPageCountAttachment;
  [(TSWPNumberAttachment *)&v9 saveToArchiver:v4];
  *(v7 + 16) |= 2u;
  *(v7 + 32) = 1;
}

- (id)stringWithPageNumber:(unint64_t)a3 pageCount:(unint64_t)a4 charIndex:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = TSWPPageCountAttachment;
  v5 = [(TSWPNumberAttachment *)&v7 stringWithNumber:a4];

  return v5;
}

@end