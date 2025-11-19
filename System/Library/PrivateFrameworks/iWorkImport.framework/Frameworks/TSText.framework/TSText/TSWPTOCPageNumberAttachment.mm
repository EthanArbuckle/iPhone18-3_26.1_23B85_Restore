@interface TSWPTOCPageNumberAttachment
- (id)stringWithPageNumber:(unint64_t)a3 pageCount:(unint64_t)a4 charIndex:(unint64_t)a5;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setBookmarkName:(id)a3;
- (void)setPageNumber:(id)a3;
@end

@implementation TSWPTOCPageNumberAttachment

- (void)setPageNumber:(id)a3
{
  v4 = a3;
  if (self->_pageNumber != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_pageNumber, v8);
    v4 = v8;
  }
}

- (void)setBookmarkName:(id)a3
{
  v4 = a3;
  if (self->_bookmarkName != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_bookmarkName, v8);
    v4 = v8;
  }
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[124]);

  if (*(v6 + 40))
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = &TSWP::_TextualAttachmentArchive_default_instance_;
  }

  v17.receiver = self;
  v17.super_class = TSWPTOCPageNumberAttachment;
  [(TSWPTextualAttachment *)&v17 loadFromArchive:v7 unarchiver:v4];
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v9, v10, *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL);
    pageNumber = self->_pageNumber;
    self->_pageNumber = v11;

    v8 = *(v6 + 16);
  }

  if ((v8 & 2) != 0)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_msgSend_tsp_initWithProtobufString_(v13, v14, *(v6 + 32) & 0xFFFFFFFFFFFFFFFELL);
    bookmarkName = self->_bookmarkName;
    self->_bookmarkName = v15;
  }
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276DFA4C0, off_2812DC408[124]);

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

  v15.receiver = self;
  v15.super_class = TSWPTOCPageNumberAttachment;
  [(TSWPTextualAttachment *)&v15 saveToArchive:v7 archiver:v4];
  pageNumber = self->_pageNumber;
  if (pageNumber)
  {
    v12 = objc_msgSend_UTF8String(pageNumber, v9, v10);
    *(v6 + 16) |= 1u;
    sub_276DA9454(__p, v12);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  bookmarkName = self->_bookmarkName;
  if (bookmarkName)
  {
    v14 = objc_msgSend_UTF8String(bookmarkName, v9, v10);
    *(v6 + 16) |= 2u;
    sub_276DA9454(__p, v14);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (id)stringWithPageNumber:(unint64_t)a3 pageCount:(unint64_t)a4 charIndex:(unint64_t)a5
{
  if (self->_pageNumber)
  {
    return self->_pageNumber;
  }

  else
  {
    return &stru_28860A0F0;
  }
}

@end