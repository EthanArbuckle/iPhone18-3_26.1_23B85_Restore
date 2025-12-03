@interface NSSet(TSUAdditions)
+ (uint64_t)tsu_set:()TSUAdditions isEqualToSet:;
- (uint64_t)tsu_containsObjectIdenticalTo:()TSUAdditions;
@end

@implementation NSSet(TSUAdditions)

+ (uint64_t)tsu_set:()TSUAdditions isEqualToSet:
{
  if (a3 == a4)
  {
    return 1;
  }

  v11 = v5;
  v12 = v4;
  v8 = a4;
  v9 = a3;
  if (!a3)
  {
    v9 = [MEMORY[0x277CBEB98] set];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_9:
    v8 = [MEMORY[0x277CBEB98] set];
    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_4:

  return [v9 isEqualToSet:v8];
}

- (uint64_t)tsu_containsObjectIdenticalTo:()TSUAdditions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [self countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(self);
        }

        if (*(*(&v9 + 1) + 8 * v8) == a3)
        {
          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [self countByEnumeratingWithState:&v9 objects:v13 count:16];
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

@end