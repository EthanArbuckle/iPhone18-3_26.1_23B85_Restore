@interface TSWPBookmarkField
+ (id)normalizedNameForName:(id)name;
+ (id)uniqueBookmarkNameFromBase:(id)base excludingNames:(id)names;
- (BOOL)isEquivalentToObject:(id)object;
- (NSString)displayName;
- (NSURL)url;
- (TSWPBookmarkField)initWithContext:(id)context name:(id)name forRange:(BOOL)range hidden:(BOOL)hidden;
- (_NSRange)effectiveRange;
- (_NSRange)range;
- (id)copyWithContext:(id)context;
- (id)copyWithNewName:(id)name;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)resetTextAttributeUUIDString;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPBookmarkField

+ (id)normalizedNameForName:(id)name
{
  nameCopy = name;
  if (qword_280A59240 != -1)
  {
    sub_276F59CE4();
  }

  v6 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v3, v4);
  v8 = objc_msgSend_tsu_stringByReplacingInstancesOfCharactersInSet_withString_(nameCopy, v7, v6, @" ");

  v10 = objc_msgSend_tsu_stringByRemovingCharactersInSet_(v8, v9, qword_280A59238);

  v13 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v11, v12);
  v15 = objc_msgSend_stringByTrimmingCharactersInSet_(v10, v14, v13);

  if (objc_msgSend_length(v15, v16, v17) >= 0x97)
  {
    v19 = objc_msgSend_tsu_substringWithComposedCharacterSequencesTruncatedToLength_(v15, v18, 150);

    v15 = v19;
  }

  return v15;
}

+ (id)uniqueBookmarkNameFromBase:(id)base excludingNames:(id)names
{
  baseCopy = base;
  namesCopy = names;
  v8 = namesCopy;
  if (baseCopy && namesCopy)
  {
    v9 = baseCopy;
    v10 = 2;
    v11 = v9;
    for (i = objc_msgSend_containsObject_(v8, v12, v9); i; i = objc_msgSend_containsObject_(v8, v16, v15))
    {
      v15 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v14, @"%@ %lu", v9, v10);

      ++v10;
      v11 = v15;
    }
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSWPBookmarkField uniqueBookmarkNameFromBase:excludingNames:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPBookmarkField.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 69, 0, "Unexpected nil bookmark name and/or existing names");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    v11 = baseCopy;
  }

  return v11;
}

- (TSWPBookmarkField)initWithContext:(id)context name:(id)name forRange:(BOOL)range hidden:(BOOL)hidden
{
  contextCopy = context;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = TSWPBookmarkField;
  v14 = [(TSWPSmartField *)&v18 initWithContext:contextCopy];
  if (v14)
  {
    v15 = objc_msgSend_copy(nameCopy, v12, v13);
    name = v14->_name;
    v14->_name = v15;

    v14->_forRange = range;
    v14->_hidden = hidden;
  }

  return v14;
}

- (id)copyWithContext:(id)context
{
  v6.receiver = self;
  v6.super_class = TSWPBookmarkField;
  v4 = [(TSWPSmartField *)&v6 copyWithContext:context];
  objc_storeStrong(v4 + 11, self->_name);
  *(v4 + 96) = self->_forRange;
  *(v4 + 97) = self->_hidden;
  return v4;
}

- (id)copyWithNewName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_context(self, v5, v6);
  v9 = objc_msgSend_copyWithContext_(self, v8, v7);

  v12 = objc_msgSend_copy(nameCopy, v10, v11);
  v13 = v9[11];
  v9[11] = v12;

  return v9;
}

- (BOOL)isEquivalentToObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = TSWPBookmarkField;
  if ([(TSWPSmartField *)&v18 isEquivalentToObject:objectCopy])
  {
    v7 = objc_msgSend_name(self, v5, v6);
    objc_opt_class();
    v8 = TSUDynamicCast();
    v11 = objc_msgSend_name(v8, v9, v10);
    v12 = v7;
    v13 = v11;
    v15 = v13;
    if (v12 == v13)
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = 0;
      if (v12 && v13)
      {
        isEqualToString = objc_msgSend_isEqualToString_(v12, v14, v13);
      }
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (_NSRange)range
{
  v9.receiver = self;
  v9.super_class = TSWPBookmarkField;
  range = [(TSWPSmartField *)&v9 range];
  v5 = v4;
  if (objc_msgSend_forRange(self, v4, v6))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = range;
  result.length = v7;
  result.location = v8;
  return result;
}

- (_NSRange)effectiveRange
{
  v4.receiver = self;
  v4.super_class = TSWPBookmarkField;
  range = [(TSWPSmartField *)&v4 range];
  result.length = v3;
  result.location = range;
  return result;
}

- (NSString)displayName
{
  v4 = objc_msgSend_name(self, a2, v2);
  if (!objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend_parentStorage(self, v7, v8);
    v12 = objc_msgSend_range(self, v10, v11);
    v43 = 1;
    v14 = objc_msgSend_plainTextStringFromRange_convertTextualAttachments_includeChildTextStorages_forExport_withLayoutParent_includeVisibleDeletions_rangesToUpdate_(v9, v13, v12, v13, 1, 0, 0, 0, v43, 0);

    v4 = objc_msgSend_normalizedNameForName_(TSWPBookmarkField, v15, v14);

    if (!objc_msgSend_length(v4, v16, v17))
    {
      v20 = objc_msgSend_parentStorage(self, v18, v19);
      v44.receiver = self;
      v44.super_class = TSWPBookmarkField;
      range = [(TSWPSmartField *)&v44 range];
      v23 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v20, v22, range, 0);

      v26 = objc_msgSend_firstNamedAncestor(v23, v24, v25);
      v29 = objc_msgSend_name(v26, v27, v28);

      v32 = objc_msgSend_length(v29, v30, v31);
      if (v32)
      {
        v35 = MEMORY[0x277CCACA8];
        v36 = sub_276E32640(v32, v33, v34);
        v38 = objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"%@ Bookmark", &stru_28860A0F0, @"TSText");
        v40 = objc_msgSend_stringWithFormat_(v35, v39, v38, v29);

        v4 = v40;
      }

      else
      {
        v36 = sub_276E32640(0, v33, v34);
        objc_msgSend_localizedStringForKey_value_table_(v36, v41, @"Bookmark", &stru_28860A0F0, @"TSText");
        v4 = v38 = v4;
      }
    }
  }

  return v4;
}

- (NSURL)url
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = objc_msgSend_textAttributeUUIDString(self, a2, v2);
  v6 = objc_msgSend_stringByAppendingString_(@"#", v5, v4);
  v8 = objc_msgSend_URLWithString_(v3, v7, v6);

  return v8;
}

- (void)resetTextAttributeUUIDString
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPBookmarkField resetTextAttributeUUIDString]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPBookmarkField.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 180, 0, "We should not be resetting the textAttributeUUIDString on a TSWPBookmarkField.");

  v9 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v9, v7, v8);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::SmartFieldArchive>(v8);
    *(archive + 4) = v7;
  }

  v15.receiver = self;
  v15.super_class = TSWPBookmarkField;
  [(TSWPSmartField *)&v15 saveToArchive:v7 archiver:archiverCopy];
  name = self->_name;
  if (name)
  {
    v12 = objc_msgSend_UTF8String(name, v9, v10);
    sub_276F35008(archive, v12);
  }

  forRange = self->_forRange;
  hidden = self->_hidden;
  *(archive + 4) |= 0xCu;
  *(archive + 10) = forRange;
  *(archive + 11) = hidden;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276F35418, off_2812DC408[152]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TSWP::_SmartFieldArchive_default_instance_;
  }

  v16.receiver = self;
  v16.super_class = TSWPBookmarkField;
  [(TSWPSmartField *)&v16 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithDescriptor_(v8, v9, off_2812DC408[152]);

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_tsp_initWithProtobufString_(v12, v13, *(v10 + 24) & 0xFFFFFFFFFFFFFFFELL);
    name = self->_name;
    self->_name = v14;

    v11 = *(v10 + 16);
  }

  if ((v11 & 4) != 0)
  {
    self->_forRange = *(v10 + 40) != 0;
  }

  if ((v11 & 8) != 0)
  {
    self->_hidden = *(v10 + 44) != 0;
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[152]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
}

@end