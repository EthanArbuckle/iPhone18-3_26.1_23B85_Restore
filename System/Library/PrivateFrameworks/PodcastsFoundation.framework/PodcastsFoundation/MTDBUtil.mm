@interface MTDBUtil
+ (BOOL)isSupportedUrlString:(id)string;
@end

@implementation MTDBUtil

+ (BOOL)isSupportedUrlString:(id)string
{
  v33 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (![stringCopy length])
  {
    goto LABEL_26;
  }

  lowercaseString = [stringCopy lowercaseString];
  if ([lowercaseString hasPrefix:@"https://"])
  {
    v5 = [stringCopy length];

    if (v5 > 8)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  lowercaseString2 = [stringCopy lowercaseString];
  if ([lowercaseString2 hasPrefix:@"http://"])
  {
    v7 = [stringCopy length];

    if (v7 > 7)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  lowercaseString3 = [stringCopy lowercaseString];
  if ([lowercaseString3 hasPrefix:@"file://"])
  {
    v9 = [stringCopy length];

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

  if ([stringCopy length] < 4)
  {
LABEL_26:
    v10 = 0;
    goto LABEL_29;
  }

  if (!isSupportedUrlString____url_types)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];

    v13 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [infoDictionary objectForKey:{@"CFBundleURLTypes", 0}];
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

  v22 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
  scheme = [v22 scheme];
  lowercaseString4 = [scheme lowercaseString];

  if ([isSupportedUrlString____url_types containsObject:lowercaseString4])
  {
    v25 = [stringCopy length];
    v10 = v25 > [lowercaseString4 length] + 3;
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