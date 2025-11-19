@interface PXPassiveContentDataSourceBase
+ (id)baseSuggestionFetchOptionsForPhotoLibrary:(id)a3;
+ (id)fallbackSystemImageNameForSingleSmartAlbumType:(unint64_t)a3;
+ (id)fetchSuggestionsWithSubtype:(unsigned __int16)a3 options:(id)a4;
+ (id)fetchSuggestionsWithSubtypes:(id)a3 options:(id)a4;
+ (id)localizedTitleForSingleSmartAlbumType:(unint64_t)a3;
+ (id)suggestionPredicateForSmartAlbumTypes:(unint64_t)a3;
+ (id)systemImageNameForSingleSmartAlbumType:(unint64_t)a3;
+ (unint64_t)supportedTypes;
- (PXPassiveContentDataSourceBase)initWithPhotoLibrary:(id)a3 changeObserver:(id)a4;
- (id)combineSuggestionsForSelectedTypes:(unint64_t)a3 maxCount:(int64_t)a4;
- (id)customPeopleSuggestions;
- (id)fetchSuggestionsForPersonLocalIdentifier:(id)a3;
- (id)keyAssetFetchOptions;
- (void)addChangeObserver:(id)a3;
- (void)cacheKeyAssetForSuggestionOids:(id)a3;
- (void)cacheSuggestionsAndKeyAssetsForPersons:(id)a3;
- (void)fetchSuggestions;
- (void)fetchSuggestionsAndAssets;
- (void)notifyAvailableTypeDidChange;
- (void)notifyPreviewAssetsDidChange;
- (void)removeChangeObserver:(id)a3;
- (void)setPeopleLocalIdentifiers:(id)a3;
- (void)setSelectedTypes:(unint64_t)a3;
- (void)setupPreviewAssets;
@end

@implementation PXPassiveContentDataSourceBase

- (void)removeChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PXPassiveContentDataSourceBase *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PXPassiveContentDataSourceBase_removeChangeObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__PXPassiveContentDataSourceBase_removeChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeObservers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PXPassiveContentDataSourceBase *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PXPassiveContentDataSourceBase_addChangeObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__PXPassiveContentDataSourceBase_addChangeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeObservers];
  [v2 addObject:*(a1 + 40)];
}

- (void)notifyAvailableTypeDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PXPassiveContentDataSourceBase *)self changeObservers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) passiveContentDataSourceAvailableTypesDidChange:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)notifyPreviewAssetsDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PXPassiveContentDataSourceBase *)self changeObservers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) passiveContentDataSourcePreviewAssetsDidChange:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)combineSuggestionsForSelectedTypes:(unint64_t)a3 maxCount:(int64_t)a4
{
  v5 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v7 = [(PXPassiveContentDataSourceBase *)self petSuggestions];
  v8 = [v7 count];

  v9 = [(PXPassiveContentDataSourceBase *)self landscapeSuggestions];
  v10 = [v9 count];

  v11 = [(PXPassiveContentDataSourceBase *)self cityscapeSuggestions];
  v12 = [v11 count];

  v13 = [(PXPassiveContentDataSourceBase *)self featuredSuggestions];
  v14 = [v13 count];

  v37 = [(PXPassiveContentDataSourceBase *)self customPeopleSuggestions];
  v15 = [v37 count];
  v16 = v15;
  v44 = v10;
  v45 = v8;
  v43 = v12;
  if (v10 + v8 + v12 + v14 + v15 >= a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = v10 + v8 + v12 + v14 + v15;
  }

  if (v5)
  {
    v19 = [(PXPassiveContentDataSourceBase *)self peopleLocalIdentifiers];
    v18 = [v19 count] != 0;
  }

  else
  {
    v18 = 0;
  }

  v20 = PLWallpaperGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = PFPosterShuffleSmartAlbumsDescription();
    *buf = 138412290;
    v47 = v21;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_INFO, "[PXPassiveContentDataSourceBase] Selecting types: %@", buf, 0xCu);
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v17 < 1)
  {
    v41 = 0;
    v42 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v23 = 0;
    v41 = 0;
    v42 = 0;
    v38 = 0;
    do
    {
      v24 = v23 < v16 && v18;
      if (v24 && [v22 count] < v17)
      {
        v25 = [v37 objectAtIndex:v23];
        [v22 addObject:v25];

        ++v38;
      }

      if ((v5 & 2) != 0 && v23 < v45 && [v22 count] < v17)
      {
        v26 = [(PXPassiveContentDataSourceBase *)self petSuggestions];
        v27 = [v26 objectAtIndex:v23];
        [v22 addObject:v27];

        ++v39;
      }

      if ((v5 & 4) != 0 && v23 < v44 && [v22 count] < v17)
      {
        v28 = [(PXPassiveContentDataSourceBase *)self landscapeSuggestions];
        v29 = [v28 objectAtIndex:v23];
        [v22 addObject:v29];

        ++v40;
      }

      if ((v5 & 8) != 0 && v23 < v43 && [v22 count] < v17)
      {
        v30 = [(PXPassiveContentDataSourceBase *)self cityscapeSuggestions];
        v31 = [v30 objectAtIndex:v23];
        [v22 addObject:v31];

        ++v41;
      }

      if ((v5 & 0x10) != 0 && v23 < v14 && [v22 count] < v17)
      {
        v32 = [(PXPassiveContentDataSourceBase *)self featuredSuggestions];
        v33 = [v32 objectAtIndex:v23];
        [v22 addObject:v33];

        ++v42;
      }

      ++v23;
    }

    while (v17 != v23);
  }

  v34 = PLWallpaperGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v22 count];
    *buf = 134219264;
    v47 = v38;
    v48 = 2048;
    v49 = v39;
    v50 = 2048;
    v51 = v40;
    v52 = 2048;
    v53 = v41;
    v54 = 2048;
    v55 = v42;
    v56 = 2048;
    v57 = v35;
    _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_INFO, "[PXPassiveContentDataSourceBase] Selected %lu people, %lu pet, %lu landscape, %lu cityscape, %lu featured. Total: %lu", buf, 0x3Eu);
  }

  return v22;
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

- (void)cacheKeyAssetForSuggestionOids:(id)a3
{
  v10 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x1E69788E0]);
  v6 = [(PXPassiveContentDataSourceBase *)self photoLibrary];
  v7 = [v5 initWithOids:v10 photoLibrary:v6 fetchType:*MEMORY[0x1E6978DE0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v8 = [(PXPassiveContentDataSourceBase *)self keyAssetFetchOptions];
  v9 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:v7 options:v8];
  [(NSMutableDictionary *)self->_keyAssetBySuggestionUUID addEntriesFromDictionary:v9];

  objc_autoreleasePoolPop(v4);
}

- (id)keyAssetFetchOptions
{
  v2 = [(PXPassiveContentDataSourceBase *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setIncludeGuestAssets:1];

  return v3;
}

- (id)fetchSuggestionsForPersonLocalIdentifier:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(PXPassiveContentDataSourceBase *)self photoLibrary];
  v7 = [v5 baseSuggestionFetchOptionsForPhotoLibrary:v6];

  v8 = MEMORY[0x1E696AB28];
  v9 = [v7 internalPredicate];
  v10 = [objc_opt_class() suggestionPredicateForSmartAlbumTypes:1];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"suggestionContext", v4, v9, v10];

  v16[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v13 = [v8 andPredicateWithSubpredicates:v12];
  [v7 setInternalPredicate:v13];

  v14 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v7];

  return v14;
}

- (void)cacheSuggestionsAndKeyAssetsForPersons:(id)a3
{
  v4 = a3;
  v5 = [(PXPassiveContentDataSourceBase *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PXPassiveContentDataSourceBase_cacheSuggestionsAndKeyAssetsForPersons___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __73__PXPassiveContentDataSourceBase_cacheSuggestionsAndKeyAssetsForPersons___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [*(a1 + 40) personSuggestionsByPersonLocalIdentifier];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (!v10)
        {
          v11 = [*(a1 + 40) fetchSuggestionsForPersonLocalIdentifier:v8];
          [*(*(a1 + 40) + 16) setObject:v11 forKeyedSubscript:v8];
          v12 = [v11 fetchedObjectIDs];
          [v2 addObjectsFromArray:v12];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) cacheKeyAssetForSuggestionOids:v2];
}

- (void)setupPreviewAssets
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXPassiveContentDataSourceBase.m" lineNumber:132 description:{@"Method %s is a responsibility of subclass %@", "-[PXPassiveContentDataSourceBase setupPreviewAssets]", v6}];

  abort();
}

- (void)fetchSuggestions
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXPassiveContentDataSourceBase.m" lineNumber:128 description:{@"Method %s is a responsibility of subclass %@", "-[PXPassiveContentDataSourceBase fetchSuggestions]", v6}];

  abort();
}

- (void)setPeopleLocalIdentifiers:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSArray *)self->_peopleLocalIdentifiers isEqualToArray:v4])
  {
    v5 = [v4 copy];
    peopleLocalIdentifiers = self->_peopleLocalIdentifiers;
    self->_peopleLocalIdentifiers = v5;

    if ([(NSArray *)self->_peopleLocalIdentifiers count])
    {
      [(PXPassiveContentDataSourceBase *)self cacheSuggestionsAndKeyAssetsForPersons:self->_peopleLocalIdentifiers];
    }

    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_peopleLocalIdentifiers;
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "[PXPassiveContentDataSourceBase] Set custom people: %@", &v9, 0xCu);
    }

    if (([(PXPassiveContentDataSourceBase *)self selectedTypes]& 1) != 0)
    {
      [(PXPassiveContentDataSourceBase *)self setupPreviewAssets];
    }
  }
}

- (void)setSelectedTypes:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_selectedTypes != a3)
  {
    self->_selectedTypes = a3;
    v4 = PLWallpaperGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = PFPosterShuffleSmartAlbumsDescription();
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_INFO, "[PXPassiveContentDataSourceBase] Set selected types: %@", &v7, 0xCu);
    }

    if ((self->_selectedTypes & 1) == 0 || ([(PXPassiveContentDataSourceBase *)self peopleLocalIdentifiers], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      [(PXPassiveContentDataSourceBase *)self setupPreviewAssets];
    }
  }
}

- (void)fetchSuggestionsAndAssets
{
  v3 = [(PXPassiveContentDataSourceBase *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PXPassiveContentDataSourceBase_fetchSuggestionsAndAssets__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__PXPassiveContentDataSourceBase_fetchSuggestionsAndAssets__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "FetchSuggestionsAndAssets", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v6 = mach_absolute_time();
  [*(a1 + 32) fetchSuggestions];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [*(a1 + 32) peopleSuggestions];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [*(a1 + 32) peopleSuggestions];
    v11 = [v10 fetchedObjectIDs];
    [v7 addObjectsFromArray:v11];

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [*(a1 + 32) petSuggestions];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [*(a1 + 32) petSuggestions];
    v16 = [v15 fetchedObjectIDs];
    [v7 addObjectsFromArray:v16];

    v12 |= 2uLL;
  }

  v17 = [*(a1 + 32) landscapeSuggestions];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [*(a1 + 32) landscapeSuggestions];
    v20 = [v19 fetchedObjectIDs];
    [v7 addObjectsFromArray:v20];

    v12 |= 4uLL;
  }

  v21 = [*(a1 + 32) cityscapeSuggestions];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [*(a1 + 32) cityscapeSuggestions];
    v24 = [v23 fetchedObjectIDs];
    [v7 addObjectsFromArray:v24];

    v12 |= 8uLL;
  }

  v25 = [*(a1 + 32) featuredSuggestions];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [*(a1 + 32) featuredSuggestions];
    v28 = [v27 fetchedObjectIDs];
    [v7 addObjectsFromArray:v28];

    v12 |= 0x10uLL;
  }

  [*(a1 + 32) setAvailableTypes:v12];
  [*(a1 + 32) notifyAvailableTypeDidChange];
  v29 = PLWallpaperGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = PFPosterShuffleSmartAlbumsDescription();
    *buf = 138412290;
    v38 = v30;
    _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_INFO, "[PXPassiveContentDataSourceBase] Available types: %@", buf, 0xCu);
  }

  [*(a1 + 32) cacheKeyAssetForSuggestionOids:v7];
  v31 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v34 = v5;
  v35 = v34;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v35, OS_SIGNPOST_INTERVAL_END, v3, "FetchSuggestionsAndAssets", "", buf, 2u);
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v38 = "FetchSuggestionsAndAssets";
    v39 = 2048;
    v40 = ((((v31 - v6) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1A3C1C000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (PXPassiveContentDataSourceBase)initWithPhotoLibrary:(id)a3 changeObserver:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXPassiveContentDataSourceBase;
  v9 = [(PXPassiveContentDataSourceBase *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    v10->_selectedTypes = 0;
    px_dispatch_queue_create_serial();
  }

  return 0;
}

+ (id)localizedTitleForSingleSmartAlbumType:(unint64_t)a3
{
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4uLL:
        v3 = @"PXWallpaperPickerDataSourceModeLandscape";
        break;
      case 8uLL:
        v3 = @"PXWallpaperPickerDataSourceModeCityscape";
        break;
      case 0x10uLL:
        v3 = @"PXWallpaperPickerDataSourceModeFeatured";
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v3 = @"PXWallpaperPickerDataSourceModeTopPeople";
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v3 = @"PXWallpaperPickerDataSourceModePet";
LABEL_12:
    a1 = PXLocalizedStringFromTable(v3, @"PhotosUICore");
    goto LABEL_13;
  }

  v5 = a1;
  if (!a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:v5 file:@"PXPassiveContentDataSourceBase.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"type != PFPosterShuffleSmartAlbumsNone"}];

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:v5 file:@"PXPassiveContentDataSourceBase.m" lineNumber:378 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_13:

  return a1;
}

+ (id)fallbackSystemImageNameForSingleSmartAlbumType:(unint64_t)a3
{
  v4 = __ROR8__(a3, 1);
  result = @"person.circle.fill";
  if (v4 > 3)
  {
    v9 = @"star.circle.fill";
    if (v4 != 8)
    {
      v9 = @"person.circle.fill";
    }

    if (v4 == 4)
    {
      return @"building.2.crop.circle.fill";
    }

    else
    {
      return v9;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        return @"pawprint.circle.fill";
      case 2:
        return @"leaf.circle.fill";
      case 0:
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:a2 object:a1 file:@"PXPassiveContentDataSourceBase.m" lineNumber:357 description:{@"Invalid parameter not satisfying: %@", @"type != PFPosterShuffleSmartAlbumsNone"}];

        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:a2 object:a1 file:@"PXPassiveContentDataSourceBase.m" lineNumber:360 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  return result;
}

+ (id)systemImageNameForSingleSmartAlbumType:(unint64_t)a3
{
  v4 = __ROR8__(a3, 1);
  result = @"person.fill";
  if (v4 > 3)
  {
    v9 = @"star.fill";
    if (v4 != 8)
    {
      v9 = @"person.fill";
    }

    if (v4 == 4)
    {
      return @"building.fill";
    }

    else
    {
      return v9;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        return @"pawprint.fill";
      case 2:
        return @"leaf.fill";
      case 0:
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:a2 object:a1 file:@"PXPassiveContentDataSourceBase.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"type != PFPosterShuffleSmartAlbumsNone"}];

        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        [v8 handleFailureInMethod:a2 object:a1 file:@"PXPassiveContentDataSourceBase.m" lineNumber:342 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  return result;
}

+ (id)fetchSuggestionsWithSubtypes:(id)a3 options:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 copy];
  v7 = MEMORY[0x1E696AB28];
  v8 = [v6 internalPredicate];
  v33[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"subtype", v5];
  v33[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];
  [v6 setInternalPredicate:v11];

  v12 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v6];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v24 + 1) + 8 * i) unsignedShortValue];
        v19 = PHSuggestionStringWithSubtype();
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  v20 = [v13 componentsJoinedByString:{@", "}];
  v21 = PLWallpaperGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v12 count];
    *buf = 134218242;
    v29 = v22;
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "[PXPassiveContentDataSourceBase] found %lu %@", buf, 0x16u);
  }

  return v12;
}

+ (id)fetchSuggestionsWithSubtype:(unsigned __int16)a3 options:(id)a4
{
  v4 = a3;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithUnsignedShort:v4];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [a1 fetchSuggestionsWithSubtypes:v9 options:v7];

  return v10;
}

+ (id)baseSuggestionFetchOptionsForPhotoLibrary:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 librarySpecificFetchOptions];
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v7 = [v4 andPredicateWithSubpredicates:v6];
  [v3 setInternalPredicate:v7];

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v12[0] = v8;
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v3 setSortDescriptors:v10];

  return v3;
}

+ (id)suggestionPredicateForSmartAlbumTypes:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:a1 file:@"PXPassiveContentDataSourceBase.m" lineNumber:136 description:{@"Method %s is a responsibility of subclass %@", "+[PXPassiveContentDataSourceBase suggestionPredicateForSmartAlbumTypes:]", v7}];

  abort();
}

+ (unint64_t)supportedTypes
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXPassiveContentDataSourceBase.m" lineNumber:122 description:{@"Method %s is a responsibility of subclass %@", "+[PXPassiveContentDataSourceBase supportedTypes]", v6}];

  abort();
}

@end