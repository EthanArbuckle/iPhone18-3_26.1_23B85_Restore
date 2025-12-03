@interface TSWPFilteredString
- (TSWPFilteredString)initWithString:(id)string subrange:(_NSRange)subrange removeRanges:(id)ranges;
- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage;
- (_NSRange)charRangeMappedToStorage:(_NSRange)storage;
- (unint64_t)charIndexMappedFromStorage:(unint64_t)storage;
- (unint64_t)charIndexMappedToStorage:(unint64_t)storage;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation TSWPFilteredString

- (TSWPFilteredString)initWithString:(id)string subrange:(_NSRange)subrange removeRanges:(id)ranges
{
  length = subrange.length;
  location = subrange.location;
  v13.receiver = self;
  v13.super_class = TSWPFilteredString;
  v9 = [(TSWPFilteredString *)&v13 init];
  if (v9)
  {
    v9->_sourceString = string;
    ranges = [[TSWPDeletionRangeMap alloc] initWithSubRange:location removeRanges:length, ranges];
    v9->_rangeMap = ranges;
    v9->_sourceRanges = [(TSWPDeletionRangeMap *)ranges inverseRangesInStorageRange:location, length];
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

- (unsigned)characterAtIndex:(unint64_t)index
{
  sourceString = [(TSWPFilteredString *)self sourceString];
  v6 = [(TSWPDeletionRangeMap *)[(TSWPFilteredString *)self rangeMap] unmappedCharIndex:index];

  return [(NSString *)sourceString characterAtIndex:v6];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  v6 = [(TSWPDeletionRangeMap *)[(TSWPFilteredString *)self rangeMap] unmappedCharRange:range.location, range.length];
  v8 = v7;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  sourceRanges = [(TSWPFilteredString *)self sourceRanges];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__TSWPFilteredString_getCharacters_range___block_invoke;
  v10[3] = &unk_279D49958;
  v10[5] = v11;
  v10[6] = characters;
  v10[4] = self;
  [(TSWPRangeArray *)sourceRanges enumerateRangesInRange:v6 usingBlock:v8, v10];
  _Block_object_dispose(v11, 8);
}

uint64_t __42__TSWPFilteredString_getCharacters_range___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_msgSend(*(a1 + 32) "sourceString")];
  *(*(*(a1 + 40) + 8) + 24) += a3;
  return result;
}

- (unint64_t)charIndexMappedToStorage:(unint64_t)storage
{
  rangeMap = [(TSWPFilteredString *)self rangeMap];

  return [(TSWPDeletionRangeMap *)rangeMap unmappedCharIndex:storage];
}

- (unint64_t)charIndexMappedFromStorage:(unint64_t)storage
{
  rangeMap = [(TSWPFilteredString *)self rangeMap];

  return [(TSWPDeletionRangeMap *)rangeMap mappedCharIndex:storage];
}

- (_NSRange)charRangeMappedToStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  rangeMap = [(TSWPFilteredString *)self rangeMap];

  v6 = [(TSWPDeletionRangeMap *)rangeMap unmappedCharRange:location, length];
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)charRangeMappedFromStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  rangeMap = [(TSWPFilteredString *)self rangeMap];

  v6 = [(TSWPDeletionRangeMap *)rangeMap mappedCharRange:location, length];
  result.length = v7;
  result.location = v6;
  return result;
}

@end