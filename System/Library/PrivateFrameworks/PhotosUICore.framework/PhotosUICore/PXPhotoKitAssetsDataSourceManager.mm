@interface PXPhotoKitAssetsDataSourceManager
+ (BOOL)_includeUnsavedSyndicatedAssetsForAssetCollection:(id)a3 photoLibrary:(id)a4;
+ (BOOL)_shouldIncludeSharedCollectionAssetsForAssetCollection:(id)a3;
+ (PXPhotoKitAssetsDataSourceManager)dataSourceManagerWithAsset:(id)a3 options:(unint64_t)a4;
+ (PXPhotoKitAssetsDataSourceManager)dataSourceManagerWithAssets:(id)a3 containerTitle:(id)a4 options:(unint64_t)a5;
+ (id)dataSourceManagerForAssetCollection:(id)a3 configuration:(id)a4;
+ (id)dataSourceManagerForAssetCollection:(id)a3 existingAssetsFetchResult:(id)a4 existingKeyAssetsFetchResult:(id)a5 fetchPropertySets:(id)a6 basePredicate:(id)a7 options:(unint64_t)a8 ignoreSharedLibraryFilters:(BOOL)a9 reverseSortOrder:(BOOL)a10;
- (BOOL)forceAccurateSection:(int64_t)a3 andSectionsBeforeAndAfter:(int64_t)a4;
- (BOOL)forceAccurateSectionsIfNeeded:(id)a3;
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
- (PXPhotoKitAssetsDataSourceManager)initWithPhotosDataSource:(id)a3;
- (PXPhotoKitAssetsDataSourceManager)initWithPhotosDataSourceProvider:(id)a3;
- (PXPhotosDataSource)photosDataSource;
- (id)_createAssetsDataSourceWithPhotosDataSource:(id)a3 withChangeDetails:(id)a4;
- (id)createDataSourceManagerForAsset:(id)a3;
- (id)createDataSourceManagerForAssetsInSectionOfAsset:(id)a3 usingNewTransientAssetCollection:(BOOL)a4;
- (id)createInitialDataSource;
- (id)createReverselySortedDataSourceManager;
- (id)localizedEmptyPlaceholderAttributedMessage;
- (id)localizedEmptyPlaceholderTitle;
- (id)localizedLoadingInitialDataSourceMessage;
- (id)photosDataSourceInterestingAssetReferences:(id)a3;
- (id)px_sharedLibrarySharingSuggestionsCountsManager;
- (id)sharedLibraryStatusProvider;
- (int64_t)backgroundFetchOriginSection;
- (void)_didFinishLoadingInitialPhotosDataSource;
- (void)_ensurePhotosDataSource;
- (void)_markFeaturedPhotosAsViewed;
- (void)_setLoadingInitialPhotosDataSource:(BOOL)a3;
- (void)dealloc;
- (void)excludeAssetsAtIndexPaths:(id)a3;
- (void)forceIncludeAssetsAtIndexPaths:(id)a3;
- (void)markContentAsViewed;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
- (void)photosDataSourceDidFinishBackgroundFetching:(id)a3;
- (void)refreshResultsForAssetCollection:(id)a3;
- (void)setAllowedUUIDs:(id)a3;
- (void)setAllowedUUIDs:(id)a3 manualOrderUUIDs:(id)a4 forAssetCollections:(id)a5;
- (void)setAllowedUUIDs:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setBackgroundFetchOriginSection:(int64_t)a3;
- (void)setCurationEnabled:(BOOL)a3 forAssetCollection:(id)a4;
- (void)setCurationEnabledForAllCollections:(BOOL)a3 curationLength:(int64_t)a4 collectionsToDiff:(id)a5;
- (void)setFilterPredicate:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setFilteringDisabled:(BOOL)a3 forAssetCollection:(id)a4;
- (void)setIncludeAllBurstAssets:(BOOL)a3;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setLibraryFilter:(int64_t)a3;
- (void)setPhotosDataSource:(id)a3 changeDetails:(id)a4;
- (void)setPhotosDataSource:(id)a3 publishIntermediateEmptySnapshot:(BOOL)a4;
- (void)setReverseSortOrder:(BOOL)a3;
- (void)setSortDescriptors:(id)a3;
- (void)startBackgroundFetchIfNeeded;
- (void)stopExcludingAssets:(id)a3;
- (void)stopForceIncludingAllAssets;
- (void)updateWithPhotosDataSource:(id)a3 andDataSourceChange:(id)a4;
- (void)updateWithPhotosDataSource:(id)a3 sectionedDataSourceChangeDetails:(id)a4;
@end

@implementation PXPhotoKitAssetsDataSourceManager

- (void)_ensurePhotosDataSource
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self->_photosDataSource)
  {
    v3 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceProvider];
    v4 = [v3 createInitialPhotosDataSourceForDataSourceManager:self];
    v5 = [v4 filterPredicate];
    v6 = v5;
    if (v5 == self->_filterPredicate)
    {
    }

    else
    {
      v7 = [(NSPredicate *)v5 isEqual:?];

      if ((v7 & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    v8 = [v4 sortDescriptors];
    v9 = v8;
    if (v8 == self->_sortDescriptors)
    {
    }

    else
    {
      v10 = [(NSArray *)v8 isEqual:?];

      if ((v10 & 1) == 0)
      {
        PXAssertGetLog();
      }
    }

    v11 = [v4 libraryFilter];
    if (v11 != [(PXPhotoKitAssetsDataSourceManager *)self libraryFilter])
    {
      PXAssertGetLog();
    }

    v12 = [v4 photoLibrary];
    v13 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v12];
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
      v19 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceProvider];
      if (objc_opt_respondsToSelector())
      {
        v20 = [v19 localizedInitialLoadingStatusMessageForDataSourceManager:self];
        localizedLoadingInitialDataSourceMessage = self->_localizedLoadingInitialDataSourceMessage;
        self->_localizedLoadingInitialDataSourceMessage = v20;
      }

      v22 = self->_initialDataSourceLoadingQueue;
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __60__PXPhotoKitAssetsDataSourceManager__ensurePhotosDataSource__block_invoke;
      v27 = &unk_1E774C620;
      v28 = v19;
      v29 = self;
      v23 = v19;
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
  v3 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 filterPredicate];
  }

  else
  {
    v5 = self->_filterPredicate;
  }

  v6 = v5;

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
  v3 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 sortDescriptors];
  }

  else
  {
    v5 = self->_sortDescriptors;
  }

  v6 = v5;

  return v6;
}

- (BOOL)isBackgroundFetching
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  if ([v2 isBackgroundFetching])
  {
    LOBYTE(v3) = 1;
  }

  else if (([v2 options] & 0x10000) != 0 && objc_msgSend(v2, "isEmpty"))
  {
    v3 = [v2 areAllSectionsConsideredAccurate] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)startBackgroundFetchIfNeeded
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v2 startBackgroundFetchIfNeeded];
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

- (void)photosDataSourceDidFinishBackgroundFetching:(id)a3
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

- (id)photosDataSourceInterestingAssetReferences:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];

  if (v5 == v4)
  {
    v7 = [(PXSectionedDataSourceManager *)self queryObserversInterestingObjectReferences];
    v8 = [v7 indexesOfObjectsPassingTest:&__block_literal_global_86911];
    v6 = [v7 objectsAtIndexes:v8];
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

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];

  if (v7 == v8)
  {
    [(PXPhotoKitAssetsDataSourceManager *)self updateWithPhotosDataSource:v8 andDataSourceChange:v6];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXContentSyndicationConfigurationObservationContext != a5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:668 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 5) != 0)
  {
    v14 = v9;
    v10 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    v11 = [v10 containerAssetCollection];
    v12 = [v10 photoLibrary];
    [v10 setCanIncludeUnsavedSyndicatedAssets:{+[PXPhotoKitAssetsDataSourceManager _includeUnsavedSyndicatedAssetsForAssetCollection:photoLibrary:](PXPhotoKitAssetsDataSourceManager, "_includeUnsavedSyndicatedAssetsForAssetCollection:photoLibrary:", v11, v12)}];

    [v10 setIncludeSharedCollectionAssets:{+[PXPhotoKitAssetsDataSourceManager _shouldIncludeSharedCollectionAssetsForAssetCollection:](PXPhotoKitAssetsDataSourceManager, "_shouldIncludeSharedCollectionAssetsForAssetCollection:", v11)}];
    v9 = v14;
  }
}

- (void)_markFeaturedPhotosAsViewed
{
  v3 = [(PXPhotoKitAssetsDataSourceManager *)self photoLibrary];
  v4 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v5 = PXSharingFilterFromLibraryFilterViewMode([v4 libraryFilter]);

  v6 = dispatch_get_global_queue(21, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PXPhotoKitAssetsDataSourceManager__markFeaturedPhotosAsViewed__block_invoke;
  v8[3] = &unk_1E773E560;
  v9 = v3;
  v10 = v5;
  v7 = v3;
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
  v3 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v6 = [v3 containerCollection];

  if ([v6 px_isFeaturedPhotosCollection])
  {
    [(PXPhotoKitAssetsDataSourceManager *)self _markFeaturedPhotosAsViewed];
  }

  v4 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v5 = [v4 containerAssetCollection];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [PXSharedAlbumsUtilities markSharedAlbumAsViewed:v5];
    }
  }
}

- (void)refreshResultsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v5 refetchResultsForAssetCollection:v4];
}

- (void)stopExcludingAssets:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v5 stopExcludingAssets:v4];
}

- (void)excludeAssetsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v5 forceExcludeAssetsAtIndexes:v4];
}

- (void)stopForceIncludingAllAssets
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v2 stopForceIncludingAllAssets];
}

- (void)forceIncludeAssetsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v5 forceIncludeAssetsAtIndexes:v4];
}

- (id)localizedLoadingInitialDataSourceMessage
{
  v2 = [(NSString *)self->_localizedLoadingInitialDataSourceMessage copy];

  return v2;
}

- (id)localizedEmptyPlaceholderAttributedMessage
{
  v3 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v4 = [v3 collectionListFetchResult];

  if ([v4 count] || (-[PXPhotoKitAssetsDataSourceManager photosDataSource](self, "photosDataSource"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "containerCollection"), v7 = objc_claimAutoreleasedReturnValue(), PXPhotoKitLocalizedMessageForEmptyContainerCollection(v7), v5 = objc_claimAutoreleasedReturnValue(), v7, v6, !v5))
  {
    v5 = PXPhotoKitLocalizedMessageForEmptyCollectionListFetchResult(v4, 0);
  }

  return v5;
}

- (id)localizedEmptyPlaceholderTitle
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v3 = [v2 collectionListFetchResult];
  if ([v3 count] || (objc_msgSend(v2, "containerCollection"), v8 = objc_claimAutoreleasedReturnValue(), PXPhotoKitLocalizedTitleForEmptyContainerCollection(v8), v7 = objc_claimAutoreleasedReturnValue(), v8, !v7))
  {
    v4 = [v2 container];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([v2 container], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "px_fetchEmptyContentString"), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
    {
      v7 = PXPhotoKitLocalizedTitleForEmptyCollectionListFetchResult(v3, 0);
    }
  }

  return v7;
}

- (void)setReverseSortOrder:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v4 setReverseSortOrder:v3];
}

- (BOOL)isReverseSortOrder
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 reverseSortOrder];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSortDescriptors:(id)a3
{
  sortDescriptors = a3;
  v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v7 = v5;
  if (v5)
  {
    [v5 setSortDescriptors:sortDescriptors];
  }

  else
  {
    v6 = [(NSArray *)sortDescriptors copy];

    sortDescriptors = self->_sortDescriptors;
    self->_sortDescriptors = v6;
  }
}

- (void)setAllowedUUIDs:(id)a3 manualOrderUUIDs:(id)a4 forAssetCollections:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v11 setAllowedUUIDs:v10 manualOrderUUIDs:v9 forAssetCollections:v8];
}

- (void)setAllowedUUIDs:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v8 setAllowedUUIDs:v7 provideIncrementalChangeDetailsForAssetCollections:v6];
}

- (void)setAllowedUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v5 setAllowedUUIDs:v4];
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v4 = a3;
  v9 = a4;
  v6 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v7 = [v6 includeOthersInSocialGroupAssets];

  if (v7 != v4)
  {
    v8 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    [v8 setIncludeOthersInSocialGroupAssets:v4 provideIncrementalChangeDetailsForAssetCollections:v9];
  }
}

- (BOOL)includeOthersInSocialGroupAssets
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v3 = [v2 includeOthersInSocialGroupAssets];

  return v3;
}

- (void)setFilteringDisabled:(BOOL)a3 forAssetCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v7 setDisableFilters:v4 forAssetCollection:v6];
}

- (void)setFilterPredicate:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v10 = a4;
  filterPredicate = a3;
  v7 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSourceIfExists];
  v8 = v7;
  if (v7)
  {
    [v7 setFilterPredicate:filterPredicate provideIncrementalChangeDetailsForAssetCollections:v10];
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
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v3 = [v2 supportsCurationToggling];

  return v3;
}

- (void)setBackgroundFetchOriginSection:(int64_t)a3
{
  photosDataSource = self->_photosDataSource;
  if (photosDataSource)
  {

    [(PXPhotosDataSource *)photosDataSource setBackgroundFetchOriginSection:a3];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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

- (BOOL)forceAccurateSection:(int64_t)a3 andSectionsBeforeAndAfter:(int64_t)a4
{
  v6 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v6 setBackgroundFetchOriginSection:a3];
  LOBYTE(a4) = [v6 forceAccurateSection:a3 andSectionsBeforeAndAfter:a4];

  return a4;
}

- (BOOL)forceAccurateSectionsIfNeeded:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    [v5 setBackgroundFetchOriginSection:{objc_msgSend(v4, "lastIndex")}];
    v6 = [v5 forceAccurateSectionsIfNeeded:v4 reloadChanges:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCurationEnabled:(BOOL)a3 forAssetCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v7 setWantsCuration:v4 forAssetCollection:v6];
}

- (void)setCurationEnabledForAllCollections:(BOOL)a3 curationLength:(int64_t)a4 collectionsToDiff:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  [v9 setWantsCurationForAllCollections:v6 collectionsToDiff:v8];

  [v9 setWantsCurationByDefault:v6];
  [v9 setCurationLength:a4];
}

- (id)sharedLibraryStatusProvider
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photoLibrary];
  v3 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v2];

  return v3;
}

- (PHPhotoLibrary)photoLibrary
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v3 = [v2 photoLibrary];

  return v3;
}

- (void)setPhotosDataSource:(id)a3 publishIntermediateEmptySnapshot:(BOOL)a4
{
  v7 = a3;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != v7)
  {
    v10 = v7;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, a3);
    [(PXPhotosDataSource *)self->_photosDataSource registerChangeObserver:self];
    if (a4 || ![(PXPhotosDataSource *)v10 isEmpty]|| (v9 = [(PXPhotosDataSource *)v10 isBackgroundFetching], v7 = v10, !v9))
    {
      [(PXPhotoKitAssetsDataSourceManager *)self updateWithPhotosDataSource:v10 andDataSourceChange:0];
      v7 = v10;
    }
  }
}

- (void)setPhotosDataSource:(id)a3 changeDetails:(id)a4
{
  v7 = a3;
  photosDataSource = self->_photosDataSource;
  if (photosDataSource != v7)
  {
    v10 = v7;
    v9 = a4;
    [(PXPhotosDataSource *)photosDataSource unregisterChangeObserver:self];
    objc_storeStrong(&self->_photosDataSource, a3);
    [(PXPhotosDataSource *)self->_photosDataSource registerChangeObserver:self];
    [(PXPhotoKitAssetsDataSourceManager *)self updateWithPhotosDataSource:v10 sectionedDataSourceChangeDetails:v9];

    v7 = v10;
  }
}

- (void)updateWithPhotosDataSource:(id)a3 sectionedDataSourceChangeDetails:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (a3)
  {
    v7 = [(PXPhotoKitAssetsDataSourceManager *)self _createAssetsDataSourceWithPhotosDataSource:a3 withChangeDetails:v6];
    v8 = v9;
    a3 = v7;
  }

  else
  {
    v8 = v6;
  }

  [(PXSectionedDataSourceManager *)self setDataSource:a3 changeDetails:v8];
}

- (void)updateWithPhotosDataSource:(id)a3 andDataSourceChange:(id)a4
{
  v6 = a3;
  v7 = [a4 sectionedDataSourceChangeDetails];
  [(PXPhotoKitAssetsDataSourceManager *)self updateWithPhotosDataSource:v6 sectionedDataSourceChangeDetails:v7];
}

- (id)_createAssetsDataSourceWithPhotosDataSource:(id)a3 withChangeDetails:(id)a4
{
  v5 = a4;
  v6 = [a3 immutableCopy];
  v7 = [[PXPhotoKitAssetsDataSource alloc] initWithImmutablePhotosDataSource:v6 withChangeDetails:v5];

  return v7;
}

- (void)setIncludeAllBurstAssets:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v6 = [v5 includeAllBurstAssets];

  if (v6 != v3)
  {
    PXPreferencesSetIsStacksEnabled(v3);
    v7 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    [v7 setIncludeAllBurstAssets:v3];
  }
}

- (BOOL)includeAllBurstAssets
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v3 = [v2 includeAllBurstAssets];

  return v3;
}

- (void)setLibraryFilter:(int64_t)a3
{
  if (self->_libraryFilter != a3)
  {
    self->_libraryFilter = a3;
    [(PXPhotosDataSource *)self->_photosDataSource setLibraryFilter:?];
  }
}

- (void)_setLoadingInitialPhotosDataSource:(BOOL)a3
{
  if (self->__isLoadingInitialPhotosDataSource != a3)
  {
    self->__isLoadingInitialPhotosDataSource = a3;
    if (!a3)
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
  v4 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
  v5 = [v4 reversedCopy];
  v6 = [(PXPhotoKitAssetsDataSourceManager *)v3 initWithPhotosDataSource:v5];

  return v6;
}

- (id)createDataSourceManagerForAsset:(id)a3
{
  v5 = [a3 asset];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v5 px_descriptionForAssertionMessage];
      [v8 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:243 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"assetReference.asset", v10, v11}];
    }

    v6 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerWithAsset:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createDataSourceManagerForAssetsInSectionOfAsset:(id)a3 usingNewTransientAssetCollection:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = a3;
    v7 = [(PXPhotoKitAssetsDataSourceManager *)self photosDataSource];
    v8 = [v7 createDataSourceWithAssetsInSectionOfAsset:v6 usingNewTransientAssetCollection:v4];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:225 description:{@"%s is not available as initializer", "-[PXPhotoKitAssetsDataSourceManager init]"}];

  abort();
}

- (PXPhotoKitAssetsDataSourceManager)initWithPhotosDataSourceProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXPhotoKitAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPhotoKitAssetsDataSourceManager *)v5 setPhotosDataSourceProvider:v4];
  }

  return v6;
}

- (PXPhotoKitAssetsDataSourceManager)initWithPhotosDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXPhotoKitAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PXPhotoKitAssetsDataSourceManager *)v5 setPhotosDataSource:v4];
  }

  return v6;
}

+ (BOOL)_shouldIncludeSharedCollectionAssetsForAssetCollection:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [v5 px_isCloudKitSharedAlbum];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_includeUnsavedSyndicatedAssetsForAssetCollection:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v9 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v8];
  v10 = [v9 showUnsavedSyndicatedContentInPhotosGrids];
  ShouldShowUnsavedAssetsInAssetCollection = v10;
  if (v7 && v10)
  {
    ShouldShowUnsavedAssetsInAssetCollection = PXContentSyndicationShouldShowUnsavedAssetsInAssetCollection(v7);
  }

  return ShouldShowUnsavedAssetsInAssetCollection;
}

+ (id)dataSourceManagerForAssetCollection:(id)a3 configuration:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 existingAssetsFetchResult];
  v8 = [v6 existingKeyAssetsFetchResult];
  v39 = [v6 fetchPropertySets];
  v38 = [v6 basePredicate];
  v9 = [v6 options];
  v37 = [v6 ignoreSharedLibraryFilters];
  v10 = [v6 reverseSortOrder];
  v36 = [v6 canIncludeUnsavedSyndicatedAssets];
  v35 = [v6 includeSharedCollectionAssets];

  v11 = [v5 photoLibrary];
  v12 = [v11 librarySpecificFetchOptions];
  if ([v5 isTransient])
  {
    v13 = MEMORY[0x1E6978760];
    v45[0] = v5;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v34 = v9;
    v14 = v8;
    v15 = v7;
    v17 = v16 = v10;
    v18 = [v5 localizedTitle];
    v19 = [v13 transientCollectionListWithCollections:v17 title:v18 identifier:0 photoLibrary:v11];

    v10 = v16;
    v7 = v15;
    v8 = v14;
    v9 = v34;
    v20 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v19 options:v12];
  }

  else
  {
    [v12 setIncludeScreenRecordingsSmartAlbum:1];
    [v12 setIncludeUserSmartAlbums:1];
    [v12 setIncludePlacesSmartAlbum:1];
    v21 = [v5 assetCollectionType] == 2 && objc_msgSend(v5, "assetCollectionSubtype") == 1000000211;
    [v12 setIncludeProResSmartAlbum:v21];
    v22 = [v5 assetCollectionType] == 2 && objc_msgSend(v5, "assetCollectionSubtype") == 1000000214;
    [v12 setIncludeSharedLibrarySharingSuggestionsSmartAlbum:v22];
    [v12 setIncludePendingMemories:1];
    [v12 setIncludeLocalMemories:1];
    [v12 setIncludeStoryMemories:1];
    v23 = MEMORY[0x1E6978650];
    v19 = [v5 localIdentifier];
    v44 = v19;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    v20 = [v23 fetchAssetCollectionsWithLocalIdentifiers:v24 options:v12];
  }

  v25 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v20 containerCollection:0 options:v9];
  [(PXPhotosDataSourceConfiguration *)v25 setFetchPropertySets:v39];
  [(PXPhotosDataSourceConfiguration *)v25 setBasePredicate:v38];
  v26 = [PXContentFilterState defaultFilterStateForContainerCollection:v5 photoLibrary:v11];
  v27 = [v26 predicateForUseCase:0];
  [(PXPhotosDataSourceConfiguration *)v25 setFilterPredicate:v27];

  -[PXPhotosDataSourceConfiguration setIncludeOthersInSocialGroupAssets:](v25, "setIncludeOthersInSocialGroupAssets:", [v26 includeOthersInSocialGroupAssets]);
  [(PXPhotosDataSourceConfiguration *)v25 setReverseSortOrder:v10];
  [(PXPhotosDataSourceConfiguration *)v25 setCanIncludeUnsavedSyndicatedAssets:v36];
  [(PXPhotosDataSourceConfiguration *)v25 setIncludeSharedCollectionAssets:v35];
  if (v7)
  {
    v42 = v5;
    v43 = v7;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    [(PXPhotosDataSourceConfiguration *)v25 setExistingAssetCollectionFetchResults:v28];
  }

  if (v8)
  {
    v40 = v5;
    v41 = v8;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [(PXPhotosDataSourceConfiguration *)v25 setExistingKeyAssetsFetchResults:v29];
  }

  if (v37 & 1) != 0 || ([v5 px_isSharedAlbum] & 1) != 0 || (objc_msgSend(v5, "px_isMyPhotoStreamAlbum"))
  {
    v30 = 1;
  }

  else
  {
    v30 = [v5 px_isUnableToUploadSmartAlbum];
  }

  [(PXPhotosDataSourceConfiguration *)v25 setIgnoreSharedLibraryFilters:v30];
  if ([(PXPhotosDataSourceConfiguration *)v25 ignoreSharedLibraryFilters])
  {
    [(PXPhotosDataSourceConfiguration *)v25 setLibraryFilterState:0];
    [(PXPhotosDataSourceConfiguration *)v25 setLibraryFilter:0];
  }

  v31 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v25];
  v32 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v31];

  return v32;
}

+ (id)dataSourceManagerForAssetCollection:(id)a3 existingAssetsFetchResult:(id)a4 existingKeyAssetsFetchResult:(id)a5 fetchPropertySets:(id)a6 basePredicate:(id)a7 options:(unint64_t)a8 ignoreSharedLibraryFilters:(BOOL)a9 reverseSortOrder:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  if (!v16)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetsDataSourceManager.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];
  }

  v21 = [v16 photoLibrary];
  v22 = [a1 _includeUnsavedSyndicatedAssetsForAssetCollection:v16 photoLibrary:v21];

  v23 = [a1 _shouldIncludeSharedCollectionAssetsForAssetCollection:v16];
  v24 = objc_alloc_init(PXPhotoKitAssetsDataSourceManagerConfiguration);
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setExistingAssetsFetchResult:v17];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setExistingKeyAssetsFetchResult:v18];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setFetchPropertySets:v19];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setBasePredicate:v20];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setOptions:a8];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setIgnoreSharedLibraryFilters:a9];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setReverseSortOrder:a10];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setCanIncludeUnsavedSyndicatedAssets:v22];
  [(PXPhotoKitAssetsDataSourceManagerConfiguration *)v24 setIncludeSharedCollectionAssets:v23];
  v25 = [a1 dataSourceManagerForAssetCollection:v16 configuration:v24];

  return v25;
}

+ (PXPhotoKitAssetsDataSourceManager)dataSourceManagerWithAssets:(id)a3 containerTitle:(id)a4 options:(unint64_t)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:a3 title:a4];
  v7 = MEMORY[0x1E6978760];
  v15[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = [v7 transientCollectionListWithCollections:v8 title:0];

  v10 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v9 options:0];
  v11 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v10 options:a5];
  v12 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v11];
  v13 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v12];

  return v13;
}

+ (PXPhotoKitAssetsDataSourceManager)dataSourceManagerWithAsset:(id)a3 options:(unint64_t)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6978650];
  v20[0] = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:v20 count:1];
  v9 = [v5 transientAssetCollectionWithAssets:v8 title:0];

  v10 = MEMORY[0x1E6978760];
  v19 = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v12 = [v10 transientCollectionListWithCollections:v11 title:0];

  v13 = [MEMORY[0x1E6978650] fetchCollectionsInCollectionList:v12 options:0];
  v14 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v13 options:a4 | 4];
  v15 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v14];
  v16 = [PXPhotoKitAssetsDataSourceManager alloc];

  v17 = [(PXPhotoKitAssetsDataSourceManager *)v16 initWithPhotosDataSource:v15];

  return v17;
}

- (id)px_sharedLibrarySharingSuggestionsCountsManager
{
  v2 = [(PXPhotoKitAssetsDataSourceManager *)self photoLibrary];
  v3 = [v2 px_sharedLibrarySharingSuggestionsCountsManager];

  return v3;
}

@end