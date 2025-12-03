@interface NSIndexSet(PhotosUIFoundation)
- (BOOL)px_isSingleRangeWithMax:()PhotosUIFoundation;
- (id)px_indexSetAdjustedForDeletions:()PhotosUIFoundation;
- (id)px_indexSetAdjustedForInsertions:()PhotosUIFoundation;
- (id)px_intersectionWithIndexSet:()PhotosUIFoundation;
- (id)px_map:()PhotosUIFoundation;
- (id)px_shortDescription;
- (uint64_t)px_coveringRange;
- (uint64_t)px_indexAtPosition:()PhotosUIFoundation;
- (uint64_t)px_intersectsWithIndexSet:()PhotosUIFoundation;
- (void)px_enumerateMap:()PhotosUIFoundation usingBlock:;
@end

@implementation NSIndexSet(PhotosUIFoundation)

- (BOOL)px_isSingleRangeWithMax:()PhotosUIFoundation
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = "";
  v12 = 0;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__NSIndexSet_PhotosUIFoundation__px_isSingleRangeWithMax___block_invoke;
  v7[3] = &unk_1E7BB7990;
  v7[4] = &v8;
  [self enumerateRangesUsingBlock:v7];
  v4 = v9[5];
  if (v4)
  {
    v5 = v9[4] + v4 == a3;
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (uint64_t)px_coveringRange
{
  firstIndex = [self firstIndex];
  if (((firstIndex != 0x7FFFFFFFFFFFFFFFLL) & ([self lastIndex] != 0x7FFFFFFFFFFFFFFFLL)) != 0)
  {
    return firstIndex;
  }

  else
  {
    return 0;
  }
}

- (id)px_indexSetAdjustedForInsertions:()PhotosUIFoundation
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [self mutableCopy];
    [v5 px_adjustIndexesForInsertions:v4];
  }

  else
  {
    v5 = [self copy];
  }

  return v5;
}

- (id)px_indexSetAdjustedForDeletions:()PhotosUIFoundation
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [self mutableCopy];
    [v5 px_adjustIndexesForDeletions:v4];
  }

  else
  {
    v5 = [self copy];
  }

  return v5;
}

- (void)px_enumerateMap:()PhotosUIFoundation usingBlock:
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__NSIndexSet_PhotosUIFoundation__px_enumerateMap_usingBlock___block_invoke;
  v11[3] = &unk_1E7BB7968;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v8;
  v10 = v7;
  [self enumerateRangesUsingBlock:v11];
}

- (id)px_map:()PhotosUIFoundation
{
  v4 = MEMORY[0x1E696AD50];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__NSIndexSet_PhotosUIFoundation__px_map___block_invoke;
  v10[3] = &unk_1E7BB7918;
  v11 = v6;
  v7 = v6;
  [self px_enumerateMap:v5 usingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

- (id)px_intersectionWithIndexSet:()PhotosUIFoundation
{
  v4 = a3;
  if ([self count] && objc_msgSend(v4, "count"))
  {
    v5 = [self mutableCopy];
    v6 = [v4 mutableCopy];
    [v5 removeIndexes:v6];
    [v6 removeIndexes:self];
    [v5 addIndexes:v6];
    v7 = [self mutableCopy];
    [v7 addIndexes:v4];
    [v7 removeIndexes:v5];
    indexSet = [v7 copy];
  }

  else
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  return indexSet;
}

- (uint64_t)px_intersectsWithIndexSet:()PhotosUIFoundation
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__NSIndexSet_PhotosUIFoundation__px_intersectsWithIndexSet___block_invoke;
  v7[3] = &unk_1E7BB7940;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateRangesUsingBlock:v7];
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (uint64_t)px_indexAtPosition:()PhotosUIFoundation
{
  for (i = [self firstIndex]; a3; --a3)
  {
    i = [self indexGreaterThanIndex:i];
  }

  return i;
}

- (id)px_shortDescription
{
  v2 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __53__NSIndexSet_PhotosUIFoundation__px_shortDescription__block_invoke;
  v11 = &unk_1E7BB7918;
  v12 = array;
  v4 = array;
  [self enumerateRangesUsingBlock:&v8];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", v5, v8, v9, v10, v11];

  objc_autoreleasePoolPop(v2);

  return v6;
}

@end