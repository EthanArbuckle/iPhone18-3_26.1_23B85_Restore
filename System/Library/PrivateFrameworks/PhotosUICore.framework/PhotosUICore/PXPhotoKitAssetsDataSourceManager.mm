@interface PXPhotoKitAssetsDataSourceManager
+ (BOOL)_includeUnsavedSyndicatedAssetsForAssetCollection:(id)collection photoLibrary:(id)library;
+ (BOOL)_shouldIncludeSharedCollectionAssetsForAssetCollection:(id)collection;
+ (PXPhotoKitAssetsDataSourceManager)dataSourceManagerWithAsset:(id)asset options:(unint64_t)options;
+ (PXPhotoKitAssetsDataSourceManager)dataSourceManagerWithAssets:(id)assets containerTitle:(id)title options:(unint64_t)options;
+ (id)dataSourceManagerForAssetCollection:(id)collection configuration:(id)configuration;
+ (id)dataSourceManagerForAssetCollection:(id)collection existingAssetsFetchResult:(id)result existingKeyAssetsFetchResult:(id)fetchResult fetchPropertySets:(id)sets basePredicate:(id)predicate options:(unint64_t)options ignoreSharedLibraryFilters:(BOOL)filters reverseSortOrder:(BOOL)self0;
- (BOOL)forceAccurateSection:(int64_t)section andSectionsBeforeAndAfter:(int64_t)after;
- (BOOL)forceAccurateSectionsIfNeeded:(id)needed;
- (BOOL)includeAllBurstAssets;
- (BOOL)includeOthersInSocialGroupAssets;
- (BOOL)isBackgroundFetching;
- (BOOL)isLoadingInitialDataSource;
- (BOOL)isReverseSortOrder;
- (BOOL)supportsCurationToggling;
- (NSArray)sortDescriptors;
- (NSPredicate)filterPredicate;
- (PHPhotoLibrary)photoLibrary;
- (PXPhotoKitAssetsDataSourceManager)init;
- (PXPhotoKitAssetsDataSourceManager)initWithPhotosDataSource:(id)source;
- (PXPhotoKitAssetsDataSourceManager)initWithPhotosDataSourceProvider:(id)provider;
- (PXPhotosDataSource)photosDataSource;
- (id)_createAssetsDataSourceWithPhotosDataSource:(id)source withChangeDetails:(id)details;
- (id)createDataSourceManagerForAsset:(id)asset;
- (id)createDataSourceManagerForAssetsInSectionOfAsset:(id)asset usingNewTransientAssetCollection:(BOOL)collection;
- (id)createInitialDataSource;
- (id)createReverselySortedDataSourceManager;
- (id)localizedEmptyPlaceholderAttributedMessage;
- (id)localizedEmptyPlaceholderTitle;
- (id)localizedLoadingInitialDataSourceMessage;
- (id)photosDataSourceInterestingAssetReferences:(id)references;
- (id)px_sharedLibrarySharingSuggestionsCountsManager;
- (id)sharedLibraryStatusProvider;
- (int64_t)backgroundFetchOriginSection;
- (void)_didFinishLoadingInitialPhotosDataSource;
- (void)_ensurePhotosDataSource;
- (void)_markFeaturedPhotosAsViewed;
- (void)_setLoadingInitialPhotosDataSource:(BOOL)source;
- (void)dealloc;
- (void)excludeAssetsAtIndexPaths:(id)paths;
- (void)forceIncludeAssetsAtIndexPaths:(id)paths;
- (void)markContentAsViewed;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosDataSource:(id)source didChange:(id)change;
- (void)photosDataSourceDidFinishBackgroundFetching:(id)fetching;
- (void)refreshResultsForAssetCollection:(id)collection;
- (void)setAllowedUUIDs:(id)ds;
- (void)setAllowedUUIDs:(id)ds manualOrderUUIDs:(id)iDs forAssetCollections:(id)collections;
- (void)setAllowedUUIDs:(id)ds provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setBackgroundFetchOriginSection:(int64_t)section;
- (void)setCurationEnabled:(BOOL)enabled forAssetCollection:(id)collection;
- (void)setCurationEnabledForAllCollections:(BOOL)collections curationLength:(int64_t)length collectionsToDiff:(id)diff;
- (void)setFilterPredicate:(id)predicate provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setFilteringDisabled:(BOOL)disabled forAssetCollection:(id)collection;
- (void)setIncludeAllBurstAssets:(BOOL)assets;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setLibraryFilter:(int64_t)filter;
- (void)setPhotosDataSource:(id)source changeDetails:(id)details;
- (void)setPhotosDataSource:(id)source publishIntermediateEmptySnapshot:(BOOL)snapshot;
- (void)setReverseSortOrder:(BOOL)order;
- (void)setSortDescriptors:(id)descriptors;
- (void)startBackgroundFetchIfNeeded;
- (void)stopExcludingAssets:(id)assets;
- (void)stopForceIncludingAllAssets;
- (void)updateWithPhotosDataSource:(id)source andDataSourceChange:(id)change;
- (void)updateWithPhotosDataSource:(id)source sectionedDataSourceChangeDetails:(id)details;
@end

@implementation PXPhotoKitAssetsDataSourceManager

- (void)_ensurePhotosDataSource
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self->_photosDataSource)
  {
    photosDataSourceProvider = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceProvider];
    v4 = [photosDataSourceProvider createInitialPhotosDataSourceForDataSourceManager:self];
    filterPredicate = [v4 filterPredicate];
    v6 = filterPredicate;
    if (filterPredicate == self->_filterPredicate)
    {
    }

    else
    {
      v7 = [(NSPredicate *)filterPredicate isEqual:?];

      if ((v7 & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    sortDescriptors = [v4 sortDescriptors];
    v9 = sortDescriptors;
    if (sortDescriptors == self->_sortDescriptors)
    {
    }

    else
    {
      v10 = [(NSArray *)sortDescriptors isEqual:?];

      if ((v10 & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    libraryFilter = [v4 libraryFilter];
    if (libraryFilter != [(PXPhotoKitAssetsDataSourceManager *)self libraryFilter])
    {
      PXAssertGetLog();
    }

    photoLibrary = [v4 photoLibrary];
    v13 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:photoLibrary];
    contentSyndicationConfigurationProvider = self->_contentSyndicationConfigurationProvider;
    self->_contentSyndicationConfigurationProvider = v13;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(PXContentSyndicationConfigurationProvider *)self->_contentSyndicationConfigurationProvider registerChangeObserver:self context:PXContentSyndicationConfigurationObservationContext];
    }

    [v4 registerChangeObserver:self];
    backgroundFetchOriginSection = self->_backgroundFetchOriginSection;
    if (backgroundFetchOriginSection)
    {
      [v4 setBackgroundFetchOriginSection:{-[NSNumber integerValue](backgroundFetchOriginSection, "integerValue")}];
      v16 = self->_backgroundFetchOriginSection;
      self->_backgroundFetchOriginSection = 0;
    }

    objc_storeStrong(&self->_photosDataSource, v4);
    if (objc_opt_respondsToSelector())
    {
      if (!self->_initialDataSourceLoadingQueue)
      {
        v17 = dispatch_queue_create("Initial Data Source Loading Queue", 0);
        initialDataSourceLoadingQueue = self->_initialDataSourceLoadingQueue;
        self->_initialDataSourceLoadingQueue = v17;
      }

      [(PXPhotoKitAssetsDataSourceManager *)self _setLoadingInitialPhotosDataSource:1];
      photosDataSourceProvider2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceProvider];
      if (objc_opt_respondsToSelector())
      {
        v20 = [photosDataSourceProvider2 localizedInitialLoadingStatusMessageForDataSourceManager:self];
        localizedLoadingInitialDataSourceMessage = self->_localizedLoadingInitialDataSourceMessage;
        self->_localizedLoadingInitialDataSourceMessage = v20;
      }

      v22 = self->_initialDataSourceLoadingQueue;
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __60__PXPhotoKitAssetsDataSourceManager__ensurePhotosDataSource__block_invoke;
      v27 = &unk_1E774C620;
      v28 = photosDataSourceProvider2;
      selfCopy = self;
      v23 = photosDataSourceProvider2;
      dispatch_async(v22, &v24);
    }

    [(PXPhotoKitAssetsDataSourceManager *)self setPhotosDataSourceProvider:0, v24, v25, v26, v27];
  }
}

- (PXPhotosDataSource)photosDataSource
{
  [(PXPhotoKitAssetsDataSourceManager *)self _ensurePhotosDataSource];
  photosDataSource = self->_photosDataSource;

  return photosDataSource;
}

- (NSPredicate)filterPredicate
{
  photosDataSourceIfExists = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v4 = photosDataSourceIfExists;
  if (photosDataSourceIfExists)
  {
    filterPredicate = [photosDataSourceIfExists filterPredicate];
  }

  else
  {
    filterPredicate = self->_filterPredicate;
  }

  v6 = filterPredicate;

  return v6;
}

- (id)createInitialDataSource
{
  [(PXPhotoKitAssetsDataSourceManager *)self _ensurePhotosDataSource];
  photosDataSource = self->_photosDataSource;

  return [(PXPhotoKitAssetsDataSourceManager *)self _createAssetsDataSourceWithPhotosDataSource:photosDataSource withChangeDetails:0];
}

- (NSArray)sortDescriptors
{
  photosDataSourceIfExists = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v4 = photosDataSourceIfExists;
  if (photosDataSourceIfExists)
  {
    sortDescriptors = [photosDataSourceIfExists sortDescriptors];
  }

  else
  {
    sortDescriptors = self->_sortDescriptors;
  }

  v6 = sortDescriptors;

  return v6;
}

- (BOOL)isBackgroundFetching
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  if ([photosDataSource isBackgroundFetching])
  {
    LOBYTE(v3) = 1;
  }

  else if (([photosDataSource options] & 0x10000) != 0 && objc_msgSend(photosDataSource, "isEmpty"))
  {
    v3 = [photosDataSource areAllSectionsConsideredAccurate] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)startBackgroundFetchIfNeeded
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource startBackgroundFetchIfNeeded];
}

- (void)_didFinishLoadingInitialPhotosDataSource
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __77__PXPhotoKitAssetsDataSourceManager__didFinishLoadingInitialPhotosDataSource__block_invoke;
  v2[3] = &unk_1E7736828;
  v2[4] = self;
  [(PXPhotoKitAssetsDataSourceManager *)self enumerateObserversUsingBlock:v2];
}

void __77__PXPhotoKitAssetsDataSourceManager__didFinishLoadingInitialPhotosDataSource__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assetsDataSourceManagerDidFinishLoadingInitialDataSource:*(a1 + 32)];
  }
}

- (void)photosDataSourceDidFinishBackgroundFetching:(id)fetching
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PXPhotoKitAssetsDataSourceManager_photosDataSourceDidFinishBackgroundFetching___block_invoke;
  v3[3] = &unk_1E7736828;
  v3[4] = self;
  [(PXPhotoKitAssetsDataSourceManager *)self enumerateObserversUsingBlock:v3];
}

void __81__PXPhotoKitAssetsDataSourceManager_photosDataSourceDidFinishBackgroundFetching___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 assetsDataSourceManagerDidFinishBackgroundFetching:*(a1 + 32)];
  }
}

- (id)photosDataSourceInterestingAssetReferences:(id)references
{
  referencesCopy = references;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];

  if (photosDataSource == referencesCopy)
  {
    queryObserversInterestingObjectReferences = [(PXSectionedDataSourceManager *)self queryObserversInterestingObjectReferences];
    v8 = [queryObserversInterestingObjectReferences indexesOfObjectsPassingTest:&__block_literal_global_86911];
    v6 = [queryObserversInterestingObjectReferences objectsAtIndexes:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __80__PXPhotoKitAssetsDataSourceManager_photosDataSourceInterestingAssetReferences___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)photosDataSource:(id)source didChange:(id)change
{
  sourceCopy = source;
  changeCopy = change;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];

  if (photosDataSource == sourceCopy)
  {
    [(PXPhotoKitAssetsDataSourceManager *)self updateWithPhotosDataSource:sourceCopy andDataSourceChange:changeCopy];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXContentSyndicationConfigurationObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:668 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 5) != 0)
  {
    v14 = observableCopy;
    photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    containerAssetCollection = [photosDataSource containerAssetCollection];
    photoLibrary = [photosDataSource photoLibrary];
    [photosDataSource setCanIncludeUnsavedSyndicatedAssets:{+[PXPhotoKitAssetsDataSourceManager _includeUnsavedSyndicatedAssetsForAssetCollection:photoLibrary:](PXPhotoKitAssetsDataSourceManager, "_includeUnsavedSyndicatedAssetsForAssetCollection:photoLibrary:", containerAssetCollection, photoLibrary)}];

    [photosDataSource setIncludeSharedCollectionAssets:{+[PXPhotoKitAssetsDataSourceManager _shouldIncludeSharedCollectionAssetsForAssetCollection:](PXPhotoKitAssetsDataSourceManager, "_shouldIncludeSharedCollectionAssetsForAssetCollection:", containerAssetCollection)}];
    observableCopy = v14;
  }
}

- (void)_markFeaturedPhotosAsViewed
{
  photoLibrary = [(PXPhotoKitAssetsDataSourceManager *)self photoLibrary];
  photosDataSourceIfExists = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v5 = PXSharingFilterFromLibraryFilterViewMode([photosDataSourceIfExists libraryFilter]);

  v6 = dispatch_get_global_queue(21, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PXPhotoKitAssetsDataSourceManager__markFeaturedPhotosAsViewed__block_invoke;
  v8[3] = &unk_1E773E560;
  v9 = photoLibrary;
  v10 = v5;
  v7 = photoLibrary;
  dispatch_async(v6, v8);
}

void __64__PXPhotoKitAssetsDataSourceManager__markFeaturedPhotosAsViewed__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [PXPhotosIntelligenceFetcher fetchFeaturedPhotoSuggestionsInPhotoLibrary:*(a1 + 32) sharingFilter:*(a1 + 40)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (![v8 state])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PXPhotoKitAssetsDataSourceManager__markFeaturedPhotosAsViewed__block_invoke_2;
    v10[3] = &unk_1E774C648;
    v11 = v2;
    [v9 performChanges:v10 completionHandler:0];
  }
}

void __64__PXPhotoKitAssetsDataSourceManager__markFeaturedPhotosAsViewed__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 markActive];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)markContentAsViewed
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  containerCollection = [photosDataSource containerCollection];

  if ([containerCollection px_isFeaturedPhotosCollection])
  {
    [(PXPhotoKitAssetsDataSourceManager *)self _markFeaturedPhotosAsViewed];
  }

  photosDataSource2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  containerAssetCollection = [photosDataSource2 containerAssetCollection];

  if (containerAssetCollection)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [PXSharedAlbumsUtilities markSharedAlbumAsViewed:containerAssetCollection];
    }
  }
}

- (void)refreshResultsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource refetchResultsForAssetCollection:collectionCopy];
}

- (void)stopExcludingAssets:(id)assets
{
  assetsCopy = assets;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource stopExcludingAssets:assetsCopy];
}

- (void)excludeAssetsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource forceExcludeAssetsAtIndexes:pathsCopy];
}

- (void)stopForceIncludingAllAssets
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource stopForceIncludingAllAssets];
}

- (void)forceIncludeAssetsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource forceIncludeAssetsAtIndexes:pathsCopy];
}

- (id)localizedLoadingInitialDataSourceMessage
{
  v2 = [(NSString *)self->_localizedLoadingInitialDataSourceMessage copy];

  return v2;
}

- (id)localizedEmptyPlaceholderAttributedMessage
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  collectionListFetchResult = [photosDataSource collectionListFetchResult];

  if ([collectionListFetchResult count] || (-[PXPhotoKitAssetsDataSourceManager photosDataSource](self, "photosDataSource"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "containerCollection"), v7 = objc_claimAutoreleasedReturnValue(), PXPhotoKitLocalizedMessageForEmptyContainerCollection(v7), v5 = objc_claimAutoreleasedReturnValue(), v7, v6, !v5))
  {
    v5 = PXPhotoKitLocalizedMessageForEmptyCollectionListFetchResult(collectionListFetchResult, 0);
  }

  return v5;
}

- (id)localizedEmptyPlaceholderTitle
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  collectionListFetchResult = [photosDataSource collectionListFetchResult];
  if ([collectionListFetchResult count] || (objc_msgSend(photosDataSource, "containerCollection"), v8 = objc_claimAutoreleasedReturnValue(), PXPhotoKitLocalizedTitleForEmptyContainerCollection(v8), v7 = objc_claimAutoreleasedReturnValue(), v8, !v7))
  {
    container = [photosDataSource container];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([photosDataSource container], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "px_fetchEmptyContentString"), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
    {
      v7 = PXPhotoKitLocalizedTitleForEmptyCollectionListFetchResult(collectionListFetchResult, 0);
    }
  }

  return v7;
}

- (void)setReverseSortOrder:(BOOL)order
{
  orderCopy = order;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource setReverseSortOrder:orderCopy];
}

- (BOOL)isReverseSortOrder
{
  photosDataSourceIfExists = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v3 = photosDataSourceIfExists;
  if (photosDataSourceIfExists)
  {
    reverseSortOrder = [photosDataSourceIfExists reverseSortOrder];
  }

  else
  {
    reverseSortOrder = 0;
  }

  return reverseSortOrder;
}

- (void)setSortDescriptors:(id)descriptors
{
  sortDescriptors = descriptors;
  photosDataSourceIfExists = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v7 = photosDataSourceIfExists;
  if (photosDataSourceIfExists)
  {
    [photosDataSourceIfExists setSortDescriptors:sortDescriptors];
  }

  else
  {
    v6 = [(NSArray *)sortDescriptors copy];

    sortDescriptors = self->_sortDescriptors;
    self->_sortDescriptors = v6;
  }
}

- (void)setAllowedUUIDs:(id)ds manualOrderUUIDs:(id)iDs forAssetCollections:(id)collections
{
  collectionsCopy = collections;
  iDsCopy = iDs;
  dsCopy = ds;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource setAllowedUUIDs:dsCopy manualOrderUUIDs:iDsCopy forAssetCollections:collectionsCopy];
}

- (void)setAllowedUUIDs:(id)ds provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  collectionsCopy = collections;
  dsCopy = ds;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource setAllowedUUIDs:dsCopy provideIncrementalChangeDetailsForAssetCollections:collectionsCopy];
}

- (void)setAllowedUUIDs:(id)ds
{
  dsCopy = ds;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource setAllowedUUIDs:dsCopy];
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  assetsCopy = assets;
  collectionsCopy = collections;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  includeOthersInSocialGroupAssets = [photosDataSource includeOthersInSocialGroupAssets];

  if (includeOthersInSocialGroupAssets != assetsCopy)
  {
    photosDataSource2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    [photosDataSource2 setIncludeOthersInSocialGroupAssets:assetsCopy provideIncrementalChangeDetailsForAssetCollections:collectionsCopy];
  }
}

- (BOOL)includeOthersInSocialGroupAssets
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  includeOthersInSocialGroupAssets = [photosDataSource includeOthersInSocialGroupAssets];

  return includeOthersInSocialGroupAssets;
}

- (void)setFilteringDisabled:(BOOL)disabled forAssetCollection:(id)collection
{
  disabledCopy = disabled;
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource setDisableFilters:disabledCopy forAssetCollection:collectionCopy];
}

- (void)setFilterPredicate:(id)predicate provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  collectionsCopy = collections;
  filterPredicate = predicate;
  photosDataSourceIfExists = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v8 = photosDataSourceIfExists;
  if (photosDataSourceIfExists)
  {
    [photosDataSourceIfExists setFilterPredicate:filterPredicate provideIncrementalChangeDetailsForAssetCollections:collectionsCopy];
  }

  else
  {
    v9 = [(NSPredicate *)filterPredicate copy];

    filterPredicate = self->_filterPredicate;
    self->_filterPredicate = v9;
  }
}

- (BOOL)supportsCurationToggling
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  supportsCurationToggling = [photosDataSource supportsCurationToggling];

  return supportsCurationToggling;
}

- (void)setBackgroundFetchOriginSection:(int64_t)section
{
  photosDataSource = self->_photosDataSource;
  if (photosDataSource)
  {

    [(PXPhotosDataSource *)photosDataSource setBackgroundFetchOriginSection:section];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    backgroundFetchOriginSection = self->_backgroundFetchOriginSection;
    self->_backgroundFetchOriginSection = v5;
  }
}

- (int64_t)backgroundFetchOriginSection
{
  if (self->_photosDataSource)
  {
    return [(PXPhotosDataSource *)self->_photosDataSource backgroundFetchOriginSection];
  }

  else
  {
    return [(NSNumber *)self->_backgroundFetchOriginSection integerValue];
  }
}

- (BOOL)forceAccurateSection:(int64_t)section andSectionsBeforeAndAfter:(int64_t)after
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource setBackgroundFetchOriginSection:section];
  LOBYTE(after) = [photosDataSource forceAccurateSection:section andSectionsBeforeAndAfter:after];

  return after;
}

- (BOOL)forceAccurateSectionsIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy count])
  {
    photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    [photosDataSource setBackgroundFetchOriginSection:{objc_msgSend(neededCopy, "lastIndex")}];
    v6 = [photosDataSource forceAccurateSectionsIfNeeded:neededCopy reloadChanges:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCurationEnabled:(BOOL)enabled forAssetCollection:(id)collection
{
  enabledCopy = enabled;
  collectionCopy = collection;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource setWantsCuration:enabledCopy forAssetCollection:collectionCopy];
}

- (void)setCurationEnabledForAllCollections:(BOOL)collections curationLength:(int64_t)length collectionsToDiff:(id)diff
{
  collectionsCopy = collections;
  diffCopy = diff;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [photosDataSource setWantsCurationForAllCollections:collectionsCopy collectionsToDiff:diffCopy];

  [photosDataSource setWantsCurationByDefault:collectionsCopy];
  [photosDataSource setCurationLength:length];
}

- (id)sharedLibraryStatusProvider
{
  photoLibrary = [(PXPhotoKitAssetsDataSourceManager *)self photoLibrary];
  v3 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

  return v3;
}

- (PHPhotoLibrary)photoLibrary
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  photoLibrary = [photosDataSource photoLibrary];

  return photoLibrary;
}

- (void)setPhotosDataSource:(id)source publishIntermediateEmptySnapshot:(BOOL)snapshot
{
  sourceCopy = source;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != sourceCopy)
  {
    v10 = sourceCopy;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, source);
    [(PXPhotosDataSource *)self->_photosDataSource registerChangeObserver:self];
    if (snapshot || ![(PXPhotosDataSource *)v10 isEmpty]|| (v9 = [(PXPhotosDataSource *)v10 isBackgroundFetching], sourceCopy = v10, !v9))
    {
      [(PXPhotoKitAssetsDataSourceManager *)self updateWithPhotosDataSource:v10 andDataSourceChange:0];
      sourceCopy = v10;
    }
  }
}

- (void)setPhotosDataSource:(id)source changeDetails:(id)details
{
  sourceCopy = source;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != sourceCopy)
  {
    v10 = sourceCopy;
    detailsCopy = details;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, source);
    [(PXPhotosDataSource *)self->_photosDataSource registerChangeObserver:self];
    [(PXPhotoKitAssetsDataSourceManager *)self updateWithPhotosDataSource:v10 sectionedDataSourceChangeDetails:detailsCopy];

    sourceCopy = v10;
  }
}

- (void)updateWithPhotosDataSource:(id)source sectionedDataSourceChangeDetails:(id)details
{
  detailsCopy = details;
  v9 = detailsCopy;
  if (source)
  {
    v7 = [(PXPhotoKitAssetsDataSourceManager *)self _createAssetsDataSourceWithPhotosDataSource:source withChangeDetails:detailsCopy];
    v8 = v9;
    source = v7;
  }

  else
  {
    v8 = detailsCopy;
  }

  [(PXSectionedDataSourceManager *)self setDataSource:source changeDetails:v8];
}

- (void)updateWithPhotosDataSource:(id)source andDataSourceChange:(id)change
{
  sourceCopy = source;
  sectionedDataSourceChangeDetails = [change sectionedDataSourceChangeDetails];
  [(PXPhotoKitAssetsDataSourceManager *)self updateWithPhotosDataSource:sourceCopy sectionedDataSourceChangeDetails:sectionedDataSourceChangeDetails];
}

- (id)_createAssetsDataSourceWithPhotosDataSource:(id)source withChangeDetails:(id)details
{
  detailsCopy = details;
  immutableCopy = [source immutableCopy];
  v7 = [[PXPhotoKitAssetsDataSource alloc] initWithImmutablePhotosDataSource:immutableCopy withChangeDetails:detailsCopy];

  return v7;
}

- (void)setIncludeAllBurstAssets:(BOOL)assets
{
  assetsCopy = assets;
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  includeAllBurstAssets = [photosDataSource includeAllBurstAssets];

  if (includeAllBurstAssets != assetsCopy)
  {
    PXPreferencesSetIsStacksEnabled(assetsCopy);
    photosDataSource2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    [photosDataSource2 setIncludeAllBurstAssets:assetsCopy];
  }
}

- (BOOL)includeAllBurstAssets
{
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  includeAllBurstAssets = [photosDataSource includeAllBurstAssets];

  return includeAllBurstAssets;
}

- (void)setLibraryFilter:(int64_t)filter
{
  if (self->_libraryFilter != filter)
  {
    self->_libraryFilter = filter;
    [(PXPhotosDataSource *)self->_photosDataSource setLibraryFilter:?];
  }
}

- (void)_setLoadingInitialPhotosDataSource:(BOOL)source
{
  if (self->__isLoadingInitialPhotosDataSource != source)
  {
    self->__isLoadingInitialPhotosDataSource = source;
    if (!source)
    {
      [(PXPhotoKitAssetsDataSourceManager *)self _didFinishLoadingInitialPhotosDataSource];
    }
  }
}

- (BOOL)isLoadingInitialDataSource
{
  if ([(PXPhotoKitAssetsDataSourceManager *)self _isLoadingInitialPhotosDataSource])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PXPhotoKitAssetsDataSourceManager;
  return [(PXPhotoKitAssetsDataSourceManager *)&v4 isLoadingInitialDataSource];
}

void __60__PXPhotoKitAssetsDataSourceManager__ensurePhotosDataSource__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadInitialPhotosDataSourceForDataSourceManager:*(a1 + 40)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PXPhotoKitAssetsDataSourceManager__ensurePhotosDataSource__block_invoke_2;
  v5[3] = &unk_1E774C620;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __60__PXPhotoKitAssetsDataSourceManager__ensurePhotosDataSource__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBackgroundFetchOriginSection:{objc_msgSend(*(*(a1 + 40) + 168), "backgroundFetchOriginSection")}];
  if ([*(a1 + 32) isBackgroundFetching])
  {
    [*(a1 + 32) startBackgroundFetchIfNeeded];
  }

  [*(a1 + 40) _setLoadingInitialPhotosDataSource:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 setPhotosDataSource:v3 publishIntermediateEmptySnapshot:1];
}

- (id)createReverselySortedDataSourceManager
{
  v3 = [PXPhotoKitAssetsDataSourceManager alloc];
  photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  reversedCopy = [photosDataSource reversedCopy];
  v6 = [(PXPhotoKitAssetsDataSourceManager *)v3 initWithPhotosDataSource:reversedCopy];

  return v6;
}

- (id)createDataSourceManagerForAsset:(id)asset
{
  asset = [asset asset];
  if (asset)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      px_descriptionForAssertionMessage = [asset px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:243 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetReference.asset", v10, px_descriptionForAssertionMessage}];
    }

    v6 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerWithAsset:asset];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createDataSourceManagerForAssetsInSectionOfAsset:(id)asset usingNewTransientAssetCollection:(BOOL)collection
{
  if (asset)
  {
    collectionCopy = collection;
    assetCopy = asset;
    photosDataSource = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    v8 = [photosDataSource createDataSourceWithAssetsInSectionOfAsset:assetCopy usingNewTransientAssetCollection:collectionCopy];

    v9 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(PXPhotosDataSource *)self->_photosDataSource unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PXPhotoKitAssetsDataSourceManager;
  [(PXPhotoKitAssetsDataSourceManager *)&v3 dealloc];
}

- (PXPhotoKitAssetsDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:225 description:{@"%s is not available as initializer", "-[PXPhotoKitAssetsDataSourceManager init]"}];

  abort();
}

- (PXPhotoKitAssetsDataSourceManager)initWithPhotosDataSourceProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = PXPhotoKitAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPhotoKitAssetsDataSourceManager *)v5 setPhotosDataSourceProvider:providerCopy];
  }

  return v6;
}

- (PXPhotoKitAssetsDataSourceManager)initWithPhotosDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = PXPhotoKitAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPhotoKitAssetsDataSourceManager *)v5 setPhotosDataSource:sourceCopy];
  }

  return v6;
}

+ (BOOL)_shouldIncludeSharedCollectionAssetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  if (_os_feature_enabled_impl())
  {
    px_isCloudKitSharedAlbum = [collectionCopy px_isCloudKitSharedAlbum];
  }

  else
  {
    px_isCloudKitSharedAlbum = 0;
  }

  return px_isCloudKitSharedAlbum;
}

+ (BOOL)_includeUnsavedSyndicatedAssetsForAssetCollection:(id)collection photoLibrary:(id)library
{
  collectionCopy = collection;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v9 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:libraryCopy];
  showUnsavedSyndicatedContentInPhotosGrids = [v9 showUnsavedSyndicatedContentInPhotosGrids];
  ShouldShowUnsavedAssetsInAssetCollection = showUnsavedSyndicatedContentInPhotosGrids;
  if (collectionCopy && showUnsavedSyndicatedContentInPhotosGrids)
  {
    ShouldShowUnsavedAssetsInAssetCollection = PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(collectionCopy);
  }

  return ShouldShowUnsavedAssetsInAssetCollection;
}

+ (id)dataSourceManagerForAssetCollection:(id)collection configuration:(id)configuration
{
  v45[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  configurationCopy = configuration;
  existingAssetsFetchResult = [configurationCopy existingAssetsFetchResult];
  existingKeyAssetsFetchResult = [configurationCopy existingKeyAssetsFetchResult];
  fetchPropertySets = [configurationCopy fetchPropertySets];
  basePredicate = [configurationCopy basePredicate];
  options = [configurationCopy options];
  ignoreSharedLibraryFilters = [configurationCopy ignoreSharedLibraryFilters];
  reverseSortOrder = [configurationCopy reverseSortOrder];
  canIncludeUnsavedSyndicatedAssets = [configurationCopy canIncludeUnsavedSyndicatedAssets];
  includeSharedCollectionAssets = [configurationCopy includeSharedCollectionAssets];

  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  if ([collectionCopy isTransient])
  {
    v13 = MEMORY[0x1E6978760];
    v45[0] = collectionCopy;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v34 = options;
    v14 = existingKeyAssetsFetchResult;
    v15 = existingAssetsFetchResult;
    v17 = v16 = reverseSortOrder;
    localizedTitle = [collectionCopy localizedTitle];
    localIdentifier = [v13 transientCollectionListWithCollections:v17 title:localizedTitle identifier:0 photoLibrary:photoLibrary];

    reverseSortOrder = v16;
    existingAssetsFetchResult = v15;
    existingKeyAssetsFetchResult = v14;
    options = v34;
    v20 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:localIdentifier options:librarySpecificFetchOptions];
  }

  else
  {
    [librarySpecificFetchOptions setIncludeScreenRecordingsSmartAlbum:1];
    [librarySpecificFetchOptions setIncludeUserSmartAlbums:1];
    [librarySpecificFetchOptions setIncludePlacesSmartAlbum:1];
    v21 = [collectionCopy assetCollectionType] == 2 && objc_msgSend(collectionCopy, "assetCollectionSubtype") == 1000000211;
    [librarySpecificFetchOptions setIncludeProResSmartAlbum:v21];
    v22 = [collectionCopy assetCollectionType] == 2 && objc_msgSend(collectionCopy, "assetCollectionSubtype") == 1000000214;
    [librarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:v22];
    [librarySpecificFetchOptions setIncludePendingMemories:1];
    [librarySpecificFetchOptions setIncludeLocalMemories:1];
    [librarySpecificFetchOptions setIncludeStoryMemories:1];
    v23 = MEMORY[0x1E6978650];
    localIdentifier = [collectionCopy localIdentifier];
    v44 = localIdentifier;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    v20 = [v23 fetchAssetCollectionsWithLocalIdentifiers:v24 options:librarySpecificFetchOptions];
  }

  v25 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v20 containerCollection:0 options:options];
  [(PXPhotosDataSourceConfiguration *)v25 setFetchPropertySets:fetchPropertySets];
  [(PXPhotosDataSourceConfiguration *)v25 setBasePredicate:basePredicate];
  v26 = [PXContentFilterState defaultFilterStateForContainerCollection:collectionCopy photoLibrary:photoLibrary];
  v27 = [v26 predicateForUseCase:0];
  [(PXPhotosDataSourceConfiguration *)v25 setFilterPredicate:v27];

  -[PXPhotosDataSourceConfiguration setIncludeOthersInSocialGroupAssets:](v25, "setIncludeOthersInSocialGroupAssets:", [v26 includeOthersInSocialGroupAssets]);
  [(PXPhotosDataSourceConfiguration *)v25 setReverseSortOrder:reverseSortOrder];
  [(PXPhotosDataSourceConfiguration *)v25 setCanIncludeUnsavedSyndicatedAssets:canIncludeUnsavedSyndicatedAssets];
  [(PXPhotosDataSourceConfiguration *)v25 setIncludeSharedCollectionAssets:includeSharedCollectionAssets];
  if (existingAssetsFetchResult)
  {
    v42 = collectionCopy;
    v43 = existingAssetsFetchResult;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    [(PXPhotosDataSourceConfiguration *)v25 setExistingAssetCollectionFetchResults:v28];
  }

  if (existingKeyAssetsFetchResult)
  {
    v40 = collectionCopy;
    v41 = existingKeyAssetsFetchResult;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [(PXPhotosDataSourceConfiguration *)v25 setExistingKeyAssetsFetchResults:v29];
  }

  if (ignoreSharedLibraryFilters & 1) != 0 || ([collectionCopy px_isSharedAlbum] & 1) != 0 || (objc_msgSend(collectionCopy, "px_isMyPhotoStreamAlbum"))
  {
    px_isUnableToUploadSmartAlbum = 1;
  }

  else
  {
    px_isUnableToUploadSmartAlbum = [collectionCopy px_isUnableToUploadSmartAlbum];
  }

  [(PXPhotosDataSourceConfiguration *)v25 setIgnoreSharedLibraryFilters:px_isUnableToUploadSmartAlbum];
  if ([(PXPhotosDataSourceConfiguration *)v25 ignoreSharedLibraryFilters])
  {
    [(PXPhotosDataSourceConfiguration *)v25 setLibraryFilterState:0];
    [(PXPhotosDataSourceConfiguration *)v25 setLibraryFilter:0];
  }

  v31 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v25];
  v32 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v31];

  return v32;
}

+ (id)dataSourceManagerForAssetCollection:(id)collection existingAssetsFetchResult:(id)result existingKeyAssetsFetchResult:(id)fetchResult fetchPropertySets:(id)sets basePredicate:(id)predicate options:(unint64_t)options ignoreSharedLibraryFilters:(BOOL)filters reverseSortOrder:(BOOL)self0
{
  collectionCopy = collection;
  resultCopy = result;
  fetchResultCopy = fetchResult;
  setsCopy = sets;
  predicateCopy = predicate;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  photoLibrary = [collectionCopy photoLibrary];
  v22 = [self _includeUnsavedSyndicatedAssetsForAssetCollection:collectionCopy photoLibrary:photoLibrary];

  v23 = [self _shouldIncludeSharedCollectionAssetsForAssetCollection:collectionCopy];
  v24 = objc_alloc_init(PXPhotoKitAssetsDataSourceManagerConfiguration);
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setExistingAssetsFetchResult:resultCopy];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setExistingKeyAssetsFetchResult:fetchResultCopy];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setFetchPropertySets:setsCopy];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setBasePredicate:predicateCopy];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setOptions:options];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setIgnoreSharedLibraryFilters:filters];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setReverseSortOrder:order];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setCanIncludeUnsavedSyndicatedAssets:v22];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setIncludeSharedCollectionAssets:v23];
  v25 = [self dataSourceManagerForAssetCollection:collectionCopy configuration:v24];

  return v25;
}

+ (PXPhotoKitAssetsDataSourceManager)dataSourceManagerWithAssets:(id)assets containerTitle:(id)title options:(unint64_t)options
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:assets title:title];
  v7 = MEMORY[0x1E6978760];
  v15[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = [v7 transientCollectionListWithCollections:v8 title:0];

  v10 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v9 options:0];
  v11 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v10 options:options];
  v12 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v11];
  v13 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v12];

  return v13;
}

+ (PXPhotoKitAssetsDataSourceManager)dataSourceManagerWithAsset:(id)asset options:(unint64_t)options
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6978650];
  v20[0] = asset;
  v6 = MEMORY[0x1E695DEC8];
  assetCopy = asset;
  v8 = [v6 arrayWithObjects:v20 count:1];
  v9 = [v5 transientAssetCollectionWithAssets:v8 title:0];

  v10 = MEMORY[0x1E6978760];
  v19 = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v12 = [v10 transientCollectionListWithCollections:v11 title:0];

  v13 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v12 options:0];
  v14 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v13 options:options | 4];
  v15 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v14];
  v16 = [PXPhotoKitAssetsDataSourceManager alloc];

  v17 = [(PXPhotoKitAssetsDataSourceManager *)v16 initWithPhotosDataSource:v15];

  return v17;
}

- (id)px_sharedLibrarySharingSuggestionsCountsManager
{
  photoLibrary = [(PXPhotoKitAssetsDataSourceManager *)self photoLibrary];
  px_sharedLibrarySharingSuggestionsCountsManager = [photoLibrary px_sharedLibrarySharingSuggestionsCountsManager];

  return px_sharedLibrarySharingSuggestionsCountsManager;
}

@end