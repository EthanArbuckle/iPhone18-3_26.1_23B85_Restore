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
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  selfCopy = self;
  v10 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(selfCopy);
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

      v11 = [selfCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v5 = [self mutableCopy];
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
  v7 = [self indexOfObjectPassingTest:&v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [self objectAtIndexedSubscript:{v7, v10, v11, v12, v13, v14}];
  }

  return v8;
}

- (id)mt_allObjectsExcludingIndexes:()MTAdditions
{
  v4 = a3;
  if ([self count])
  {
    v5 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(self, "count")}];
    [v5 removeIndexes:v4];
    if ([v5 count])
    {
      v6 = [self objectsAtIndexes:v5];
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
  if ([self count])
  {
    v2 = [MEMORY[0x1E695DFD8] setWithArray:self];
    v3 = [v2 count];
    if (v3 == [self count])
    {
      selfCopy2 = self;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__NSArray_MTAdditions__mt_uniqueOrdered__block_invoke;
      v9[3] = &unk_1E8569368;
      v10 = v2;
      v6 = array;
      v11 = v6;
      [self enumerateObjectsUsingBlock:v9];
      v7 = v11;
      selfCopy2 = v6;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

@end