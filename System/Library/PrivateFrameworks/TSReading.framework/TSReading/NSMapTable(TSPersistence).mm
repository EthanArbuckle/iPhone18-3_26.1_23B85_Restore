@interface NSMapTable(TSPersistence)
+ (uint64_t)newTspStrongObjectsMapTable;
+ (uint64_t)newTspWeakObjectsMapTable;
- (void)enumerateIdentifiersAndObjectsUsingBlock:()TSPersistence;
- (void)enumerateObjectsUsingBlock:()TSPersistence;
@end

@implementation NSMapTable(TSPersistence)

+ (uint64_t)newTspStrongObjectsMapTable
{
  v0 = objc_alloc(MEMORY[0x277CCAB00]);

  return [v0 initWithKeyOptions:1282 valueOptions:0 capacity:16];
}

+ (uint64_t)newTspWeakObjectsMapTable
{
  v0 = objc_alloc(MEMORY[0x277CCAB00]);

  return [v0 initWithKeyOptions:1282 valueOptions:5 capacity:16];
}

- (void)enumerateObjectsUsingBlock:()TSPersistence
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    selfCopy = self;
    v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = [selfCopy objectForKey:{*(*(&v11 + 1) + 8 * v9), v11}];
        v4[2](v4, v10, &v15);

        if (v15)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [selfCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
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

- (void)enumerateIdentifiersAndObjectsUsingBlock:()TSPersistence
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
    selfCopy = self;
    v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [selfCopy objectForKey:{v10, v12}];
        v4[2](v4, v10, v11, &v16);

        if (v16)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
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