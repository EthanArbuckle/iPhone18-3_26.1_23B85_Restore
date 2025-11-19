@interface PNWidgetAlbumSuggester
+ (unsigned)widgetSuggestionSubtypeForAssetCollectionType:(int64_t)a3;
- (PHFetchResult)suggestions;
- (PNWidgetAlbumSuggester)initWithAlbumLocalIdentifier:(id)a3 widgetIdentifier:(id)a4 photoLibrary:(id)a5;
- (id)_assetFetchOptions;
- (id)_assetIndexesForDate:(id)a3 count:(unint64_t)a4 from:(id)a5;
- (id)_makeSuggestionsFromAssets:(id)a3 numberOfSuggestions:(unint64_t)a4 date:(id)a5;
- (id)_mutableAssetIndexesForAssetCount:(unint64_t)a3;
- (id)_predicateForFeaturedSuggestions;
- (id)fetchSuggestionsWithOptions:(id)a3;
- (id)updatedSuggestionLocalIdentifiersForDate:(id)a3 numberOfSuggestions:(unint64_t)a4;
- (unint64_t)removeSuggestionsNotRelevantForDate:(id)a3;
- (void)_shuffleAssetIndexes:(id)a3;
@end

@implementation PNWidgetAlbumSuggester

- (PHFetchResult)suggestions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [(PNWidgetAlbumSuggester *)self photoLibrary];
  v4 = [v3 librarySpecificFetchOptions];

  [v4 setWantsIncrementalChangeDetails:0];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v11[0] = v5;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v4 setSortDescriptors:v7];

  v8 = [(PNWidgetAlbumSuggester *)self _predicateForFeaturedSuggestions];
  [v4 setPredicate:v8];

  v9 = [(PNWidgetAlbumSuggester *)self fetchSuggestionsWithOptions:v4];

  return v9;
}

- (id)fetchSuggestionsWithOptions:(id)a3
{
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v21 = v4;
  v5 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 objectAtIndex:v7];
      v10 = [v9 featuresProperties];
      v11 = [v10 objectForKeyedSubscript:@"widgetIdentifier"];

      v12 = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
      v13 = [v12 isEqualToString:v11];

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
  v15 = [(PNWidgetAlbumSuggester *)self photoLibrary];
  v16 = [v5 fetchType];
  v17 = [v5 fetchPropertySets];
  v18 = [v14 initWithObjects:v6 photoLibrary:v15 fetchType:v16 fetchPropertySets:v17 identifier:0 registerIfNeeded:0];

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
  v8 = [(PNWidgetAlbumSuggester *)self suggestionContext];
  v9 = [v7 predicateWithFormat:@"%K == %@", @"context", v8];

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

- (unint64_t)removeSuggestionsNotRelevantForDate:(id)a3
{
  v49[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v11 = [(PNWidgetAlbumSuggester *)self photoLibrary];
  v12 = [v11 librarySpecificFetchOptions];

  [v12 setWantsIncrementalChangeDetails:0];
  v13 = [(PNWidgetAlbumSuggester *)self _predicateForFeaturedSuggestions];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"relevantUntilDate < %@", v4];

  v15 = MEMORY[0x1E696AB28];
  v49[0] = v13;
  v49[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];
  [v12 setPredicate:v17];

  v18 = [(PNWidgetAlbumSuggester *)self fetchSuggestionsWithOptions:v12];
  if ([v18 count])
  {
    v38 = v10;
    v39 = v13;
    v40 = v6;
    v19 = [(PNWidgetAlbumSuggester *)self photoLibrary];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __62__PNWidgetAlbumSuggester_removeSuggestionsNotRelevantForDate___block_invoke;
    v42[3] = &unk_1E82A2730;
    v20 = v18;
    v43 = v20;
    v41 = 0;
    v21 = [v19 performChangesAndWait:v42 error:&v41];
    v22 = v41;

    v23 = PLMemoriesGetLog();
    v24 = v23;
    if (v21)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
        v26 = [v20 count];
        *buf = 138412546;
        v46 = v25;
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
      v25 = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
      *buf = 138412546;
      v46 = v25;
      v47 = 2112;
      v48 = *&v22;
      v27 = "[PNWidgetAlbumSuggester] failed to remove suggestions for widgetIdentifier %@, error: %@";
      v28 = v24;
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 22;
      goto LABEL_10;
    }

    v13 = v39;
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
  v2 = [(PNWidgetAlbumSuggester *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v15[0] = v4;
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v15[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v3 setSortDescriptors:v6];

  [v3 setIncludeGuestAssets:0];
  [v3 setWantsIncrementalChangeDetails:0];
  v7 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d && %K != %d", @"playbackStyle", 4, @"playbackStyle", 5];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K & %d) == 0", @"kindSubtype", 1];
  v10 = MEMORY[0x1E696AB28];
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v3 setInternalPredicate:v12];

  return v3;
}

- (id)_makeSuggestionsFromAssets:(id)a3 numberOfSuggestions:(unint64_t)a4 date:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
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
  v14 = [v8 count];
  if (v14 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v14;
  }

  v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
  v16 = -[PNWidgetAlbumSuggester _mutableAssetIndexesForAssetCount:](self, "_mutableAssetIndexesForAssetCount:", [v8 count]);
  [(PNWidgetAlbumSuggester *)self _shuffleAssetIndexes:v16];
  v50 = v9;
  v48 = v16;
  v17 = [(PNWidgetAlbumSuggester *)self _assetIndexesForDate:v9 count:a4 from:v16];
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

        v24 = [v8 objectAtIndex:{objc_msgSend(*(*(&v59 + 1) + 8 * i), "integerValue", spid)}];
        [v18 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v21);
  }

  v25 = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
  v26 = [(PNWidgetAlbumSuggester *)self suggestionContext];
  v27 = [(PNWidgetAlbumSuggester *)self suggestionSubtype];
  v28 = [(PNWidgetAlbumSuggester *)self photoLibrary];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __78__PNWidgetAlbumSuggester__makeSuggestionsFromAssets_numberOfSuggestions_date___block_invoke;
  v53[3] = &unk_1E82A2450;
  v29 = v18;
  v54 = v29;
  v30 = v25;
  v55 = v30;
  v58 = v27;
  v31 = v26;
  v56 = v31;
  v32 = v47;
  v57 = v32;
  v52 = 0;
  LOBYTE(v26) = [v28 performChangesAndWait:v53 error:&v52];
  v33 = COERCE_DOUBLE(v52);

  if (v26)
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
      v42 = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
      *buf = 138412546;
      v65 = v42;
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

- (id)_assetIndexesForDate:(id)a3 count:(unint64_t)a4 from:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    if (v10 < a4)
    {
      a4 = v10;
    }

    [v8 timeIntervalSinceReferenceDate];
    v13 = a4 * (v12 / 86400.0) % v11;
    v14 = PLMemoriesGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
      v21 = 138413314;
      v22 = v8;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v11;
      v27 = 1024;
      v28 = a4;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_DEFAULT, "[PNWidgetAlbumSuggester] selected assets for date:%@ offset: %d totalAssets: %d numberToChoose: %d widgetIdentifier: %@", &v21, 0x28u);
    }

    if (v13 <= v11 - a4)
    {
      v19 = [v9 subarrayWithRange:{v13, a4}];
    }

    else
    {
      v16 = v11 - v13;
      v17 = [v9 subarrayWithRange:{v13, v16}];
      v18 = [v9 subarrayWithRange:{0, a4 - v16}];
      v19 = [v17 arrayByAddingObjectsFromArray:v18];
    }
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

- (void)_shuffleAssetIndexes:(id)a3
{
  v4 = MEMORY[0x1E69C0838];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(PNWidgetAlbumSuggester *)self widgetIdentifier];
  v8 = [v6 initWithSeed:{objc_msgSend(v7, "hash")}];

  PFMutableArrayShuffleWithRandomNumberGenerator();
}

- (id)_mutableAssetIndexesForAssetCount:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      [v4 addObject:v6];

      ++v5;
    }

    while (a3 != v5);
  }

  return v4;
}

- (id)updatedSuggestionLocalIdentifiersForDate:(id)a3 numberOfSuggestions:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PNWidgetAlbumSuggester *)self assetCollection];

  if (!v7)
  {
    v11 = PLMemoriesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = [(PNWidgetAlbumSuggester *)self sourceIdentifier];
      v23 = 138412290;
      v24 = v17;
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
      v19 = [(PNWidgetAlbumSuggester *)self assetCollection];
      v20 = [v18 descriptionForSubtype:{objc_msgSend(v19, "assetCollectionSubtype")}];
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&dword_1C6F5C000, v11, OS_LOG_TYPE_ERROR, "[PNWidgetAlbumSuggester] album subtype not supported found: %@", &v23, 0xCu);
    }

LABEL_11:
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  v8 = [(PNWidgetAlbumSuggester *)self _assetFetchOptions];
  v9 = MEMORY[0x1E6978630];
  v10 = [(PNWidgetAlbumSuggester *)self assetCollection];
  v11 = [v9 fetchAssetsInAssetCollection:v10 options:v8];

  v12 = [v11 count];
  v13 = PLMemoriesGetLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(PNWidgetAlbumSuggester *)self sourceIdentifier];
      v23 = 138412546;
      v24 = v15;
      v25 = 1024;
      v26 = [v11 count];
      _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_DEFAULT, "[PNWidgetAlbumSuggester] source: %@, eligibleAssets: %d", &v23, 0x12u);
    }

    v16 = [(PNWidgetAlbumSuggester *)self _makeSuggestionsFromAssets:v11 numberOfSuggestions:a4 date:v6];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = [(PNWidgetAlbumSuggester *)self sourceIdentifier];
      v23 = 138412290;
      v24 = v21;
      _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_ERROR, "[PNWidgetAlbumSuggester] source: %@, no eligible assets", &v23, 0xCu);
    }

    v16 = MEMORY[0x1E695E0F0];
  }

LABEL_16:

  return v16;
}

- (PNWidgetAlbumSuggester)initWithAlbumLocalIdentifier:(id)a3 widgetIdentifier:(id)a4 photoLibrary:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = PNWidgetAlbumSuggester;
  v12 = [(PNWidgetAlbumSuggester *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_widgetIdentifier, a4);
    objc_storeStrong(&v13->_sourceIdentifier, a3);
    objc_storeStrong(&v13->_photoLibrary, a5);
    v14 = [v11 librarySpecificFetchOptions];
    [v14 setWantsIncrementalChangeDetails:0];
    v15 = MEMORY[0x1E6978650];
    v16 = [(PNWidgetAlbumSuggester *)v13 sourceIdentifier];
    v28[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v18 = [v15 fetchAssetCollectionsWithLocalIdentifiers:v17 options:v14];
    v19 = [v18 firstObject];
    assetCollection = v13->_assetCollection;
    v13->_assetCollection = v19;

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
      v23 = [(PNWidgetAlbumSuggester *)v13 sourceIdentifier];
      v24 = [v22 uuidFromLocalIdentifier:v23];
      suggestionContext = v13->_suggestionContext;
      v13->_suggestionContext = v24;
    }
  }

  return v13;
}

+ (unsigned)widgetSuggestionSubtypeForAssetCollectionType:(int64_t)a3
{
  if (a3 == 203)
  {
    v3 = 702;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 212)
  {
    v4 = 703;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 2)
  {
    return 701;
  }

  else
  {
    return v4;
  }
}

@end