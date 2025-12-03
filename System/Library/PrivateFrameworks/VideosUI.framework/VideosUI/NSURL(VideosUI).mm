@interface NSURL(VideosUI)
+ (id)vui_sortedQueryItemsFromDictionary:()VideosUI;
- (id)vui_URLByAddingQueryParamWithName:()VideosUI value:;
- (id)vui_URLByAddingQueryParamsDictionary:()VideosUI;
- (id)vui_URLByRemovingQueryParamWithName:()VideosUI;
- (id)vui_parsedQueryParametersDictionary;
- (uint64_t)vui_containsQueryParamWithName:()VideosUI;
@end

@implementation NSURL(VideosUI)

- (id)vui_parsedQueryParametersDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  query = [self query];
  v2 = [query componentsSeparatedByString:@"&"];

  v3 = [v2 count];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v3];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v2;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          stringByRemovingPercentEncoding = [*(*(&v16 + 1) + 8 * i) stringByRemovingPercentEncoding];
          v11 = [stringByRemovingPercentEncoding componentsSeparatedByString:@"="];

          if ([v11 count] == 2)
          {
            v12 = [v11 objectAtIndex:1];
            v13 = [v11 objectAtIndex:0];
            [v4 setObject:v12 forKey:v13];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v14 = [v4 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)vui_containsQueryParamWithName:()VideosUI
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
  v6 = 0;
  if ([v4 length] && v5)
  {
    [v5 queryItems];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v16 = 0u;
    v6 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v7);
          }

          name = [*(*(&v13 + 1) + 8 * i) name];
          v11 = [name caseInsensitiveCompare:v4];

          if (!v11)
          {
            v6 = 1;
            goto LABEL_13;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v6;
}

- (id)vui_URLByAddingQueryParamWithName:()VideosUI value:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:selfCopy resolvingAgainstBaseURL:0];
    v10 = v9;
    if (v9)
    {
      percentEncodedQueryItems = [v9 percentEncodedQueryItems];
      v12 = [percentEncodedQueryItems mutableCopy];

      v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v6 value:v7];
      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      if (v13)
      {
        [v12 addObject:v13];
      }

      [v10 setPercentEncodedQueryItems:v12];
      v14 = [v10 URL];
      v15 = v14;
      if (v14)
      {
        v16 = v14;

        selfCopy = v16;
      }
    }
  }

  return selfCopy;
}

- (id)vui_URLByAddingQueryParamsDictionary:()VideosUI
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v14 + 1) + 8 * v9);
        v12 = [v4 objectForKeyedSubscript:v11];
        selfCopy = [v10 vui_URLByAddingQueryParamWithName:v11 value:v12];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return selfCopy;
}

- (id)vui_URLByRemovingQueryParamWithName:()VideosUI
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v21 = selfCopy;
  if ([v4 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:selfCopy resolvingAgainstBaseURL:0];
    v7 = v6;
    if (v6)
    {
      percentEncodedQueryItems = [v6 percentEncodedQueryItems];
      v9 = [percentEncodedQueryItems mutableCopy];

      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = [v9 copy];
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            name = [v14 name];
            v16 = [name isEqualToString:v4];

            if (v16)
            {
              [v9 removeObject:v14];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }

      [v7 setPercentEncodedQueryItems:v9];
      v17 = [v7 URL];
      v18 = v17;
      if (v17)
      {
        v19 = v17;

        v21 = v19;
      }
    }
  }

  return v21;
}

+ (id)vui_sortedQueryItemsFromDictionary:()VideosUI
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [v3 allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stringValue = v11;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_14;
          }

          stringValue = [v11 stringValue];
        }

        v13 = stringValue;
        if (stringValue)
        {
          v14 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v10 value:stringValue];
          if (v14)
          {
            [array addObject:v14];
          }
        }

LABEL_14:
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return array;
}

@end