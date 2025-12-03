@interface TSWPFilteredStorage
- (BOOL)adjustRangesByDelta:(int64_t)delta;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasSmartFieldsInRange:(_NSRange)range;
- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index;
- (TSWPFilteredStorage)initWithStorage:(id)storage subRange:(_NSRange)range;
- (TSWPFilteredStorage)initWithStorage:(id)storage subRange:(_NSRange)range removeRanges:(id)ranges;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex;
- (_NSRange)scanBackwardForWordAtCharIndex:(unint64_t)index;
- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (__CFDictionary)createFilteredCoreTextAttributes:(__CFDictionary *)attributes effectiveRange:(_NSRange *)range filterDelegate:(id)delegate;
- (double)filteredCoreTextAttributesFontScaleEffectiveRange:(_NSRange *)range filterDelegate:(id)delegate;
- (id)attachmentAtCharIndex:(unint64_t)index;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index;
- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)footnoteReferenceAtCharIndex:(unint64_t)index;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range;
- (id)smartFieldsWithAttributeKind:(unsigned int)kind intersectingRange:(_NSRange)range;
- (id)string;
- (id)substringWithRange:(_NSRange)range;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(__CFLocale *)locale hyphenChar:(unsigned int *)char;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage;
- (unint64_t)nextCharacterIndex:(unint64_t)index;
- (unint64_t)previousCharacterIndex:(unint64_t)index;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[19] attributesTable:(id)table[19] effectiveRange:(_NSRange *)range;
- (void)dealloc;
- (void)enumerateSmartFieldsWithAttributeKind:(unsigned int)kind inRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateWithAttributeKind:(unsigned int)kind inRange:(_NSRange)range usingBlock:(id)block;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation TSWPFilteredStorage

- (TSWPFilteredStorage)initWithStorage:(id)storage subRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = [storage hiddenRangesInRange:{range.location, range.length}];

  return [(TSWPFilteredStorage *)self initWithStorage:storage subRange:location removeRanges:length, v8];
}

- (TSWPFilteredStorage)initWithStorage:(id)storage subRange:(_NSRange)range removeRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  v14.receiver = self;
  v14.super_class = TSWPFilteredStorage;
  v9 = [(TSWPFilteredStorage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_storage = storage;
    ranges = [[TSWPDeletionRangeMap alloc] initWithSubRange:location removeRanges:length, ranges];
    v10->_rangeMap = ranges;
    [(TSWPDeletionRangeMap *)ranges mappedCharRange:location, length];
    v10->_length = v12;
    v10->_storageLength = [storage length];
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPFilteredStorage;
  [(TSWPFilteredStorage *)&v3 dealloc];
}

- (id)string
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:0, self->_length];
  v6 = [(TSWPDeletionRangeMap *)self->_rangeMap inverseRangesInStorageRange:v4, v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__TSWPFilteredStorage_string__block_invoke;
  v8[3] = &unk_279D49AF0;
  v8[4] = string;
  v8[5] = self;
  [v6 enumerateRangesUsingBlock:v8];
  return string;
}

uint64_t __29__TSWPFilteredStorage_string__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 8) substringWithRange:{a2, a3}];

  return [v3 appendString:v4];
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  storage = self->_storage;
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPStorage *)storage characterAtIndex:v4];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:range.location, range.length];
  v10 = v9;
  v11 = [(TSWPDeletionRangeMap *)self->_rangeMap inverseRangesInStorageRange:v8, v9];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__TSWPFilteredStorage_getCharacters_range___block_invoke;
  v12[3] = &unk_279D49B18;
  v12[6] = v8;
  v12[7] = v10;
  v12[8] = location;
  v12[9] = length;
  v12[4] = self;
  v12[5] = v13;
  v12[10] = characters;
  [v11 enumerateRangesUsingBlock:v12];
  _Block_object_dispose(v13, 8);
}

uint64_t __43__TSWPFilteredStorage_getCharacters_range___block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6 > a2 || *(result + 56) + v6 < a2 + a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFilteredStorage getCharacters:range:]_block_invoke"];
    result = [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFilteredStorage.mm"), 107, @"Bogus visible range"}];
  }

  v9 = *(*(v5[5] + 8) + 24);
  v10 = a3 + v9;
  v11 = v5[9];
  if (a3 + v9 > v11)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFilteredStorage getCharacters:range:]_block_invoke"];
    result = [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFilteredStorage.mm"), 108, @"Not enough room in text buffer"}];
    v9 = *(*(v5[5] + 8) + 24);
    v11 = v5[9];
    v10 = a3 + v9;
  }

  if (v10 <= v11)
  {
    result = [*(v5[4] + 8) getCharacters:v5[10] + 2 * v9 range:{a2, a3}];
    *(*(v5[5] + 8) + 24) += a3;
  }

  return result;
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index
{
  storage = self->_storage;
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPStorage *)storage hasColumnBreakAtCharIndex:v4];
}

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index
{
  storage = self->_storage;
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPStorage *)storage hasColumnStyleForParagraphBreakAtCharIndex:v4];
}

- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[19] attributesTable:(id)table[19] effectiveRange:(_NSRange *)range
{
  v9 = xmmword_26CA637B0;
  [(TSWPStorage *)self->_storage attributesAtCharIndex:[(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index] attributesOfInterest:interest attributesTable:table effectiveRange:&v9];
  if (range)
  {
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:v9];
    range->length = v8;
  }
}

- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range
{
  v11 = xmmword_26CA637B0;
  v7 = [(TSWPStorage *)self->_storage smartFieldAtCharIndex:[(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index] attributeKind:*&kind effectiveRange:&v11];
  v8 = v7;
  if (range && v7)
  {
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:v11];
    range->length = v9;
  }

  return v8;
}

- (id)smartFieldsWithAttributeKind:(unsigned int)kind intersectingRange:(_NSRange)range
{
  v4 = *&kind;
  storage = self->_storage;
  v7 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:range.location, range.length];

  return [(TSWPStorage *)storage smartFieldsWithAttributeKind:v4 intersectingRange:v7, v6];
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)index
{
  storage = self->_storage;
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPStorage *)storage footnoteReferenceAtCharIndex:v4];
}

- (id)attachmentAtCharIndex:(unint64_t)index
{
  storage = self->_storage;
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPStorage *)storage attachmentAtCharIndex:v4];
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index
{
  storage = self->_storage;
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPStorage *)storage attachmentOrFootnoteAtCharIndex:v4];
}

- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v12 = xmmword_26CA637B0;
  storage = self->_storage;
  v7 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];
  if (range)
  {
    v8 = &v12;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TSWPStorage *)storage characterStyleAtCharIndex:v7 effectiveRange:v8];
  if (range)
  {
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:v12];
    range->length = v10;
  }

  return v9;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  wordCopy = word;
  v7 = MEMORY[0x277D6C268];
  v9 = *MEMORY[0x277D6C268];
  v8 = *(MEMORY[0x277D6C268] + 8);
  v10 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:?];
  v11 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:0];
  v12 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:[(TSWPFilteredStorage *)self length]];
  v13 = v12;
  if (v10)
  {
    v14 = v10 == v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16.location = [(TSWPStorage *)self->_storage textRangeForParagraphAtCharIndex:v10 - v15];
  location = v16.location;
  if (v16.length)
  {
    if (v11 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v11;
    }

    if (v11 >= v13)
    {
      v19.location = v13;
    }

    else
    {
      v19.location = v11;
    }

    v19.length = v18 - v19.location;
    v21 = NSIntersectionRange(v16, v19);
    length = v21.length;
    location = 0x7FFFFFFFFFFFFFFFLL;
    if (v21.length)
    {
      location = v21.location;
    }
  }

  else if (v16.location <= v13)
  {
    length = 0;
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFilteredStorage wordAtCharIndex:includePreviousWord:]"];
    [currentHandler handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFilteredStorage.mm"), 224, @"unexpected paragraph range past the end of mapped storage"}];
    location = *v7;
    length = v7[1];
  }

  if (location != *v7 || length != v7[1])
  {
    v25 = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:location, length];
    v27 = [-[TSWPFilteredStorage substringWithRange:](self substringWithRange:{v25, v26), "rangeOfWordAtCharacterIndex:range:includePreviousWord:", index - v25, 0, v26, wordCopy}];
    v8 = v28;
    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v27 + v25;
    }
  }

  v29 = v9;
  v30 = v8;
  result.length = v30;
  result.location = v29;
  return result;
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(__CFLocale *)locale hyphenChar:(unsigned int *)char
{
  length = range.length;
  location = range.location;
  v11 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];
  v12 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:location, length];
  v14 = v13;
  string = [(TSWPStorage *)self->_storage string];
  v20.location = v12;
  v20.length = v14;
  result = CFStringGetHyphenationLocationBeforeIndex(string, v11, v20, 0, locale, char);
  if (result != -1)
  {
    v17 = result;
    rangeMap = self->_rangeMap;

    return [(TSWPDeletionRangeMap *)rangeMap mappedCharIndex:v17];
  }

  return result;
}

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range
{
  v7 = [(TSWPStorage *)self->_storage objectAtLocationPriorToMappedCharIndex:[(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index] forAttributeKind:*&kind effectiveRange:range];
  if (range)
  {
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:range->location, range->length];
    range->length = v8;
  }

  return v7;
}

- (double)filteredCoreTextAttributesFontScaleEffectiveRange:(_NSRange *)range filterDelegate:(id)delegate
{
  if (range)
  {
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:range->location, range->length];
    range->length = v7;
    [(TSWPStorage *)self->_storage filteredCoreTextAttributesFontScaleEffectiveRange:range filterDelegate:delegate];
    v9 = v8;
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:range->location, range->length];
    range->length = v10;
    return v9;
  }

  else
  {
    storage = self->_storage;

    [TSWPStorage filteredCoreTextAttributesFontScaleEffectiveRange:"filteredCoreTextAttributesFontScaleEffectiveRange:filterDelegate:" filterDelegate:?];
  }

  return result;
}

- (__CFDictionary)createFilteredCoreTextAttributes:(__CFDictionary *)attributes effectiveRange:(_NSRange *)range filterDelegate:(id)delegate
{
  if (range)
  {
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:range->location, range->length];
    range->length = v9;
    v10 = [(TSWPStorage *)self->_storage createFilteredCoreTextAttributes:attributes effectiveRange:range filterDelegate:delegate];
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:range->location, range->length];
    range->length = v11;
    return v10;
  }

  else
  {
    storage = self->_storage;

    return [TSWPStorage createFilteredCoreTextAttributes:"createFilteredCoreTextAttributes:effectiveRange:filterDelegate:" effectiveRange:? filterDelegate:?];
  }
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)storage
{
  v3 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:storage.location, storage.length];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage
{
  v3 = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:storage.location, storage.length];
  result.length = v4;
  result.location = v3;
  return result;
}

- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage
{
  v4 = [(TSWPFilteredStorage *)self charIndexMappedFromStorage:storage];

  return [(TSWPFilteredStorage *)self charIndexMappedToStorage:v4];
}

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v6 = [(TSWPStorage *)self->_storage paragraphStyleAtCharIndex:[(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index] effectiveRange:range];
  if (range)
  {
    range->location = [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharRange:range->location, range->length];
    range->length = v7;
  }

  return v6;
}

- (BOOL)isWritingDirectionRightToLeftForParagraphAtCharIndex:(unint64_t)index
{
  storage = self->_storage;
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPStorage *)storage isWritingDirectionRightToLeftForParagraphAtCharIndex:v4];
}

- (BOOL)adjustRangesByDelta:(int64_t)delta
{
  storageLength = [(TSWPStorage *)self->_storage storageLength];
  if (delta && self->_storageLength != storageLength)
  {
    self->_storageLength = storageLength;
    [(TSWPDeletionRangeMap *)self->_rangeMap adjustByDelta:delta];
  }

  return 1;
}

- (id)substringWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:?];
  v8 = v6;
  if (v6 == length)
  {
    storage = self->_storage;

    return [(TSWPStorage *)storage substringWithRange:v7, v6];
  }

  else
  {
    v11 = [MEMORY[0x277CCAB68] stringWithCapacity:length];
    v12 = [(TSWPDeletionRangeMap *)self->_rangeMap inverseRangesInStorageRange:v7, v8];
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__TSWPFilteredStorage_substringWithRange___block_invoke;
    v13[3] = &unk_279D49B40;
    v13[6] = v14;
    v13[7] = v7;
    v13[8] = v8;
    v13[9] = location;
    v13[10] = length;
    v13[4] = v11;
    v13[5] = self;
    [v12 enumerateRangesUsingBlock:v13];
    _Block_object_dispose(v14, 8);
    return v11;
  }
}

uint64_t __42__TSWPFilteredStorage_substringWithRange___block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 56);
  if (v6 > a2 || *(result + 64) + v6 < a2 + a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFilteredStorage substringWithRange:]_block_invoke"];
    result = [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFilteredStorage.mm"), 392, @"Bogus visible range"}];
  }

  v9 = a3 + *(*(*(v5 + 48) + 8) + 24);
  v10 = *(v5 + 80);
  if (v9 > v10)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFilteredStorage substringWithRange:]_block_invoke"];
    result = [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFilteredStorage.mm"), 393, @"Not enough room in text buffer"}];
    v10 = *(v5 + 80);
    v9 = a3 + *(*(*(v5 + 48) + 8) + 24);
  }

  if (v9 <= v10)
  {
    result = [*(v5 + 32) appendString:{objc_msgSend(*(*(v5 + 40) + 8), "substringWithRange:", a2, a3)}];
    *(*(*(v5 + 48) + 8) + 24) += a3;
  }

  return result;
}

- (void)enumerateWithAttributeKind:(unsigned int)kind inRange:(_NSRange)range usingBlock:(id)block
{
  v6 = *&kind;
  v8 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:range.location, range.length];
  storage = self->_storage;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__TSWPFilteredStorage_enumerateWithAttributeKind_inRange_usingBlock___block_invoke;
  v11[3] = &unk_279D49B68;
  v11[4] = self;
  v11[5] = block;
  [(TSWPStorage *)storage enumerateWithAttributeKind:v6 inRange:v8 usingBlock:v10, v11];
}

uint64_t __69__TSWPFilteredStorage_enumerateWithAttributeKind_inRange_usingBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) charRangeMappedFromStorage:?];
  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

- (void)enumerateSmartFieldsWithAttributeKind:(unsigned int)kind inRange:(_NSRange)range usingBlock:(id)block
{
  v6 = *&kind;
  v8 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharRange:range.location, range.length];
  storage = self->_storage;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__TSWPFilteredStorage_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock___block_invoke;
  v11[3] = &unk_279D49B68;
  v11[4] = self;
  v11[5] = block;
  [(TSWPStorage *)storage enumerateSmartFieldsWithAttributeKind:v6 inRange:v8 usingBlock:v10, v11];
}

uint64_t __80__TSWPFilteredStorage_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) charRangeMappedFromStorage:?];
  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

- (BOOL)hasSmartFieldsInRange:(_NSRange)range
{
  selfCopy = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  rangeMap = self->_rangeMap;
  v5 = [(TSWPDeletionRangeMap *)rangeMap unmappedCharRange:range.location, range.length];
  v7 = [(TSWPDeletionRangeMap *)rangeMap inverseRangesInStorageRange:v5, v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__TSWPFilteredStorage_hasSmartFieldsInRange___block_invoke;
  v9[3] = &unk_279D49B90;
  v9[4] = selfCopy;
  v9[5] = &v10;
  [v7 enumerateRangesUsingBlock:v9];
  LOBYTE(selfCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return selfCopy;
}

uint64_t __45__TSWPFilteredStorage_hasSmartFieldsInRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(*(a1 + 32) + 8) hasSmartFieldsInRange:{a2, a3}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (_NSRange)scanBackwardForWordAtCharIndex:(unint64_t)index
{
  indexCopy3 = index;
  if (self->_length > index)
  {
    indexCopy3 = index;
    if (IsWhitespaceCharacter([(TSWPFilteredStorage *)self characterAtIndex:index]))
    {
      v6 = [(TSWPFilteredStorage *)self whiteSpaceRangeAtCharIndex:index includingBreaks:1];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexCopy3 = index;
      }

      else
      {
        indexCopy3 = v6;
      }
    }
  }

  v7 = [(TSWPFilteredStorage *)self wordAtCharIndex:index includePreviousWord:1];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = indexCopy3;
  }

  v8 = index - v7;
  result.length = v8;
  result.location = v7;
  return result;
}

- (unint64_t)previousCharacterIndex:(unint64_t)index
{
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];
  do
  {
    v4 = [(TSWPStorage *)self->_storage previousCharacterIndex:v4];
  }

  while ([(TSWPDeletionRangeMap *)self->_rangeMap containsCharIndex:v4]&& [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharIndex:v4]);
  rangeMap = self->_rangeMap;

  return [(TSWPDeletionRangeMap *)rangeMap mappedCharIndex:v4];
}

- (unint64_t)nextCharacterIndex:(unint64_t)index
{
  v4 = [(TSWPDeletionRangeMap *)self->_rangeMap unmappedCharIndex:index];
  do
  {
    v4 = [(TSWPStorage *)self->_storage nextCharacterIndex:v4];
  }

  while ([(TSWPDeletionRangeMap *)self->_rangeMap containsCharIndex:v4]&& [(TSWPDeletionRangeMap *)self->_rangeMap mappedCharIndex:v4]< self->_length);
  rangeMap = self->_rangeMap;

  return [(TSWPDeletionRangeMap *)rangeMap mappedCharIndex:v4];
}

- (_NSRange)whiteSpaceRangeAtCharIndex:(unint64_t)index includingBreaks:(BOOL)breaks
{
  indexCopy = index;
  length = self->_length;
  if ([(TSWPFilteredStorage *)self length]> index && IsWhitespaceCharacter([(TSWPFilteredStorage *)self characterAtIndex:indexCopy]))
  {
    if (indexCopy)
    {
      v8 = indexCopy;
      do
      {
        v9 = v8 - 1;
        v10 = [(TSWPFilteredStorage *)self characterAtIndex:v8 - 1];
        if (!IsWhitespaceCharacter(v10))
        {
          break;
        }

        if (!breaks)
        {
          v11 = IsParagraphBreakingCharacter(v10);
          if (v10 == 8232 || (v11 & 1) != 0)
          {
            break;
          }
        }

        --v8;
      }

      while (v9);
    }

    else
    {
      v8 = 0;
    }

    if (length > indexCopy)
    {
      while (1)
      {
        v13 = [(TSWPFilteredStorage *)self characterAtIndex:indexCopy];
        if (!IsWhitespaceCharacter(v13))
        {
          break;
        }

        if (!breaks)
        {
          v14 = IsParagraphBreakingCharacter(v13);
          if (v13 == 8232 || (v14 & 1) != 0)
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

    v12 = indexCopy - v8;
  }

  else
  {
    v12 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = v8;
  result.length = v12;
  result.location = v15;
  return result;
}

- (_NSRange)rangeForSelectionAtCharIndex:(unint64_t)index caretIndex:(unint64_t)caretIndex
{
  caretIndexCopy = index;
  if (index != caretIndex && [(TSWPFilteredStorage *)self previousCharacterIndex:caretIndex]!= index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFilteredStorage rangeForSelectionAtCharIndex:caretIndex:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFilteredStorage.mm"), 547, @"Precondition: caretIndex is either equal to the given charIndex or one past"}];
  }

  length = self->_length;
  if (length - 1 < caretIndexCopy)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPFilteredStorage rangeForSelectionAtCharIndex:caretIndex:]"];
    [currentHandler2 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPFilteredStorage.mm"), 557, @"Character index should be inside allowable selection range."}];
  }

  if (length <= caretIndexCopy)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(TSWPFilteredStorage *)self characterAtIndex:caretIndexCopy];
  }

  if (!IsSpecialCharacter(v12))
  {
    v14 = 0;
    goto LABEL_16;
  }

  v13 = [(TSWPFilteredStorage *)self attachmentOrFootnoteAtCharIndex:caretIndexCopy];
  v14 = v13;
  if (!v13)
  {
LABEL_16:
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_20;
  }

  if ([v13 isDrawable] && objc_msgSend(v14, "isAnchored"))
  {
    if (length <= caretIndex)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(TSWPFilteredStorage *)self characterAtIndex:caretIndex];
    }

    v14 = 0;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    caretIndexCopy = caretIndex;
  }

  else
  {
    v14 = 1;
    v15 = caretIndexCopy;
  }

LABEL_20:
  if (IsSpecialCharacter(v12))
  {
    goto LABEL_42;
  }

  if (IsWhitespaceCharacter(v12))
  {
    if (caretIndexCopy == caretIndex && caretIndexCopy)
    {
      v16 = caretIndex - 1;
    }

    else
    {
      if (length <= caretIndex)
      {
        caretIndexCopy2 = caretIndexCopy;
      }

      else
      {
        caretIndexCopy2 = caretIndex;
      }

      if (caretIndexCopy + 1 == caretIndex)
      {
        v16 = caretIndexCopy2;
      }

      else
      {
        v16 = caretIndexCopy;
      }
    }

    v18 = [(TSWPFilteredStorage *)self characterAtIndex:v16];
    v19 = v18;
    if ((IsWhitespaceCharacter(v18) & 1) == 0 && !IsSpecialCharacter(v19))
    {
      goto LABEL_35;
    }

    v15 = [(TSWPFilteredStorage *)self whiteSpaceRangeAtCharIndex:caretIndexCopy includingBreaks:0];
    v14 = v20;
  }

  v16 = caretIndexCopy;
LABEL_35:
  if (v15 == 0x7FFFFFFFFFFFFFFFLL || !v14)
  {
    v21 = [(TSWPFilteredStorage *)self wordAtCharIndex:v16 includePreviousWord:0];
    v14 = v22;
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v16 >= length)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = [-[TSWPFilteredStorage string](self "string")];
        v14 = v23;
      }
    }

    else
    {
      v15 = v21;
    }
  }

LABEL_42:
  v24 = v15;
  v25 = v14;
  result.length = v25;
  result.location = v24;
  return result;
}

@end