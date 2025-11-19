@interface NSURL(ICAdditions)
+ (id)ic_queryParametersDictionaryFromString:()ICAdditions;
- (id)ic_URLByAppendingQueryItems:()ICAdditions;
- (id)ic_URLByAppendingQueryParameters:()ICAdditions;
- (id)ic_queryParametersDictionary;
@end

@implementation NSURL(ICAdditions)

- (id)ic_queryParametersDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 queryItems];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 name];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 value];

          if (v12)
          {
            v13 = [v9 value];
            v14 = [v9 name];
            [v2 setObject:v13 forKeyedSubscript:v14];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v2;
}

- (id)ic_URLByAppendingQueryParameters:()ICAdditions
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = v5;
  v7 = [v5 queryItems];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 name];
        [v6 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v4 allKeys];
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        v20 = [v4 objectForKeyedSubscript:v19];
        v21 = [MEMORY[0x1E696AF60] queryItemWithName:v19 value:v20];
        [v6 setObject:v21 forKeyedSubscript:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v16);
  }

  v22 = [v6 allValues];
  [v25 setQueryItems:v22];

  v23 = [v25 URL];

  return v23;
}

- (id)ic_URLByAppendingQueryItems:()ICAdditions
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v6 = [v5 queryItems];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v7 addObjectsFromArray:v4];
  [v5 setQueryItems:v7];
  v8 = [v5 URL];

  return v8;
}

+ (id)ic_queryParametersDictionaryFromString:()ICAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v5 setQuery:v3];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 queryItems];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 name];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 value];

          if (v14)
          {
            v15 = [v11 value];
            v16 = [v11 name];
            [v4 setObject:v15 forKeyedSubscript:v16];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v4;
}

@end