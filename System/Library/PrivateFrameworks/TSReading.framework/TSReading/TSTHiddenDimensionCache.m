@interface TSTHiddenDimensionCache
- (TSTHiddenDimensionCache)initWithUserHiddenInformation:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)findNthNextVisibleIndex:(unint64_t)a3 fromIndex:(unint64_t)a4;
- (unint64_t)findNthPreviousVisibleIndex:(unint64_t)a3 fromIndex:(unint64_t)a4;
- (unsigned)numberOfVisibleIndicesToMarkIndexFrom:(unint64_t)a3;
- (void)dealloc;
- (void)deleteRange:(_NSRange)a3;
- (void)insertRange:(_NSRange)a3;
- (void)moveRangeFrom:(_NSRange)a3 toIndex:(unint64_t)a4;
- (void)setAllInvalidValuesUsingBlock:(id)a3;
- (void)setAllValuesToZero;
- (void)setCount:(unint64_t)a3;
@end

@implementation TSTHiddenDimensionCache

- (TSTHiddenDimensionCache)initWithUserHiddenInformation:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = TSTHiddenDimensionCache;
  v4 = [(TSTHiddenDimensionCache *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mCount = 0;
    v4->mCachedVisible = objc_alloc_init(MEMORY[0x277CCAB58]);
    if (v3)
    {
      v5->mCachedUserVisible = objc_alloc_init(MEMORY[0x277CCAB58]);
    }

    v5->mInvalidRanges = objc_alloc_init(MEMORY[0x277CCAB58]);
    v5->mMarkIndex = 0;
  }

  return v5;
}

- (void)dealloc
{
  self->mCachedVisible = 0;

  self->mCachedUserVisible = 0;
  self->mInvalidRanges = 0;
  v3.receiver = self;
  v3.super_class = TSTHiddenDimensionCache;
  [(TSTHiddenDimensionCache *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TSTHiddenDimensionCache allocWithZone:?]];
  v4->mCount = self->mCount;
  v4->mCachedVisible = [(NSMutableIndexSet *)self->mCachedVisible mutableCopy];
  v4->mCachedUserVisible = [(NSMutableIndexSet *)self->mCachedUserVisible mutableCopy];
  v4->mInvalidRanges = [(NSMutableIndexSet *)self->mInvalidRanges mutableCopy];
  v4->mMarkIndex = self->mMarkIndex;
  return v4;
}

- (void)setCount:(unint64_t)a3
{
  if (a3 != self->mCount)
  {
    [(TSTHiddenDimensionCache *)self invalidate:?];
    self->mCount = a3;
    [(NSMutableIndexSet *)self->mInvalidRanges removeIndexesInRange:a3, ~a3];
    [(NSMutableIndexSet *)self->mCachedVisible removeIndexesInRange:a3, ~a3];
    mCachedUserVisible = self->mCachedUserVisible;

    [(NSMutableIndexSet *)mCachedUserVisible removeIndexesInRange:a3, ~a3];
  }
}

- (unint64_t)findNthPreviousVisibleIndex:(unint64_t)a3 fromIndex:(unint64_t)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = a4;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = a3;
  mCachedVisible = self->mCachedVisible;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__TSTHiddenDimensionCache_findNthPreviousVisibleIndex_fromIndex___block_invoke;
  v7[3] = &unk_279D4A9C8;
  v7[4] = v8;
  v7[5] = &v9;
  [(NSMutableIndexSet *)mCachedVisible enumerateRangesInRange:0 options:a4 usingBlock:2, v7];
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __65__TSTHiddenDimensionCache_findNthPreviousVisibleIndex_fromIndex___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(*(result + 32) + 8) + 24);
  if (v4 >= a3)
  {
    v4 = a3;
  }

  if (v4)
  {
    v5 = *(*(result + 40) + 8);
    if (*(v5 + 24) >= v4)
    {
      *(v5 + 24) = a2 + a3 - v4;
      *(*(*(result + 32) + 8) + 24) -= v4;
      if (*(*(*(result + 32) + 8) + 24))
      {
        return result;
      }
    }

    else
    {
      *(v5 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  *a4 = 1;
  return result;
}

- (unint64_t)findNthNextVisibleIndex:(unint64_t)a3 fromIndex:(unint64_t)a4
{
  v7 = [(NSMutableIndexSet *)self->mCachedVisible lastIndex];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = a3;
  mCachedVisible = self->mCachedVisible;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__TSTHiddenDimensionCache_findNthNextVisibleIndex_fromIndex___block_invoke;
  v11[3] = &unk_279D4A9C8;
  v11[4] = &v12;
  v11[5] = &v16;
  [(NSMutableIndexSet *)mCachedVisible enumerateRangesInRange:a4 options:v7 + 1 usingBlock:0, v11];
  if (v13[3])
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v17[3] = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v17[3];
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __61__TSTHiddenDimensionCache_findNthNextVisibleIndex_fromIndex___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(v4 + 24);
  }

  *(v4 + 24) = v5 - v6;
  if (!*(*(*(result + 32) + 8) + 24))
  {
    *(*(*(result + 40) + 8) + 24) = a2 + v6 - 1;
    *a4 = 1;
  }

  return result;
}

- (unsigned)numberOfVisibleIndicesToMarkIndexFrom:(unint64_t)a3
{
  if (self->mMarkIndex <= a3)
  {
    return [(NSMutableIndexSet *)self->mCachedVisible countOfIndexesInRange:v3, v4];
  }

  else
  {
    return 0;
  }
}

- (void)setAllValuesToZero
{
  [(NSMutableIndexSet *)self->mCachedVisible addIndexesInRange:0, self->mCount];
  [(NSMutableIndexSet *)self->mCachedUserVisible addIndexesInRange:0, self->mCount];
  mInvalidRanges = self->mInvalidRanges;

  [(NSMutableIndexSet *)mInvalidRanges removeAllIndexes];
}

- (void)setAllInvalidValuesUsingBlock:(id)a3
{
  mInvalidRanges = self->mInvalidRanges;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__TSTHiddenDimensionCache_setAllInvalidValuesUsingBlock___block_invoke;
  v5[3] = &unk_279D4A9F0;
  v5[4] = self;
  v5[5] = a3;
  [(NSMutableIndexSet *)mInvalidRanges enumerateIndexesWithOptions:0 usingBlock:v5];
  [(NSMutableIndexSet *)self->mInvalidRanges removeAllIndexes];
}

void *__57__TSTHiddenDimensionCache_setAllInvalidValuesUsingBlock___block_invoke(void *result, unint64_t a2)
{
  if (*(result[4] + 8) <= a2)
  {
    return result;
  }

  v3 = result;
  v4 = (*(result[5] + 16))();
  v5 = *(v3[4] + 16);
  if (v4)
  {
    [v5 removeIndex:a2];
    result = *(v3[4] + 24);
    if (!result)
    {
      return result;
    }

    if (v4 == 1)
    {

      return [result removeIndex:a2];
    }
  }

  else
  {
    [v5 addIndex:a2];
    result = *(v3[4] + 24);
    if (!result)
    {
      return result;
    }
  }

  return [result addIndex:a2];
}

- (void)moveRangeFrom:(_NSRange)a3 toIndex:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  [NSMutableIndexSet tsu_moveIndexesInRange:"tsu_moveIndexesInRange:toOffset:" toOffset:?];
  mCachedUserVisible = self->mCachedUserVisible;

  [(NSMutableIndexSet *)mCachedUserVisible tsu_moveIndexesInRange:location toOffset:length, a4];
}

- (void)deleteRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = -a3.length;
  [(NSMutableIndexSet *)self->mCachedVisible shiftIndexesStartingAtIndex:a3.location + a3.length by:-a3.length];
  [(NSMutableIndexSet *)self->mCachedUserVisible shiftIndexesStartingAtIndex:location + length by:v6];
  mInvalidRanges = self->mInvalidRanges;

  [(NSMutableIndexSet *)mInvalidRanges shiftIndexesStartingAtIndex:location + length by:v6];
}

- (void)insertRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  [NSMutableIndexSet shiftIndexesStartingAtIndex:"shiftIndexesStartingAtIndex:by:" by:?];
  [(NSMutableIndexSet *)self->mCachedUserVisible shiftIndexesStartingAtIndex:location by:length];
  [(NSMutableIndexSet *)self->mInvalidRanges shiftIndexesStartingAtIndex:location by:length];

  [(TSTHiddenDimensionCache *)self invalidate:location, length];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@ %p count=%d mark=%d", NSStringFromClass(v4), self, self->mCount, self->mMarkIndex];
  [v5 appendString:@" visibleRanges={"];
  mCachedVisible = self->mCachedVisible;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__TSTHiddenDimensionCache_description__block_invoke;
  v10[3] = &unk_279D4A4C0;
  v10[4] = v5;
  [(NSMutableIndexSet *)mCachedVisible enumerateRangesUsingBlock:v10];
  [v5 appendString:@"}"];
  if (self->mCachedUserVisible)
  {
    [v5 appendString:@" userVisibleRanges={"];
    mCachedUserVisible = self->mCachedUserVisible;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__TSTHiddenDimensionCache_description__block_invoke_2;
    v9[3] = &unk_279D4A4C0;
    v9[4] = v5;
    [(NSMutableIndexSet *)mCachedUserVisible enumerateRangesUsingBlock:v9];
    [v5 appendString:@"}"];
  }

  [v5 appendString:@"}>"];
  return v5;
}

@end