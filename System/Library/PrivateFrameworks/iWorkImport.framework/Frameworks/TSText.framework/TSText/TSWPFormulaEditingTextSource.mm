@interface TSWPFormulaEditingTextSource
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index;
- (NSString)string;
- (TSWPFormulaEditingTextSource)initWithSource:(id)source;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage;
- (_NSRange)mappedRangeFrom:(_NSRange)from;
- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index;
- (_NSRange)unmappedRangeFrom:(_NSRange)from;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation;
- (id)attachmentAtCharIndex:(unint64_t)index;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index;
- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)footnoteReferenceAtCharIndex:(unint64_t)index;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char;
- (unint64_t)charIndexMappedFromStorage:(unint64_t)storage;
- (unint64_t)charIndexMappedToStorage:(unint64_t)storage;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage;
- (unint64_t)unmappedIndexFrom:(unint64_t)from;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[23] attributesTable:(id)table[23] effectiveRange:(_NSRange *)range;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation TSWPFormulaEditingTextSource

- (TSWPFormulaEditingTextSource)initWithSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = TSWPFormulaEditingTextSource;
  v6 = [(TSWPFormulaEditingTextSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
  }

  return v7;
}

- (_NSRange)unmappedRangeFrom:(_NSRange)from
{
  if (from.location)
  {
    v3 = from.location - 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*&from - 1) >> 64;
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)mappedRangeFrom:(_NSRange)from
{
  length = from.length;
  v4 = from.location + 1;
  result.length = length;
  result.location = v4;
  return result;
}

- (unint64_t)unmappedIndexFrom:(unint64_t)from
{
  if (from)
  {
    return from - 1;
  }

  else
  {
    return 0;
  }
}

- (NSString)string
{
  v3 = objc_msgSend_string(self->_source, a2, v2);
  v5 = objc_msgSend_stringByAppendingString_(@"X", v4, v3);

  return v5;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  charactersCopy = characters;
  if (characters && !range.location)
  {
    *characters = 88;
    charactersCopy = characters + 1;
  }

  source = self->_source;
  v7 = objc_msgSend_unmappedRangeFrom_(self, a2, range.location, range.length);

  objc_msgSend_getCharacters_range_(source, v6, charactersCopy, v7, v6);
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index
{
  if (!index)
  {
    return 0;
  }

  source = self->_source;
  v5 = objc_msgSend_unmappedIndexFrom_(self, a2, index);

  return objc_msgSend_hasColumnBreakAtCharIndex_(source, v4, v5);
}

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index
{
  if (!index)
  {
    return 0;
  }

  source = self->_source;
  v5 = objc_msgSend_unmappedIndexFrom_(self, a2, index);

  return objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(source, v4, v5);
}

- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[23] attributesTable:(id)table[23] effectiveRange:(_NSRange *)range
{
  if (index)
  {
    v15 = xmmword_276F98AE0;
    source = self->_source;
    v11 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
    objc_msgSend_attributesAtCharIndex_attributesOfInterest_attributesTable_effectiveRange_(source, v12, v11, interest, table, &v15);
    if (range)
    {
      range->location = objc_msgSend_mappedRangeFrom_(self, v13, v15, *(&v15 + 1));
      range->length = v14;
    }
  }

  else if (range)
  {
    *range = xmmword_276F995A0;
  }
}

- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  if (index)
  {
    v15 = xmmword_276F98AE0;
    source = self->_source;
    v9 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
    v12 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(source, v10, v9, kind, &v15);
    if (range)
    {
      range->location = objc_msgSend_mappedRangeFrom_(self, v11, v15, *(&v15 + 1));
      range->length = v13;
    }
  }

  else
  {
    v12 = 0;
    if (range)
    {
      *range = xmmword_276F98AE0;
    }
  }

  return v12;
}

- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range
{
  source = self->_source;
  v7 = objc_msgSend_unmappedRangeFrom_(self, a2, range.location, range.length);

  return objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(source, v6, kind, v7, v6);
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)index
{
  if (index)
  {
    source = self->_source;
    v5 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
    v7 = objc_msgSend_footnoteReferenceAtCharIndex_(source, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attachmentAtCharIndex:(unint64_t)index
{
  if (index)
  {
    source = self->_source;
    v5 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
    v7 = objc_msgSend_attachmentAtCharIndex_(source, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index
{
  if (index)
  {
    source = self->_source;
    v5 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
    v7 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(source, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v13 = xmmword_276F98AE0;
  if (index)
  {
    source = self->_source;
    v7 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
    v10 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(source, v8, v7, &v13);
    if (range)
    {
      range->location = objc_msgSend_mappedRangeFrom_(self, v9, v13, *(&v13 + 1));
      range->length = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFormulaEditingTextSource isWritingDirectionRightToLeftForParagraphAtCharIndex:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 752, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%s: %s", "Do not call method", "[TSWPFormulaEditingTextSource isWritingDirectionRightToLeftForParagraphAtCharIndex:]");
  v15 = objc_msgSend_exceptionWithName_reason_userInfo_(v10, v14, v11, v13, 0);
  v16 = v15;

  objc_exception_throw(v15);
}

- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v13 = xmmword_276F98AE0;
  if (index)
  {
    source = self->_source;
    v8 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
    if (range)
    {
      objc_msgSend_characterStyleAtCharIndex_effectiveRange_(source, v7, v8, &v13, v13);
    }

    else
    {
      objc_msgSend_characterStyleAtCharIndex_effectiveRange_(source, v7, v8, 0, v13);
    }
    v10 = ;
    if (range)
    {
      range->location = objc_msgSend_mappedRangeFrom_(self, v9, v13, *(&v13 + 1));
      range->length = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index
{
  v3 = *MEMORY[0x277D81490];
  v4 = *(MEMORY[0x277D81490] + 8);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  wordCopy = word;
  source = self->_source;
  v7 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
  v10 = objc_msgSend_wordAtCharIndex_includePreviousWord_(source, v8, v7, wordCopy);

  v11 = objc_msgSend_mappedRangeFrom_(self, v9, v10, v9);
  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation
{
  hyphenationCopy = hyphenation;
  wordCopy = word;
  source = self->_source;
  v9 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
  v12 = objc_msgSend_wordAtCharIndex_includePreviousWord_includeHyphenation_(source, v10, v9, wordCopy, hyphenationCopy);

  v13 = objc_msgSend_mappedRangeFrom_(self, v11, v12, v11);
  result.length = v14;
  result.location = v13;
  return result;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  source = self->_source;
  v5 = objc_msgSend_unmappedIndexFrom_(self, a2, index);

  return objc_msgSend_characterAtIndex_(source, v4, v5);
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char
{
  localeCopy = locale;
  v7 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSWPFormulaEditingTextSource hyphenationLocationBeforeIndex:inRange:locale:hyphenChar:]");
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPTypesetterTextSource.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v9, v11, 799, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", "Do not call method", "[TSWPFormulaEditingTextSource hyphenationLocationBeforeIndex:inRange:locale:hyphenChar:]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v18, *MEMORY[0x277CBE658], v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  v15 = xmmword_276F98AE0;
  if (index)
  {
    source = self->_source;
    v9 = objc_msgSend_unmappedIndexFrom_(self, a2, index);
    v11 = objc_msgSend_objectAtLocationPriorToMappedCharIndex_forAttributeKind_effectiveRange_(source, v10, v9, kind, &v15);
    *&v15 = objc_msgSend_mappedRangeFrom_(self, v12, v15, *(&v15 + 1));
    *(&v15 + 1) = v13;
    if (!range)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (range)
  {
LABEL_3:
    *range = v15;
  }

LABEL_4:

  return v11;
}

- (unint64_t)charIndexMappedToStorage:(unint64_t)storage
{
  source = self->_source;
  v5 = objc_msgSend_unmappedIndexFrom_(self, a2, storage);

  return objc_msgSend_charIndexMappedToStorage_(source, v4, v5);
}

- (unint64_t)charIndexMappedFromStorage:(unint64_t)storage
{
  v4 = objc_msgSend_charIndexMappedFromStorage_(self->_source, a2, storage);

  return MEMORY[0x2821F9670](self, sel_mappedIndexFrom_, v4);
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)storage
{
  source = self->_source;
  v5 = objc_msgSend_unmappedRangeFrom_(self, a2, storage.location, storage.length);

  v6 = objc_msgSend_charRangeMappedToStorage_(source, v4, v5, v4);
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage
{
  v5 = objc_msgSend_charRangeMappedFromStorage_(self->_source, a2, storage.location, storage.length);

  v6 = objc_msgSend_mappedRangeFrom_(self, v4, v5, v4);
  result.length = v7;
  result.location = v6;
  return result;
}

- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage
{
  v5 = objc_msgSend_charIndexMappedFromStorage_(self, a2, storage);

  return objc_msgSend_charIndexMappedToStorage_(self, v4, v5);
}

- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  v6 = objc_msgSend_charIndexRemappedFromStorage_(self, a2, storage.location);
  v8 = objc_msgSend_charIndexRemappedFromStorage_(self, v7, location + length) - v6;
  v9 = v6;
  result.length = v8;
  result.location = v9;
  return result;
}

@end