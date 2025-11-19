@interface NSArray(RTExtensions)
- (id)flatten;
- (id)shuffle;
@end

@implementation NSArray(RTExtensions)

- (id)flatten
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a1 copy];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = objc_opt_class();
        if ([v9 isSubclassOfClass:{objc_opt_class(), v15}])
        {
          v10 = [v8 flatten];
          [v2 addObjectsFromArray:v10];
LABEL_13:

          goto LABEL_14;
        }

        if (objc_opt_respondsToSelector())
        {
          v11 = [v8 allObjects];
LABEL_12:
          v10 = v11;
          v12 = [v11 flatten];
          [v2 addObjectsFromArray:v12];

          goto LABEL_13;
        }

        if (objc_opt_respondsToSelector())
        {
          v11 = [v8 allValues];
          goto LABEL_12;
        }

        [v2 addObject:v8];
LABEL_14:
        ++v7;
      }

      while (v5 != v7);
      v13 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v5 = v13;
    }

    while (v13);
  }

  return v2;
}

- (id)shuffle
{
  v1 = [MEMORY[0x277CBEB18] arrayWithArray:a1];
  v2 = [v1 count];
  if (v2 >= 2)
  {
    do
    {
      v3 = v2 - 1;
      [v1 exchangeObjectAtIndex:v2 - 1 withObjectAtIndex:arc4random_uniform(v2)];
      v2 = v3;
    }

    while (v3 > 1);
  }

  return v1;
}

@end