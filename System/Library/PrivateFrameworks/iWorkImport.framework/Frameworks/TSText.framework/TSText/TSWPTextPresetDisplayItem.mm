@interface TSWPTextPresetDisplayItem
- (TSWPTextPresetDisplayItem)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSWPTextPresetDisplayItem)initWithPreset:(id)preset displayName:(id)name;
- (id)description;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSWPTextPresetDisplayItem

- (TSWPTextPresetDisplayItem)initWithPreset:(id)preset displayName:(id)name
{
  presetCopy = preset;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = TSWPTextPresetDisplayItem;
  v9 = [(TSWPTextPresetDisplayItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preset, preset);
    v13 = objc_msgSend_copy(nameCopy, v11, v12);
    displayName = v10->_displayName;
    v10->_displayName = v13;
  }

  return v10;
}

- (TSWPTextPresetDisplayItem)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v19.receiver = self;
  v19.super_class = TSWPTextPresetDisplayItem;
  v7 = [(TSWPTextPresetDisplayItem *)&v19 init];
  v9 = v7;
  if (v7)
  {
    if ((*(archive + 16) & 2) != 0)
    {
      v10 = *(archive + 4);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_276D12574;
      v17[3] = &unk_27A6F3560;
      v18 = v7;
      v11 = unarchiverCopy;
      v12 = objc_opt_class();
      objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v11, v13, v10, v12, 0, v17);
    }

    v14 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v8, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
    objc_msgSend_setDisplayName_(v9, v15, v14);
  }

  return v9;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = objc_msgSend_preset(self, v6, v7);
  *(archive + 4) |= 2u;
  v10 = *(archive + 4);
  if (!v10)
  {
    v11 = *(archive + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277CA3250](v11);
    *(archive + 4) = v10;
  }

  objc_msgSend_setWeakReference_message_(archiverCopy, v8, v9, v10);

  v14 = objc_msgSend_displayName(self, v12, v13);
  v15 = v14;
  v18 = objc_msgSend_UTF8String(v15, v16, v17);
  sub_276D12678(archive, v18);
}

- (id)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_displayName(self, v5, v6);
  v9 = objc_msgSend_descriptionWithObject_class_format_(v3, v8, self, v4, @" name=%@", v7);

  v12 = objc_msgSend_preset(self, v10, v11);
  objc_msgSend_addFieldValue_(v9, v13, v12);

  v16 = objc_msgSend_descriptionString(v9, v14, v15);

  return v16;
}

@end