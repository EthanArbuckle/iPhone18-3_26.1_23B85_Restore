@interface TSWPTextStylePreset
- (TSWPTextStylePreset)initWithContext:(id)a3 presetIdentifier:(id)a4 paragraphStyle:(id)a5 listStyle:(id)a6;
- (id)referencedStyles;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSWPTextStylePreset

- (TSWPTextStylePreset)initWithContext:(id)a3 presetIdentifier:(id)a4 paragraphStyle:(id)a5 listStyle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = TSWPTextStylePreset;
  v16 = [(TSWPTextStylePreset *)&v20 initWithContext:v10];
  if (v16)
  {
    v17 = objc_msgSend_copy(v11, v14, v15);
    presetIdentifier = v16->_presetIdentifier;
    v16->_presetIdentifier = v17;

    objc_storeStrong(&v16->_paragraphStyle, a5);
    objc_storeStrong(&v16->_listStyle, a6);
  }

  return v16;
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  v8 = *(a3 + 4);
  if (v8)
  {
    v9 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(a3 + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setPresetIdentifier_(self, v10, v9);

    v8 = *(a3 + 4);
  }

  if ((v8 & 2) != 0)
  {
    v11 = *(a3 + 4);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276DEDB50;
    v20[3] = &unk_27A6F4A08;
    v20[4] = self;
    v12 = v7;
    v13 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v12, v14, v11, v13, 0, v20);

    v8 = *(a3 + 4);
  }

  if ((v8 & 4) != 0)
  {
    v15 = *(a3 + 5);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_276DEDB5C;
    v19[3] = &unk_27A6F4A30;
    v19[4] = self;
    v16 = v7;
    v17 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v18, v15, v17, 0, v19);
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v23 = a4;
  v8 = objc_msgSend_presetIdentifier(self, v6, v7);
  if (v8)
  {
    *(a3 + 4) |= 1u;
    v9 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsp_saveToProtobufString_(v8, v10, v9);
  }

  v14 = objc_msgSend_paragraphStyle(self, v11, v12);
  if (v14)
  {
    *(a3 + 4) |= 2u;
    v15 = *(a3 + 4);
    if (!v15)
    {
      v16 = *(a3 + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277CA3250](v16);
      *(a3 + 4) = v15;
    }

    objc_msgSend_setStrongReference_message_(v23, v13, v14, v15);
  }

  v20 = objc_msgSend_listStyle(self, v17, v18);
  if (v20)
  {
    *(a3 + 4) |= 4u;
    v21 = *(a3 + 5);
    if (!v21)
    {
      v22 = *(a3 + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277CA3250](v22);
      *(a3 + 5) = v21;
    }

    objc_msgSend_setStrongReference_message_(v23, v19, v20, v21);
  }
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276DEDFC4, off_2812DC408[46]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812DC408[46]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (id)referencedStyles
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  v6 = v4;
  paragraphStyle = self->_paragraphStyle;
  if (paragraphStyle)
  {
    objc_msgSend_addObject_(v4, v5, paragraphStyle);
  }

  if (self->_listStyle)
  {
    objc_msgSend_addObject_(v6, v5, self->_paragraphStyle);
  }

  return v6;
}

@end