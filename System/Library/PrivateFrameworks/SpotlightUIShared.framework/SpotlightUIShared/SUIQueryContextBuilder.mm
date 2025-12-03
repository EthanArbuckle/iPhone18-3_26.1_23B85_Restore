@interface SUIQueryContextBuilder
+ (id)queryContextWithPerformEntityQueryCommands:(id)commands view:(id)view;
+ (id)updateQueryContext:(id)context withSearchString:(id)string showSuggestions:(BOOL)suggestions view:(id)view;
+ (void)setCommonPropertiesOnQueryContext:(id)context withView:(id)view;
@end

@implementation SUIQueryContextBuilder

+ (id)queryContextWithPerformEntityQueryCommands:(id)commands view:(id)view
{
  v27 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  viewCopy = view;
  v8 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = commandsCopy;
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
          fromSuggestion = [v14 fromSuggestion];
        }

        else
        {
          fromSuggestion = 0;
        }

        v16 = [MEMORY[0x277D65890] searchEntityWithCommand:v14 fromSuggestion:{fromSuggestion, v22}];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v17 = objc_opt_new();
  [v17 setQueryKind:9];
  [v17 setSearchEntities:v8];
  firstObject = [v8 firstObject];
  searchString = [firstObject searchString];
  [v17 setSearchString:searchString];

  [v17 setWhyQuery:8];
  [self setCommonPropertiesOnQueryContext:v17 withView:viewCopy];

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)updateQueryContext:(id)context withSearchString:(id)string showSuggestions:(BOOL)suggestions view:(id)view
{
  suggestionsCopy = suggestions;
  contextCopy = context;
  viewCopy = view;
  stringCopy = string;
  if ((isMacOS() & 1) == 0)
  {
    [contextCopy incrementQueryId];
  }

  searchEntities = [contextCopy searchEntities];
  v14 = [searchEntities count];

  if (contextCopy)
  {
    v15 = suggestionsCopy;
  }

  else
  {
    v15 = 0;
  }

  if (!v15 && !v14)
  {
    v16 = objc_opt_new();

    contextCopy = v16;
  }

  if (!contextCopy)
  {
    contextCopy = objc_opt_new();
  }

  [contextCopy setSearchString:stringCopy];

  if (suggestionsCopy)
  {
    v17 = 1;
  }

  else
  {
    v17 = 8;
  }

  if (suggestionsCopy)
  {
    v18 = 2;
  }

  else
  {
    v18 = 5;
  }

  [contextCopy setWhyQuery:v17];
  if (v14)
  {
    v19 = 9;
  }

  else
  {
    v19 = v18;
  }

  [contextCopy setQueryKind:v19];
  [self setCommonPropertiesOnQueryContext:contextCopy withView:viewCopy];

  return contextCopy;
}

+ (void)setCommonPropertiesOnQueryContext:(id)context withView:(id)view
{
  viewCopy = view;
  contextCopy = context;
  [contextCopy setDeviceAuthenticationState:{+[SUIUtilities deviceAuthenticationStateForView:](SUIUtilities, "deviceAuthenticationStateForView:", viewCopy)}];
  [viewCopy tlks_scale];
  v7 = v6;

  [contextCopy setScaleFactor:v7];
}

@end