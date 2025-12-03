@interface PXSwitchableAssetsDataSourceManager
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)forceAccurateSection:(int64_t)section andSectionsBeforeAndAfter:(int64_t)after;
- (BOOL)forceAccurateSectionsIfNeeded:(id)needed;
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
- (PXSwitchableAssetsDataSourceManager)initWithDataSourceManagerByKey:(id)key currentKey:(id)currentKey;
- (id)createDataSourceManagerForAsset:(id)asset;
- (id)createDataSourceManagerForAssetsInSectionOfAsset:(id)asset usingNewTransientAssetCollection:(BOOL)collection;
- (id)createInitialDataSource;
- (id)createReverselySortedDataSourceManager;
- (id)filterPredicate;
- (id)localizedEmptyPlaceholderAttributedMessage;
- (id)localizedEmptyPlaceholderTitle;
- (id)localizedLoadingInitialDataSourceMessage;
- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier;
- (id)sharedLibraryStatusProvider;
- (id)sortDescriptors;
- (int64_t)backgroundFetchOriginSection;
- (void)_enumerateAllDataSourceManagers:(id)managers;
- (void)_invalidateCurrentDataSource;
- (void)_updateCurrentDataSource;
- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)fetching;
- (void)assetsDataSourceManagerDidFinishLoadingInitialDataSource:(id)source;
- (void)didPerformChanges;
- (void)ensureLastSectionHasContent;
- (void)ensureStartingSectionHasContent;
- (void)excludeAssetsAtIndexPaths:(id)paths;
- (void)forceIncludeAssetsAtIndexPaths:(id)paths;
- (void)markContentAsViewed;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)refreshResultsForAssetCollection:(id)collection;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading;
- (void)setAllowedUUIDs:(id)ds;
- (void)setAllowedUUIDs:(id)ds manualOrderUUIDs:(id)iDs forAssetCollections:(id)collections;
- (void)setAllowedUUIDs:(id)ds provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setBackgroundFetchOriginSection:(int64_t)section;
- (void)setCurationEnabled:(BOOL)enabled forAssetCollection:(id)collection;
- (void)setCurationEnabledForAllCollections:(BOOL)collections curationLength:(int64_t)length collectionsToDiff:(id)diff;
- (void)setCurrentKey:(id)key;
- (void)setFilterPredicate:(id)predicate;
- (void)setFilterPredicate:(id)predicate provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setFilteringDisabled:(BOOL)disabled forAssetCollection:(id)collection;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setReverseSortOrder:(BOOL)order;
- (void)setSortDescriptors:(id)descriptors;
- (void)stopExcludingAssets:(id)assets;
- (void)waitForAvailabilityOfAsset:(id)asset timeout:(double)timeout completionHandler:(id)handler;
@end

@implementation PXSwitchableAssetsDataSourceManager

- (void)assetsDataSourceManagerDidFinishLoadingInitialDataSource:(id)source
{
  sourceCopy = source;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];

  if (currentDataSourceManager == sourceCopy)
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

- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)fetching
{
  fetchingCopy = fetching;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];

  if (currentDataSourceManager == fetchingCopy)
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXChildDataSourceManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:357 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
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
  currentDataSource = [(PXSwitchableAssetsDataSourceManager *)self currentDataSource];
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  dataSource = [currentDataSourceManager dataSource];
  [(PXSwitchableAssetsDataSourceManager *)self setCurrentDataSource:dataSource];
  currentKey = [(PXSwitchableAssetsDataSourceManager *)self currentKey];
  [(PXSwitchableAssetsDataSourceManager *)self setCurrentDataSourceKey:currentKey];

  if (currentDataSource != dataSource && ([currentDataSource isEqual:dataSource] & 1) == 0)
  {
    changeHistory = [currentDataSourceManager changeHistory];
    v7 = [changeHistory changeDetailsFromDataSourceIdentifier:objc_msgSend(currentDataSource toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource, "identifier")}];

    [(PXSectionedDataSourceManager *)self setDataSource:dataSource changeDetailsArray:v7];
  }
}

- (void)_invalidateCurrentDataSource
{
  updater = [(PXSwitchableAssetsDataSourceManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentDataSource];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXSwitchableAssetsDataSourceManager;
  [(PXSwitchableAssetsDataSourceManager *)&v4 didPerformChanges];
  updater = [(PXSwitchableAssetsDataSourceManager *)self updater];
  [updater updateIfNeeded];
}

- (void)_enumerateAllDataSourceManagers:(id)managers
{
  managersCopy = managers;
  dataSourceManagerByKey = self->_dataSourceManagerByKey;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PXSwitchableAssetsDataSourceManager__enumerateAllDataSourceManagers___block_invoke;
  v7[3] = &unk_1E7732ED8;
  v8 = managersCopy;
  v6 = managersCopy;
  [(NSDictionary *)dataSourceManagerByKey enumerateKeysAndObjectsUsingBlock:v7];
}

- (PXAssetsDataSourceManager)currentDataSourceManager
{
  dataSourceManagerByKey = self->_dataSourceManagerByKey;
  currentKey = [(PXSwitchableAssetsDataSourceManager *)self currentKey];
  v4 = [(NSDictionary *)dataSourceManagerByKey objectForKeyedSubscript:currentKey];

  return v4;
}

- (void)setAllowedUUIDs:(id)ds manualOrderUUIDs:(id)iDs forAssetCollections:(id)collections
{
  collectionsCopy = collections;
  iDsCopy = iDs;
  dsCopy = ds;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setAllowedUUIDs:dsCopy manualOrderUUIDs:iDsCopy forAssetCollections:collectionsCopy];
}

- (void)setAllowedUUIDs:(id)ds provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  collectionsCopy = collections;
  dsCopy = ds;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setAllowedUUIDs:dsCopy provideIncrementalChangeDetailsForAssetCollections:collectionsCopy];
}

- (void)setAllowedUUIDs:(id)ds
{
  dsCopy = ds;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setAllowedUUIDs:dsCopy];
}

- (void)setFilteringDisabled:(BOOL)disabled forAssetCollection:(id)collection
{
  disabledCopy = disabled;
  collectionCopy = collection;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setFilteringDisabled:disabledCopy forAssetCollection:collectionCopy];
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  assetsCopy = assets;
  collectionsCopy = collections;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setIncludeOthersInSocialGroupAssets:assetsCopy provideIncrementalChangeDetailsForAssetCollections:collectionsCopy];
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets
{
  assetsCopy = assets;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setIncludeOthersInSocialGroupAssets:assetsCopy];
}

- (void)setFilterPredicate:(id)predicate provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  collectionsCopy = collections;
  predicateCopy = predicate;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setFilterPredicate:predicateCopy provideIncrementalChangeDetailsForAssetCollections:collectionsCopy];
}

- (void)setReverseSortOrder:(BOOL)order
{
  orderCopy = order;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setReverseSortOrder:orderCopy];
}

- (void)setSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setSortDescriptors:descriptorsCopy];
}

- (void)setFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setFilterPredicate:predicateCopy];
}

- (void)refreshResultsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager refreshResultsForAssetCollection:collectionCopy];
}

- (void)stopExcludingAssets:(id)assets
{
  assetsCopy = assets;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager stopExcludingAssets:assetsCopy];
}

- (void)excludeAssetsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager excludeAssetsAtIndexPaths:pathsCopy];
}

- (void)forceIncludeAssetsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager forceIncludeAssetsAtIndexPaths:pathsCopy];
}

- (int64_t)backgroundFetchOriginSection
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  backgroundFetchOriginSection = [currentDataSourceManager backgroundFetchOriginSection];

  return backgroundFetchOriginSection;
}

- (void)setBackgroundFetchOriginSection:(int64_t)section
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setBackgroundFetchOriginSection:section];
}

- (void)ensureStartingSectionHasContent
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager ensureStartingSectionHasContent];
}

- (void)ensureLastSectionHasContent
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager ensureLastSectionHasContent];
}

- (BOOL)forceAccurateSection:(int64_t)section andSectionsBeforeAndAfter:(int64_t)after
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  LOBYTE(after) = [currentDataSourceManager forceAccurateSection:section andSectionsBeforeAndAfter:after];

  return after;
}

- (BOOL)forceAccurateSectionsIfNeeded:(id)needed
{
  neededCopy = needed;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v6 = [currentDataSourceManager forceAccurateSectionsIfNeeded:neededCopy];

  return v6;
}

- (BOOL)forceAccurateAllSectionsIfNeeded
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  forceAccurateAllSectionsIfNeeded = [currentDataSourceManager forceAccurateAllSectionsIfNeeded];

  return forceAccurateAllSectionsIfNeeded;
}

- (void)setCurationEnabled:(BOOL)enabled forAssetCollection:(id)collection
{
  enabledCopy = enabled;
  collectionCopy = collection;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setCurationEnabled:enabledCopy forAssetCollection:collectionCopy];
}

- (void)setCurationEnabledForAllCollections:(BOOL)collections curationLength:(int64_t)length collectionsToDiff:(id)diff
{
  collectionsCopy = collections;
  diffCopy = diff;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager setCurationEnabledForAllCollections:collectionsCopy curationLength:length collectionsToDiff:diffCopy];
}

- (void)markContentAsViewed
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager markContentAsViewed];
}

- (id)createReverselySortedDataSourceManager
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  createReverselySortedDataSourceManager = [currentDataSourceManager createReverselySortedDataSourceManager];

  return createReverselySortedDataSourceManager;
}

- (id)createDataSourceManagerForAsset:(id)asset
{
  assetCopy = asset;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v6 = [currentDataSourceManager createDataSourceManagerForAsset:assetCopy];

  return v6;
}

- (id)createDataSourceManagerForAssetsInSectionOfAsset:(id)asset usingNewTransientAssetCollection:(BOOL)collection
{
  collectionCopy = collection;
  assetCopy = asset;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v8 = [currentDataSourceManager createDataSourceManagerForAssetsInSectionOfAsset:assetCopy usingNewTransientAssetCollection:collectionCopy];

  return v8;
}

- (void)waitForAvailabilityOfAsset:(id)asset timeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  [currentDataSourceManager waitForAvailabilityOfAsset:assetCopy timeout:handlerCopy completionHandler:timeout];
}

- (BOOL)isReverseSortOrder
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  isReverseSortOrder = [currentDataSourceManager isReverseSortOrder];

  return isReverseSortOrder;
}

- (id)sortDescriptors
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  sortDescriptors = [currentDataSourceManager sortDescriptors];

  return sortDescriptors;
}

- (BOOL)includeOthersInSocialGroupAssets
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  includeOthersInSocialGroupAssets = [currentDataSourceManager includeOthersInSocialGroupAssets];

  return includeOthersInSocialGroupAssets;
}

- (id)filterPredicate
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  filterPredicate = [currentDataSourceManager filterPredicate];

  return filterPredicate;
}

- (BOOL)supportsFiltering
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  supportsFiltering = [currentDataSourceManager supportsFiltering];

  return supportsFiltering;
}

- (BOOL)supportsCurationToggling
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  supportsCurationToggling = [currentDataSourceManager supportsCurationToggling];

  return supportsCurationToggling;
}

- (BOOL)isBackgroundFetching
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  isBackgroundFetching = [currentDataSourceManager isBackgroundFetching];

  return isBackgroundFetching;
}

- (BOOL)isLoadingInitialDataSource
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  isLoadingInitialDataSource = [currentDataSourceManager isLoadingInitialDataSource];

  return isLoadingInitialDataSource;
}

- (id)localizedLoadingInitialDataSourceMessage
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  localizedLoadingInitialDataSourceMessage = [currentDataSourceManager localizedLoadingInitialDataSourceMessage];

  return localizedLoadingInitialDataSourceMessage;
}

- (id)localizedEmptyPlaceholderAttributedMessage
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  localizedEmptyPlaceholderAttributedMessage = [currentDataSourceManager localizedEmptyPlaceholderAttributedMessage];

  return localizedEmptyPlaceholderAttributedMessage;
}

- (id)localizedEmptyPlaceholderTitle
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  localizedEmptyPlaceholderTitle = [currentDataSourceManager localizedEmptyPlaceholderTitle];

  return localizedEmptyPlaceholderTitle;
}

- (id)sharedLibraryStatusProvider
{
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  if (objc_opt_respondsToSelector())
  {
    sharedLibraryStatusProvider = [currentDataSourceManager sharedLibraryStatusProvider];
    if (sharedLibraryStatusProvider)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        px_descriptionForAssertionMessage = [sharedLibraryStatusProvider px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:128 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[(id<_PXStatusProviderWorkaround>)currentDataSourceManager sharedLibraryStatusProvider]", v8, px_descriptionForAssertionMessage}];
      }
    }
  }

  else
  {
    sharedLibraryStatusProvider = 0;
  }

  return sharedLibraryStatusProvider;
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading
{
  loadingCopy = loading;
  if (!loadingCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"token", v8}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    px_descriptionForAssertionMessage = [loadingCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:112 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"token", v8, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PXSwitchableAssetsDataSourceManager_resumeChangeDeliveryAndBackgroundLoading___block_invoke;
  v11[3] = &unk_1E7732E90;
  v11[4] = self;
  [loadingCopy enumerateKeysAndObjectsUsingBlock:v11];
}

void __80__PXSwitchableAssetsDataSourceManager_resumeChangeDeliveryAndBackgroundLoading___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 dataSourceManagerForKey:a2];
  [v6 resumeChangeDeliveryAndBackgroundLoading:v5];
}

- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PXSwitchableAssetsDataSourceManager_pauseChangeDeliveryWithTimeout_identifier___block_invoke;
  v13[3] = &unk_1E7732E68;
  v8 = v7;
  timeoutCopy = timeout;
  v14 = v8;
  v15 = identifierCopy;
  v9 = identifierCopy;
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
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  dataSource = [currentDataSourceManager dataSource];

  objc_storeStrong(&self->_currentDataSource, dataSource);

  return dataSource;
}

- (PXPhotosViewLens)currentLens
{
  currentKey = [(PXSwitchableAssetsDataSourceManager *)self currentKey];
  if (currentKey)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      px_descriptionForAssertionMessage = [currentKey px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:86 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.currentKey", v8, px_descriptionForAssertionMessage}];
    }
  }

  return currentKey;
}

- (void)setCurrentKey:(id)key
{
  keyCopy = key;
  v6 = self->_currentKey;
  v7 = v6;
  if (v6 == keyCopy)
  {
  }

  else
  {
    v8 = [(NSCopying *)v6 isEqual:keyCopy];

    if ((v8 & 1) == 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__PXSwitchableAssetsDataSourceManager_setCurrentKey___block_invoke;
      v9[3] = &unk_1E7732E40;
      v9[4] = self;
      v10 = keyCopy;
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
  currentDataSourceManager = [(PXSwitchableAssetsDataSourceManager *)self currentDataSourceManager];
  v7 = [v3 stringWithFormat:@"<%@:%p currentDataSourceManager:%@>", v5, self, currentDataSourceManager];;

  return v7;
}

- (PXSwitchableAssetsDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:55 description:{@"%s is not available as initializer", "-[PXSwitchableAssetsDataSourceManager init]"}];

  abort();
}

- (PXSwitchableAssetsDataSourceManager)initWithDataSourceManagerByKey:(id)key currentKey:(id)currentKey
{
  v34 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  currentKeyCopy = currentKey;
  v32.receiver = self;
  v32.super_class = PXSwitchableAssetsDataSourceManager;
  v9 = [(PXSectionedDataSourceManager *)&v32 init];
  if (!v9)
  {
    goto LABEL_12;
  }

  if (![keyCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"dataSourceManagers.count >= 1"}];

    if (currentKeyCopy)
    {
      goto LABEL_4;
    }

LABEL_14:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v9 file:@"PXSwitchableAssetsDataSourceManager.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"currentKey != nil"}];

    goto LABEL_4;
  }

  if (!currentKeyCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = [keyCopy copy];
  dataSourceManagerByKey = v9->_dataSourceManagerByKey;
  v9->_dataSourceManagerByKey = v10;

  v12 = [currentKeyCopy copyWithZone:0];
  currentKey = v9->_currentKey;
  v9->_currentKey = v12;

  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  allKeys = [keyCopy allKeys];
  v16 = [v14 initWithArray:allKeys];
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
  allValues = [keyCopy allValues];
  v21 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v28 + 1) + 8 * v24++) registerChangeObserver:v9 context:PXChildDataSourceManagerObservationContext];
      }

      while (v22 != v24);
      v22 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

LABEL_12:
  return v9;
}

@end