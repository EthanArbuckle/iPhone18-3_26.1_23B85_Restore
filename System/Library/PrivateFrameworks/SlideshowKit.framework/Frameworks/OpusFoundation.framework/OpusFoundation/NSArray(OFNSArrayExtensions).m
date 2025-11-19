@interface NSArray(OFNSArrayExtensions)
- (uint64_t)containsAnyObjects:()OFNSArrayExtensions;
- (uint64_t)containsObjects:()OFNSArrayExtensions;
- (uint64_t)objectPassingTest:()OFNSArrayExtensions;
- (uint64_t)objectsPassingTest:()OFNSArrayExtensions;
- (void)indexesOfObjects:()OFNSArrayExtensions;
@end

@implementation NSArray(OFNSArrayExtensions)

- (uint64_t)containsObjects:()OFNSArrayExtensions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *v11;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v11 != v7)
    {
      objc_enumerationMutation(a3);
    }

    result = [a1 containsObject:*(*(&v10 + 1) + 8 * v8)];
    if (!result)
    {
      return result;
    }

    if (v6 == ++v8)
    {
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 1;
    }
  }
}

- (uint64_t)containsAnyObjects:()OFNSArrayExtensions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a3);
        }

        if ([a1 containsObject:*(*(&v9 + 1) + 8 * v8)])
        {
          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (uint64_t)objectPassingTest:()OFNSArrayExtensions
{
  v2 = [a1 indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [a1 objectAtIndex:v2];
}

- (uint64_t)objectsPassingTest:()OFNSArrayExtensions
{
  v2 = [a1 indexesOfObjectsPassingTest:?];

  return [a1 objectsAtIndexes:v2];
}

- (void)indexesOfObjects:()OFNSArrayExtensions
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB58] indexSet];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [a1 indexOfObject:*(*(&v12 + 1) + 8 * v9)];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

@end