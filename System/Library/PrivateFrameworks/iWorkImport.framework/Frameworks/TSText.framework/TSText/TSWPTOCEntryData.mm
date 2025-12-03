@interface TSWPTOCEntryData
+ (id)tocEntryDataWithStorage:(id)storage paragraphIndex:(unint64_t)index pageNumber:(unint64_t)number numberFormat:(id)format heading:(id)heading indexedStyle:(id)style indexedListStyle:(id)listStyle indexedListStart:(unint64_t)self0 indexedParagraphLevel:(unint64_t)self1;
- (BOOL)isEqual:(id)equal;
- (NSSet)referencedStyles;
- (NSString)description;
- (TSWPStorage)storage;
- (TSWPTOCEntryData)initWithStorage:(id)storage paragraphIndex:(unint64_t)index pageNumber:(unint64_t)number numberFormat:(id)format heading:(id)heading indexedStyle:(id)style indexedListStyle:(id)listStyle indexedListStart:(unint64_t)self0 indexedParagraphLevel:(unint64_t)self1;
- (unint64_t)hash;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPTOCEntryData

- (TSWPTOCEntryData)initWithStorage:(id)storage paragraphIndex:(unint64_t)index pageNumber:(unint64_t)number numberFormat:(id)format heading:(id)heading indexedStyle:(id)style indexedListStyle:(id)listStyle indexedListStart:(unint64_t)self0 indexedParagraphLevel:(unint64_t)self1
{
  obj = storage;
  formatCopy = format;
  headingCopy = heading;
  styleCopy = style;
  listStyleCopy = listStyle;
  if (!styleCopy)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSWPTOCEntryData initWithStorage:paragraphIndex:pageNumber:numberFormat:heading:indexedStyle:indexedListStyle:indexedListStart:indexedParagraphLevel:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCEntryData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 36, 0, "invalid nil value for '%{public}s'", "indexedStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  v27 = objc_msgSend_context(styleCopy, v18, v19);
  v38.receiver = self;
  v38.super_class = TSWPTOCEntryData;
  v28 = [(TSWPTOCEntryData *)&v38 initWithContext:v27];

  if (v28)
  {
    objc_storeWeak(&v28->_storage, obj);
    v28->_paragraphIndex = index;
    v28->_pageNumber = number;
    v31 = objc_msgSend_copy(formatCopy, v29, v30);
    numberFormat = v28->_numberFormat;
    v28->_numberFormat = v31;

    objc_storeStrong(&v28->_heading, heading);
    objc_storeStrong(&v28->_indexedStyle, style);
    objc_storeStrong(&v28->_indexedListStyle, listStyle);
    v28->_indexedListStart = start;
    v28->_indexedParagraphLevel = level;
  }

  return v28;
}

+ (id)tocEntryDataWithStorage:(id)storage paragraphIndex:(unint64_t)index pageNumber:(unint64_t)number numberFormat:(id)format heading:(id)heading indexedStyle:(id)style indexedListStyle:(id)listStyle indexedListStart:(unint64_t)self0 indexedParagraphLevel:(unint64_t)self1
{
  storageCopy = storage;
  formatCopy = format;
  headingCopy = heading;
  styleCopy = style;
  listStyleCopy = listStyle;
  v21 = objc_alloc(objc_opt_class());
  started = objc_msgSend_initWithStorage_paragraphIndex_pageNumber_numberFormat_heading_indexedStyle_indexedListStyle_indexedListStart_indexedParagraphLevel_(v21, v22, storageCopy, index, number, formatCopy, headingCopy, styleCopy, listStyleCopy, start, level);

  return started;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_paragraphIndex(self, v5, v6);
  v10 = objc_msgSend_pageNumber(self, v8, v9);
  v13 = objc_msgSend_heading(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v3, v14, @"(%@*)%p par:%u  / page %u heading: %@", v4, self, v7, v10, v13);

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7 && (v8 = objc_msgSend_paragraphIndex(self, v5, v6), v8 == objc_msgSend_paragraphIndex(v7, v9, v10)) && (v13 = objc_msgSend_pageNumber(self, v11, v12), v13 == objc_msgSend_pageNumber(v7, v14, v15)))
  {
    v18 = objc_msgSend_numberFormat(self, v16, v17);
    v23 = objc_msgSend_numberFormat(v7, v19, v20);
    if (v18 == v23)
    {
      v26 = objc_msgSend_heading(self, v21, v22);
      v29 = objc_msgSend_heading(v7, v27, v28);
      if (objc_msgSend_isEqualToString_(v26, v30, v29))
      {
        v33 = objc_msgSend_indexedStyle(self, v31, v32);
        v38 = objc_msgSend_indexedStyle(v7, v34, v35);
        if (v33 == v38)
        {
          v59 = objc_msgSend_indexedListStyle(self, v36, v37);
          v58 = objc_msgSend_indexedListStyle(v7, v39, v40);
          if (v59 == v58 && (v43 = objc_msgSend_indexedListStart(self, v41, v42), v43 == objc_msgSend_indexedListStart(v7, v44, v45)) && (v48 = objc_msgSend_indexedParagraphLevel(self, v46, v47), v48 == objc_msgSend_indexedParagraphLevel(v7, v49, v50)))
          {
            v53 = objc_msgSend_storage(self, v51, v52);
            v57 = objc_msgSend_storage(v7, v54, v55);
            isEqual = objc_msgSend_isEqual_(v53, v56, v57);
          }

          else
          {
            isEqual = 0;
          }
        }

        else
        {
          isEqual = 0;
        }
      }

      else
      {
        isEqual = 0;
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  v6 = objc_msgSend_storage(self, v4, v5);
  objc_msgSend_addObject_(v3, v7, v6);

  v10 = objc_msgSend_paragraphIndex(self, v8, v9);
  objc_msgSend_addUnsignedInteger_(v3, v11, v10);
  v14 = objc_msgSend_pageNumber(self, v12, v13);
  objc_msgSend_addUnsignedInteger_(v3, v15, v14);
  v18 = objc_msgSend_numberFormat(self, v16, v17);
  objc_msgSend_addObject_(v3, v19, v18);

  v22 = objc_msgSend_heading(self, v20, v21);
  objc_msgSend_addObject_(v3, v23, v22);

  v26 = objc_msgSend_hashValue(v3, v24, v25);
  return v26;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9 = *(archive + 15);
  self->_paragraphIndex = *(archive + 14);
  self->_pageNumber = v9;
  v10 = *(archive + 4);
  if ((v10 & 2) != 0)
  {
    v12 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL);
    numberFormat = self->_numberFormat;
    self->_numberFormat = v12;
  }

  else if ((v10 & 0x40) != 0)
  {
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    numberFormat = objc_msgSend_pageNumberFormatNameForType_(TSWPItemNumbering, v13, *(archive + 16));
    v16 = objc_msgSend_copy(numberFormat, v14, v15);
    v17 = self->_numberFormat;
    self->_numberFormat = v16;
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v6, v7);
    numberFormat = self->_numberFormat;
    self->_numberFormat = @"decimal";
  }

  v19 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v18, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL);
  heading = self->_heading;
  self->_heading = v19;

  v21 = *(archive + 5);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_276E2DB18;
  v31[3] = &unk_27A6F4A08;
  v31[4] = self;
  v22 = unarchiverCopy;
  v24 = objc_opt_class();
  if (v21)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v22, v23, v21, v24, 0, v31);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v22, v23, MEMORY[0x277D80A18], v24, 0, v31);
  }

  v25 = *(archive + 4);
  if ((v25 & 8) != 0)
  {
    v26 = *(archive + 6);
    if (*(v26 + 16))
    {
      if (*(v26 + 24))
      {
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = sub_276E2DB2C;
        v30[3] = &unk_27A6F4A30;
        v30[4] = self;
        v27 = v22;
        v28 = objc_opt_class();
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v27, v29, v26, v28, 0, v30);

        v25 = *(archive + 4);
      }
    }
  }

  self->_indexedListStart = *(archive + 17) & (v25 >> 7);
  self->_indexedParagraphLevel = *(archive + 18) & (v25 << 23 >> 31);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[78]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  paragraphIndex = self->_paragraphIndex;
  if (HIDWORD(paragraphIndex))
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPTOCEntryData saveToArchive:archiver:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCEntryData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 120, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    LODWORD(paragraphIndex) = -1;
  }

  v8 = *(archive + 4) | 0x10;
  *(archive + 4) = v8;
  *(archive + 14) = paragraphIndex;
  pageNumber = self->_pageNumber;
  if (HIDWORD(pageNumber))
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPTOCEntryData saveToArchive:archiver:]");
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCEntryData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 121, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42);
    v8 = *(archive + 4);
    LODWORD(pageNumber) = -1;
  }

  *(archive + 4) = v8 | 0x20;
  *(archive + 15) = pageNumber;
  v10 = objc_msgSend_pageNumberFormatTypeForName_(TSWPItemNumbering, v6, self->_numberFormat);
  v11 = *(archive + 4);
  *(archive + 4) = v11 | 0x40;
  *(archive + 16) = v10;
  numberFormat = self->_numberFormat;
  *(archive + 4) = v11 | 0x42;
  v13 = google::protobuf::internal::ArenaStringPtr::Mutable();
  objc_msgSend_tsp_saveToProtobufString_(numberFormat, v14, v13);
  heading = self->_heading;
  *(archive + 4) |= 1u;
  v16 = google::protobuf::internal::ArenaStringPtr::Mutable();
  objc_msgSend_tsp_saveToProtobufString_(heading, v17, v16);
  indexedStyle = self->_indexedStyle;
  *(archive + 4) |= 4u;
  v20 = *(archive + 5);
  if (!v20)
  {
    v21 = *(archive + 1);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = MEMORY[0x277CA3250](v21);
    *(archive + 5) = v20;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v18, indexedStyle, v20);
  indexedListStyle = self->_indexedListStyle;
  if (indexedListStyle)
  {
    *(archive + 4) |= 8u;
    v24 = *(archive + 6);
    if (!v24)
    {
      v25 = *(archive + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277CA3250](v25);
      *(archive + 6) = v24;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v22, indexedListStyle, v24);
  }

  indexedListStart = self->_indexedListStart;
  if (HIDWORD(indexedListStart))
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPTOCEntryData saveToArchive:archiver:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCEntryData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 130, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
    LODWORD(indexedListStart) = -1;
  }

  v27 = *(archive + 4) | 0x80;
  *(archive + 4) = v27;
  *(archive + 17) = indexedListStart;
  indexedParagraphLevel = self->_indexedParagraphLevel;
  if (HIDWORD(indexedParagraphLevel))
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSWPTOCEntryData saveToArchive:archiver:]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCEntryData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 131, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
    v27 = *(archive + 4);
    LODWORD(indexedParagraphLevel) = -1;
  }

  *(archive + 4) = v27 | 0x100;
  *(archive + 18) = indexedParagraphLevel;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276E2E6D8, off_2812DC408[78]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  mapperCopy = mapper;
  objc_msgSend_willModify(self, v5, v6);
  objc_msgSend_pushMappingContext_(mapperCopy, v7, self);
  v10 = objc_msgSend_mappedStyleForStyle_(mapperCopy, v8, self->_indexedStyle);
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSWPTOCEntryData adoptStylesheet:withMapper:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCEntryData.mm");
    v15 = TSUObjectReferenceDescription();
    v16 = TSUObjectReferenceDescription();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v14, 145, 0, "Bad style mapping %@ -> %@", v15, v16);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  objc_opt_class();
  v20 = TSUDynamicCast();
  indexedStyle = self->_indexedStyle;
  self->_indexedStyle = v20;

  v24 = objc_msgSend_mappedStyleForStyle_(mapperCopy, v22, self->_indexedListStyle);
  if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSWPTOCEntryData adoptStylesheet:withMapper:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTOCEntryData.mm");
    v29 = TSUObjectReferenceDescription();
    v30 = TSUObjectReferenceDescription();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v28, 150, 0, "Bad style mapping %@ -> %@", v29, v30);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  objc_opt_class();
  v34 = TSUDynamicCast();
  indexedListStyle = self->_indexedListStyle;
  self->_indexedListStyle = v34;

  objc_msgSend_popMappingContext_(mapperCopy, v36, self);
}

- (NSSet)referencedStyles
{
  v4 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2);
  v6 = v4;
  indexedStyle = self->_indexedStyle;
  if (indexedStyle)
  {
    objc_msgSend_addObject_(v4, v5, indexedStyle);
  }

  indexedListStyle = self->_indexedListStyle;
  if (indexedListStyle)
  {
    objc_msgSend_addObject_(v6, v5, indexedListStyle);
  }

  return v6;
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_indexedStyle)
  {
    objc_opt_class();
    v4 = blockCopy[2](blockCopy, self->_indexedStyle);
    v5 = TSUDynamicCast();
    indexedStyle = self->_indexedStyle;
    self->_indexedStyle = v5;
  }

  if (self->_indexedListStyle)
  {
    objc_opt_class();
    v7 = blockCopy[2](blockCopy, self->_indexedListStyle);
    v8 = TSUDynamicCast();
    indexedListStyle = self->_indexedListStyle;
    self->_indexedListStyle = v8;
  }
}

- (TSWPStorage)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  return WeakRetained;
}

@end