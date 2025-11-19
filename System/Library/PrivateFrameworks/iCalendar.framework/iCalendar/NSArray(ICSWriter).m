@interface NSArray(ICSWriter)
- (void)_ICSParametersAppendingToString:()ICSWriter;
- (void)_ICSStringWithOptions:()ICSWriter appendingToString:;
- (void)_ICSStringsForPropertyValuesWithOptions:()ICSWriter appendingToString:;
@end

@implementation NSArray(ICSWriter)

- (void)_ICSStringWithOptions:()ICSWriter appendingToString:
{
  v14 = a4;
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = v8;
    if ((a3 & 8) != 0)
    {
      v10 = [v8 sortedArrayUsingComparator:&__block_literal_global_243];

      v9 = v10;
    }

    v11 = [v9 objectAtIndex:0];
    [v11 _ICSStringWithOptions:a3 appendingToString:v14];

    if (v7 != 1)
    {
      for (i = 1; i != v7; ++i)
      {
        [v14 appendString:{@", "}];
        v13 = [v9 objectAtIndex:i];
        [v13 _ICSStringWithOptions:a3 appendingToString:v14];
      }
    }
  }
}

- (void)_ICSParametersAppendingToString:()ICSWriter
{
  v11 = a3;
  v4 = [a1 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = v4 - 1;
    do
    {
      v8 = [a1 objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 absoluteString];
      }

      else
      {
        [v8 description];
      }
      v9 = ;
      v10 = [v9 _ICSStringForParameterValue];
      [v11 appendString:v10];

      if (v6 < v7)
      {
        [v11 appendString:{@", "}];
      }

      ++v6;
    }

    while (v5 != v6);
  }
}

- (void)_ICSStringsForPropertyValuesWithOptions:()ICSWriter appendingToString:
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if (v10)
        {
          [v6 appendString:{@", ", v16}];
        }

        v14 = [v13 _ICSStringForProperyValue];
        [v14 _ICSStringWithOptions:a3 appendingToString:v6];

        ++v12;
        v10 = 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end