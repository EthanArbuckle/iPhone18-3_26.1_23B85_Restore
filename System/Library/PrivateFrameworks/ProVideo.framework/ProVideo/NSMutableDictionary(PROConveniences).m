@interface NSMutableDictionary(PROConveniences)
- (uint64_t)objectsInAllSetsForKeys:()PROConveniences;
- (void)addObject:()PROConveniences toSetForKey:;
- (void)removeObject:()PROConveniences fromSetForKey:;
@end

@implementation NSMutableDictionary(PROConveniences)

- (void)addObject:()PROConveniences toSetForKey:
{
  v9 = a3;
  v7 = [a1 objectForKey:a4];
  if (v7)
  {

    [v7 addObject:a3];
  }

  else
  {
    v8 = [objc_msgSend(MEMORY[0x277CBEB58] allocWithZone:{objc_msgSend(a1, "zone")), "initWithObjects:count:", &v9, 1}];
    [a1 setObject:v8 forKey:a4];
  }
}

- (void)removeObject:()PROConveniences fromSetForKey:
{
  result = [a1 objectForKey:a4];
  if (result)
  {
    v8 = result;
    if ([result count] == 1)
    {

      return [a1 removeObjectForKey:a4];
    }

    else
    {

      return [v8 removeObject:a3];
    }
  }

  return result;
}

- (uint64_t)objectsInAllSetsForKeys:()PROConveniences
{
  v4 = [a3 objectEnumerator];
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [a1 objectForKey:v6];
      if (!v8)
      {
        break;
      }

      if (v7)
      {
        [v7 intersectSet:v8];
      }

      else
      {
        v7 = [v8 mutableCopy];
      }

      v6 = [v4 nextObject];
      if (!v6)
      {
        if (!v7)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    [v7 removeAllObjects];
    if (v7)
    {
LABEL_9:
      v9 = [v7 allObjects];
      goto LABEL_12;
    }
  }

LABEL_11:
  v9 = [MEMORY[0x277CBEA60] array];
  v7 = 0;
LABEL_12:

  return v9;
}

@end