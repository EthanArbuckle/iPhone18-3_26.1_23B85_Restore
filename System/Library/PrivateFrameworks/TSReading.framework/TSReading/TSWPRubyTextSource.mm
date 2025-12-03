@interface TSWPRubyTextSource
- (BOOL)adjustRangesByDelta:(int64_t)delta;
- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index;
- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index;
- (TSWPRubyTextSource)initWithSource:(id)source subRange:(_NSRange)range;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word;
- (__CFDictionary)createFilteredCoreTextAttributes:(__CFDictionary *)attributes effectiveRange:(_NSRange *)range filterDelegate:(id)delegate;
- (double)filteredCoreTextAttributesFontScaleEffectiveRange:(_NSRange *)range filterDelegate:(id)delegate;
- (id).cxx_construct;
- (id)attachmentAtCharIndex:(unint64_t)index;
- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index;
- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)footnoteReferenceAtCharIndex:(unint64_t)index;
- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range;
- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range;
- (id)smartFieldsWithAttributeKind:(unsigned int)kind intersectingRange:(_NSRange)range;
- (id)string;
- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(__CFLocale *)locale hyphenChar:(unsigned int *)char;
- (unint64_t)charIndexMappedFromStorage:(unint64_t)storage;
- (unint64_t)charIndexMappedToStorage:(unint64_t)storage;
- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage;
- (unsigned)characterAtIndex:(unint64_t)index;
- (unsigned)composedCharacterAtCharIndex:(unint64_t)index isSurrogatePair:(BOOL *)pair;
- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[19] attributesTable:(id)table[19] effectiveRange:(_NSRange *)range;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation TSWPRubyTextSource

- (TSWPRubyTextSource)initWithSource:(id)source subRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v57[2] = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = TSWPRubyTextSource;
  v7 = [(TSWPRubyTextSource *)&v45 init];
  if (v7)
  {
    sourceCopy = source;
    v7->_source = sourceCopy;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __46__TSWPRubyTextSource_initWithSource_subRange___block_invoke;
    v44[3] = &unk_279D49730;
    v44[5] = location;
    v44[6] = length;
    v44[4] = v7;
    [(TSWPTextSource *)sourceCopy enumerateSmartFieldsWithAttributeKind:7 inRange:location usingBlock:length, v44];
    p_spaceCharIndexes = &v7->_spaceCharIndexes;
    p_end = &v7->_spaceCharIndexes.__end_;
    if (v7->_spaceCharIndexes.__begin_ == v7->_spaceCharIndexes.__end_ && length >= 2)
    {
      v35 = &v7->_spaceCharIndexes.__end_;
      v36 = &v7->_spaceCharIndexes;
      v38 = length;
      sourceCopy2 = source;
      v56 = 0x1000000;
      v57[0] = 0x10000000000;
      *(v57 + 7) = 0;
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v12 = location + length;
      v48 = 0u;
      v46 = 0u;
      v47 = 0u;
      v37 = location;
      v13 = location;
      v14 = *MEMORY[0x277D6C3B8];
      do
      {
        [(TSWPTextSource *)v7->_source attributesAtCharIndex:v13 attributesOfInterest:&v56 attributesTable:&v46 effectiveRange:&v42, v35, v36, v37, v38, sourceCopy2];
        v15 = *(&v47 + 1);
        if (*(&v47 + 1))
        {
          writingDirection = [*(&v47 + 1) writingDirection];
          if ([v15 containsProperty:39])
          {
            [v15 objectForProperty:39];
          }
        }

        else
        {
          writingDirection = -1;
        }

        objc_opt_class();
        v17 = TSUDynamicCast();
        v18 = v17;
        if (writingDirection == -1 && v17)
        {
          writingDirection = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v17] == 2;
        }

        v19 = v43 + v42;
        if (v12 < v43 + v42)
        {
          v19 = v12;
        }

        if (v42 > v13)
        {
          v13 = v42;
        }

        v20 = v19 - v13;
        v42 = v13;
        v43 = v19 - v13;
        if (writingDirection == 1 && v19 > v13)
        {
          v21 = 0;
          do
          {
            v41 = 0;
            v22 = [v18 isEqualToString:v14];
            v23 = [(TSWPRubyTextSource *)v7 composedCharacterAtCharIndex:v13 isSurrogatePair:&v41];
            v24 = TSWPGetBidiClass();
            v25 = v24;
            if (v23 == 9 || v24 == 6 || !v21 && v24 == 4 || v24 == 5 && (v22 & v21 & 1) == 0)
            {
              if (v41)
              {
                v26 = 2;
              }

              else
              {
                v26 = 1;
              }

              v40 = v26 + v13;
              std::vector<unsigned long>::push_back[abi:nn200100](&v7->_bidiCharIndexes.__begin_, &v40);
            }

            v21 = v25 == 3;
            v13 += v41 + 1;
            v20 = v43;
          }

          while (v13 < v43 + v42);
          v13 = v42;
        }

        v13 += v20;
        if (v13 > v12)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRubyTextSource initWithSource:subRange:]"];
          [currentHandler handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRubyTextSource.mm"), 125, @"Bad curCharIndex"}];
        }
      }

      while (v13 < v12);
      length = v38;
      source = sourceCopy2;
      p_spaceCharIndexes = v36;
      location = v37;
      p_end = v35;
    }

    begin = v7->_bidiCharIndexes.__begin_;
    end = v7->_bidiCharIndexes.__end_;
    v31 = [TSWPRangeMap alloc];
    if (begin == end)
    {
      p_spaceCharIndexes = [(TSWPRangeMap *)v31 initWithSubRange:location unmappedPairIndexes:length, p_spaceCharIndexes];
    }

    else
    {
      p_spaceCharIndexes = [(TSWPRangeMap *)v31 initWithSubRange:location unmappedIndexes:length affinity:&v7->_bidiCharIndexes, 1];
      p_end = &v7->_bidiCharIndexes.__end_;
      p_spaceCharIndexes = &v7->_bidiCharIndexes;
    }

    v33 = length + *p_end - p_spaceCharIndexes->__begin_;
    v7->_rangeMap = p_spaceCharIndexes;
    v7->_length = v33;
    v7->_storageLength = [source storageLength];
  }

  return v7;
}

void __46__TSWPRubyTextSource_initWithSource_subRange___block_invoke(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a1[5];
  if (v6 <= a3)
  {
    v11[3] = v4;
    v11[4] = v5;
    v8 = a3 + a4;
    if (a1[6] + v6 >= a3 + a4)
    {
      v9 = a1[4];
      v11[0] = a3;
      std::vector<unsigned long>::push_back[abi:nn200100]((v9 + 8), v11);
      v10 = a1[4];
      v11[0] = v8;
      std::vector<unsigned long>::push_back[abi:nn200100]((v10 + 8), v11);
    }
  }
}

- (unsigned)composedCharacterAtCharIndex:(unint64_t)index isSurrogatePair:(BOOL *)pair
{
  *pair = 0;
  v7 = [(TSWPTextSource *)self->_source length];
  v8 = 0;
  if (v7 > index)
  {
    v9 = v7;
    v8 = [(TSWPTextSource *)self->_source characterAtIndex:index];
    v10 = index + 1;
    if (index + 1 < v9)
    {
      v11 = [(TSWPTextSource *)self->_source characterAtIndex:index];
      v12 = [(TSWPTextSource *)self->_source characterAtIndex:v10];
      if ((v11 & 0xFC00) == 0xD800 && (v12 & 0xFC00) == 56320)
      {
        *pair = 1;
        return v12 + (v11 << 10) - 56613888;
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPRubyTextSource;
  [(TSWPRubyTextSource *)&v3 dealloc];
}

- (BOOL)adjustRangesByDelta:(int64_t)delta
{
  v5 = [(TSWPTextSource *)self->_source adjustRangesByDelta:?];
  if (delta)
  {
    storageLength = self->_storageLength;
    if (storageLength != [(TSWPTextSource *)self->_source storageLength])
    {
      v7 = self->_storageLength + delta;
      if (v7 != [(TSWPTextSource *)self->_source storageLength])
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRubyTextSource adjustRangesByDelta:]"];
        [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRubyTextSource.mm"), 187, @"delta mismatch"}];
      }

      self->_storageLength = [(TSWPTextSource *)self->_source storageLength];
      if ((v5 & 1) == 0)
      {
        [(TSWPRangeMap *)self->_rangeMap adjustByDelta:delta];
      }

      return 1;
    }
  }

  return v5;
}

- (id)string
{
  v3 = [(TSWPRangeMap *)self->_rangeMap unmappedCharRange:0, self->_length];
  v5 = v3;
  v6 = v4;
  if (self->_spaceCharIndexes.__end_ != self->_spaceCharIndexes.__begin_)
  {
    string = [MEMORY[0x277CCAB68] string];
    begin = self->_spaceCharIndexes.__begin_;
    end = self->_spaceCharIndexes.__end_;
    if (begin != end)
    {
      v10 = v5;
      do
      {
        v11 = v10;
        v12 = *begin++;
        v10 = v12;
        v13 = v11 >= v12;
        if (v11 <= v12)
        {
          v14 = v10;
        }

        else
        {
          v14 = v11;
        }

        if (v13)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        [string appendString:{-[TSWPTextSource substringWithRange:](self->_source, "substringWithRange:", v15, v14 - v15)}];
        [string appendFormat:@"%C", 8209];
      }

      while (begin != end);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (self->_bidiCharIndexes.__end_ != self->_bidiCharIndexes.__begin_)
  {
    string = [MEMORY[0x277CCAB68] string];
    v16 = self->_bidiCharIndexes.__begin_;
    v17 = self->_bidiCharIndexes.__end_;
    if (v16 != v17)
    {
      v10 = v5;
      do
      {
        v18 = v10;
        v19 = *v16++;
        v10 = v19;
        v20 = v18 >= v19;
        if (v18 <= v19)
        {
          v21 = v10;
        }

        else
        {
          v21 = v18;
        }

        if (v20)
        {
          v22 = v10;
        }

        else
        {
          v22 = v18;
        }

        [string appendString:{-[TSWPTextSource substringWithRange:](self->_source, "substringWithRange:", v22, v21 - v22)}];
        [string appendFormat:@"%C", 8207];
      }

      while (v16 != v17);
LABEL_24:
      if (string)
      {
        if (v10 <= v5 + v6)
        {
          v23 = v5 + v6;
        }

        else
        {
          v23 = v10;
        }

        if (v10 >= v5 + v6)
        {
          v24 = v5 + v6;
        }

        else
        {
          v24 = v10;
        }

        [string appendString:{-[TSWPTextSource substringWithRange:](self->_source, "substringWithRange:", v24, v23 - v24)}];
      }

      return string;
    }

LABEL_23:
    v10 = v5;
    goto LABEL_24;
  }

  if (v3 || v4 != [-[TSWPTextSource string](self->_source "string")])
  {
    source = self->_source;

    return [(TSWPTextSource *)source substringWithRange:v5, v6];
  }

  else
  {
    v26 = self->_source;

    return [(TSWPTextSource *)v26 string];
  }
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  v6 = [(TSWPRangeMap *)self->_rangeMap unmappedCharRange:range.location, range.length];
  v7 = v6;
  v9 = v8;
  begin = self->_spaceCharIndexes.__begin_;
  end = self->_spaceCharIndexes.__end_;
  if (end == begin)
  {
    v21 = self->_bidiCharIndexes.__begin_;
    v20 = self->_bidiCharIndexes.__end_;
    if (v20 == v21)
    {
      v13 = v6;
    }

    else
    {
      v22 = v6;
      do
      {
        v23 = *v21++;
        v13 = v23;
        v24 = v22 >= v23;
        if (v22 <= v23)
        {
          v25 = v13;
        }

        else
        {
          v25 = v22;
        }

        if (v24)
        {
          v26 = v13;
        }

        else
        {
          v26 = v22;
        }

        v27 = v25 - v26;
        [(TSWPTextSource *)self->_source getCharacters:characters range:?];
        v28 = &characters[v27];
        *v28 = 8207;
        characters = v28 + 1;
        v22 = v13;
      }

      while (v21 != v20);
    }
  }

  else
  {
    v12 = v6;
    do
    {
      v14 = *begin++;
      v13 = v14;
      v15 = v12 >= v14;
      if (v12 <= v14)
      {
        v16 = v13;
      }

      else
      {
        v16 = v12;
      }

      if (v15)
      {
        v17 = v13;
      }

      else
      {
        v17 = v12;
      }

      v18 = v16 - v17;
      [(TSWPTextSource *)self->_source getCharacters:characters range:?];
      v19 = &characters[v18];
      *v19 = 8209;
      characters = v19 + 1;
      v12 = v13;
    }

    while (begin != end);
  }

  source = self->_source;
  if (v13 <= v7 + v9)
  {
    v30 = v7 + v9;
  }

  else
  {
    v30 = v13;
  }

  if (v13 >= v7 + v9)
  {
    v31 = v7 + v9;
  }

  else
  {
    v31 = v13;
  }

  [(TSWPTextSource *)source getCharacters:characters range:v31, v30 - v31];
}

- (BOOL)hasColumnBreakAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v4 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPTextSource *)source hasColumnBreakAtCharIndex:v4];
}

- (BOOL)hasColumnStyleForParagraphBreakAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v4 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPTextSource *)source hasColumnStyleForParagraphBreakAtCharIndex:v4];
}

- (void)attributesAtCharIndex:(unint64_t)index attributesOfInterest:(BOOL)interest[19] attributesTable:(id)table[19] effectiveRange:(_NSRange *)range
{
  v9 = xmmword_26CA637B0;
  [(TSWPTextSource *)self->_source attributesAtCharIndex:[(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index] attributesOfInterest:interest attributesTable:table effectiveRange:&v9];
  if (range)
  {
    range->location = [(TSWPRangeMap *)self->_rangeMap mappedCharRange:v9];
    range->length = v8;
  }
}

- (double)filteredCoreTextAttributesFontScaleEffectiveRange:(_NSRange *)range filterDelegate:(id)delegate
{
  if (!range)
  {
    return 1.0;
  }

  v12 = [(TSWPRangeMap *)self->_rangeMap unmappedCharRange:range->location, range->length];
  v13 = v7;
  [(TSWPTextSource *)self->_source filteredCoreTextAttributesFontScaleEffectiveRange:&v12 filterDelegate:delegate];
  v9 = v8;
  range->location = [(TSWPRangeMap *)self->_rangeMap mappedCharRange:v12, v13];
  range->length = v10;
  return v9;
}

- (__CFDictionary)createFilteredCoreTextAttributes:(__CFDictionary *)attributes effectiveRange:(_NSRange *)range filterDelegate:(id)delegate
{
  if (range)
  {
    v12 = [(TSWPRangeMap *)self->_rangeMap unmappedCharRange:range->location, range->length];
    v13 = v9;
    attributes = [(TSWPTextSource *)self->_source createFilteredCoreTextAttributes:attributes effectiveRange:&v12 filterDelegate:delegate];
    range->location = [(TSWPRangeMap *)self->_rangeMap mappedCharRange:v12, v13];
    range->length = v10;
  }

  return attributes;
}

- (id)smartFieldAtCharIndex:(unint64_t)index attributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range
{
  v13 = xmmword_26CA637B0;
  v8 = [(TSWPTextSource *)self->_source smartFieldAtCharIndex:[(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:?] attributeKind:*&kind effectiveRange:&v13];
  length = v13.length;
  location = v13.location;
  if (v8)
  {
    location = [(TSWPRangeMap *)self->_rangeMap mappedCharRange:v13];
    v13.location = location;
    v13.length = length;
  }

  if (index < location || index - location >= length)
  {
    v8 = 0;
    v13 = xmmword_26CA637B0;
  }

  if (range)
  {
    *range = v13;
  }

  return v8;
}

- (id)smartFieldsWithAttributeKind:(unsigned int)kind intersectingRange:(_NSRange)range
{
  v4 = *&kind;
  source = self->_source;
  v7 = [(TSWPRangeMap *)self->_rangeMap unmappedCharRange:range.location, range.length];

  return [(TSWPTextSource *)source smartFieldsWithAttributeKind:v4 intersectingRange:v7, v6];
}

- (id)footnoteReferenceAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v4 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPTextSource *)source footnoteReferenceAtCharIndex:v4];
}

- (id)attachmentAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v4 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPTextSource *)source attachmentAtCharIndex:v4];
}

- (id)attachmentOrFootnoteAtCharIndex:(unint64_t)index
{
  source = self->_source;
  v4 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPTextSource *)source attachmentOrFootnoteAtCharIndex:v4];
}

- (id)paragraphStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v9 = xmmword_26CA637B0;
  v6 = [(TSWPTextSource *)self->_source paragraphStyleAtCharIndex:[(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index] effectiveRange:&v9];
  if (range)
  {
    range->location = [(TSWPRangeMap *)self->_rangeMap mappedCharRange:v9];
    range->length = v7;
  }

  return v6;
}

- (id)characterStyleAtCharIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  v12 = xmmword_26CA637B0;
  source = self->_source;
  v7 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index];
  if (range)
  {
    v8 = &v12;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TSWPTextSource *)source characterStyleAtCharIndex:v7 effectiveRange:v8];
  if (range)
  {
    range->location = [(TSWPRangeMap *)self->_rangeMap mappedCharRange:v12];
    range->length = v10;
  }

  return v9;
}

- (_NSRange)wordAtCharIndex:(unint64_t)index includePreviousWord:(BOOL)word
{
  v6 = [(TSWPTextSource *)self->_source wordAtCharIndex:[(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index] includePreviousWord:word];
  rangeMap = self->_rangeMap;

  v8 = [(TSWPRangeMap *)rangeMap mappedCharRange:v6, v5];
  result.length = v9;
  result.location = v8;
  return result;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  source = self->_source;
  v4 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index];

  return [(TSWPTextSource *)source characterAtIndex:v4];
}

- (int64_t)hyphenationLocationBeforeIndex:(int64_t)index inRange:(_NSRange)range locale:(__CFLocale *)locale hyphenChar:(unsigned int *)char
{
  length = range.length;
  location = range.location;
  v12 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:?];
  v13 = [(TSWPRangeMap *)self->_rangeMap unmappedCharRange:location, length];
  v15 = v14;
  string = [(TSWPTextSource *)self->_source string];
  v21.location = v13;
  v21.length = v15;
  result = CFStringGetHyphenationLocationBeforeIndex(string, v12, v21, 0, locale, char);
  if (result != -1)
  {
    v18 = result;
    while (index > v18)
    {
      if ([(TSWPRubyTextSource *)self characterAtIndex:--index]== 173)
      {
        v18 = index + 1;
        break;
      }
    }

    rangeMap = self->_rangeMap;

    return [(TSWPRangeMap *)rangeMap mappedCharIndex:v18];
  }

  return result;
}

- (id)objectAtLocationPriorToMappedCharIndex:(unint64_t)index forAttributeKind:(unsigned int)kind effectiveRange:(_NSRange *)range
{
  v7 = [(TSWPTextSource *)self->_source objectAtLocationPriorToMappedCharIndex:[(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:index] forAttributeKind:*&kind effectiveRange:range];
  if (range)
  {
    range->location = [(TSWPRangeMap *)self->_rangeMap mappedCharRange:range->location, range->length];
    range->length = v8;
  }

  return v7;
}

- (unint64_t)charIndexMappedToStorage:(unint64_t)storage
{
  source = self->_source;
  v4 = [(TSWPRangeMap *)self->_rangeMap unmappedCharIndex:storage];

  return [(TSWPTextSource *)source charIndexMappedToStorage:v4];
}

- (unint64_t)charIndexMappedFromStorage:(unint64_t)storage
{
  rangeMap = self->_rangeMap;
  v4 = [(TSWPTextSource *)self->_source charIndexMappedFromStorage:storage];

  return [(TSWPRangeMap *)rangeMap mappedCharIndex:v4];
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)storage
{
  source = self->_source;
  v5 = [(TSWPRangeMap *)self->_rangeMap unmappedCharRange:storage.location, storage.length];

  v6 = [(TSWPTextSource *)source charRangeMappedToStorage:v5, v4];
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage
{
  rangeMap = self->_rangeMap;
  v5 = [(TSWPTextSource *)self->_source charRangeMappedFromStorage:storage.location, storage.length];

  v6 = [(TSWPRangeMap *)rangeMap mappedCharRange:v5, v4];
  result.length = v7;
  result.location = v6;
  return result;
}

- (unint64_t)charIndexRemappedFromStorage:(unint64_t)storage
{
  v4 = [(TSWPRubyTextSource *)self charIndexMappedFromStorage:storage];

  return [(TSWPRubyTextSource *)self charIndexMappedToStorage:v4];
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end