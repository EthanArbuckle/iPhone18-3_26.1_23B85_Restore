@interface NSURLRequest(ICAdditions)
- (id)ic_valueForHTTPHeaderField:()ICAdditions;
- (id)ic_valuesForCookieWithName:()ICAdditions;
@end

@implementation NSURLRequest(ICAdditions)

- (id)ic_valuesForCookieWithName:()ICAdditions
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v17 = [self ic_valueForHTTPHeaderField:@"Cookie"];
  v4 = [v17 componentsSeparatedByString:@" "];;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 rangeOfString:@"=" options:2];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = v10;
          v13 = v11;
          v14 = [v9 substringToIndex:v10];
          if (![v19 caseInsensitiveCompare:v14])
          {
            v15 = [v9 substringFromIndex:v12 + v13];
            [array addObject:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)ic_valueForHTTPHeaderField:()ICAdditions
{
  v4 = a3;
  v5 = [self valueForHTTPHeaderField:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__35903;
    v17 = __Block_byref_object_dispose__35904;
    v18 = 0;
    allHTTPHeaderFields = [self allHTTPHeaderFields];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__NSURLRequest_ICAdditions__ic_valueForHTTPHeaderField___block_invoke;
    v10[3] = &unk_1E7BF9098;
    v11 = v4;
    v12 = &v13;
    [allHTTPHeaderFields enumerateKeysAndObjectsUsingBlock:v10];

    v7 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return v7;
}

@end