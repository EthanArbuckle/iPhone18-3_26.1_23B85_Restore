@interface NSMapTable
- (id)tsu_allKeys;
- (id)tsu_allObjects;
- (void)tsu_enumerateKeysAndObjectsUsingBlock:(id)block;
@end

@implementation NSMapTable

- (id)tsu_allKeys
{
  keyEnumerator = [(NSMapTable *)self keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (id)tsu_allObjects
{
  objectEnumerator = [(NSMapTable *)self objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  return allObjects;
}

- (void)tsu_enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v16 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    tsu_allKeys = [(NSMapTable *)self tsu_allKeys];
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
        v11 = [(NSMapTable *)self objectForKey:v10];
        blockCopy[2](blockCopy, v10, v11, &v16);

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