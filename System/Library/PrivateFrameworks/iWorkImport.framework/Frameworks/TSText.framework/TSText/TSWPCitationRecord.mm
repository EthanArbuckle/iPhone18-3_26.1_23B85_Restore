@interface TSWPCitationRecord
- (BOOL)isRecordEqual:(id)equal;
- (NSString)cacheKey;
- (id)authorYearString;
- (id)copyWithContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)p_endNoteXMLForComparison;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_copyPropertiesToObject:(id)object;
- (void)saveToArchiver:(id)archiver;
- (void)setAuthorsString:(id)string;
- (void)setEndNoteXML:(id)l;
- (void)setHideAuthorNames:(BOOL)names;
- (void)setHideYear:(BOOL)year;
- (void)setPageRange:(id)range;
- (void)setPrefix:(id)prefix;
- (void)setSuffix:(id)suffix;
- (void)setTitle:(id)title;
- (void)setType:(id)type;
- (void)setYear:(id)year;
@end

@implementation TSWPCitationRecord

- (void)setEndNoteXML:(id)l
{
  lCopy = l;
  if (self->_endNoteXML != lCopy)
  {
    v9 = lCopy;
    objc_msgSend_willModify(self, lCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_endNoteXML, v8);
    lCopy = v8;
  }
}

- (void)setHideAuthorNames:(BOOL)names
{
  if (self->_hideAuthorNames != names)
  {
    objc_msgSend_willModify(self, a2, names);
    self->_hideAuthorNames = names;
  }
}

- (void)setHideYear:(BOOL)year
{
  if (self->_hideYear != year)
  {
    objc_msgSend_willModify(self, a2, year);
    self->_hideYear = year;
  }
}

- (void)setPageRange:(id)range
{
  rangeCopy = range;
  if (self->_pageRange != rangeCopy)
  {
    v9 = rangeCopy;
    objc_msgSend_willModify(self, rangeCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_pageRange, v8);
    rangeCopy = v8;
  }
}

- (void)setPrefix:(id)prefix
{
  prefixCopy = prefix;
  if (self->_prefix != prefixCopy)
  {
    v9 = prefixCopy;
    objc_msgSend_willModify(self, prefixCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_prefix, v8);
    prefixCopy = v8;
  }
}

- (void)setSuffix:(id)suffix
{
  suffixCopy = suffix;
  if (self->_suffix != suffixCopy)
  {
    v9 = suffixCopy;
    objc_msgSend_willModify(self, suffixCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_suffix, v8);
    suffixCopy = v8;
  }
}

- (void)setAuthorsString:(id)string
{
  stringCopy = string;
  if (self->_authorsString != stringCopy)
  {
    v9 = stringCopy;
    objc_msgSend_willModify(self, stringCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_authorsString, v8);
    stringCopy = v8;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v9 = titleCopy;
    objc_msgSend_willModify(self, titleCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_title, v8);
    titleCopy = v8;
  }
}

- (void)setYear:(id)year
{
  yearCopy = year;
  if (self->_year != yearCopy)
  {
    v9 = yearCopy;
    objc_msgSend_willModify(self, yearCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_year, v8);
    yearCopy = v8;
  }
}

- (void)setType:(id)type
{
  typeCopy = type;
  if (self->_type != typeCopy)
  {
    v9 = typeCopy;
    objc_msgSend_willModify(self, typeCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_type, v8);
    typeCopy = v8;
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276DF8B1C, off_2812DC408[146]);

  endNoteXML = self->_endNoteXML;
  if (endNoteXML)
  {
    v10 = objc_msgSend_UTF8String(endNoteXML, v7, v8);
    *(v6 + 16) |= 1u;
    sub_276DA9454(__p, v10);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  pageRange = self->_pageRange;
  if (pageRange)
  {
    v12 = objc_msgSend_UTF8String(pageRange, v7, v8);
    *(v6 + 16) |= 2u;
    sub_276DA9454(__p, v12);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  prefix = self->_prefix;
  if (prefix)
  {
    v14 = objc_msgSend_UTF8String(prefix, v7, v8);
    *(v6 + 16) |= 4u;
    sub_276DA9454(__p, v14);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  suffix = self->_suffix;
  if (suffix)
  {
    v16 = objc_msgSend_UTF8String(suffix, v7, v8);
    *(v6 + 16) |= 8u;
    sub_276DA9454(__p, v16);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v17 = *(v6 + 16);
  *(v6 + 88) = self->_hideAuthorNames;
  hideYear = self->_hideYear;
  *(v6 + 16) = v17 | 0x300;
  *(v6 + 89) = hideYear;
  authorsString = self->_authorsString;
  if (authorsString)
  {
    v20 = objc_msgSend_UTF8String(authorsString, v7, v8);
    *(v6 + 16) |= 0x10u;
    sub_276DA9454(__p, v20);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  title = self->_title;
  if (title)
  {
    v22 = objc_msgSend_UTF8String(title, v7, v8);
    *(v6 + 16) |= 0x20u;
    sub_276DA9454(__p, v22);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  year = self->_year;
  if (year)
  {
    v24 = objc_msgSend_UTF8String(year, v7, v8);
    *(v6 + 16) |= 0x40u;
    sub_276DA9454(__p, v24);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  type = self->_type;
  if (type)
  {
    v26 = objc_msgSend_UTF8String(type, v7, v8);
    *(v6 + 16) |= 0x80u;
    sub_276DA9454(__p, v26);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DC408[146]);

  if (*(v5 + 16))
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_tsp_initWithProtobufString_(v7, v8, *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &stru_28860A0F0;
  }

  endNoteXML = self->_endNoteXML;
  self->_endNoteXML = v6;

  if ((*(v5 + 16) & 2) != 0)
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = objc_msgSend_tsp_initWithProtobufString_(v11, v12, *(v5 + 32) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v10 = &stru_28860A0F0;
  }

  pageRange = self->_pageRange;
  self->_pageRange = v10;

  if ((*(v5 + 16) & 4) != 0)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_tsp_initWithProtobufString_(v15, v16, *(v5 + 40) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v14 = &stru_28860A0F0;
  }

  prefix = self->_prefix;
  self->_prefix = v14;

  if ((*(v5 + 16) & 8) != 0)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_msgSend_tsp_initWithProtobufString_(v19, v20, *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v18 = &stru_28860A0F0;
  }

  suffix = self->_suffix;
  self->_suffix = v18;

  self->_hideAuthorNames = *(v5 + 88);
  self->_hideYear = *(v5 + 89);
  if ((*(v5 + 16) & 0x10) != 0)
  {
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = objc_msgSend_tsp_initWithProtobufString_(v23, v24, *(v5 + 56) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v22 = &stru_28860A0F0;
  }

  authorsString = self->_authorsString;
  self->_authorsString = v22;

  if ((*(v5 + 16) & 0x20) != 0)
  {
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = objc_msgSend_tsp_initWithProtobufString_(v27, v28, *(v5 + 64) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v26 = &stru_28860A0F0;
  }

  title = self->_title;
  self->_title = v26;

  if ((*(v5 + 16) & 0x40) != 0)
  {
    v31 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = objc_msgSend_tsp_initWithProtobufString_(v31, v32, *(v5 + 72) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v30 = &stru_28860A0F0;
  }

  year = self->_year;
  self->_year = v30;

  if ((*(v5 + 16) & 0x80) != 0)
  {
    v35 = objc_alloc(MEMORY[0x277CCACA8]);
    v34 = objc_msgSend_tsp_initWithProtobufString_(v35, v36, *(v5 + 80) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v34 = &stru_28860A0F0;
  }

  type = self->_type;
  self->_type = v34;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSWPCitationRecord, a2, zone);
  v7 = objc_msgSend_context(self, v5, v6);
  v9 = objc_msgSend_initWithContext_(v4, v8, v7);

  objc_msgSend_p_copyPropertiesToObject_(self, v10, v9);
  return v9;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = [TSWPCitationRecord alloc];
  v7 = objc_msgSend_initWithContext_(v5, v6, contextCopy);
  objc_msgSend_p_copyPropertiesToObject_(self, v8, v7);

  return v7;
}

- (NSString)cacheKey
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_endNoteXML(self, a2, v2);
  v8 = objc_msgSend_prefix(self, v6, v7);
  v11 = objc_msgSend_suffix(self, v9, v10);
  v14 = objc_msgSend_pageRange(self, v12, v13);
  v17 = objc_msgSend_hideAuthorNames(self, v15, v16);
  v20 = objc_msgSend_hideYear(self, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v4, v21, @"%@ prefix=%@, suffix=%@, range=%@, hideAuthor=%d, hideYear=%d", v5, v8, v11, v14, v17, v20);

  return v22;
}

- (BOOL)isRecordEqual:(id)equal
{
  equalCopy = equal;
  v7 = objc_msgSend_authorsString(self, v5, v6);
  v10 = objc_msgSend_authorsString(equalCopy, v8, v9);
  if (objc_msgSend_isEqualToString_(v7, v11, v10))
  {
    v14 = objc_msgSend_p_endNoteXMLForComparison(self, v12, v13);
    v17 = objc_msgSend_p_endNoteXMLForComparison(equalCopy, v15, v16);
    isEqualToString = objc_msgSend_isEqualToString_(v14, v18, v17);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (id)authorYearString
{
  v4 = objc_msgSend_year(self, a2, v2);

  if (v4)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_authorsString(self, v5, v6);
    v11 = objc_msgSend_year(self, v9, v10);
    v13 = objc_msgSend_stringWithFormat_(v7, v12, @"%@ %@", v8, v11);
  }

  else
  {
    v13 = objc_msgSend_authorsString(self, v5, v6);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_authorYearString(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"<%@ %p (%@)>", v5, self, v8);

  return v10;
}

- (void)p_copyPropertiesToObject:(id)object
{
  objectCopy = object;
  v6 = objc_msgSend_endNoteXML(self, v4, v5);
  objc_msgSend_setEndNoteXML_(objectCopy, v7, v6);

  v10 = objc_msgSend_hideAuthorNames(self, v8, v9);
  objc_msgSend_setHideAuthorNames_(objectCopy, v11, v10);
  v14 = objc_msgSend_hideYear(self, v12, v13);
  objc_msgSend_setHideYear_(objectCopy, v15, v14);
  v18 = objc_msgSend_pageRange(self, v16, v17);
  objc_msgSend_setPageRange_(objectCopy, v19, v18);

  v22 = objc_msgSend_prefix(self, v20, v21);
  objc_msgSend_setPrefix_(objectCopy, v23, v22);

  v26 = objc_msgSend_suffix(self, v24, v25);
  objc_msgSend_setSuffix_(objectCopy, v27, v26);

  v30 = objc_msgSend_authorsString(self, v28, v29);
  objc_msgSend_setAuthorsString_(objectCopy, v31, v30);

  v34 = objc_msgSend_title(self, v32, v33);
  objc_msgSend_setTitle_(objectCopy, v35, v34);

  v38 = objc_msgSend_year(self, v36, v37);
  objc_msgSend_setYear_(objectCopy, v39, v38);

  v42 = objc_msgSend_type(self, v40, v41);
  objc_msgSend_setType_(objectCopy, v43, v42);

  v46 = objc_msgSend_shouldRemove(self, v44, v45);
  objc_msgSend_setShouldRemove_(objectCopy, v47, v46);
  v50 = objc_msgSend_recordXMLApplied(self, v48, v49);
  objc_msgSend_setRecordXMLApplied_(objectCopy, v51, v50);
}

- (id)p_endNoteXMLForComparison
{
  v3 = objc_msgSend_endNoteXML(self, a2, v2);
  v6 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v4, v5);
  v8 = objc_msgSend_componentsSeparatedByCharactersInSet_(v3, v7, v6);

  v10 = objc_msgSend_componentsJoinedByString_(v8, v9, &stru_28860A0F0);

  return v10;
}

@end