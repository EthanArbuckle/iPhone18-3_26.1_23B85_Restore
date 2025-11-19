@interface PXStoryMemoryFeedDataSourceManager
- (BOOL)hasAnyMemories;
- (PXStoryMemoryFeedDataSourceManager)init;
- (PXStoryMemoryFeedDataSourceManager)initWithPhotoLibrary:(id)a3;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (void)_invalidateChildDataSourceManagers;
- (void)_invalidateDataSource;
- (void)_invalidateHasAnyFavorites;
- (void)_setDataSourceToEmpty;
- (void)_updateChildDataSourceManagers;
- (void)_updateDataSource;
- (void)_updateHasAnyFavorites;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)preferencesDidChange;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setHasAnyFavorites:(BOOL)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setWantsFavoritesOnly:(BOOL)a3;
@end

@implementation PXStoryMemoryFeedDataSourceManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PXStoryMemoryFeedDataSourceManager_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7747740;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
  v5[7] = a2;
  [(PXStoryMemoryFeedDataSourceManager *)self performChanges:v5];
}

void __67__PXStoryMemoryFeedDataSourceManager_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 == AllMemoriesDataSourceManagerObservationContext)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = v3;
    [*(a1 + 32) _invalidateDataSource];
    goto LABEL_12;
  }

  if (v4 == FavoriteMemoriesDataSourceManagerObservationContext)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_13;
    }

    v6 = *(a1 + 32);
    v8 = v3;
    goto LABEL_11;
  }

  if (v4 != PXLibraryFilterStateObservationContext_223410)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryMemoryFeedDataSourceManager.m" lineNumber:244 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (*(a1 + 48))
  {
    v8 = v3;
    [*(a1 + 32) _invalidateChildDataSourceManagers];
    v5 = [*(a1 + 32) isActive];
    v3 = v8;
    if (v5)
    {
      v6 = *(a1 + 32);
LABEL_11:
      [v6 _invalidateDataSource];
      [*(a1 + 32) _invalidateHasAnyFavorites];
LABEL_12:
      v3 = v8;
    }
  }

LABEL_13:
}

- (void)_updateHasAnyFavorites
{
  v4 = [(PXStoryMemoryFeedDataSourceManager *)self favoriteMemoriesDataSourceManager];
  v3 = [v4 dataSource];
  -[PXStoryMemoryFeedDataSourceManager setHasAnyFavorites:](self, "setHasAnyFavorites:", [v3 containsAnyItems]);
}

- (void)_invalidateHasAnyFavorites
{
  v2 = [(PXStoryMemoryFeedDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateHasAnyFavorites];
}

- (void)_updateDataSource
{
  v9 = [(PXSectionedDataSourceManager *)self dataSource];
  if ([(PXStoryMemoryFeedDataSourceManager *)self wantsFavoritesOnly])
  {
    [(PXStoryMemoryFeedDataSourceManager *)self favoriteMemoriesDataSourceManager];
  }

  else
  {
    [(PXStoryMemoryFeedDataSourceManager *)self allMemoriesDataSourceManager];
  }
  v3 = ;
  v4 = [_PXStoryMemoryFeedDataSource alloc];
  v5 = [v3 dataSource];
  v6 = [(_PXStoryMemoryFeedDataSource *)v4 initWithDataSource:v5];

  if (([(_PXStoryMemoryFeedDataSource *)v6 isEqual:v9]& 1) == 0)
  {
    v7 = [v3 changeHistory];
    v8 = [v7 changeDetailsFromDataSourceIdentifier:objc_msgSend(v9 toDataSourceIdentifier:{"identifier"), -[_PXStoryMemoryFeedDataSource identifier](v6, "identifier")}];

    [(PXSectionedDataSourceManager *)self setDataSource:v6 changeDetailsArray:v8];
  }
}

- (void)_invalidateDataSource
{
  v2 = [(PXStoryMemoryFeedDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDataSource];
}

- (void)_updateChildDataSourceManagers
{
  v28[2] = *MEMORY[0x1E69E9840];
  allMemoriesDataSourceManager = self->_allMemoriesDataSourceManager;
  if (allMemoriesDataSourceManager || self->_favoriteMemoriesDataSourceManager)
  {
    [(PXSectionedDataSourceManager *)allMemoriesDataSourceManager unregisterChangeObserver:self context:AllMemoriesDataSourceManagerObservationContext];
    [(PXSectionedDataSourceManager *)self->_favoriteMemoriesDataSourceManager unregisterChangeObserver:self context:FavoriteMemoriesDataSourceManagerObservationContext];
  }

  v4 = [(PXStoryMemoryFeedDataSourceManager *)self photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PXStoryMemoryFeedDataSourceManager__updateChildDataSourceManagers__block_invoke;
  aBlock[3] = &unk_1E7747718;
  v26 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"rejected == NO"];
  v7[2](v7, v8);

  v9 = PNMemoryInternalPredicateExcludingTemporaryHiddenMemories();
  v7[2](v7, v9);

  [v6 setIncludePendingMemories:1];
  [v6 setIncludeStoryMemories:1];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v28[0] = v10;
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
  v28[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [v6 setSortDescriptors:v12];

  v27 = *MEMORY[0x1E6978F08];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [v6 setFetchPropertySets:v13];

  v14 = +[PXStorySettings sharedInstance];
  [v6 setFetchLimit:{objc_msgSend(v14, "feedInitialLimit")}];

  v15 = [(PXStoryMemoryFeedDataSourceManager *)self libraryFilterState];
  v16 = [v15 viewMode];
  if (v16 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2 * (v16 != 1);
  }

  [v6 setSharingFilter:v17];

  v18 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"favorite == YES"];
  v7[2](v7, v19);

  v20 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v6];
  v21 = [[PXFetchResultBasedMemoriesDataSourceManager alloc] initWithMemoriesFetchResult:v18];
  v22 = self->_allMemoriesDataSourceManager;
  self->_allMemoriesDataSourceManager = v21;

  [(PXSectionedDataSourceManager *)self->_allMemoriesDataSourceManager registerChangeObserver:self context:AllMemoriesDataSourceManagerObservationContext];
  v23 = [[PXFetchResultBasedMemoriesDataSourceManager alloc] initWithMemoriesFetchResult:v20];
  favoriteMemoriesDataSourceManager = self->_favoriteMemoriesDataSourceManager;
  self->_favoriteMemoriesDataSourceManager = v23;

  [(PXSectionedDataSourceManager *)self->_favoriteMemoriesDataSourceManager registerChangeObserver:self context:FavoriteMemoriesDataSourceManagerObservationContext];
}

void __68__PXStoryMemoryFeedDataSourceManager__updateChildDataSourceManagers__block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) internalPredicate];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E696AB28];
    v9[0] = v4;
    v9[1] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v8 = [v6 andPredicateWithSubpredicates:v7];
    [*(a1 + 32) setInternalPredicate:v8];
  }

  else
  {
    [*(a1 + 32) setInternalPredicate:v3];
  }
}

- (void)_invalidateChildDataSourceManagers
{
  v2 = [(PXStoryMemoryFeedDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChildDataSourceManagers];
}

- (void)setWantsFavoritesOnly:(BOOL)a3
{
  if (self->_wantsFavoritesOnly != a3)
  {
    self->_wantsFavoritesOnly = a3;
    [(PXStoryMemoryFeedDataSourceManager *)self signalChange:8];

    [(PXStoryMemoryFeedDataSourceManager *)self _invalidateDataSource];
  }
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXStoryMemoryFeedDataSourceManager *)self signalChange:2];
    if (self->_isActive)
    {
      v4 = [(PXStoryMemoryFeedDataSourceManager *)self allMemoriesDataSourceManager];
      [v4 startLoadingIfNeeded];

      v5 = [(PXStoryMemoryFeedDataSourceManager *)self favoriteMemoriesDataSourceManager];
      [v5 startLoadingIfNeeded];

      [(PXStoryMemoryFeedDataSourceManager *)self _invalidateDataSource];

      [(PXStoryMemoryFeedDataSourceManager *)self _invalidateHasAnyFavorites];
    }
  }
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryMemoryFeedDataSourceManager *)self photoLibrary];
  [v5 px_endPausingChanges:v4];
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [(PXStoryMemoryFeedDataSourceManager *)self photoLibrary];
  v8 = [v7 px_beginPausingChangesWithTimeout:v6 identifier:a3];

  return v8;
}

- (void)_setDataSourceToEmpty
{
  v3 = [off_1E77218A8 emptyDataSource];
  [(PXSectionedDataSourceManager *)self setDataSource:v3 changeDetailsArray:0];
}

- (void)preferencesDidChange
{
  if ((PLIsFeaturedContentAllowed() & 1) == 0)
  {

    [(PXStoryMemoryFeedDataSourceManager *)self _setDataSourceToEmpty];
  }
}

- (void)setHasAnyFavorites:(BOOL)a3
{
  if (self->_hasAnyFavorites != a3)
  {
    self->_hasAnyFavorites = a3;
    [(PXStoryMemoryFeedDataSourceManager *)self signalChange:4];
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryMemoryFeedDataSourceManager;
  [(PXStoryMemoryFeedDataSourceManager *)&v4 didPerformChanges];
  v3 = [(PXStoryMemoryFeedDataSourceManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryMemoryFeedDataSourceManager;
  [(PXStoryMemoryFeedDataSourceManager *)&v3 performChanges:a3];
}

- (BOOL)hasAnyMemories
{
  v2 = [(PXStoryMemoryFeedDataSourceManager *)self allMemoriesDataSourceManager];
  v3 = [v2 dataSource];
  v4 = [v3 containsAnyItems];

  return v4;
}

- (PXStoryMemoryFeedDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedDataSourceManager.m" lineNumber:70 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedDataSourceManager init]"}];

  abort();
}

- (PXStoryMemoryFeedDataSourceManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXStoryMemoryFeedDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v5];
    v9 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v8];
    libraryFilterState = v7->_libraryFilterState;
    v7->_libraryFilterState = v9;

    v11 = [[off_1E7721940 alloc] initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v11;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateChildDataSourceManagers];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateDataSource];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateHasAnyFavorites];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__PXStoryMemoryFeedDataSourceManager_initWithPhotoLibrary___block_invoke;
    v15[3] = &unk_1E77476F0;
    v13 = v7;
    v16 = v13;
    [(PXStoryMemoryFeedDataSourceManager *)v13 performChanges:v15];
    PXRegisterPreferencesObserver(v13);
    [(PXLibraryFilterState *)v7->_libraryFilterState registerChangeObserver:v13 context:PXLibraryFilterStateObservationContext_223410];
  }

  return v7;
}

@end