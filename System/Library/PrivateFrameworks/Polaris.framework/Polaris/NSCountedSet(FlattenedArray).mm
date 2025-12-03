@interface NSCountedSet(FlattenedArray)
- (uint64_t)totalCount;
- (void)filterWithBlock:()FlattenedArray;
@end

@implementation NSCountedSet(FlattenedArray)

- (void)filterWithBlock:()FlattenedArray
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  objectEnumerator = [self objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if ((v4[2](v4, v11) & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        v18 = [self countForObject:{v17, v21}];
        if (v18)
        {
          v19 = v18;
          do
          {
            [self removeObject:v17];
            --v19;
          }

          while (v19);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (uint64_t)totalCount
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v2 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v4 += [selfCopy countForObject:{*(*(&v9 + 1) + 8 * i), v9}];
      }

      v3 = [selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

@end