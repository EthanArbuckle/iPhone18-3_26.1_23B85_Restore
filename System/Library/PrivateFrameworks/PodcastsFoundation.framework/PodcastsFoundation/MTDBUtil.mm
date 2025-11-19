@interface MTDBUtil
+ (BOOL)isSupportedUrlString:(id)a3;
@end

@implementation MTDBUtil

+ (BOOL)isSupportedUrlString:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 length])
  {
    goto LABEL_26;
  }

  v4 = [v3 lowercaseString];
  if ([v4 hasPrefix:@"https://"])
  {
    v5 = [v3 length];

    if (v5 > 8)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v6 = [v3 lowercaseString];
  if ([v6 hasPrefix:@"http://"])
  {
    v7 = [v3 length];

    if (v7 > 7)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = [v3 lowercaseString];
  if ([v8 hasPrefix:@"file://"])
  {
    v9 = [v3 length];

    if (v9 > 7)
    {
LABEL_12:
      v10 = 1;
      goto LABEL_29;
    }
  }

  else
  {
  }

  if ([v3 length] < 4)
  {
LABEL_26:
    v10 = 0;
    goto LABEL_29;
  }

  if (!isSupportedUrlString____url_types)
  {
    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v11 infoDictionary];

    v13 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [v12 objectForKey:{@"CFBundleURLTypes", 0}];
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v28 + 1) + 8 * i) objectForKey:@"CFBundleURLSchemes"];
          [v13 addObjectsFromArray:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    v20 = [v13 copy];
    v21 = isSupportedUrlString____url_types;
    isSupportedUrlString____url_types = v20;
  }

  v22 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  v23 = [v22 scheme];
  v24 = [v23 lowercaseString];

  if ([isSupportedUrlString____url_types containsObject:v24])
  {
    v25 = [v3 length];
    v10 = v25 > [v24 length] + 3;
  }

  else
  {
    v10 = 0;
  }

LABEL_29:
  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

@end