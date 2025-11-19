@interface NSMutableArray
@end

@implementation NSMutableArray

uint64_t __59__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_before___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOwner:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (!v2 || ([*(a1 + 40) firstObject], v3 = objc_claimAutoreleasedReturnValue(), v3, v2 == v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) indexOfObject:*(a1 + 48)];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"_UIKBRTObjectArray.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];

      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v6 insertObject:v7 atIndex:v4];
}

uint64_t __58__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_after___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOwner:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (!v2 || ([*(a1 + 40) lastObject], v3 = objc_claimAutoreleasedReturnValue(), v3, v2 == v3))
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);

    return [v8 addObject:v9];
  }

  else
  {
    v4 = [*(a1 + 40) indexOfObject:*(a1 + 48)];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"_UIKBRTObjectArray.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v5 insertObject:v6 atIndex:v4 + 1];
  }
}

void __74__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_beforeItemPassingTest___block_invoke(id *a1)
{
  [a1[4] setOwner:a1[5]];
  v2 = [a1[5] count];
  v4 = a1[4];
  v3 = a1[5];
  if (v2)
  {
    v5 = [a1[5] count];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_beforeItemPassingTest___block_invoke_2;
    v8[3] = &unk_1E7118148;
    v9 = a1[6];
    [a1[5] insertObject:a1[4] atIndex:{objc_msgSend(v3, "indexOfObject:inSortedRange:options:usingComparator:", v4, 0, v5, 1024, v8)}];
  }

  else
  {
    v6 = a1[5];
    v7 = a1[4];

    [v6 addObject:v7];
  }
}

uint64_t __74__NSMutableArray__UIKBRTObjectArray___uikbrtInsert_beforeItemPassingTest___block_invoke_2(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __52__NSMutableArray__UIKBRTObjectArray___uikbrtRemove___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  [*(a1 + 40) setOwner:0];
  result = [*(a1 + 32) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _set_listContainsOrderedItems:0];
  }

  return result;
}

@end