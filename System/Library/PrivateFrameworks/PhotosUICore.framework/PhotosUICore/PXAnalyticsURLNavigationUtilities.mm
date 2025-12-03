@interface PXAnalyticsURLNavigationUtilities
+ (void)sendNavigationEndEventForURL:(id)l;
+ (void)sendNavigationStartEventForURL:(id)l;
@end

@implementation PXAnalyticsURLNavigationUtilities

+ (void)sendNavigationEndEventForURL:(id)l
{
  v3 = dispatch_time(0, 500000000);
  v4 = MEMORY[0x1E69E96A0];

  dispatch_after(v3, v4, &__block_literal_global_173651);
}

+ (void)sendNavigationStartEventForURL:(id)l
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  path = [lCopy path];
  v5 = [path length];

  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v37 = lCopy;
    v6 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
    host = [v6 host];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v6;
    queryItems = [v6 queryItems];
    v8 = [queryItems countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (!v8)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_18;
    }

    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v40;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(queryItems);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        name = [v14 name];
        v16 = [name isEqualToString:PXDeeplinkURLPathComponentQueryKeySource];

        if (v16)
        {
          value = [v14 value];
          v18 = v11;
          v11 = value;
        }

        else
        {
          name2 = [v14 name];
          v20 = [name2 isEqualToString:PXDeeplinkURLPathComponentQueryKeyIdentifier];

          if (!v20)
          {
            continue;
          }

          value2 = [v14 value];
          v18 = v10;
          v10 = value2;
        }
      }

      v9 = [queryItems countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (!v9)
      {
LABEL_18:

        if ([v11 isEqualToString:@"notification"])
        {
          v23 = 3;
        }

        else if ([v11 isEqualToString:@"widget"])
        {
          v23 = 4;
        }

        else
        {
          v23 = 5;
        }

        v22 = dictionary;
        v24 = v10;
        v25 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
        [dictionary setObject:v25 forKeyedSubscript:@"URLNavigationKind"];

        v26 = 0x1E6991000;
        if (v10 && [v11 isEqualToString:PXDeeplinkURLPathComponentSourceWidget])
        {
          v27 = [dictionary mutableCopy];
          [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
          v36 = v24 = v10;
          v28 = [objc_alloc(MEMORY[0x1E69789A8]) initWithPhotoLibraryURL:v36];
          v29 = [MEMORY[0x1E6978830] fetchOptionsWithPhotoLibrary:v28 orObject:0];
          [v29 setFetchLimit:1];
          v30 = MEMORY[0x1E6978650];
          v43 = v10;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
          v32 = [v30 fetchAssetCollectionsWithLocalIdentifiers:v31 options:v29];

          firstObject = [v32 firstObject];
          [v27 setObject:host forKeyedSubscript:@"widgetType"];
          if (firstObject)
          {
            [v27 setObject:firstObject forKeyedSubscript:*MEMORY[0x1E6991E08]];
          }

          [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.widget.open" withPayload:v27];

          v26 = 0x1E6991000uLL;
        }

        [*(v26 + 3880) sendEvent:@"com.apple.photos.CPAnalytics.URLNavigationDidStart" withPayload:v22];

        lCopy = v37;
        goto LABEL_29;
      }
    }
  }

  v22 = PLUIGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v46 = lCopy;
    _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_INFO, "Navigation Analytics: Destination URL has empty path, returning early without logging: %@", buf, 0xCu);
  }

LABEL_29:
}

@end