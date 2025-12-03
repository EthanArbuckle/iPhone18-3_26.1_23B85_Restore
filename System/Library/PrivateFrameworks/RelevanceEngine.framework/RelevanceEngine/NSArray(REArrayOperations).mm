@interface NSArray(REArrayOperations)
- (id)re_arrayMappedWithArray:()REArrayOperations;
@end

@implementation NSArray(REArrayOperations)

- (id)re_arrayMappedWithArray:()REArrayOperations
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [self indexOfObject:{v11, v17}];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addObject:v11];
        }

        else
        {
          v13 = [self objectAtIndex:v12];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end