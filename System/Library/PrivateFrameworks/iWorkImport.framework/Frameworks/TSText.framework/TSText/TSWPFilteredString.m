@interface TSWPFilteredString
+ (id)stringWithString:(id)a3;
- (BOOL)adjustRangesByDelta:(int64_t)a3 startingAt:(unint64_t)a4;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)a3;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)a3;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)a3;
- (NSString)string;
- (TSWPFilteredString)initWithString:(id)a3;
- (TSWPFilteredString)initWithString:(id)a3 subrange:(_NSRange)a4 removeRanges:(id)a5;
- (TSWPFilteredString)initWithTextSource:(id)a3 subrange:(_NSRange)a4 removeRanges:(id)a5;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3;
- (_NSRange)charRangeMappedToStorage:(_NSRange)a3;
- (_NSRange)charRangeRemappedFromStorage:(_NSRange)a3;
- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)a3;
- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4;
- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4 includeHyphenation:(BOOL)a5;
- (id)attachmentAtCharIndex:(unint64_t)a3;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)a3;
- (id)characterStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)characterStyleForDropCapAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)dropCapStyleAtCharIndex:(unint64_t)a3;
- (id)footnoteReferenceAtCharIndex:(unint64_t)a3;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)a3 forAttributeKind:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)smartFieldsWithAttributeKind:(unint64_t)a3 intersectingRange:(_NSRange)a4;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)a3 inRange:(_NSRange)a4 locale:(id)a5 hyphenChar:(unsigned int *)a6;
- (unint64_t)changeCount;
- (unint64_t)charIndexMappedFromStorage:(unint64_t)a3;
- (unint64_t)charIndexMappedToStorage:(unint64_t)a3;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)a3;
- (unint64_t)length;
- (unint64_t)storageLength;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)attributesAtCharIndex:(unint64_t)a3 attributesOfInterest:(BOOL *)a4 attributesTable:(id *)a5 effectiveRange:(_NSRange *)a6;
- (void)checkDebug;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
- (void)updateStorageChangeCount;
@end

@implementation TSWPFilteredString

+ (id)stringWithString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithString_(v4, v5, v3);

  return v6;
}

- (TSWPFilteredString)initWithTextSource:(id)a3 subrange:(_NSRange)a4 removeRanges:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v14 = objc_msgSend_string(v10, v12, v13);
  v16 = objc_msgSend_initWithString_subrange_removeRanges_(self, v15, v14, location, length, v11);

  if (v16)
  {
    objc_storeStrong(&v16->_textSource, a3);
    v16->_changeCount = objc_msgSend_changeCount(v10, v17, v18);
    v16->_storageLength = objc_msgSend_storageLength(v10, v19, v20);
  }

  return v16;
}

- (TSWPFilteredString)initWithString:(id)a3 subrange:(_NSRange)a4 removeRanges:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = TSWPFilteredString;
  v13 = [(TSWPFilteredString *)&v27 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v9, v11, v12);
    sourceString = v13->_sourceString;
    v13->_sourceString = v14;

    v16 = [TSWPDeletionRangeMap alloc];
    v18 = objc_msgSend_initWithSubRange_removeRanges_(v16, v17, location, length, v10);
    rangeMap = v13->_rangeMap;
    v13->_rangeMap = v18;

    v21 = objc_msgSend_inverseRangesInStorageRange_(v13->_rangeMap, v20, location, length);
    sourceRanges = v13->_sourceRanges;
    v13->_sourceRanges = v21;

    v13->_length = objc_msgSend_mappedCharIndex_(v13->_rangeMap, v23, location + length);
    v13->_changeCount = 0x7FFFFFFFFFFFFFFFLL;
    v13->_storageLength = objc_msgSend_length(v9, v24, v25);
  }

  return v13;
}

- (TSWPFilteredString)initWithString:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_length(v4, v5, v6);
  v10 = objc_msgSend_rangeArray(TSWPRangeArray, v8, v9);
  v12 = objc_msgSend_initWithString_subrange_removeRanges_(self, v11, v4, 0, v7, v10);

  return v12;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, a3))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString characterAtIndex:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 72, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  v14 = objc_msgSend_sourceString(self, a2, a3);
  v17 = objc_msgSend_rangeMap(self, v15, v16);
  v19 = objc_msgSend_unmappedCharIndex_(v17, v18, a3);
  v21 = objc_msgSend_characterAtIndex_(v14, v20, v19);

  return v21;
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, a3))
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString getCharacters:range:]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 77, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }
  }

  v17 = objc_msgSend_rangeMap(self, a2, a3);
  v19 = objc_msgSend_unmappedCharRange_(v17, v18, location, length);
  v21 = v20;

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v24 = objc_msgSend_sourceRanges(self, v22, v23);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_276D12F18;
  v26[3] = &unk_27A6F3588;
  v26[5] = v27;
  v26[6] = a3;
  v26[4] = self;
  objc_msgSend_enumerateRangesInRange_usingBlock_(v24, v25, v19, v21, v26);

  _Block_object_dispose(v27, 8);
}

- (unint64_t)charIndexMappedToStorage:(unint64_t)a3
{
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, a3))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString charIndexMappedToStorage:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 90, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  v14 = objc_msgSend_rangeMap(self, a2, a3);
  v16 = objc_msgSend_unmappedCharIndex_(v14, v15, a3);

  v18 = self->_textSource;
  if (!v18)
  {
    return v16;
  }

  return objc_msgSend_charIndexMappedToStorage_(v18, v17, v16);
}

- (unint64_t)charIndexMappedFromStorage:(unint64_t)a3
{
  v3 = a3;
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, a3))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString charIndexMappedFromStorage:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 96, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }

    v14 = self->_textSource;
    if (v14)
    {
      v3 = objc_msgSend_charIndexMappedFromStorage_(v14, a2, v3);
    }
  }

  v15 = objc_msgSend_rangeMap(self, a2, a3);
  v17 = objc_msgSend_mappedCharIndex_(v15, v16, v3);

  return v17;
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, a3.location))
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString charRangeMappedToStorage:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 105, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }
  }

  v16 = objc_msgSend_unmappedCharRange_(self->_rangeMap, a2, location, length);
  v17 = self->_textSource;
  if (v17)
  {

    v18 = objc_msgSend_charRangeMappedToStorage_(v17, v15, v16, v15);
  }

  else
  {
    v18 = v16;
  }

  result.length = v15;
  result.location = v18;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, a3.location))
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString charRangeMappedFromStorage:]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 111, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    }

    v15 = self->_textSource;
    if (v15)
    {
      location = objc_msgSend_charRangeMappedFromStorage_(v15, a2, location, length);
      length = a2;
    }
  }

  rangeMap = self->_rangeMap;

  v17 = objc_msgSend_mappedCharRange_(rangeMap, a2, location, length);
  result.length = v18;
  result.location = v17;
  return result;
}

- (unint64_t)length
{
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, v2))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPFilteredString length]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 120, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  return self->_length;
}

- (BOOL)adjustRangesByDelta:(int64_t)a3 startingAt:(unint64_t)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString adjustRangesByDelta:startingAt:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 125, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFilteredString adjustRangesByDelta:startingAt:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v15, v12, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)attachmentAtCharIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString attachmentAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 129, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFilteredString attachmentAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString attachmentOrFootnoteAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 133, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFilteredString attachmentOrFootnoteAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (void)attributesAtCharIndex:(unint64_t)a3 attributesOfInterest:(BOOL *)a4 attributesTable:(id *)a5 effectiveRange:(_NSRange *)a6
{
  if (a6)
  {
    *a6 = *MEMORY[0x277D81490];
  }
}

- (unint64_t)changeCount
{
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, v2))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPFilteredString changeCount]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 143, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  return self->_changeCount;
}

- (unint64_t)charIndexRemappedFromStorage:(unint64_t)a3
{
  v5 = objc_msgSend_charIndexMappedFromStorage_(self, a2, a3);

  return objc_msgSend_charIndexMappedToStorage_(self, v4, v5);
}

- (_NSRange)charRangeRemappedFromStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_msgSend_charIndexRemappedFromStorage_(self, a2, a3.location);
  v8 = objc_msgSend_charIndexRemappedFromStorage_(self, v7, location + length) - v6;
  v9 = v6;
  result.length = v8;
  result.location = v9;
  return result;
}

- (id)characterStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString characterStyleAtCharIndex:effectiveRange:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 158, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFilteredString characterStyleAtCharIndex:effectiveRange:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v15, v12, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)checkDebug
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString checkDebug]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 162, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSWPFilteredString checkDebug]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)characterStyleForDropCapAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString characterStyleForDropCapAtCharIndex:effectiveRange:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 166, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFilteredString characterStyleForDropCapAtCharIndex:effectiveRange:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v15, v12, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)dropCapStyleAtCharIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString dropCapStyleAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 170, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFilteredString dropCapStyleAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString footnoteReferenceAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 174, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFilteredString footnoteReferenceAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString hasColumnBreakAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 178, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFilteredString hasColumnBreakAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString hasColumnStyleForParagraphBreakAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 182, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFilteredString hasColumnStyleForParagraphBreakAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)a3 inRange:(_NSRange)a4 locale:(id)a5 hyphenChar:(unsigned int *)a6
{
  v6 = a5;
  v7 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPFilteredString hyphenationLocationBeforeIndex:inRange:locale:hyphenChar:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v9, v11, 186, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%s: %s", "Do not call method", "[TSWPFilteredString hyphenationLocationBeforeIndex:inRange:locale:hyphenChar:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v19, v16, v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString isWritingDirectionRightToLeftForParagraphAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 190, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFilteredString isWritingDirectionRightToLeftForParagraphAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)a3 forAttributeKind:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString objectAtLocationPriorToMappedCharIndex:forAttributeKind:effectiveRange:]", a4, a5);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 194, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[TSWPFilteredString objectAtLocationPriorToMappedCharIndex:forAttributeKind:effectiveRange:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, v13, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (id)paragraphStyleAtCharIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString paragraphStyleAtCharIndex:effectiveRange:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 198, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFilteredString paragraphStyleAtCharIndex:effectiveRange:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v15, v12, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString rangeOfDropCapAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 202, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFilteredString rangeOfDropCapAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v26 = *MEMORY[0x277D81490];
  textSource = self->_textSource;
  if (!textSource)
  {
    goto LABEL_7;
  }

  changeCount = self->_changeCount;
  if (changeCount != objc_msgSend_changeCount(textSource, a2, a3))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPFilteredString smartFieldAtCharIndex:attributeKind:effectiveRange:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 208, 0, "text source has been mutated");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = self->_textSource;
  if (v19)
  {
    v20 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v11, a3);
    v23 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(v19, v21, v20, a4, &v26);
    if (a5)
    {
      a5->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v22, v26, *(&v26 + 1));
      a5->length = v24;
    }
  }

  else
  {
LABEL_7:
    v23 = 0;
  }

  return v23;
}

- (id)smartFieldsWithAttributeKind:(unint64_t)a3 intersectingRange:(_NSRange)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString smartFieldsWithAttributeKind:intersectingRange:]", a4.location, a4.length);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 220, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFilteredString smartFieldsWithAttributeKind:intersectingRange:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v15, v12, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (unint64_t)storageLength
{
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, v2))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPFilteredString storageLength]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 224, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  return self->_storageLength;
}

- (NSString)string
{
  textSource = self->_textSource;
  if (textSource)
  {
    changeCount = self->_changeCount;
    if (changeCount != objc_msgSend_changeCount(textSource, a2, v2))
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPFilteredString string]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 229, 0, "text source has been mutated");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  return &self->super;
}

- (void)updateStorageChangeCount
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString updateStorageChangeCount]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 234, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSWPFilteredString updateStorageChangeCount]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString wordAtCharIndex:includePreviousWord:]", a4);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 238, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", "Do not call method", "[TSWPFilteredString wordAtCharIndex:includePreviousWord:]");
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v15, v12, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (_NSRange)wordAtCharIndex:(unint64_t)a3 includePreviousWord:(BOOL)a4 includeHyphenation:(BOOL)a5
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredString wordAtCharIndex:includePreviousWord:includeHyphenation:]", a4, a5);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredString.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 242, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = *MEMORY[0x277CBE658];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%s: %s", "Do not call method", "[TSWPFilteredString wordAtCharIndex:includePreviousWord:includeHyphenation:]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, v13, v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

@end