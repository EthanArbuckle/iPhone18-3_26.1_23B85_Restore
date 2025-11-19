@interface NSArray(MTAdditions)
- (id)arrayByRemovingObject:()MTAdditions;
- (id)filter:()MTAdditions compactMap:;
- (id)mt_allObjectsExcludingIndexes:()MTAdditions;
- (id)mt_compactMap:()MTAdditions;
- (id)mt_filter:()MTAdditions;
- (id)mt_firstObjectPassingTest:()MTAdditions;
- (id)mt_uniqueOrdered;
@end

@implementation NSArray(MTAdditions)

- (id)mt_compactMap:()MTAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)mt_filter:()MTAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)filter:()MTAdditions compactMap:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = a1;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (v6[2](v6, v14))
        {
          v15 = v7[2](v7, v14);
          if (v15)
          {
            [v8 addObject:{v15, v19}];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = [v8 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)arrayByRemovingObject:()MTAdditions
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeObject:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)mt_firstObjectPassingTest:()MTAdditions
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__NSArray_MTAdditions__mt_firstObjectPassingTest___block_invoke;
  aBlock[3] = &unk_1E8569340;
  v16 = v4;
  v5 = _Block_copy(aBlock);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__NSArray_MTAdditions__mt_firstObjectPassingTest___block_invoke_2;
  v13 = &unk_1E8569340;
  v14 = v5;
  v6 = v5;
  v7 = [a1 indexOfObjectPassingTest:&v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [a1 objectAtIndexedSubscript:{v7, v10, v11, v12, v13, v14}];
  }

  return v8;
}

- (id)mt_allObjectsExcludingIndexes:()MTAdditions
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(a1, "count")}];
    [v5 removeIndexes:v4];
    if ([v5 count])
    {
      v6 = [a1 objectsAtIndexes:v5];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)mt_uniqueOrdered
{
  if ([a1 count])
  {
    v2 = [MEMORY[0x1E695DFD8] setWithArray:a1];
    v3 = [v2 count];
    if (v3 == [a1 count])
    {
      v4 = a1;
    }

    else
    {
      v5 = [MEMORY[0x1E695DF70] array];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__NSArray_MTAdditions__mt_uniqueOrdered__block_invoke;
      v9[3] = &unk_1E8569368;
      v10 = v2;
      v6 = v5;
      v11 = v6;
      [a1 enumerateObjectsUsingBlock:v9];
      v7 = v11;
      v4 = v6;
    }
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

@end