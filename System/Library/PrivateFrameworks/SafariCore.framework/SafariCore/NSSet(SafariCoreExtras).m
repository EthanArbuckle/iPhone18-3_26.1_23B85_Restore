@interface NSSet(SafariCoreExtras)
- (BOOL)safari_containsObjectPassingTest:()SafariCoreExtras;
- (id)safari_anyObjectPassingTest:()SafariCoreExtras;
- (id)safari_arrayByMappingObjectsUsingBlock:()SafariCoreExtras;
- (id)safari_dictionaryByMappingObjectsToValuesUsingBlock:()SafariCoreExtras;
- (id)safari_mapAndFilterObjectsUsingBlock:()SafariCoreExtras;
- (id)safari_setByRemovingObject:()SafariCoreExtras;
- (id)safari_setBySubtractingSet:()SafariCoreExtras;
- (id)safari_smallestObject:()SafariCoreExtras;
- (id)safari_sortedArrayUsingFinderLikeSorting;
- (uint64_t)safari_allObjectsPassTest:()SafariCoreExtras;
@end

@implementation NSSet(SafariCoreExtras)

- (id)safari_arrayByMappingObjectsUsingBlock:()SafariCoreExtras
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = a1;
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

          v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v14}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)safari_dictionaryByMappingObjectsToValuesUsingBlock:()SafariCoreExtras
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
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
          v12 = v4[2](v4, v11);
          [v5 setObject:v12 forKeyedSubscript:{v11, v15}];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)safari_mapAndFilterObjectsUsingBlock:()SafariCoreExtras
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 count])
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(a1, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = a1;
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

          v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v14}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)safari_smallestObject:()SafariCoreExtras
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 count] > 1)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = a1;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
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
          if (v5)
          {
            if (v4[2](v4, v5, *(*(&v15 + 1) + 8 * i)) >= 1)
            {
              v12 = v11;

              v5 = v12;
            }
          }

          else
          {
            v5 = v11;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [a1 anyObject];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)safari_anyObjectPassingTest:()SafariCoreExtras
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)safari_containsObjectPassingTest:()SafariCoreExtras
{
  v1 = [a1 safari_anyObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)safari_allObjectsPassTest:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 allObjects];
  v6 = [v5 safari_allObjectsPassTest:v4];

  return v6;
}

- (id)safari_setByRemovingObject:()SafariCoreExtras
{
  v4 = a3;
  if ([a1 containsObject:v4])
  {
    v5 = [a1 mutableCopy];
    [v5 removeObject:v4];
    v6 = [v5 copy];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (id)safari_sortedArrayUsingFinderLikeSorting
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1 selector:sel_localizedStandardCompare_];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v4 = [a1 sortedArrayUsingDescriptors:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)safari_setBySubtractingSet:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 minusSet:v4];

  v6 = [v5 copy];

  return v6;
}

@end