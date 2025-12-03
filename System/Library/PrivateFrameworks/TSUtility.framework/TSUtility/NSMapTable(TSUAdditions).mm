@interface NSMapTable(TSUAdditions)
- (id)tsu_allKeys;
- (id)tsu_allObjects;
- (void)tsu_enumerateKeysAndObjectsUsingBlock:()TSUAdditions;
@end

@implementation NSMapTable(TSUAdditions)

- (id)tsu_allKeys
{
  keyEnumerator = [self keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (id)tsu_allObjects
{
  objectEnumerator = [self objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  return allObjects;
}

- (void)tsu_enumerateKeysAndObjectsUsingBlock:()TSUAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v16 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    tsu_allKeys = [self tsu_allKeys];
    v6 = [tsu_allKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(tsu_allKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [self objectForKey:v10];
        v4[2](v4, v10, v11, &v16);

        if (v16)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [tsu_allKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

@end