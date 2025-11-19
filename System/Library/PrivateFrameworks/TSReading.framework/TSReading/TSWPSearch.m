@interface TSWPSearch
- (TSWPSearch)initWithString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5 storage:(id)a6 range:(_NSRange)a7;
- (_NSRange)range;
- (void)dealloc;
- (void)foundHitWithRange:(_NSRange)a3;
@end

@implementation TSWPSearch

- (TSWPSearch)initWithString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5 storage:(id)a6 range:(_NSRange)a7
{
  length = a7.length;
  location = a7.location;
  if (a3)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSearch initWithString:options:hitBlock:storage:range:]"];
    [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSearch.mm"), 30, @"invalid nil value for '%s'", "string"}];
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277D6C290] currentHandler];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSearch initWithString:options:hitBlock:storage:range:]"];
  [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSearch.mm"), 31, @"invalid nil value for '%s'", "storage"}];
LABEL_3:
  v27.receiver = self;
  v27.super_class = TSWPSearch;
  v14 = [(TSKSearch *)&v27 initWithString:a3 options:a4 hitBlock:a5];
  v15 = v14;
  if (v14)
  {
    p_range = &v14->_range;
    v14->_range.location = location;
    v14->_range.length = length;
    v14->_storage = a6;
    v17 = objc_opt_new();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__TSWPSearch_initWithString_options_hitBlock_storage_range___block_invoke;
    v26[3] = &unk_279D49F50;
    v26[4] = v17;
    v26[5] = location;
    v26[6] = length;
    [a6 enumerateSmartFieldsWithAttributeKind:6 inRange:location usingBlock:{length, v26}];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __60__TSWPSearch_initWithString_options_hitBlock_storage_range___block_invoke_2;
    v25[3] = &unk_279D49F78;
    v25[4] = v17;
    [a6 enumerateAttachmentsInTextRange:location usingBlock:{length, v25}];
    if ([v17 rangeCount])
    {
      v18 = -[TSWPFilteredString initWithString:subrange:removeRanges:]([TSWPFilteredString alloc], "initWithString:subrange:removeRanges:", [a6 string], location, length, v17);
      v15->_filteredString = v18;
      v15->_searchedString = &v18->super;
      p_range->location = [(TSWPFilteredString *)v15->_filteredString charRangeMappedFromStorage:p_range->location, v15->_range.length];
      v15->_range.length = v19;
    }

    else
    {
      v15->_searchedString = [a6 string];
    }
  }

  return v15;
}

uint64_t __60__TSWPSearch_initWithString_options_hitBlock_storage_range___block_invoke(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v8 = *(a1 + 32);
    v11.location = a3;
    v11.length = a4;
    v9 = NSIntersectionRange(*(a1 + 40), v11);

    return [v8 addRange:{v9.location, v9.length}];
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPSearch;
  [(TSKSearch *)&v3 dealloc];
}

- (void)foundHitWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if ([(TSWPSearch *)self filteredString])
  {
    location = [(TSWPFilteredString *)[(TSWPSearch *)self filteredString] charRangeMappedToStorage:location, length];
    length = v6;
  }

  v7 = [(TSKSearch *)self hitBlock];
  v8 = [TSWPSearchReference searchReferenceWithStorage:[(TSWPSearch *)self storage] range:location, length];
  v9 = v7[2];

  v9(v7, v8);
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end