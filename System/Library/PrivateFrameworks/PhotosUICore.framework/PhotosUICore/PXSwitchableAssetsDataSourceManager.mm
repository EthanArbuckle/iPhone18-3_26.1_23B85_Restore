@interface PXSwitchableAssetsDataSourceManager
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)forceAccurateSection:(int64_t)a3 andSectionsBeforeAndAfter:(int64_t)a4;
- (BOOL)forceAccurateSectionsIfNeeded:(id)a3;
- (BOOL)includeOthersInSocialGroupAssets;
- (BOOL)isBackgroundFetching;
- (BOOL)isLoadingInitialDataSource;
- (BOOL)isReverseSortOrder;
- (BOOL)supportsCurationToggling;
- (BOOL)supportsFiltering;
- (NSString)description;
- (PXAssetsDataSourceManager)currentDataSourceManager;
- (PXPhotosViewLens)currentLens;
- (PXSwitchableAssetsDataSourceManager)init;
- (PXSwitchableAssetsDataSourceManager)initWithDataSourceManagerByKey:(id)a3 currentKey:(id)a4;
- (id)createDataSourceManagerForAsset:(id)a3;
- (id)createDataSourceManagerForAssetsInSectionOfAsset:(id)a3 usingNewTransientAssetCollection:(BOOL)a4;
- (id)createInitialDataSource;
- (id)createReverselySortedDataSourceManager;
- (id)filterPredicate;
- (id)localizedEmptyPlaceholderAttributedMessage;
- (id)localizedEmptyPlaceholderTitle;
- (id)localizedLoadingInitialDataSourceMessage;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (id)sharedLibraryStatusProvider;
- (id)sortDescriptors;
- (int64_t)backgroundFetchOriginSection;
- (void)_enumerateAllDataSourceManagers:(id)a3;
- (void)_invalidateCurrentDataSource;
- (void)_updateCurrentDataSource;
- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)a3;
- (void)assetsDataSourceManagerDidFinishLoadingInitialDataSource:(id)a3;
- (void)didPerformChanges;
- (void)ensureLastSectionHasContent;
- (void)ensureStartingSectionHasContent;
- (void)excludeAssetsAtIndexPaths:(id)a3;
- (void)forceIncludeAssetsAtIndexPaths:(id)a3;
- (void)markContentAsViewed;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)refreshResultsForAssetCollection:(id)a3;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setAllowedUUIDs:(id)a3;
- (void)setAllowedUUIDs:(id)a3 manualOrderUUIDs:(id)a4 forAssetCollections:(id)a5;
- (void)setAllowedUUIDs:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setBackgroundFetchOriginSection:(int64_t)a3;
- (void)setCurationEnabled:(BOOL)a3 forAssetCollection:(id)a4;
- (void)setCurationEnabledForAllCollections:(BOOL)a3 curationLength:(int64_t)a4 collectionsToDiff:(id)a5;
- (void)setCurrentKey:(id)a3;
- (void)setFilterPredicate:(id)a3;
- (void)setFilterPredicate:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setFilteringDisabled:(BOOL)a3 forAssetCollection:(id)a4;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setReverseSortOrder:(BOOL)a3;
- (void)setSortDescriptors:(id)a3;
- (void)stopExcludingAssets:(id)a3;
- (void)waitForAvailabilityOfAsset:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
@end

@implementation PXSwitchableAssetsDataSourceManager

- (void)assetsDataSourceManagerDidFinishLoadingInitialDataSource:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];

  if (v5 == v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __96__PXSwitchableAssetsDataSourceManager_assetsDataSourceManagerDidFinishLoadingInitialDataSource___block_invoke;
    v6[3] = &unk_1E7736828;
    v6[4] = self;
    [(PXSwitchableAssetsDataSourceManager *)self enumerateObserversUsingBlock:v6];
  }
}

void __96__PXSwitchableAssetsDataSourceManager_assetsDataSourceManagerDidFinishLoadingInitialDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assetsDataSourceManagerDidFinishLoadingInitialDataSource:*(a1 + 32)];
  }
}

- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];

  if (v5 == v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__PXSwitchableAssetsDataSourceManager_assetsDataSourceManagerDidFinishBackgroundFetching___block_invoke;
    v6[3] = &unk_1E7736828;
    v6[4] = self;
    [(PXSwitchableAssetsDataSourceManager *)self enumerateObserversUsingBlock:v6];
  }
}

void __90__PXSwitchableAssetsDataSourceManager_assetsDataSourceManagerDidFinishBackgroundFetching___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assetsDataSourceManagerDidFinishBackgroundFetching:*(a1 + 32)];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXChildDataSourceManagerObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:357 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PXSwitchableAssetsDataSourceManager_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E774A6B8;
    v12[4] = self;
    [(PXSwitchableAssetsDataSourceManager *)self performChanges:v12];
  }
}

- (void)_updateCurrentDataSource
{
  v8 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSource];
  v3 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v4 = [v3 dataSource];
  [(PXSwitchableAssetsDataSourceManager *)self setCurrentDataSource:v4];
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentKey];
  [(PXSwitchableAssetsDataSourceManager *)self setCurrentDataSourceKey:v5];

  if (v8 != v4 && ([v8 isEqual:v4] & 1) == 0)
  {
    v6 = [v3 changeHistory];
    v7 = [v6 changeDetailsFromDataSourceIdentifier:objc_msgSend(v8 toDataSourceIdentifier:{"identifier"), objc_msgSend(v4, "identifier")}];

    [(PXSectionedDataSourceManager *)self setDataSource:v4 changeDetailsArray:v7];
  }
}

- (void)_invalidateCurrentDataSource
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentDataSource];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXSwitchableAssetsDataSourceManager;
  [(PXSwitchableAssetsDataSourceManager *)&v4 didPerformChanges];
  v3 = [(PXSwitchableAssetsDataSourceManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)_enumerateAllDataSourceManagers:(id)a3
{
  v4 = a3;
  dataSourceManagerByKey = self->_dataSourceManagerByKey;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PXSwitchableAssetsDataSourceManager__enumerateAllDataSourceManagers___block_invoke;
  v7[3] = &unk_1E7732ED8;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)dataSourceManagerByKey enumerateKeysAndObjectsUsingBlock:v7];
}

- (PXAssetsDataSourceManager)currentDataSourceManager
{
  dataSourceManagerByKey = self->_dataSourceManagerByKey;
  v3 = [(PXSwitchableAssetsDataSourceManager *)self currentKey];
  v4 = [(NSDictionary *)dataSourceManagerByKey objectForKeyedSubscript:v3];

  return v4;
}

- (void)setAllowedUUIDs:(id)a3 manualOrderUUIDs:(id)a4 forAssetCollections:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v11 setAllowedUUIDs:v10 manualOrderUUIDs:v9 forAssetCollections:v8];
}

- (void)setAllowedUUIDs:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v8 setAllowedUUIDs:v7 provideIncrementalChangeDetailsForAssetCollections:v6];
}

- (void)setAllowedUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v5 setAllowedUUIDs:v4];
}

- (void)setFilteringDisabled:(BOOL)a3 forAssetCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v7 setFilteringDisabled:v4 forAssetCollection:v6];
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v7 setIncludeOthersInSocialGroupAssets:v4 provideIncrementalChangeDetailsForAssetCollections:v6];
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v4 setIncludeOthersInSocialGroupAssets:v3];
}

- (void)setFilterPredicate:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v8 setFilterPredicate:v7 provideIncrementalChangeDetailsForAssetCollections:v6];
}

- (void)setReverseSortOrder:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v4 setReverseSortOrder:v3];
}

- (void)setSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v5 setSortDescriptors:v4];
}

- (void)setFilterPredicate:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v5 setFilterPredicate:v4];
}

- (void)refreshResultsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v5 refreshResultsForAssetCollection:v4];
}

- (void)stopExcludingAssets:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v5 stopExcludingAssets:v4];
}

- (void)excludeAssetsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v5 excludeAssetsAtIndexPaths:v4];
}

- (void)forceIncludeAssetsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v5 forceIncludeAssetsAtIndexPaths:v4];
}

- (int64_t)backgroundFetchOriginSection
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 backgroundFetchOriginSection];

  return v3;
}

- (void)setBackgroundFetchOriginSection:(int64_t)a3
{
  v4 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v4 setBackgroundFetchOriginSection:a3];
}

- (void)ensureStartingSectionHasContent
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v2 ensureStartingSectionHasContent];
}

- (void)ensureLastSectionHasContent
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v2 ensureLastSectionHasContent];
}

- (BOOL)forceAccurateSection:(int64_t)a3 andSectionsBeforeAndAfter:(int64_t)a4
{
  v6 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  LOBYTE(a4) = [v6 forceAccurateSection:a3 andSectionsBeforeAndAfter:a4];

  return a4;
}

- (BOOL)forceAccurateSectionsIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v6 = [v5 forceAccurateSectionsIfNeeded:v4];

  return v6;
}

- (BOOL)forceAccurateAllSectionsIfNeeded
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 forceAccurateAllSectionsIfNeeded];

  return v3;
}

- (void)setCurationEnabled:(BOOL)a3 forAssetCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v7 setCurationEnabled:v4 forAssetCollection:v6];
}

- (void)setCurationEnabledForAllCollections:(BOOL)a3 curationLength:(int64_t)a4 collectionsToDiff:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v9 setCurationEnabledForAllCollections:v6 curationLength:a4 collectionsToDiff:v8];
}

- (void)markContentAsViewed
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v2 markContentAsViewed];
}

- (id)createReverselySortedDataSourceManager
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 createReverselySortedDataSourceManager];

  return v3;
}

- (id)createDataSourceManagerForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v6 = [v5 createDataSourceManagerForAsset:v4];

  return v6;
}

- (id)createDataSourceManagerForAssetsInSectionOfAsset:(id)a3 usingNewTransientAssetCollection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v8 = [v7 createDataSourceManagerForAssetsInSectionOfAsset:v6 usingNewTransientAssetCollection:v4];

  return v8;
}

- (void)waitForAvailabilityOfAsset:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [v10 waitForAvailabilityOfAsset:v9 timeout:v8 completionHandler:a4];
}

- (BOOL)isReverseSortOrder
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 isReverseSortOrder];

  return v3;
}

- (id)sortDescriptors
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 sortDescriptors];

  return v3;
}

- (BOOL)includeOthersInSocialGroupAssets
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 includeOthersInSocialGroupAssets];

  return v3;
}

- (id)filterPredicate
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 filterPredicate];

  return v3;
}

- (BOOL)supportsFiltering
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 supportsFiltering];

  return v3;
}

- (BOOL)supportsCurationToggling
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 supportsCurationToggling];

  return v3;
}

- (BOOL)isBackgroundFetching
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 isBackgroundFetching];

  return v3;
}

- (BOOL)isLoadingInitialDataSource
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 isLoadingInitialDataSource];

  return v3;
}

- (id)localizedLoadingInitialDataSourceMessage
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 localizedLoadingInitialDataSourceMessage];

  return v3;
}

- (id)localizedEmptyPlaceholderAttributedMessage
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 localizedEmptyPlaceholderAttributedMessage];

  return v3;
}

- (id)localizedEmptyPlaceholderTitle
{
  v2 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v3 = [v2 localizedEmptyPlaceholderTitle];

  return v3;
}

- (id)sharedLibraryStatusProvider
{
  v4 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 sharedLibraryStatusProvider];
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v5 px_descriptionForAssertionMessage];
        [v6 handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:128 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[(id<_PXStatusProviderWorkaround>)currentDataSourceManager sharedLibraryStatusProvider]", v8, v9}];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"token", v8}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v5 px_descriptionForAssertionMessage];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"token", v8, v10}];

    goto LABEL_6;
  }

LABEL_3:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PXSwitchableAssetsDataSourceManager_resumeChangeDeliveryAndBackgroundLoading___block_invoke;
  v11[3] = &unk_1E7732E90;
  v11[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];
}

void __80__PXSwitchableAssetsDataSourceManager_resumeChangeDeliveryAndBackgroundLoading___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 dataSourceManagerForKey:a2];
  [v6 resumeChangeDeliveryAndBackgroundLoading:v5];
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PXSwitchableAssetsDataSourceManager_pauseChangeDeliveryWithTimeout_identifier___block_invoke;
  v13[3] = &unk_1E7732E68;
  v8 = v7;
  v16 = a3;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  [(PXSwitchableAssetsDataSourceManager *)self _enumerateAllDataSourceManagers:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __81__PXSwitchableAssetsDataSourceManager_pauseChangeDeliveryWithTimeout_identifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [a3 pauseChangeDeliveryWithTimeout:v6 identifier:v5];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

- (id)createInitialDataSource
{
  v3 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v4 = [v3 dataSource];

  objc_storeStrong(&self->_currentDataSource, v4);

  return v4;
}

- (PXPhotosViewLens)currentLens
{
  v4 = [(PXSwitchableAssetsDataSourceManager *)self currentKey];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v4 px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:86 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.currentKey", v8, v9}];
    }
  }

  return v4;
}

- (void)setCurrentKey:(id)a3
{
  v5 = a3;
  v6 = self->_currentKey;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(NSCopying *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__PXSwitchableAssetsDataSourceManager_setCurrentKey___block_invoke;
      v9[3] = &unk_1E7732E40;
      v9[4] = self;
      v10 = v5;
      v11 = a2;
      [(PXSwitchableAssetsDataSourceManager *)self performChanges:v9];
    }
  }
}

uint64_t __53__PXSwitchableAssetsDataSourceManager_setCurrentKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSourceManagerForKey:*(a1 + 40)];

  if (!v2)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"[self dataSourceManagerForKey:currentKey] != nil"}];
  }

  v3 = [*(a1 + 40) copyWithZone:0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  *(v4 + 168) = v3;

  v6 = *(a1 + 32);

  return [v6 _invalidateCurrentDataSource];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v7 = [v3 stringWithFormat:@"<%@:%p currentDataSourceManager:%@>", v5, self, v6];;

  return v7;
}

- (PXSwitchableAssetsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:55 description:{@"%s is not available as initializer", "-[PXSwitchableAssetsDataSourceManager init]"}];

  abort();
}

- (PXSwitchableAssetsDataSourceManager)initWithDataSourceManagerByKey:(id)a3 currentKey:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v32.receiver = self;
  v32.super_class = PXSwitchableAssetsDataSourceManager;
  v9 = [(PXSectionedDataSourceManager *)&v32 init];
  if (!v9)
  {
    goto LABEL_12;
  }

  if (![v7 count])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:v9 file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"dataSourceManagers.count >= 1"}];

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_14:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:v9 file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"currentKey != nil"}];

    goto LABEL_4;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = [v7 copy];
  dataSourceManagerByKey = v9->_dataSourceManagerByKey;
  v9->_dataSourceManagerByKey = v10;

  v12 = [v8 copyWithZone:0];
  currentKey = v9->_currentKey;
  v9->_currentKey = v12;

  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15 = [v7 allKeys];
  v16 = [v14 initWithArray:v15];
  allKeys = v9->_allKeys;
  v9->_allKeys = v16;

  v18 = [[off_1E7721940 alloc] initWithTarget:v9 needsUpdateSelector:sel__setNeedsUpdate];
  updater = v9->_updater;
  v9->_updater = v18;

  [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateCurrentDataSource];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [v7 allValues];
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v28 + 1) + 8 * v24++) registerChangeObserver:v9 context:PXChildDataSourceManagerObservationContext];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

LABEL_12:
  return v9;
}

@end