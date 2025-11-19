@interface NSDictionary(ParsecExtras)
- (float)prs_floatForKey:()ParsecExtras;
- (id)prs_URLForKey:()ParsecExtras;
- (id)prs_arrayWithClass:()ParsecExtras forKey:;
- (id)prs_objectWithClass:()ParsecExtras forKey:;
- (id)prs_objectWithClassArray:()ParsecExtras forKey:;
- (uint64_t)prs_BOOLForKey:()ParsecExtras;
- (uint64_t)prs_intForKey:()ParsecExtras;
- (uint64_t)prs_integerForKey:()ParsecExtras;
- (void)prs_arrayForKey:()ParsecExtras;
- (void)prs_dataForKey:()ParsecExtras;
- (void)prs_dateForKey:()ParsecExtras;
- (void)prs_dictionaryForKey:()ParsecExtras;
- (void)prs_numberForKey:()ParsecExtras;
- (void)prs_stringForKey:()ParsecExtras;
@end

@implementation NSDictionary(ParsecExtras)

- (uint64_t)prs_BOOLForKey:()ParsecExtras
{
  v1 = [a1 prs_numberForKey:?];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)prs_stringForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)prs_numberForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)prs_dataForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)prs_dateForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)prs_arrayForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)prs_dictionaryForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)prs_URLForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v3];
    if (!v4)
    {
      v5 = [v3 stringByAddingPercentEscapesUsingEncoding:4];
      if (v5)
      {
        v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)prs_integerForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 integerValue];

  return v3;
}

- (uint64_t)prs_intForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 intValue];

  return v3;
}

- (float)prs_floatForKey:()ParsecExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)prs_arrayWithClass:()ParsecExtras forKey:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [a1 prs_arrayForKey:a4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [a3 alloc];
            v14 = [v13 initWithData:{v12, v17}];
            if (v14)
            {
              [v6 addObject:v14];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)prs_objectWithClass:()ParsecExtras forKey:
{
  v6 = a4;
  v7 = [a3 alloc];
  v8 = [a1 prs_dictionaryForKey:v6];

  v9 = [v7 initWithData:v8];

  return v9;
}

- (id)prs_objectWithClassArray:()ParsecExtras forKey:
{
  v6 = a4;
  v7 = [a3 alloc];
  v8 = [a1 prs_arrayForKey:v6];

  v9 = [v7 initWithArray:v8];

  return v9;
}

@end