@interface PNWidgetAlbumSuggester
+ (unsigned)widgetSuggestionSubtypeForAssetCollectionType:(int64_t)type;
- (PHFetchResult)suggestions;
- (PNWidgetAlbumSuggester)initWithAlbumLocalIdentifier:(id)identifier widgetIdentifier:(id)widgetIdentifier photoLibrary:(id)library;
- (id)_assetFetchOptions;
- (id)_assetIndexesForDate:(id)date count:(unint64_t)count from:(id)from;
- (id)_makeSuggestionsFromAssets:(id)assets numberOfSuggestions:(unint64_t)suggestions date:(id)date;
- (id)_mutableAssetIndexesForAssetCount:(unint64_t)count;
- (id)_predicateForFeaturedSuggestions;
- (id)fetchSuggestionsWithOptions:(id)options;
- (id)updatedSuggestionLocalIdentifiersForDate:(id)date numberOfSuggestions:(unint64_t)suggestions;
- (unint64_t)removeSuggestionsNotRelevantForDate:(id)date;
- (void)_shuffleAssetIndexes:(id)indexes;
@end

@implementation PNWidgetAlbumSuggester

- (PHFetchResult)suggestions
{
  v11[2] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNWidgetAlbumSuggester *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v11[0] = v5;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v7];

  _predicateForFeaturedSuggestions = [(PNWidgetAlbumSuggester *)self _predicateForFeaturedSuggestions];
  [librarySpecificFetchOptions setPredicate:_predicateForFeaturedSuggestions];

  v9 = [(PNWidgetAlbumSuggester *)self fetchSuggestionsWithOptions:librarySpecificFetchOptions];

  return v9;
}

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

      widgetIdentifier = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
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
  photoLibrary = [(PNWidgetAlbumSuggester *)self photoLibrary];
  fetchType = [v5 fetchType];
  fetchPropertySets = [v5 fetchPropertySets];
  v18 = [v14 initWithObjects:v6 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

  objc_autoreleasePoolPop(context);

  return v18;
}

- (id)_predicateForFeaturedSuggestions
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"type", 7];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"subtype", -[PNWidgetAlbumSuggester suggestionSubtype](self, "suggestionSubtype")];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"featuredState", 1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"state", 1];
  v7 = MEMORY[0x1E696AE18];
  suggestionContext = [(PNWidgetAlbumSuggester *)self suggestionContext];
  v9 = [v7 predicateWithFormat:@"%K == %@", @"context", suggestionContext];

  v10 = MEMORY[0x1E696AB28];
  v14[0] = v3;
  v14[1] = v4;
  v14[2] = v5;
  v14[3] = v6;
  v14[4] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  return v12;
}

- (unint64_t)removeSuggestionsNotRelevantForDate:(id)date
{
  v49[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = PLMemoriesGetLog();
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "WidgetRemoveSuggestionsNotRelevantForDate", "", buf, 2u);
  }

  v10 = mach_absolute_time();
  photoLibrary = [(PNWidgetAlbumSuggester *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  _predicateForFeaturedSuggestions = [(PNWidgetAlbumSuggester *)self _predicateForFeaturedSuggestions];
  dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"relevantUntilDate < %@", dateCopy];

  v15 = MEMORY[0x1E696AB28];
  v49[0] = _predicateForFeaturedSuggestions;
  v49[1] = dateCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];
  [librarySpecificFetchOptions setPredicate:v17];

  v18 = [(PNWidgetAlbumSuggester *)self fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  if ([v18 count])
  {
    v38 = v10;
    v39 = _predicateForFeaturedSuggestions;
    v40 = v6;
    photoLibrary2 = [(PNWidgetAlbumSuggester *)self photoLibrary];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __62__PNWidgetAlbumSuggester_removeSuggestionsNotRelevantForDate___block_invoke;
    v42[3] = &unk_1E82A2730;
    v20 = v18;
    v43 = v20;
    v41 = 0;
    v21 = [photoLibrary2 performChangesAndWait:v42 error:&v41];
    v22 = v41;

    v23 = PLMemoriesGetLog();
    v24 = v23;
    if (v21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        widgetIdentifier = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
        v26 = [v20 count];
        *buf = 138412546;
        v46 = widgetIdentifier;
        v47 = 1024;
        LODWORD(v48) = v26;
        v27 = "[PNWidgetAlbumSuggester] widgetIdentifier: %@, deleted non-relevant %d suggestions";
        v28 = v24;
        v29 = OS_LOG_TYPE_DEFAULT;
        v30 = 18;
LABEL_10:
        _os_log_impl(&dword_1C6F5C000, v28, v29, v27, buf, v30);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      widgetIdentifier = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
      *buf = 138412546;
      v46 = widgetIdentifier;
      v47 = 2112;
      v48 = *&v22;
      v27 = "[PNWidgetAlbumSuggester] failed to remove suggestions for widgetIdentifier %@, error: %@";
      v28 = v24;
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 22;
      goto LABEL_10;
    }

    _predicateForFeaturedSuggestions = v39;
    v6 = v40;
    v10 = v38;
  }

  v31 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v34 = v8;
  v35 = v34;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v35, OS_SIGNPOST_INTERVAL_END, v6, "WidgetRemoveSuggestionsNotRelevantForDate", "", buf, 2u);
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v46 = "WidgetRemoveSuggestionsNotRelevantForDate";
    v47 = 2048;
    v48 = ((((v31 - v10) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v36 = [v18 count];

  return v36;
}

- (id)_assetFetchOptions
{
  v15[2] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PNWidgetAlbumSuggester *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v15[0] = v4;
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v15[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  [librarySpecificFetchOptions setIncludeGuestAssets:0];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v7 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d && %K != %d", @"playbackStyle", 4, @"playbackStyle", 5];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K & %d) == 0", @"kindSubtype", 1];
  v10 = MEMORY[0x1E696AB28];
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [librarySpecificFetchOptions setInternalPredicate:v12];

  return librarySpecificFetchOptions;
}

- (id)_makeSuggestionsFromAssets:(id)assets numberOfSuggestions:(unint64_t)suggestions date:(id)date
{
  v69 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  dateCopy = date;
  v49 = objc_autoreleasePoolPush();
  v10 = PLMemoriesGetLog();
  v11 = os_signpost_id_generate(v10);
  info = 0;
  mach_timebase_info(&info);
  v12 = v10;
  v13 = v12;
  v46 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "WidgetMakeSuggestionFromAssets", "", buf, 2u);
  }

  spid = v11;
  v51 = v13;

  v45 = mach_absolute_time();
  v14 = [assetsCopy count];
  if (v14 >= suggestions)
  {
    suggestionsCopy = suggestions;
  }

  else
  {
    suggestionsCopy = v14;
  }

  v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:suggestionsCopy];
  v16 = -[PNWidgetAlbumSuggester _mutableAssetIndexesForAssetCount:](self, "_mutableAssetIndexesForAssetCount:", [assetsCopy count]);
  [(PNWidgetAlbumSuggester *)self _shuffleAssetIndexes:v16];
  v50 = dateCopy;
  v48 = v16;
  v17 = [(PNWidgetAlbumSuggester *)self _assetIndexesForDate:dateCopy count:suggestions from:v16];
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v60;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v60 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [assetsCopy objectAtIndex:{objc_msgSend(*(*(&v59 + 1) + 8 * i), "integerValue", spid)}];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v21);
  }

  widgetIdentifier = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
  suggestionContext = [(PNWidgetAlbumSuggester *)self suggestionContext];
  suggestionSubtype = [(PNWidgetAlbumSuggester *)self suggestionSubtype];
  photoLibrary = [(PNWidgetAlbumSuggester *)self photoLibrary];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __78__PNWidgetAlbumSuggester__makeSuggestionsFromAssets_numberOfSuggestions_date___block_invoke;
  v53[3] = &unk_1E82A2450;
  v29 = v18;
  v54 = v29;
  v30 = widgetIdentifier;
  v55 = v30;
  v58 = suggestionSubtype;
  v31 = suggestionContext;
  v56 = v31;
  v32 = v47;
  v57 = v32;
  v52 = 0;
  LOBYTE(suggestionContext) = [photoLibrary performChangesAndWait:v53 error:&v52];
  v33 = COERCE_DOUBLE(v52);

  if (suggestionContext)
  {
    v34 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v37 = v51;
    v38 = v37;
    if (v46 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v38, OS_SIGNPOST_INTERVAL_END, spid, "WidgetMakeSuggestionFromAssets", "", buf, 2u);
    }

    v39 = v49;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v65 = "WidgetMakeSuggestionFromAssets";
      v66 = 2048;
      v67 = ((((v34 - v45) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_1C6F5C000, v38, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v40 = v32;
  }

  else
  {
    v41 = PLMemoriesGetLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      widgetIdentifier2 = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
      *buf = 138412546;
      v65 = widgetIdentifier2;
      v66 = 2112;
      v67 = v33;
      _os_log_impl(&dword_1C6F5C000, v41, OS_LOG_TYPE_ERROR, "[PNWidgetAlbumSuggester] failed to create suggestions for identifier %@, error: %@", buf, 0x16u);
    }

    v40 = MEMORY[0x1E695E0F0];
    v39 = v49;
  }

  objc_autoreleasePoolPop(v39);

  return v40;
}

void __78__PNWidgetAlbumSuggester__makeSuggestionsFromAssets_numberOfSuggestions_date___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 dateByAddingTimeInterval:86400.0];
  v4 = PLMemoriesGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v6 = *(a1 + 40);
    *buf = 67109378;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_1C6F5C000, v4, OS_LOG_TYPE_DEFAULT, "[PNWidgetAlbumSuggester] creating %d suggestions for widgetIdentifier %@", buf, 0x12u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = 0.0;
    do
    {
      v11 = 0;
      v12 = v2;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * v11);
        v2 = [v12 dateByAddingTimeInterval:v10];

        v14 = MEMORY[0x1E6978AF0];
        v15 = *(a1 + 64);
        v29 = v13;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        v17 = [v14 creationRequestForSuggestionWithType:7 subtype:v15 keyAssets:v16 representativeAssets:0 creationDate:v2 relevantUntilDate:v3 version:1];

        [v17 setFeaturedState:1];
        [v17 setContext:*(a1 + 48)];
        v18 = *(a1 + 40);
        v27 = @"widgetIdentifier";
        v28 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        [v17 setFeaturesProperties:v19];

        [v17 markActive];
        v20 = [v17 placeholderForCreatedSuggestion];
        v21 = [v20 localIdentifier];

        if (v21)
        {
          [*(a1 + 56) addObject:v21];
        }

        v10 = v10 + 1.0;

        ++v11;
        v12 = v2;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v8);
  }
}

- (id)_assetIndexesForDate:(id)date count:(unint64_t)count from:(id)from
{
  v31 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  fromCopy = from;
  v10 = [fromCopy count];
  if (v10)
  {
    v11 = v10;
    if (v10 < count)
    {
      count = v10;
    }

    [dateCopy timeIntervalSinceReferenceDate];
    v13 = count * (v12 / 86400.0) % v11;
    v14 = PLMemoriesGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      widgetIdentifier = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
      v21 = 138413314;
      v22 = dateCopy;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      countCopy = count;
      v29 = 2112;
      v30 = widgetIdentifier;
      _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_DEFAULT, "[PNWidgetAlbumSuggester] selected assets for date:%@ offset: %d totalAssets: %d numberToChoose: %d widgetIdentifier: %@", &v21, 0x28u);
    }

    if (v13 <= v11 - count)
    {
      v19 = [fromCopy subarrayWithRange:{v13, count}];
    }

    else
    {
      v16 = v11 - v13;
      v17 = [fromCopy subarrayWithRange:{v13, v16}];
      v18 = [fromCopy subarrayWithRange:{0, count - v16}];
      v19 = [v17 arrayByAddingObjectsFromArray:v18];
    }
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

- (void)_shuffleAssetIndexes:(id)indexes
{
  v4 = MEMORY[0x1E69C0838];
  indexesCopy = indexes;
  v6 = [v4 alloc];
  widgetIdentifier = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
  v8 = [v6 initWithSeed:{objc_msgSend(widgetIdentifier, "hash")}];

  PFMutableArrayShuffleWithRandomNumberGenerator();
}

- (id)_mutableAssetIndexesForAssetCount:(unint64_t)count
{
  array = [MEMORY[0x1E695DF70] array];
  if (count)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      [array addObject:v6];

      ++v5;
    }

    while (count != v5);
  }

  return array;
}

- (id)updatedSuggestionLocalIdentifiersForDate:(id)date numberOfSuggestions:(unint64_t)suggestions
{
  v27 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  assetCollection = [(PNWidgetAlbumSuggester *)self assetCollection];

  if (!assetCollection)
  {
    v11 = PLMemoriesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sourceIdentifier = [(PNWidgetAlbumSuggester *)self sourceIdentifier];
      v23 = 138412290;
      v24 = sourceIdentifier;
      _os_log_impl(&dword_1C6F5C000, v11, OS_LOG_TYPE_ERROR, "[PNWidgetAlbumSuggester] album not found: %@", &v23, 0xCu);
    }

    goto LABEL_11;
  }

  if (![(PNWidgetAlbumSuggester *)self suggestionSubtype])
  {
    v11 = PLMemoriesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E6978650];
      assetCollection2 = [(PNWidgetAlbumSuggester *)self assetCollection];
      v20 = [v18 descriptionForSubtype:{objc_msgSend(assetCollection2, "assetCollectionSubtype")}];
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&dword_1C6F5C000, v11, OS_LOG_TYPE_ERROR, "[PNWidgetAlbumSuggester] album subtype not supported found: %@", &v23, 0xCu);
    }

LABEL_11:
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  _assetFetchOptions = [(PNWidgetAlbumSuggester *)self _assetFetchOptions];
  v9 = MEMORY[0x1E6978630];
  assetCollection3 = [(PNWidgetAlbumSuggester *)self assetCollection];
  v11 = [v9 fetchAssetsInAssetCollection:assetCollection3 options:_assetFetchOptions];

  v12 = [v11 count];
  v13 = PLMemoriesGetLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sourceIdentifier2 = [(PNWidgetAlbumSuggester *)self sourceIdentifier];
      v23 = 138412546;
      v24 = sourceIdentifier2;
      v25 = 1024;
      v26 = [v11 count];
      _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_DEFAULT, "[PNWidgetAlbumSuggester] source: %@, eligibleAssets: %d", &v23, 0x12u);
    }

    v16 = [(PNWidgetAlbumSuggester *)self _makeSuggestionsFromAssets:v11 numberOfSuggestions:suggestions date:dateCopy];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sourceIdentifier3 = [(PNWidgetAlbumSuggester *)self sourceIdentifier];
      v23 = 138412290;
      v24 = sourceIdentifier3;
      _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_ERROR, "[PNWidgetAlbumSuggester] source: %@, no eligible assets", &v23, 0xCu);
    }

    v16 = MEMORY[0x1E695E0F0];
  }

LABEL_16:

  return v16;
}

- (PNWidgetAlbumSuggester)initWithAlbumLocalIdentifier:(id)identifier widgetIdentifier:(id)widgetIdentifier photoLibrary:(id)library
{
  v28[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  widgetIdentifierCopy = widgetIdentifier;
  libraryCopy = library;
  v27.receiver = self;
  v27.super_class = PNWidgetAlbumSuggester;
  v12 = [(PNWidgetAlbumSuggester *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_widgetIdentifier, widgetIdentifier);
    objc_storeStrong(&v13->_sourceIdentifier, identifier);
    objc_storeStrong(&v13->_photoLibrary, library);
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    v15 = MEMORY[0x1E6978650];
    sourceIdentifier = [(PNWidgetAlbumSuggester *)v13 sourceIdentifier];
    v28[0] = sourceIdentifier;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v18 = [v15 fetchAssetCollectionsWithLocalIdentifiers:v17 options:librarySpecificFetchOptions];
    firstObject = [v18 firstObject];
    assetCollection = v13->_assetCollection;
    v13->_assetCollection = firstObject;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v13->_assetCollection;
      v13->_assetCollection = 0;
    }

    if (v13->_assetCollection)
    {
      v13->_suggestionSubtype = [objc_opt_class() widgetSuggestionSubtypeForAssetCollectionType:{-[PHAssetCollection assetCollectionSubtype](v13->_assetCollection, "assetCollectionSubtype")}];
      v22 = MEMORY[0x1E6978650];
      sourceIdentifier2 = [(PNWidgetAlbumSuggester *)v13 sourceIdentifier];
      v24 = [v22 uuidFromLocalIdentifier:sourceIdentifier2];
      suggestionContext = v13->_suggestionContext;
      v13->_suggestionContext = v24;
    }
  }

  return v13;
}

+ (unsigned)widgetSuggestionSubtypeForAssetCollectionType:(int64_t)type
{
  if (type == 203)
  {
    v3 = 702;
  }

  else
  {
    v3 = 0;
  }

  if (type == 212)
  {
    v4 = 703;
  }

  else
  {
    v4 = v3;
  }

  if (type == 2)
  {
    return 701;
  }

  else
  {
    return v4;
  }
}

@end