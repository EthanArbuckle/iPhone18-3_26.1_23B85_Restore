@interface VUIOpenURLRouterDataSource
+ (id)routerDataSourceWithDict:(id)dict appContext:(id)context;
@end

@implementation VUIOpenURLRouterDataSource

+ (id)routerDataSourceWithDict:(id)dict appContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  contextCopy = context;
  v7 = [dictCopy vui_arrayForKey:@"documentDataSources"];
  v28 = v7;
  if ([v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [VUIDocumentDataSource documentDataSourceWithDictionary:*(*(&v32 + 1) + 8 * i)];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = [dictCopy vui_dictionaryForKey:@"actionDataSource"];
  v16 = [VUIAction actionWithDictionary:v15 appContext:contextCopy];
  v17 = [dictCopy vui_dictionaryForKey:@"postActionDataSource"];
  v29 = contextCopy;
  v30 = [VUIAction actionWithDictionary:v17 appContext:contextCopy];
  v31 = [dictCopy vui_stringForKey:@"tabIdentifier"];
  v18 = [dictCopy vui_stringForKey:@"nativePageSource"];
  v19 = [dictCopy vui_dictionaryForKey:@"localLibraryDataSource"];
  if (_os_feature_enabled_impl())
  {
    v27 = [dictCopy vui_dictionaryForKey:@"channelsResponse"];
  }

  else
  {
    v27 = 0;
  }

  v20 = [dictCopy vui_BOOLForKey:@"actionFirst" defaultValue:0];
  if (v16 || [v8 count] || v31 || v19 || v18)
  {
    v21 = v17;
    v22 = v15;
    v23 = objc_opt_new();
    v24 = [v8 copy];
    [v23 setDocumentDataSources:v24];

    [v23 setAction:v16];
    [v23 setPostAction:v30];
    [v23 setTabIdentifier:v31];
    [v23 setNativePageName:v18];
    [v23 setLocalLibraryLink:v19];
    [v23 setActionFirst:v20];
    if (_os_feature_enabled_impl())
    {
      v25 = v27;
      [v23 setChannelsResponse:v27];
      v15 = v22;
      v17 = v21;
      goto LABEL_26;
    }

    v15 = v22;
    v17 = v21;
  }

  else
  {
    v23 = 0;
  }

  v25 = v27;
LABEL_26:

  return v23;
}

@end