@interface PNWidgetAssetsSuggester
- (PNWidgetAssetsSuggester)initWithAssets:(id)assets photoLibrary:(id)library widgetIdentifier:(id)identifier;
- (id)_predicateForFeaturedSuggestions;
- (id)createSuggestions;
- (id)fetchSuggestionsWithOptions:(id)options;
- (void)removePreviousSuggestions;
@end

@implementation PNWidgetAssetsSuggester

- (id)fetchSuggestionsWithOptions:(id)options
{
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  v21 = optionsCopy;
  v5 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:optionsCopy];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 objectAtIndex:v7];
      featuresProperties = [v9 featuresProperties];
      v11 = [featuresProperties objectForKeyedSubscript:@"widgetIdentifier"];

      widgetIdentifier = [(PNWidgetAssetsSuggester *)self widgetIdentifier];
      v13 = [widgetIdentifier isEqualToString:v11];

      if (v13)
      {
        [v6 addObject:v9];
      }

      objc_autoreleasePoolPop(v8);
      ++v7;
    }

    while (v7 < [v5 count]);
  }

  v14 = objc_alloc(MEMORY[0x1E69788E0]);
  photoLibrary = [(PNWidgetAssetsSuggester *)self photoLibrary];
  fetchType = [v5 fetchType];
  fetchPropertySets = [v5 fetchPropertySets];
  v18 = [v14 initWithObjects:v6 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

  objc_autoreleasePoolPop(context);

  return v18;
}

- (id)_predicateForFeaturedSuggestions
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"type", 7];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"subtype", 701];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"featuredState", 1];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"state", 1];
  v6 = MEMORY[0x1E696AB28];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [v6 andPredicateWithSubpredicates:v7];

  return v8;
}

- (void)removePreviousSuggestions
{
  v26 = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNWidgetAssetsSuggester *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  _predicateForFeaturedSuggestions = [(PNWidgetAssetsSuggester *)self _predicateForFeaturedSuggestions];
  [librarySpecificFetchOptions setPredicate:_predicateForFeaturedSuggestions];

  v6 = [(PNWidgetAssetsSuggester *)self fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  if ([v6 count])
  {
    photoLibrary2 = [(PNWidgetAssetsSuggester *)self photoLibrary];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__PNWidgetAssetsSuggester_removePreviousSuggestions__block_invoke;
    v20[3] = &unk_1E82A2730;
    v8 = v6;
    v21 = v8;
    v19 = 0;
    v9 = [photoLibrary2 performChangesAndWait:v20 error:&v19];
    v10 = v19;

    v11 = PLMemoriesGetLog();
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        widgetIdentifier = [(PNWidgetAssetsSuggester *)self widgetIdentifier];
        v14 = [v8 count];
        *buf = 138412546;
        v23 = widgetIdentifier;
        v24 = 1024;
        LODWORD(v25) = v14;
        v15 = "[PNWidgetAssetsSuggester] widgetIdentifier: %@, deleted %d suggestions.";
        v16 = v12;
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 18;
LABEL_7:
        _os_log_impl(&dword_1C6F5C000, v16, v17, v15, buf, v18);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      widgetIdentifier = [(PNWidgetAssetsSuggester *)self widgetIdentifier];
      *buf = 138412546;
      v23 = widgetIdentifier;
      v24 = 2112;
      v25 = v10;
      v15 = "[PNWidgetAssetsSuggester] Failed to remove suggestions for widgetIdentifier %@, error: %@.";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 22;
      goto LABEL_7;
    }
  }
}

- (id)createSuggestions
{
  v30 = *MEMORY[0x1E69E9840];
  assets = [(PNWidgetAssetsSuggester *)self assets];
  v4 = [assets count];

  v5 = PLMemoriesGetLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      widgetIdentifier = [(PNWidgetAssetsSuggester *)self widgetIdentifier];
      assets2 = [(PNWidgetAssetsSuggester *)self assets];
      *buf = 138412546;
      v27 = widgetIdentifier;
      v28 = 1024;
      LODWORD(v29) = [assets2 count];
      _os_log_impl(&dword_1C6F5C000, v6, OS_LOG_TYPE_DEFAULT, "[PNWidgetAssetsSuggester] Widget id: %@, eligibleAssets: %d.", buf, 0x12u);
    }

    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    assets3 = [(PNWidgetAssetsSuggester *)self assets];
    v11 = [v9 initWithCapacity:{objc_msgSend(assets3, "count")}];

    widgetIdentifier2 = [(PNWidgetAssetsSuggester *)self widgetIdentifier];
    photoLibrary = [(PNWidgetAssetsSuggester *)self photoLibrary];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __44__PNWidgetAssetsSuggester_createSuggestions__block_invoke;
    v23[3] = &unk_1E82A2708;
    v23[4] = self;
    v14 = widgetIdentifier2;
    v24 = v14;
    v6 = v11;
    v25 = v6;
    v22 = 0;
    v15 = [photoLibrary performChangesAndWait:v23 error:&v22];
    v16 = v22;

    if (v15)
    {
      v17 = v6;
    }

    else
    {
      v19 = PLMemoriesGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        widgetIdentifier3 = [(PNWidgetAssetsSuggester *)self widgetIdentifier];
        *buf = 138412546;
        v27 = widgetIdentifier3;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_1C6F5C000, v19, OS_LOG_TYPE_ERROR, "[PNWidgetAssetsSuggester] Failed to create suggestions for widgetIdentifier %@, error: %@.", buf, 0x16u);
      }

      v17 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      widgetIdentifier4 = [(PNWidgetAssetsSuggester *)self widgetIdentifier];
      *buf = 138412290;
      v27 = widgetIdentifier4;
      _os_log_impl(&dword_1C6F5C000, v6, OS_LOG_TYPE_ERROR, "[PNWidgetAssetsSuggester] No eligible assets for %@.", buf, 0xCu);
    }

    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

void __44__PNWidgetAssetsSuggester_createSuggestions__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) assets];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = MEMORY[0x1E6978AF0];
        v21 = *(*(&v15 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
        v8 = [MEMORY[0x1E695DF00] date];
        v9 = [v6 creationRequestForSuggestionWithType:7 subtype:701 keyAssets:v7 representativeAssets:0 creationDate:v8 relevantUntilDate:0 version:1];

        [v9 setFeaturedState:1];
        v10 = *(a1 + 40);
        v19 = @"widgetIdentifier";
        v20 = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [v9 setFeaturesProperties:v11];

        [v9 markActive];
        v12 = [v9 placeholderForCreatedSuggestion];
        v13 = [v12 localIdentifier];

        if (v13)
        {
          [*(a1 + 48) addObject:v13];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v3);
  }
}

- (PNWidgetAssetsSuggester)initWithAssets:(id)assets photoLibrary:(id)library widgetIdentifier:(id)identifier
{
  assetsCopy = assets;
  libraryCopy = library;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PNWidgetAssetsSuggester;
  v12 = [(PNWidgetAssetsSuggester *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assets, assets);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_widgetIdentifier, identifier);
  }

  return v13;
}

@end