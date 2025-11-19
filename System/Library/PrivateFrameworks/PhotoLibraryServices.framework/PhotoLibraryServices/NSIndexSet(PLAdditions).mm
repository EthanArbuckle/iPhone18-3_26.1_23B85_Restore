@interface NSIndexSet(PLAdditions)
- (id)_pl_indexSetByUpdatingWithChangedIndexes:()PLAdditions asInserts:;
- (id)pl_shortDescription;
- (uint64_t)pl_rangeCoveringIndexSet;
@end

@implementation NSIndexSet(PLAdditions)

- (uint64_t)pl_rangeCoveringIndexSet
{
  v2 = [a1 firstIndex];
  if (((v2 != 0x7FFFFFFFFFFFFFFFLL) & ([a1 lastIndex] != 0x7FFFFFFFFFFFFFFFLL)) != 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)_pl_indexSetByUpdatingWithChangedIndexes:()PLAdditions asInserts:
{
  v6 = a3;
  if ([v6 rangeCount])
  {
    v7 = [a1 mutableCopy];
    if (a4)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __78__NSIndexSet_PLAdditions___pl_indexSetByUpdatingWithChangedIndexes_asInserts___block_invoke;
      v14[3] = &unk_1E756D280;
      v8 = v7;
      v15 = v8;
      [v6 enumerateRangesUsingBlock:v14];
    }

    else
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v13[3] = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __78__NSIndexSet_PLAdditions___pl_indexSetByUpdatingWithChangedIndexes_asInserts___block_invoke_2;
      v10[3] = &unk_1E756D2A8;
      v12 = v13;
      v8 = v7;
      v11 = v8;
      [v6 enumerateRangesUsingBlock:v10];

      _Block_object_dispose(v13, 8);
    }
  }

  else
  {
    v8 = [a1 copy];
  }

  return v8;
}

- (id)pl_shortDescription
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__NSIndexSet_PLAdditions__pl_shortDescription__block_invoke;
  v7[3] = &unk_1E756D280;
  v8 = v3;
  v4 = v3;
  [a1 enumerateRangesUsingBlock:v7];
  v5 = [v4 componentsJoinedByString:{@", "}];

  objc_autoreleasePoolPop(v2);

  return v5;
}

@end