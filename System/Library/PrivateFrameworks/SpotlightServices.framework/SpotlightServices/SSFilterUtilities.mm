@interface SSFilterUtilities
+ (id)appFilterForResult:(id)result;
+ (id)filterForResult:(id)result;
+ (id)filtersForResult:(id)result;
+ (id)folderScopesFromURLs:(id)ls;
+ (id)hiddenFilterBundleIDs;
+ (id)uttypesFromFilterQueries:(id)queries;
@end

@implementation SSFilterUtilities

+ (id)uttypesFromFilterQueries:(id)queries
{
  v45 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  v4 = 0x1E695D000uLL;
  v29 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = queriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    v28 = v5;
    v31 = *v40;
    do
    {
      v9 = 0;
      v30 = v7;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"()"];
        v12 = [v10 stringByTrimmingCharactersInSet:v11];

        if ([v12 hasPrefix:@"kMDItemContentTypeTree=="])
        {
          v33 = v9;
          v13 = *(v4 + 4008);
          v34 = objc_opt_new();
          if (([v12 containsString:@"&&"] & 1) == 0 && (objc_msgSend(v12, "containsString:", @"!=") & 1) == 0)
          {
            v32 = v12;
            v14 = [v12 componentsSeparatedByString:@"||"];
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v36;
              v18 = 1;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v36 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v20 = *(*(&v35 + 1) + 8 * i);
                  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                  v22 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

                  if ([v22 hasPrefix:@"kMDItemContentTypeTree=="])
                  {
                    v23 = [v22 substringFromIndex:{objc_msgSend(@"kMDItemContentTypeTree==", "length")}];
                    if (v23 && ([MEMORY[0x1E6982C40] typeWithIdentifier:v23], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v25 = v24;
                      [v34 addObject:v24];
                    }

                    else
                    {
                      v18 = 0;
                    }
                  }

                  else
                  {
                    v18 = 0;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v16);

              v4 = 0x1E695D000;
              v5 = v28;
              v7 = v30;
              v8 = v31;
              v12 = v32;
              if ((v18 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            else
            {

              v8 = v31;
            }

            [v29 unionSet:v34];
          }

LABEL_27:

          v9 = v33;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (id)hiddenFilterBundleIDs
{
  if (hiddenFilterBundleIDs_onceToken != -1)
  {
    +[SSFilterUtilities hiddenFilterBundleIDs];
  }

  v3 = hiddenFilterBundleIDs_hiddenFilterBundleIDs;

  return v3;
}

void __42__SSFilterUtilities_hiddenFilterBundleIDs__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.SpotlightService";
  v3[1] = @"com.apple.Spotlight";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = hiddenFilterBundleIDs_hiddenFilterBundleIDs;
  hiddenFilterBundleIDs_hiddenFilterBundleIDs = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)appFilterForResult:(id)result
{
  v4 = *MEMORY[0x1E6964C38];
  resultCopy = result;
  v6 = [resultCopy valueForAttribute:v4 withType:objc_opt_class()];
  contentTypeTree = [resultCopy contentTypeTree];
  lastObject = [contentTypeTree lastObject];

  uniformContentType = [resultCopy uniformContentType];

  if (uniformContentType || !lastObject)
  {
    v10 = uniformContentType;
  }

  else
  {
    v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:lastObject];
  }

  v11 = v10;

  if (!v11)
  {
    v11 = [SSFilesPasteboardResultBuilder typeForURL:v6];
  }

  hiddenFilterBundleIDs = [self hiddenFilterBundleIDs];
  [hiddenFilterBundleIDs containsObject:0];

  return 0;
}

+ (id)filterForResult:(id)result
{
  v3 = [self filtersForResult:result];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)filtersForResult:(id)result
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [self appFilterForResult:result];
  v4 = v3;
  if (v3)
  {
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)folderScopesFromURLs:(id)ls
{
  v19 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = lsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        path = [*(*(&v14 + 1) + 8 * i) path];
        if (([path hasSuffix:@"/"] & 1) == 0)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/", path];

          path = v11;
        }

        [v4 addObject:path];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

@end