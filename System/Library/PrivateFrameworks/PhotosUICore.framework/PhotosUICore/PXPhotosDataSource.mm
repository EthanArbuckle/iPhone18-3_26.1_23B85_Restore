@interface PXPhotosDataSource
+ (OS_dispatch_group)backgroundFetchingGroup;
+ (OS_dispatch_queue)sharedPrefetchQueue;
+ (id)_curationSharedBackgroundQueue;
+ (void)waitForAllBackgroundFetchingToFinish;
- (BOOL)_addResultTuple:(id)a3 forAssetCollection:(id)a4 preparedResultRecord:(id)a5 toMutableResultRecord:(id)a6;
- (BOOL)_allSectionsConsideredAccurate;
- (BOOL)_areFiltersDisabledForAssetCollection:(id)a3;
- (BOOL)_forceAccurateSection:(int64_t)a3 andNumberOfSurroundingSectionsWithContent:(int64_t)a4;
- (BOOL)_isFiltering;
- (BOOL)_isResultTupleApplicable:(id)a3 forAssetCollection:(id)a4;
- (BOOL)_reverseSortOrderForAssetCollection:(id)a3;
- (BOOL)containsMultipleAssets;
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)forceAccurateAssetCollectionsIfNeeded:(id)a3 reloadChanges:(BOOL)a4;
- (BOOL)forceAccurateIndexPath:(id)a3 andAssetsBeforeAndAfter:(int64_t)a4;
- (BOOL)forceAccurateSection:(int64_t)a3 andSectionsBeforeAndAfter:(int64_t)a4;
- (BOOL)forceAccurateSectionsIfNeeded:(id)a3 reloadChanges:(BOOL)a4;
- (BOOL)hasAnyAllowedUUIDs;
- (BOOL)hasCurationForAssetCollection:(id)a3;
- (BOOL)isAssetAtIndexPathPartOfCuratedSet:(PXSimpleIndexPath *)a3;
- (BOOL)isCuratedAssetsEmptyForAssetCollection:(id)a3;
- (BOOL)isCuratedAssetsFutilelyForAssetCollection:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isSectionConsideredAccurate:(int64_t)a3;
- (BOOL)wantsCurationForAssetCollection:(id)a3;
- (BOOL)wantsCurationForFirstAssetCollection;
- (NSString)description;
- (OS_os_log)dataSourceLog;
- (PHAssetCollection)containerAssetCollection;
- (PHCollection)containerCollection;
- (PXAssetsDataSourceContainer)container;
- (PXPhotosDataSource)initWithPhotosDataSource:(id)a3 options:(unint64_t)a4;
- (PXPhotosDataSource)initWithPhotosDataSourceConfiguration:(id)a3;
- (double)weightForAsset:(id)a3;
- (id)_allowedOIDsForAssetCollection:(id)a3;
- (id)_allowedUUIDsForAssetCollection:(id)a3;
- (id)_assetContainerForAssetCollection:(id)a3;
- (id)_assetOidsByAssetCollectionForAssetsAtIndexPathsInSet:(id)a3;
- (id)_assetsForAssetCollection:(id)a3;
- (id)_closestIndexPathToIndexPath:(id)a3;
- (id)_createDataSourceWithAssetsCollections:(id)a3 existingAssetCollectionFetchResults:(id)a4;
- (id)_createResultRecordForAssetCollection:(id)a3;
- (id)_fetchAssetsStartingAtIndexPath:(id)a3;
- (id)_fetchTupleForAssetCollection:(id)a3 calledOnClientQueue:(BOOL)a4 isLimitedInitialFetch:(BOOL)a5;
- (id)_fetcherConfigurationForAssetCollection:(id)a3 useCase:(int64_t)a4 isLimitedInitialFetch:(BOOL)a5;
- (id)_filterPredicateForAssetCollection:(id)a3;
- (id)_finalFilterPredicateForAssetCollection:(id)a3;
- (id)_inaccurateAssetCollections;
- (id)_inclusionPredicateForAssetCollection:(id)a3;
- (id)_indexPathForAssetWithUUID:(id)a3 orBurstIdentifier:(id)a4 orSyndicationIdentifier:(id)a5 hintIndexPath:(id)a6 hintCollections:(id)a7;
- (id)_keyAssetsForAssetCollection:(id)a3;
- (id)_mutableResultRecordForAssetCollection:(id)a3;
- (id)_observerInterestingAssetReferences;
- (id)_resultRecordForAssetCollection:(id)a3;
- (id)_sectionCache;
- (id)approximateAssetsAtIndexPaths:(id)a3;
- (id)assetAtIndexPath:(id)a3;
- (id)assetAtSimpleIndexPath:(PXSimpleIndexPath *)a3;
- (id)assetCollectionForSection:(int64_t)a3;
- (id)assetReferenceAtIndexPath:(id)a3;
- (id)assetReferenceForAsset:(id)a3 containedInAssetCollectionWithType:(int64_t)a4;
- (id)assetsAtIndexPaths:(id)a3;
- (id)assetsInSection:(int64_t)a3;
- (id)assetsStartingAtIndexPath:(id)a3;
- (id)createDataSourceWithAssetsAtIndexPaths:(id)a3;
- (id)createDataSourceWithAssetsInSectionOfAsset:(id)a3 usingNewTransientAssetCollection:(BOOL)a4;
- (id)curatedAssetsForAssetCollection:(id)a3;
- (id)curatedAssetsInSection:(int64_t)a3;
- (id)facesAtSimpleIndexPath:(PXSimpleIndexPath *)a3;
- (id)fetchResultWithAssetsAtIndexPaths:(id)a3;
- (id)fetchResultWithAssetsInSections:(id)a3;
- (id)fetchResultsByAssetCollection;
- (id)immutableCopy;
- (id)indexPathForAsset:(id)a3 hintIndexPath:(id)a4 hintCollection:(id)a5;
- (id)indexPathForAsset:(id)a3 hintIndexPath:(id)a4 hintCollections:(id)a5;
- (id)indexPathForAsset:(id)a3 inCollection:(id)a4;
- (id)indexPathForAssetReference:(id)a3;
- (id)indexPathForAssetWithUUID:(id)a3 orBurstIdentifier:(id)a4 hintIndexPath:(id)a5 hintCollection:(id)a6;
- (id)indexPathForAssetWithUUID:(id)a3 orSyndicationIdentifier:(id)a4 hintIndexPath:(id)a5 hintCollection:(id)a6;
- (id)indexPathForFirstAsset;
- (id)indexPathForLastAsset;
- (id)infoForAssetCollection:(id)a3;
- (id)keyAssetsInSection:(int64_t)a3;
- (id)pauseChangeDeliveryAndBackgroundLoadingWithTimeout:(double)a3 identifier:(id)a4;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (id)reversedCopy;
- (id)sectionsForAssetCollections:(id)a3;
- (id)uncuratedAssetsForAssetCollection:(id)a3;
- (id)uncuratedAssetsInSection:(int64_t)a3;
- (int64_t)estimatedAssetsCountWithEnrichmentState:(unsigned __int16)a3;
- (int64_t)estimatedOtherCount;
- (int64_t)estimatedPhotosCount;
- (int64_t)estimatedVideosCount;
- (int64_t)indexForAsset:(id)a3 inCollection:(id)a4 hintIndex:(int64_t)a5;
- (int64_t)keyAssetIndexInSection:(int64_t)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSectionsWithEnrichmentState:(unsigned __int16)a3;
- (unint64_t)_assetCollectionFetchStatus:(id)a3;
- (unint64_t)_cachedSectionForAssetCollection:(id)a3;
- (void)_adoptExistingAssetCollectionFetchResults:(id)a3;
- (void)_bringFetchResultsUpToDateWithFetcherCacheForAssetCollection:(id)a3;
- (void)_cancelBackgroundFetchIfNeeded;
- (void)_childDataSourceDidUpdateFetchesForAssetCollection:(id)a3;
- (void)_commonInit;
- (void)_didChange:(id)a3;
- (void)_didFinishBackgroundFetchingForId:(int64_t)a3;
- (void)_distributeChange:(id)a3;
- (void)_endFilterPredicateChangedForCollection:(id)a3;
- (void)_endLibraryFilterChangedSignpostForCollection:(id)a3;
- (void)_enumerateChangeObserversWithBlock:(id)a3;
- (void)_fetchRemainingCollectionsBackgroundLoopWithId:(int64_t)a3;
- (void)_getFetchLimit:(unint64_t *)a3 fetchWithReverseSortOrder:(BOOL *)a4 forAssetCollection:(id)a5 isLimitedInitialFetch:(BOOL)a6;
- (void)_initResultRecordsWithOldOptions:(unint64_t)a3 newOptions:(unint64_t)a4;
- (void)_internalSetLibraryFilter:(int64_t)a3;
- (void)_interruptBackgroundFetch;
- (void)_observersQueue_copyChangeObserversForWriteIfNeeded;
- (void)_performManualChangesForAssetCollections:(id)a3 collectionsToDiff:(id)a4 collectionsToChange:(id)a5 changeBlock:(id)a6;
- (void)_performManualReloadWithChangeBlock:(id)a3;
- (void)_performProcessAndPublishSelectorInDefaultRunLoopMode;
- (void)_prefetchIndexesByFetchResult:(id)a3 onlyThumbnails:(BOOL)a4;
- (void)_prepareDiffsForPendingResultsWithCompletion:(id)a3;
- (void)_processAndPublishPendingCollectionFetchResults;
- (void)_processAndPublishPendingCollectionFetchResultsWhenAppropriate;
- (void)_publishDidReceivePhotoLibraryChange:(id)a3;
- (void)_publishReloadChange;
- (void)_restartBackgroundFetchWithAssetCollectionsToDiff:(id)a3;
- (void)_startFilterPredicateChangedSignpostForCollection:(id)a3;
- (void)_startLibraryFilterChangedSignpostForCollection:(id)a3;
- (void)_updateInaccurateAssetCollectionsIfNeeded;
- (void)_willChange;
- (void)clearResultsForAssetCollection:(id)a3;
- (void)clearResultsForAssetCollections:(id)a3;
- (void)dealloc;
- (void)enumerateStartingAtIndexPath:(id)a3 reverseDirection:(BOOL)a4 usingBlock:(id)a5;
- (void)forceExcludeAssetsAtIndexPaths:(id)a3;
- (void)forceExcludeAssetsAtIndexes:(id)a3;
- (void)forceIncludeAssetsAtIndexPaths:(id)a3;
- (void)forceIncludeAssetsAtIndexes:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)pauseChangeDeliveryFor:(double)a3 identifier:(id)a4;
- (void)performChanges:(id)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)prefetchApproximateAssetsAtIndexPaths:(id)a3 reverseOrder:(BOOL)a4;
- (void)prefetchAssetsAtIndexPaths:(id)a3 onlyThumbnailAssets:(BOOL)a4;
- (void)prefetchAssetsInSections:(id)a3;
- (void)refetchResultsForAssetCollection:(id)a3;
- (void)registerChangeObserver:(id)a3;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setAllowedOIDs:(id)a3;
- (void)setAllowedUUIDs:(id)a3 manualOrderUUIDs:(id)a4 forAssetCollections:(id)a5;
- (void)setAllowedUUIDs:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setBackgroundFetchOriginSection:(int64_t)a3;
- (void)setCanIncludeUnsavedSyndicatedAssets:(BOOL)a3;
- (void)setCollectionListFetchResult:(id)a3;
- (void)setCurationLength:(int64_t)a3;
- (void)setDisableFilters:(BOOL)a3 forAssetCollection:(id)a4;
- (void)setFetchLimit:(unint64_t)a3;
- (void)setFilterPredicate:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setIncludeAllBurstAssets:(BOOL)a3;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setIncludeSharedCollectionAssets:(BOOL)a3;
- (void)setIsBackgroundFetching:(BOOL)a3;
- (void)setKeyAsset:(id)a3 forAssetCollection:(id)a4;
- (void)setLibraryFilter:(int64_t)a3;
- (void)setReverseSortOrder:(BOOL)a3;
- (void)setSortDescriptors:(id)a3;
- (void)setWantsCuration:(BOOL)a3 forAssetCollection:(id)a4;
- (void)setWantsCurationForAllCollections:(BOOL)a3 collectionsToDiff:(id)a4;
- (void)startBackgroundFetchIfNeeded;
- (void)stopExcludingAssets:(id)a3;
- (void)stopForceIncludingAllAssets;
- (void)unregisterChangeObserver:(id)a3;
@end

@implementation PXPhotosDataSource

- (void)_commonInit
{
  v3 = [(PXPhotosDataSource *)self _areSecondaryFetchesEnabled];
  if (v3)
  {
    v4 = +[PXPhotosDataSource _curationSharedBackgroundQueue];
  }

  else
  {
    if ((self->_options & 0x1400) != 0)
    {
      v5 = QOS_CLASS_USER_INITIATED;
    }

    else
    {
      v5 = QOS_CLASS_UTILITY;
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, v5, 0);

    v8 = [PXLIFOQueue alloc];
    v9 = dispatch_queue_create("com.apple.photos.datasource.background-queue", v7);
    v4 = [(PXLIFOQueue *)v8 initWithTargetQueue:v9];
  }

  objc_storeStrong(&self->_backgroundLIFOQueue, v4);
  v10 = [(PXLIFOQueue *)v4 targetQueue];
  backgroundQueue = self->_backgroundQueue;
  self->_backgroundQueue = v10;

  v12 = +[PXPhotosDataSource sharedPrefetchQueue];
  prefetchQueue = self->_prefetchQueue;
  self->_prefetchQueue = v12;

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  coalescedChanges = self->_coalescedChanges;
  self->_coalescedChanges = v14;

  self->_sectionCacheLock._os_unfair_lock_opaque = 0;
  v16 = dispatch_queue_create("com.apple.photos.datasource.observers-queue", 0);
  observersQueue = self->_observersQueue;
  self->_observersQueue = v16;

  v18 = objc_alloc(MEMORY[0x1E69788E0]);
  photoLibrary = self->_photoLibrary;
  v20 = [MEMORY[0x1E6978630] fetchType];
  v21 = [v18 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:v20 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  emptyAssetsFetchResult = self->_emptyAssetsFetchResult;
  self->_emptyAssetsFetchResult = v21;

  options = self->_options;
  if (options & 4) == 0 && ((v3 | options))
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingResultsByAssetCollection = self->_pendingResultsByAssetCollection;
    self->_pendingResultsByAssetCollection = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingPreparedResultRecordByAssetCollection = self->_pendingPreparedResultRecordByAssetCollection;
    self->_pendingPreparedResultRecordByAssetCollection = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.photos.datasource.pending-results-queue", v28);
    pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
    self->_pendingResultsIsolationQueue = v29;

    v31 = [MEMORY[0x1E695DFA0] orderedSet];
    queuedAssetCollectionsToFetch = self->_queuedAssetCollectionsToFetch;
    self->_queuedAssetCollectionsToFetch = v31;

    self->_needToStartBackgroundFetch = 1;
    self->_isBackgroundFetching = 1;
    self->_inaccurateAssetCollectionsNeedsUpdate = 1;
    v33 = objc_alloc_init(PXBackgroundFetchToken);
    v34 = [off_1E7721858 sharedScheduler];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __33__PXPhotosDataSource__commonInit__block_invoke;
    v38[3] = &unk_1E774C648;
    v39 = v33;
    v35 = v33;
    [v34 scheduleDeferredTaskWithQoS:1 block:v38];

    if ((self->_options & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  self->_needToStartBackgroundFetch = 0;
  self->_isBackgroundFetching = 0;
  if ((options & 4) == 0)
  {
LABEL_12:
    [(PHPhotoLibrary *)self->_photoLibrary px_registerChangeObserver:self];
    v36 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observersQueue_observers = self->_observersQueue_observers;
    self->_observersQueue_observers = v36;
  }

LABEL_13:
  if (![(PXPhotosDataSource *)self isImmutable]&& ![(PXPhotosDataSource *)self ignoreSharedLibraryFilters])
  {
    [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider registerChangeObserver:self context:PXSharedLibraryStatusProviderObservationContext_205840];
    [(PXLibraryFilterState *)self->_libraryFilterState registerChangeObserver:self context:PXLibraryFilterStateObservationContext_205841];
  }
}

void __41__PXPhotosDataSource_sharedPrefetchQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.photos.datasource.shared-prefetch-queue", attr);
  v3 = sharedPrefetchQueue_sharedPrefetchQueue;
  sharedPrefetchQueue_sharedPrefetchQueue = v2;

  v4 = [off_1E7721858 sharedScheduler];
  [v4 scheduleMainQueueTask:&__block_literal_global_365];
}

+ (OS_dispatch_queue)sharedPrefetchQueue
{
  if (sharedPrefetchQueue_onceToken != -1)
  {
    dispatch_once(&sharedPrefetchQueue_onceToken, &__block_literal_global_361);
  }

  v3 = sharedPrefetchQueue_sharedPrefetchQueue;

  return v3;
}

+ (OS_dispatch_group)backgroundFetchingGroup
{
  if (backgroundFetchingGroup_onceToken != -1)
  {
    dispatch_once(&backgroundFetchingGroup_onceToken, &__block_literal_global_367_206082);
  }

  v3 = backgroundFetchingGroup__sharedGroup;

  return v3;
}

void __45__PXPhotosDataSource_backgroundFetchingGroup__block_invoke()
{
  v0 = dispatch_group_create();
  v1 = backgroundFetchingGroup__sharedGroup;
  backgroundFetchingGroup__sharedGroup = v0;
}

- (void)_observersQueue_copyChangeObserversForWriteIfNeeded
{
  if (self->_observersQueue_shouldCopyChangeObserversOnWrite)
  {
    v3 = [(NSHashTable *)self->_observersQueue_observers copy];
    observersQueue_observers = self->_observersQueue_observers;
    self->_observersQueue_observers = v3;

    self->_observersQueue_shouldCopyChangeObserversOnWrite = 0;
  }
}

- (void)_interruptBackgroundFetch
{
  if (!self->_needToStartBackgroundFetch)
  {
    self->_interruptBackgroundFetch = 1;
  }
}

- (id)_sectionCache
{
  os_unfair_lock_lock(&self->_sectionCacheLock);
  sectionCache = self->__sectionCache;
  if (!sectionCache || (collectionListFetchResult = self->_collectionListFetchResult, [(PXPhotosDataSourceSectionCache *)sectionCache collectionListFetchResult], v5 = objc_claimAutoreleasedReturnValue(), v5, collectionListFetchResult != v5))
  {
    v6 = [[PXPhotosDataSourceSectionCache alloc] initWithCollectionListFetchResult:self->_collectionListFetchResult];
    v7 = self->__sectionCache;
    self->__sectionCache = v6;
  }

  v8 = self->__sectionCache;
  os_unfair_lock_unlock(&self->_sectionCacheLock);

  return v8;
}

- (id)_inaccurateAssetCollections
{
  [(PXPhotosDataSource *)self _updateInaccurateAssetCollectionsIfNeeded];
  inaccurateAssetCollections = self->__inaccurateAssetCollections;

  return inaccurateAssetCollections;
}

- (void)_updateInaccurateAssetCollectionsIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_inaccurateAssetCollectionsNeedsUpdate)
  {
    self->_inaccurateAssetCollectionsNeedsUpdate = 0;
    options = self->_options;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_collectionListFetchResult;
    v6 = [(PHFetchResult *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v6)
    {
      goto LABEL_30;
    }

    v7 = v6;
    v8 = *v18;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v10, v17];
        if ((options & 1) == 0)
        {
          if ((options & 0x10) != 0)
          {
            if ([v10 px_supportsFastCuration])
            {
              v12 = (options & 0x20) == 0;
            }

            else
            {
              v12 = 0;
            }

            if (v12)
            {
              goto LABEL_28;
            }
          }

          else if ((options & 0x20) == 0)
          {
            goto LABEL_28;
          }
        }

        v13 = [v11 fetchResult];

        if (!v13)
        {
          [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch addObject:v10];
          inaccurateAssetCollections = self->__inaccurateAssetCollections;
LABEL_27:
          [inaccurateAssetCollections addObject:v10];
          goto LABEL_28;
        }

        if ((options & 0x10) != 0)
        {
          v15 = [v11 curatedFetchResult];
          v2 = v15;
          if (!v15)
          {
            goto LABEL_26;
          }

          if ((options & 0x20) == 0)
          {

            goto LABEL_28;
          }
        }

        else if ((options & 0x20) == 0)
        {
          goto LABEL_28;
        }

        v16 = [v11 keyAssetsFetchResult];

        if ((options & 0x10) != 0)
        {
        }

        if (!v16)
        {
LABEL_26:
          inaccurateAssetCollections = self->_queuedAssetCollectionsToFetch;
          goto LABEL_27;
        }

LABEL_28:
      }

      v7 = [(PHFetchResult *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v7)
      {
LABEL_30:

        return;
      }
    }
  }
}

- (id)immutableCopy
{
  v2 = [[PXPhotosDataSource alloc] initWithPhotosDataSource:self options:[(PXPhotosDataSource *)self options]& 0xFFFFFFFFFFFFFFFALL | 4];

  return v2;
}

- (PHCollection)containerCollection
{
  containerCollection = self->_containerCollection;
  if (containerCollection)
  {
    v3 = containerCollection;
  }

  else if ([(PXPhotosDataSource *)self numberOfSections]== 1)
  {
    v3 = [(PXPhotosDataSource *)self firstAssetCollection];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_curationSharedBackgroundQueue
{
  if (_curationSharedBackgroundQueue_onceToken != -1)
  {
    dispatch_once(&_curationSharedBackgroundQueue_onceToken, &__block_literal_global_206085);
  }

  v3 = _curationSharedBackgroundQueue_sharedCurationBackgroundQueue;

  return v3;
}

void __52__PXPhotosDataSource__curationSharedBackgroundQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.photos.datasource.curation-shared-background-queue", attr);
  v2 = [[PXLIFOQueue alloc] initWithTargetQueue:v1];
  v3 = _curationSharedBackgroundQueue_sharedCurationBackgroundQueue;
  _curationSharedBackgroundQueue_sharedCurationBackgroundQueue = v2;
}

- (BOOL)isEmpty
{
  if ([(PXPhotosDataSource *)self isImmutable]&& (v3 = self->_cachedIsEmpty) != 0)
  {

    return [(NSNumber *)v3 BOOLValue];
  }

  else
  {
    v5 = [(PXPhotosDataSource *)self numberOfSections];
    v6 = 1;
    if (v5)
    {
      v7 = v5;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 1;
      if ([(PXPhotosDataSource *)self numberOfItemsInSection:0]> 0 || v7 >= 2 && [(PXPhotosDataSource *)self numberOfItemsInSection:v7 - 1]>= 1)
      {
        *(v17 + 24) = 0;
      }

      v8 = v17;
      if (*(v17 + 24) == 1)
      {
        v9 = [(PXPhotosDataSource *)self backgroundFetchOriginSection];
        if (v9 < 0 || v9 >= v7)
        {
          v8 = v17;
        }

        else
        {
          v10 = [(PXPhotosDataSource *)self numberOfItemsInSection:v9];
          v8 = v17;
          if (v10 >= 1)
          {
            *(v17 + 24) = 0;
          }
        }
      }

      if (*(v8 + 24) == 1)
      {
        resultRecordByAssetCollection = self->_resultRecordByAssetCollection;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __29__PXPhotosDataSource_isEmpty__block_invoke;
        v15[3] = &unk_1E77443A0;
        v15[4] = &v16;
        [(NSMutableDictionary *)resultRecordByAssetCollection enumerateKeysAndObjectsUsingBlock:v15];
        if (v7 >= 1 && (v17[3] & 1) != 0)
        {
          v12 = 0;
          while (![(PXPhotosDataSource *)self numberOfItemsInSection:v12])
          {
            if (v7 == ++v12)
            {
              goto LABEL_25;
            }
          }

          *(v17 + 24) = 0;
        }
      }

LABEL_25:
      if ([(PXPhotosDataSource *)self isImmutable])
      {
        v13 = [MEMORY[0x1E696AD98] numberWithBool:*(v17 + 24)];
        cachedIsEmpty = self->_cachedIsEmpty;
        self->_cachedIsEmpty = v13;
      }

      v6 = *(v17 + 24);
      _Block_object_dispose(&v16, 8);
    }

    return v6 & 1;
  }
}

- (BOOL)_allSectionsConsideredAccurate
{
  v2 = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)startBackgroundFetchIfNeeded
{
  if (self->_needToStartBackgroundFetch)
  {
    self->_needToStartBackgroundFetch = 0;
    if (!self->_backgroundFetchToken)
    {
      v3 = objc_alloc_init(PXBackgroundFetchToken);
      backgroundFetchToken = self->_backgroundFetchToken;
      self->_backgroundFetchToken = v3;
    }

    [(PXPhotosDataSource *)self _updateInaccurateAssetCollectionsIfNeeded];
    v5 = [(PXPhotosDataSource *)self _nextBackgroundFetchId];
    objc_initWeak(&location, self);
    v6 = [(PXPhotosDataSource *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PXPhotosDataSource_startBackgroundFetchIfNeeded__block_invoke;
    block[3] = &unk_1E7749808;
    objc_copyWeak(v8, &location);
    v8[1] = v5;
    dispatch_async(v6, block);

    objc_destroyWeak(v8);
    objc_destroyWeak(&location);
  }
}

void __50__PXPhotosDataSource_startBackgroundFetchIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 26);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__PXPhotosDataSource_startBackgroundFetchIfNeeded__block_invoke_2;
    v5[3] = &unk_1E7749808;
    objc_copyWeak(v6, (a1 + 32));
    v6[1] = *(a1 + 40);
    [v4 dispatchAsync:v5];
    objc_destroyWeak(v6);
  }
}

void __50__PXPhotosDataSource_startBackgroundFetchIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchRemainingCollectionsBackgroundLoopWithId:*(a1 + 40)];
}

- (OS_os_log)dataSourceLog
{
  if (dataSourceLog_onceToken != -1)
  {
    dispatch_once(&dataSourceLog_onceToken, &__block_literal_global_558);
  }

  v3 = dataSourceLog_dataSourceLog;

  return v3;
}

void __35__PXPhotosDataSource_dataSourceLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "PXPhotosDataSource");
  v1 = dataSourceLog_dataSourceLog;
  dataSourceLog_dataSourceLog = v0;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryStatusProviderObservationContext_205840 == a5)
  {
    if ((v6 & 3) == 0)
    {
      goto LABEL_11;
    }

    v15 = v9;
    v11 = [(PXPhotosDataSource *)self sharedLibraryStatusProvider];
    v12 = [v11 hasPreview];

    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    [(PXPhotosDataSource *)self _internalSetLibraryFilter:v13];
    goto LABEL_10;
  }

  if (PXLibraryFilterStateObservationContext_205841 != a5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:4178 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v15 = v9;
    v10 = [(PXPhotosDataSource *)self libraryFilterState];
    -[PXPhotosDataSource _internalSetLibraryFilter:](self, "_internalSetLibraryFilter:", [v10 viewMode]);

LABEL_10:
    v9 = v15;
  }

LABEL_11:
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v6 = self->_collectionListFetchResult;
  v7 = [(PHFetchResult *)v6 countByEnumeratingWithState:&v88 objects:v93 count:16];
  if (v7)
  {
    v8 = *v89;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v89 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(PXPhotosDataSource *)self _bringFetchResultsUpToDateWithFetcherCacheForAssetCollection:*(*(&v88 + 1) + 8 * i)];
      }

      v7 = [(PHFetchResult *)v6 countByEnumeratingWithState:&v88 objects:v93 count:16];
    }

    while (v7);
  }

  objc_storeStrong(&self->_hintIndexPathByAssetReferenceCache, self->_preparedIndexPathByAssetReferenceCache);
  v10 = [v5 changeDetailsForFetchResult:self->_collectionListFetchResult];
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_resultRecordByAssetCollection, "count")}];
  resultRecordByAssetCollection = self->_resultRecordByAssetCollection;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke;
  v85[3] = &unk_1E7744698;
  v85[4] = self;
  v86 = v5;
  v13 = v11;
  v14 = v86;
  v15 = v13;
  v87 = v13;
  v16 = resultRecordByAssetCollection;
  v17 = v15;
  [(NSMutableDictionary *)v16 enumerateKeysAndObjectsUsingBlock:v85];
  v69 = self->_preparedContainerChangeDetails;
  if (!v69)
  {
    goto LABEL_11;
  }

  v18 = [(PXPhotosDataSource *)self container];
  v19 = [(PHObjectChangeDetails *)v69 objectBeforeChanges];
  v20 = v19 == v18;

  if (v20)
  {

LABEL_13:
    v22 = [(PHObjectChangeDetails *)self->_preparedContainerChangeDetails objectAfterChanges];
    v23 = v22;
    if (self->_assetContainerProvider)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke_2;
      aBlock[3] = &unk_1E77446C0;
      v84 = v22;
      v24 = _Block_copy(aBlock);
      assetContainerProvider = self->_assetContainerProvider;
      self->_assetContainerProvider = v24;

      containerCollection = v84;
LABEL_15:

      v67 = 1;
LABEL_22:

      goto LABEL_23;
    }

    if (!self->_containerCollection || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v67 = 0;
      goto LABEL_22;
    }

    v27 = v23;
    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_20:
        containerCollection = self->_containerCollection;
        self->_containerCollection = v27;
        goto LABEL_15;
      }

      v68 = [MEMORY[0x1E696AAA8] currentHandler];
      v62 = objc_opt_class();
      v61 = NSStringFromClass(v62);
      v63 = [(PHCollection *)v27 px_descriptionForAssertionMessage];
      [v68 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:4049 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"containerAfterChange", v61, v63}];
    }

    else
    {
      v68 = [MEMORY[0x1E696AAA8] currentHandler];
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      [v68 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:4049 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"containerAfterChange", v61}];
    }

    goto LABEL_20;
  }

  v21 = [v14 changeDetailsForObject:v18];

  v69 = v21;
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_11:
  v69 = 0;
  v67 = 0;
LABEL_23:
  if (!v10 && (([v17 count] == 0) & ~v67) != 0)
  {
    v10 = 0;
    goto LABEL_47;
  }

  v66 = [(PXPhotosDataSource *)self versionIdentifier];
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke_3;
  v78[3] = &unk_1E7749A28;
  v78[4] = self;
  v78[5] = &v79;
  v28 = _Block_copy(v78);
  v29 = v28;
  if (v10)
  {
    (*(v28 + 2))(v28);
    if ([v10 hasIncrementalChanges])
    {
      v30 = self->_resultRecordByAssetCollection;
      v31 = [v10 removedObjects];
      [(NSMutableDictionary *)v30 removeObjectsForKeys:v31];

      infoForAssetCollection = self->_infoForAssetCollection;
      v33 = [v10 removedObjects];
      [(NSMutableDictionary *)infoForAssetCollection removeObjectsForKeys:v33];
    }

    else
    {
      if (!self->_collectionListFetchResult)
      {
LABEL_40:
        v42 = [v10 fetchResultAfterChanges];
        collectionListFetchResult = self->_collectionListFetchResult;
        self->_collectionListFetchResult = v42;

        os_unfair_lock_lock(&self->_sectionCacheLock);
        objc_storeStrong(&self->__sectionCache, self->__preparedSectionCache);
        os_unfair_lock_unlock(&self->_sectionCacheLock);
        goto LABEL_41;
      }

      v33 = [v10 fetchResultAfterChanges];
      v34 = MEMORY[0x1E695DFD8];
      v35 = [v33 fetchedObjects];
      v36 = [v34 setWithArray:v35];

      v64 = v17;
      v65 = v14;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v37 = self->_collectionListFetchResult;
      v38 = [(PHFetchResult *)v37 countByEnumeratingWithState:&v74 objects:v92 count:16];
      if (v38)
      {
        v39 = *v75;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v75 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = *(*(&v74 + 1) + 8 * j);
            if (([v36 containsObject:v41] & 1) == 0)
            {
              [(NSMutableDictionary *)self->_resultRecordByAssetCollection removeObjectForKey:v41];
              [(NSMutableDictionary *)self->_infoForAssetCollection removeObjectForKey:v41];
            }
          }

          v38 = [(PHFetchResult *)v37 countByEnumeratingWithState:&v74 objects:v92 count:16];
        }

        while (v38);
      }

      v17 = v64;
      v14 = v65;
    }

    goto LABEL_40;
  }

LABEL_41:
  v44 = [MEMORY[0x1E696AD50] indexSet];
  v45 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v17, "count")}];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke_4;
  v70[3] = &unk_1E77446E8;
  v70[4] = self;
  v46 = v29;
  v73 = v46;
  v47 = v45;
  v71 = v47;
  v48 = v44;
  v72 = v48;
  [v17 enumerateKeysAndObjectsUsingBlock:v70];
  if (v67)
  {
    v46[2](v46);
    if (!v10)
    {
      v49 = objc_alloc(MEMORY[0x1E6978848]);
      v50 = [(PXPhotosDataSource *)self collectionListFetchResult];
      v51 = [(PXPhotosDataSource *)self collectionListFetchResult];
      v10 = [v49 initWithFetchResult:v50 currentFetchResult:v51 changedIdentifiers:MEMORY[0x1E695E0F0] unknownMergeEvent:0];
    }
  }

  if (*(v80 + 24) == 1)
  {
    v52 = [(PXPhotosDataSource *)self versionIdentifier];
    v53 = [(PXPhotosDataSource *)self _sectionCache];
    v54 = [v53 assetCollectionToSection];

    v55 = [[PXPhotosDataSourceChange alloc] initWithIncrementalChanges:v10 assetCollectionChangeDetails:v47 sectionsWithKeyAssetChanges:v48 previousCollectionsCount:[(PXPhotosDataSource *)self _previousCollectionsCount] assetCollectionToSectionCache:v54 originatingPhotoLibraryChange:v14 fromIdentifier:v66 toIdentifier:v52];
    [(PXPhotosDataSource *)self _didChange:v55];
  }

  _Block_object_dispose(&v79, 8);
LABEL_47:
  preparedIndexPathByAssetReferenceCache = self->_preparedIndexPathByAssetReferenceCache;
  self->_preparedIndexPathByAssetReferenceCache = 0;

  preparedResultRecordChangeDetailsByAssetCollection = self->_preparedResultRecordChangeDetailsByAssetCollection;
  self->_preparedResultRecordChangeDetailsByAssetCollection = 0;

  preparedSectionCache = self->__preparedSectionCache;
  self->__preparedSectionCache = 0;

  preparedContainerChangeDetails = self->_preparedContainerChangeDetails;
  self->_preparedContainerChangeDetails = 0;

  [(PXPhotosDataSource *)self _publishDidReceivePhotoLibraryChange:v14];
}

void __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v11];
  v7 = [v6 resultRecordBeforeChanges];

  if (v7 == v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = [PXPhotosResultRecordChangeDetails resultRecordChangeDetailsFor:v5 withChange:*(a1 + 40)];
  }

  v9 = v8;
  v10 = [v8 resultRecordAfterChanges];

  if (v10 != v5)
  {
    [*(a1 + 48) setObject:v9 forKeyedSubscript:v11];
  }
}

uint64_t __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke_3(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return [*(result + 32) _willChange];
  }

  return result;
}

void __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:v11];
  if (v6)
  {
    v7 = [v5 exposedFetchResultChangeDetails];

    if (v7)
    {
      (*(*(a1 + 56) + 16))();
      v8 = [v5 exposedFetchResultChangeDetails];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v11];
    }

    v9 = [v5 keyAssetsFetchResultChangeDetails];

    if (v9)
    {
      (*(*(a1 + 56) + 16))();
      [*(a1 + 48) addIndex:{objc_msgSend(*(a1 + 32), "sectionForAssetCollection:", v11)}];
    }

    v10 = [v5 resultRecordAfterChanges];
    [*(*(a1 + 32) + 80) setObject:v10 forKeyedSubscript:v11];
  }
}

- (void)_bringFetchResultsUpToDateWithFetcherCacheForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];
  v6 = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = (BYTE1(self->_options) >> 2) & 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PXPhotosDataSource *)self fetcher];
  v10 = [(PXPhotosDataSource *)self _assetContainerForAssetCollection:v4];
  if (v7 && !v8)
  {
    goto LABEL_38;
  }

  v11 = [v5 fetchResult];
  if (!v11)
  {
    v29 = 0;
    v28 = 0;
    [(PXPhotosDataSource *)self _getFetchLimit:&v29 fetchWithReverseSortOrder:&v28 forAssetCollection:v4 isLimitedInitialFetch:v8];
    options = self->_options;
    if ((options & 0x40) != 0)
    {
      goto LABEL_12;
    }

    v13 = (options & 0x10000) == 0;
    v14 = v8 ^ 1;
    if (v13)
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = [(PXPhotosDataSource *)self _fetcherConfigurationForAssetCollection:v4 useCase:0 isLimitedInitialFetch:v8];
      v11 = [v9 existingAssetsFetchResultForContainer:v10 configuration:v15];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_12:
      v11 = self->_emptyAssetsFetchResult;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    v16 = [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:v4];
    if (v28 == 1)
    {
      v17 = [(PXPhotosDataSource *)self reverseSortOrder]^ 1;
    }

    else
    {
      v17 = 0;
    }

    [v16 setFetchResult:v11 reverseSortOrder:v17];
  }

LABEL_19:
  v18 = self->_options;
  if ((v18 & 0x10) != 0 && [v4 px_supportsFastCuration])
  {
    v19 = [v5 curatedFetchResult];
    if (!v19)
    {
      v20 = [(PXPhotosDataSource *)self _fetcherConfigurationForAssetCollection:v4 useCase:1 isLimitedInitialFetch:v8];
      v19 = [v9 existingAssetsFetchResultForContainer:v10 configuration:v20];
      if (v19)
      {
        [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:v4];
        v21 = v27 = v20;
        [v21 setCuratedFetchResult:v19];

        v20 = v27;
      }
    }
  }

  if ((self->_options & 0x20) != 0)
  {
    v22 = [v4 px_supportsFastCuration];
    if ((v18 & 0x10) == 0 || v22)
    {
      v23 = [v5 keyAssetsFetchResult];
      if (!v23)
      {
        if ((v18 & 0x10) != 0)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v25 = [(PXPhotosDataSource *)self _fetcherConfigurationForAssetCollection:v4 useCase:v24 isLimitedInitialFetch:v8];
        v23 = [v9 existingAssetsFetchResultForContainer:v10 configuration:v25];
        if (v23)
        {
          v26 = [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:v4];
          [v26 setKeyAssetsFetchResult:v23];
        }
      }
    }
  }

LABEL_38:
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v97 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
  v51 = self;
  if (pendingResultsIsolationQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke;
    block[3] = &unk_1E774C620;
    block[4] = self;
    v95 = v4;
    dispatch_sync(pendingResultsIsolationQueue, block);
  }

  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__205867;
  v92 = __Block_byref_object_dispose__205868;
  v93 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__205867;
  v86 = __Block_byref_object_dispose__205868;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__205867;
  v80 = __Block_byref_object_dispose__205868;
  v81 = 0;
  v7 = [(PXPhotosDataSource *)self clientQueue];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_4;
  v75[3] = &unk_1E7744670;
  v75[4] = self;
  v75[5] = &v82;
  v75[6] = &v88;
  v75[7] = &v76;
  dispatch_sync(v7, v75);

  v8 = [v5 changeDetailsForFetchResult:v89[5]];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 fetchResultAfterChanges];
    v11 = [[PXPhotosDataSourceSectionCache alloc] initWithCollectionListFetchResult:v10];
    preparedSectionCache = self->__preparedSectionCache;
    self->__preparedSectionCache = v11;

    v13 = v89[5];
    v89[5] = v10;
  }

  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = v83[5];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_5;
  v71[3] = &unk_1E7744698;
  v50 = v5;
  v72 = v50;
  v73 = self;
  v16 = v14;
  v74 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v71];
  v17 = [v16 copy];
  v54 = v16;
  preparedResultRecordChangeDetailsByAssetCollection = self->_preparedResultRecordChangeDetailsByAssetCollection;
  self->_preparedResultRecordChangeDetailsByAssetCollection = v17;

  v52 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v77[5], "count")}];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v77[5];
  v19 = [obj countByEnumeratingWithState:&v67 objects:v96 count:16];
  if (v19)
  {
    v20 = *v68;
    v53 = v9;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v68 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v67 + 1) + 8 * i);
        v23 = [v22 assetCollection];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v22 asset];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }

          v23 = [v22 assetCollection];
          if (v22)
          {
            [v22 simpleIndexPath];
            v26 = *(&v65 + 1);
          }

          else
          {
            v26 = 0;
            v65 = 0u;
            v66 = 0u;
          }

          if (v26 >= [v89[5] count] || (objc_msgSend(v89[5], "objectAtIndexedSubscript:", v26), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqual:", v23), v27, (v28 & 1) == 0))
          {
            v26 = [v89[5] indexOfObject:v23];
          }

          if (v26 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v29 = [v54 objectForKeyedSubscript:v23];
            v30 = [v29 resultRecordAfterChanges];
            v31 = [v30 exposedFetchResult];

            if (v31)
            {
              v32 = [v22 asset];
              if (v22)
              {
                [v22 simpleIndexPath];
                v33 = v64;
              }

              else
              {
                v33 = 0;
                v63 = 0u;
                v64 = 0u;
              }

              if (v33 < [v31 count] && (v34 = objc_msgSend(v31, "indexOfObject:inRange:", v32, v33, 1), v34 != 0x7FFFFFFFFFFFFFFFLL) || (v34 = objc_msgSend(v31, "indexOfObject:", v32), v34 != 0x7FFFFFFFFFFFFFFFLL))
              {
                v35 = [v31 objectAtIndex:v34];
                v36 = [MEMORY[0x1E696AC88] indexPathForItem:v34 inSection:v26];
                [v52 setObject:v36 forKeyedSubscript:v22];
              }

              v9 = v53;
            }
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v67 objects:v96 count:16];
    }

    while (v19);
  }

  v37 = [v52 copy];
  preparedIndexPathByAssetReferenceCache = v51->_preparedIndexPathByAssetReferenceCache;
  v51->_preparedIndexPathByAssetReferenceCache = v37;

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__205867;
  v61 = __Block_byref_object_dispose__205868;
  v62 = 0;
  v39 = [(PXPhotosDataSource *)v51 clientQueue];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_6;
  v56[3] = &unk_1E7749A28;
  v56[4] = v51;
  v56[5] = &v57;
  dispatch_sync(v39, v56);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = 0;
    goto LABEL_37;
  }

  v40 = v58[5];
  if (!v40)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    [v44 handleFailureInMethod:a2 object:v51 file:@"PXPhotosDataSource.m" lineNumber:3931 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"container", v46}];
LABEL_40:

    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v47 = objc_opt_class();
    v46 = NSStringFromClass(v47);
    v48 = [v40 px_descriptionForAssertionMessage];
    [v44 handleFailureInMethod:a2 object:v51 file:@"PXPhotosDataSource.m" lineNumber:3931 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"container", v46, v48}];

    goto LABEL_40;
  }

LABEL_35:
  v41 = [v50 changeDetailsForObject:v40];

LABEL_37:
  preparedContainerChangeDetails = v51->_preparedContainerChangeDetails;
  v51->_preparedContainerChangeDetails = v41;

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);

  return 0;
}

void __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) copy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_2;
  v11[3] = &unk_1E77445D0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v12 = v3;
  v13 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v11];
  v5 = [*(*(a1 + 32) + 176) copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_3;
  v8[3] = &unk_1E7744378;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 376));
  v5 = [*(a1 + 32) _observerInterestingAssetReferences];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [PXPhotosResultRecordChangeDetails resultRecordChangeDetailsFor:a3 withChange:*(a1 + 32)];
  v6 = v5;
  if ((*(*(a1 + 40) + 352) & 2) != 0)
  {
    v7 = [v5 resultRecordBeforeChanges];
    v8 = [v7 exposedFetchResult];
    v9 = [v6 resultRecordAfterChanges];
    v10 = [v9 exposedFetchResult];

    if (v8 != v10)
    {
      v11 = [v6 resultRecordAfterChanges];
      v12 = [v11 exposedFetchResult];
      [v12 countOfAssetsWithMediaType:1];
    }
  }

  [*(a1 + 48) setObject:v6 forKeyedSubscript:v13];
}

void __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) container];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v6 resultTupleUpdatedWithChange:v5];

  if (v7 != v6)
  {
    [*(*(a1 + 40) + 168) setObject:v7 forKeyedSubscript:v8];
  }
}

void __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [PXPhotosResultRecordChangeDetails resultRecordChangeDetailsFor:a3 withChange:*(a1 + 32)];
  v6 = [v5 resultRecordBeforeChanges];
  v7 = [v5 resultRecordAfterChanges];

  if (v6 != v7)
  {
    v8 = [v5 resultRecordAfterChanges];
    [*(*(a1 + 40) + 176) setObject:v8 forKeyedSubscript:v9];
  }
}

- (void)_restartBackgroundFetchWithAssetCollectionsToDiff:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self _sectionCache];
  v6 = [v5 assetCollections];

  v7 = [(PXPhotosDataSource *)self supportsDynamicBackgroundFetching];
  if (self->_needToStartBackgroundFetch)
  {
    [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch addObjectsFromArray:v6];
  }

  else if (v7)
  {
    self->_needToStartBackgroundFetch = 1;
    self->_isBackgroundFetching = 1;
    [(PXPhotosDataSource *)self startBackgroundFetchIfNeeded];
    backgroundQueue = self->_backgroundQueue;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __72__PXPhotosDataSource__restartBackgroundFetchWithAssetCollectionsToDiff___block_invoke;
    v21 = &unk_1E774C620;
    v22 = self;
    v9 = v6;
    v23 = v9;
    dispatch_async(backgroundQueue, &v18);
    [(NSMutableSet *)self->__inaccurateAssetCollections addObjectsFromArray:v9, v18, v19, v20, v21, v22];
    if ([v4 count])
    {
      v10 = [v4 allObjects];
      [(PXPhotosDataSource *)self forceAccurateAssetCollectionsIfNeeded:v10 reloadChanges:0];
    }

    v11 = [v4 allObjects];
    v12 = [(PXPhotosDataSource *)self sectionsForAssetCollections:v11];

    v13 = [v12 px_coveringRange];
    if (!v14 || v13 == 0x7FFFFFFFFFFFFFFFLL || (v15 = v13 + (v14 >> 1), v15 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v15 = [(PXPhotosDataSource *)self backgroundFetchOriginSection];
    }

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    [(PXPhotosDataSource *)self _forceAccurateSection:v16 andNumberOfSurroundingSectionsWithContent:10];
  }

  else
  {
    [(PXPhotosDataSource *)self _cancelBackgroundFetchIfNeeded];
    v17 = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
    [v17 removeAllObjects];

    [(NSMutableDictionary *)self->_resultRecordByAssetCollection removeAllObjects];
  }
}

- (void)_didFinishBackgroundFetchingForId:(int64_t)a3
{
  v3 = atomic_load(&self->_backgroundFetchId);
  if (v3 == a3)
  {
    self->_didFinishBackgroundFetch = 1;
  }
}

- (void)_childDataSourceDidUpdateFetchesForAssetCollection:(id)a3
{
  v5 = a3;
  if ([(PXPhotosDataSource *)self sectionForAssetCollection:?]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PXPhotosDataSource *)self _bringFetchResultsUpToDateWithFetcherCacheForAssetCollection:v5];
    WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);
    [WeakRetained _childDataSourceDidUpdateFetchesForAssetCollection:v5];
  }
}

- (BOOL)_addResultTuple:(id)a3 forAssetCollection:(id)a4 preparedResultRecord:(id)a5 toMutableResultRecord:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PXPhotosDataSource *)self _isResultTupleApplicable:v10 forAssetCollection:v11];
  if (v14)
  {
    v15 = [v13 fetchResult];
    if (!v15 || (v16 = self->_options & 0x800400, v15, v16))
    {
      if ([v10 fetchedWithReverseSortOrder])
      {
        v17 = [(PXPhotosDataSource *)self reverseSortOrder]^ 1;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v10 fetchResult];
      [v13 setFetchResult:v18 reverseSortOrder:v17];
    }

    v19 = [v13 keyAssetsFetchResult];

    if (!v19)
    {
      v20 = [v10 keyAssetsFetchResult];
      [v13 setKeyAssetsFetchResult:v20];
    }

    v21 = [v13 curatedFetchResult];

    if (!v21)
    {
      v22 = [v10 curatedFetchResult];
      [v13 setCuratedFetchResult:v22];

      v23 = [v10 curatedRefetchCondition];
      [v13 setCuratedRefetchCondition:v23];
    }

    if (v12)
    {
      [v13 adoptPreparedFilteredFetchResultFromRecord:v12];
    }

    WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);
    [WeakRetained _childDataSourceDidUpdateFetchesForAssetCollection:v11];
  }

  return v14;
}

- (void)_processAndPublishPendingCollectionFetchResults
{
  self->_processAndPublishScheduledOnRunloop = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__205867;
  v14 = __Block_byref_object_dispose__205868;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__205867;
  v8[4] = __Block_byref_object_dispose__205868;
  v9 = 0;
  pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke;
  block[3] = &unk_1E7746888;
  block[4] = self;
  block[5] = &v10;
  block[6] = v8;
  dispatch_sync(pendingResultsIsolationQueue, block);
  if (![(PXPhotosDataSource *)self _allSectionsConsideredAccurate]|| (self->_options & 0x800000) != 0 || [(PXPhotosDataSource *)self _areSecondaryFetchesEnabled])
  {
    v4 = [v11[5] allKeys];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke_2;
    v6[3] = &unk_1E7746888;
    v6[4] = self;
    v6[5] = &v10;
    v6[6] = v8;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v4 changeBlock:v6];

    [(NSMutableDictionary *)self->_preparedChangeDetailsByAssetCollection removeAllObjects];
  }

  else
  {
    [(NSMutableDictionary *)self->_preparedChangeDetailsByAssetCollection removeAllObjects];
  }

  if (self->_didFinishBackgroundFetch && [(PXPhotosDataSource *)self isBackgroundFetching])
  {
    [(PXPhotosDataSource *)self setIsBackgroundFetching:0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke_4;
    v5[3] = &unk_1E7744268;
    v5[4] = self;
    [(PXPhotosDataSource *)self _enumerateChangeObserversWithBlock:v5];
  }

  _Block_object_dispose(v8, 8);

  _Block_object_dispose(&v10, 8);
}

uint64_t __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 168) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 176) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1[4] + 168) removeAllObjects];
  v8 = *(a1[4] + 176);

  return [v8 removeAllObjects];
}

uint64_t __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke_2(void *a1)
{
  v1 = *(*(a1[5] + 8) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke_3;
  v4[3] = &unk_1E7744648;
  v2 = a1[6];
  v4[4] = a1[4];
  v4[5] = v2;
  return [v1 enumerateKeysAndObjectsUsingBlock:v4];
}

void __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 photosDataSourceDidFinishBackgroundFetching:*(a1 + 32)];
  }
}

void __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _mutableResultRecordForAssetCollection:v9];
  if ([*(a1 + 32) sectionForAssetCollection:v9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v9];
    if ([*(a1 + 32) _addResultTuple:v5 forAssetCollection:v9 preparedResultRecord:v7 toMutableResultRecord:v6])
    {
      v8 = [*(a1 + 32) _inaccurateAssetCollections];
      [v8 removeObject:v9];
    }
  }
}

- (void)_performProcessAndPublishSelectorInDefaultRunLoopMode
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E695D918];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [(PXPhotosDataSource *)self performSelectorOnMainThread:sel__processAndPublishPendingCollectionFetchResults withObject:0 waitUntilDone:0 modes:v3];
}

- (void)_prepareDiffsForPendingResultsWithCompletion:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__205867;
  v28 = __Block_byref_object_dispose__205868;
  v29 = 0;
  pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v24;
  dispatch_sync(pendingResultsIsolationQueue, block);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v25[5];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_2;
  v20[3] = &unk_1E77445D0;
  v8 = v6;
  v21 = v8;
  v22 = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v20];
  v9 = [(PXPhotosDataSource *)self clientQueue];
  backgroundQueue = self->_backgroundQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_3;
  v14[3] = &unk_1E7744620;
  v18 = v4;
  v19 = &v24;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v11 = v4;
  v12 = v9;
  v13 = v8;
  dispatch_async(backgroundQueue, v14);

  _Block_object_dispose(&v24, 8);
}

void __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 _assetsForAssetCollection:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

void __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_3(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = a1[4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_4;
  v11[3] = &unk_1E77445F8;
  v13 = a1[8];
  v4 = v2;
  v12 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_5;
  block[3] = &unk_1E774A0E0;
  v5 = a1[5];
  v6 = a1[7];
  block[4] = a1[6];
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

void __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = a3;
  v7 = a2;
  v10 = [v5 objectForKeyedSubscript:v7];
  v8 = [v10 fetchResult];
  v9 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v6 toFetchResult:v8 changedObjects:MEMORY[0x1E695E0F0]];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

uint64_t __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_5(void *a1)
{
  [*(a1[4] + 104) addEntriesFromDictionary:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)_processAndPublishPendingCollectionFetchResultsWhenAppropriate
{
  if (self->_allowNextChangeDeliveryOnAllRunLoopModes)
  {
    self->_allowNextChangeDeliveryOnAllRunLoopModes = 0;

    [(PXPhotosDataSource *)self _processAndPublishPendingCollectionFetchResults];
  }

  else if (!self->_processAndPublishScheduledOnRunloop && !self->_pauseBackgroundFetchResultsDelivery)
  {
    self->_processAndPublishScheduledOnRunloop = 1;
    if ((self->_options & 0x400) != 0)
    {
      v4[5] = v2;
      v4[6] = v3;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __84__PXPhotosDataSource__processAndPublishPendingCollectionFetchResultsWhenAppropriate__block_invoke;
      v4[3] = &unk_1E774C648;
      v4[4] = self;
      [(PXPhotosDataSource *)self _prepareDiffsForPendingResultsWithCompletion:v4];
    }

    else
    {

      [(PXPhotosDataSource *)self _performProcessAndPublishSelectorInDefaultRunLoopMode];
    }
  }
}

- (void)_fetchRemainingCollectionsBackgroundLoopWithId:(int64_t)a3
{
  v3 = atomic_load(&self->_backgroundFetchId);
  if (v3 == a3)
  {
    objc_initWeak(location, self);
    if (self->_backgroundFetchOriginSectionChanged)
    {
      self->_backgroundFetchOriginSectionChanged = 0;
      v6 = self->_collectionListFetchResult;
      if (v6)
      {
        v7 = [(PXPhotosDataSource *)self backgroundFetchOriginSection];
        v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[PHFetchResult count](v6, "count")}];
        v9 = [(PHFetchResult *)v6 count];
        if (v9 >= 1)
        {
          v10 = 0;
          v11 = -v7;
          do
          {
            v12 = [(PHFetchResult *)v6 objectAtIndexedSubscript:v10];
            if (v11 >= 0)
            {
              v13 = v11;
            }

            else
            {
              v13 = -v11;
            }

            v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
            [v8 setObject:v14 forKeyedSubscript:v12];

            ++v10;
            ++v11;
            --v9;
          }

          while (v9);
        }

        v15 = [MEMORY[0x1E696AD50] indexSet];
        queuedAssetCollectionsToFetch = self->_queuedAssetCollectionsToFetch;
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke;
        v66[3] = &unk_1E7744558;
        v17 = v8;
        v67 = v17;
        v18 = v15;
        v68 = v18;
        [(NSMutableOrderedSet *)queuedAssetCollectionsToFetch enumerateObjectsUsingBlock:v66];
        [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch removeObjectsAtIndexes:v18];
        v19 = self->_queuedAssetCollectionsToFetch;
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_2;
        v64[3] = &unk_1E7744580;
        v20 = v17;
        v65 = v20;
        [(NSMutableOrderedSet *)v19 sortUsingComparator:v64];
      }
    }

    v21 = [MEMORY[0x1E695DF00] date];
    if (!self->_interruptBackgroundFetch)
    {
      v22 = 0;
      do
      {
        v23 = atomic_load(&self->_backgroundFetchId);
        if (v23 != a3)
        {
          break;
        }

        if (v22)
        {
          v24 = [MEMORY[0x1E695DF00] date];
          [v24 timeIntervalSinceDate:v21];
          v26 = v25;

          if (v26 >= 1.0)
          {
            break;
          }
        }

        if (![(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch count])
        {
          [(PXPhotosDataSource *)self _interruptBackgroundFetch];
          break;
        }

        v27 = [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch objectAtIndex:0];
        [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch removeObjectAtIndex:0];
        v28 = [(PXPhotosDataSource *)self _fetchTupleForAssetCollection:v27 calledOnClientQueue:0 isLimitedInitialFetch:0];
        v29 = [v28 fetchResult];
        [v29 count];

        if ((self->_options & 0x400) != 0)
        {
          v30 = [v28 fetchResult];
          v31 = [v30 count];

          if (v31)
          {
            if ([v27 keyAssetsAtEnd])
            {
              v32 = [v28 fetchResult];
              v33 = [v32 count] - 1;
            }

            else
            {
              v33 = 0;
            }

            v34 = [MEMORY[0x1E696AC90] indexSetWithIndex:v33];
            v35 = [v28 fetchResult];
            [v35 prefetchObjectsAtIndexes:v34];

            v36 = [v28 fetchResult];
            [v36 prefetchThumbnailAssetsAtIndexes:v34];
          }
        }

        if ((self->_options & 0x8000) != 0)
        {
          v37 = [(PXPhotosDataSource *)self _createResultRecordForAssetCollection:v27];
          v38 = [v28 fetchResult];
          [v37 setFetchResult:v38 reverseSortOrder:{objc_msgSend(v28, "fetchedWithReverseSortOrder")}];

          v39 = [v28 keyAssetsFetchResult];
          [v37 setKeyAssetsFetchResult:v39];

          v40 = [v28 curatedFetchResult];
          [v37 setCuratedFetchResult:v40];

          v41 = [v28 curatedRefetchCondition];
          [v37 setCuratedRefetchCondition:v41];

          v42 = [v37 exposedFetchResult];
          [v42 px_safelyPrefetchObjectAtIndex:0];

          v43 = [v37 fetchResult];
          [v43 px_safelyPrefetchObjectAtIndex:0];

          v44 = [v37 keyAssetsFetchResult];
          [v44 px_safelyPrefetchObjectAtIndex:0];

          v45 = [v37 curatedFetchResult];
          [v45 px_safelyPrefetchObjectAtIndex:0];
        }

        else
        {
          v37 = 0;
        }

        pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_3;
        block[3] = &unk_1E7744F50;
        block[4] = self;
        v47 = v27;
        v61 = v47;
        v48 = v28;
        v62 = v48;
        v49 = v37;
        v63 = v49;
        dispatch_sync(pendingResultsIsolationQueue, block);
        v50 = +[PXPhotosDataSourceSettings sharedInstance];
        v51 = [v50 slowBackgroundFetch];

        if (v51)
        {
          sleep(3u);
        }

        --v22;
      }

      while (!self->_interruptBackgroundFetch);
    }

    self->_interruptBackgroundFetch = 0;
    v52 = [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch count];
    v53 = [(PXPhotosDataSource *)self clientQueue];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_4;
    v57[3] = &unk_1E77445A8;
    v59 = v52 != 0;
    objc_copyWeak(v58, location);
    v58[1] = a3;
    dispatch_async(v53, v57);

    if (v52)
    {
      backgroundQueue = self->_backgroundQueue;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_5;
      v55[3] = &unk_1E7749808;
      objc_copyWeak(v56, location);
      v56[1] = a3;
      dispatch_async(backgroundQueue, v55);
      objc_destroyWeak(v56);
    }

    objc_destroyWeak(v58);

    objc_destroyWeak(location);
  }
}

void __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v5)
  {
    [*(a1 + 40) addIndex:a3];
    v5 = 0;
  }
}

uint64_t __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

uint64_t __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_3(void *a1)
{
  [*(a1[4] + 168) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = a1[7];
  v3 = a1[5];
  v4 = *(a1[4] + 176);

  return [v4 setObject:v2 forKeyedSubscript:v3];
}

void __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _didFinishBackgroundFetchingForId:*(a1 + 40)];
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _processAndPublishPendingCollectionFetchResultsWhenAppropriate];
}

void __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchRemainingCollectionsBackgroundLoopWithId:*(a1 + 40)];
}

- (void)_cancelBackgroundFetchIfNeeded
{
  if (self->_isBackgroundFetching || self->_needToStartBackgroundFetch)
  {
    [(PXPhotosDataSource *)self setIsBackgroundFetching:0];
    self->_needToStartBackgroundFetch = 0;
    backgroundQueue = self->_backgroundQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PXPhotosDataSource__cancelBackgroundFetchIfNeeded__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(backgroundQueue, block);
    [(PXPhotosDataSource *)self _interruptBackgroundFetch];
  }
}

- (void)setIsBackgroundFetching:(BOOL)a3
{
  if (self->_isBackgroundFetching != a3)
  {
    self->_isBackgroundFetching = a3;
    if (a3)
    {
      self->_didFinishBackgroundFetch = 0;
    }

    else
    {
      [(PXBackgroundFetchToken *)self->_backgroundFetchToken finish];
      backgroundFetchToken = self->_backgroundFetchToken;
      self->_backgroundFetchToken = 0;
    }
  }
}

- (void)_prefetchIndexesByFetchResult:(id)a3 onlyThumbnails:(BOOL)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__PXPhotosDataSource__prefetchIndexesByFetchResult_onlyThumbnails___block_invoke;
    v7[3] = &unk_1E7744530;
    v8 = a4;
    v7[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __67__PXPhotosDataSource__prefetchIndexesByFetchResult_onlyThumbnails___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXPhotosDataSource__prefetchIndexesByFetchResult_onlyThumbnails___block_invoke_2;
  block[3] = &unk_1E774B368;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  v9 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
  dispatch_async(*(*(a1 + 32) + 224), v9);
}

uint64_t __67__PXPhotosDataSource__prefetchIndexesByFetchResult_onlyThumbnails___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) prefetchThumbnailAssetsAtIndexes:*(a1 + 40)];
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 prefetchObjectsAtIndexes:v4];
  }

  return result;
}

- (void)prefetchAssetsInSections:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __47__PXPhotosDataSource_prefetchAssetsInSections___block_invoke;
  v11 = &unk_1E7744508;
  v12 = self;
  v13 = v6;
  v7 = v6;
  [v5 enumerateSectionIndexPathsUsingBlock:&v8];

  [(PXPhotosDataSource *)self _prefetchIndexesByFetchResult:v7 onlyThumbnails:0, v8, v9, v10, v11, v12];
}

void __47__PXPhotosDataSource_prefetchAssetsInSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = [*(a1 + 32) assetsInSection:*(a2 + 8)];
  if (v8)
  {
    v4 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "count")}];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v8];
  }

  v5 = [*(a1 + 32) keyAssetsInSection:*(a2 + 8)];
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)prefetchAssetsAtIndexPaths:(id)a3 onlyThumbnailAssets:(BOOL)a4
{
  v4 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PXPhotosDataSource_prefetchAssetsAtIndexPaths_onlyThumbnailAssets___block_invoke;
  v11[3] = &unk_1E77444E0;
  v12 = v9;
  v13 = a2;
  v11[4] = self;
  v10 = v9;
  [v8 enumerateItemIndexSetsUsingBlock:v11];

  [(PXPhotosDataSource *)self _prefetchIndexesByFetchResult:v10 onlyThumbnails:v4];
}

void __69__PXPhotosDataSource_prefetchAssetsAtIndexPaths_onlyThumbnailAssets___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [v6 assetsInSection:a3];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
}

- (void)prefetchApproximateAssetsAtIndexPaths:(id)a3 reverseOrder:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v26 = v4;
    v27 = self;
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "section")}];
          v16 = [v8 objectForKeyedSubscript:v15];

          if (v16)
          {
            [v16 addIndex:{objc_msgSend(v14, "item")}];
          }

          else
          {
            v16 = [MEMORY[0x1E696AD50] indexSetWithIndex:{objc_msgSend(v14, "item")}];
            v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "section")}];
            [v8 setObject:v16 forKeyedSubscript:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v11);
    }

    v18 = [MEMORY[0x1E695DF90] dictionary];
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v20 = [MEMORY[0x1E696AD50] indexSet];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke;
    v34[3] = &unk_1E77444B8;
    v34[4] = v27;
    v21 = v18;
    v35 = v21;
    v22 = v19;
    v36 = v22;
    v23 = v20;
    v37 = v23;
    [v8 enumerateKeysAndObjectsUsingBlock:v34];
    if ([v21 count])
    {
      if (v26)
      {
        v24 = 2;
      }

      else
      {
        v24 = 0;
      }

      prefetchQueue = v27->_prefetchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke_2;
      block[3] = &unk_1E7747928;
      v29 = v23;
      v33 = v24;
      v30 = v22;
      v31 = v21;
      v32 = v27;
      dispatch_async(prefetchQueue, block);
    }
  }
}

void __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke(id *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [a1[4] assetsInSection:{objc_msgSend(v12, "integerValue")}];
  if (v6)
  {
    v7 = [v5 px_coveringRange];
    v9 = v8;
    v15.length = [v6 count];
    v14.location = v7;
    v14.length = v9;
    v15.location = 0;
    v10 = NSIntersectionRange(v14, v15);
    v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v10.location, v10.length}];
    [a1[5] setObject:v11 forKeyedSubscript:v6];
    [a1[6] setObject:v6 forKeyedSubscript:v12];
    [a1[7] addIndex:{objc_msgSend(v12, "integerValue")}];
  }
}

void __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke_3;
  v6[3] = &unk_1E774C1B0;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v5;
  [v3 enumerateIndexesWithOptions:v2 usingBlock:v6];
}

void __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(*(a1 + 48) + 224);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke_4;
    v11[3] = &unk_1E774C620;
    v12 = v5;
    v13 = v7;
    v10 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v11);
    dispatch_async(v9, v10);
  }
}

- (BOOL)forceAccurateIndexPath:(id)a3 andAssetsBeforeAndAfter:(int64_t)a4
{
  v6 = a3;
  if ([(PXPhotosDataSource *)self _allSectionsConsideredAccurate]&& ![(PXPhotosDataSource *)self _areSecondaryFetchesEnabled])
  {
    v22 = 0;
  }

  else
  {
    v7 = [v6 section];
    v8 = [MEMORY[0x1E696AD50] indexSetWithIndex:v7];
    v24 = [(PXPhotosDataSource *)self assetCollectionForSection:v7];
    v9 = [v24 estimatedAssetCount];
    v10 = [v6 item];
    v11 = (v9 + ~v10) & ~((v9 + ~v10) >> 63);
    v12 = [(PXPhotosDataSource *)self numberOfSections];
    if (v11 < a4 && v7 + 1 < v12)
    {
      v14 = v12;
      v15 = v7 + 2;
      do
      {
        v16 = [(PXPhotosDataSource *)self assetCollectionForSection:v15 - 1];
        v11 += [v16 estimatedAssetCount];
        [v8 addIndex:v15 - 1];
      }

      while (v11 < a4 && v15++ < v14);
    }

    v18 = [v6 item];
    v19 = v18 & ~(v18 >> 63);
    if (v19 < a4 && v7 >= 1)
    {
      do
      {
        v20 = [(PXPhotosDataSource *)self assetCollectionForSection:v7 - 1];
        v19 += [v20 estimatedAssetCount];
        [v8 addIndex:v7 - 1];
      }

      while (v19 < a4 && v7-- > 1);
    }

    v22 = [(PXPhotosDataSource *)self forceAccurateSectionsIfNeeded:v8];
  }

  return v22;
}

- (BOOL)forceAccurateAssetCollectionsIfNeeded:(id)a3 reloadChanges:(BOOL)a4
{
  v33 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v35 = a3;
  if ([(PXPhotosDataSource *)self _allSectionsConsideredAccurate]&& ![(PXPhotosDataSource *)self _areSecondaryFetchesEnabled])
  {
    v23 = 0;
  }

  else
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__205867;
    v56 = __Block_byref_object_dispose__205868;
    v57 = 0;
    pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
    if (pendingResultsIsolationQueue)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__PXPhotosDataSource_forceAccurateAssetCollectionsIfNeeded_reloadChanges___block_invoke;
      block[3] = &unk_1E7749A28;
      block[4] = self;
      block[5] = &v52;
      dispatch_sync(pendingResultsIsolationQueue, block);
    }

    v36 = [MEMORY[0x1E695DF90] dictionary];
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    obj = v35;
    v6 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
    if (v6)
    {
      v7 = *v48;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v48 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v47 + 1) + 8 * i);
          v10 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v9];
          v11 = [v10 fetchResult];

          if (!v11)
          {
            v12 = [v53[5] objectForKeyedSubscript:v9];
            if ([(PXPhotosDataSource *)self _isResultTupleApplicable:v12 forAssetCollection:v9])
            {
              v13 = PLUIGetLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v14 = [(PXPhotosDataSource *)self sectionForAssetCollection:v9];
                *buf = 134217984;
                v59 = v14;
                _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "Forced section %lu, got result from pending", buf, 0xCu);
              }
            }

            else
            {
              v15 = [MEMORY[0x1E695DF00] date];
              [v15 timeIntervalSinceReferenceDate];
              v17 = v16;

              v18 = [(PXPhotosDataSource *)self _fetchTupleForAssetCollection:v9 calledOnClientQueue:1 isLimitedInitialFetch:0];

              v13 = PLUIGetLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v19 = [(PXPhotosDataSource *)self sectionForAssetCollection:v9];
                v20 = [MEMORY[0x1E695DF00] date];
                [v20 timeIntervalSinceReferenceDate];
                *buf = 134218240;
                v59 = v19;
                v60 = 2048;
                v61 = (v21 - v17) * 1000.0;
                _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "Forced section %lu, fetched on demand, duration:%.2fms", buf, 0x16u);
              }

              v12 = v18;
            }

            [v36 setObject:v12 forKeyedSubscript:v9];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
      }

      while (v6);
    }

    v22 = [v36 count];
    v23 = v22 != 0;
    if (v22)
    {
      options = self->_options;
      v25 = [MEMORY[0x1E695DF70] array];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__PXPhotosDataSource_forceAccurateAssetCollectionsIfNeeded_reloadChanges___block_invoke_530;
      aBlock[3] = &unk_1E7744490;
      v26 = v36;
      v41 = v26;
      v45 = (options & 0x20) != 0;
      v46 = (options & 0x10) != 0;
      v27 = v25;
      v42 = v27;
      v43 = self;
      v44 = a2;
      v28 = _Block_copy(aBlock);
      v29 = v28;
      if (self->_nestedChanges < 1)
      {
        if (v33)
        {
          [(PXPhotosDataSource *)self _willChange];
          v29[2](v29);
          [(PXPhotosDataSource *)self _publishReloadChange];
        }

        else
        {
          v30 = [v26 allKeys];
          [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v30 changeBlock:v29];
        }
      }

      else
      {
        v28[2](v28);
      }

      if (self->_isBackgroundFetching && [v27 count])
      {
        backgroundQueue = self->_backgroundQueue;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __74__PXPhotosDataSource_forceAccurateAssetCollectionsIfNeeded_reloadChanges___block_invoke_532;
        v38[3] = &unk_1E774C620;
        v38[4] = self;
        v39 = v27;
        dispatch_async(backgroundQueue, v38);
        [(PXPhotosDataSource *)self _interruptBackgroundFetch];
      }
    }

    _Block_object_dispose(&v52, 8);
  }

  return v23;
}

void __74__PXPhotosDataSource_forceAccurateAssetCollectionsIfNeeded_reloadChanges___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __74__PXPhotosDataSource_forceAccurateAssetCollectionsIfNeeded_reloadChanges___block_invoke_530(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PXPhotosDataSource_forceAccurateAssetCollectionsIfNeeded_reloadChanges___block_invoke_2;
  v3[3] = &unk_1E7744468;
  v6 = *(a1 + 64);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __74__PXPhotosDataSource_forceAccurateAssetCollectionsIfNeeded_reloadChanges___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [v7 fetchResult];
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 56);
    if (v10 == 1)
    {
      v11 = [v7 keyAssetsFetchResult];
      if (!v11)
      {

        goto LABEL_14;
      }

      v3 = v11;
      if ((*(a1 + 57) & 1) == 0)
      {

LABEL_11:
LABEL_12:
        [*(a1 + 32) addObject:v6];
        goto LABEL_14;
      }
    }

    else if ((*(a1 + 57) & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = [v7 curatedFetchResult];

    if (v10)
    {
    }

    if (v12)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  v13 = [*(a1 + 40) _mutableResultRecordForAssetCollection:v6];
  if (([*(a1 + 40) _addResultTuple:v7 forAssetCollection:v6 preparedResultRecord:0 toMutableResultRecord:v13] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v14 = [*(a1 + 40) _inaccurateAssetCollections];
  [v14 removeObject:v6];
}

- (BOOL)forceAccurateSectionsIfNeeded:(id)a3 reloadChanges:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(PXPhotosDataSource *)self _allSectionsConsideredAccurate]&& ![(PXPhotosDataSource *)self _areSecondaryFetchesEnabled])
  {
    v10 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PXPhotosDataSource_forceAccurateSectionsIfNeeded_reloadChanges___block_invoke;
    v12[3] = &unk_1E7744440;
    v13 = v8;
    v14 = a2;
    v12[4] = self;
    v9 = v8;
    [v7 enumerateIndexesUsingBlock:v12];
    v10 = [(PXPhotosDataSource *)self forceAccurateAssetCollectionsIfNeeded:v9 reloadChanges:v4];
  }

  return v10;
}

void __66__PXPhotosDataSource_forceAccurateSectionsIfNeeded_reloadChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 376) objectAtIndexedSubscript:a2];
  [v2 addObject:v3];
}

- (BOOL)_forceAccurateSection:(int64_t)a3 andNumberOfSurroundingSectionsWithContent:(int64_t)a4
{
  v46 = *MEMORY[0x1E69E9840];
  if ([(PXPhotosDataSource *)self _allSectionsConsideredAccurate]&& ![(PXPhotosDataSource *)self _areSecondaryFetchesEnabled])
  {
    v18 = 0;
  }

  else
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v7 = [(PXPhotosDataSource *)self numberOfSections];
    v8 = [(PXPhotosDataSource *)self filterPredicate];
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __86__PXPhotosDataSource__forceAccurateSection_andNumberOfSurroundingSectionsWithContent___block_invoke;
    v29 = &unk_1E7744418;
    v11 = v10;
    v35 = a3;
    v36 = 0;
    v37 = v7;
    v30 = v11;
    v31 = self;
    v33 = &v38;
    v34 = a4;
    v12 = v9;
    v32 = v12;
    v13 = _Block_copy(&v26);
    v13[2](v13, 50, 0);
    if ([v11 count] < a4 && objc_msgSend(v12, "count") != v7)
    {
      v14 = v8;
      if (_predicateByStrippingNoIndex_onceToken != -1)
      {
        dispatch_once(&_predicateByStrippingNoIndex_onceToken, &__block_literal_global_1190);
      }

      v15 = [v14 predicateFormat];
      if ([v15 containsString:@"noindex:"])
      {
        v16 = [_predicateByStrippingNoIndex_regexp stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{objc_msgSend(v15, "length"), @"$1"}];
        v17 = [MEMORY[0x1E696AE18] predicateWithFormat:v16];
      }

      else
      {
        v17 = v14;
      }

      if (v17 && ([MEMORY[0x1E6978758] fetchFilteredAssetCollections:self->_collectionListFetchResult containingAssetsMatchingPredicate:v17], v19 = objc_claimAutoreleasedReturnValue(), (v20 = v19) != 0))
      {
        if ([v19 count])
        {
          v21 = [v20 fetchedObjects];
          v22 = [(PXPhotosDataSource *)self sectionsForAssetCollections:v21];

          (v13)[2](v13, 0x7FFFFFFFFFFFFFFFLL, v22);
        }
      }

      else
      {
        v23 = PLUIGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(PXPhotosDataSource *)self firstAssetCollection];
          *buf = 138412546;
          v43 = self;
          v44 = 2112;
          v45 = v24;
          _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "%@ forcing everything to find non-empty sections, this is slow, firstAssetCollection:%@", buf, 0x16u);
        }

        v13[2](v13, 0x7FFFFFFFFFFFFFFFLL, 0);
        v20 = 0;
      }
    }

    v18 = *(v39 + 24);

    _Block_object_dispose(&v38, 8);
  }

  return v18 & 1;
}

void __86__PXPhotosDataSource__forceAccurateSection_andNumberOfSurroundingSectionsWithContent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (a2 >= 1 && [*(a1 + 32) count] < *(a1 + 64))
  {
    for (i = 0; i < a2 && [*(a1 + 32) count] < *(a1 + 64); ++i)
    {
      v8 = *(a1 + 72);
      v9 = *(a1 + 80);
      v10 = v8 - i;
      v11 = v8 + i;
      v12 = *(a1 + 88);
      v13 = v10 < v9 || v10 - v9 >= v12;
      v14 = !v13;
      v13 = v11 >= v9;
      v15 = v11 - v9;
      v17 = v13 && v15 < v12;
      if (v14 == 1)
      {
        if (v5 && ![v5 containsIndex:v10])
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        [v6 addIndex:{v10, *&v19}];
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (!v5)
      {
        goto LABEL_25;
      }

LABEL_24:
      if ([v5 containsIndex:{v11, *&v19}])
      {
LABEL_25:
        [v6 addIndex:{v11, *&v19}];
      }

LABEL_26:
      if ([v6 count])
      {
        *(*(*(a1 + 56) + 8) + 24) = (*(*(*(a1 + 56) + 8) + 24) | [*(a1 + 40) forceAccurateSectionsIfNeeded:v6 reloadChanges:1]) & 1;
        [*(a1 + 48) addIndexes:v6];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __86__PXPhotosDataSource__forceAccurateSection_andNumberOfSurroundingSectionsWithContent___block_invoke_2;
        v20[3] = &unk_1E774A7B8;
        v19 = *(a1 + 32);
        v18 = v19.i64[0];
        v21 = vextq_s8(v19, v19, 8uLL);
        [v6 enumerateIndexesUsingBlock:v20];
        [v6 removeAllIndexes];
      }

      else if (((v14 | v17) & 1) == 0)
      {
        break;
      }
    }
  }
}

uint64_t __86__PXPhotosDataSource__forceAccurateSection_andNumberOfSurroundingSectionsWithContent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) numberOfItemsInSection:a2];
  if (result >= 1)
  {
    v5 = *(a1 + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

- (BOOL)forceAccurateSection:(int64_t)a3 andSectionsBeforeAndAfter:(int64_t)a4
{
  if ([(PXPhotosDataSource *)self _allSectionsConsideredAccurate]&& ![(PXPhotosDataSource *)self _areSecondaryFetchesEnabled]|| [(PXPhotosDataSource *)self numberOfSections]< 1)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:?];
  v6 = [(PXPhotosDataSource *)self forceAccurateSectionsIfNeeded:v5 reloadChanges:0];

  return v6;
}

- (BOOL)forceAccurateAllSectionsIfNeeded
{
  if (![(PXPhotosDataSource *)self _allSectionsConsideredAccurate]|| (v3 = [(PXPhotosDataSource *)self _areSecondaryFetchesEnabled]))
  {
    if (![(PXPhotosDataSource *)self _areSecondaryFetchesEnabled])
    {
      [(PXPhotosDataSource *)self _cancelBackgroundFetchIfNeeded];
    }

    v4 = [(PXPhotosDataSource *)self numberOfSections];
    v5 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v4}];
    v6 = [(PXPhotosDataSource *)self forceAccurateSectionsIfNeeded:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)_areFiltersDisabledForAssetCollection:(id)a3
{
  v3 = [(PXPhotosDataSource *)self infoForAssetCollection:a3];
  v4 = [v3 explicitlyDisableFilters];

  return v4;
}

- (void)setDisableFilters:(BOOL)a3 forAssetCollection:(id)a4
{
  v4 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(PXPhotosDataSource *)self _areFiltersDisabledForAssetCollection:v6]!= v4)
  {
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    v13 = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__PXPhotosDataSource_setDisableFilters_forAssetCollection___block_invoke;
    v10[3] = &unk_1E774B368;
    v10[4] = self;
    v11 = v6;
    v12 = v4;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v9 collectionsToDiff:0 collectionsToChange:v8 changeBlock:v10];
  }
}

void __59__PXPhotosDataSource_setDisableFilters_forAssetCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) infoForAssetCollection:*(a1 + 40)];
  [v2 _setExplicitlyDisableFilters:*(a1 + 48)];
  [*(a1 + 32) clearResultsForAssetCollection:*(a1 + 40)];
}

- (void)setIncludeAllBurstAssets:(BOOL)a3
{
  if (self->_includeAllBurstAssets != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__PXPhotosDataSource_setIncludeAllBurstAssets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    v6 = a3;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v5];
  }
}

- (void)setIncludeSharedCollectionAssets:(BOOL)a3
{
  if (self->_includeSharedCollectionAssets != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PXPhotosDataSource_setIncludeSharedCollectionAssets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    v6 = a3;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v5];
  }
}

- (void)setCanIncludeUnsavedSyndicatedAssets:(BOOL)a3
{
  if (self->_canIncludeUnsavedSyndicatedAssets != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__PXPhotosDataSource_setCanIncludeUnsavedSyndicatedAssets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    v6 = a3;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v5];
  }
}

- (void)_internalSetLibraryFilter:(int64_t)a3
{
  if (self->_libraryFilter != a3)
  {
    v10[10] = v3;
    v10[11] = v4;
    v7 = [(PXPhotosDataSource *)self _sectionCache];
    v8 = [v7 assetCollections];

    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      [(PXPhotosDataSource *)self _startLibraryFilterChangedSignpostForCollection:v9];
    }

    else
    {
      v9 = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__PXPhotosDataSource__internalSetLibraryFilter___block_invoke;
    v10[3] = &unk_1E77498A0;
    v10[4] = self;
    v10[5] = a3;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v10];
    if (v9)
    {
      [(PXPhotosDataSource *)self _endLibraryFilterChangedSignpostForCollection:v9];
    }
  }
}

- (void)setLibraryFilter:(int64_t)a3
{
  v5 = [(PXPhotosDataSource *)self libraryFilterState];

  if (v5)
  {
    PXAssertGetLog();
  }

  v6 = [(PXPhotosDataSource *)self libraryFilterState];

  if (!v6)
  {
    [(PXPhotosDataSource *)self _internalSetLibraryFilter:a3];
  }
}

- (void)_endLibraryFilterChangedSignpostForCollection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self signpostIntervalId];
  if (v5)
  {
    v6 = v5;
    v7 = [(PXPhotosDataSource *)self dataSourceLog];
    v8 = v7;
    if (v6 != -1 && os_signpost_enabled(v7))
    {
      v9 = [v4 localizedTitle];
      v10 = 138543362;
      v11 = v9;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v6, "End Set Library Filter", "%{public}@", &v10, 0xCu);
    }

    [(PXPhotosDataSource *)self setSignpostIntervalId:0];
  }
}

- (void)_startLibraryFilterChangedSignpostForCollection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PXPhotosDataSource *)self signpostIntervalId])
  {
    v5 = [(PXPhotosDataSource *)self dataSourceLog];
    v6 = os_signpost_id_make_with_pointer(v5, v4);
    v7 = v5;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = [v4 localizedTitle];
      v10 = 138543362;
      v11 = v9;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Begin Set Library Filter", "%{public}@", &v10, 0xCu);
    }

    [(PXPhotosDataSource *)self setSignpostIntervalId:v6];
  }
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_includeOthersInSocialGroupAssets != v4)
  {
    v7 = [(PXPhotosDataSource *)self _sectionCache];
    v8 = [v7 assetCollections];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __109__PXPhotosDataSource_setIncludeOthersInSocialGroupAssets_provideIncrementalChangeDetailsForAssetCollections___block_invoke;
    v10[3] = &unk_1E77443F0;
    v10[4] = self;
    v11 = v8;
    v13 = v4;
    v12 = v6;
    v9 = v8;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v9 collectionsToDiff:v12 changeBlock:v10];
  }
}

void *__109__PXPhotosDataSource_setIncludeOthersInSocialGroupAssets_provideIncrementalChangeDetailsForAssetCollections___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearResultsForAssetCollections:*(a1 + 40)];
  *(*(a1 + 32) + 328) = *(a1 + 56);
  result = *(a1 + 32);
  if (!result[38])
  {
    v3 = *(a1 + 48);

    return [result _restartBackgroundFetchWithAssetCollectionsToDiff:v3];
  }

  return result;
}

- (void)setFilterPredicate:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_filterPredicate;
  v9 = v8;
  if (v8 == v6)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = [(NSPredicate *)v8 isEqual:v6];

  if ((v10 & 1) == 0)
  {
    v11 = [(PXPhotosDataSource *)self _sectionCache];
    v12 = [v11 assetCollections];

    if ([v12 count])
    {
      v9 = [v12 objectAtIndexedSubscript:0];
      [(PXPhotosDataSource *)self _startFilterPredicateChangedSignpostForCollection:v9];
    }

    else
    {
      v9 = 0;
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __92__PXPhotosDataSource_setFilterPredicate_provideIncrementalChangeDetailsForAssetCollections___block_invoke;
    v17 = &unk_1E7744F50;
    v18 = self;
    v19 = v12;
    v20 = v6;
    v21 = v7;
    v13 = v12;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v13 collectionsToDiff:v21 changeBlock:&v14];
    if (v9)
    {
      [(PXPhotosDataSource *)self _endFilterPredicateChangedForCollection:v9, v14, v15, v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_9;
  }

LABEL_10:
}

void *__92__PXPhotosDataSource_setFilterPredicate_provideIncrementalChangeDetailsForAssetCollections___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearResultsForAssetCollections:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 424), *(a1 + 48));
  result = *(a1 + 32);
  if (!result[38])
  {
    v3 = *(a1 + 56);

    return [result _restartBackgroundFetchWithAssetCollectionsToDiff:v3];
  }

  return result;
}

- (void)_endFilterPredicateChangedForCollection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self signpostIntervalId];
  if (v5)
  {
    v6 = v5;
    v7 = [(PXPhotosDataSource *)self dataSourceLog];
    v8 = v7;
    if (v6 != -1 && os_signpost_enabled(v7))
    {
      v9 = [v4 localIdentifier];
      v10 = 138543362;
      v11 = v9;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v6, "End Set Filter Predicate", "%{public}@", &v10, 0xCu);
    }

    [(PXPhotosDataSource *)self setSignpostIntervalId:0];
  }
}

- (void)_startFilterPredicateChangedSignpostForCollection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(PXPhotosDataSource *)self signpostIntervalId])
  {
    v5 = [(PXPhotosDataSource *)self dataSourceLog];
    v6 = os_signpost_id_make_with_pointer(v5, v4);
    v7 = v5;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      v9 = [v4 localIdentifier];
      v10 = 138543362;
      v11 = v9;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Begin Set Filter Predicate", "%{public}@", &v10, 0xCu);
    }

    [(PXPhotosDataSource *)self setSignpostIntervalId:v6];
  }
}

- (PHAssetCollection)containerAssetCollection
{
  v3 = self->_containerCollection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([(PXPhotosDataSource *)self numberOfSections]== 1)
  {
    v4 = [(PXPhotosDataSource *)self firstAssetCollection];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (PXAssetsDataSourceContainer)container
{
  if (!self->_assetContainerProvider || ([(PXPhotosDataSource *)self containerAssetCollection], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, (*(self->_assetContainerProvider + 2))(), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [(PXPhotosDataSource *)self containerCollection];
  }

  return v5;
}

- (id)assetsAtIndexPaths:(id)a3
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v8 = [(PXPhotosDataSource *)self versionIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__PXPhotosDataSource_assetsAtIndexPaths___block_invoke;
  v13[3] = &unk_1E77443C8;
  v15 = v8;
  v16 = a2;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  [v6 enumerateItemIndexSetsUsingBlock:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

void __41__PXPhotosDataSource_assetsAtIndexPaths___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (*(a1 + 48) != a2)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXPhotosDataSource.m" lineNumber:2842 description:{@"Identifier must match (%lu != %lu)", *(a1 + 48), a2}];
  }

  v8 = [*(a1 + 32) assetsInSection:a3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__PXPhotosDataSource_assetsAtIndexPaths___block_invoke_2;
  v11[3] = &unk_1E774A7B8;
  v12 = v8;
  v13 = *(a1 + 40);
  v9 = v8;
  [v7 enumerateIndexesUsingBlock:v11];
}

void __41__PXPhotosDataSource_assetsAtIndexPaths___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [*(a1 + 40) addObject:v3];
}

- (id)fetchResultWithAssetsAtIndexPaths:(id)a3
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v8 = [(PXPhotosDataSource *)self versionIdentifier];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __56__PXPhotosDataSource_fetchResultWithAssetsAtIndexPaths___block_invoke;
  v18 = &unk_1E77443C8;
  v21 = v8;
  v22 = a2;
  v19 = self;
  v20 = v7;
  v9 = v7;
  [v6 enumerateItemIndexSetsUsingBlock:&v15];

  v10 = objc_alloc(MEMORY[0x1E69788E0]);
  photoLibrary = self->_photoLibrary;
  v12 = [MEMORY[0x1E6978630] fetchType];
  v13 = [v10 initWithOids:v9 photoLibrary:photoLibrary fetchType:v12 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v13;
}

void __56__PXPhotosDataSource_fetchResultWithAssetsAtIndexPaths___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a4;
  if (*(a1 + 48) != a2)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXPhotosDataSource.m" lineNumber:2825 description:{@"Identifier must match (%lu != %lu)", *(a1 + 48), a2}];
  }

  v7 = [*(a1 + 32) assetsInSection:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 fetchedObjectIDs];
    if ([v9 count])
    {
      v10 = *(a1 + 40);
      v11 = [v9 objectsAtIndexes:v13];
      [v10 addObjectsFromArray:v11];
    }
  }
}

- (id)fetchResultWithAssetsInSections:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__PXPhotosDataSource_fetchResultWithAssetsInSections___block_invoke;
  v16 = &unk_1E774A7B8;
  v17 = self;
  v18 = v6;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v13];

  v8 = objc_alloc(MEMORY[0x1E69788E0]);
  photoLibrary = self->_photoLibrary;
  v10 = [MEMORY[0x1E6978630] fetchType];
  v11 = [v8 initWithOids:v7 photoLibrary:photoLibrary fetchType:v10 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

  return v11;
}

void __54__PXPhotosDataSource_fetchResultWithAssetsInSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) assetsInSection:a2];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 fetchedObjectIDs];
    if ([v4 count])
    {
      [*(a1 + 40) addObjectsFromArray:v4];
    }

    v3 = v5;
  }
}

- (id)_fetchAssetsStartingAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self numberOfSections];
  v6 = [v4 section];
  v22 = v4;
  v7 = [v4 item];
  v8 = [MEMORY[0x1E695DF70] array];
  if (v6 < v5)
  {
    v9 = 0;
    do
    {
      v10 = [(PXPhotosDataSource *)self assetsInSection:v6];
      v11 = v10;
      if (v10)
      {
        v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
        v13 = [v11 count];
        if (v9 == 0 && v7 > 0)
        {
          v14 = v7;
        }

        else
        {
          v14 = 0;
        }

        v15 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v14, v13 - v14}];
        v16 = [v11 objectsAtIndexes:v15];
        [v12 addObjectsFromArray:v16];

        [v8 addObjectsFromArray:v12];
      }

      ++v6;
      --v9;
    }

    while (v5 != v6);
  }

  if ([v8 count])
  {
    v17 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = self->_photoLibrary;
    v19 = [MEMORY[0x1E6978630] fetchType];
    v20 = [v17 initWithObjects:v8 photoLibrary:photoLibrary fetchType:v19 fetchPropertySets:0 identifier:0 registerIfNeeded:1];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)assetsStartingAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self numberOfSections];
  v6 = [v4 section];
  v23 = v4;
  v7 = [v4 item];
  v8 = [MEMORY[0x1E695DF70] array];
  if (v6 >= v5)
  {
LABEL_10:
    v18 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = self->_photoLibrary;
    v20 = [MEMORY[0x1E6978630] fetchType];
    v21 = [v18 initWithOids:v8 photoLibrary:photoLibrary fetchType:v20 fetchPropertySets:0 identifier:0 registerIfNeeded:1];

    goto LABEL_11;
  }

  v9 = 0;
  while (1)
  {
    v10 = [(PXPhotosDataSource *)self assetsInSection:v6];
    v11 = v10;
    if (v10)
    {
      break;
    }

LABEL_9:

    ++v6;
    --v9;
    if (v5 == v6)
    {
      goto LABEL_10;
    }
  }

  v12 = [v10 fetchedObjectIDs];
  if ([v12 count])
  {
    v13 = v12;
    v14 = v13;
    v15 = v13;
    if (!v9)
    {
      v15 = v13;
      if (v7 >= 1)
      {
        v16 = [v13 count];
        v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, v16 - v7}];
        v15 = [v14 objectsAtIndexes:v17];
      }
    }

    [v8 addObjectsFromArray:v15];

    goto LABEL_9;
  }

  [v8 removeAllObjects];
  v21 = [(PXPhotosDataSource *)self _fetchAssetsStartingAtIndexPath:v23];

  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v21;
}

- (BOOL)containsMultipleAssets
{
  if ([(PXPhotosDataSource *)self isEmpty])
  {
    return 0;
  }

  v4 = [(PXPhotosDataSource *)self numberOfSections];
  v5 = [(PXPhotosDataSource *)self numberOfItemsInSection:0];
  if (v4 >= 2)
  {
    v5 += [(PXPhotosDataSource *)self numberOfItemsInSection:v4 - 1];
  }

  if (v5 > 1)
  {
    return 1;
  }

  v6 = [(PXPhotosDataSource *)self backgroundFetchOriginSection];
  if (v6 >= v4 - 1)
  {
    v7 = v4 - 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 & ~(v7 >> 63);
  if (v8 >= v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = v7 & ~(v7 >> 63);
    do
    {
      v9 += [(PXPhotosDataSource *)self numberOfItemsInSection:v10++];
    }

    while (v10 < v4 && v9 < 2);
  }

  if (v7 >= 1)
  {
    v11 = v8 + 1;
    do
    {
      if (v8 > v4)
      {
        break;
      }

      if (v9 >= 2)
      {
        break;
      }

      v9 += [(PXPhotosDataSource *)self numberOfItemsInSection:v11 - 2];
      --v11;
    }

    while (v11 > 1);
  }

  return v9 > 1;
}

void __29__PXPhotosDataSource_isEmpty__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 exposedFetchResult];
  v7 = [v6 count];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (id)uncuratedAssetsInSection:(int64_t)a3
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:a3];
  if (v4)
  {
    v5 = [(PXPhotosDataSource *)self uncuratedAssetsForAssetCollection:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)curatedAssetsInSection:(int64_t)a3
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:a3];
  if (v4)
  {
    v5 = [(PXPhotosDataSource *)self curatedAssetsForAssetCollection:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)uncuratedAssetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self _assetsForAssetCollection:v4];
  v6 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];

  v7 = [v6 fetchResult];

  return v7;
}

- (id)curatedAssetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self _assetsForAssetCollection:v4];
  v6 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];

  v7 = [v6 curatedFetchResult];

  return v7;
}

- (BOOL)isCuratedAssetsFutilelyForAssetCollection:(id)a3
{
  v4 = a3;
  if ([(PXPhotosDataSource *)self wantsCurationForAssetCollection:v4])
  {
    v5 = [(PXPhotosDataSource *)self curatedAssetsForAssetCollection:v4];
    v6 = [(PXPhotosDataSource *)self uncuratedAssetsForAssetCollection:v4];
    v7 = [v6 count];
    v8 = v7 <= [v5 count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCuratedAssetsEmptyForAssetCollection:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = [(PXPhotosDataSource *)self curatedAssetsForAssetCollection:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasCurationForAssetCollection:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:?];
  v4 = [v3 isCurated];

  return v4;
}

- (BOOL)wantsCurationForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self wantsCurationByDefault];
  if (v4)
  {
    v6 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];
    v7 = [v6 wantsCuration];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)wantsCurationForFirstAssetCollection
{
  v2 = self;
  v3 = [(PXPhotosDataSource *)self firstAssetCollection];
  LOBYTE(v2) = [(PXPhotosDataSource *)v2 wantsCurationForAssetCollection:v3];

  return v2;
}

- (void)refetchResultsForAssetCollection:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self sectionForAssetCollection:v4];
  if (![(PXPhotosDataSource *)self isImmutable]&& v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(PHFetchResult *)self->_collectionListFetchResult copyWithOptions:&unk_1F190F710];
    collectionListFetchResult = self->_collectionListFetchResult;
    self->_collectionListFetchResult = v6;

    v8 = [(PXPhotosDataSource *)self assetCollectionForSection:v5];

    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__PXPhotosDataSource_refetchResultsForAssetCollection___block_invoke;
    v10[3] = &unk_1E774C620;
    v10[4] = self;
    v4 = v8;
    v11 = v4;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v9 changeBlock:v10];
  }
}

void __55__PXPhotosDataSource_refetchResultsForAssetCollection___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _mutableResultRecordForAssetCollection:*(a1 + 40)];
  [v3 setFetchResult:0 reverseSortOrder:0];
  [v3 setKeyAssetsFetchResult:0];
  [v3 setCuratedFetchResult:0];
  v2 = [*(a1 + 32) fetcher];
  [v2 clearFetchResultsForAssetCollection:*(a1 + 40)];
}

- (void)clearResultsForAssetCollections:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self fetcher];
  [v5 clearFetchResultsForAssetCollections:v4];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:*(*(&v21 + 1) + 8 * v10)];
        [v11 setFetchResult:0 reverseSortOrder:0];
        [v11 setCuratedFetchResult:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
  if (pendingResultsIsolationQueue)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __54__PXPhotosDataSource_clearResultsForAssetCollections___block_invoke;
    v18 = &unk_1E774C620;
    v19 = self;
    v20 = v6;
    dispatch_sync(pendingResultsIsolationQueue, &v15);
  }

  v13 = [(PHFetchResult *)self->_collectionListFetchResult copyWithOptions:&unk_1F190F6E8, v15, v16, v17, v18, v19];
  collectionListFetchResult = self->_collectionListFetchResult;
  self->_collectionListFetchResult = v13;
}

uint64_t __54__PXPhotosDataSource_clearResultsForAssetCollections___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 168) removeObjectsForKeys:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 176);

  return [v3 removeObjectsForKeys:v2];
}

- (void)clearResultsForAssetCollection:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [(PXPhotosDataSource *)self clearResultsForAssetCollections:v6, v7, v8];
}

- (void)stopExcludingAssets:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] && !-[PXPhotosDataSource isImmutable](self, "isImmutable"))
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v23 + 1) + 8 * v10) objectID];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x1E695DF70] array];
    resultRecordByAssetCollection = self->_resultRecordByAssetCollection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__PXPhotosDataSource_stopExcludingAssets___block_invoke;
    v20[3] = &unk_1E7744378;
    v14 = v5;
    v21 = v14;
    v15 = v12;
    v22 = v15;
    [(NSMutableDictionary *)resultRecordByAssetCollection enumerateKeysAndObjectsUsingBlock:v20];
    if ([v15 count])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __42__PXPhotosDataSource_stopExcludingAssets___block_invoke_2;
      v16[3] = &unk_1E774A1B8;
      v17 = v15;
      v18 = self;
      v19 = v14;
      [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v17 changeBlock:v16];
    }
  }
}

void __42__PXPhotosDataSource_stopExcludingAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 excludedOids];
  v6 = [v5 intersectsSet:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

void __42__PXPhotosDataSource_stopExcludingAssets___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _mutableResultRecordForAssetCollection:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 stopExcludingOids:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)forceExcludeAssetsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [off_1E7721768 indexPathSetWithItemIndexPaths:v4 dataSourceIdentifier:{-[PXPhotosDataSource versionIdentifier](self, "versionIdentifier")}];

  [(PXPhotosDataSource *)self forceExcludeAssetsAtIndexes:v5];
}

- (void)forceExcludeAssetsAtIndexes:(id)a3
{
  v5 = a3;
  if ([v5 count] && !-[PXPhotosDataSource isImmutable](self, "isImmutable"))
  {
    v6 = [(PXPhotosDataSource *)self versionIdentifier];
    v7 = objc_alloc_init(off_1E77217C8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke;
    v16[3] = &unk_1E77441F0;
    v18 = v6;
    v19 = a2;
    v16[4] = self;
    v8 = v7;
    v17 = v8;
    [v5 enumerateItemIndexPathsUsingBlock:v16];
    if ([v8 count] >= 1)
    {
      v9 = [v5 mutableCopy];
      [v9 minusIndexPathSet:v8];

      v5 = v9;
    }

    v10 = [(PXPhotosDataSource *)self _assetOidsByAssetCollectionForAssetsAtIndexPathsInSet:v5];
    v11 = [v10 allKeys];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke_2;
    v13[3] = &unk_1E774C620;
    v14 = v10;
    v15 = self;
    v12 = v10;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v11 changeBlock:v13];
  }
}

void __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke(uint64_t a1, __int128 *a2)
{
  if (*a2 != *(a1 + 48))
  {
    PXAssertGetLog();
  }

  v4 = *(a1 + 32);
  v5 = a2[1];
  *buf = *a2;
  v16 = v5;
  v6 = [v4 assetAtSimpleIndexPath:buf];
  v7 = [v6 burstIdentifier];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) versionIdentifier];
    v10 = *(a2 + 1);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke_511;
    v12[3] = &__block_descriptor_64_e27_v16__0__NSMutableIndexSet_8l;
    v11 = a2[1];
    v13 = *a2;
    v14 = v11;
    [v8 modifyItemIndexSetForDataSourceIdentifier:v9 section:v10 usingBlock:v12];
  }
}

uint64_t __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke_3;
  v3[3] = &unk_1E7744330;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 _mutableResultRecordForAssetCollection:a2];
  [v6 excludeOids:v5];
}

- (void)stopForceIncludingAllAssets
{
  if (![(PXPhotosDataSource *)self isImmutable])
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    resultRecordByAssetCollection = self->_resultRecordByAssetCollection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PXPhotosDataSource_stopForceIncludingAllAssets__block_invoke;
    v10[3] = &unk_1E77441C8;
    v5 = v3;
    v11 = v5;
    [(NSMutableDictionary *)resultRecordByAssetCollection enumerateKeysAndObjectsUsingBlock:v10];
    if ([v5 count])
    {
      v6 = [v5 allKeys];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__PXPhotosDataSource_stopForceIncludingAllAssets__block_invoke_2;
      v7[3] = &unk_1E774C620;
      v8 = v5;
      v9 = self;
      [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v6 changeBlock:v7];
    }
  }
}

void __49__PXPhotosDataSource_stopForceIncludingAllAssets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 includedOids];
  v7 = [v6 count];

  if (v7)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
  }
}

uint64_t __49__PXPhotosDataSource_stopForceIncludingAllAssets__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__PXPhotosDataSource_stopForceIncludingAllAssets__block_invoke_3;
  v3[3] = &unk_1E77441C8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __49__PXPhotosDataSource_stopForceIncludingAllAssets__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _mutableResultRecordForAssetCollection:a2];
  [v2 stopIncludingAllOids];
}

- (void)forceIncludeAssetsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [off_1E7721768 indexPathSetWithItemIndexPaths:v4 dataSourceIdentifier:{-[PXPhotosDataSource versionIdentifier](self, "versionIdentifier")}];

  [(PXPhotosDataSource *)self forceIncludeAssetsAtIndexes:v5];
}

- (void)forceIncludeAssetsAtIndexes:(id)a3
{
  v4 = a3;
  if ([v4 count] && !-[PXPhotosDataSource isImmutable](self, "isImmutable"))
  {
    v5 = [(PXPhotosDataSource *)self _assetOidsByAssetCollectionForAssetsAtIndexPathsInSet:v4];
    v6 = [v5 allKeys];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PXPhotosDataSource_forceIncludeAssetsAtIndexes___block_invoke;
    v8[3] = &unk_1E774C620;
    v9 = v5;
    v10 = self;
    v7 = v5;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v6 changeBlock:v8];
  }
}

uint64_t __50__PXPhotosDataSource_forceIncludeAssetsAtIndexes___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__PXPhotosDataSource_forceIncludeAssetsAtIndexes___block_invoke_2;
  v3[3] = &unk_1E7744330;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __50__PXPhotosDataSource_forceIncludeAssetsAtIndexes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 _mutableResultRecordForAssetCollection:a2];
  [v6 includeOids:v5];
}

- (id)fetchResultsByAssetCollection
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[PXPhotosDataSource numberOfSections](self, "numberOfSections")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PXPhotosDataSource *)self collectionListFetchResult];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(PXPhotosDataSource *)self assetsInSection:[(PXPhotosDataSource *)self sectionForAssetCollection:v9]];
        [v3 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)enumerateStartingAtIndexPath:(id)a3 reverseDirection:(BOOL)a4 usingBlock:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:2380 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  if (v6)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  v22 = [(PXPhotosDataSource *)self numberOfSections];
  v12 = [v9 section];
  v13 = [v9 item];
  v23 = 0;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v13;
    v15 = v12;
    do
    {
      if (v15 >= v22 || (v23 & 1) != 0)
      {
        break;
      }

      v16 = self;
      v17 = [(PXPhotosDataSource *)self numberOfItemsInSection:v15];
      v18 = v17 - 1;
      if (!v6)
      {
        v18 = 0;
      }

      if (v15 != v12)
      {
        v14 = v18;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v19 = v17;
        while (v14 < v19 && (v23 & 1) == 0)
        {
          v20 = [MEMORY[0x1E696AC88] indexPathForItem:v14 inSection:v15];
          v10[2](v10, v20, &v23);

          v14 += v11;
          if (v14 < 0)
          {
            v14 = -1;
            break;
          }
        }
      }

      v15 += v11;
      self = v16;
    }

    while (v15 >= 0);
  }
}

- (id)indexPathForLastAsset
{
  if (![(PXPhotosDataSource *)self isEmpty])
  {
    v4 = [(PXPhotosDataSource *)self numberOfSections];
    while (v4-- >= 1)
    {
      v6 = [(PXPhotosDataSource *)self numberOfItemsInSection:v4];
      if (v6 >= 1)
      {
        v3 = [MEMORY[0x1E696AC88] indexPathForItem:v6 - 1 inSection:v4];
        goto LABEL_7;
      }
    }
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)indexPathForFirstAsset
{
  if ([(PXPhotosDataSource *)self isEmpty]|| [(PXPhotosDataSource *)self numberOfSections]< 1)
  {
LABEL_6:
    v4 = 0;
  }

  else
  {
    v3 = 0;
    while ([(PXPhotosDataSource *)self numberOfItemsInSection:v3]< 1)
    {
      if (++v3 >= [(PXPhotosDataSource *)self numberOfSections])
      {
        goto LABEL_6;
      }
    }

    v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v3];
  }

  return v4;
}

- (id)assetReferenceAtIndexPath:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(PXPhotosDataSource *)self assetAtIndexPath:v4];
    objc_claimAutoreleasedReturnValue();
    -[PXPhotosDataSource assetCollectionForSection:](self, "assetCollectionForSection:", [v4 section]);
    objc_claimAutoreleasedReturnValue();
    v5 = [off_1E7721490 alloc];
    [(PXPhotosDataSource *)self versionIdentifier];
    PXSimpleIndexPathFromIndexPath();
  }

  return 0;
}

- (id)assetReferenceForAsset:(id)a3 containedInAssetCollectionWithType:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v6 withType:a4 options:0];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(PXPhotosDataSource *)self sectionForAssetCollection:v12];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v13;
          [(PXPhotosDataSource *)self forceAccurateSection:v13 andSectionsBeforeAndAfter:0];
          v15 = [(PXPhotosDataSource *)self uncuratedAssetsInSection:v14];
          if ([v15 containsObject:v6])
          {
            v17 = [off_1E7721490 alloc];
            v18 = *(off_1E7722228 + 1);
            v20[0] = *off_1E7722228;
            v20[1] = v18;
            v16 = [v17 initWithSectionObject:v12 itemObject:v6 subitemObject:0 indexPath:v20];

            goto LABEL_13;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (id)indexPathForAssetReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 simpleIndexPath];
    if (v15 == [(PXPhotosDataSource *)self versionIdentifier])
    {
      [v5 simpleIndexPath];
      goto LABEL_10;
    }
  }

  else if (![(PXPhotosDataSource *)self versionIdentifier])
  {
LABEL_10:
    PXIndexPathFromSimpleIndexPath();
  }

  v6 = [v5 asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 asset];

    if (!v7)
    {
      v10 = 0;
      goto LABEL_19;
    }

    v8 = [v5 assetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 assetCollection];
    }

    else
    {
      v9 = 0;
    }

    v11 = [(NSDictionary *)self->_hintIndexPathByAssetReferenceCache objectForKeyedSubscript:v5];
    v12 = v11;
    if (!v11)
    {
      if (v5)
      {
        [v5 simpleIndexPath];
      }

      PXIndexPathFromSimpleIndexPath();
    }

    v13 = v11;
    v10 = [(PXPhotosDataSource *)self indexPathForAsset:v7 hintIndexPath:v13 hintCollection:v9];
  }

  else
  {
    v10 = 0;
    v7 = v6;
  }

LABEL_19:

  return v10;
}

- (id)_indexPathForAssetWithUUID:(id)a3 orBurstIdentifier:(id)a4 orSyndicationIdentifier:(id)a5 hintIndexPath:(id)a6 hintCollections:(id)a7
{
  v51[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 length];
  if (v14 || v17)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__205867;
    v49 = __Block_byref_object_dispose__205868;
    v50 = 0;
    v19 = [(PXPhotosDataSource *)self _closestIndexPathToIndexPath:v15];
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2020000000;
    v40[3] = 150;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__PXPhotosDataSource__indexPathForAssetWithUUID_orBurstIdentifier_orSyndicationIdentifier_hintIndexPath_hintCollections___block_invoke;
    aBlock[3] = &unk_1E7744308;
    v37 = &v41;
    aBlock[4] = self;
    v34 = v14;
    v20 = v12;
    v35 = v20;
    v36 = v13;
    v38 = &v45;
    v39 = v40;
    v21 = _Block_copy(aBlock);
    [(PXPhotosDataSource *)self enumerateStartingAtIndexPath:v19 reverseDirection:0 usingBlock:v21];
    v22 = v46[5];
    if (!v22)
    {
      v42[3] = 0;
      [(PXPhotosDataSource *)self enumerateStartingAtIndexPath:v19 reverseDirection:1 usingBlock:v21];
      v22 = v46[5];
      if (!v22)
      {
        v32 = [MEMORY[0x1E6978630] localIdentifierWithUUID:v20];
        v23 = [(PXPhotosDataSource *)self photoLibrary];
        v31 = [v23 px_standardLibrarySpecificFetchOptions];

        v24 = MEMORY[0x1E6978630];
        v51[0] = v32;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
        v26 = [v24 fetchAssetsWithLocalIdentifiers:v25 options:v31];

        v27 = [v26 lastObject];
        if (v27)
        {
          v28 = [(PXPhotosDataSource *)self indexPathForAsset:v27 hintIndexPath:v15 hintCollections:v16];
          v29 = v46[5];
          v46[5] = v28;
        }

        v22 = v46[5];
      }
    }

    v18 = v22;

    _Block_object_dispose(v40, 8);
    _Block_object_dispose(&v41, 8);

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __121__PXPhotosDataSource__indexPathForAssetWithUUID_orBurstIdentifier_orSyndicationIdentifier_hintIndexPath_hintCollections___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  ++*(*(*(a1 + 64) + 8) + 24);
  v18 = v6;
  v7 = [*(a1 + 32) assetAtIndexPath:?];
  v8 = v7;
  if (*(a1 + 40))
  {
    [v7 fetchPropertySetsIfNeeded];
    v9 = [v8 curationProperties];
    v10 = [v9 syndicationIdentifier];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v8 uuid];
  if ([v11 isEqualToString:*(a1 + 48)])
  {
    goto LABEL_8;
  }

  v12 = [v8 burstIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = *(a1 + 56);
    v15 = [v8 burstIdentifier];
    if ([v14 isEqualToString:v15])
    {

LABEL_8:
LABEL_9:
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
      *a3 = 1;
      goto LABEL_10;
    }

    if (v10)
    {
      v17 = [*(a1 + 40) isEqualToString:v10];

      if (v17)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

LABEL_22:
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_22;
  }

  v16 = [*(a1 + 40) isEqualToString:v10];

  if (v16)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(*(*(a1 + 64) + 8) + 24) > *(*(*(a1 + 80) + 8) + 24))
  {
    *a3 = 1;
  }
}

- (id)indexPathForAssetWithUUID:(id)a3 orSyndicationIdentifier:(id)a4 hintIndexPath:(id)a5 hintCollection:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    v17 = a6;
    v13 = MEMORY[0x1E695DEC8];
    v14 = a6;
    a6 = [v13 arrayWithObjects:&v17 count:1];
  }

  v15 = [(PXPhotosDataSource *)self _indexPathForAssetWithUUID:v10 orBurstIdentifier:0 orSyndicationIdentifier:v11 hintIndexPath:v12 hintCollections:a6, v17, v18];

  return v15;
}

- (id)indexPathForAssetWithUUID:(id)a3 orBurstIdentifier:(id)a4 hintIndexPath:(id)a5 hintCollection:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    v17 = a6;
    v13 = MEMORY[0x1E695DEC8];
    v14 = a6;
    a6 = [v13 arrayWithObjects:&v17 count:1];
  }

  v15 = [(PXPhotosDataSource *)self _indexPathForAssetWithUUID:v10 orBurstIdentifier:v11 orSyndicationIdentifier:0 hintIndexPath:v12 hintCollections:a6, v17, v18];

  return v15;
}

- (int64_t)indexForAsset:(id)a3 inCollection:(id)a4 hintIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PXPhotosDataSource *)self numberOfSections];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v12 = v10;
    if (v10)
    {
      v13 = [(PXPhotosDataSource *)self sectionForAssetCollection:v9];
      if (v13 < v12)
      {
        v14 = [(PXPhotosDataSource *)self assetsInSection:v13];
        if ([v14 count] > a5)
        {
          v15 = [v14 objectAtIndex:a5];
          if ([v15 isEqual:v8])
          {
            v11 = a5;
          }
        }
      }

      if (v9 && v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [(PXPhotosDataSource *)self indexPathForAsset:v8 inCollection:v9];
        v17 = v16;
        if (v16)
        {
          v11 = [v16 item];
        }

        else
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return v11;
}

- (id)indexPathForAsset:(id)a3 hintIndexPath:(id)a4 hintCollections:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXPhotosDataSource *)self numberOfSections];
  v12 = 0;
  if (v8)
  {
    v13 = v11;
    if (v11)
    {
      if (!v9 || v11 <= [v9 section])
      {
        goto LABEL_18;
      }

      v14 = -[PXPhotosDataSource assetsInSection:](self, "assetsInSection:", [v9 section]);
      v15 = [v9 item];
      if (v15 < [v14 count])
      {
        v16 = [v14 indexOfObject:v8 inRange:{objc_msgSend(v9, "item"), 1}];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_13;
        }

        v17 = [v9 item];
        v18 = 250;
        if (v17 > 250)
        {
          v18 = v17;
        }

        v19 = v18 - 250;
        v20 = [v14 count];
        v21 = v20 - v19 >= 500 ? 500 : v20 - v19;
        v16 = [v14 indexOfObject:v8 inRange:{v19, v21}];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_13:
          v22 = v16;
          v23 = [v14 objectAtIndex:v16];
          if ([v23 isEqual:v8])
          {
            v12 = [MEMORY[0x1E696AC88] indexPathForItem:v22 inSection:{objc_msgSend(v9, "section")}];

            if (v12)
            {
              goto LABEL_47;
            }

LABEL_18:
            if ([v10 count])
            {
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v24 = v10;
              v25 = [v24 countByEnumeratingWithState:&v43 objects:v47 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v44;
                while (2)
                {
                  for (i = 0; i != v26; ++i)
                  {
                    if (*v44 != v27)
                    {
                      objc_enumerationMutation(v24);
                    }

                    v29 = [(PXPhotosDataSource *)self indexPathForAsset:v8 inCollection:*(*(&v43 + 1) + 8 * i)];
                    if (v29)
                    {
                      v12 = v29;

                      goto LABEL_47;
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v43 objects:v47 count:16];
                  if (v26)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __70__PXPhotosDataSource_indexPathForAsset_hintIndexPath_hintCollections___block_invoke;
            aBlock[3] = &unk_1E77442E0;
            v42 = v13;
            aBlock[4] = self;
            v41 = v8;
            v30 = _Block_copy(aBlock);
            v31 = [v9 section];
            if (v13 - 1 >= (v31 & ~(v31 >> 63)))
            {
              v32 = v31 & ~(v31 >> 63);
            }

            else
            {
              v32 = v13 - 1;
            }

            v33 = v30[2](v30, v32);
            if (!v33)
            {
              v34 = v13 - 2;
              if (v13 < 2)
              {
                v12 = 0;
                goto LABEL_46;
              }

              v35 = v32 - 1;
              v36 = v32 + 1;
              while (1)
              {
                v37 = v34;
                v33 = v30[2](v30, v36);
                if (v33)
                {
                  break;
                }

                v12 = v30[2](v30, v35);
                if (!v12 && (v35 >= 0 || v36 < v13))
                {
                  v34 = v37 - 1;
                  --v35;
                  ++v36;
                  if (v37)
                  {
                    continue;
                  }
                }

                goto LABEL_46;
              }
            }

            v12 = v33;
LABEL_46:

            goto LABEL_47;
          }
        }
      }

      goto LABEL_18;
    }
  }

LABEL_47:

  return v12;
}

id __70__PXPhotosDataSource_indexPathForAsset_hintIndexPath_hintCollections___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 < 0 || *(a1 + 48) <= a2)
  {
    v7 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) assetsInSection:a2];
    v5 = v4;
    if (v4 && (v6 = [v4 indexOfObject:*(a1 + 40)], v6 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:a2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)indexPathForAsset:(id)a3 hintIndexPath:(id)a4 hintCollection:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v14 = a5;
    v10 = MEMORY[0x1E695DEC8];
    v11 = a5;
    a5 = [v10 arrayWithObjects:&v14 count:1];
  }

  v12 = [(PXPhotosDataSource *)self indexPathForAsset:v8 hintIndexPath:v9 hintCollections:a5, v14, v15];

  return v12;
}

- (id)indexPathForAsset:(id)a3 inCollection:(id)a4
{
  v6 = a3;
  v7 = [(PXPhotosDataSource *)self sectionForAssetCollection:a4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(PXPhotosDataSource *)self assetsInSection:v7];
    v11 = v10;
    if (v10 && (v12 = [v10 indexOfObject:v6], v12 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:v12 inSection:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)approximateAssetsAtIndexPaths:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    v6 = [(PXPhotosDataSource *)self collectionListFetchResult];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = v4;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = self;
      v9 = 0;
      v10 = 0;
      v11 = *v27;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v14 section];
          if (v15 < [v6 count])
          {
            if (v15 != v12 || v10 == 0)
            {
              v17 = [(PXPhotosDataSource *)v23 assetsInSection:v15];
              v9 = [v17 count];
              v18 = v17;

              v12 = v15;
              v10 = v18;
            }

            else
            {
              v10 = v10;
            }

            if ([v14 item] < v9)
            {
              v19 = [v10 fetchedObjects];
              v20 = [v19 objectAtIndex:{objc_msgSend(v14, "item")}];
              [v24 addObject:v20];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0;
    }

    v4 = v22;
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

- (BOOL)isAssetAtIndexPathPartOfCuratedSet:(PXSimpleIndexPath *)a3
{
  v5 = [(PXPhotosDataSource *)self assetsInSection:a3->section];
  v6 = [v5 fetchedObjectIDs];
  v7 = [v6 objectAtIndexedSubscript:a3->item];

  if (v7 || ([v5 objectAtIndex:a3->item], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectID"), v7 = objc_claimAutoreleasedReturnValue(), v8, v7))
  {
    v9 = [(PXPhotosDataSource *)self assetCollectionForSection:a3->section];
    v10 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v9];
    v11 = [v10 curatedOids];
    v12 = [v11 containsObject:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)assetAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 item];
  v7 = -[PXPhotosDataSource assetsInSection:](self, "assetsInSection:", [v5 section]);
  v8 = [v7 objectAtIndexedSubscript:v6];
  if (!v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:2019 description:{@"%@ nil asset at indexPath:%@. The indexPath is probably invalid.", self, v5}];
  }

  return v8;
}

- (id)facesAtSimpleIndexPath:(PXSimpleIndexPath *)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotosDataSource *)self versionIdentifier])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    v25 = *&a3->item;
    v27 = *&a3->dataSourceIdentifier;
    v28 = v25;
    PXSimpleIndexPathDescription();
  }

  v6 = [(PXPhotosDataSource *)self assetsInSection:a3->section];
  v7 = [v6 fetchedObjectIDs];
  v8 = [v7 objectAtIndex:a3->item];

  if (!v8)
  {
    v9 = *&a3->item;
    v27 = *&a3->dataSourceIdentifier;
    v28 = v9;
    v10 = [(PXPhotosDataSource *)self assetAtSimpleIndexPath:&v27];
    v8 = [v10 objectID];

    if (!v8)
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      objc_claimAutoreleasedReturnValue();
      v26 = *&a3->item;
      v27 = *&a3->dataSourceIdentifier;
      v28 = v26;
      PXSimpleIndexPathDescription();
    }
  }

  v11 = [(NSMutableDictionary *)self->_facesByAssetCache objectForKey:v8];
  if (!v11)
  {
    v12 = [(PXPhotosDataSource *)self photoLibrary];
    v13 = [v12 px_standardLibrarySpecificFetchOptions];

    [v13 setWantsIncrementalChangeDetails:0];
    [v13 setIncludeTorsoAndFaceDetectionData:1];
    v14 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [v13 setIncludedDetectionTypes:v14];

    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"assetForFace", v8];
    v16 = [(NSArray *)self->_filterPersons firstObject];
    v17 = v16;
    if (v16)
    {
      v18 = MEMORY[0x1E696AE18];
      v19 = [v16 objectID];
      v20 = [v18 predicateWithFormat:@"noindex:(%K) = %@", @"personForFace", v19];

      v21 = MEMORY[0x1E696AB28];
      v29[0] = v15;
      v29[1] = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v23 = [v21 andPredicateWithSubpredicates:v22];

      [v13 setInternalPredicate:v23];
    }

    else
    {
      [v13 setInternalPredicate:v15];
    }

    v11 = [MEMORY[0x1E69787C8] fetchFacesWithOptions:v13];
    if (v11)
    {
      [(NSMutableDictionary *)self->_facesByAssetCache setObject:v11 forKey:v8];
    }
  }

  return v11;
}

- (double)weightForAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectID];
    v7 = [(NSMutableDictionary *)self->_weightByAssetCache objectForKey:v6];
    if (!v7)
    {
      v8 = MEMORY[0x1E696AD98];
      [v5 weight];
      v7 = [v8 numberWithDouble:?];
      [(NSMutableDictionary *)self->_weightByAssetCache setObject:v7 forKey:v6];
    }

    [v7 floatValue];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (id)assetAtSimpleIndexPath:(PXSimpleIndexPath *)a3
{
  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotosDataSource *)self versionIdentifier])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  v6 = [(PXPhotosDataSource *)self assetsInSection:a3->section];
  if (!v6)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  v7 = [v6 objectAtIndexedSubscript:a3->item];

  return v7;
}

- (id)_assetsForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];
  v6 = [(PXPhotosDataSource *)self _assetCollectionFetchStatus:v4];
  if (v6 - 1 > 2)
  {
    v9 = 0;
  }

  else
  {
    v7 = v6;
    v8 = [v5 exposedFetchResult];
    v9 = v8;
    if (v7 != 2 && !v8)
    {
      v10 = [(PXPhotosDataSource *)self _fetchTupleForAssetCollection:v4 calledOnClientQueue:1 isLimitedInitialFetch:v7 == 1];
      v11 = [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:v4];
      [(PXPhotosDataSource *)self _addResultTuple:v10 forAssetCollection:v4 preparedResultRecord:0 toMutableResultRecord:v11];
      v9 = [v11 exposedFetchResult];
    }
  }

  return v9;
}

- (id)assetsInSection:(int64_t)a3
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:a3];
  v5 = [(PXPhotosDataSource *)self _assetsForAssetCollection:v4];

  return v5;
}

- (int64_t)keyAssetIndexInSection:(int64_t)a3
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:a3];
  v5 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];
  v6 = [v5 keyAssetIndex];

  return v6;
}

- (id)_keyAssetsForAssetCollection:(id)a3
{
  v3 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:a3];
  v4 = [v3 keyAssetsFetchResult];

  return v4;
}

- (id)keyAssetsInSection:(int64_t)a3
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:a3];
  v5 = [(PXPhotosDataSource *)self _keyAssetsForAssetCollection:v4];

  return v5;
}

- (id)infoForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_infoForAssetCollection objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(PXAssetCollectionDataSourceInfo);
    [(NSMutableDictionary *)self->_infoForAssetCollection setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)sectionsForAssetCollections:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PXPhotosDataSource *)self sectionForAssetCollection:*(*(&v13 + 1) + 8 * i), v13];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v5 addIndex:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)assetCollectionForSection:(int64_t)a3
{
  v4 = [(PXPhotosDataSource *)self _sectionCache];
  v5 = [v4 assetCollections];
  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(PXPhotosDataSource *)self assetsInSection:a3];
  v4 = [v3 count];

  return v4;
}

- (void)setWantsCurationForAllCollections:(BOOL)a3 collectionsToDiff:(id)a4
{
  v4 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PXPhotosDataSource *)self _sectionCache];
  v8 = [v7 assetCollectionToSection];
  v9 = [v8 allKeys];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v12 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:*(*(&v21 + 1) + 8 * i)];
        if ([v16 isCurated] != v4 || objc_msgSend(v16, "wantsCuration") != v4)
        {

          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __74__PXPhotosDataSource_setWantsCurationForAllCollections_collectionsToDiff___block_invoke;
          v17[3] = &unk_1E774B368;
          v18 = v10;
          v19 = self;
          v20 = v4;
          [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v18 collectionsToDiff:v6 changeBlock:v17];
          v12 = v18;
          goto LABEL_12;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v12 = v10;
  }

LABEL_12:
}

void __74__PXPhotosDataSource_setWantsCurationForAllCollections_collectionsToDiff___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _mutableResultRecordForAssetCollection:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 setWantsCuration:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setWantsCuration:(BOOL)a3 forAssetCollection:(id)a4
{
  v4 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(PXPhotosDataSource *)self wantsCurationForAssetCollection:v6]!= v4)
  {
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PXPhotosDataSource_setWantsCuration_forAssetCollection___block_invoke;
    v8[3] = &unk_1E774B368;
    v8[4] = self;
    v9 = v6;
    v10 = v4;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v7 changeBlock:v8];
  }
}

void __58__PXPhotosDataSource_setWantsCuration_forAssetCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mutableResultRecordForAssetCollection:*(a1 + 40)];
  [v2 setWantsCuration:*(a1 + 48)];
}

- (void)setCurationLength:(int64_t)a3
{
  if (self->_curationLength != a3)
  {
    v15 = v3;
    v16 = v4;
    self->_curationLength = a3;
    v7 = [(PXPhotosDataSource *)self _sectionCache];
    v8 = [v7 assetCollectionToSection];
    v9 = [v8 allKeys];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__PXPhotosDataSource_setCurationLength___block_invoke;
    v11[3] = &unk_1E7749FF8;
    v12 = v9;
    v13 = self;
    v14 = a3;
    v10 = v9;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v10 changeBlock:v11];
  }
}

uint64_t __40__PXPhotosDataSource_setCurationLength___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _mutableResultRecordForAssetCollection:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 setCurationLength:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _restartBackgroundFetchWithAssetCollectionsToDiff:0];
}

- (void)setKeyAsset:(id)a3 forAssetCollection:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PXPhotosDataSource_setKeyAsset_forAssetCollection___block_invoke;
  v11[3] = &unk_1E774A1B8;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v8 changeBlock:v11];
}

void __53__PXPhotosDataSource_setKeyAsset_forAssetCollection___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _mutableResultRecordForAssetCollection:*(a1 + 40)];
  v3 = objc_alloc(MEMORY[0x1E69788E0]);
  v10[0] = *(a1 + 48);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v5 = [*(a1 + 40) photoLibrary];
  v6 = *MEMORY[0x1E6978D98];
  v7 = [v2 keyAssetsFetchResult];
  v8 = [v7 fetchPropertySets];
  v9 = [v3 initWithObjects:v4 photoLibrary:v5 fetchType:v6 fetchPropertySets:v8 identifier:0 registerIfNeeded:1];

  [v2 setKeyAssetsFetchResult:v9];
  if ([*(a1 + 40) assetCollectionType] == 6 && (objc_msgSend(*(a1 + 40), "assetCollectionSubtype") == 1000000303 || objc_msgSend(*(a1 + 40), "assetCollectionSubtype") == 1000000302))
  {
    [v2 setFetchResult:v9 reverseSortOrder:0];
    [v2 setCuratedFetchResult:v9];
  }
}

- (void)setBackgroundFetchOriginSection:(int64_t)a3
{
  if (self->_backgroundFetchOriginSection != a3)
  {
    self->_backgroundFetchOriginSection = a3;
    self->_backgroundFetchOriginSectionChanged = 1;
    [(PXPhotosDataSource *)self _interruptBackgroundFetch];
  }
}

- (void)setReverseSortOrder:(BOOL)a3
{
  if (self->_reverseSortOrder != a3)
  {
    v14 = v3;
    v15 = v4;
    v7 = [(PXPhotosDataSource *)self _sectionCache];
    v8 = [v7 assetCollectionToSection];
    v9 = [v8 allKeys];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__PXPhotosDataSource_setReverseSortOrder___block_invoke;
    v11[3] = &unk_1E774B368;
    v13 = a3;
    v11[4] = self;
    v12 = v9;
    v10 = v9;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v11];
  }
}

- (void)setSortDescriptors:(id)a3
{
  v5 = a3;
  if (self->_sortDescriptors != v5)
  {
    if (self->_isBackgroundFetching && self->_needToStartBackgroundFetch && ![(NSMutableDictionary *)self->_resultRecordByAssetCollection count])
    {
      objc_storeStrong(&self->_sortDescriptors, a3);
    }

    else
    {
      v6 = [(PXPhotosDataSource *)self _sectionCache];
      v7 = [v6 assetCollectionToSection];
      v8 = [v7 allKeys];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__PXPhotosDataSource_setSortDescriptors___block_invoke;
      v10[3] = &unk_1E774A1B8;
      v10[4] = self;
      v11 = v5;
      v12 = v8;
      v9 = v8;
      [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v10];
      [(PXPhotosDataSource *)self _restartBackgroundFetchWithAssetCollectionsToDiff:0];
    }
  }
}

void __41__PXPhotosDataSource_setSortDescriptors___block_invoke(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_storeStrong(a1[4] + 58, a1[5]);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = a1[6];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [a1[4] _mutableResultRecordForAssetCollection:{*(*(&v8 + 1) + 8 * v6), v8}];
        [v7 setSortDescriptors:a1[5]];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setFetchLimit:(unint64_t)a3
{
  if (self->_fetchLimit != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__PXPhotosDataSource_setFetchLimit___block_invoke;
    v5[3] = &unk_1E77498A0;
    v5[4] = self;
    v5[5] = a3;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v5];
  }
}

- (void)setAllowedUUIDs:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v6 = a3;
  v7 = a4;
  allowedUUIDs = self->_allowedUUIDs;
  if (allowedUUIDs != v6 && ([(NSSet *)allowedUUIDs isEqual:v6]& 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__PXPhotosDataSource_setAllowedUUIDs_provideIncrementalChangeDetailsForAssetCollections___block_invoke;
    aBlock[3] = &unk_1E774C620;
    aBlock[4] = self;
    v9 = v6;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    if ([(NSSet *)v9 count]&& self->_allowedUUIDs)
    {
      v11 = [(PHFetchResult *)self->_collectionListFetchResult fetchedObjects];
      [(PXPhotosDataSource *)self _cancelBackgroundFetchIfNeeded];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __89__PXPhotosDataSource_setAllowedUUIDs_provideIncrementalChangeDetailsForAssetCollections___block_invoke_2;
      v12[3] = &unk_1E774C2F0;
      v12[4] = self;
      v13 = v10;
      [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v11 collectionsToDiff:v7 changeBlock:v12];
    }

    else
    {
      [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v10];
    }
  }
}

void __89__PXPhotosDataSource_setAllowedUUIDs_provideIncrementalChangeDetailsForAssetCollections___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 440);
  *(v3 + 440) = v2;
}

uint64_t __89__PXPhotosDataSource_setAllowedUUIDs_provideIncrementalChangeDetailsForAssetCollections___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _cancelBackgroundFetchIfNeeded];
  v2 = [*(a1 + 32) _inaccurateAssetCollections];
  [v2 removeAllObjects];

  v3 = *(*(a1 + 32) + 80);

  return [v3 removeAllObjects];
}

- (void)setAllowedOIDs:(id)a3
{
  v4 = a3;
  v5 = self->_allowedOIDs;
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:v4];

    if ((v7 & 1) == 0)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __37__PXPhotosDataSource_setAllowedOIDs___block_invoke;
      v8[3] = &unk_1E774C620;
      v8[4] = self;
      v9 = v4;
      [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v8];
    }
  }
}

- (void)setCollectionListFetchResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_collectionListFetchResult != v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__PXPhotosDataSource_setCollectionListFetchResult___block_invoke;
    v6[3] = &unk_1E774C620;
    v6[4] = self;
    v7 = v4;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v6];
  }
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_pauseLibraryChangeDeliveryTokens containsObject:v4])
  {
    v5 = [(PXPhotosDataSource *)self photoLibrary];
    [v5 px_endPausingChanges:v4];

    [(NSMutableSet *)self->_pauseLibraryChangeDeliveryTokens removeObject:v4];
    if (![(NSMutableSet *)self->_pauseLibraryChangeDeliveryTokens count])
    {
      self->_pauseBackgroundFetchResultsDelivery = 0;
      pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
      if (pendingResultsIsolationQueue)
      {
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __63__PXPhotosDataSource_resumeChangeDeliveryAndBackgroundLoading___block_invoke;
        block[3] = &unk_1E7749A28;
        block[4] = self;
        block[5] = &v12;
        dispatch_sync(pendingResultsIsolationQueue, block);
        if (*(v13 + 24) == 1)
        {
          objc_initWeak(&location, self);
          v7 = dispatch_time(0, 500000000);
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __63__PXPhotosDataSource_resumeChangeDeliveryAndBackgroundLoading___block_invoke_2;
          v8[3] = &unk_1E774C318;
          objc_copyWeak(&v9, &location);
          dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
          objc_destroyWeak(&v9);
          objc_destroyWeak(&location);
        }

        _Block_object_dispose(&v12, 8);
      }
    }
  }
}

uint64_t __63__PXPhotosDataSource_resumeChangeDeliveryAndBackgroundLoading___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void __63__PXPhotosDataSource_resumeChangeDeliveryAndBackgroundLoading___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processAndPublishPendingCollectionFetchResultsWhenAppropriate];
}

- (id)pauseChangeDeliveryAndBackgroundLoadingWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = fmax(a3 + a3, 0.1);
  v7 = a4;
  v8 = [(PXPhotosDataSource *)self photoLibrary];
  v9 = [v8 px_beginPausingChangesWithTimeout:v7 identifier:v6];

  [(NSMutableSet *)self->_pauseLibraryChangeDeliveryTokens addObject:v9];
  self->_pauseBackgroundFetchResultsDelivery = 1;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (a3 * 1000000000.0));
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PXPhotosDataSource_pauseChangeDeliveryAndBackgroundLoadingWithTimeout_identifier___block_invoke;
  v16[3] = &unk_1E774B708;
  objc_copyWeak(&v19, &location);
  v11 = v9;
  v17 = v11;
  v18 = v8;
  v12 = v8;
  dispatch_after(v10, MEMORY[0x1E69E96A0], v16);
  v13 = v18;
  v14 = v11;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v14;
}

void __84__PXPhotosDataSource_pauseChangeDeliveryAndBackgroundLoadingWithTimeout_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained resumeChangeDeliveryAndBackgroundLoading:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 40) px_endPausingChanges:*(a1 + 32)];
  }
}

- (void)pauseChangeDeliveryFor:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [(PXPhotosDataSource *)self photoLibrary];
  v8 = [v7 px_beginPausingChangesWithTimeout:v6 identifier:{fmax(a3 + a3, 1.0)}];

  v9 = dispatch_time(0, (a3 * 1000000000.0));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PXPhotosDataSource_pauseChangeDeliveryFor_identifier___block_invoke;
  v12[3] = &unk_1E774C620;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_after(v9, MEMORY[0x1E69E96A0], v12);
}

- (void)unregisterChangeObserver:(id)a3
{
  v4 = a3;
  observersQueue = self->_observersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PXPhotosDataSource_unregisterChangeObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observersQueue, v7);
}

uint64_t __47__PXPhotosDataSource_unregisterChangeObserver___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 removeObject:v2];
}

- (void)registerChangeObserver:(id)a3
{
  v4 = a3;
  observersQueue = self->_observersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PXPhotosDataSource_registerChangeObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observersQueue, v7);
}

uint64_t __45__PXPhotosDataSource_registerChangeObserver___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 addObject:v2];
}

- (unint64_t)_cachedSectionForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self _sectionCache];
  v6 = [v5 assetCollectionToSection];

  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (int64_t)estimatedAssetsCountWithEnrichmentState:(unsigned __int16)a3
{
  v3 = a3;
  v6 = [(PXPhotosDataSource *)self _sectionCache];
  v7 = v6;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v8 = [v6 estimatedAssetCountWithEnrichmentStateNotEnriched];
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v8 = [v6 estimatedAssetCountWithEnrichmentStateAssetMetadataOnly];
      goto LABEL_12;
    }

LABEL_13:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:1562 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v3 == 2)
  {
    v8 = [v6 estimatedAssetCountWithEnrichmentStateAssetMetadataAndScore];
    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v8 = [v6 estimatedAssetCountWithEnrichmentStateAssetMetadataAndScenesProcessed];
    goto LABEL_12;
  }

  if (v3 != 4)
  {
    goto LABEL_13;
  }

  v8 = [v6 estimatedAssetCountWithEnrichmentStateComplete];
LABEL_12:
  v9 = v8;

  return v9;
}

- (int64_t)numberOfSectionsWithEnrichmentState:(unsigned __int16)a3
{
  v3 = a3;
  v6 = [(PXPhotosDataSource *)self _sectionCache];
  v7 = v6;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v8 = [v6 numberOfEnrichmentStateNotEnrichedAssetCollections];
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v8 = [v6 numberOfEnrichmentStateAssetMetadataOnlyAssetCollections];
      goto LABEL_12;
    }

LABEL_13:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:1545 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v3 == 2)
  {
    v8 = [v6 numberOfEnrichmentStateAssetMetadataAndScoreAssetCollections];
    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v8 = [v6 numberOfEnrichmentStateAssetMetadataAndScenesProcessedAssetCollections];
    goto LABEL_12;
  }

  if (v3 != 4)
  {
    goto LABEL_13;
  }

  v8 = [v6 numberOfEnrichmentStateCompleteAssetCollections];
LABEL_12:
  v9 = v8;

  return v9;
}

- (int64_t)estimatedOtherCount
{
  if ([(PXPhotosDataSource *)self _isFiltering])
  {
    return 0;
  }

  v4 = [(PXPhotosDataSource *)self _sectionCache];
  v5 = [v4 estimatedOtherCount];

  return v5;
}

- (int64_t)estimatedVideosCount
{
  if ([(PXPhotosDataSource *)self _isFiltering])
  {
    return 0;
  }

  v4 = [(PXPhotosDataSource *)self _sectionCache];
  v5 = [v4 estimatedVideosCount];

  return v5;
}

- (int64_t)estimatedPhotosCount
{
  if ([(PXPhotosDataSource *)self _isFiltering])
  {
    return 0;
  }

  v4 = [(PXPhotosDataSource *)self _sectionCache];
  v5 = [v4 estimatedPhotosCount];

  return v5;
}

- (BOOL)_isFiltering
{
  v3 = [(PXPhotosDataSource *)self filterPredicate];

  return v3 || [(PXPhotosDataSource *)self libraryFilter]!= 0;
}

- (void)_adoptExistingAssetCollectionFetchResults:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PXPhotosDataSource__adoptExistingAssetCollectionFetchResults___block_invoke;
  v3[3] = &unk_1E7744170;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

void __64__PXPhotosDataSource__adoptExistingAssetCollectionFetchResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(a1 + 32) sectionForAssetCollection:v8] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 32) _mutableResultRecordForAssetCollection:v8];
    if ([*(a1 + 32) _reverseSortOrderForAssetCollection:v8])
    {
      v7 = [*(a1 + 32) reverseSortOrder] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setFetchResult:v5 reverseSortOrder:v7];
  }
}

- (BOOL)_isResultTupleApplicable:(id)a3 forAssetCollection:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = a3;
  v7 = [(PXPhotosDataSource *)self _finalFilterPredicateForAssetCollection:a4];
  v8 = [v6 filterPredicate];

  if (v7 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (id)_closestIndexPathToIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self numberOfSections];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v6 = v5;
  if ([v4 section] < v5)
  {
    v7 = -[PXPhotosDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", [v4 section]);
    if ([v4 item] < v7)
    {
      v8 = v4;
      goto LABEL_8;
    }

    v10 = v7 < 1;
    v11 = v7 - 1;
    if (!v10)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:{objc_msgSend(v4, "section")}];
LABEL_8:
      v9 = v8;
      if (v8)
      {
        goto LABEL_20;
      }
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PXPhotosDataSource__closestIndexPathToIndexPath___block_invoke;
  aBlock[3] = &unk_1E77442B8;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v13 = [v4 section];
  v14 = v6 - 1;
  if (v6 > 1)
  {
    v15 = v13 - 1;
    v16 = v13 + 1;
    while (v16 < v6 || (v15 & 0x8000000000000000) == 0)
    {
      if (v16 < v6 && (v12[2](v12, v16, 0), (v17 = objc_claimAutoreleasedReturnValue()) != 0) || v15 < v6 && (v12[2](v12, v15, 1), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = v17;
        goto LABEL_19;
      }

      --v15;
      ++v16;
      if (!--v14)
      {
        break;
      }
    }
  }

  v9 = 0;
LABEL_19:

LABEL_20:

  return v9;
}

id __51__PXPhotosDataSource__closestIndexPathToIndexPath___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v5 = [*(a1 + 32) numberOfItemsInSection:a2];
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    if (a3)
    {
      v6 = v5 - 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:a2];
  }

  return v7;
}

- (id)_observerInterestingAssetReferences
{
  v3 = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PXPhotosDataSource__observerInterestingAssetReferences__block_invoke;
  v8[3] = &unk_1E7744290;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [(PXPhotosDataSource *)self _enumerateChangeObserversWithBlock:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __57__PXPhotosDataSource__observerInterestingAssetReferences__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = v6;
  if (v3)
  {
    v5 = [v6 photosDataSourceInterestingAssetReferences:*(a1 + 32)];
    if (v5)
    {
      [*(a1 + 40) addObjectsFromArray:v5];
    }

    v4 = v6;
  }
}

- (void)_publishDidReceivePhotoLibraryChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXPhotosDataSource__publishDidReceivePhotoLibraryChange___block_invoke;
  v6[3] = &unk_1E7744290;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PXPhotosDataSource *)self _enumerateChangeObserversWithBlock:v6];
}

void __59__PXPhotosDataSource__publishDidReceivePhotoLibraryChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 photosDataSource:*(a1 + 32) didReceivePhotoLibraryChange:*(a1 + 40)];
  }
}

- (void)_distributeChange:(id)a3
{
  v4 = a3;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __40__PXPhotosDataSource__distributeChange___block_invoke;
  v9 = &unk_1E7744290;
  v10 = self;
  v11 = v4;
  v5 = v4;
  [(PXPhotosDataSource *)self _enumerateChangeObserversWithBlock:&v6];
  [(PXPhotosDataSource *)self _setPreviousCollectionsCount:[(PHFetchResult *)self->_collectionListFetchResult count:v6]];
}

void __40__PXPhotosDataSource__distributeChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 photosDataSource:*(a1 + 32) didChange:*(a1 + 40)];
  }
}

- (void)_didChange:(id)a3
{
  if (self->_nestedCoalesceChanges < 1)
  {
    [(PXPhotosDataSource *)self _distributeChange:a3];
  }

  else
  {
    [(NSMutableArray *)self->_coalescedChanges addObject:a3];
  }

  --self->_nestedChanges;
}

- (void)_willChange
{
  nestedChanges = self->_nestedChanges;
  self->_nestedChanges = nestedChanges + 1;
  if (!nestedChanges)
  {
    v6[7] = v2;
    v6[8] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__PXPhotosDataSource__willChange__block_invoke;
    v6[3] = &unk_1E7744268;
    v6[4] = self;
    [(PXPhotosDataSource *)self _enumerateChangeObserversWithBlock:v6];
    [(PXPhotosDataSource *)self _setPreviousCollectionsCount:[(PHFetchResult *)self->_collectionListFetchResult count]];
    [(PXPhotosDataSource *)self _incrementVersionIdentifier];
  }
}

void __33__PXPhotosDataSource__willChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 photosDataSourceWillChange:*(a1 + 32)];
  }
}

- (void)_publishReloadChange
{
  v3 = objc_alloc_init(PXPhotosDataSourceChange);
  [(PXPhotosDataSource *)self _didChange:v3];
}

- (id)_fetchTupleForAssetCollection:(id)a3 calledOnClientQueue:(BOOL)a4 isLimitedInitialFetch:(BOOL)a5
{
  v78 = a5;
  v81 = a4;
  v169 = *MEMORY[0x1E69E9840];
  v6 = a3;
  options = self->_options;
  v155 = 0;
  v156 = &v155;
  v157 = 0x3032000000;
  v158 = __Block_byref_object_copy__205867;
  v159 = __Block_byref_object_dispose__205868;
  v160 = 0;
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = __Block_byref_object_copy__205867;
  v153 = __Block_byref_object_dispose__205868;
  v154 = 0;
  v143 = 0;
  v144 = &v143;
  v145 = 0x3032000000;
  v146 = __Block_byref_object_copy__205867;
  v147 = __Block_byref_object_dispose__205868;
  v148 = 0;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = 0;
  v133 = 0;
  v134 = &v133;
  v135 = 0x3032000000;
  v136 = __Block_byref_object_copy__205867;
  v137 = __Block_byref_object_dispose__205868;
  v138 = 0;
  v127 = 0;
  v128 = &v127;
  v129 = 0x3032000000;
  v130 = __Block_byref_object_copy__205867;
  v131 = __Block_byref_object_dispose__205868;
  v132 = 0;
  v121 = 0;
  v122 = &v121;
  v123 = 0x3032000000;
  v124 = __Block_byref_object_copy__205867;
  v125 = __Block_byref_object_dispose__205868;
  v126 = 0;
  v114 = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = __Block_byref_object_copy__205867;
  v119 = __Block_byref_object_dispose__205868;
  v120 = 0;
  v112 = 0;
  v113[0] = &v112;
  v113[1] = 0x3032000000;
  v113[2] = __Block_byref_object_copy__205867;
  v113[3] = __Block_byref_object_dispose__205868;
  v109 = 0;
  v110[0] = &v109;
  v110[1] = 0x3032000000;
  v110[2] = __Block_byref_object_copy__205867;
  v110[3] = __Block_byref_object_dispose__205868;
  v111 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PXPhotosDataSource__fetchTupleForAssetCollection_calledOnClientQueue_isLimitedInitialFetch___block_invoke;
  aBlock[3] = &unk_1E7744218;
  v97 = &v155;
  v80 = self;
  aBlock[4] = self;
  v96 = v6;
  v98 = &v149;
  v99 = &v143;
  v100 = &v139;
  v101 = &v133;
  v107 = (options & 0x20) != 0;
  v102 = &v127;
  v103 = &v121;
  v108 = v78;
  v104 = &v115;
  v105 = &v112;
  v7 = v96;
  v106 = &v109;
  block = _Block_copy(aBlock);
  if (v81)
  {
    block[2]();
  }

  else
  {
    v9 = [(PXPhotosDataSource *)self clientQueue];
    dispatch_sync(v9, block);
  }

  v8 = self;
  v82 = v134[5];
  v75 = [(PXPhotosDataSource *)self fetcher];
  v76 = [(PXPhotosDataSource *)self _assetContainerForAssetCollection:v7];
  if ((self->_options & 0x40) != 0)
  {
    goto LABEL_11;
  }

  v10 = v156[5];
  if (v10 && ![v10 count] || (v11 = v150[5]) != 0 && !objc_msgSend(v11, "count"))
  {
    v79 = self->_emptyAssetsFetchResult;
    v73 = 1;
    goto LABEL_45;
  }

  v12 = self->_options;
  if (v78 && (v12 & 0x10000) != 0)
  {
LABEL_11:
    v79 = self->_emptyAssetsFetchResult;
LABEL_12:
    v73 = 0;
    goto LABEL_45;
  }

  if ((v12 & 8) != 0)
  {
    v79 = [v75 fetchAssetsInContainer:v76 configuration:v122[5]];
    goto LABEL_12;
  }

  v13 = [v122[5] copy];
  [v13 setFilterPredicate:v128[5]];
  v79 = [v75 fetchAssetsInContainer:v76 configuration:v13];
  if (v150[5])
  {
    v14 = [(PHFetchResult *)v79 fetchedObjectIDs];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    v91 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v91 objects:v168 count:16];
    if (v17)
    {
      v18 = *v92;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v92 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v91 + 1) + 8 * i);
          if ([v150[5] containsObject:v20])
          {
            [v15 addObject:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v91 objects:v168 count:16];
      }

      while (v17);
    }

    v21 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = v80->_photoLibrary;
    v23 = [(PHFetchResult *)v79 fetchType];
    v24 = [(PHFetchResult *)v79 fetchPropertySets];
    v25 = [v21 initWithOids:v15 photoLibrary:photoLibrary fetchType:v23 fetchPropertySets:v24 identifier:0 registerIfNeeded:1];

    v26 = [(PHFetchResult *)v25 count];
    v73 = v26 < [(PHFetchResult *)v79 count];
LABEL_43:

    v79 = v25;
    goto LABEL_44;
  }

  if (v156[5])
  {
    if ((self->_options & 0x1000000) != 0)
    {
      v27 = [MEMORY[0x1E695DFA8] set];
      v28 = [(PHFetchResult *)v79 count];
      if (v28 >= 1)
      {
        for (j = 0; j != v28; ++j)
        {
          v30 = objc_autoreleasePoolPush();
          v31 = [(PHFetchResult *)v79 objectAtIndexedSubscript:j];
          v32 = [v31 uuid];
          if ([v156[5] containsObject:v32])
          {
            [v27 addObject:v32];
          }

          objc_autoreleasePoolPop(v30);
        }
      }

      v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid in %@", v27];
    }

    else
    {
      v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid in %@", v156[5]];
    }

    if (v128[5])
    {
      v33 = MEMORY[0x1E696AB28];
      v167[0] = v128[5];
      v167[1] = v16;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:2];
      v15 = [v33 andPredicateWithSubpredicates:v34];
    }

    else
    {
      v15 = v16;
    }

    v35 = [v122[5] copy];
    [(PHFetchResult *)v35 setFilterPredicate:v15];
    v25 = [v75 fetchAssetsInContainer:v76 configuration:v35];
    v36 = [(PHFetchResult *)v25 count];
    v73 = v36 < [(PHFetchResult *)v79 count];
    if (v144[5])
    {
      v37 = [MEMORY[0x1E695DFB8] orderedSetWithArray:?];
      v38 = [(PHFetchResult *)v25 px_fetchedObjectIDsSortedByUUIDs:v37];

      v39 = objc_alloc(MEMORY[0x1E69788E0]);
      v72 = v80->_photoLibrary;
      v40 = [(PHFetchResult *)v25 fetchType];
      v41 = [(PHFetchResult *)v25 fetchPropertySets];
      v42 = [v39 initWithOids:v38 photoLibrary:v72 fetchType:v40 fetchPropertySets:v41 identifier:0 registerIfNeeded:1];

      v25 = v42;
    }

    v79 = v35;
    goto LABEL_43;
  }

  v73 = 0;
LABEL_44:

  v8 = v80;
LABEL_45:
  v43 = ([v7 px_supportsFastCuration] & 1) != 0 || objc_msgSend(v116[5], "curationKind") == 3;
  v44 = !v81 || ((*(v140 + 24) | v43) & 1) != 0 || !v8->_isBackgroundFetching;
  v45 = v8->_options;
  if ((v45 & 0x10) == 0)
  {
    v46 = 0;
    v47 = 0;
    if ((options & 0x20) == 0)
    {
      goto LABEL_95;
    }

LABEL_78:
    if (v82)
    {
      goto LABEL_95;
    }

    if (v44)
    {
      if (v81 && ((*(v140 + 24) | v43) & 1) == 0)
      {
        v52 = PLUIGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v162 = v8;
          v163 = 2112;
          v164 = v7;
          _os_log_impl(&dword_1A3C1C000, v52, OS_LOG_TYPE_DEFAULT, "%@ fetching key assets for %@ on the main queue. This can block for a long time and should never happen.", buf, 0x16u);
        }

        v8 = v80;
      }

      if ((v8->_options & 0x200000) != 0)
      {
        v82 = +[PXPhotoKitFetcher fetchAssetsWithCurationKind:container:libraryFilter:curationContext:](_TtC12PhotosUICore17PXPhotoKitFetcher, "fetchAssetsWithCurationKind:container:libraryFilter:curationContext:", 4, v76, [v116[5] libraryFilter], 1);
      }

      else
      {
        v53 = v113;
        if ((v45 & 0x10) != 0)
        {
          v53 = v110;
        }

        v82 = [v75 fetchAssetsInContainer:v76 configuration:*(*v53 + 40)];
      }

      if (v82)
      {
        goto LABEL_95;
      }

      v54 = PLUIGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v71 = v8->_options;
        *buf = 138412802;
        v162 = v8;
        v163 = 2112;
        v164 = v76;
        v165 = 2048;
        v166 = v71;
        v55 = "%@ failed to fetch key curated assets for %@ options %ti";
        v56 = v54;
        v57 = OS_LOG_TYPE_ERROR;
        v58 = 32;
        goto LABEL_91;
      }

      goto LABEL_92;
    }

LABEL_89:
    v54 = PLUIGetLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v162 = v8;
      v163 = 2112;
      v164 = v7;
      v55 = "%@ not allowed to fetch key assets for %@ on the main queue.";
      v56 = v54;
      v57 = OS_LOG_TYPE_DEBUG;
      v58 = 22;
LABEL_91:
      _os_log_impl(&dword_1A3C1C000, v56, v57, v55, buf, v58);
    }

LABEL_92:

    v82 = 0;
    v8 = v80;
    goto LABEL_95;
  }

  if ((v44 & 1) == 0)
  {
    v50 = PLUIGetLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v162 = v8;
      v163 = 2112;
      v164 = v7;
      _os_log_impl(&dword_1A3C1C000, v50, OS_LOG_TYPE_DEBUG, "%@ not allowed to fetch curated assets for %@ on the main queue.", buf, 0x16u);
    }

    v46 = 0;
    v47 = 0;
    if (v82)
    {
      v51 = 0;
    }

    else
    {
      v51 = (options & 0x20) != 0;
    }

    v8 = v80;
    if (v51)
    {
      goto LABEL_89;
    }

    goto LABEL_95;
  }

  if (v81)
  {
    v48 = v8->_options;
    if (((*(v140 + 24) | v43) & 1) == 0)
    {
      v49 = PLUIGetLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v162 = v8;
        v163 = 2112;
        v164 = v7;
        _os_log_impl(&dword_1A3C1C000, v49, OS_LOG_TYPE_DEFAULT, "%@ fetching curated assets for %@ on the main queue. This can block for a long time and should never happen.", buf, 0x16u);
      }

      v8 = v80;
      v48 = v80->_options;
    }

    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_74;
    }
  }

  else if ((v45 & 0x2000) == 0)
  {
    goto LABEL_74;
  }

  if ([v7 assetCollectionType] == 4)
  {
    v47 = [v75 fetchAssetsInContainer:v76 configuration:v116[5]];
    if ([v47 count])
    {
      v46 = 0;
    }

    else
    {
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __94__PXPhotosDataSource__fetchTupleForAssetCollection_calledOnClientQueue_isLimitedInitialFetch___block_invoke_452;
      v86[3] = &unk_1E7744240;
      v87 = v7;
      v88 = v75;
      v89 = v76;
      v90 = &v115;
      v46 = _Block_copy(v86);

      v8 = v80;
    }

    goto LABEL_75;
  }

LABEL_74:
  v46 = 0;
  v47 = 0;
LABEL_75:
  if ([v47 count])
  {
    if (v47)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v68 = [v116[5] copy];
    [v68 setOptions:{objc_msgSend(v68, "options") & 0xFFFFFFFFFFFFFFFDLL}];
    v69 = [v75 fetchAssetsInContainer:v76 configuration:v68];

    v47 = v69;
    v8 = v80;
    if (v69)
    {
LABEL_77:
      if ((options & 0x20) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_78;
    }
  }

  v70 = PLUIGetLog();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v162 = v8;
    v163 = 2112;
    v164 = v7;
    v165 = 2112;
    v166 = v76;
    _os_log_impl(&dword_1A3C1C000, v70, OS_LOG_TYPE_ERROR, "%@ failed to fetch curated assets for assetCollection:%@ assetContainer:%@", buf, 0x20u);
  }

  v47 = 0;
  v8 = v80;
  if ((options & 0x20) != 0)
  {
    goto LABEL_78;
  }

LABEL_95:
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __94__PXPhotosDataSource__fetchTupleForAssetCollection_calledOnClientQueue_isLimitedInitialFetch___block_invoke_455;
  v83[3] = &unk_1E774B368;
  v83[4] = v8;
  v59 = v7;
  v84 = v59;
  v85 = v73;
  v60 = _Block_copy(v83);
  v61 = v60;
  if (v81)
  {
    (*(v60 + 2))(v60);
  }

  else
  {
    v62 = [(PXPhotosDataSource *)v80 clientQueue];
    dispatch_sync(v62, v61);
  }

  v63 = [PXPhotosResultTuple alloc];
  v64 = [v122[5] reverseSortOrder];
  v65 = [v122[5] filterPredicate];
  v66 = [(PXPhotosResultTuple *)v63 initWithFetchResult:v79 fetchedWithReverseSortOrder:v64 curatedFetchResult:v47 curatedRefetchCondition:v46 keyAssetsFetchResult:v82 filterPredicate:v65];

  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(&v112, 8);

  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v121, 8);

  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v133, 8);

  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(&v143, 8);

  _Block_object_dispose(&v149, 8);
  _Block_object_dispose(&v155, 8);

  return v66;
}

void __94__PXPhotosDataSource__fetchTupleForAssetCollection_calledOnClientQueue_isLimitedInitialFetch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allowedUUIDsForAssetCollection:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) _allowedOIDsForAssetCollection:*(a1 + 40)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) infoForAssetCollection:*(a1 + 40)];
  v9 = [v8 manualOrderUUIDs];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) allowSlowFetchesOnClientQueue];
  v12 = *(a1 + 128);
  if (v12 == 1)
  {
    v8 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
    v13 = [v8 keyAssetsFetchResult];
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v13);
  if (v12)
  {
  }

  v14 = [*(a1 + 32) _filterPredicateForAssetCollection:*(a1 + 40)];
  v15 = *(*(a1 + 88) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [*(a1 + 32) _fetcherConfigurationForAssetCollection:*(a1 + 40) useCase:0 isLimitedInitialFetch:*(a1 + 129)];
  v18 = *(*(a1 + 96) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(a1 + 32) _fetcherConfigurationForAssetCollection:*(a1 + 40) useCase:1 isLimitedInitialFetch:*(a1 + 129)];
  v21 = *(*(a1 + 104) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v23 = [*(a1 + 32) _fetcherConfigurationForAssetCollection:*(a1 + 40) useCase:2 isLimitedInitialFetch:*(a1 + 129)];
  v24 = *(*(a1 + 112) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v26 = [*(a1 + 32) _fetcherConfigurationForAssetCollection:*(a1 + 40) useCase:3 isLimitedInitialFetch:*(a1 + 129)];
  v27 = *(*(a1 + 120) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;
}

id __94__PXPhotosDataSource__fetchTupleForAssetCollection_calledOnClientQueue_isLimitedInitialFetch___block_invoke_452(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectID];
  if ([v5 customUserAssetsChangedForPHMemoryOID:v6])
  {
  }

  else
  {
    v7 = [*(a1 + 32) objectID];
    v8 = [v5 userCuratedAssetsChangedForPHMemoryOID:v7];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = [*(a1 + 40) fetchAssetsInContainer:*(a1 + 48) configuration:*(*(*(a1 + 56) + 8) + 40)];
  if ([v9 count])
  {
    v10 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
  v10 = 0;
LABEL_8:
  *a3 = v10;

  return v9;
}

void __94__PXPhotosDataSource__fetchTupleForAssetCollection_calledOnClientQueue_isLimitedInitialFetch___block_invoke_455(uint64_t a1)
{
  v2 = [*(a1 + 32) infoForAssetCollection:*(a1 + 40)];
  [v2 _setUUIDFilterHidesSomeAssets:*(a1 + 48)];
}

- (id)_assetContainerForAssetCollection:(id)a3
{
  v4 = a3;
  assetContainerProvider = self->_assetContainerProvider;
  if (!assetContainerProvider || (assetContainerProvider[2](assetContainerProvider, v4), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = v4;
  }

  return v6;
}

- (id)_fetcherConfigurationForAssetCollection:(id)a3 useCase:(int64_t)a4 isLimitedInitialFetch:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  switch(a4)
  {
    case 3:
      v10 = +[PXPhotosDataSourceSettings sharedInstance];
      v11 = [v10 disableKeyAssetCuration];

      if (v11)
      {
        curationKind = 4;
      }

      else
      {
        curationKind = 5;
      }

      break;
    case 2:
      curationKind = 4;
      break;
    case 1:
      curationKind = self->_curationKind;
      break;
    default:
      curationKind = 0;
      break;
  }

  v12 = (self->_options >> 15) & 0x10 | (self->_options >> 12) & 2 | (self->_options >> 8) & 1 | (self->_options >> 15) & 0x28 | (self->_options >> 16) & 0x40;
  if (self->_canIncludeUnsavedSyndicatedAssets)
  {
    v12 |= 4uLL;
  }

  if (self->_includeSharedCollectionAssets)
  {
    v13 = v12 | 0x80;
  }

  else
  {
    v13 = v12;
  }

  v21 = 0;
  v20 = 0;
  [(PXPhotosDataSource *)self _getFetchLimit:&v21 fetchWithReverseSortOrder:&v20 forAssetCollection:v8 isLimitedInitialFetch:v5];
  v14 = objc_alloc_init(PXPhotosAssetsFetcherConfiguration);
  [(PXPhotosAssetsFetcherConfiguration *)v14 setCurationKind:curationKind];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setCurationLength:self->_curationLength];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setOptions:v13];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setLibraryFilter:self->_libraryFilter];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setFetchLimit:v21];
  v15 = [(PXPhotosDataSource *)self _finalFilterPredicateForAssetCollection:v8];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setFilterPredicate:v15];

  v16 = [(PXPhotosDataSource *)self _inclusionPredicateForAssetCollection:v8];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setInclusionPredicate:v16];

  v17 = [(PXPhotosDataSource *)self sortDescriptors];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setSortDescriptors:v17];

  [(PXPhotosAssetsFetcherConfiguration *)v14 setIncludeUnsavedSyndicatedAssets:self->_canIncludeUnsavedSyndicatedAssets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setIncludeSharedCollectionAssets:self->_includeSharedCollectionAssets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setIncludeAllBurstAssets:self->_includeAllBurstAssets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setReverseSortOrder:v20];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setHideHiddenAssets:self->_hideHiddenAssets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setFetchPropertySets:self->_fetchPropertySets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setReferencePersons:self->_filterPersons];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setCurationType:self->_curationType];
  v18 = [(PXPhotosDataSource *)self referenceAsset];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setReferenceAsset:v18];

  [(PXPhotosAssetsFetcherConfiguration *)v14 setIncludeOthersInSocialGroupAssets:self->_includeOthersInSocialGroupAssets];

  return v14;
}

- (void)_getFetchLimit:(unint64_t *)a3 fetchWithReverseSortOrder:(BOOL *)a4 forAssetCollection:(id)a5 isLimitedInitialFetch:(BOOL)a6
{
  v6 = a6;
  v17 = a5;
  v10 = [(PXPhotosDataSource *)self fetchLimit];
  if (![(PXPhotosDataSource *)self _reverseSortOrderForAssetCollection:v17])
  {
    v11 = [(PXPhotosDataSource *)self reverseSortOrder];
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = +[PXPhotosDataSource limitedInitialFetchCountLimit];
    if (v10 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }

    if (v10)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v11)
    {
      v15 = 1;
    }

    else
    {
      v15 = [v17 keyAssetsAtEnd];
    }

    v16 = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:v17 reverseSortOrder:v15 fetcherOptions:(self->_options >> 15) & 0x10 | (self->_options >> 12) & 2 | (self->_options >> 8) & 1 | (self->_options >> 15) & 0x28 | (self->_options >> 16) & 0x40];
    v12 = v17;
    v11 = v16;
    goto LABEL_15;
  }

  v11 = 1;
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = v17;
LABEL_15:
  *a3 = v10;
  *a4 = v11;
}

- (void)_performManualReloadWithChangeBlock:(id)a3
{
  v4 = a3;
  [(PXPhotosDataSource *)self _willChange];
  v4[2](v4);

  os_unfair_lock_lock(&self->_sectionCacheLock);
  sectionCache = self->__sectionCache;
  self->__sectionCache = 0;

  os_unfair_lock_unlock(&self->_sectionCacheLock);
  if (self->_needToStartBackgroundFetch)
  {
    [(NSMutableDictionary *)self->_resultRecordByAssetCollection removeAllObjects];
    [(NSMutableSet *)self->__inaccurateAssetCollections removeAllObjects];
    [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch removeAllObjects];
    self->_inaccurateAssetCollectionsNeedsUpdate = 1;
    [(PXPhotosDataSource *)self _updateInaccurateAssetCollectionsIfNeeded];
  }

  else
  {
    [(PXPhotosDataSource *)self _cancelBackgroundFetchIfNeeded];
    v6 = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
    [v6 removeAllObjects];

    [(NSMutableDictionary *)self->_resultRecordByAssetCollection removeAllObjects];
  }

  [(PXPhotosDataSource *)self _publishReloadChange];
}

- (void)_performManualChangesForAssetCollections:(id)a3 collectionsToDiff:(id)a4 collectionsToChange:(id)a5 changeBlock:(id)a6
{
  v92 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    if (self->_nestedCoalesceChanges >= 1 && [(NSMutableArray *)self->_coalescedChanges count])
    {
      [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v13];
      goto LABEL_72;
    }

    v63 = v13;
    v67 = v12;
    options = self->_options;
    v75 = self;
    v61 = [(PXPhotosDataSource *)self versionIdentifier];
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v85 objects:v91 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v86;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v86 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v85 + 1) + 8 * i);
          if ([(PXPhotosDataSource *)v75 sectionForAssetCollection:v20]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v85 objects:v91 count:16];
      }

      while (v17);
    }

    v76 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
    v62 = v10;
    if ((options & 0x20) != 0)
    {
      v72 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
    }

    else
    {
      v72 = 0;
    }

    v60 = [(PXPhotosDataSource *)v75 collectionListFetchResult];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v21 = v14;
    v22 = [v21 countByEnumeratingWithState:&v81 objects:v90 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v82;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v82 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v81 + 1) + 8 * j);
          v27 = [(PXPhotosDataSource *)v75 _assetsForAssetCollection:v26];
          [v76 setObject:v27 forKeyedSubscript:v26];
          if ((options & 0x20) != 0)
          {
            v28 = [(PXPhotosDataSource *)v75 _keyAssetsForAssetCollection:v26];
            [v72 setObject:v28 forKeyedSubscript:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v81 objects:v90 count:16];
      }

      while (v23);
    }

    p_isa = &v75->super.isa;
    [(PXPhotosDataSource *)v75 _willChange];
    v63[2]();
    v69 = [MEMORY[0x1E695DF90] dictionary];
    v64 = [MEMORY[0x1E696AD50] indexSet];
    v65 = [MEMORY[0x1E695DF70] array];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v21;
    v12 = v67;
    v73 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v73)
    {
      v71 = *v78;
      v66 = v11;
      do
      {
        for (k = 0; k != v73; ++k)
        {
          if (*v78 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v77 + 1) + 8 * k);
          v32 = [p_isa _assetsForAssetCollection:v31];
          v33 = [v76 objectForKeyedSubscript:v31];
          v34 = v33;
          if (v32 != v33)
          {
            if (v32)
            {
              if (v33)
              {
                goto LABEL_34;
              }

LABEL_37:
              v34 = p_isa[65];
              if (v11)
              {
                goto LABEL_38;
              }

LABEL_39:
              v35 = [p_isa[13] objectForKeyedSubscript:v31];
              v36 = [v35 fetchResultBeforeChanges];
              if (v36 == v34)
              {
                v70 = 0;
              }

              else
              {
                v37 = [v35 fetchResultBeforeChanges];
                v38 = [v37 fetchedObjectIDs];
                v39 = [v34 fetchedObjectIDs];
                if (v38 == v39)
                {
                  v70 = 0;
                }

                else
                {
                  v70 = [v38 isEqual:v39] ^ 1;
                }
              }

              v42 = [v35 fetchResultAfterChanges];
              if (v42 == v32)
              {
                v46 = 0;
              }

              else
              {
                v43 = [v35 fetchResultAfterChanges];
                v44 = [v43 fetchedObjectIDs];
                v45 = [v32 fetchedObjectIDs];
                if (v44 == v45)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = [v44 isEqual:v45] ^ 1;
                }
              }

              if ((v70 | v46))
              {
                v47 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v34 toFetchResult:v32 changedObjects:MEMORY[0x1E695E0F0]];
              }

              else
              {
                v47 = v35;
              }

              v41 = v47;
              v12 = v67;
              p_isa = &v75->super.isa;
              if (([v47 hasAnyChanges] & 1) == 0)
              {

                v41 = 0;
              }

              v11 = v66;
            }

            else
            {
              v32 = p_isa[65];
              if (!v34)
              {
                goto LABEL_37;
              }

LABEL_34:
              if (!v11)
              {
                goto LABEL_39;
              }

LABEL_38:
              if ([v11 containsObject:v31])
              {
                goto LABEL_39;
              }

              v40 = objc_alloc(MEMORY[0x1E6978848]);
              v41 = [v40 initWithFetchResult:v34 currentFetchResult:v32 changedIdentifiers:MEMORY[0x1E695E0F0] unknownMergeEvent:1];
            }

            [v69 setObject:v41 forKeyedSubscript:v31];
          }

          [v76 setObject:v32 forKeyedSubscript:v31];
          if ((options & 0x20) != 0)
          {
            v48 = [p_isa _keyAssetsForAssetCollection:v31];
            v49 = [v72 objectForKeyedSubscript:v31];
            if (v48 != v49)
            {
              [v64 addIndex:{objc_msgSend(p_isa, "sectionForAssetCollection:", v31)}];
            }
          }

          if ([v12 containsObject:v31])
          {
            v50 = [v31 objectID];

            if (v50)
            {
              v51 = [v31 objectID];
              [v65 addObject:v51];
            }
          }
        }

        v73 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v73);
    }

    if ([v65 count])
    {
      v52 = [p_isa collectionListFetchResult];
      v53 = v60;
      v54 = [objc_alloc(MEMORY[0x1E6978848]) initWithFetchResult:v60 currentFetchResult:v52 changedIdentifiers:v65 unknownMergeEvent:0];

      v10 = v62;
    }

    else
    {
      v54 = 0;
      v10 = v62;
      v53 = v60;
    }

    v55 = [p_isa versionIdentifier];
    [p_isa _sectionCache];
    v57 = v56 = p_isa;
    v58 = [v57 assetCollectionToSection];

    v59 = -[PXPhotosDataSourceChange initWithIncrementalChanges:assetCollectionChangeDetails:sectionsWithKeyAssetChanges:previousCollectionsCount:assetCollectionToSectionCache:originatingPhotoLibraryChange:fromIdentifier:toIdentifier:]([PXPhotosDataSourceChange alloc], "initWithIncrementalChanges:assetCollectionChangeDetails:sectionsWithKeyAssetChanges:previousCollectionsCount:assetCollectionToSectionCache:originatingPhotoLibraryChange:fromIdentifier:toIdentifier:", v54, v69, v64, [v56 _previousCollectionsCount], v58, 0, v61, v55);
    [v56 _didChange:v59];

    v13 = v63;
  }

LABEL_72:
}

- (void)performChanges:(id)a3
{
  ++self->_nestedCoalesceChanges;
  (*(a3 + 2))(a3, a2);
  if (self->_nestedCoalesceChanges == 1 && [(NSMutableArray *)self->_coalescedChanges count])
  {
    [(PXPhotosDataSource *)self _restartBackgroundFetchWithAssetCollectionsToDiff:0];
  }

  v4 = self->_nestedCoalesceChanges - 1;
  self->_nestedCoalesceChanges = v4;
  if (!v4 && [(NSMutableArray *)self->_coalescedChanges count])
  {
    if ([(NSMutableArray *)self->_coalescedChanges count]== 1)
    {
      v5 = [(NSMutableArray *)self->_coalescedChanges firstObject];
    }

    else
    {
      v5 = objc_alloc_init(PXPhotosDataSourceChange);
    }

    v6 = v5;
    [(NSMutableArray *)self->_coalescedChanges removeAllObjects];
    [(PXPhotosDataSource *)self _distributeChange:v6];
  }
}

- (id)_assetOidsByAssetCollectionForAssetsAtIndexPathsInSet:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotosDataSource *)self versionIdentifier];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PXPhotosDataSource__assetOidsByAssetCollectionForAssetsAtIndexPathsInSet___block_invoke;
  v12[3] = &unk_1E77441F0;
  v14 = v6;
  v15 = a2;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [v5 enumerateItemIndexPathsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __76__PXPhotosDataSource__assetOidsByAssetCollectionForAssetsAtIndexPathsInSet___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 != *(a1 + 48))
  {
    PXAssertGetLog();
  }

  v4 = [*(a1 + 32) assetCollectionForSection:*(a2 + 8)];
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v7 = [v5 assetAtSimpleIndexPath:v10];
  v8 = [*(a1 + 40) objectForKeyedSubscript:v4];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v4];
  }

  v9 = [v7 objectID];
  [v8 addObject:v9];
}

- (id)_mutableResultRecordForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_resultRecordByAssetCollection objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  if (!v6)
  {
    v6 = [(PXPhotosDataSource *)self _createResultRecordForAssetCollection:v4];
  }

  [(NSMutableDictionary *)self->_resultRecordByAssetCollection setObject:v6 forKeyedSubscript:v4];

  return v6;
}

- (id)_resultRecordForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_resultRecordByAssetCollection objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [(PXPhotosDataSource *)self _createResultRecordForAssetCollection:v4];
    [(NSMutableDictionary *)self->_resultRecordByAssetCollection setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)_createResultRecordForAssetCollection:(id)a3
{
  v4 = objc_alloc_init(PXPhotosMutableResultRecord);
  [(PXPhotosMutableResultRecord *)v4 setWantsCuration:[(PXPhotosDataSource *)self wantsCurationByDefault]];
  [(PXPhotosMutableResultRecord *)v4 setPreloadAssetTypeCounts:(self->_options >> 1) & 1];
  [(PXPhotosMutableResultRecord *)v4 setEnsureKeyAssetAtBeginning:(self->_options >> 14) & 1];
  [(PXPhotosMutableResultRecord *)v4 setCurationLength:[(PXPhotosDataSource *)self curationLength]];
  v5 = [(PXPhotosDataSource *)self sortDescriptors];
  [(PXPhotosMutableResultRecord *)v4 setSortDescriptors:v5];

  return v4;
}

- (id)_inclusionPredicateForAssetCollection:(id)a3
{
  v3 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:a3];
  v4 = [v3 inclusionPredicate];

  return v4;
}

- (id)_finalFilterPredicateForAssetCollection:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = [(PXPhotosDataSource *)self _filterPredicateForAssetCollection:a3];
  v5 = [(PXPhotosDataSource *)self allowedUUIDs];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid in %@", v5];
    v7 = v6;
    if (v4)
    {
      v8 = MEMORY[0x1E696AB28];
      v19[0] = v4;
      v19[1] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      v10 = [v8 andPredicateWithSubpredicates:v9];

      v4 = v10;
    }

    else
    {
      v4 = v6;
    }
  }

  v11 = [(PXPhotosDataSource *)self allowedOIDs];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v11];
    v13 = v12;
    if (v4)
    {
      v14 = MEMORY[0x1E696AB28];
      v18[0] = v4;
      v18[1] = v12;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
      v16 = [v14 andPredicateWithSubpredicates:v15];

      v4 = v16;
    }

    else
    {
      v4 = v12;
    }
  }

  return v4;
}

- (id)_allowedOIDsForAssetCollection:(id)a3
{
  if ([(PXPhotosDataSource *)self _areFiltersDisabledForAssetCollection:a3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(PXPhotosDataSource *)self allowedOIDs];
  }

  return v4;
}

- (id)_allowedUUIDsForAssetCollection:(id)a3
{
  v4 = a3;
  if ([(PXPhotosDataSource *)self _areFiltersDisabledForAssetCollection:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PXPhotosDataSource *)self infoForAssetCollection:v4];
    v7 = [v6 allowedUUIDs];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(PXPhotosDataSource *)self allowedUUIDs];
    }

    v5 = v9;
  }

  return v5;
}

- (BOOL)hasAnyAllowedUUIDs
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_allowedUUIDs)
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)self->_infoForAssetCollection allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 UUIDFilterHidesSomeAssets] & 1) == 0)
        {
          v9 = [v8 allowedUUIDs];

          if (!v9)
          {
            continue;
          }
        }

        v2 = 1;
        goto LABEL_15;
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v2 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_15:

  return v2;
}

- (void)setAllowedUUIDs:(id)a3 manualOrderUUIDs:(id)a4 forAssetCollections:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:746 description:{@"%s must be called on the main thread", "-[PXPhotosDataSource setAllowedUUIDs:manualOrderUUIDs:forAssetCollections:]"}];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = [(PXPhotosDataSource *)self infoForAssetCollection:v17];
        v19 = [v9 objectForKeyedSubscript:v17];
        [v18 setAllowedUUIDs:v19];

        v20 = [v10 objectForKeyedSubscript:v17];
        [v18 setManualOrderUUIDs:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  [(PXPhotosDataSource *)self _restartBackgroundFetchWithAssetCollectionsToDiff:0];
}

- (id)_filterPredicateForAssetCollection:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  if ([(PXPhotosDataSource *)self _areFiltersDisabledForAssetCollection:a3])
  {
    v4 = 0;
    goto LABEL_12;
  }

  v5 = [(PXPhotosDataSource *)self basePredicate];
  v6 = [(PXPhotosDataSource *)self filterPredicate];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = objc_alloc(MEMORY[0x1E696AB28]);
    v12[0] = v5;
    v12[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v4 = [v8 initWithType:1 subpredicates:v9];
  }

  else
  {
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      if (!v6)
      {
        v4 = 0;
        goto LABEL_11;
      }

      v10 = v6;
    }

    v4 = v10;
  }

LABEL_11:

LABEL_12:

  return v4;
}

- (BOOL)_reverseSortOrderForAssetCollection:(id)a3
{
  v4 = a3;
  if ([(PXPhotosDataSource *)self fetchLimit])
  {
    v5 = [v4 keyAssetsAtEnd];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_assetCollectionFetchStatus:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
  if (![v5 count])
  {

    goto LABEL_7;
  }

  v6 = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
  v7 = [v6 containsObject:v4];

  if (!v7)
  {
LABEL_7:
    v10 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];
    if ([v10 wantsCuration] && (objc_msgSend(v4, "px_supportsFastCuration") & 1) == 0)
    {
      v11 = [v10 exposedFetchResult];
      if (v11)
      {
      }

      else if (![(PXPhotosDataSource *)self allowSlowFetchesOnClientQueue])
      {
        v9 = 0;
        goto LABEL_13;
      }
    }

    v9 = 3;
LABEL_13:

    goto LABEL_14;
  }

  options = self->_options;
  if ((options & 0x400) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = (options >> 22) & 2;
  }

LABEL_14:

  return v9;
}

- (BOOL)isSectionConsideredAccurate:(int64_t)a3
{
  v4 = [(PHFetchResult *)self->_collectionListFetchResult objectAtIndexedSubscript:a3];
  v5 = [(PXPhotosDataSource *)self _assetCollectionFetchStatus:v4];
  if (v5 == 2)
  {
    v6 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];
    v7 = [v6 exposedFetchResult];
    v8 = v7 != 0;
  }

  else
  {
    v8 = v5 == 3;
  }

  return v8;
}

- (void)_enumerateChangeObserversWithBlock:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__205867;
  v23 = __Block_byref_object_dispose__205868;
  v24 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  observersQueue = self->_observersQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXPhotosDataSource__enumerateChangeObserversWithBlock___block_invoke;
  block[3] = &unk_1E7746888;
  block[4] = self;
  block[5] = &v19;
  block[6] = v17;
  dispatch_sync(observersQueue, block);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v20[5];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v25 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v25 count:16];
    }

    while (v7);
  }

  v10 = self->_observersQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PXPhotosDataSource__enumerateChangeObserversWithBlock___block_invoke_2;
  v11[3] = &unk_1E7746888;
  v11[4] = self;
  v11[5] = &v19;
  v11[6] = v17;
  dispatch_sync(v10, v11);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
}

void __57__PXPhotosDataSource__enumerateChangeObserversWithBlock___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 24));
  *(*(a1[6] + 8) + 24) = *(a1[4] + 16);
  *(a1[4] + 16) = 1;
}

void *__57__PXPhotosDataSource__enumerateChangeObserversWithBlock___block_invoke_2(void *result)
{
  v1 = result[4];
  if (*(*(result[5] + 8) + 40) == *(v1 + 24))
  {
    *(v1 + 16) = *(*(result[6] + 8) + 24);
  }

  return result;
}

- (id)reversedCopy
{
  v3 = [[PXPhotosDataSource alloc] initWithPhotosDataSource:self options:[(PXPhotosDataSource *)self options]];
  [(PXPhotosDataSource *)v3 setReverseSortOrder:[(PXPhotosDataSource *)self reverseSortOrder]^ 1];

  return v3;
}

- (NSString)description
{
  v3 = [(PXPhotosDataSource *)self numberOfSections];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  if (v3 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(PXPhotosDataSource *)self assetCollectionForSection:v5];
      v7 = [(PXPhotosDataSource *)self _assetCollectionFetchStatus:v6];
      v8 = v7;
      if (v7 - 1 >= 3)
      {
        if (v7)
        {
          v12 = 0;
        }

        else
        {
          v12 = @"inacc.";
        }

        goto LABEL_16;
      }

      v9 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v6];
      v10 = [v9 exposedFetchResult];
      v11 = v10;
      if (v10)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      }

      else
      {
        v12 = @"unknown";
      }

      if (v8 == 1)
      {
        break;
      }

      if (v8 == 2)
      {
        v13 = @"stale:%@";
LABEL_14:
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:v13, v12];

        v12 = v14;
      }

LABEL_16:
      [v4 addObject:v12];

      if (v3 == ++v5)
      {
        goto LABEL_17;
      }
    }

    v13 = @"limited:%@";
    goto LABEL_14;
  }

LABEL_17:
  v15 = [v4 componentsJoinedByString:{@", "}];
  v16 = MEMORY[0x1E696AEC0];
  v20.receiver = self;
  v20.super_class = PXPhotosDataSource;
  v17 = [(PXPhotosDataSource *)&v20 description];
  v18 = [v16 stringWithFormat:@"<%@ sections:%ld sectionCounts:[%@]>", v17, v3, v15];

  return v18;
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary px_unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PXPhotosDataSource;
  [(PXPhotosDataSource *)&v3 dealloc];
}

- (void)_initResultRecordsWithOldOptions:(unint64_t)a3 newOptions:(unint64_t)a4
{
  if ((a3 & a4 & 0x20) != 0 && ((a3 >> 4) & 1) != ((a4 >> 4) & 1))
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Clearing key assets fetches for fetch type change", buf, 2u);
    }

    resultRecordByAssetCollection = self->_resultRecordByAssetCollection;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__PXPhotosDataSource__initResultRecordsWithOldOptions_newOptions___block_invoke;
    v7[3] = &unk_1E77441C8;
    v8 = 0;
    [(NSMutableDictionary *)resultRecordByAssetCollection enumerateKeysAndObjectsUsingBlock:v7];
    [(NSMutableDictionary *)self->_resultRecordByAssetCollection addEntriesFromDictionary:0];
  }
}

void __66__PXPhotosDataSource__initResultRecordsWithOldOptions_newOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 keyAssetsFetchResult];

  if (v6)
  {
    v7 = [v5 copy];
    [v7 setKeyAssetsFetchResult:0];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

- (id)_createDataSourceWithAssetsCollections:(id)a3 existingAssetCollectionFetchResults:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sortDescriptorWithKey:@"transientIdentifier" ascending:1];
  v18[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v8 sortUsingDescriptors:v10];

  v11 = [MEMORY[0x1E6978760] transientCollectionListWithCollections:v8 title:0];

  v12 = MEMORY[0x1E6978650];
  v13 = [(PXPhotosDataSource *)self collectionListFetchResult];
  v14 = [v13 fetchOptions];
  v15 = [v12 fetchCollectionsInCollectionList:v11 options:v14];

  v16 = [[PXPhotosDataSource alloc] initWithPhotosDataSource:self options:0];
  [(PXPhotosDataSource *)v16 setCollectionListFetchResult:v15];
  [(PXPhotosDataSource *)v16 _adoptExistingAssetCollectionFetchResults:v7];

  [(PXPhotosDataSource *)v16 setWantsCurationByDefault:0];

  return v16;
}

- (id)createDataSourceWithAssetsAtIndexPaths:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PXPhotosDataSource_createDataSourceWithAssetsAtIndexPaths___block_invoke;
  v13[3] = &unk_1E77441A0;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v8;
  [v5 enumerateItemIndexSetsUsingBlock:v13];

  v11 = [(PXPhotosDataSource *)self _createDataSourceWithAssetsCollections:v9 existingAssetCollectionFetchResults:0];

  return v11;
}

void __61__PXPhotosDataSource_createDataSourceWithAssetsAtIndexPaths___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  v6 = [*(a1 + 32) assetsInSection:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 fetchedObjectIDs];
    v9 = [v8 objectsAtIndexes:v14];

    v10 = [objc_alloc(MEMORY[0x1E6978840]) initWithExistingFetchResult:v7 filteredObjectIDs:v9];
    v11 = MEMORY[0x1E6978650];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08ld-%@", a3, *(a1 + 40)];
    v13 = [v11 transientAssetCollectionWithAssetFetchResult:v10 title:0 identifier:v12];

    [*(a1 + 48) addObject:v13];
  }
}

- (id)createDataSourceWithAssetsInSectionOfAsset:(id)a3 usingNewTransientAssetCollection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v4)
  {
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];

    v10 = [v6 assetCollection];
    v11 = [v10 px_isRecentlyViewedCollection];

    v12 = [(PXPhotosDataSource *)self _sectionCache];
    v13 = [v12 assetCollections];
    v14 = [v13 count];

    if (v14)
    {
      v15 = 0;
      do
      {
        if (v6)
        {
          [v6 indexPath];
          if (v15 != *(&v35 + 1))
          {
            goto LABEL_13;
          }

          [v6 indexPath];
          v16 = v34;
        }

        else
        {
          v35 = 0u;
          if (v15)
          {
            goto LABEL_13;
          }

          v16 = 0;
          v34 = 0;
        }

        v17 = [(PXPhotosDataSource *)self assetCollectionForSection:v16];
        if (!v17 || ([(PXPhotosDataSource *)self _assetsForAssetCollection:v17], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
        {

LABEL_13:
          v23 = MEMORY[0x1E6978650];
          v24 = __98__PXPhotosDataSource_createDataSourceWithAssetsInSectionOfAsset_usingNewTransientAssetCollection___block_invoke(v9, v15, v11);
          v17 = [v23 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0 identifier:v24 photoLibrary:self->_photoLibrary];

          v25 = [(PXPhotosDataSource *)self emptyAssetsFetchResult];
          [v7 setObject:v25 forKeyedSubscript:v17];

          [v32 addObject:v17];
          goto LABEL_14;
        }

        v19 = v18;
        v20 = MEMORY[0x1E6978650];
        v21 = __98__PXPhotosDataSource_createDataSourceWithAssetsInSectionOfAsset_usingNewTransientAssetCollection___block_invoke(v9, v15, v11);
        v22 = [v20 transientAssetCollectionWithAssetFetchResult:v19 title:0 identifier:v21];

        [v32 addObject:v22];
        [v7 setObject:v19 forKeyedSubscript:v22];

LABEL_14:
        ++v15;
        v26 = [(PXPhotosDataSource *)self _sectionCache];
        v27 = [v26 assetCollections];
        v28 = [v27 count];
      }

      while (v15 < v28);
    }
  }

  else
  {
    if (v6)
    {
      [v6 indexPath];
      v29 = v33;
    }

    else
    {
      v29 = 0;
    }

    v9 = [(PXPhotosDataSource *)self assetCollectionForSection:v29];
    if (v9)
    {
      [v32 addObject:v9];
    }
  }

  v30 = [(PXPhotosDataSource *)self _createDataSourceWithAssetsCollections:v32 existingAssetCollectionFetchResults:v7];

  return v30;
}

__CFString *__98__PXPhotosDataSource_createDataSourceWithAssetsInSectionOfAsset_usingNewTransientAssetCollection___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = @"PXRecentlyViewedVirtualCollection";
    v4 = @"PXRecentlyViewedVirtualCollection";
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08ld-%@", a2, a1];
  }

  return v3;
}

- (PXPhotosDataSource)initWithPhotosDataSource:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v42.receiver = self;
  v42.super_class = PXPhotosDataSource;
  v7 = [(PXPhotosDataSource *)&v42 init];
  if (v7)
  {
    v8 = [v6 photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = v8;

    v10 = [v6 collectionListFetchResult];
    collectionListFetchResult = v7->_collectionListFetchResult;
    v7->_collectionListFetchResult = v10;

    v12 = [v6 containerCollection];
    containerCollection = v7->_containerCollection;
    v7->_containerCollection = v12;

    v14 = [v6 basePredicate];
    basePredicate = v7->_basePredicate;
    v7->_basePredicate = v14;

    v16 = [v6 filterPredicate];
    filterPredicate = v7->_filterPredicate;
    v7->_filterPredicate = v16;

    v7->_canIncludeUnsavedSyndicatedAssets = [v6 canIncludeUnsavedSyndicatedAssets];
    v7->_includeSharedCollectionAssets = [v6 includeSharedCollectionAssets];
    v7->_includeAllBurstAssets = [v6 includeAllBurstAssets];
    v7->_includeOthersInSocialGroupAssets = [v6 includeOthersInSocialGroupAssets];
    v7->_ignoreSharedLibraryFilters = [v6 ignoreSharedLibraryFilters];
    v18 = [v6 sharedLibraryStatusProvider];
    sharedLibraryStatusProvider = v7->_sharedLibraryStatusProvider;
    v7->_sharedLibraryStatusProvider = v18;

    v20 = [v6 libraryFilterState];
    libraryFilterState = v7->_libraryFilterState;
    v7->_libraryFilterState = v20;

    v7->_libraryFilter = [v6 libraryFilter];
    v22 = [v6 allowedUUIDs];
    allowedUUIDs = v7->_allowedUUIDs;
    v7->_allowedUUIDs = v22;

    v24 = [v6 allowedOIDs];
    allowedOIDs = v7->_allowedOIDs;
    v7->_allowedOIDs = v24;

    v26 = [*(v6 + 10) mutableCopy];
    resultRecordByAssetCollection = v7->_resultRecordByAssetCollection;
    v7->_resultRecordByAssetCollection = v26;

    v28 = [MEMORY[0x1E695DF90] dictionary];
    preparedChangeDetailsByAssetCollection = v7->_preparedChangeDetailsByAssetCollection;
    v7->_preparedChangeDetailsByAssetCollection = v28;

    v30 = [*(v6 + 7) copy];
    hintIndexPathByAssetReferenceCache = v7->_hintIndexPathByAssetReferenceCache;
    v7->_hintIndexPathByAssetReferenceCache = v30;

    v32 = [v6 _inaccurateAssetCollections];
    v33 = [v32 mutableCopy];
    inaccurateAssetCollections = v7->__inaccurateAssetCollections;
    v7->__inaccurateAssetCollections = v33;

    v35 = [*(v6 + 15) mutableCopy];
    infoForAssetCollection = v7->_infoForAssetCollection;
    v7->_infoForAssetCollection = v35;

    v7->__previousCollectionsCount = [(PHFetchResult *)v7->_collectionListFetchResult count];
    v7->_fetchLimit = *(v6 + 57);
    v37 = [*(v6 + 58) copy];
    sortDescriptors = v7->_sortDescriptors;
    v7->_sortDescriptors = v37;

    v7->_reverseSortOrder = *(v6 + 334);
    v7->_versionIdentifier = *(v6 + 46);
    objc_storeStrong(&v7->_facesByAssetCache, *(v6 + 29));
    objc_storeStrong(&v7->_weightByAssetCache, *(v6 + 30));
    objc_storeStrong(&v7->_filterPersons, *(v6 + 49));
    v7->_hideHiddenAssets = *(v6 + 248);
    v7->_wantsCurationByDefault = *(v6 + 335);
    objc_storeStrong(&v7->_fetchPropertySets, *(v6 + 32));
    v7->_curationType = *(v6 + 33);
    v7->_curationKind = *(v6 + 34);
    v7->_curationLength = *(v6 + 35);
    v7->_allowSlowFetchesOnClientQueue = *(v6 + 338);
    objc_storeStrong(&v7->_clientQueue, *(v6 + 60));
    v39 = [*(v6 + 64) copy];
    assetContainerProvider = v7->_assetContainerProvider;
    v7->_assetContainerProvider = v39;

    objc_storeWeak(&v7->_parentDataSource, v6);
    v7->_options = a4;
    -[PXPhotosDataSource _initResultRecordsWithOldOptions:newOptions:](v7, "_initResultRecordsWithOldOptions:newOptions:", [v6 options], a4);
    [(PXPhotosDataSource *)v7 _commonInit];
  }

  return v7;
}

- (PXPhotosDataSource)initWithPhotosDataSourceConfiguration:(id)a3
{
  v5 = a3;
  v70.receiver = self;
  v70.super_class = PXPhotosDataSource;
  v6 = [(PXPhotosDataSource *)&v70 init];
  if (v6)
  {
    v7 = [v5 collectionListFetchResult];
    v8 = [v5 containerCollection];
    v63 = [v5 existingAssetCollectionFetchResults];
    v62 = [v5 existingKeyAssetsFetchResults];
    v61 = [v5 referenceAsset];
    obj = [v5 filterPredicate];
    v54 = [v5 includeOthersInSocialGroupAssets];
    v66 = [v5 sortDescriptors];
    v9 = [v5 canIncludeUnsavedSyndicatedAssets];
    v10 = [v5 includeSharedCollectionAssets];
    v67 = [v5 allowedUUIDs];
    v11 = [v5 allowedOIDs];
    v59 = [v5 options];
    v65 = [v5 filterPersons];
    v64 = [v5 filterSocialGroup];
    v58 = [v5 hideHiddenAssets];
    v12 = [v5 photoLibrary];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    }

    v15 = v14;

    v56 = [v5 curationType];
    v57 = [v5 reverseSortOrder];
    v55 = [v5 includeAllBurstAssets];
    if (v67 && v11)
    {
      v53 = [MEMORY[0x1E696AAA8] currentHandler];
      [v53 handleFailureInMethod:a2 object:v6 file:@"PXPhotosDataSource.m" lineNumber:302 description:{@"It is invalid to combine allowedUUIDs with allowedOIDs, pick one."}];
    }

    v16 = [v5 clientQueue];
    v17 = v16;
    if (v16)
    {
      v18 = v8;
      v19 = v16;
      clientQueue = v6->_clientQueue;
      v6->_clientQueue = v19;
    }

    else
    {
      v21 = MEMORY[0x1E69E96A0];
      v22 = MEMORY[0x1E69E96A0];
      clientQueue = v6->_clientQueue;
      v6->_clientQueue = v21;
      v18 = v8;
    }

    objc_storeStrong(&v6->_photoLibrary, v15);
    objc_storeStrong(&v6->_collectionListFetchResult, v7);
    objc_storeStrong(&v6->_containerCollection, v18);
    v23 = [v5 basePredicate];
    basePredicate = v6->_basePredicate;
    v6->_basePredicate = v23;

    objc_storeStrong(&v6->_filterPredicate, obj);
    v6->_includeOthersInSocialGroupAssets = v54;
    objc_storeStrong(&v6->_sortDescriptors, v66);
    v6->_canIncludeUnsavedSyndicatedAssets = v9;
    v6->_includeSharedCollectionAssets = v10;
    v6->_ignoreSharedLibraryFilters = [v5 ignoreSharedLibraryFilters];
    v25 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v15];
    sharedLibraryStatusProvider = v6->_sharedLibraryStatusProvider;
    v6->_sharedLibraryStatusProvider = v25;

    v27 = [v5 libraryFilterState];
    libraryFilterState = v6->_libraryFilterState;
    v6->_libraryFilterState = v27;

    v29 = v6->_libraryFilterState;
    if (v29)
    {
      v30 = [(PXLibraryFilterState *)v29 viewMode];
    }

    else
    {
      v30 = [v5 libraryFilter];
    }

    v6->_libraryFilter = v30;
    objc_storeStrong(&v6->_allowedUUIDs, v67);
    objc_storeStrong(&v6->_allowedOIDs, v11);
    objc_storeStrong(&v6->_referenceAsset, v61);
    objc_storeStrong(&v6->_filterPersons, v65);
    objc_storeStrong(&v6->_filterSocialGroup, v64);
    v6->_hideHiddenAssets = v58;
    v31 = [v5 fetchPropertySets];
    fetchPropertySets = v6->_fetchPropertySets;
    v6->_fetchPropertySets = v31;

    v6->_wantsCurationByDefault = [v5 wantsCurationByDefault];
    v6->_curationType = v56;
    v6->_curationKind = [v5 curationKind];
    v6->_curationLength = 0;
    v6->_reverseSortOrder = v57;
    v6->_includeAllBurstAssets = v55;
    v33 = [v5 assetContainerProvider];
    v34 = [v33 copy];
    assetContainerProvider = v6->_assetContainerProvider;
    v6->_assetContainerProvider = v34;

    v36 = [MEMORY[0x1E695DF90] dictionary];
    resultRecordByAssetCollection = v6->_resultRecordByAssetCollection;
    v6->_resultRecordByAssetCollection = v36;

    v38 = [MEMORY[0x1E695DF90] dictionary];
    preparedChangeDetailsByAssetCollection = v6->_preparedChangeDetailsByAssetCollection;
    v6->_preparedChangeDetailsByAssetCollection = v38;

    v40 = [MEMORY[0x1E695DF90] dictionary];
    hintIndexPathByAssetReferenceCache = v6->_hintIndexPathByAssetReferenceCache;
    v6->_hintIndexPathByAssetReferenceCache = v40;

    v42 = [MEMORY[0x1E695DF90] dictionary];
    facesByAssetCache = v6->_facesByAssetCache;
    v6->_facesByAssetCache = v42;

    v44 = [MEMORY[0x1E695DF90] dictionary];
    weightByAssetCache = v6->_weightByAssetCache;
    v6->_weightByAssetCache = v44;

    v46 = [MEMORY[0x1E695DFA8] set];
    inaccurateAssetCollections = v6->__inaccurateAssetCollections;
    v6->__inaccurateAssetCollections = v46;

    v48 = [MEMORY[0x1E695DFA8] set];
    pauseLibraryChangeDeliveryTokens = v6->_pauseLibraryChangeDeliveryTokens;
    v6->_pauseLibraryChangeDeliveryTokens = v48;

    v50 = [MEMORY[0x1E695DF90] dictionary];
    infoForAssetCollection = v6->_infoForAssetCollection;
    v6->_infoForAssetCollection = v50;

    v6->_options = v59;
    [(PXPhotosDataSource *)v6 _incrementVersionIdentifier];
    if (v63)
    {
      [(PXPhotosDataSource *)v6 _adoptExistingAssetCollectionFetchResults:v63];
    }

    if (v62)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __60__PXPhotosDataSource_initWithPhotosDataSourceConfiguration___block_invoke;
      v68[3] = &unk_1E7744170;
      v69 = v6;
      [v62 enumerateKeysAndObjectsUsingBlock:v68];
    }

    [(PXPhotosDataSource *)v6 _commonInit];
  }

  return v6;
}

void __60__PXPhotosDataSource_initWithPhotosDataSourceConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) sectionForAssetCollection:v7] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 32) _mutableResultRecordForAssetCollection:v7];
    [v6 setKeyAssetsFetchResult:v5];
  }
}

+ (void)waitForAllBackgroundFetchingToFinish
{
  kdebug_trace();
  v3 = [a1 backgroundFetchingGroup];
  v4 = dispatch_time(0, 120000000000);
  dispatch_group_wait(v3, v4);

  kdebug_trace();
}

@end