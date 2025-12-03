@interface TSWPFilteredStorage
+ (id)filteredStorageRemovingDeletionsFromStorage:(id)storage subRange:(_NSRange)range;
- (BOOL)adjustRangesByDelta:(int64_t)delta startingAt:(unint64_t)at;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasSmartFieldsInRange:(_NSRange)range;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index;
- (NSString)string;
- (TSWPFilteredStorage)initWithStorage:(id)storage subRange:(_NSRange)range;
- (TSWPFilteredStorage)initWithStorage:(id)storage subRange:(_NSRange)range removeRanges:(id)ranges;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (_NSRange)charRangeRemappedFromStorage:(_NSRange)storage;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex isPrecise:(BOOL)precise;
- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index;
- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index actualCharacterCount:(unint64_t *)count;
- (_NSRange)scanBackwardForWordAtCharIndex:(unint64_t)index;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation;
- (id)attachmentAtCharIndex:(unint64_t)index;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index;
- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)characterStyleForDropCapAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)dropCapStyleAtCharIndex:(unint64_t)index;
- (id)footnoteReferenceAtCharIndex:(unint64_t)index;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range;
- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range;
- (id)substringWithRange:(_NSRange)range;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage;
- (unint64_t)nextCharacterIndex:(unint64_t)index;
- (unint64_t)previousCharacterIndex:(unint64_t)index;
- (unint64_t)storageLength;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[23] attributesTable:(id)table[23] effectiveRange:(_NSRange *)range;
- (void)enumerateSmartFieldsWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
- (void)updateStorageChangeCount;
@end

@implementation TSWPFilteredStorage

+ (id)filteredStorageRemovingDeletionsFromStorage:(id)storage subRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v7 = [TSWPFilteredStorage alloc];
  v9 = objc_msgSend_deletedRangesInRange_(storageCopy, v8, location, length);
  v11 = objc_msgSend_initWithStorage_subRange_removeRanges_(v7, v10, storageCopy, location, length, v9);

  return v11;
}

- (TSWPFilteredStorage)initWithStorage:(id)storage subRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  v11 = objc_msgSend_length(storageCopy, v8, v9);
  v12 = location + length;
  if (location + length > v11)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSWPFilteredStorage initWithStorage:subRange:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 39, 0, "Illegal subRange past end of storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  if (v11 >= location)
  {
    v20 = location;
  }

  else
  {
    v20 = v11;
  }

  if (v12 >= v11)
  {
    v21 = v11;
  }

  else
  {
    v21 = v12;
  }

  if (v12 >= v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v12 >= v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  v24 = v22 - v23;
  if (v23 && objc_msgSend_hasHiddenTextAtCharIndex_range_(storageCopy, v10, v23, &v31))
  {
    v32.location = v23;
    v32.length = v24;
    v25 = NSUnionRange(v32, v31);
    v10 = v25.length;
    v23 = v25.location;
    v24 = v25.length;
  }

  if (v23 + v24 && objc_msgSend_hasHiddenTextAtCharIndex_range_(storageCopy, v10, v23 + v24 - 1, &v31))
  {
    v33.location = v23;
    v33.length = v24;
    v26 = NSUnionRange(v33, v31);
    v10 = v26.length;
    v23 = v26.location;
    v24 = v26.length;
  }

  v27 = objc_msgSend_hiddenRangesInRange_(storageCopy, v10, v23, v24);
  v29 = objc_msgSend_initWithStorage_subRange_removeRanges_(self, v28, storageCopy, v23, v24, v27);

  return v29;
}

- (TSWPFilteredStorage)initWithStorage:(id)storage subRange:(_NSRange)range removeRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  rangesCopy = ranges;
  v28.receiver = self;
  v28.super_class = TSWPFilteredStorage;
  v12 = [(TSWPFilteredStorage *)&v28 init];
  if (v12)
  {
    if (!storageCopy)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSWPFilteredStorage initWithStorage:subRange:removeRanges:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 61, 0, "invalid nil value for '%{public}s'", "storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }

    objc_storeWeak(&v12->_storage, storageCopy);
    v20 = [TSWPDeletionRangeMap alloc];
    v22 = objc_msgSend_initWithSubRange_removeRanges_(v20, v21, location, length, rangesCopy);
    rangeMap = v12->_rangeMap;
    v12->_rangeMap = v22;

    objc_msgSend_mappedCharRange_(v12->_rangeMap, v24, location, length);
    v12->_length = v25;
    v12->_storageChangeCount = objc_msgSend_changeCount(storageCopy, v25, v26);
  }

  return v12;
}

- (NSString)string
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);

  if (WeakRetained)
  {
    v6 = objc_msgSend_string(MEMORY[0x277CCAB68], v4, v5);
    v8 = objc_msgSend_unmappedCharRange_(self->_rangeMap, v7, 0, self->_length);
    v10 = objc_msgSend_inverseRangesInStorageRange_(self->_rangeMap, v9, v8, v9);
    if (objc_msgSend_superRange(v10, v11, v12) != *MEMORY[0x277D81490] || v13 != *(MEMORY[0x277D81490] + 8))
    {
      v16 = objc_msgSend_superRange(v10, v13, v14);
      v18 = v17;
      v19 = objc_loadWeakRetained(&self->_storage);
      v22 = objc_msgSend_length(v19, v20, v21);

      if (v16 + v18 > v22)
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSWPFilteredStorage string]");
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 87, 0, "filtered storage is out of sync with its _storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
      }

      v32 = objc_msgSend_superRange(v10, v23, v24);
      v34 = v33;
      v35 = objc_loadWeakRetained(&self->_storage);
      v38 = objc_msgSend_length(v35, v36, v37);

      if (v32 + v34 > v38)
      {
        v39 = objc_loadWeakRetained(&self->_storage);
        v42 = objc_msgSend_range(v39, v40, v41);
        v44 = objc_msgSend_intersection_(v10, v43, v42, v43);

        v10 = v44;
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = sub_276E1A2F4;
      v47[3] = &unk_27A6F38E0;
      v47[4] = self;
      v48 = v6;
      objc_msgSend_enumerateRanges_(v10, v45, v47);
    }
  }

  else
  {
    v6 = &stru_28860A0F0;
  }

  return v6;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v6, index);
  LOWORD(index) = objc_msgSend_characterAtIndex_(WeakRetained, v8, v7);

  return index;
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_unmappedCharRange_(self->_rangeMap, a2, range.location, range.length);
  v10 = v9;
  v11 = objc_msgSend_inverseRangesInStorageRange_(self->_rangeMap, v9, v8, v9);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276E1A520;
  v13[3] = &unk_27A6F4FD8;
  v13[6] = v8;
  v13[7] = v10;
  v13[8] = location;
  v13[9] = length;
  v13[4] = self;
  v13[5] = v14;
  v13[10] = characters;
  objc_msgSend_enumerateRanges_(v11, v12, v13);
  _Block_object_dispose(v14, 8);
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v6, index);
  LOBYTE(index) = objc_msgSend_hasColumnBreakAtCharIndex_(WeakRetained, v8, v7);

  return index;
}

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v6, index);
  LOBYTE(index) = objc_msgSend_hasColumnStyleForParagraphBreakAtCharIndex_(WeakRetained, v8, v7);

  return index;
}

- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[23] attributesTable:(id)table[23] effectiveRange:(_NSRange *)range
{
  v17 = xmmword_276F98AE0;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v13 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v12, index);
  objc_msgSend_attributesAtCharIndex_attributesOfInterest_attributesTable_effectiveRange_(WeakRetained, v14, v13, interest, table, &v17);

  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v15, v17, *(&v17 + 1));
    range->length = v16;
  }
}

- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  v17 = xmmword_276F98AE0;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v11 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v10, index);
  v13 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(WeakRetained, v12, v11, kind, &v17);

  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v14, v17, *(&v17 + 1));
    range->length = v15;
  }

  return v13;
}

- (id)smartFieldsWithAttributeKind:(unint64_t)kind intersectingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v10 = objc_msgSend_unmappedCharRange_(self->_rangeMap, v9, location, length);
  v12 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(WeakRetained, v11, kind, v10, v11);

  return v12;
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v6, index);
  v9 = objc_msgSend_footnoteReferenceAtCharIndex_(WeakRetained, v8, v7);

  return v9;
}

- (id)attachmentAtCharIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v6, index);
  v9 = objc_msgSend_attachmentAtCharIndex_(WeakRetained, v8, v7);

  return v9;
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v6, index);
  v9 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(WeakRetained, v8, v7);

  return v9;
}

- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v15 = xmmword_276F98AE0;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v10 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v8, index);
  if (range)
  {
    objc_msgSend_characterStyleAtCharIndex_effectiveRange_(WeakRetained, v9, v10, &v15, v15);
  }

  else
  {
    objc_msgSend_characterStyleAtCharIndex_effectiveRange_(WeakRetained, v9, v10, 0, v15);
  }
  v11 = ;

  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v12, v15, *(&v15 + 1));
    range->length = v13;
  }

  return v11;
}

- (id)characterStyleForDropCapAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v9 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v8, index);
  v11 = objc_msgSend_characterStyleForDropCapAtCharIndex_effectiveRange_(WeakRetained, v10, v9, range);

  return v11;
}

- (id)dropCapStyleAtCharIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v6, index);
  v9 = objc_msgSend_dropCapStyleAtCharIndex_(WeakRetained, v8, v7);

  return v9;
}

- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index
{
  v3 = MEMORY[0x2821F9670](self, sel_rangeOfDropCapAtCharIndex_actualCharacterCount_, index);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)rangeOfDropCapAtCharIndex:(unint64_t)index actualCharacterCount:(unint64_t *)count
{
  v7 = *MEMORY[0x277D81490];
  v8 = *(MEMORY[0x277D81490] + 8);
  v9 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  v11 = objc_msgSend_dropCapStyleAtCharIndex_(self, v10, index);
  if (!v11)
  {
    v15 = 0;
    if (!count)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v14 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(WeakRetained, v13, v9, 0);
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
  }

  v17 = TSWPParagraphEnumerator::paragraphTextRange(&v34, v16);
  v7 = objc_msgSend_charRangeMappedFromStorage_(self, v18, v17, v18);
  v15 = 0;
  v21 = &v19[v7];
  for (i = v7; ; i = objc_msgSend_nextCharacterIndex_(self, v29, i))
  {
    v23 = objc_msgSend_dropCap(v11, v19, v20, *&v34.var0, *&v34.var2, *&v34.var4, *&v34.var6, v34.var7.length);
    if (v15 >= objc_msgSend_numberOfCharacters(v23, v24, v25))
    {
      break;
    }

    if (i >= v21)
    {
      goto LABEL_21;
    }

    v27 = objc_msgSend_characterAtIndex_(self, v26, i);
    v28 = IsParagraphBreakingCharacter(v27);
    v30 = v27 == 8232 ? 1 : v28;
    if (v30)
    {
      goto LABEL_21;
    }

    if (v27 != 65532)
    {
      if (v15 || (IsWhitespaceCharacter(v27, v29) & 1) == 0)
      {
        ++v15;
      }

      else
      {
        v15 = 0;
      }
    }
  }

LABEL_21:
  if (v7 <= i)
  {
    v31 = i;
  }

  else
  {
    v31 = v7;
  }

  if (v7 >= i)
  {
    v7 = i;
  }

  v8 = v31 - v7;
  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v34);
  if (count)
  {
LABEL_27:
    *count = v15;
  }

LABEL_28:

  v32 = v7;
  v33 = v8;
  result.length = v33;
  result.location = v32;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  v4 = objc_msgSend_wordAtCharIndex_includePreviousWord_includeHyphenation_(self, a2, index, word, 0);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word includeHyphenation:(BOOL)hyphenation
{
  hyphenationCopy = hyphenation;
  wordCopy = word;
  v8 = MEMORY[0x277D81490];
  v10 = *MEMORY[0x277D81490];
  v9 = *(MEMORY[0x277D81490] + 8);
  v11 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  v13 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v12, 0);
  rangeMap = self->_rangeMap;
  v17 = objc_msgSend_length(self, v15, v16);
  v19 = objc_msgSend_unmappedCharIndex_(rangeMap, v18, v17);
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v22 = WeakRetained;
  if (WeakRetained)
  {
    if (v11)
    {
      v23 = v11 == v19;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(WeakRetained, v21, v11 - v24, 0);
  }

  else
  {
    memset(&v57, 0, sizeof(v57));
  }

  v26.location = TSWPParagraphEnumerator::paragraphTextRange(&v57, v25);
  location = v26.location;
  if (v26.length)
  {
    if (v13 <= v19)
    {
      v28 = v19;
    }

    else
    {
      v28 = v13;
    }

    if (v13 >= v19)
    {
      v29.location = v19;
    }

    else
    {
      v29.location = v13;
    }

    v29.length = v28 - v29.location;
    v31 = NSIntersectionRange(v26, v29);
    length = v31.length;
    location = 0x7FFFFFFFFFFFFFFFLL;
    if (v31.length)
    {
      location = v31.location;
    }
  }

  else if (v26.location <= v19)
  {
    length = 0;
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSWPFilteredStorage wordAtCharIndex:includePreviousWord:includeHyphenation:]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 270, 0, "unexpected paragraph range past the end of mapped storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    location = *v8;
    length = v8[1];
  }

  if (location != *v8 || length != v8[1])
  {
    v40 = objc_msgSend_mappedCharRange_(self->_rangeMap, length, location, length);
    v42 = v41;
    v43 = objc_loadWeakRetained(&self->_storage);
    v45 = objc_msgSend_languageForTextRange_useStringTokenizer_useDocumentLanguage_(v43, v44, v40, v42, 1, 1);

    v46 = objc_alloc(MEMORY[0x277CBEAF8]);
    v48 = objc_msgSend_initWithLocaleIdentifier_(v46, v47, v45);
    v50 = objc_msgSend_substringWithRange_(self, v49, v40, v42);
    v52 = objc_msgSend_tswp_rangeOfWordAtCharacterIndex_range_includePreviousWord_includeHyphenation_forLocale_(v50, v51, index - v40, 0, v42, wordCopy, hyphenationCopy, v48);
    v9 = v53;

    if (v52 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v52 + v40;
    }
  }

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v57);
  v54 = v10;
  v55 = v9;
  result.length = v55;
  result.location = v54;
  return result;
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(id)locale hyphenChar:(unsigned int *)char
{
  length = range.length;
  location = range.location;
  localeCopy = locale;
  v13 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v12, index);
  v15 = objc_msgSend_unmappedCharRange_(self->_rangeMap, v14, location, length);
  v17 = v16;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v21 = objc_msgSend_string(WeakRetained, v19, v20);
  v26.location = v15;
  v26.length = v17;
  HyphenationLocationBeforeIndex = CFStringGetHyphenationLocationBeforeIndex(v21, v13, v26, 0, localeCopy, char);

  if (HyphenationLocationBeforeIndex == -1)
  {
    v24 = -1;
  }

  else
  {
    v24 = objc_msgSend_mappedCharIndex_(self->_rangeMap, v23, HyphenationLocationBeforeIndex);
  }

  return v24;
}

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unint64_t)kind effectiveRange:(_NSRange *)range
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v11 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v10, index);
  v13 = objc_msgSend_objectAtLocationPriorToMappedCharIndex_forAttributeKind_effectiveRange_(WeakRetained, v12, v11, kind, range);

  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v14, range->location, range->length);
    range->length = v15;
  }

  return v13;
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)storage
{
  v3 = objc_msgSend_unmappedCharRange_(self->_rangeMap, a2, storage.location, storage.length);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage
{
  v3 = objc_msgSend_mappedCharRange_(self->_rangeMap, a2, storage.location, storage.length);
  result.length = v4;
  result.location = v3;
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

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v9 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v8, index);
  v11 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(WeakRetained, v10, v9, range);

  if (range)
  {
    range->location = objc_msgSend_mappedCharRange_(self->_rangeMap, v12, range->location, range->length);
    range->length = v13;
  }

  return v11;
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v7 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, v6, index);
  LOBYTE(index) = objc_msgSend_isWritingDirectionRightToLeftForParagraphAtCharIndex_(WeakRetained, v8, v7);

  return index;
}

- (BOOL)adjustRangesByDelta:(int64_t)delta startingAt:(unint64_t)at
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v10 = objc_msgSend_changeCount(WeakRetained, v8, v9);

  if (delta && self->_storageChangeCount != v10)
  {
    self->_storageChangeCount = v10;
    objc_msgSend_adjustByDelta_startingAt_(self->_rangeMap, v11, delta, at);
  }

  return 1;
}

- (id)substringWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = objc_msgSend_unmappedCharRange_(self->_rangeMap, a2, range.location);
  v8 = v6;
  if (v6 == length)
  {
    WeakRetained = objc_loadWeakRetained(&self->_storage);
    v11 = objc_msgSend_substringWithRange_(WeakRetained, v10, v7, v8);
  }

  else
  {
    v12 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v6, length);
    v14 = objc_msgSend_inverseRangesInStorageRange_(self->_rangeMap, v13, v7, v8);
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_276E1B7A8;
    v18[3] = &unk_27A6F5000;
    v21 = v26;
    v22 = v7;
    v23 = v8;
    v24 = location;
    v25 = length;
    v15 = v12;
    v19 = v15;
    selfCopy = self;
    objc_msgSend_enumerateRanges_(v14, v16, v18);
    v11 = v15;

    _Block_object_dispose(v26, 8);
  }

  return v11;
}

- (void)enumerateWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v11 = objc_msgSend_unmappedCharRange_(self->_rangeMap, v10, location, length);
  v13 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276E1BAA0;
  v17[3] = &unk_27A6F5028;
  v17[4] = self;
  v15 = blockCopy;
  v18 = v15;
  objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(WeakRetained, v16, kind, v11, v13, v17);
}

- (void)enumerateSmartFieldsWithAttributeKind:(unint64_t)kind inRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v11 = objc_msgSend_unmappedCharRange_(self->_rangeMap, v10, location, length);
  v13 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276E1BC50;
  v17[3] = &unk_27A6F5028;
  v17[4] = self;
  v15 = blockCopy;
  v18 = v15;
  objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(WeakRetained, v16, kind, v11, v13, v17);
}

- (BOOL)hasSmartFieldsInRange:(_NSRange)range
{
  selfCopy = self;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  rangeMap = self->_rangeMap;
  v5 = objc_msgSend_unmappedCharRange_(rangeMap, a2, range.location, range.length);
  v7 = objc_msgSend_inverseRangesInStorageRange_(rangeMap, v6, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276E1BDE8;
  v10[3] = &unk_27A6F3B60;
  v10[4] = selfCopy;
  v10[5] = &v11;
  objc_msgSend_enumerateRanges_(v7, v8, v10);
  LOBYTE(selfCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return selfCopy;
}

- (void)updateStorageChangeCount
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  self->_storageChangeCount = objc_msgSend_changeCount(WeakRetained, v3, v4);
}

- (unint64_t)storageLength
{
  WeakRetained = objc_loadWeakRetained(&self->_storage);
  v5 = objc_msgSend_storageLength(WeakRetained, v3, v4);

  return v5;
}

- (_NSRange)scanBackwardForWordAtCharIndex:(unint64_t)index
{
  indexCopy3 = index;
  if (self->_length > index)
  {
    v6 = objc_msgSend_characterAtIndex_(self, a2, index);
    indexCopy3 = index;
    if (IsWhitespaceCharacter(v6, v7))
    {
      v8 = objc_msgSend_whiteSpaceRangeAtCharIndex_includingBreaks_(self, a2, index, 1);
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexCopy3 = index;
      }

      else
      {
        indexCopy3 = v8;
      }
    }
  }

  v9 = objc_msgSend_wordAtCharIndex_includePreviousWord_(self, a2, index, 1);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = indexCopy3;
  }

  v10 = index - v9;
  result.length = v10;
  result.location = v9;
  return result;
}

- (unint64_t)previousCharacterIndex:(unint64_t)index
{
  v4 = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  do
  {
    WeakRetained = objc_loadWeakRetained(&self->_storage);
    v4 = objc_msgSend_previousCharacterIndex_(WeakRetained, v6, v4);
  }

  while (objc_msgSend_containsCharIndex_(self->_rangeMap, v7, v4) && objc_msgSend_mappedCharIndex_(self->_rangeMap, v8, v4));
  rangeMap = self->_rangeMap;

  return objc_msgSend_mappedCharIndex_(rangeMap, v8, v4);
}

- (unint64_t)nextCharacterIndex:(unint64_t)index
{
  CharacterIndex = objc_msgSend_unmappedCharIndex_(self->_rangeMap, a2, index);
  do
  {
    WeakRetained = objc_loadWeakRetained(&self->_storage);
    CharacterIndex = objc_msgSend_nextCharacterIndex_(WeakRetained, v6, CharacterIndex);
  }

  while (objc_msgSend_containsCharIndex_(self->_rangeMap, v7, CharacterIndex) && objc_msgSend_mappedCharIndex_(self->_rangeMap, v8, CharacterIndex) < self->_length);
  rangeMap = self->_rangeMap;

  return objc_msgSend_mappedCharIndex_(rangeMap, v8, CharacterIndex);
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks
{
  indexCopy = index;
  length = self->_length;
  if (objc_msgSend_length(self, a2, index) > index && (v9 = objc_msgSend_characterAtIndex_(self, v8, indexCopy), IsWhitespaceCharacter(v9, v10)))
  {
    if (indexCopy)
    {
      v12 = indexCopy;
      do
      {
        v13 = v12 - 1;
        v14 = objc_msgSend_characterAtIndex_(self, v11, v12 - 1);
        if (!IsWhitespaceCharacter(v14, v15))
        {
          break;
        }

        if (!breaks)
        {
          v16 = IsParagraphBreakingCharacter(v14);
          if (v14 == 8232 || (v16 & 1) != 0)
          {
            break;
          }
        }

        --v12;
      }

      while (v13);
    }

    else
    {
      v12 = 0;
    }

    if (length > indexCopy)
    {
      while (1)
      {
        v18 = objc_msgSend_characterAtIndex_(self, v11, indexCopy);
        if (!IsWhitespaceCharacter(v18, v19))
        {
          break;
        }

        if (!breaks)
        {
          v20 = IsParagraphBreakingCharacter(v18);
          if (v18 == 8232 || (v20 & 1) != 0)
          {
            break;
          }
        }

        if (length == ++indexCopy)
        {
          indexCopy = length;
          break;
        }
      }
    }

    v17 = indexCopy - v12;
  }

  else
  {
    v17 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v12;
  result.length = v17;
  result.location = v21;
  return result;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex isPrecise:(BOOL)precise
{
  caretIndexCopy = index;
  if (index != caretIndex && objc_msgSend_previousCharacterIndex_(self, a2, caretIndex) != index)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredStorage rangeForSelectionAtCharIndex:caretIndex:isPrecise:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 521, 0, "Precondition: caretIndex is either equal to the given charIndex or one past");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  length = self->_length;
  if (length != caretIndexCopy && length - 1 < caretIndexCopy)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredStorage rangeForSelectionAtCharIndex:caretIndex:isPrecise:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 530, 0, "Character index should be inside allowable selection range.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  if (length <= caretIndexCopy)
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_characterAtIndex_(self, a2, caretIndexCopy);
  }

  if (sub_276D36AEC(v25))
  {
    v27 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(self, v26, caretIndexCopy);
    v30 = v27;
    if (v27)
    {
      if (objc_msgSend_isDrawable(v27, v28, v29) && (objc_msgSend_isAnchored(v30, v31, v32) & 1) != 0)
      {
        if (length <= caretIndex)
        {
          v25 = 0;
        }

        else
        {
          v25 = objc_msgSend_characterAtIndex_(self, v33, caretIndex);
        }

        v34 = 0;
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        caretIndexCopy = caretIndex;
      }

      else
      {
        v34 = 1;
        v35 = caretIndexCopy;
      }
    }

    else
    {
      v34 = 0;
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!sub_276D36AEC(v25))
  {
    if (!IsWhitespaceCharacter(v25, v36))
    {
      goto LABEL_38;
    }

    if (caretIndexCopy == caretIndex && caretIndexCopy)
    {
      caretIndexCopy2 = caretIndex - 1;
      v39 = objc_msgSend_characterAtIndex_(self, v37, caretIndex - 1);
      goto LABEL_34;
    }

    caretIndexCopy2 = caretIndexCopy;
    if (caretIndexCopy + 1 == caretIndex)
    {
      if (length > caretIndex)
      {
        caretIndexCopy2 = caretIndex;
        v39 = objc_msgSend_characterAtIndex_(self, v37, caretIndex);
        goto LABEL_34;
      }

      caretIndexCopy2 = caretIndexCopy;
    }

    v39 = objc_msgSend_characterAtIndex_(self, v37, caretIndexCopy2);
LABEL_34:
    if (!precise)
    {
      v40 = v39;
      if ((IsWhitespaceCharacter(v39, v37) & 1) == 0 && !sub_276D36AEC(v40))
      {
LABEL_39:
        if (v35 == 0x7FFFFFFFFFFFFFFFLL || !v34)
        {
          v41 = objc_msgSend_wordAtCharIndex_includePreviousWord_(self, v37, caretIndexCopy2, 0);
          if (caretIndexCopy2 < length && v41 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v44 = objc_msgSend_string(self, v42, v43);
            v35 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v44, v45, caretIndexCopy2);
            v34 = v46;
          }

          else
          {
            if (caretIndexCopy2 == length)
            {
              v35 = caretIndexCopy2;
            }

            else
            {
              v35 = v41;
            }

            if (caretIndexCopy2 == length)
            {
              v34 = 0;
            }

            else
            {
              v34 = v42;
            }
          }
        }

        goto LABEL_50;
      }
    }

    v35 = objc_msgSend_whiteSpaceRangeAtCharIndex_includingBreaks_(self, v37, caretIndexCopy, 0);
    v34 = v37;
LABEL_38:
    caretIndexCopy2 = caretIndexCopy;
    goto LABEL_39;
  }

LABEL_50:
  v47 = v35;
  v48 = v34;
  result.length = v48;
  result.location = v47;
  return result;
}

@end