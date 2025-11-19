@interface TSWPFilteredString
- (TSWPFilteredString)initWithString:(id)a3 subrange:(_NSRange)a4 removeRanges:(id)a5;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3;
- (_NSRange)charRangeMappedToStorage:(_NSRange)a3;
- (unint64_t)charIndexMappedFromStorage:(unint64_t)a3;
- (unint64_t)charIndexMappedToStorage:(unint64_t)a3;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation TSWPFilteredString

- (TSWPFilteredString)initWithString:(id)a3 subrange:(_NSRange)a4 removeRanges:(id)a5
{
  length = a4.length;
  location = a4.location;
  v13.receiver = self;
  v13.super_class = TSWPFilteredString;
  v9 = [(TSWPFilteredString *)&v13 init];
  if (v9)
  {
    v9->_sourceString = a3;
    v10 = [[TSWPDeletionRangeMap alloc] initWithSubRange:location removeRanges:length, a5];
    v9->_rangeMap = v10;
    v9->_sourceRanges = [(TSWPDeletionRangeMap *)v10 inverseRangesInStorageRange:location, length];
    [(TSWPDeletionRangeMap *)v9->_rangeMap mappedCharRange:location, length];
    v9->_length = v11;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPFilteredString;
  [(TSWPFilteredString *)&v3 dealloc];
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v5 = [(TSWPFilteredString *)self sourceString];
  v6 = [(TSWPDeletionRangeMap *)[(TSWPFilteredString *)self rangeMap] unmappedCharIndex:a3];

  return [(NSString *)v5 characterAtIndex:v6];
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  v6 = [(TSWPDeletionRangeMap *)[(TSWPFilteredString *)self rangeMap] unmappedCharRange:a4.location, a4.length];
  v8 = v7;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v9 = [(TSWPFilteredString *)self sourceRanges];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__TSWPFilteredString_getCharacters_range___block_invoke;
  v10[3] = &unk_279D49958;
  v10[5] = v11;
  v10[6] = a3;
  v10[4] = self;
  [(TSWPRangeArray *)v9 enumerateRangesInRange:v6 usingBlock:v8, v10];
  _Block_object_dispose(v11, 8);
}

uint64_t __42__TSWPFilteredString_getCharacters_range___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_msgSend(*(a1 + 32) "sourceString")];
  *(*(*(a1 + 40) + 8) + 24) += a3;
  return result;
}

- (unint64_t)charIndexMappedToStorage:(unint64_t)a3
{
  v4 = [(TSWPFilteredString *)self rangeMap];

  return [(TSWPDeletionRangeMap *)v4 unmappedCharIndex:a3];
}

- (unint64_t)charIndexMappedFromStorage:(unint64_t)a3
{
  v4 = [(TSWPFilteredString *)self rangeMap];

  return [(TSWPDeletionRangeMap *)v4 mappedCharIndex:a3];
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSWPFilteredString *)self rangeMap];

  v6 = [(TSWPDeletionRangeMap *)v5 unmappedCharRange:location, length];
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(TSWPFilteredString *)self rangeMap];

  v6 = [(TSWPDeletionRangeMap *)v5 mappedCharRange:location, length];
  result.length = v7;
  result.location = v6;
  return result;
}

@end