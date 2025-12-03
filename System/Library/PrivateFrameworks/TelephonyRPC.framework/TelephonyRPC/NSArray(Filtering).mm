@interface NSArray(Filtering)
- (BOOL)hasObjectPassingTest:()Filtering;
- (id)firstObjectPassingTest:()Filtering;
- (id)max:()Filtering;
- (id)nph_map:()Filtering;
- (id)objectsPassingTest:()Filtering;
@end

@implementation NSArray(Filtering)

- (id)max:()Filtering
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self count])
  {
    v5 = [self objectAtIndexedSubscript:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    selfCopy = self;
    v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (v4[2](v4, v11, v5))
          {
            v12 = v11;

            v5 = v12;
          }
        }

        v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)hasObjectPassingTest:()Filtering
{
  v1 = [self firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (id)firstObjectPassingTest:()Filtering
{
  v1 = [self objectsPassingTest:?];
  firstObject = [v1 firstObject];

  return firstObject;
}

- (id)objectsPassingTest:()Filtering
{
  v4 = a3;
  v5 = MEMORY[0x277CCAC30];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__NSArray_Filtering__objectsPassingTest___block_invoke;
  v10[3] = &unk_279D96090;
  v11 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v10];
  v8 = [self filteredArrayUsingPredicate:v7];

  return v8;
}

- (id)nph_map:()Filtering
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end