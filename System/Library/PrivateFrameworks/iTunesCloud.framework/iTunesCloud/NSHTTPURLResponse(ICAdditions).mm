@interface NSHTTPURLResponse(ICAdditions)
- (BOOL)hasCacheControl;
- (double)cacheControlMaxAge;
- (id)_cacheControlParameters;
- (id)ic_valueForHTTPHeaderField:()ICAdditions;
@end

@implementation NSHTTPURLResponse(ICAdditions)

- (id)_cacheControlParameters
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v2 = [self ic_valueForHTTPHeaderField:@"Cache-Control"];
  if (v2)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v15 = v2;
    v4 = [v2 componentsSeparatedByString:{@", "}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"="];
          if ([v9 count] == 2)
          {
            v10 = [v9 objectAtIndex:0];
            v11 = [v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            v12 = [v9 objectAtIndex:1];
            v13 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            [dictionary setObject:v13 forKey:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v2 = v15;
  }

  return dictionary;
}

- (id)ic_valueForHTTPHeaderField:()ICAdditions
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26763;
  v16 = __Block_byref_object_dispose__26764;
  v17 = 0;
  allHeaderFields = [self allHeaderFields];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__NSHTTPURLResponse_ICAdditions__ic_valueForHTTPHeaderField___block_invoke;
  v9[3] = &unk_1E7BF9098;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [allHeaderFields enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (double)cacheControlMaxAge
{
  _cacheControlParameters = [self _cacheControlParameters];
  v2 = [_cacheControlParameters objectForKey:@"max-age"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)hasCacheControl
{
  v1 = [self ic_valueForHTTPHeaderField:@"Cache-Control"];
  v2 = v1 != 0;

  return v2;
}

@end