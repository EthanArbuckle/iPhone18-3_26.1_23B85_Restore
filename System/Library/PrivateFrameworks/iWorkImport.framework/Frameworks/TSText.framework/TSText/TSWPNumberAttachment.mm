@interface TSWPNumberAttachment
+ (Class)classForUnarchiver:(id)a3;
- (TSWPNumberAttachment)initWithContext:(id)a3;
- (id)copyWithContext:(id)a3;
- (id)stringEquivalent;
- (id)stringEquivalentWithNumberProvider:(id)a3;
- (id)stringWithNumber:(unint64_t)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)performTemplateLocalization:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSWPNumberAttachment

+ (Class)classForUnarchiver:(id)a3
{
  v4 = a3;
  if (objc_opt_class() == a1)
  {
    v5 = v4;
    google::protobuf::internal::AssignDescriptors();
    v7 = objc_msgSend_messageWithDescriptor_(v5, v6, off_2812DC408[134]);

    if ((*(v7 + 16) & 4) != 0)
    {
      v9 = *(v7 + 40);
      if ((*(v9 + 16) & 2) != 0)
      {
        v12 = *(v9 + 32);
        if (v12 < 2)
        {
          a1 = objc_opt_class();
          goto LABEL_5;
        }

        if (v12 == 2)
        {
          v13 = MEMORY[0x277D81150];
          v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSWPNumberAttachment classForUnarchiver:]");
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPNumberAttachment.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 50, 0, "Footnote archived as numbered attachment.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
        }
      }
    }

    a1 = 0;
  }

LABEL_5:
  v10 = a1;

  return a1;
}

- (TSWPNumberAttachment)initWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = TSWPNumberAttachment;
  v3 = [(TSWPAttachment *)&v8 initWithContext:a3];
  v4 = v3;
  if (v3)
  {
    numberFormat = v3->_numberFormat;
    v3->_numberFormat = @"decimal";

    stringValue = v4->_stringValue;
    v4->_stringValue = &stru_28860A0F0;
  }

  return v4;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithContext_(v5, v6, v4);
  v10 = objc_msgSend_copy(self->_numberFormat, v8, v9);
  v11 = v7[10];
  v7[10] = v10;

  v14 = objc_msgSend_copy(self->_stringValue, v12, v13);
  v15 = v7[9];
  v7[9] = v14;

  return v7;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  numberFormat = self->_numberFormat;
  self->_numberFormat = @"decimal";

  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v4, v6, v7);
  v9 = v4;
  if (hasPreUFFVersion)
  {
    google::protobuf::internal::AssignDescriptors();
    v11 = objc_msgSend_messageWithDescriptor_(v9, v10, off_2812DC408[122]);

    v34.receiver = self;
    v34.super_class = TSWPNumberAttachment;
    [(TSWPTextualAttachment *)&v34 loadFromArchive:v11 unarchiver:v9];
    objc_msgSend_willModifyForUpgrade(self, v12, v13);
    goto LABEL_14;
  }

  google::protobuf::internal::AssignDescriptors();
  v15 = objc_msgSend_messageWithDescriptor_(v9, v14, off_2812DC408[134]);

  if (*(v15 + 40))
  {
    v16 = *(v15 + 40);
  }

  else
  {
    v16 = &TSWP::_TextualAttachmentArchive_default_instance_;
  }

  v33.receiver = self;
  v33.super_class = TSWPNumberAttachment;
  [(TSWPTextualAttachment *)&v33 loadFromArchive:v16 unarchiver:v9];
  v19 = *(v15 + 16);
  if ((v19 & 2) != 0)
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = objc_msgSend_tsp_initWithProtobufString_(v26, v27, *(v15 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v21 = self->_numberFormat;
    self->_numberFormat = v28;
    goto LABEL_10;
  }

  if ((v19 & 8) != 0)
  {
    objc_msgSend_willModifyForUpgrade(self, v17, v18);
    v21 = objc_msgSend_pageNumberFormatNameForType_(TSWPItemNumbering, v20, *(v15 + 48));
    v24 = objc_msgSend_copy(v21, v22, v23);
    v25 = self->_numberFormat;
    self->_numberFormat = v24;

LABEL_10:
  }

  if ((*(v15 + 16) & 1) != 0 && objc_msgSend_sourceType(v9, v17, v18) == 2)
  {
    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v31 = objc_msgSend_tsp_initWithProtobufString_(v29, v30, *(v15 + 24) & 0xFFFFFFFFFFFFFFFELL);
    stringValue = self->_stringValue;
    self->_stringValue = v31;
  }

LABEL_14:
}

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

  v21.receiver = self;
  v21.super_class = TSWPNumberAttachment;
  [(TSWPTextualAttachment *)&v21 saveToArchive:v7 archiver:v4];
  v10 = objc_msgSend_pageNumberFormatTypeForName_(TSWPItemNumbering, v9, self->_numberFormat);
  *(v6 + 16) |= 8u;
  *(v6 + 48) = v10;
  v13 = objc_msgSend_tsp_protobufString(self->_numberFormat, v11, v12);
  *(v6 + 16) |= 2u;
  sub_276DA9454(__p, v13);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (objc_msgSend_length(self->_stringValue, v14, v15))
  {
    if (objc_msgSend_targetType(v4, v16, v17) == 1)
    {
      v20 = objc_msgSend_tsp_protobufString(self->_stringValue, v18, v19);
      *(v6 + 16) |= 1u;
      sub_276DA9454(__p, v20);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

- (id)stringEquivalent
{
  if (self->_stringValue)
  {
    return self->_stringValue;
  }

  else
  {
    return &stru_28860A0F0;
  }
}

- (id)stringEquivalentWithNumberProvider:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_pageCountForAttachment_(v4, v5, self);
    v11 = objc_msgSend_pageNumberForAttachment_(v7, v9, self);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPNumberAttachment stringEquivalentWithNumberProvider:]");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPNumberAttachment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 132, 0, "Invalid page count");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPNumberAttachment stringEquivalentWithNumberProvider:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPNumberAttachment.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 133, 0, "Invalid page number");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    v26 = objc_msgSend_stringWithPageNumber_pageCount_charIndex_(self, v10, v11, v8, 0);
  }

  else
  {
    v26 = objc_msgSend_stringEquivalent(self, v5, v6);
  }

  v27 = v26;

  return v27;
}

- (id)stringWithNumber:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  v5 = objc_msgSend_numberFormat(self, a2, a3);
  v7 = objc_msgSend_stringFromNumber_forFormatName_(TSWPItemNumbering, v6, v4, v5);

  v10 = objc_msgSend_parentStorage(self, v8, v9);
  v13 = objc_msgSend_wpKind(v10, v11, v12);

  if (v13 != 1)
  {
    objc_storeStrong(&self->_stringValue, v7);
  }

  return v7;
}

- (void)performTemplateLocalization:(id)a3
{
  v7 = objc_msgSend_locale(a3, a2, a3);
  v5 = objc_msgSend_defaultPageNumberFormatForLocale_(TSWPItemNumbering, v4, v7);
  objc_msgSend_setNumberFormat_(self, v6, v5);
}

@end