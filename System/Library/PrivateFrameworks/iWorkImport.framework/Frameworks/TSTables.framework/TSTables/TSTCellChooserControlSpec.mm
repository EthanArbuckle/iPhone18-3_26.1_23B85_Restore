@interface TSTCellChooserControlSpec
+ (id)cellSpecFromTSKFormat:(id)a3;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (id)popupCellSpec:(id)a3 startWithFirstItem:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateFormatAndValue:(id)a3;
- (NSArray)displayChoicesForInspector;
- (TSTCellChooserControlSpec)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (TSTCellChooserControlSpec)initWithPopupModel:(id)a3 startWithFirstItem:(BOOL)a4;
- (id)tskMultipleChoiceListFormat;
- (id)valueForIndex:(unint64_t)a3;
- (unint64_t)indexForValue:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTCellChooserControlSpec

- (TSTCellChooserControlSpec)initWithPopupModel:(id)a3 startWithFirstItem:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSTCellChooserControlSpec;
  v8 = [(TSTCellSpec *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_popupModel, a3);
    v9->_startWithFirstItem = a4;
  }

  return v9;
}

+ (id)popupCellSpec:(id)a3 startWithFirstItem:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [TSTCellChooserControlSpec alloc];
  Item = objc_msgSend_initWithPopupModel_startWithFirstItem_(v6, v7, v5, v4, v8);

  return Item;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_displayChoices)
  {
    v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4, v5, v6);
    for (i = 1; ; ++i)
    {
      v13 = objc_msgSend_choices(v2->_popupModel, v7, v8, v9, v10);
      v18 = objc_msgSend_count(v13, v14, v15, v16, v17);

      if (i >= v18)
      {
        break;
      }

      v23 = objc_msgSend_displayStringAtIndex_(v2->_popupModel, v19, i, v21, v22);
      objc_msgSend_addObject_(v11, v24, v23, v25, v26);
    }

    v27 = objc_msgSend_copy(v11, v19, v20, v21, v22);
    displayChoices = v2->_displayChoices;
    v2->_displayChoices = v27;
  }

  objc_sync_exit(v2);

  v29 = v2->_displayChoices;

  return v29;
}

- (unint64_t)indexForValue:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_choices(self->_popupModel, v5, v6, v7, v8);
  v13 = objc_msgSend_indexOfObject_(v9, v10, v4, v11, v12);

  return v13;
}

- (id)valueForIndex:(unint64_t)a3
{
  v6 = objc_msgSend_choices(self->_popupModel, a2, a3, v3, v4);
  v10 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, a3, v8, v9);

  return v10;
}

- (BOOL)validateFormatAndValue:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_popupModel(self, v5, v6, v7, v8);
  v14 = objc_msgSend_objectLocale(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_cellValueWithLocale_(v4, v15, v14, v16, v17);

  LOBYTE(v9) = objc_msgSend_indexForValue_(self, v19, v18, v20, v21) != 0x7FFFFFFFFFFFFFFFLL;
  return v9;
}

+ (id)cellSpecFromTSKFormat:(id)a3
{
  v8 = objc_msgSend_asMultipleChoiceListFormat(a3, a2, a3, v3, v4);
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

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSTCellChooserControlSpec alloc];
  v9 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5, v8);

  return v9;
}

- (TSTCellChooserControlSpec)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v9 = a4;
  if (*(a3 + 16) != 7)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellChooserControlSpec initWithArchive:unarchiver:]", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellChooserControlSpec.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 159, 0, "Wrong interaction type for a popup.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  Item = objc_msgSend_initWithPopupModel_startWithFirstItem_(self, v6, 0, *(a3 + 68), v8);
  v22 = *(a3 + 4);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_221259434;
  v28[3] = &unk_278461EE0;
  v23 = Item;
  v29 = v23;
  v24 = v9;
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

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v18 = a4;
  v10 = objc_msgSend_interactionType(self, v6, v7, v8, v9);
  v13 = *(a3 + 4);
  *(a3 + 4) = v13 | 0x20;
  *(a3 + 16) = v10;
  popupModel = self->_popupModel;
  *(a3 + 4) = v13 | 0x22;
  v15 = *(a3 + 4);
  if (!v15)
  {
    v16 = *(a3 + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x223DA0390](v16);
    *(a3 + 4) = v15;
  }

  objc_msgSend_setStrongReference_message_(v18, v11, popupModel, v15, v12);
  startWithFirstItem = self->_startWithFirstItem;
  *(a3 + 4) |= 0x40u;
  *(a3 + 68) = startWithFirstItem;
}

@end