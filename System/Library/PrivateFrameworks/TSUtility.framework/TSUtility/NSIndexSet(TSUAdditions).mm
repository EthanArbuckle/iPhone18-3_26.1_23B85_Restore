@interface NSIndexSet(TSUAdditions)
+ (id)tsu_indexSetWithIndices:()TSUAdditions count:;
- (BOOL)tsu_isSingleContiguousRange;
- (id)tsu_indexSetByAddingIndexes:()TSUAdditions;
- (id)tsu_indexSetByInsertingIndexes:()TSUAdditions inRange:;
- (uint64_t)initWithIndices:()TSUAdditions count:;
- (uint64_t)tsu_intersectsIndexesInIndexSet:()TSUAdditions;
@end

@implementation NSIndexSet(TSUAdditions)

+ (id)tsu_indexSetWithIndices:()TSUAdditions count:
{
  v4 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndices:a3 count:a4];

  return v4;
}

- (uint64_t)initWithIndices:()TSUAdditions count:
{
  for (i = [MEMORY[0x277CCAB58] indexSet]; a4; --a4)
  {
    v8 = *a3++;
    [i addIndex:v8];
  }

  return [a1 initWithIndexSet:i];
}

- (id)tsu_indexSetByAddingIndexes:()TSUAdditions
{
  v4 = [a1 mutableCopy];
  [v4 addIndexes:a3];
  v5 = [v4 copy];

  return v5;
}

- (BOOL)tsu_isSingleContiguousRange
{
  v2 = [a1 lastIndex];
  v3 = v2 - [a1 firstIndex] + 1;
  return v3 == [a1 count];
}

- (uint64_t)tsu_intersectsIndexesInIndexSet:()TSUAdditions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([a1 count] && objc_msgSend(a3, "count"))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__NSIndexSet_TSUAdditions__tsu_intersectsIndexesInIndexSet___block_invoke;
    v7[3] = &unk_279D660B0;
    v7[4] = a3;
    v7[5] = &v8;
    [a1 enumerateRangesUsingBlock:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)tsu_indexSetByInsertingIndexes:()TSUAdditions inRange:
{
  if (a3 && a5)
  {
    v8 = [a1 mutableCopy];
    [v8 shiftIndexesStartingAtIndex:a4 by:a5];
    v9 = [a3 mutableCopy];
    [v9 shiftIndexesStartingAtIndex:0 by:a4];
    [v8 addIndexes:v9];
  }

  else
  {
    v8 = [a1 copy];
  }

  return v8;
}

@end