@interface NSMutableOrderedSet(PLAdditions)
- (void)pl_addObjectsFromArray:()PLAdditions;
- (void)pl_insertObjects:()PLAdditions atIndex:;
- (void)pl_removeObjectsInArray:()PLAdditions;
- (void)pl_removeObjectsPassingTest:()PLAdditions;
@end

@implementation NSMutableOrderedSet(PLAdditions)

- (void)pl_removeObjectsPassingTest:()PLAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__NSMutableOrderedSet_PLAdditions__pl_removeObjectsPassingTest___block_invoke;
    v7[3] = &unk_1E75725C8;
    v8 = v4;
    v6 = [a1 indexesOfObjectsPassingTest:v7];
    [a1 removeObjectsAtIndexes:v6];
  }
}

- (void)pl_insertObjects:()PLAdditions atIndex:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [a1 indexOfObject:v11];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [a1 insertObject:v11 atIndex:a4];
        }

        else if (a4 != v12)
        {
          v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:v12];
          [a1 moveObjectsAtIndexes:v13 toIndex:a4];
        }

        ++a4;
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)pl_removeObjectsInArray:()PLAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD50] indexSet];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 indexOfObject:{*(*(&v12 + 1) + 8 * v10), v12}];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v5 addIndex:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [a1 removeObjectsAtIndexes:v5];
  }
}

- (void)pl_addObjectsFromArray:()PLAdditions
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 count];
    v6 = [v4 count];
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v5, v6}];
    [a1 insertObjects:v4 atIndexes:v7];
  }
}

@end