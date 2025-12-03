@interface WBSBrowsingAssistantURLVariants
+ (id)variantsForURL:(id)l;
- (NSArray)variants;
- (WBSBrowsingAssistantURLVariants)initWithURL:(id)l;
- (id)_queryVariantsFromArray:(id)array;
@end

@implementation WBSBrowsingAssistantURLVariants

- (WBSBrowsingAssistantURLVariants)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = WBSBrowsingAssistantURLVariants;
  v5 = [(WBSBrowsingAssistantURLVariants *)&v10 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)variantsForURL:(id)l
{
  lCopy = l;
  v4 = [[WBSBrowsingAssistantURLVariants alloc] initWithURL:lCopy];

  return v4;
}

- (NSArray)variants
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AF20] componentsWithURL:self->_url resolvingAgainstBaseURL:0];
  string = [v3 string];
  rangeOfPath = [v3 rangeOfPath];
  v7 = [string substringToIndex:rangeOfPath + v6];
  queryItems = [v3 queryItems];
  if ([queryItems count] >= 6)
  {
    v9 = [queryItems subarrayWithRange:{0, 5}];

    queryItems = v9;
  }

  if (queryItems)
  {
    v10 = [(WBSBrowsingAssistantURLVariants *)self _queryVariantsFromArray:queryItems];
    array = [MEMORY[0x1E695DF70] array];
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
          string2 = [v12 string];
          [array addObject:string2];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    v19 = [array indexOfObject:string];
    if (v19 && v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [array removeObjectAtIndex:v19];
      [array insertObject:string atIndex:0];
    }

    v7 = v21;
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_queryVariantsFromArray:(id)array
{
  v24 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    firstObject = [arrayCopy firstObject];
    array = [MEMORY[0x1E695DF70] array];
    v18 = firstObject;
    v7 = [MEMORY[0x1E695DF70] arrayWithObject:firstObject];
    [array addObject:v7];
    v8 = [arrayCopy mutableCopy];
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
            [array addObject:v16];

            [array addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

@end