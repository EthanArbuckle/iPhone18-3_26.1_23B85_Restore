@interface TSTCellChooserControlSpec
+ (id)cellSpecFromTSKFormat:(id)format;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (id)popupCellSpec:(id)spec startWithFirstItem:(BOOL)item;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateFormatAndValue:(id)value;
- (NSArray)displayChoicesForInspector;
- (TSTCellChooserControlSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTCellChooserControlSpec)initWithPopupModel:(id)model startWithFirstItem:(BOOL)item;
- (id)tskMultipleChoiceListFormat;
- (id)valueForIndex:(unint64_t)index;
- (unint64_t)indexForValue:(id)value;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTCellChooserControlSpec

- (TSTCellChooserControlSpec)initWithPopupModel:(id)model startWithFirstItem:(BOOL)item
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = TSTCellChooserControlSpec;
  v8 = [(TSTCellSpec *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_popupModel, model);
    v9->_startWithFirstItem = item;
  }

  return v9;
}

+ (id)popupCellSpec:(id)spec startWithFirstItem:(BOOL)item
{
  itemCopy = item;
  specCopy = spec;
  v6 = [TSTCellChooserControlSpec alloc];
  Item = objc_msgSend_initWithPopupModel_startWithFirstItem_(v6, v7, specCopy, itemCopy, v8);

  return Item;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v10 = v5;
    if (v5 && self->_startWithFirstItem == objc_msgSend_startWithFirstItem(v5, v6, v7, v8, v9))
    {
      popupModel = self->_popupModel;
      v16 = objc_msgSend_popupModel(v10, v11, v12, v13, v14);
      isEqual = objc_msgSend_isEqual_(popupModel, v17, v16, v18, v19);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (NSArray)displayChoicesForInspector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_displayChoices)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4, v5, v6);
    for (i = 1; ; ++i)
    {
      v13 = objc_msgSend_choices(selfCopy->_popupModel, v7, v8, v9, v10);
      v18 = objc_msgSend_count(v13, v14, v15, v16, v17);

      if (i >= v18)
      {
        break;
      }

      v23 = objc_msgSend_displayStringAtIndex_(selfCopy->_popupModel, v19, i, v21, v22);
      objc_msgSend_addObject_(v11, v24, v23, v25, v26);
    }

    v27 = objc_msgSend_copy(v11, v19, v20, v21, v22);
    displayChoices = selfCopy->_displayChoices;
    selfCopy->_displayChoices = v27;
  }

  objc_sync_exit(selfCopy);

  v29 = selfCopy->_displayChoices;

  return v29;
}

- (unint64_t)indexForValue:(id)value
{
  valueCopy = value;
  v9 = objc_msgSend_choices(self->_popupModel, v5, v6, v7, v8);
  v13 = objc_msgSend_indexOfObject_(v9, v10, valueCopy, v11, v12);

  return v13;
}

- (id)valueForIndex:(unint64_t)index
{
  v6 = objc_msgSend_choices(self->_popupModel, a2, index, v3, v4);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, index, v8, v9);

  return v10;
}

- (BOOL)validateFormatAndValue:(id)value
{
  valueCopy = value;
  v9 = objc_msgSend_popupModel(self, v5, v6, v7, v8);
  v14 = objc_msgSend_objectLocale(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_cellValueWithLocale_(valueCopy, v15, v14, v16, v17);

  LOBYTE(v9) = objc_msgSend_indexForValue_(self, v19, v18, v20, v21) != 0x7FFFFFFFFFFFFFFFLL;
  return v9;
}

+ (id)cellSpecFromTSKFormat:(id)format
{
  v8 = objc_msgSend_asMultipleChoiceListFormat(format, a2, format, v3, v4);
  if (v8)
  {
    v9 = [TSTCellChooserControlSpec alloc];
    v14 = objc_msgSend_popupModel(v8, v10, v11, v12, v13);
    v19 = objc_msgSend_initialValue(v8, v15, v16, v17, v18) == 1;
    Item = objc_msgSend_initWithPopupModel_startWithFirstItem_(v9, v20, v14, v19, v21);
  }

  else
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTCellChooserControlSpec cellSpecFromTSKFormat:]", v6, v7);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellChooserControlSpec.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 135, 0, "invalid nil value for '%{public}s'", "mcFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    Item = 0;
  }

  return Item;
}

- (id)tskMultipleChoiceListFormat
{
  v3 = objc_alloc(MEMORY[0x277D80698]);
  Item = objc_msgSend_startWithFirstItem(self, v4, v5, v6, v7);
  v13 = objc_msgSend_popupModel(self, v9, v10, v11, v12);
  v15 = objc_msgSend_initWithInitialValue_multipleChoiceListFormatID_popupModel_(v3, v14, Item, 0, v13);

  return v15;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSTCellChooserControlSpec alloc];
  v9 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy, v8);

  return v9;
}

- (TSTCellChooserControlSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 16) != 7)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellChooserControlSpec initWithArchive:unarchiver:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellChooserControlSpec.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 159, 0, "Wrong interaction type for a popup.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  Item = objc_msgSend_initWithPopupModel_startWithFirstItem_(self, v6, 0, *(archive + 68), v8);
  v22 = *(archive + 4);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_221259434;
  v28[3] = &unk_278461EE0;
  v23 = Item;
  v29 = v23;
  v24 = unarchiverCopy;
  v26 = objc_opt_class();
  if (v22)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v25, v22, v26, 0, v28);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v25, MEMORY[0x277D80A18], v26, 0, v28);
  }

  return v23;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v10 = objc_msgSend_interactionType(self, v6, v7, v8, v9);
  v13 = *(archive + 4);
  *(archive + 4) = v13 | 0x20;
  *(archive + 16) = v10;
  popupModel = self->_popupModel;
  *(archive + 4) = v13 | 0x22;
  v15 = *(archive + 4);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x223DA0390](v16);
    *(archive + 4) = v15;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v11, popupModel, v15, v12);
  startWithFirstItem = self->_startWithFirstItem;
  *(archive + 4) |= 0x40u;
  *(archive + 68) = startWithFirstItem;
}

@end