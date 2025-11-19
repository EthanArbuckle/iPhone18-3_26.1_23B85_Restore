@interface PXMemoriesFeedDataSourceManagerBase
+ (BOOL)shouldGroupTogetherMemoriesWithCreationDate:(id)a3 andCreationDate:(id)a4;
+ (id)_updatedFetchResultsForMemoriesForDatasource:(id)a3 changeDetails:(id)a4 changeInstance:(id)a5;
+ (id)baseFetchOptionsWithPhotoLibrary:(id)a3;
+ (id)generateEntriesFromMemories:(id)a3 startingFromIndex:(unint64_t)a4 maximumNumberOfEntries:(unint64_t)a5 finalMemoryIndex:(unint64_t *)a6;
- (BOOL)hasAnyMemories;
- (NSDate)mostRecentCreationDate;
- (PXMemoriesFeedDataSourceManagerBase)initWithPhotoLibrary:(id)a3;
- (id)fetchOptions;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_clearPendingNotificationForMemory:(id)a3;
- (void)generateAdditionalEntriesIfPossible;
- (void)handleChangedKeyAssetsForMemories:(id)a3;
- (void)handleIncrementalFetchResultChange:(id)a3 updatedFetchResultsForMemoriesWithChangedKeyAssets:(id)a4;
- (void)handleNonIncrementalFetchResultChange:(id)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)reloadMemories:(BOOL)a3;
- (void)resetMemoriesFetchResult;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setMemoriesFetchResult:(id)a3;
- (void)updateCurrentMemoriesNonPendingAndNotificationStatus;
@end

@implementation PXMemoriesFeedDataSourceManagerBase

- (void)updateCurrentMemoriesNonPendingAndNotificationStatus
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];
  v4 = +[PXMemoriesSeenHelper defaultHelper];
  [v4 clearAnyPendingNotificationsFromMemories:v3];
  v5 = [(PXMemoriesFeedDataSourceManagerBase *)self firstUngroupedMemoryIndex];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 count];
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v8}];
    v10 = [v3 objectsAtIndexes:v9];
    [v4 clearAnyPendingStateFromMemories:v10];
  }

  else
  {
    v9 = PLMemoriesGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "[PXMemoriesFeedDataSourceManagerBase updateCurrentMemoriesNonPendingAndNotificationStatus]";
      v13 = 2048;
      v14 = 0;
      v15 = 2048;
      v16 = [v3 count];
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "%s Unexpected value for firstUngroupedMemoryIndex: %lu, memoriesFetchResult.count: %lu", &v11, 0x20u);
    }
  }
}

- (void)_clearPendingNotificationForMemory:(id)a3
{
  v4 = a3;
  photoLibrary = self->_photoLibrary;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PXMemoriesFeedDataSourceManagerBase__clearPendingNotificationForMemory___block_invoke;
  v10[3] = &unk_1E774C648;
  v11 = v4;
  v6 = v4;
  [(PHPhotoLibrary *)photoLibrary performChanges:v10 completionHandler:&__block_literal_global_54654];
  v7 = [(PHPhotoLibrary *)self->_photoLibrary assetsdClient];
  v8 = [v7 notificationClient];
  v9 = [v6 uuid];
  [v8 asyncNotifyInterestingMemoryNotificationViewedForColletionID:v9];
}

void __74__PXMemoriesFeedDataSourceManagerBase__clearPendingNotificationForMemory___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6978900] changeRequestForMemory:*(a1 + 32)];
  [v1 setNotificationState:2];
}

void __74__PXMemoriesFeedDataSourceManagerBase__clearPendingNotificationForMemory___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Error while updating memory notification state: %@", &v6, 0xCu);
    }
  }
}

- (void)handleChangedKeyAssetsForMemories:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedDataSourceManagerBase.m" lineNumber:244 description:{@"Method %s is a responsibility of subclass %@", "-[PXMemoriesFeedDataSourceManagerBase handleChangedKeyAssetsForMemories:]", v8}];

  abort();
}

- (void)handleNonIncrementalFetchResultChange:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedDataSourceManagerBase.m" lineNumber:240 description:{@"Method %s is a responsibility of subclass %@", "-[PXMemoriesFeedDataSourceManagerBase handleNonIncrementalFetchResultChange:]", v8}];

  abort();
}

- (void)handleIncrementalFetchResultChange:(id)a3 updatedFetchResultsForMemoriesWithChangedKeyAssets:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedDataSourceManagerBase.m" lineNumber:236 description:{@"Method %s is a responsibility of subclass %@", "-[PXMemoriesFeedDataSourceManagerBase handleIncrementalFetchResultChange:updatedFetchResultsForMemoriesWithChangedKeyAssets:]", v11}];

  abort();
}

- (void)reloadMemories:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedDataSourceManagerBase.m" lineNumber:232 description:{@"Method %s is a responsibility of subclass %@", "-[PXMemoriesFeedDataSourceManagerBase reloadMemories:]", v7}];

  abort();
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"memoriesFetchResultChangeDetails"];
  v8 = [v6 objectForKeyedSubscript:@"updatedFetchResultsForMemoriesWithChangedKeyAssets"];
  v9 = [v6 objectForKeyedSubscript:@"datasource"];
  v10 = [(PXSectionedDataSourceManager *)self dataSource];
  v11 = [v6 objectForKeyedSubscript:@"memoriesFetchResult"];

  v12 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];
  v13 = v12;
  if (v9 == v10 && v11 == v12)
  {
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = [v16 changeDetailsForFetchResult:v12];

    v15 = [PXMemoriesFeedDataSourceManagerBase _updatedFetchResultsForMemoriesForDatasource:v10 changeDetails:v14 changeInstance:v16];

    v8 = v15;
    v7 = v14;
    if (v14)
    {
LABEL_4:
      if ([v7 hasIncrementalChanges])
      {
        [(PXMemoriesFeedDataSourceManagerBase *)self handleIncrementalFetchResultChange:v16 updatedFetchResultsForMemoriesWithChangedKeyAssets:v8];
      }

      else
      {
        [(PXMemoriesFeedDataSourceManagerBase *)self handleNonIncrementalFetchResultChange:v7];
      }

      goto LABEL_10;
    }
  }

  if ([v8 count])
  {
    [(PXMemoriesFeedDataSourceManagerBase *)self handleChangedKeyAssetsForMemories:v8];
  }

LABEL_10:
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__54678;
  v21 = __Block_byref_object_dispose__54679;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__54678;
  v15 = __Block_byref_object_dispose__54679;
  v16 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PXMemoriesFeedDataSourceManagerBase_prepareForPhotoLibraryChange___block_invoke;
  block[3] = &unk_1E7746888;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v11;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v5 = [v4 changeDetailsForFetchResult:v12[5]];
  v6 = [PXMemoriesFeedDataSourceManagerBase _updatedFetchResultsForMemoriesForDatasource:v18[5] changeDetails:v5 changeInstance:v4];
  v7 = objc_opt_new();
  [v7 setObject:v18[5] forKeyedSubscript:@"datasource"];
  [v7 setObject:v6 forKeyedSubscript:@"updatedFetchResultsForMemoriesWithChangedKeyAssets"];
  v8 = v12[5];
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"memoriesFetchResult"];
  }

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:@"memoriesFetchResultChangeDetails"];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __68__PXMemoriesFeedDataSourceManagerBase_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) memoriesFetchResult];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v4 = a3;
  v5 = [(PXMemoriesFeedDataSourceManagerBase *)self photoLibrary];
  [v5 px_endPausingChanges:v4];
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [(PXMemoriesFeedDataSourceManagerBase *)self photoLibrary];
  v8 = [v7 px_beginPausingChangesWithTimeout:v6 identifier:a3];

  return v8;
}

- (void)generateAdditionalEntriesIfPossible
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedDataSourceManagerBase.m" lineNumber:126 description:{@"Method %s is a responsibility of subclass %@", "-[PXMemoriesFeedDataSourceManagerBase generateAdditionalEntriesIfPossible]", v6}];

  abort();
}

- (void)resetMemoriesFetchResult
{
  if (self->_memoryGenerationHasStarted)
  {
    v5 = [(PXMemoriesFeedDataSourceManagerBase *)self fetchOptions];
    v4 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v5];
    [(PXMemoriesFeedDataSourceManagerBase *)self setMemoriesFetchResult:v4];
  }
}

- (void)setMemoriesFetchResult:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_memoriesFetchResult != v5)
  {
    objc_storeStrong(&self->_memoriesFetchResult, a3);
    if (!v5)
    {
      v6 = PLMemoriesGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[PXMemoriesFeedDataSourceManagerBase setMemoriesFetchResult:]";
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Set memoriesFetchResult to nil, %s", &v7, 0xCu);
      }
    }
  }
}

- (id)fetchOptions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [(PXMemoriesFeedDataSourceManagerBase *)self photoLibrary];
  v3 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v2];
  v4 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v3];
  v5 = [PXMemoriesFeedDataSourceManagerBase baseFetchOptionsWithPhotoLibrary:v2];
  [v5 setPhotoLibrary:v2];
  v10[0] = *MEMORY[0x1E6978F08];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v5 setFetchPropertySets:v6];

  v7 = [(PXLibraryFilterState *)v4 viewMode];
  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * (v7 != 1);
  }

  [v5 setSharingFilter:v8];

  return v5;
}

- (BOOL)hasAnyMemories
{
  v2 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];
  v3 = [v2 count] != 0;

  return v3;
}

- (PXMemoriesFeedDataSourceManagerBase)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXMemoriesFeedDataSourceManagerBase;
  v5 = [(PXSectionedDataSourceManager *)&v8 init];
  if (v5)
  {
    v6 = v4;
    if (!v4)
    {
      v6 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    }

    objc_storeStrong(&v5->_photoLibrary, v6);
    if (!v4)
    {
    }
  }

  return v5;
}

- (NSDate)mostRecentCreationDate
{
  v3 = objc_opt_class();
  v4 = [(PXMemoriesFeedDataSourceManagerBase *)self photoLibrary];
  v5 = [v3 baseFetchOptionsWithPhotoLibrary:v4];

  [v5 setFetchLimit:1];
  v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v5];
  v7 = [v6 firstObject];
  v8 = [v7 creationDate];

  return v8;
}

+ (BOOL)shouldGroupTogetherMemoriesWithCreationDate:(id)a3 andCreationDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[PXMemoriesFeedSettings sharedInstance];
  v10 = [v9 memoryGroupingMethod];
  switch(v10)
  {
    case 1:
      v11 = [v7 px_isSameDayAsDate:v8];
      break;
    case 2:
      [v7 timeIntervalSinceDate:v8];
      v13 = fabs(v12);
      [v9 memoryGroupingInterval];
      v11 = v13 <= v14;
      break;
    case 0:
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:a1 file:@"PXMemoriesFeedDataSourceManagerBase.m" lineNumber:306 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v11 = 0;
      break;
  }

  return v11;
}

+ (id)generateEntriesFromMemories:(id)a3 startingFromIndex:(unint64_t)a4 maximumNumberOfEntries:(unint64_t)a5 finalMemoryIndex:(unint64_t *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = PLMemoriesGetLog();
  v10 = &off_1A52F8000;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = [v8 count];
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Generating feed entries from %lu entries...", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __125__PXMemoriesFeedDataSourceManagerBase_generateEntriesFromMemories_startingFromIndex_maximumNumberOfEntries_finalMemoryIndex___block_invoke;
  aBlock[3] = &unk_1E7732790;
  v13 = v12;
  v29 = v13;
  v14 = v11;
  v30 = v14;
  v15 = _Block_copy(aBlock);
  if ([v8 count])
  {
    v25 = a6;
    if ([v8 count] > a4)
    {
      v16 = 0;
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v18 = v16;
        v19 = [v8 objectAtIndexedSubscript:a4];
        v16 = [v19 creationDate];
        if (v18 && ([a1 shouldGroupTogetherMemoriesWithCreationDate:v16 andCreationDate:v18] & 1) == 0)
        {
          v15[2](v15, v18, v13);
          v17 = a4 - 1;
          if ([v14 count] >= a5)
          {

            v16 = v18;
            goto LABEL_14;
          }

          [v13 removeAllObjects];
        }

        v20 = [PXMemoryInfo memoryInfoWithMemory:v19];
        [v13 addObject:v20];

        if (++a4 >= [v8 count])
        {
          goto LABEL_14;
        }
      }
    }

    v16 = 0;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
    if ([v13 count])
    {
      a6 = v25;
      if ([v14 count] >= a5)
      {
        a4 = v17;
      }

      else
      {
        v15[2](v15, v16, v13);
      }

      v10 = &off_1A52F8000;
    }

    else
    {
      a4 = v17;
      a6 = v25;
      v10 = &off_1A52F8000;
    }
  }

  else
  {
    v16 = 0;
    a4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a6)
  {
    *a6 = a4;
  }

  v21 = PLMemoriesGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v14 count];
    *buf = *(v10 + 271);
    v32 = v22;
    _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "Generated %lu feed entries:", buf, 0xCu);
  }

  v23 = v14;
  return v14;
}

void __125__PXMemoriesFeedDataSourceManagerBase_generateEntriesFromMemories_startingFromIndex_maximumNumberOfEntries_finalMemoryIndex___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [[PXMemoryEntryInfo alloc] initWithMemories:*(a1 + 32)];
  v3 = PLMemoriesGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "Generated feed entry: %@", &v4, 0xCu);
  }

  [*(a1 + 40) addObject:v2];
}

+ (id)_updatedFetchResultsForMemoriesForDatasource:(id)a3 changeDetails:(id)a4 changeInstance:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [v9 entries];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__PXMemoriesFeedDataSourceManagerBase__updatedFetchResultsForMemoriesForDatasource_changeDetails_changeInstance___block_invoke;
  v18[3] = &unk_1E7732768;
  v19 = v7;
  v20 = v8;
  v12 = v10;
  v21 = v12;
  v13 = v8;
  v14 = v7;
  [v11 enumerateObjectsUsingBlock:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

void __113__PXMemoriesFeedDataSourceManagerBase__updatedFetchResultsForMemoriesForDatasource_changeDetails_changeInstance___block_invoke(id *a1, void *a2)
{
  v3 = [a2 memories];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __113__PXMemoriesFeedDataSourceManagerBase__updatedFetchResultsForMemoriesForDatasource_changeDetails_changeInstance___block_invoke_2;
  v4[3] = &unk_1E7732740;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  [v3 enumerateObjectsUsingBlock:v4];
}

void __113__PXMemoriesFeedDataSourceManagerBase__updatedFetchResultsForMemoriesForDatasource_changeDetails_changeInstance___block_invoke_2(id *a1, void *a2)
{
  v16 = a2;
  v3 = [v16 assetCollection];
  v4 = [a1[4] removedObjects];
  v5 = [v4 containsObject:v3];

  if ((v5 & 1) == 0)
  {
    v6 = a1[5];
    v7 = [v16 keyAssetFetchResult];
    v8 = [v6 changeDetailsForFetchResult:v7];

    if (v8)
    {
      v9 = [v16 keyAssetFetchResult];
      v10 = [v9 firstObject];

      v11 = [a1[5] changeDetailsForObject:v10];
      v12 = [v11 assetContentChanged];
      v13 = [v8 fetchResultAfterChanges];
      v14 = [v13 firstObject];
      v15 = [v14 isEqual:v10];

      if ((v12 & 1) != 0 || !v15)
      {
        [a1[6] setObject:v13 forKey:v3];
      }
    }
  }
}

+ (id)baseFetchOptionsWithPhotoLibrary:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setIncludePendingMemories:1];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejected = NO"];
  [v3 setPredicate:v4];

  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v9[0] = v5;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v3 setSortDescriptors:v7];

  return v3;
}

@end