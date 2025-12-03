@interface NSDictionary(PosterFoundation)
+ (id)pf_bucketizeArray:()PosterFoundation keyMaker:;
- (id)pf_sanitizeWithAllowedKeyClasses:()PosterFoundation allowedValueClasses:;
@end

@implementation NSDictionary(PosterFoundation)

- (id)pf_sanitizeWithAllowedKeyClasses:()PosterFoundation allowedValueClasses:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    if (v8)
    {
LABEL_3:
      v10 = [MEMORY[0x1E695DFD8] setWithArray:v8];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v11 = PFValidateDictionaryForClasses(self, v9, v10, &v28, &v27, &v26);
  v12 = v28;
  v13 = v27;
  v14 = v26;
  if (v11)
  {
    v15 = [self copy];
  }

  else
  {
    v16 = objc_opt_new();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__NSDictionary_PosterFoundation__pf_sanitizeWithAllowedKeyClasses_allowedValueClasses___block_invoke;
    v19[3] = &unk_1E8189FD0;
    v20 = v12;
    v21 = v13;
    v22 = v16;
    v23 = v6;
    v24 = v8;
    v25 = v14;
    v17 = v16;
    [self enumerateKeysAndObjectsUsingBlock:v19];
    v15 = [v17 copy];
  }

  return v15;
}

+ (id)pf_bucketizeArray:()PosterFoundation keyMaker:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if (v6)
    {
      v7 = objc_opt_new();
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v19 = v5;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = v6[2](v6, v13);
            if (v14)
            {
              v15 = [v7 objectForKeyedSubscript:v14];
              if (!v15)
              {
                v15 = objc_opt_new();
                [v7 setObject:v15 forKeyedSubscript:v14];
              }

              [v15 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);
      }

      v16 = [v7 copy];
      v5 = v19;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end