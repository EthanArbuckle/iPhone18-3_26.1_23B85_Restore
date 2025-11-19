@interface NSArray(VMFoundationAdditions)
- (BOOL)vf_any:()VMFoundationAdditions;
- (id)__vf_firstObjectPassingTest:()VMFoundationAdditions;
- (id)arrayByApplyingSelector:()VMFoundationAdditions;
- (id)vf_filter:()VMFoundationAdditions;
- (id)vf_flatMap:()VMFoundationAdditions;
- (id)vf_flatten;
- (id)vf_map:()VMFoundationAdditions;
- (id)vf_objectSameAs:()VMFoundationAdditions usingComparator:;
- (id)vf_subarraysOfSize:()VMFoundationAdditions;
- (uint64_t)vf_indexOfObject:()VMFoundationAdditions usingComparator:;
- (uint64_t)vf_indexWhereObjectWouldBeInserted:()VMFoundationAdditions usingComparator:;
@end

@implementation NSArray(VMFoundationAdditions)

- (id)arrayByApplyingSelector:()VMFoundationAdditions
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [a1 doesNotRecognizeSelector:?];
  }

  v5 = [a1 count];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) performSelector:{a3, v16}];
        if (v13)
        {
          [v6 setObject:v13 atIndexedSubscript:v10++];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (uint64_t)vf_indexOfObject:()VMFoundationAdditions usingComparator:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 256, v6}];

  return v8;
}

- (id)vf_objectSameAs:()VMFoundationAdditions usingComparator:
{
  v2 = [a1 vf_indexOfObject:? usingComparator:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 objectAtIndex:v2];
  }

  return v3;
}

- (uint64_t)vf_indexWhereObjectWouldBeInserted:()VMFoundationAdditions usingComparator:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 1536, v6}];

  return v8;
}

- (BOOL)vf_any:()VMFoundationAdditions
{
  v1 = [a1 __vf_firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)vf_filter:()VMFoundationAdditions
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__NSArray_VMFoundationAdditions__vf_filter___block_invoke;
  v10[3] = &unk_279E33CC8;
  v6 = v4;
  v11 = v6;
  v7 = [a1 indexesOfObjectsPassingTest:v10];

  objc_autoreleasePoolPop(v5);
  v8 = [a1 objectsAtIndexes:v7];

  return v8;
}

- (id)__vf_firstObjectPassingTest:()VMFoundationAdditions
{
  v17 = *MEMORY[0x277D85DE8];
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

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)vf_flatten
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
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
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 vf_flatten];
          [v2 addObjectsFromArray:v9];
        }

        else
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)vf_map:()VMFoundationAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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
          [v5 addObject:v11];
        }

        else
        {
          v12 = [MEMORY[0x277CBEB68] null];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)vf_flatMap:()VMFoundationAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObjectsFromArray:{v11, v14}];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)vf_subarraysOfSize:()VMFoundationAdditions
{
  if (a3)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count") / a3 + 1}];
    v6 = [a1 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        if (v7 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v7;
        }

        v10 = v8 + v9;
        v7 -= v9;
        v11 = [a1 subarrayWithRange:?];
        [v5 addObject:v11];

        v8 = v10;
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end