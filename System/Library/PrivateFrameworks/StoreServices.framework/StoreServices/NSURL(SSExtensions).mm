@interface NSURL(SSExtensions)
+ (id)_ss_copyDictionaryForQueryString:()SSExtensions unescapedValues:;
+ (id)_ss_unescapedStringForString:()SSExtensions;
- (id)_ss_URLByRemovingQueryParameter:()SSExtensions;
- (id)_ss_valueForQueryParameter:()SSExtensions;
- (uint64_t)_ss_hasQueryParameter:()SSExtensions;
@end

@implementation NSURL(SSExtensions)

+ (id)_ss_copyDictionaryForQueryString:()SSExtensions unescapedValues:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = v5;
  v7 = [v5 componentsSeparatedByString:@"&"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:1];
          if (a4)
          {
            v14 = [MEMORY[0x1E695DFF8] _ss_unescapedStringForString:v13];

            v13 = v14;
          }

          v15 = [v12 objectAtIndex:0];
          [v6 setObject:v13 forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)_ss_unescapedStringForString:()SSExtensions
{
  v3 = a3;
  v4 = v3;
  if ([v3 length])
  {
    v4 = [v3 stringByRemovingPercentEncoding];
  }

  return v4;
}

- (id)_ss_URLByRemovingQueryParameter:()SSExtensions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v6 = [v5 queryItems];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__NSURL_SSExtensions___ss_URLByRemovingQueryParameter___block_invoke;
  v12[3] = &unk_1E84AD470;
  v13 = v4;
  v7 = v4;
  v8 = [v6 _ss_arrayByRemovingObjectsPassingTest:v12];

  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [v5 setQueryItems:v9];
  v10 = [v5 URL];

  return v10;
}

- (uint64_t)_ss_hasQueryParameter:()SSExtensions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v6 = [v5 queryItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__NSURL_SSExtensions___ss_hasQueryParameter___block_invoke;
  v10[3] = &unk_1E84AD470;
  v11 = v4;
  v7 = v4;
  v8 = [v6 _ss_any:v10];

  return v8;
}

- (id)_ss_valueForQueryParameter:()SSExtensions
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v6 = [v5 queryItems];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__NSURL_SSExtensions___ss_valueForQueryParameter___block_invoke;
  v11[3] = &unk_1E84AD470;
  v12 = v4;
  v7 = v4;
  v8 = [v6 _ss_firstObjectPassingTest:v11];

  v9 = [v8 value];

  return v9;
}

@end