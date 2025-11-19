@interface NSDictionary(MTAdditions)
- (id)mt_compactMap:()MTAdditions;
- (id)mt_invertedDictionary;
- (id)mt_subdictionaryWithKeys:()MTAdditions;
@end

@implementation NSDictionary(MTAdditions)

- (id)mt_invertedDictionary
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [a1 objectForKey:v8];
        if (v9)
        {
          [v2 setObject:v8 forKey:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)mt_compactMap:()MTAdditions
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__NSDictionary_MTAdditions__mt_compactMap___block_invoke;
    v10[3] = &unk_1E8569390;
    v12 = v4;
    v6 = v5;
    v11 = v6;
    [a1 enumerateKeysAndObjectsUsingBlock:v10];
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)mt_subdictionaryWithKeys:()MTAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [a1 objectForKey:{v11, v15}];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

@end