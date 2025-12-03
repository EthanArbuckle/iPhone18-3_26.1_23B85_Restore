@interface TSWPDeletionRangeMap
- (BOOL)containsCharIndex:(unint64_t)index;
- (TSWPDeletionRangeMap)initWithSubRange:(_NSRange)range removeRanges:(id)ranges;
- (_NSRange)mappedCharRange:(_NSRange)range;
- (_NSRange)unmappedCharRange:(_NSRange)range;
- (id)inverseRangesInStorageRange:(_NSRange)range;
- (unint64_t)mappedCharIndex:(unint64_t)index;
- (unint64_t)unmappedCharIndex:(unint64_t)index;
- (void)adjustByDelta:(int64_t)delta;
- (void)dealloc;
@end

@implementation TSWPDeletionRangeMap

- (TSWPDeletionRangeMap)initWithSubRange:(_NSRange)range removeRanges:(id)ranges
{
  location = range.location;
  v9.receiver = self;
  v9.super_class = TSWPDeletionRangeMap;
  v6 = [(TSWPDeletionRangeMap *)&v9 init:range.location];
  v7 = v6;
  if (v6)
  {
    v6->_subRangeStart = location;
    v6->_removedRanges = [ranges copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPDeletionRangeMap;
  [(TSWPDeletionRangeMap *)&v3 dealloc];
}

- (unint64_t)mappedCharIndex:(unint64_t)index
{
  if (self->_subRangeStart > index)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  removedRanges = self->_removedRanges;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__TSWPDeletionRangeMap_mappedCharIndex___block_invoke;
  v8[3] = &unk_279D49980;
  v8[4] = &v9;
  v8[5] = index;
  [(TSWPRangeArray *)removedRanges enumerateRangesUsingBlock:v8];
  v3 = index - self->_subRangeStart - *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v3;
}

uint64_t __40__TSWPDeletionRangeMap_mappedCharIndex___block_invoke(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(result + 40);
  if (v5 <= a2)
  {
    *a5 = 1;
  }

  else if (a2 + a3 <= v5)
  {
    *(*(*(result + 32) + 8) + 24) += a3;
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) += v5 - a2;
  }

  return result;
}

- (unint64_t)unmappedCharIndex:(unint64_t)index
{
  v4 = self->_subRangeStart + index;
  rangeCount = [(TSWPRangeArray *)self->_removedRanges rangeCount];
  if (rangeCount)
  {
    v6 = rangeCount;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      if ([(TSWPRangeArray *)self->_removedRanges rangeAtIndex:i]- v7 > v4)
      {
        break;
      }

      v7 += v9;
    }

    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v4 + v10;
}

- (_NSRange)mappedCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(TSWPDeletionRangeMap *)self mappedCharIndex:?];
  v7 = [(TSWPDeletionRangeMap *)self mappedCharIndex:location + length];
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v6 < v7)
  {
    v7 = v6;
  }

  v9 = v8 - v7;
  result.length = v9;
  result.location = v7;
  return result;
}

- (_NSRange)unmappedCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(TSWPDeletionRangeMap *)self unmappedCharIndex:?];
  v7 = v6;
  if (length)
  {
    v8 = [(TSWPDeletionRangeMap *)self unmappedCharIndex:length + location - 1]+ 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v9 - v10;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)adjustByDelta:(int64_t)delta
{
  subRangeStart = self->_subRangeStart;
  removedRanges = self->_removedRanges;
  self->_subRangeStart = subRangeStart + delta;
  rangeCount = [(TSWPRangeArray *)removedRanges rangeCount];
  if (rangeCount)
  {
    v8 = rangeCount;
    for (i = 0; i != v8; ++i)
    {
      v10 = [(TSWPRangeArray *)self->_removedRanges rangeReferenceAtIndex:i];
      v10->location += delta;
    }
  }
}

- (id)inverseRangesInStorageRange:(_NSRange)range
{
  v4 = [[TSWPRangeArray alloc] initWithRange:range.location, range.length];
  rangeCount = [(TSWPRangeArray *)self->_removedRanges rangeCount];
  if (rangeCount)
  {
    v6 = rangeCount;
    for (i = 0; i != v6; ++i)
    {
      v8 = [(TSWPRangeArray *)self->_removedRanges rangeReferenceAtIndex:i];
      [(TSWPRangeArray *)v4 removeRange:v8->location, v8->length];
    }
  }

  return v4;
}

- (BOOL)containsCharIndex:(unint64_t)index
{
  if (self->_subRangeStart <= index)
  {
    rangeCount = [(TSWPRangeArray *)self->_removedRanges rangeCount];
    if (rangeCount)
    {
      v6 = 0;
      v7 = rangeCount - 1;
      do
      {
        v9 = [(TSWPRangeArray *)self->_removedRanges rangeAtIndex:v6];
        v10 = index < v9 || index - v9 >= v8;
        LOBYTE(rangeCount) = !v10;
        if (!v10)
        {
          break;
        }
      }

      while (index > v9 && v7 != v6++);
    }
  }

  else
  {
    LOBYTE(rangeCount) = 0;
  }

  return rangeCount;
}

@end