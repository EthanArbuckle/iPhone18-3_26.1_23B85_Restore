@interface PXWallpaperSmartAlbumDataSource
+ (BOOL)isAnySmartAlbumAvailableInPhotoLibrary:(id)a3;
+ (id)suggestionPredicateForSmartAlbumTypes:(unint64_t)a3;
- (BOOL)shouldIncludeCenterMediaWithPreviewAssets:(id)a3;
- (PHSuggestion)workQueue_centerSuggestion;
- (PXWallpaperSmartAlbumDataSource)initWithPhotoLibrary:(id)a3 changeObserver:(id)a4 registerForPhotoLibraryChanges:(BOOL)a5 centerMedia:(id)a6;
- (id)customPeopleSuggestions;
- (id)fetchAssetIfNeededForAssetUUID:(id)a3;
- (id)fetchShuffleSuggestionContainingAsset:(id)a3;
- (id)fetchSuggestionsForPersonLocalIdentifier:(id)a3;
- (void)fetchSuggestions;
- (void)photoLibraryDidChange:(id)a3;
- (void)setupPreviewAssets;
@end

@implementation PXWallpaperSmartAlbumDataSource

- (id)fetchShuffleSuggestionContainingAsset:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPassiveContentDataSourceBase *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v21[0] = v8;
  v9 = [MEMORY[0x1E6978AE8] predicateForAllShuffleWallpaperSuggestions];
  v21[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];
  [v6 setPredicate:v11];

  v12 = MEMORY[0x1E6978650];
  v20 = v4;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v14 = [v12 fetchAssetCollectionsContainingAssets:v13 withType:8 options:v6];
  v15 = [v14 firstObject];

  if (!v15)
  {
    v16 = PLWallpaperGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "[PXWallpaperSmartAlbumDataSource] Cannot find suggestion with asset: %@", buf, 0xCu);
    }
  }

  return v15;
}

- (id)fetchAssetIfNeededForAssetUUID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPassiveContentDataSourceBase *)self keyAssetBySuggestionUUID];
  v6 = [v5 allValues];
  v7 = [v6 copy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          v21 = v13;
          v22 = v8;
          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = MEMORY[0x1E6978630];
  v30 = v4;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v18 = [(PXPassiveContentDataSourceBase *)self photoLibrary];
  v19 = [v18 librarySpecificFetchOptions];
  v20 = [v16 fetchAssetsWithUUIDs:v17 options:v19];
  v21 = [v20 firstObject];

  if (!v21)
  {
    v22 = PLWallpaperGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_ERROR, "[PXWallpaperSmartAlbumDataSource] Missing Key Asset for CenterMedia %@", buf, 0xCu);
    }

    v21 = 0;
LABEL_14:
  }

  return v21;
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PXPassiveContentDataSourceBase *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PXWallpaperSmartAlbumDataSource_photoLibraryDidChange___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__PXWallpaperSmartAlbumDataSource_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) peopleSuggestions];
  v4 = [v2 changeDetailsForFetchResult:v3];

  if (v4)
  {
    v5 = [v4 fetchResultAfterChanges];
    [*(a1 + 40) setPeopleSuggestions:v5];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) petSuggestions];
  v9 = [v7 changeDetailsForFetchResult:v8];

  if (v9)
  {
    v10 = [v9 fetchResultAfterChanges];
    [*(a1 + 40) setPetSuggestions:v10];

    v6 = 1;
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) landscapeSuggestions];
  v14 = [v11 changeDetailsForFetchResult:v12];

  if (v14)
  {
    v13 = [v14 fetchResultAfterChanges];
    [*(a1 + 40) setLandscapeSuggestions:v13];
  }

  else if (!v6)
  {
    goto LABEL_10;
  }

  [*(a1 + 40) setupPreviewAssets];
LABEL_10:
}

- (id)customPeopleSuggestions
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(PXPassiveContentDataSourceBase *)self peopleLocalIdentifiers];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [(PXPassiveContentDataSourceBase *)self personSuggestionsByPersonLocalIdentifier];
        v12 = [v11 objectForKeyedSubscript:v10];

        if ([v12 count])
        {
          v13 = objc_alloc(MEMORY[0x1E695DF70]);
          v14 = [v12 fetchedObjects];
          v15 = [v13 initWithArray:v14];

          [v4 addObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  do
  {
    v17 = [v4 copy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * j);
          v24 = [v23 firstObject];
          if (v24)
          {
            [v16 addObject:v24];
            [v23 removeObject:v24];
          }

          if (![v23 count])
          {
            [v4 removeObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v20);
    }

    v25 = [v4 count];
  }

  while (v25);

  return v16;
}

- (PHSuggestion)workQueue_centerSuggestion
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PXPassiveContentDataSourceBase *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PXWallpaperSmartAlbumDataSource *)self centerMedia];

  if (v4)
  {
    workQueue_centerSuggestion = self->_workQueue_centerSuggestion;
    if (!workQueue_centerSuggestion)
    {
      v6 = [(PXPassiveContentDataSourceBase *)self photoLibrary];
      v7 = [v6 librarySpecificFetchOptions];

      v8 = MEMORY[0x1E696AE18];
      v9 = [(PXWallpaperSmartAlbumDataSource *)self centerMedia];
      v10 = [v9 suggestionUUID];
      v11 = [v8 predicateWithFormat:@"%K = %@", @"uuid", v10];
      [v7 setPredicate:v11];

      [v7 setFetchLimit:1];
      v12 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v7];
      v13 = [v12 firstObject];
      v14 = self->_workQueue_centerSuggestion;
      self->_workQueue_centerSuggestion = v13;

      if (!self->_workQueue_centerSuggestion)
      {
        v15 = PLWallpaperGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [(PXWallpaperSmartAlbumDataSource *)self centerMedia];
          *buf = 138412290;
          v20 = v16;
          _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "[PXWallpaperSmartAlbumDataSource] Cannot find suggestion for centerMedia %@", buf, 0xCu);
        }
      }

      workQueue_centerSuggestion = self->_workQueue_centerSuggestion;
    }

    v17 = workQueue_centerSuggestion;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)shouldIncludeCenterMediaWithPreviewAssets:(id)a3
{
  v4 = a3;
  v5 = [(PXWallpaperSmartAlbumDataSource *)self centerMedia];
  if (v5)
  {
    v5;
    PXExists();
  }

  return 0;
}

uint64_t __77__PXWallpaperSmartAlbumDataSource_shouldIncludeCenterMediaWithPreviewAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) assetUUID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)setupPreviewAssets
{
  v3 = [(PXPassiveContentDataSourceBase *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PXWallpaperSmartAlbumDataSource_setupPreviewAssets__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

void __53__PXWallpaperSmartAlbumDataSource_setupPreviewAssets__block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  spid = v3;
  v43 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SetupPreviewAssets", "", buf, 2u);
  }

  v42 = v5;

  info = 0;
  mach_timebase_info(&info);
  v40 = mach_absolute_time();
  v6 = [*(a1 + 32) selectedTypes];
  v7 = [*(a1 + 32) combineSuggestionsForSelectedTypes:v6 maxCount:*MEMORY[0x1E69C1728]];
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *buf = 0;
  v58 = buf;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__118735;
  v61 = __Block_byref_object_dispose__118736;
  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__118735;
  v55 = __Block_byref_object_dispose__118736;
  v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PXWallpaperSmartAlbumDataSource_setupPreviewAssets__block_invoke_278;
  aBlock[3] = &unk_1E773A6F8;
  aBlock[4] = buf;
  aBlock[5] = &v51;
  v8 = _Block_copy(aBlock);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v46 objects:v68 count:16];
  if (v9)
  {
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = [*(a1 + 32) keyAssetBySuggestionUUID];
        v14 = [v12 uuid];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (v15)
        {
          [v45 addObject:v15];
          v8[2](v8, v12, v15);
        }

        else
        {
          v16 = PLWallpaperGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v12 uuid];
            *v64 = 138412290;
            v65 = v17;
            _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "[PXWallpaperSmartAlbumDataSource] Missing Key Asset for Suggestion %@", v64, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v46 objects:v68 count:16];
    }

    while (v9);
  }

  v18 = [*(a1 + 32) centerMedia];
  v19 = PLWallpaperGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v64 = 138412290;
    v65 = v18;
    _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_INFO, "[PXWallpaperSmartAlbumDataSource] CenterMedia %@", v64, 0xCu);
  }

  if ([*(a1 + 32) shouldIncludeCenterMediaWithPreviewAssets:v45])
  {
    v20 = *(a1 + 32);
    v21 = [v18 assetUUID];
    v22 = [v20 fetchAssetIfNeededForAssetUUID:v21];

    if (!v22)
    {
      v23 = PLWallpaperGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v64 = 138412290;
        v65 = v18;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "[PXWallpaperSmartAlbumDataSource] Cannot find asset for centerMedia %@", v64, 0xCu);
      }

      goto LABEL_34;
    }

    v23 = [*(a1 + 32) fetchShuffleSuggestionContainingAsset:v22];
    if (v23)
    {
      v8[2](v8, v23, v22);
      [v45 removeObject:v22];
      v24 = PLWallpaperGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v45 count];
        *v64 = 67109120;
        LODWORD(v65) = v25;
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_INFO, "[PXWallpaperSmartAlbumDataSource] %d previewAssets before inserting", v64, 8u);
      }

      if ([v45 count] <= 5)
      {
        v26 = [v45 count] >> 1;
      }

      else
      {
        v26 = 3;
      }

      [v45 insertObject:v22 atIndex:v26];
      v27 = PLWallpaperGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *v64 = 138412546;
      v65 = v18;
      v66 = 1024;
      LODWORD(v67) = v26;
      v28 = "[PXWallpaperSmartAlbumDataSource] Setting CenterMedia %@ at index %d";
      v29 = v27;
      v30 = OS_LOG_TYPE_INFO;
      v31 = 18;
    }

    else
    {
      v27 = PLWallpaperGetLog();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }

      *v64 = 138412290;
      v65 = v18;
      v28 = "[PXWallpaperSmartAlbumDataSource] Cannot find suggestion for centerMedia %@";
      v29 = v27;
      v30 = OS_LOG_TYPE_ERROR;
      v31 = 12;
    }

    _os_log_impl(&dword_1A3C1C000, v29, v30, v28, v64, v31);
    goto LABEL_33;
  }

LABEL_35:
  v32 = [v45 copy];
  [*(a1 + 32) setPreviewAssets:v32];

  v33 = [*(v58 + 5) copy];
  [*(a1 + 32) setClassificationByPreviewAssetUUID:v33];

  v34 = [v52[5] copy];
  [*(a1 + 32) setShuffleSuggestionByKeyAssetUUID:v34];

  [*(a1 + 32) notifyPreviewAssetsDidChange];
  v35 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v38 = v42;
  v39 = v38;
  if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *v64 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v39, OS_SIGNPOST_INTERVAL_END, spid, "SetupPreviewAssets", "", v64, 2u);
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *v64 = 136315394;
    v65 = "SetupPreviewAssets";
    v66 = 2048;
    v67 = ((((v35 - v40) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1A3C1C000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v64, 0x16u);
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(buf, 8);
}

void __53__PXWallpaperSmartAlbumDataSource_setupPreviewAssets__block_invoke_278(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69C15B0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 posterClassificationForSuggestionSubtype:{objc_msgSend(v7, "subtype")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v10 = *(*(*(a1 + 32) + 8) + 40);
  v11 = [v6 uuid];
  [v10 setObject:v9 forKeyedSubscript:v11];

  v12 = *(*(*(a1 + 40) + 8) + 40);
  v13 = [v6 uuid];

  [v12 setObject:v7 forKeyedSubscript:v13];
}

- (id)fetchSuggestionsForPersonLocalIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXWallpaperSmartAlbumDataSource;
  v3 = [(PXPassiveContentDataSourceBase *)&v6 fetchSuggestionsForPersonLocalIdentifier:a3];
  v4 = [MEMORY[0x1E69C15B0] randomizedSuggestionsFromSuggestions:v3 limit:*MEMORY[0x1E69C1728]];

  return v4;
}

- (void)fetchSuggestions
{
  v3 = objc_opt_class();
  v4 = [(PXPassiveContentDataSourceBase *)self photoLibrary];
  v14 = [v3 baseSuggestionFetchOptionsForPhotoLibrary:v4];

  v5 = [objc_opt_class() fetchSuggestionsWithSubtype:652 options:v14];
  v6 = *MEMORY[0x1E69C1728];
  v7 = [MEMORY[0x1E69C15B0] randomizedSuggestionsFromSuggestions:v5 limit:*MEMORY[0x1E69C1728]];
  [(PXPassiveContentDataSourceBase *)self setPeopleSuggestions:v7];

  v8 = [objc_opt_class() fetchSuggestionsWithSubtype:653 options:v14];
  v9 = [MEMORY[0x1E69C15B0] randomizedSuggestionsFromSuggestions:v8 limit:v6];
  [(PXPassiveContentDataSourceBase *)self setPetSuggestions:v9];

  v10 = [objc_opt_class() fetchSuggestionsWithSubtype:654 options:v14];
  v11 = [MEMORY[0x1E69C15B0] randomizedSuggestionsFromSuggestions:v10 limit:v6];
  [(PXPassiveContentDataSourceBase *)self setLandscapeSuggestions:v11];

  v12 = [objc_opt_class() fetchSuggestionsWithSubtype:655 options:v14];
  v13 = [MEMORY[0x1E69C15B0] randomizedSuggestionsFromSuggestions:v12 limit:v6];
  [(PXPassiveContentDataSourceBase *)self setCityscapeSuggestions:v13];
}

- (PXWallpaperSmartAlbumDataSource)initWithPhotoLibrary:(id)a3 changeObserver:(id)a4 registerForPhotoLibraryChanges:(BOOL)a5 centerMedia:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PXWallpaperSmartAlbumDataSource;
  v12 = [(PXPassiveContentDataSourceBase *)&v15 initWithPhotoLibrary:v10 changeObserver:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_centerMedia, a6);
    if (v7)
    {
      [v10 registerChangeObserver:v13];
    }
  }

  return v13;
}

+ (BOOL)isAnySmartAlbumAvailableInPhotoLibrary:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() baseSuggestionFetchOptionsForPhotoLibrary:v3];

  [v4 setFetchLimit:1];
  [v4 setShouldPrefetchCount:1];
  v5 = MEMORY[0x1E696AB28];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v12[0] = v6;
  v7 = [MEMORY[0x1E6978AE8] predicateForAllShuffleWallpaperSuggestions];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v5 andPredicateWithSubpredicates:v8];
  [v4 setInternalPredicate:v9];

  v10 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v4];
  LOBYTE(v9) = [v10 count] != 0;

  return v9;
}

+ (id)suggestionPredicateForSmartAlbumTypes:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3)
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"subtype", 652];
    [v4 addObject:v8];

    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"subtype", 653];
  [v4 addObject:v9];

  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"subtype", 654];
  [v4 addObject:v10];

  if ((v3 & 8) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"subtype", 655];
    [v4 addObject:v5];
  }

LABEL_6:
  v6 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];

  return v6;
}

@end