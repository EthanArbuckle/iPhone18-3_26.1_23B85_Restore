@interface PXPassiveContentPeoplePickerDataSourceBase
- (PXPassiveContentPeoplePickerDataSourceBase)initWithPhotoLibrary:(id)a3;
- (id)peopleSuggestionSubtypes;
- (void)_fetchPeople;
- (void)_fetchPeopleWallpaperSuggestions;
- (void)addChangeObserver:(id)a3;
- (void)computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:(id)a3;
- (void)notifyChanges;
- (void)photoLibraryDidChange:(id)a3;
- (void)removeChangeObserver:(id)a3;
- (void)startBackgroundFetch;
@end

@implementation PXPassiveContentPeoplePickerDataSourceBase

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PXPassiveContentPeoplePickerDataSourceBase *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PXPassiveContentPeoplePickerDataSourceBase_photoLibraryDidChange___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __68__PXPassiveContentPeoplePickerDataSourceBase_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) peopleSuggestions];
  v4 = [v2 changeDetailsForFetchResult:v3];

  v5 = v4 != 0;
  if (v4)
  {
    v6 = [v4 fetchResultAfterChanges];
    [*(a1 + 40) setPeopleSuggestions:v6];
    [*(a1 + 40) _fetchPeople];
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) vipPersonsFetchResult];
  v9 = [v7 changeDetailsForFetchResult:v8];

  if (v9)
  {
    v10 = [v9 fetchResultAfterChanges];
    [*(a1 + 40) setVipPersonsFetchResult:v10];
    v11 = [*(a1 + 40) vipPersonsFetchResult];
    v12 = [v11 fetchedObjects];
    v13 = [v12 copy];
    [*(a1 + 40) setVipPersons:v13];

    v5 = 1;
  }

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) nonVIPPersonsFetchResult];
  v20 = [v14 changeDetailsForFetchResult:v15];

  if (v20)
  {
    v16 = [v20 fetchResultAfterChanges];
    [*(a1 + 40) setNonVIPPersonsFetchResult:v16];
    v17 = [*(a1 + 40) nonVIPPersonsFetchResult];
    v18 = [v17 fetchedObjects];
    v19 = [v18 copy];
    [*(a1 + 40) setNonVIPPersons:v19];
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  [*(a1 + 40) notifyChanges];
LABEL_9:
}

- (void)removeChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PXPassiveContentPeoplePickerDataSourceBase *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__PXPassiveContentPeoplePickerDataSourceBase_removeChangeObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__PXPassiveContentPeoplePickerDataSourceBase_removeChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeObservers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PXPassiveContentPeoplePickerDataSourceBase *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PXPassiveContentPeoplePickerDataSourceBase_addChangeObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__PXPassiveContentPeoplePickerDataSourceBase_addChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeObservers];
  [v2 addObject:*(a1 + 40)];
}

- (void)notifyChanges
{
  v3 = [(PXPassiveContentPeoplePickerDataSourceBase *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PXPassiveContentPeoplePickerDataSourceBase_notifyChanges__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__PXPassiveContentPeoplePickerDataSourceBase_notifyChanges__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) changeObservers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) passiveContentPeoplePickerDataSourceChanged:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_fetchPeople
{
  v3 = [(PXPassiveContentPeoplePickerDataSourceBase *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PXPassiveContentPeoplePickerDataSourceBase__fetchPeople__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__PXPassiveContentPeoplePickerDataSourceBase__fetchPeople__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "fetchPeople", "", buf, 2u);
  }

  spid = v3;

  info = 0;
  mach_timebase_info(&info);
  v23 = mach_absolute_time();
  v7 = [*(a1 + 32) userFeedbackCalculator];
  v8 = [v7 personUUIDsWithNegativeFeedback];

  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [MEMORY[0x1E6978980] localIdentifierWithUUID:{*(*(&v24 + 1) + 8 * v14), spid}];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v16 = PLWallpaperGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v30 = v10;
    _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_INFO, "[PXWallpaperSmartAlbumPeoplePickerDataSource] Avoid Person with negative feedback %{public}@", buf, 0xCu);
  }

  [*(a1 + 32) computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:v9];
  v17 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v20 = v5;
  v21 = v20;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v21, OS_SIGNPOST_INTERVAL_END, spid, "fetchPeople", "", buf, 2u);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "fetchPeople";
    v31 = 2048;
    v32 = ((((v17 - v23) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (void)_fetchPeopleWallpaperSuggestions
{
  v4 = [(PXPassiveContentPeoplePickerDataSourceBase *)self workQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__PXPassiveContentPeoplePickerDataSourceBase__fetchPeopleWallpaperSuggestions__block_invoke;
  v5[3] = &unk_1E77498A0;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void __78__PXPassiveContentPeoplePickerDataSourceBase__fetchPeopleWallpaperSuggestions__block_invoke(uint64_t a1)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "FetchTopPeopleWallpaperSuggestions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v30 = mach_absolute_time();
  v6 = [*(a1 + 32) photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v37[0] = v9;
  v10 = MEMORY[0x1E696AE18];
  v11 = [*(a1 + 32) peopleSuggestionSubtypes];
  v12 = [v10 predicateWithFormat:@"%K IN %@", @"subtype", v11];
  v37[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v14 = [v8 andPredicateWithSubpredicates:v13];
  [v7 setPredicate:v14];

  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v36[0] = v15;
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v36[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [v7 setSortDescriptors:v17];

  v18 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v7];
  v19 = [*(a1 + 32) requiredFeature];
  if (v19)
  {
    v20 = v19;
    if ((v19 ^ (v19 - 1)) <= v19 - 1)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXPassiveContentPeoplePickerDataSourceBase.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"__builtin_popcountll(requiredFeature) == 1"}];
    }

    v21 = [MEMORY[0x1E69C15B0] filterSuggestions:v18 includingSingleFeature:v20];

    v18 = v21;
  }

  objc_storeStrong((*(a1 + 32) + 64), v18);
  v22 = PLWallpaperGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [v18 count];
    *buf = 134217984;
    v33 = v23;
    _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_INFO, "[PXWallpaperSmartAlbumPeoplePickerDataSource] found %lu TopPeople/People suggestions", buf, 0xCu);
  }

  v24 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v27 = v5;
  v28 = v27;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v28, OS_SIGNPOST_INTERVAL_END, v3, "FetchTopPeopleWallpaperSuggestions", "", buf, 2u);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "FetchTopPeopleWallpaperSuggestions";
    v34 = 2048;
    v35 = ((((v24 - v30) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (void)computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXPassiveContentPeoplePickerDataSourceBase.m" lineNumber:53 description:{@"Method %s is a responsibility of subclass %@", "-[PXPassiveContentPeoplePickerDataSourceBase computeAndCachePersonsWithPersonLocalIdentifierWithNegativeFeedback:]", v8}];

  abort();
}

- (id)peopleSuggestionSubtypes
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXPassiveContentPeoplePickerDataSourceBase.m" lineNumber:49 description:{@"Method %s is a responsibility of subclass %@", "-[PXPassiveContentPeoplePickerDataSourceBase peopleSuggestionSubtypes]", v6}];

  abort();
}

- (void)startBackgroundFetch
{
  [(PXPassiveContentPeoplePickerDataSourceBase *)self _fetchPeopleWallpaperSuggestions];
  [(PXPassiveContentPeoplePickerDataSourceBase *)self _fetchPeople];

  [(PXPassiveContentPeoplePickerDataSourceBase *)self notifyChanges];
}

- (PXPassiveContentPeoplePickerDataSourceBase)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPassiveContentPeoplePickerDataSourceBase;
  v6 = [(PXPassiveContentPeoplePickerDataSourceBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    [v5 registerChangeObserver:v7];
    px_dispatch_queue_create_serial();
  }

  return 0;
}

@end