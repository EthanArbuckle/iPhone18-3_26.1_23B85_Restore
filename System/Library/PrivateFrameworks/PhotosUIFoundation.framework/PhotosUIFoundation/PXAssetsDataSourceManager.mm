@interface PXAssetsDataSourceManager
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)isLoadingInitialDataSource;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (void)_performIfStartingSectionIsEmpty:(id)a3;
- (void)ensureLastSectionHasContent;
- (void)ensureStartingSectionHasContent;
- (void)registerChangeObserver:(id)a3 context:(void *)a4;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setCurationEnabled:(BOOL)a3 forAssetCollection:(id)a4;
- (void)setCurationEnabledForAllCollections:(BOOL)a3 curationLength:(int64_t)a4 collectionsToDiff:(id)a5;
- (void)setFilterPredicate:(id)a3;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3;
- (void)unregisterChangeObserver:(id)a3 context:(void *)a4;
- (void)waitForAvailabilityOfAsset:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
@end

@implementation PXAssetsDataSourceManager

- (void)ensureLastSectionHasContent
{
  v3 = [(PXSectionedDataSourceManager *)self dataSource];
  v4 = [v3 numberOfSections];

  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = [(PXSectionedDataSourceManager *)self dataSource];
    v7 = [v6 numberOfItemsInSection:v5];

    if (!v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__PXAssetsDataSourceManager_ensureLastSectionHasContent__block_invoke;
      v8[3] = &__block_descriptor_40_e44_v16__0___PXMutableAssetsDataSourceManager__8l;
      v8[4] = v5;
      [(PXObservable *)self performChanges:v8];
    }
  }
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v3 resumeChangeDeliveryAndBackgroundLoading:a3];
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = PXAssetsDataSourceManager;
  v4 = [(PXSectionedDataSourceManager *)&v6 pauseChangeDeliveryWithTimeout:a4 identifier:a3];

  return v4;
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3
{
  if (self->_includeOthersInSocialGroupAssets != a3)
  {
    self->_includeOthersInSocialGroupAssets = a3;
  }
}

- (void)setFilterPredicate:(id)a3
{
  v9 = a3;
  v4 = self->_filterPredicate;
  filterPredicate = v4;
  if (v4 != v9)
  {
    v6 = [(NSPredicate *)v4 isEqual:v9];

    v7 = v9;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = v9;
    filterPredicate = self->_filterPredicate;
    self->_filterPredicate = v8;
  }

  v7 = v9;
LABEL_5:
}

- (void)waitForAvailabilityOfAsset:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19 = *PXSimpleIndexPathNull;
  v20 = *&PXSimpleIndexPathNull[16];
  v10 = [(PXSectionedObjectReference *)[PXAssetReference alloc] initWithSectionObject:0 itemObject:v8 subitemObject:0 indexPath:&v19];
  *&v19 = 0;
  *(&v19 + 1) = &v19;
  *&v20 = 0x3032000000;
  *(&v20 + 1) = __Block_byref_object_copy__12798;
  v21 = __Block_byref_object_dispose__12799;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__PXAssetsDataSourceManager_waitForAvailabilityOfAsset_timeout_completionHandler___block_invoke;
  v16[3] = &unk_1E7BB75C0;
  v18 = &v19;
  v11 = v10;
  v17 = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__PXAssetsDataSourceManager_waitForAvailabilityOfAsset_timeout_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7BB75E8;
  v12 = v9;
  v14 = v12;
  v15 = &v19;
  [(PXSectionedDataSourceManager *)self waitForCondition:v16 timeout:v13 completionHandler:a4];

  _Block_object_dispose(&v19, 8);
}

BOOL __82__PXAssetsDataSourceManager_waitForAvailabilityOfAsset_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 assetReferenceForAssetReference:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (void)_performIfStartingSectionIsEmpty:(id)a3
{
  v7 = a3;
  v4 = [(PXSectionedDataSourceManager *)self dataSource];
  v5 = [v4 startingSection];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    if (![v4 numberOfItemsInSection:v5])
    {
      v7[2](v7, v4, v6);
    }
  }
}

- (void)ensureStartingSectionHasContent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__PXAssetsDataSourceManager_ensureStartingSectionHasContent__block_invoke;
  v2[3] = &unk_1E7BB7598;
  v2[4] = self;
  [(PXAssetsDataSourceManager *)self _performIfStartingSectionIsEmpty:v2];
}

uint64_t __60__PXAssetsDataSourceManager_ensureStartingSectionHasContent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PXAssetsDataSourceManager_ensureStartingSectionHasContent__block_invoke_2;
  v5[3] = &__block_descriptor_40_e44_v16__0___PXMutableAssetsDataSourceManager__8l;
  v5[4] = a3;
  return [v3 performChanges:v5];
}

- (BOOL)isLoadingInitialDataSource
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PXAssetsDataSourceManager_isLoadingInitialDataSource__block_invoke;
  v4[3] = &unk_1E7BB7570;
  v4[4] = &v5;
  [(PXAssetsDataSourceManager *)self _performIfStartingSectionIsEmpty:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __55__PXAssetsDataSourceManager_isLoadingInitialDataSource__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isSectionConsideredAccurate:?];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)forceAccurateAllSectionsIfNeeded
{
  v2 = self;
  v3 = MEMORY[0x1E696AC90];
  v4 = [(PXSectionedDataSourceManager *)self dataSource];
  v5 = [v3 indexSetWithIndexesInRange:{0, objc_msgSend(v4, "numberOfSections")}];

  LOBYTE(v2) = [(PXAssetsDataSourceManager *)v2 forceAccurateSectionsIfNeeded:v5];
  return v2;
}

- (void)setCurationEnabled:(BOOL)a3 forAssetCollection:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXAssetsDataSourceManager.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetsDataSourceManager setCurationEnabled:forAssetCollection:]", v9}];

  abort();
}

- (void)setCurationEnabledForAllCollections:(BOOL)a3 curationLength:(int64_t)a4 collectionsToDiff:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v8 handleFailureInMethod:a2 object:self file:@"PXAssetsDataSourceManager.m" lineNumber:32 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetsDataSourceManager setCurationEnabledForAllCollections:curationLength:collectionsToDiff:]", v10}];

  abort();
}

- (void)unregisterChangeObserver:(id)a3 context:(void *)a4
{
  v4.receiver = self;
  v4.super_class = PXAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 unregisterChangeObserver:a3 context:a4];
}

- (void)registerChangeObserver:(id)a3 context:(void *)a4
{
  v4.receiver = self;
  v4.super_class = PXAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 registerChangeObserver:a3 context:a4];
}

@end