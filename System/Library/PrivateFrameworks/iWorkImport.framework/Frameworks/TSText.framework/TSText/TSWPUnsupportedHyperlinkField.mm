@interface TSWPUnsupportedHyperlinkField
+ (Class)classForUnarchiver:(id)a3;
- (id)copyWithContext:(id)a3;
- (id)initFromSmartField:(id)a3 href:(id)a4 hrefOriginal:(id)a5;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setHref:(id)a3;
- (void)setHrefOriginal:(id)a3;
@end

@implementation TSWPUnsupportedHyperlinkField

- (void)setHref:(id)a3
{
  v4 = a3;
  if (self->_href != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_href, v8);
    v4 = v8;
  }
}

- (void)setHrefOriginal:(id)a3
{
  v4 = a3;
  if (self->_hrefOriginal != v4)
  {
    v9 = v4;
    objc_msgSend_willModify(self, v4, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_hrefOriginal, v8);
    v4 = v8;
  }
}

+ (Class)classForUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[142]);

  if (*(v6 + 16))
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v7, v8, *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL);
    if (v10)
    {
      v11 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v9, v10);
      v13 = objc_msgSend_schemeFromURL_(TSWPHyperlinkField, v12, v11);
      if (v13 <= 0xA && ((1 << v13) & 0x610) != 0)
      {
        a1 = objc_opt_class();
      }
    }
  }

  v15 = a1;

  return a1;
}

- (id)initFromSmartField:(id)a3 href:(id)a4 hrefOriginal:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_initFromSmartField_(self, v11, v8);
  if (v14)
  {
    v15 = objc_msgSend_copy(v9, v12, v13);
    v16 = v14[13];
    v14[13] = v15;

    v19 = objc_msgSend_copy(v10, v17, v18);
    v20 = v14[14];
    v14[14] = v19;
  }

  return v14;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812DC408[142]);

  if (*(v6 + 40))
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = &TSWP::_PlaceholderSmartFieldArchive_default_instance_;
  }

  v15.receiver = self;
  v15.super_class = TSWPUnsupportedHyperlinkField;
  [(TSWPPlaceholderSmartField *)&v15 loadFromArchive:v7 unarchiver:v4];
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = objc_msgSend_tsp_initWithProtobufString_(v9, v10, *(v6 + 24) & 0xFFFFFFFFFFFFFFFELL);
    if (v11)
    {
      objc_storeStrong(&self->_href, v11);
    }

    v8 = *(v6 + 16);
  }

  if ((v8 & 2) != 0)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, *(v6 + 32) & 0xFFFFFFFFFFFFFFFELL);
    if (v14)
    {
      objc_storeStrong(&self->_hrefOriginal, v14);
    }
  }
}

- (void)saveToArchiver:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276DEFF0C, off_2812DC408[142]);

  *(v6 + 16) |= 4u;
  v7 = *(v6 + 40);
  if (!v7)
  {
    v8 = *(v6 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PlaceholderSmartFieldArchive>(v8);
    *(v6 + 40) = v7;
  }

  v23.receiver = self;
  v23.super_class = TSWPUnsupportedHyperlinkField;
  [(TSWPPlaceholderSmartField *)&v23 saveToArchive:v7 archiver:v4];
  v11 = objc_msgSend_href(self, v9, v10);
  v12 = v11 == 0;

  if (!v12)
  {
    v15 = objc_msgSend_href(self, v13, v14);
    sub_276D9F478(v26, v15);

    v16 = __s;
    *(v6 + 16) |= 1u;
    sub_276DA9454(__p, v16);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27)
    {
      free(v27);
    }
  }

  v17 = objc_msgSend_hrefOriginal(self, v13, v14);
  v18 = v17 == 0;

  if (!v18)
  {
    v21 = objc_msgSend_hrefOriginal(self, v19, v20);
    sub_276D9F478(v26, v21);

    v22 = __s;
    *(v6 + 16) |= 2u;
    sub_276DA9454(__p, v22);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27)
    {
      free(v27);
    }
  }
}

- (id)copyWithContext:(id)a3
{
  v20.receiver = self;
  v20.super_class = TSWPUnsupportedHyperlinkField;
  v4 = [(TSWPPlaceholderSmartField *)&v20 copyWithContext:a3];
  v7 = objc_msgSend_href(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v11 = v4[13];
  v4[13] = v10;

  v14 = objc_msgSend_hrefOriginal(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  v18 = v4[14];
  v4[14] = v17;

  return v4;
}

@end