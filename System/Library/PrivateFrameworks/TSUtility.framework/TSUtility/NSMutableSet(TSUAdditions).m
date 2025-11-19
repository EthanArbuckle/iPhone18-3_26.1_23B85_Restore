@interface NSMutableSet(TSUAdditions)
- (uint64_t)tsu_xorSet:()TSUAdditions;
- (void)tsu_addNonNilObject:()TSUAdditions;
@end

@implementation NSMutableSet(TSUAdditions)

- (uint64_t)tsu_xorSet:()TSUAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([a1 containsObject:v9])
        {
          [a1 removeObject:v9];
        }

        else
        {
          [a1 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
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

@end