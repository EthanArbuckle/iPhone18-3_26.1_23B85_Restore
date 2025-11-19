@interface SUIQueryContextBuilder
+ (id)queryContextWithPerformEntityQueryCommands:(id)a3 view:(id)a4;
+ (id)updateQueryContext:(id)a3 withSearchString:(id)a4 showSuggestions:(BOOL)a5 view:(id)a6;
+ (void)setCommonPropertiesOnQueryContext:(id)a3 withView:(id)a4;
@end

@implementation SUIQueryContextBuilder

+ (id)queryContextWithPerformEntityQueryCommands:(id)a3 view:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 fromSuggestion];
        }

        else
        {
          v15 = 0;
        }

        v16 = [MEMORY[0x277D65890] searchEntityWithCommand:v14 fromSuggestion:{v15, v22}];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v17 = objc_opt_new();
  [v17 setQueryKind:9];
  [v17 setSearchEntities:v8];
  v18 = [v8 firstObject];
  v19 = [v18 searchString];
  [v17 setSearchString:v19];

  [v17 setWhyQuery:8];
  [a1 setCommonPropertiesOnQueryContext:v17 withView:v7];

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)updateQueryContext:(id)a3 withSearchString:(id)a4 showSuggestions:(BOOL)a5 view:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = a4;
  if ((isMacOS() & 1) == 0)
  {
    [v10 incrementQueryId];
  }

  v13 = [v10 searchEntities];
  v14 = [v13 count];

  if (v10)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  if (!v15 && !v14)
  {
    v16 = objc_opt_new();

    v10 = v16;
  }

  if (!v10)
  {
    v10 = objc_opt_new();
  }

  [v10 setSearchString:v12];

  if (v7)
  {
    v17 = 1;
  }

  else
  {
    v17 = 8;
  }

  if (v7)
  {
    v18 = 2;
  }

  else
  {
    v18 = 5;
  }

  [v10 setWhyQuery:v17];
  if (v14)
  {
    v19 = 9;
  }

  else
  {
    v19 = v18;
  }

  [v10 setQueryKind:v19];
  [a1 setCommonPropertiesOnQueryContext:v10 withView:v11];

  return v10;
}

+ (void)setCommonPropertiesOnQueryContext:(id)a3 withView:(id)a4
{
  v5 = a4;
  v8 = a3;
  [v8 setDeviceAuthenticationState:{+[SUIUtilities deviceAuthenticationStateForView:](SUIUtilities, "deviceAuthenticationStateForView:", v5)}];
  [v5 tlks_scale];
  v7 = v6;

  [v8 setScaleFactor:v7];
}

@end