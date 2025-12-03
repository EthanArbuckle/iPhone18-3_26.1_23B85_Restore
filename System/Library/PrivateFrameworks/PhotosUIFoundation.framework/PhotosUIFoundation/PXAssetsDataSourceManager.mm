@interface PXAssetsDataSourceManager
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)isLoadingInitialDataSource;
- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier;
- (void)_performIfStartingSectionIsEmpty:(id)empty;
- (void)ensureLastSectionHasContent;
- (void)ensureStartingSectionHasContent;
- (void)registerChangeObserver:(id)observer context:(void *)context;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading;
- (void)setCurationEnabled:(BOOL)enabled forAssetCollection:(id)collection;
- (void)setCurationEnabledForAllCollections:(BOOL)collections curationLength:(int64_t)length collectionsToDiff:(id)diff;
- (void)setFilterPredicate:(id)predicate;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets;
- (void)unregisterChangeObserver:(id)observer context:(void *)context;
- (void)waitForAvailabilityOfAsset:(id)asset timeout:(double)timeout completionHandler:(id)handler;
@end

@implementation PXAssetsDataSourceManager

- (void)ensureLastSectionHasContent
{
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  v5 = numberOfSections - 1;
  if (numberOfSections >= 1)
  {
    dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
    v7 = [dataSource2 numberOfItemsInSection:v5];

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

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading
{
  v3.receiver = self;
  v3.super_class = PXAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v3 resumeChangeDeliveryAndBackgroundLoading:loading];
}

- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PXAssetsDataSourceManager;
  v4 = [(PXSectionedDataSourceManager *)&v6 pauseChangeDeliveryWithTimeout:identifier identifier:timeout];

  return v4;
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets
{
  if (self->_includeOthersInSocialGroupAssets != assets)
  {
    self->_includeOthersInSocialGroupAssets = assets;
  }
}

- (void)setFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = self->_filterPredicate;
  filterPredicate = v4;
  if (v4 != predicateCopy)
  {
    v6 = [(NSPredicate *)v4 isEqual:predicateCopy];

    v7 = predicateCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    v8 = predicateCopy;
    filterPredicate = self->_filterPredicate;
    self->_filterPredicate = v8;
  }

  v7 = predicateCopy;
LABEL_5:
}

- (void)waitForAvailabilityOfAsset:(id)asset timeout:(double)timeout completionHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v19 = *PXSimpleIndexPathNull;
  v20 = *&PXSimpleIndexPathNull[16];
  v10 = [(PXSectionedObjectReference *)[PXAssetReference alloc] initWithSectionObject:0 itemObject:assetCopy subitemObject:0 indexPath:&v19];
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
  v12 = handlerCopy;
  v14 = v12;
  v15 = &v19;
  [(PXSectionedDataSourceManager *)self waitForCondition:v16 timeout:v13 completionHandler:timeout];

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

- (void)_performIfStartingSectionIsEmpty:(id)empty
{
  emptyCopy = empty;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  startingSection = [dataSource startingSection];
  if (startingSection != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = startingSection;
    if (![dataSource numberOfItemsInSection:startingSection])
    {
      emptyCopy[2](emptyCopy, dataSource, v6);
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
  selfCopy = self;
  v3 = MEMORY[0x1E696AC90];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  v5 = [v3 indexSetWithIndexesInRange:{0, objc_msgSend(dataSource, "numberOfSections")}];

  LOBYTE(selfCopy) = [(PXAssetsDataSourceManager *)selfCopy forceAccurateSectionsIfNeeded:v5];
  return selfCopy;
}

- (void)setCurationEnabled:(BOOL)enabled forAssetCollection:(id)collection
{
  collectionCopy = collection;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsDataSourceManager.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetsDataSourceManager setCurationEnabled:forAssetCollection:]", v9}];

  abort();
}

- (void)setCurationEnabledForAllCollections:(BOOL)collections curationLength:(int64_t)length collectionsToDiff:(id)diff
{
  diffCopy = diff;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsDataSourceManager.m" lineNumber:32 description:{@"Method %s is a responsibility of subclass %@", "-[PXAssetsDataSourceManager setCurationEnabledForAllCollections:curationLength:collectionsToDiff:]", v10}];

  abort();
}

- (void)unregisterChangeObserver:(id)observer context:(void *)context
{
  v4.receiver = self;
  v4.super_class = PXAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 unregisterChangeObserver:observer context:context];
}

- (void)registerChangeObserver:(id)observer context:(void *)context
{
  v4.receiver = self;
  v4.super_class = PXAssetsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v4 registerChangeObserver:observer context:context];
}

@end