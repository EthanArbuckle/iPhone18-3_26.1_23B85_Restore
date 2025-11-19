@interface NSMutableArray(TSUAdditions)
- (id)pop_tsu;
- (uint64_t)tsu_addObjects:()TSUAdditions;
- (uint64_t)tsu_removeObjectsIdenticalToObjectsInArray:()TSUAdditions;
- (uint64_t)tsu_removeObjectsIdenticalToObjectsInSet:()TSUAdditions;
- (void)initWithResultsOfPerformingSelector:()TSUAdditions onObjectsFromArray:;
- (void)initWithResultsOfPerformingSelector:()TSUAdditions withObject:onObjectsFromArray:;
- (void)tsu_addNonNilObject:()TSUAdditions;
- (void)tsu_addObjectsFromNonNilArray:()TSUAdditions;
@end

@implementation NSMutableArray(TSUAdditions)

- (void)initWithResultsOfPerformingSelector:()TSUAdditions onObjectsFromArray:
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [a1 initWithCapacity:{objc_msgSend(a4, "count")}];
  if (v6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(a4);
          }

          [v6 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v10++), "performSelector:", a3)}];
        }

        while (v8 != v10);
        v8 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v6;
}

- (void)initWithResultsOfPerformingSelector:()TSUAdditions withObject:onObjectsFromArray:
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = [a1 initWithCapacity:{objc_msgSend(a5, "count")}];
  if (v8)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [a5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(a5);
          }

          [v8 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * v12++), "performSelector:withObject:", a3, a4)}];
        }

        while (v10 != v12);
        v10 = [a5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  return v8;
}

- (id)pop_tsu
{
  v2 = [a1 lastObject];
  if (v2)
  {
    [a1 removeLastObject];
  }

  return v2;
}

- (uint64_t)tsu_addObjects:()TSUAdditions
{
  v11 = &a9;
  if (a3)
  {
    v9 = result;
    do
    {
      result = [v9 addObject:?];
      v10 = v11++;
    }

    while (*v10);
  }

  return result;
}

- (void)tsu_addNonNilObject:()TSUAdditions
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)tsu_addObjectsFromNonNilArray:()TSUAdditions
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

- (uint64_t)tsu_removeObjectsIdenticalToObjectsInSet:()TSUAdditions
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
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [a1 removeObjectIdenticalTo:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (uint64_t)tsu_removeObjectsIdenticalToObjectsInArray:()TSUAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 == a3)
  {

    return [a1 removeAllObjects];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [a1 indexOfObjectIdenticalTo:v9];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [a1 indexOfObjectIdenticalTo:v9])
            {
              [a1 removeObjectAtIndex:i];
            }
          }

          ++v8;
        }

        while (v8 != v6);
        result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

@end