@interface PXMemoriesFeedWidgetDataSourceManager
- (id)_generateEntryFromMemories:(id)a3;
- (id)fetchOptions;
- (void)_regenerateMemoriesWithChange:(id)a3;
- (void)handleChangedKeyAssetsForMemories:(id)a3;
- (void)handleIncrementalFetchResultChange:(id)a3 updatedFetchResultsForMemoriesWithChangedKeyAssets:(id)a4;
- (void)handleNonIncrementalFetchResultChange:(id)a3;
- (void)setMaxCount:(unint64_t)a3;
- (void)startGeneratingMemories;
@end

@implementation PXMemoriesFeedWidgetDataSourceManager

- (void)handleChangedKeyAssetsForMemories:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a3 count];
  if (v4)
  {
    v5 = v4;
    v6 = PLMemoriesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "[Widget] Handling updates to key assets: %lu.", &v7, 0xCu);
    }

    [(PXMemoriesFeedWidgetDataSourceManager *)self _regenerateMemoriesWithChange:0];
  }
}

- (void)handleNonIncrementalFetchResultChange:(id)a3
{
  v4 = [a3 fetchResultAfterChanges];
  v5 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];

  if (v4 != v5)
  {
    v6 = PLMemoriesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "[Widget] Handling non-incremental update.", v7, 2u);
    }

    [(PXMemoriesFeedDataSourceManagerBase *)self setMemoriesFetchResult:v4];
    [(PXMemoriesFeedWidgetDataSourceManager *)self _regenerateMemoriesWithChange:0];
  }
}

- (void)handleIncrementalFetchResultChange:(id)a3 updatedFetchResultsForMemoriesWithChangedKeyAssets:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];
  v9 = [v7 changeDetailsForFetchResult:v8];

  v10 = [v6 count];
  v11 = [v9 fetchResultAfterChanges];
  if (v10 || ([(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult], v12 = objc_claimAutoreleasedReturnValue(), v12, v11 != v12))
  {
    v13 = PLMemoriesGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "[Widget] Handling incremental update. Key assets changed: %lu.", &v14, 0xCu);
    }

    [(PXMemoriesFeedDataSourceManagerBase *)self setMemoriesFetchResult:v11];
    [(PXMemoriesFeedWidgetDataSourceManager *)self _regenerateMemoriesWithChange:v9];
  }
}

- (void)setMaxCount:(unint64_t)a3
{
  if (self->_maxCount != a3)
  {
    self->_maxCount = a3;
    [(PXMemoriesFeedDataSourceManagerBase *)self resetMemoriesFetchResult];

    [(PXMemoriesFeedWidgetDataSourceManager *)self _regenerateMemoriesWithChange:0];
  }
}

- (void)_regenerateMemoriesWithChange:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PXMemoriesFeedWidgetDataSourceManager *)self maxCount])
  {
    goto LABEL_21;
  }

  v5 = [(PXMemoriesFeedDataSourceManagerBase *)self memoriesFetchResult];
  v25 = v5;
  if ([v5 count])
  {
    v6 = [(PXMemoriesFeedWidgetDataSourceManager *)self _generateEntryFromMemories:v5];
    v7 = [PXMemoriesFeedDataSource alloc];
    v28[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v9 = [(PXMemoriesFeedDataSource *)v7 initWithEntries:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PXSectionedDataSourceManager *)self dataSource];
  if ([v10 numberOfSections])
  {
    v11 = [(PXMemoriesFeedDataSource *)v9 numberOfSections]== 0;
  }

  else
  {
    v11 = 0;
  }

  if ([v10 numberOfSections])
  {
    v12 = 0;
  }

  else
  {
    v12 = [(PXMemoriesFeedDataSource *)v9 numberOfSections]!= 0;
  }

  if (v11)
  {
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    if (!v12)
    {
LABEL_14:
      v14 = 0;
LABEL_17:
      v15 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v4];
      if ([v15 hasAnyChanges])
      {
        [MEMORY[0x1E696AC90] indexSet];
      }

      else
      {
        [MEMORY[0x1E696AC90] indexSetWithIndex:0];
      }
      v16 = ;
      v17 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v13 insertedIndexes:v14 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v16];
      v18 = [off_1E77218B0 alloc];
      v23 = v13;
      v24 = v10;
      v19 = [v10 identifier];
      v20 = v14;
      v21 = [(PXMemoriesFeedDataSource *)v9 identifier];
      v26 = &unk_1F190C238;
      v27 = v15;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      [v18 initWithFromDataSourceIdentifier:v19 toDataSourceIdentifier:v21 sectionChanges:v17 itemChangeDetailsBySection:v22 subitemChangeDetailsByItemBySection:0];

      [v25 count];
LABEL_21:
      px_dispatch_on_main_queue();
    }
  }

  else
  {
    v13 = 0;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  goto LABEL_17;
}

- (id)_generateEntryFromMemories:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLMemoriesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v21 = [v4 count];
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[Widget] Generate a feed entry from %lu memories...", buf, 0xCu);
  }

  v6 = [objc_opt_class() generateEntriesFromMemories:v4 startingFromIndex:0 maximumNumberOfEntries:-[PXMemoriesFeedWidgetDataSourceManager _extendedMaxCount](self finalMemoryIndex:{"_extendedMaxCount"), 0}];
  v7 = [(PXMemoriesFeedWidgetDataSourceManager *)self maxCount];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __68__PXMemoriesFeedWidgetDataSourceManager__generateEntryFromMemories___block_invoke;
  v17 = &unk_1E7739EB8;
  v9 = v8;
  v18 = v9;
  v19 = v7;
  [v6 enumerateObjectsUsingBlock:&v14];
  v10 = [PXMemoryEntryInfo alloc];
  v11 = [(PXMemoryEntryInfo *)v10 initWithSortedMemories:v9, v14, v15, v16, v17];
  v12 = PLMemoriesGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v11;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "[Widget] Generated feed entry: %@", buf, 0xCu);
  }

  return v11;
}

void __68__PXMemoriesFeedWidgetDataSourceManager__generateEntryFromMemories___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 memories];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PXMemoriesFeedWidgetDataSourceManager__generateEntryFromMemories___block_invoke_2;
  v6[3] = &unk_1E7739E90;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v6];
}

void __68__PXMemoriesFeedWidgetDataSourceManager__generateEntryFromMemories___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) count] >= *(a1 + 40))
  {
    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (void)startGeneratingMemories
{
  v3.receiver = self;
  v3.super_class = PXMemoriesFeedWidgetDataSourceManager;
  [(PXMemoriesFeedDataSourceManagerBase *)&v3 startGeneratingMemories];
  [(PXMemoriesFeedWidgetDataSourceManager *)self _regenerateMemoriesWithChange:0];
}

- (id)fetchOptions
{
  v13.receiver = self;
  v13.super_class = PXMemoriesFeedWidgetDataSourceManager;
  v3 = [(PXMemoriesFeedDataSourceManagerBase *)&v13 fetchOptions];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PXMemoriesFeedWidgetDataSourceManager_fetchOptions__block_invoke;
  aBlock[3] = &unk_1E7747718;
  v4 = v3;
  v12 = v4;
  v5 = _Block_copy(aBlock);
  if ([(PXMemoriesFeedWidgetDataSourceManager *)self maxCount])
  {
    [v4 setFetchLimit:{-[PXMemoriesFeedWidgetDataSourceManager _extendedMaxCount](self, "_extendedMaxCount")}];
  }

  [v4 setIncludePendingMemories:1];
  [v4 setFetchLimit:5];
  if (PFOSVariantHasInternalUI())
  {
    v6 = +[PXMemoriesRelatedSettings sharedInstance];
    v7 = [v6 showLocalMemories];

    if (v7)
    {
      [v4 setIncludeLocalMemories:1];
    }
  }

  if ([(PXMemoriesFeedWidgetDataSourceManager *)self onlyFavorites])
  {
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"favorite == true"];
    v5[2](v5, v8);
  }

  v9 = v4;

  return v4;
}

void __53__PXMemoriesFeedWidgetDataSourceManager_fetchOptions__block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) predicate];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E696AB28];
    v9[0] = v4;
    v9[1] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v8 = [v6 andPredicateWithSubpredicates:v7];
    [*(a1 + 32) setPredicate:v8];
  }

  else
  {
    [*(a1 + 32) setPredicate:v3];
  }
}

@end