@interface WBSBrowsingAssistantURLVariants
+ (id)variantsForURL:(id)a3;
- (NSArray)variants;
- (WBSBrowsingAssistantURLVariants)initWithURL:(id)a3;
- (id)_queryVariantsFromArray:(id)a3;
@end

@implementation WBSBrowsingAssistantURLVariants

- (WBSBrowsingAssistantURLVariants)initWithURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSBrowsingAssistantURLVariants;
  v5 = [(WBSBrowsingAssistantURLVariants *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)variantsForURL:(id)a3
{
  v3 = a3;
  v4 = [[WBSBrowsingAssistantURLVariants alloc] initWithURL:v3];

  return v4;
}

- (NSArray)variants
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:self->_url resolvingAgainstBaseURL:0];
  v4 = [v3 string];
  v5 = [v3 rangeOfPath];
  v7 = [v4 substringToIndex:v5 + v6];
  v8 = [v3 queryItems];
  if ([v8 count] >= 6)
  {
    v9 = [v8 subarrayWithRange:{0, 5}];

    v8 = v9;
  }

  if (v8)
  {
    v10 = [(WBSBrowsingAssistantURLVariants *)self _queryVariantsFromArray:v8];
    v11 = [MEMORY[0x1E695DF70] array];
    v21 = v7;
    v12 = [MEMORY[0x1E696AF20] componentsWithString:v7];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 setQueryItems:*(*(&v22 + 1) + 8 * i)];
          v18 = [v12 string];
          [v11 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    v19 = [v11 indexOfObject:v4];
    if (v19 && v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 removeObjectAtIndex:v19];
      [v11 insertObject:v4 atIndex:0];
    }

    v7 = v21;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_queryVariantsFromArray:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [MEMORY[0x1E695DF70] array];
    v18 = v5;
    v7 = [MEMORY[0x1E695DF70] arrayWithObject:v5];
    [v6 addObject:v7];
    v8 = [v4 mutableCopy];
    [v8 removeObjectAtIndex:0];
    v9 = [(WBSBrowsingAssistantURLVariants *)self _queryVariantsFromArray:v8];
    v10 = v9;
    if (v9)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            v16 = [v7 arrayByAddingObjectsFromArray:v15];
            [v6 addObject:v16];

            [v6 addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end