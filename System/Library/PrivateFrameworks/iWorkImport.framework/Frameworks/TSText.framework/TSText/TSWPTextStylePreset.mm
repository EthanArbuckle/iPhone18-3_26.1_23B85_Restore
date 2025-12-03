@interface TSWPTextStylePreset
- (TSWPTextStylePreset)initWithContext:(id)context presetIdentifier:(id)identifier paragraphStyle:(id)style listStyle:(id)listStyle;
- (id)referencedStyles;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPTextStylePreset

- (TSWPTextStylePreset)initWithContext:(id)context presetIdentifier:(id)identifier paragraphStyle:(id)style listStyle:(id)listStyle
{
  contextCopy = context;
  identifierCopy = identifier;
  styleCopy = style;
  listStyleCopy = listStyle;
  v20.receiver = self;
  v20.super_class = TSWPTextStylePreset;
  v16 = [(TSWPTextStylePreset *)&v20 initWithContext:contextCopy];
  if (v16)
  {
    v17 = objc_msgSend_copy(identifierCopy, v14, v15);
    presetIdentifier = v16->_presetIdentifier;
    v16->_presetIdentifier = v17;

    objc_storeStrong(&v16->_paragraphStyle, style);
    objc_storeStrong(&v16->_listStyle, listStyle);
  }

  return v16;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v8 = *(archive + 4);
  if (v8)
  {
    v9 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setPresetIdentifier_(self, v10, v9);

    v8 = *(archive + 4);
  }

  if ((v8 & 2) != 0)
  {
    v11 = *(archive + 4);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_276DEDB50;
    v20[3] = &unk_27A6F4A08;
    v20[4] = self;
    v12 = unarchiverCopy;
    v13 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v12, v14, v11, v13, 0, v20);

    v8 = *(archive + 4);
  }

  if ((v8 & 4) != 0)
  {
    v15 = *(archive + 5);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_276DEDB5C;
    v19[3] = &unk_27A6F4A30;
    v19[4] = self;
    v16 = unarchiverCopy;
    v17 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v16, v18, v15, v17, 0, v19);
  }
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v8 = objc_msgSend_presetIdentifier(self, v6, v7);
  if (v8)
  {
    *(archive + 4) |= 1u;
    v9 = google::protobuf::internal::ArenaStringPtr::Mutable();
    objc_msgSend_tsp_saveToProtobufString_(v8, v10, v9);
  }

  v14 = objc_msgSend_paragraphStyle(self, v11, v12);
  if (v14)
  {
    *(archive + 4) |= 2u;
    v15 = *(archive + 4);
    if (!v15)
    {
      v16 = *(archive + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277CA3250](v16);
      *(archive + 4) = v15;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v13, v14, v15);
  }

  v20 = objc_msgSend_listStyle(self, v17, v18);
  if (v20)
  {
    *(archive + 4) |= 4u;
    v21 = *(archive + 5);
    if (!v21)
    {
      v22 = *(archive + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277CA3250](v22);
      *(archive + 5) = v21;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v19, v20, v21);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276DEDFC4, off_2812DC408[46]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[46]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
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