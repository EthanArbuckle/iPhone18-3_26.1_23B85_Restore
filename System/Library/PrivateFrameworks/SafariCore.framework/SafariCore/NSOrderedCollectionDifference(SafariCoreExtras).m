@interface NSOrderedCollectionDifference(SafariCoreExtras)
- (id)safari_insertionIndexes;
- (id)safari_removalIndexes;
@end

@implementation NSOrderedCollectionDifference(SafariCoreExtras)

- (id)safari_removalIndexes
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD50] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 removals];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v2 addIndex:{objc_msgSend(v8, "index")}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)safari_insertionIndexes
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD50] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 insertions];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v2 addIndex:{objc_msgSend(v8, "index")}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end