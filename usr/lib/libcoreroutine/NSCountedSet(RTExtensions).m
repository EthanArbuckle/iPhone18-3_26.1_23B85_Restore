@interface NSCountedSet(RTExtensions)
- (id)arrayOrderedByHighestCount;
- (id)objectWithHighestCount;
- (uint64_t)countForAllObjects;
@end

@implementation NSCountedSet(RTExtensions)

- (id)objectWithHighestCount
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v14;
    v6 = -1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v1 countForObject:{v8, v13}];
        if (v9 > v6)
        {
          v10 = v9;
          v11 = v8;

          v4 = v11;
          v6 = v10;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)countForAllObjects
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 += [v1 countForObject:{*(*(&v8 + 1) + 8 * i), v8}];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)arrayOrderedByHighestCount
{
  v2 = [a1 allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NSCountedSet_RTExtensions__arrayOrderedByHighestCount__block_invoke;
  v5[3] = &unk_2788CDF20;
  v5[4] = a1;
  v3 = [v2 sortedArrayUsingComparator:v5];

  return v3;
}

@end