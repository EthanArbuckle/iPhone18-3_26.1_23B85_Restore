@interface PXPhotosDataSource
+ (OS_dispatch_group)backgroundFetchingGroup;
+ (OS_dispatch_queue)sharedPrefetchQueue;
+ (id)_curationSharedBackgroundQueue;
+ (void)waitForAllBackgroundFetchingToFinish;
- (BOOL)_addResultTuple:(id)tuple forAssetCollection:(id)collection preparedResultRecord:(id)record toMutableResultRecord:(id)resultRecord;
- (BOOL)_allSectionsConsideredAccurate;
- (BOOL)_areFiltersDisabledForAssetCollection:(id)collection;
- (BOOL)_forceAccurateSection:(int64_t)section andNumberOfSurroundingSectionsWithContent:(int64_t)content;
- (BOOL)_isFiltering;
- (BOOL)_isResultTupleApplicable:(id)applicable forAssetCollection:(id)collection;
- (BOOL)_reverseSortOrderForAssetCollection:(id)collection;
- (BOOL)containsMultipleAssets;
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)forceAccurateAssetCollectionsIfNeeded:(id)needed reloadChanges:(BOOL)changes;
- (BOOL)forceAccurateIndexPath:(id)path andAssetsBeforeAndAfter:(int64_t)after;
- (BOOL)forceAccurateSection:(int64_t)section andSectionsBeforeAndAfter:(int64_t)after;
- (BOOL)forceAccurateSectionsIfNeeded:(id)needed reloadChanges:(BOOL)changes;
- (BOOL)hasAnyAllowedUUIDs;
- (BOOL)hasCurationForAssetCollection:(id)collection;
- (BOOL)isAssetAtIndexPathPartOfCuratedSet:(PXSimpleIndexPath *)set;
- (BOOL)isCuratedAssetsEmptyForAssetCollection:(id)collection;
- (BOOL)isCuratedAssetsFutilelyForAssetCollection:(id)collection;
- (BOOL)isEmpty;
- (BOOL)isSectionConsideredAccurate:(int64_t)accurate;
- (BOOL)wantsCurationForAssetCollection:(id)collection;
- (BOOL)wantsCurationForFirstAssetCollection;
- (NSString)description;
- (OS_os_log)dataSourceLog;
- (PHAssetCollection)containerAssetCollection;
- (PHCollection)containerCollection;
- (PXAssetsDataSourceContainer)container;
- (PXPhotosDataSource)initWithPhotosDataSource:(id)source options:(unint64_t)options;
- (PXPhotosDataSource)initWithPhotosDataSourceConfiguration:(id)configuration;
- (double)weightForAsset:(id)asset;
- (id)_allowedOIDsForAssetCollection:(id)collection;
- (id)_allowedUUIDsForAssetCollection:(id)collection;
- (id)_assetContainerForAssetCollection:(id)collection;
- (id)_assetOidsByAssetCollectionForAssetsAtIndexPathsInSet:(id)set;
- (id)_assetsForAssetCollection:(id)collection;
- (id)_closestIndexPathToIndexPath:(id)path;
- (id)_createDataSourceWithAssetsCollections:(id)collections existingAssetCollectionFetchResults:(id)results;
- (id)_createResultRecordForAssetCollection:(id)collection;
- (id)_fetchAssetsStartingAtIndexPath:(id)path;
- (id)_fetchTupleForAssetCollection:(id)collection calledOnClientQueue:(BOOL)queue isLimitedInitialFetch:(BOOL)fetch;
- (id)_fetcherConfigurationForAssetCollection:(id)collection useCase:(int64_t)case isLimitedInitialFetch:(BOOL)fetch;
- (id)_filterPredicateForAssetCollection:(id)collection;
- (id)_finalFilterPredicateForAssetCollection:(id)collection;
- (id)_inaccurateAssetCollections;
- (id)_inclusionPredicateForAssetCollection:(id)collection;
- (id)_indexPathForAssetWithUUID:(id)d orBurstIdentifier:(id)identifier orSyndicationIdentifier:(id)syndicationIdentifier hintIndexPath:(id)path hintCollections:(id)collections;
- (id)_keyAssetsForAssetCollection:(id)collection;
- (id)_mutableResultRecordForAssetCollection:(id)collection;
- (id)_observerInterestingAssetReferences;
- (id)_resultRecordForAssetCollection:(id)collection;
- (id)_sectionCache;
- (id)approximateAssetsAtIndexPaths:(id)paths;
- (id)assetAtIndexPath:(id)path;
- (id)assetAtSimpleIndexPath:(PXSimpleIndexPath *)path;
- (id)assetCollectionForSection:(int64_t)section;
- (id)assetReferenceAtIndexPath:(id)path;
- (id)assetReferenceForAsset:(id)asset containedInAssetCollectionWithType:(int64_t)type;
- (id)assetsAtIndexPaths:(id)paths;
- (id)assetsInSection:(int64_t)section;
- (id)assetsStartingAtIndexPath:(id)path;
- (id)createDataSourceWithAssetsAtIndexPaths:(id)paths;
- (id)createDataSourceWithAssetsInSectionOfAsset:(id)asset usingNewTransientAssetCollection:(BOOL)collection;
- (id)curatedAssetsForAssetCollection:(id)collection;
- (id)curatedAssetsInSection:(int64_t)section;
- (id)facesAtSimpleIndexPath:(PXSimpleIndexPath *)path;
- (id)fetchResultWithAssetsAtIndexPaths:(id)paths;
- (id)fetchResultWithAssetsInSections:(id)sections;
- (id)fetchResultsByAssetCollection;
- (id)immutableCopy;
- (id)indexPathForAsset:(id)asset hintIndexPath:(id)path hintCollection:(id)collection;
- (id)indexPathForAsset:(id)asset hintIndexPath:(id)path hintCollections:(id)collections;
- (id)indexPathForAsset:(id)asset inCollection:(id)collection;
- (id)indexPathForAssetReference:(id)reference;
- (id)indexPathForAssetWithUUID:(id)d orBurstIdentifier:(id)identifier hintIndexPath:(id)path hintCollection:(id)collection;
- (id)indexPathForAssetWithUUID:(id)d orSyndicationIdentifier:(id)identifier hintIndexPath:(id)path hintCollection:(id)collection;
- (id)indexPathForFirstAsset;
- (id)indexPathForLastAsset;
- (id)infoForAssetCollection:(id)collection;
- (id)keyAssetsInSection:(int64_t)section;
- (id)pauseChangeDeliveryAndBackgroundLoadingWithTimeout:(double)timeout identifier:(id)identifier;
- (id)prepareForPhotoLibraryChange:(id)change;
- (id)reversedCopy;
- (id)sectionsForAssetCollections:(id)collections;
- (id)uncuratedAssetsForAssetCollection:(id)collection;
- (id)uncuratedAssetsInSection:(int64_t)section;
- (int64_t)estimatedAssetsCountWithEnrichmentState:(unsigned __int16)state;
- (int64_t)estimatedOtherCount;
- (int64_t)estimatedPhotosCount;
- (int64_t)estimatedVideosCount;
- (int64_t)indexForAsset:(id)asset inCollection:(id)collection hintIndex:(int64_t)index;
- (int64_t)keyAssetIndexInSection:(int64_t)section;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsWithEnrichmentState:(unsigned __int16)state;
- (unint64_t)_assetCollectionFetchStatus:(id)status;
- (unint64_t)_cachedSectionForAssetCollection:(id)collection;
- (void)_adoptExistingAssetCollectionFetchResults:(id)results;
- (void)_bringFetchResultsUpToDateWithFetcherCacheForAssetCollection:(id)collection;
- (void)_cancelBackgroundFetchIfNeeded;
- (void)_childDataSourceDidUpdateFetchesForAssetCollection:(id)collection;
- (void)_commonInit;
- (void)_didChange:(id)change;
- (void)_didFinishBackgroundFetchingForId:(int64_t)id;
- (void)_distributeChange:(id)change;
- (void)_endFilterPredicateChangedForCollection:(id)collection;
- (void)_endLibraryFilterChangedSignpostForCollection:(id)collection;
- (void)_enumerateChangeObserversWithBlock:(id)block;
- (void)_fetchRemainingCollectionsBackgroundLoopWithId:(int64_t)id;
- (void)_getFetchLimit:(unint64_t *)limit fetchWithReverseSortOrder:(BOOL *)order forAssetCollection:(id)collection isLimitedInitialFetch:(BOOL)fetch;
- (void)_initResultRecordsWithOldOptions:(unint64_t)options newOptions:(unint64_t)newOptions;
- (void)_internalSetLibraryFilter:(int64_t)filter;
- (void)_interruptBackgroundFetch;
- (void)_observersQueue_copyChangeObserversForWriteIfNeeded;
- (void)_performManualChangesForAssetCollections:(id)collections collectionsToDiff:(id)diff collectionsToChange:(id)change changeBlock:(id)block;
- (void)_performManualReloadWithChangeBlock:(id)block;
- (void)_performProcessAndPublishSelectorInDefaultRunLoopMode;
- (void)_prefetchIndexesByFetchResult:(id)result onlyThumbnails:(BOOL)thumbnails;
- (void)_prepareDiffsForPendingResultsWithCompletion:(id)completion;
- (void)_processAndPublishPendingCollectionFetchResults;
- (void)_processAndPublishPendingCollectionFetchResultsWhenAppropriate;
- (void)_publishDidReceivePhotoLibraryChange:(id)change;
- (void)_publishReloadChange;
- (void)_restartBackgroundFetchWithAssetCollectionsToDiff:(id)diff;
- (void)_startFilterPredicateChangedSignpostForCollection:(id)collection;
- (void)_startLibraryFilterChangedSignpostForCollection:(id)collection;
- (void)_updateInaccurateAssetCollectionsIfNeeded;
- (void)_willChange;
- (void)clearResultsForAssetCollection:(id)collection;
- (void)clearResultsForAssetCollections:(id)collections;
- (void)dealloc;
- (void)enumerateStartingAtIndexPath:(id)path reverseDirection:(BOOL)direction usingBlock:(id)block;
- (void)forceExcludeAssetsAtIndexPaths:(id)paths;
- (void)forceExcludeAssetsAtIndexes:(id)indexes;
- (void)forceIncludeAssetsAtIndexPaths:(id)paths;
- (void)forceIncludeAssetsAtIndexes:(id)indexes;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)pauseChangeDeliveryFor:(double)for identifier:(id)identifier;
- (void)performChanges:(id)changes;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)prefetchApproximateAssetsAtIndexPaths:(id)paths reverseOrder:(BOOL)order;
- (void)prefetchAssetsAtIndexPaths:(id)paths onlyThumbnailAssets:(BOOL)assets;
- (void)prefetchAssetsInSections:(id)sections;
- (void)refetchResultsForAssetCollection:(id)collection;
- (void)registerChangeObserver:(id)observer;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading;
- (void)setAllowedOIDs:(id)ds;
- (void)setAllowedUUIDs:(id)ds manualOrderUUIDs:(id)iDs forAssetCollections:(id)collections;
- (void)setAllowedUUIDs:(id)ds provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setBackgroundFetchOriginSection:(int64_t)section;
- (void)setCanIncludeUnsavedSyndicatedAssets:(BOOL)assets;
- (void)setCollectionListFetchResult:(id)result;
- (void)setCurationLength:(int64_t)length;
- (void)setDisableFilters:(BOOL)filters forAssetCollection:(id)collection;
- (void)setFetchLimit:(unint64_t)limit;
- (void)setFilterPredicate:(id)predicate provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setIncludeAllBurstAssets:(BOOL)assets;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setIncludeSharedCollectionAssets:(BOOL)assets;
- (void)setIsBackgroundFetching:(BOOL)fetching;
- (void)setKeyAsset:(id)asset forAssetCollection:(id)collection;
- (void)setLibraryFilter:(int64_t)filter;
- (void)setReverseSortOrder:(BOOL)order;
- (void)setSortDescriptors:(id)descriptors;
- (void)setWantsCuration:(BOOL)curation forAssetCollection:(id)collection;
- (void)setWantsCurationForAllCollections:(BOOL)collections collectionsToDiff:(id)diff;
- (void)startBackgroundFetchIfNeeded;
- (void)stopExcludingAssets:(id)assets;
- (void)stopForceIncludingAllAssets;
- (void)unregisterChangeObserver:(id)observer;
@end

@implementation PXPhotosDataSource

- (void)_commonInit
{
  _areSecondaryFetchesEnabled = [(PXPhotosDataSource *)self _areSecondaryFetchesEnabled];
  if (_areSecondaryFetchesEnabled)
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
  targetQueue = [(PXLIFOQueue *)v4 targetQueue];
  backgroundQueue = self->_backgroundQueue;
  self->_backgroundQueue = targetQueue;

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
  fetchType = [MEMORY[0x1E6978630] fetchType];
  v21 = [v18 initWithOids:MEMORY[0x1E695E0F0] photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  emptyAssetsFetchResult = self->_emptyAssetsFetchResult;
  self->_emptyAssetsFetchResult = v21;

  options = self->_options;
  if (options & 4) == 0 && ((_areSecondaryFetchesEnabled | options))
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

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    queuedAssetCollectionsToFetch = self->_queuedAssetCollectionsToFetch;
    self->_queuedAssetCollectionsToFetch = orderedSet;

    self->_needToStartBackgroundFetch = 1;
    self->_isBackgroundFetching = 1;
    self->_inaccurateAssetCollectionsNeedsUpdate = 1;
    v33 = objc_alloc_init(PXBackgroundFetchToken);
    sharedScheduler = [off_1E7721858 sharedScheduler];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __33__PXPhotosDataSource__commonInit__block_invoke;
    v38[3] = &unk_1E774C648;
    v39 = v33;
    v35 = v33;
    [sharedScheduler scheduleDeferredTaskWithQoS:1 block:v38];

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
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observersQueue_observers = self->_observersQueue_observers;
    self->_observersQueue_observers = weakObjectsHashTable;
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

        fetchResult = [v11 fetchResult];

        if (!fetchResult)
        {
          [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch addObject:v10];
          inaccurateAssetCollections = self->__inaccurateAssetCollections;
LABEL_27:
          [inaccurateAssetCollections addObject:v10];
          goto LABEL_28;
        }

        if ((options & 0x10) != 0)
        {
          curatedFetchResult = [v11 curatedFetchResult];
          v2 = curatedFetchResult;
          if (!curatedFetchResult)
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

        keyAssetsFetchResult = [v11 keyAssetsFetchResult];

        if ((options & 0x10) != 0)
        {
        }

        if (!keyAssetsFetchResult)
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
    firstAssetCollection = containerCollection;
  }

  else if ([(PXPhotosDataSource *)self numberOfSections]== 1)
  {
    firstAssetCollection = [(PXPhotosDataSource *)self firstAssetCollection];
  }

  else
  {
    firstAssetCollection = 0;
  }

  return firstAssetCollection;
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
    numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
    v6 = 1;
    if (numberOfSections)
    {
      v7 = numberOfSections;
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
        backgroundFetchOriginSection = [(PXPhotosDataSource *)self backgroundFetchOriginSection];
        if (backgroundFetchOriginSection < 0 || backgroundFetchOriginSection >= v7)
        {
          v8 = v17;
        }

        else
        {
          v10 = [(PXPhotosDataSource *)self numberOfItemsInSection:backgroundFetchOriginSection];
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
  _inaccurateAssetCollections = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
  v3 = [_inaccurateAssetCollections count] == 0;

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
    _nextBackgroundFetchId = [(PXPhotosDataSource *)self _nextBackgroundFetchId];
    objc_initWeak(&location, self);
    clientQueue = [(PXPhotosDataSource *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PXPhotosDataSource_startBackgroundFetchIfNeeded__block_invoke;
    block[3] = &unk_1E7749808;
    objc_copyWeak(v8, &location);
    v8[1] = _nextBackgroundFetchId;
    dispatch_async(clientQueue, block);

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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryStatusProviderObservationContext_205840 == context)
  {
    if ((changeCopy & 3) == 0)
    {
      goto LABEL_11;
    }

    v15 = observableCopy;
    sharedLibraryStatusProvider = [(PXPhotosDataSource *)self sharedLibraryStatusProvider];
    hasPreview = [sharedLibraryStatusProvider hasPreview];

    if (hasPreview)
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

  if (PXLibraryFilterStateObservationContext_205841 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:4178 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v15 = observableCopy;
    libraryFilterState = [(PXPhotosDataSource *)self libraryFilterState];
    -[PXPhotosDataSource _internalSetLibraryFilter:](self, "_internalSetLibraryFilter:", [libraryFilterState viewMode]);

LABEL_10:
    observableCopy = v15;
  }

LABEL_11:
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v94 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
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
  v10 = [queueCopy changeDetailsForFetchResult:self->_collectionListFetchResult];
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_resultRecordByAssetCollection, "count")}];
  resultRecordByAssetCollection = self->_resultRecordByAssetCollection;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke;
  v85[3] = &unk_1E7744698;
  v85[4] = self;
  v86 = queueCopy;
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

  container = [(PXPhotosDataSource *)self container];
  objectBeforeChanges = [(PHObjectChangeDetails *)v69 objectBeforeChanges];
  v20 = objectBeforeChanges == container;

  if (v20)
  {

LABEL_13:
    objectAfterChanges = [(PHObjectChangeDetails *)self->_preparedContainerChangeDetails objectAfterChanges];
    v23 = objectAfterChanges;
    if (self->_assetContainerProvider)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__PXPhotosDataSource_photoLibraryDidChangeOnMainQueue___block_invoke_2;
      aBlock[3] = &unk_1E77446C0;
      v84 = objectAfterChanges;
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

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v62 = objc_opt_class();
      v61 = NSStringFromClass(v62);
      px_descriptionForAssertionMessage = [(PHCollection *)v27 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:4049 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"containerAfterChange", v61, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:4049 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"containerAfterChange", v61}];
    }

    goto LABEL_20;
  }

  v21 = [v14 changeDetailsForObject:container];

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

  versionIdentifier = [(PXPhotosDataSource *)self versionIdentifier];
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
      removedObjects = [v10 removedObjects];
      [(NSMutableDictionary *)v30 removeObjectsForKeys:removedObjects];

      infoForAssetCollection = self->_infoForAssetCollection;
      removedObjects2 = [v10 removedObjects];
      [(NSMutableDictionary *)infoForAssetCollection removeObjectsForKeys:removedObjects2];
    }

    else
    {
      if (!self->_collectionListFetchResult)
      {
LABEL_40:
        fetchResultAfterChanges = [v10 fetchResultAfterChanges];
        collectionListFetchResult = self->_collectionListFetchResult;
        self->_collectionListFetchResult = fetchResultAfterChanges;

        os_unfair_lock_lock(&self->_sectionCacheLock);
        objc_storeStrong(&self->__sectionCache, self->__preparedSectionCache);
        os_unfair_lock_unlock(&self->_sectionCacheLock);
        goto LABEL_41;
      }

      removedObjects2 = [v10 fetchResultAfterChanges];
      v34 = MEMORY[0x1E695DFD8];
      fetchedObjects = [removedObjects2 fetchedObjects];
      v36 = [v34 setWithArray:fetchedObjects];

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
  indexSet = [MEMORY[0x1E696AD50] indexSet];
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
  v48 = indexSet;
  v72 = v48;
  [v17 enumerateKeysAndObjectsUsingBlock:v70];
  if (v67)
  {
    v46[2](v46);
    if (!v10)
    {
      v49 = objc_alloc(MEMORY[0x1E6978848]);
      collectionListFetchResult = [(PXPhotosDataSource *)self collectionListFetchResult];
      collectionListFetchResult2 = [(PXPhotosDataSource *)self collectionListFetchResult];
      v10 = [v49 initWithFetchResult:collectionListFetchResult currentFetchResult:collectionListFetchResult2 changedIdentifiers:MEMORY[0x1E695E0F0] unknownMergeEvent:0];
    }
  }

  if (*(v80 + 24) == 1)
  {
    versionIdentifier2 = [(PXPhotosDataSource *)self versionIdentifier];
    _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
    assetCollectionToSection = [_sectionCache assetCollectionToSection];

    v55 = [[PXPhotosDataSourceChange alloc] initWithIncrementalChanges:v10 assetCollectionChangeDetails:v47 sectionsWithKeyAssetChanges:v48 previousCollectionsCount:[(PXPhotosDataSource *)self _previousCollectionsCount] assetCollectionToSectionCache:assetCollectionToSection originatingPhotoLibraryChange:v14 fromIdentifier:versionIdentifier toIdentifier:versionIdentifier2];
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

- (void)_bringFetchResultsUpToDateWithFetcherCacheForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:collectionCopy];
  _inaccurateAssetCollections = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
  v7 = [_inaccurateAssetCollections containsObject:collectionCopy];

  if (v7)
  {
    v8 = (BYTE1(self->_options) >> 2) & 1;
  }

  else
  {
    v8 = 0;
  }

  fetcher = [(PXPhotosDataSource *)self fetcher];
  v10 = [(PXPhotosDataSource *)self _assetContainerForAssetCollection:collectionCopy];
  if (v7 && !v8)
  {
    goto LABEL_38;
  }

  fetchResult = [v5 fetchResult];
  if (!fetchResult)
  {
    v29 = 0;
    v28 = 0;
    [(PXPhotosDataSource *)self _getFetchLimit:&v29 fetchWithReverseSortOrder:&v28 forAssetCollection:collectionCopy isLimitedInitialFetch:v8];
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
      v15 = [(PXPhotosDataSource *)self _fetcherConfigurationForAssetCollection:collectionCopy useCase:0 isLimitedInitialFetch:v8];
      fetchResult = [fetcher existingAssetsFetchResultForContainer:v10 configuration:v15];

      if (!fetchResult)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_12:
      fetchResult = self->_emptyAssetsFetchResult;
      if (!fetchResult)
      {
        goto LABEL_19;
      }
    }

    v16 = [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:collectionCopy];
    if (v28 == 1)
    {
      v17 = [(PXPhotosDataSource *)self reverseSortOrder]^ 1;
    }

    else
    {
      v17 = 0;
    }

    [v16 setFetchResult:fetchResult reverseSortOrder:v17];
  }

LABEL_19:
  v18 = self->_options;
  if ((v18 & 0x10) != 0 && [collectionCopy px_supportsFastCuration])
  {
    curatedFetchResult = [v5 curatedFetchResult];
    if (!curatedFetchResult)
    {
      v20 = [(PXPhotosDataSource *)self _fetcherConfigurationForAssetCollection:collectionCopy useCase:1 isLimitedInitialFetch:v8];
      curatedFetchResult = [fetcher existingAssetsFetchResultForContainer:v10 configuration:v20];
      if (curatedFetchResult)
      {
        [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:collectionCopy];
        v21 = v27 = v20;
        [v21 setCuratedFetchResult:curatedFetchResult];

        v20 = v27;
      }
    }
  }

  if ((self->_options & 0x20) != 0)
  {
    px_supportsFastCuration = [collectionCopy px_supportsFastCuration];
    if ((v18 & 0x10) == 0 || px_supportsFastCuration)
    {
      keyAssetsFetchResult = [v5 keyAssetsFetchResult];
      if (!keyAssetsFetchResult)
      {
        if ((v18 & 0x10) != 0)
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v25 = [(PXPhotosDataSource *)self _fetcherConfigurationForAssetCollection:collectionCopy useCase:v24 isLimitedInitialFetch:v8];
        keyAssetsFetchResult = [fetcher existingAssetsFetchResultForContainer:v10 configuration:v25];
        if (keyAssetsFetchResult)
        {
          v26 = [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:collectionCopy];
          [v26 setKeyAssetsFetchResult:keyAssetsFetchResult];
        }
      }
    }
  }

LABEL_38:
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v97 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = changeCopy;
  pendingResultsIsolationQueue = self->_pendingResultsIsolationQueue;
  selfCopy = self;
  if (pendingResultsIsolationQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke;
    block[3] = &unk_1E774C620;
    block[4] = self;
    v95 = changeCopy;
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
  clientQueue = [(PXPhotosDataSource *)self clientQueue];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_4;
  v75[3] = &unk_1E7744670;
  v75[4] = self;
  v75[5] = &v82;
  v75[6] = &v88;
  v75[7] = &v76;
  dispatch_sync(clientQueue, v75);

  v8 = [v5 changeDetailsForFetchResult:v89[5]];
  v9 = v8;
  if (v8)
  {
    fetchResultAfterChanges = [v8 fetchResultAfterChanges];
    v11 = [[PXPhotosDataSourceSectionCache alloc] initWithCollectionListFetchResult:fetchResultAfterChanges];
    preparedSectionCache = self->__preparedSectionCache;
    self->__preparedSectionCache = v11;

    v13 = v89[5];
    v89[5] = fetchResultAfterChanges;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = v83[5];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_5;
  v71[3] = &unk_1E7744698;
  v50 = v5;
  v72 = v50;
  selfCopy2 = self;
  v16 = dictionary;
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
        assetCollection = [v22 assetCollection];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          asset = [v22 asset];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            continue;
          }

          assetCollection = [v22 assetCollection];
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

          if (v26 >= [v89[5] count] || (objc_msgSend(v89[5], "objectAtIndexedSubscript:", v26), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqual:", assetCollection), v27, (v28 & 1) == 0))
          {
            v26 = [v89[5] indexOfObject:assetCollection];
          }

          if (v26 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v29 = [v54 objectForKeyedSubscript:assetCollection];
            resultRecordAfterChanges = [v29 resultRecordAfterChanges];
            exposedFetchResult = [resultRecordAfterChanges exposedFetchResult];

            if (exposedFetchResult)
            {
              asset2 = [v22 asset];
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

              if (v33 < [exposedFetchResult count] && (v34 = objc_msgSend(exposedFetchResult, "indexOfObject:inRange:", asset2, v33, 1), v34 != 0x7FFFFFFFFFFFFFFFLL) || (v34 = objc_msgSend(exposedFetchResult, "indexOfObject:", asset2), v34 != 0x7FFFFFFFFFFFFFFFLL))
              {
                v35 = [exposedFetchResult objectAtIndex:v34];
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
  preparedIndexPathByAssetReferenceCache = selfCopy->_preparedIndexPathByAssetReferenceCache;
  selfCopy->_preparedIndexPathByAssetReferenceCache = v37;

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__205867;
  v61 = __Block_byref_object_dispose__205868;
  v62 = 0;
  clientQueue2 = [(PXPhotosDataSource *)selfCopy clientQueue];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __51__PXPhotosDataSource_prepareForPhotoLibraryChange___block_invoke_6;
  v56[3] = &unk_1E7749A28;
  v56[4] = selfCopy;
  v56[5] = &v57;
  dispatch_sync(clientQueue2, v56);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = 0;
    goto LABEL_37;
  }

  v40 = v58[5];
  if (!v40)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXPhotosDataSource.m" lineNumber:3931 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"container", v46}];
LABEL_40:

    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v47 = objc_opt_class();
    v46 = NSStringFromClass(v47);
    px_descriptionForAssertionMessage = [v40 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXPhotosDataSource.m" lineNumber:3931 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"container", v46, px_descriptionForAssertionMessage}];

    goto LABEL_40;
  }

LABEL_35:
  v41 = [v50 changeDetailsForObject:v40];

LABEL_37:
  preparedContainerChangeDetails = selfCopy->_preparedContainerChangeDetails;
  selfCopy->_preparedContainerChangeDetails = v41;

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

- (void)_restartBackgroundFetchWithAssetCollectionsToDiff:(id)diff
{
  diffCopy = diff;
  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  assetCollections = [_sectionCache assetCollections];

  supportsDynamicBackgroundFetching = [(PXPhotosDataSource *)self supportsDynamicBackgroundFetching];
  if (self->_needToStartBackgroundFetch)
  {
    [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch addObjectsFromArray:assetCollections];
  }

  else if (supportsDynamicBackgroundFetching)
  {
    self->_needToStartBackgroundFetch = 1;
    self->_isBackgroundFetching = 1;
    [(PXPhotosDataSource *)self startBackgroundFetchIfNeeded];
    backgroundQueue = self->_backgroundQueue;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __72__PXPhotosDataSource__restartBackgroundFetchWithAssetCollectionsToDiff___block_invoke;
    v21 = &unk_1E774C620;
    selfCopy = self;
    v9 = assetCollections;
    v23 = v9;
    dispatch_async(backgroundQueue, &v18);
    [(NSMutableSet *)self->__inaccurateAssetCollections addObjectsFromArray:v9, v18, v19, v20, v21, selfCopy];
    if ([diffCopy count])
    {
      allObjects = [diffCopy allObjects];
      [(PXPhotosDataSource *)self forceAccurateAssetCollectionsIfNeeded:allObjects reloadChanges:0];
    }

    allObjects2 = [diffCopy allObjects];
    v12 = [(PXPhotosDataSource *)self sectionsForAssetCollections:allObjects2];

    px_coveringRange = [v12 px_coveringRange];
    if (!v14 || px_coveringRange == 0x7FFFFFFFFFFFFFFFLL || (backgroundFetchOriginSection = px_coveringRange + (v14 >> 1), backgroundFetchOriginSection == 0x7FFFFFFFFFFFFFFFLL))
    {
      backgroundFetchOriginSection = [(PXPhotosDataSource *)self backgroundFetchOriginSection];
    }

    if (backgroundFetchOriginSection == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = backgroundFetchOriginSection;
    }

    [(PXPhotosDataSource *)self _forceAccurateSection:v16 andNumberOfSurroundingSectionsWithContent:10];
  }

  else
  {
    [(PXPhotosDataSource *)self _cancelBackgroundFetchIfNeeded];
    _inaccurateAssetCollections = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
    [_inaccurateAssetCollections removeAllObjects];

    [(NSMutableDictionary *)self->_resultRecordByAssetCollection removeAllObjects];
  }
}

- (void)_didFinishBackgroundFetchingForId:(int64_t)id
{
  v3 = atomic_load(&self->_backgroundFetchId);
  if (v3 == id)
  {
    self->_didFinishBackgroundFetch = 1;
  }
}

- (void)_childDataSourceDidUpdateFetchesForAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PXPhotosDataSource *)self sectionForAssetCollection:?]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PXPhotosDataSource *)self _bringFetchResultsUpToDateWithFetcherCacheForAssetCollection:collectionCopy];
    WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);
    [WeakRetained _childDataSourceDidUpdateFetchesForAssetCollection:collectionCopy];
  }
}

- (BOOL)_addResultTuple:(id)tuple forAssetCollection:(id)collection preparedResultRecord:(id)record toMutableResultRecord:(id)resultRecord
{
  tupleCopy = tuple;
  collectionCopy = collection;
  recordCopy = record;
  resultRecordCopy = resultRecord;
  v14 = [(PXPhotosDataSource *)self _isResultTupleApplicable:tupleCopy forAssetCollection:collectionCopy];
  if (v14)
  {
    fetchResult = [resultRecordCopy fetchResult];
    if (!fetchResult || (v16 = self->_options & 0x800400, fetchResult, v16))
    {
      if ([tupleCopy fetchedWithReverseSortOrder])
      {
        v17 = [(PXPhotosDataSource *)self reverseSortOrder]^ 1;
      }

      else
      {
        v17 = 0;
      }

      fetchResult2 = [tupleCopy fetchResult];
      [resultRecordCopy setFetchResult:fetchResult2 reverseSortOrder:v17];
    }

    keyAssetsFetchResult = [resultRecordCopy keyAssetsFetchResult];

    if (!keyAssetsFetchResult)
    {
      keyAssetsFetchResult2 = [tupleCopy keyAssetsFetchResult];
      [resultRecordCopy setKeyAssetsFetchResult:keyAssetsFetchResult2];
    }

    curatedFetchResult = [resultRecordCopy curatedFetchResult];

    if (!curatedFetchResult)
    {
      curatedFetchResult2 = [tupleCopy curatedFetchResult];
      [resultRecordCopy setCuratedFetchResult:curatedFetchResult2];

      curatedRefetchCondition = [tupleCopy curatedRefetchCondition];
      [resultRecordCopy setCuratedRefetchCondition:curatedRefetchCondition];
    }

    if (recordCopy)
    {
      [resultRecordCopy adoptPreparedFilteredFetchResultFromRecord:recordCopy];
    }

    WeakRetained = objc_loadWeakRetained(&self->_parentDataSource);
    [WeakRetained _childDataSourceDidUpdateFetchesForAssetCollection:collectionCopy];
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
    allKeys = [v11[5] allKeys];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__PXPhotosDataSource__processAndPublishPendingCollectionFetchResults__block_invoke_2;
    v6[3] = &unk_1E7746888;
    v6[4] = self;
    v6[5] = &v10;
    v6[6] = v8;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:allKeys changeBlock:v6];

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

- (void)_prepareDiffsForPendingResultsWithCompletion:(id)completion
{
  completionCopy = completion;
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
  selfCopy = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v20];
  clientQueue = [(PXPhotosDataSource *)self clientQueue];
  backgroundQueue = self->_backgroundQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PXPhotosDataSource__prepareDiffsForPendingResultsWithCompletion___block_invoke_3;
  v14[3] = &unk_1E7744620;
  v18 = completionCopy;
  v19 = &v24;
  v15 = v8;
  v16 = clientQueue;
  selfCopy2 = self;
  v11 = completionCopy;
  v12 = clientQueue;
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

- (void)_fetchRemainingCollectionsBackgroundLoopWithId:(int64_t)id
{
  v3 = atomic_load(&self->_backgroundFetchId);
  if (v3 == id)
  {
    objc_initWeak(location, self);
    if (self->_backgroundFetchOriginSectionChanged)
    {
      self->_backgroundFetchOriginSectionChanged = 0;
      v6 = self->_collectionListFetchResult;
      if (v6)
      {
        backgroundFetchOriginSection = [(PXPhotosDataSource *)self backgroundFetchOriginSection];
        v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[PHFetchResult count](v6, "count")}];
        v9 = [(PHFetchResult *)v6 count];
        if (v9 >= 1)
        {
          v10 = 0;
          v11 = -backgroundFetchOriginSection;
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

        indexSet = [MEMORY[0x1E696AD50] indexSet];
        queuedAssetCollectionsToFetch = self->_queuedAssetCollectionsToFetch;
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke;
        v66[3] = &unk_1E7744558;
        v17 = v8;
        v67 = v17;
        v18 = indexSet;
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

    date = [MEMORY[0x1E695DF00] date];
    if (!self->_interruptBackgroundFetch)
    {
      v22 = 0;
      do
      {
        v23 = atomic_load(&self->_backgroundFetchId);
        if (v23 != id)
        {
          break;
        }

        if (v22)
        {
          date2 = [MEMORY[0x1E695DF00] date];
          [date2 timeIntervalSinceDate:date];
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
        fetchResult = [v28 fetchResult];
        [fetchResult count];

        if ((self->_options & 0x400) != 0)
        {
          fetchResult2 = [v28 fetchResult];
          v31 = [fetchResult2 count];

          if (v31)
          {
            if ([v27 keyAssetsAtEnd])
            {
              fetchResult3 = [v28 fetchResult];
              v33 = [fetchResult3 count] - 1;
            }

            else
            {
              v33 = 0;
            }

            v34 = [MEMORY[0x1E696AC90] indexSetWithIndex:v33];
            fetchResult4 = [v28 fetchResult];
            [fetchResult4 prefetchObjectsAtIndexes:v34];

            fetchResult5 = [v28 fetchResult];
            [fetchResult5 prefetchThumbnailAssetsAtIndexes:v34];
          }
        }

        if ((self->_options & 0x8000) != 0)
        {
          v37 = [(PXPhotosDataSource *)self _createResultRecordForAssetCollection:v27];
          fetchResult6 = [v28 fetchResult];
          [v37 setFetchResult:fetchResult6 reverseSortOrder:{objc_msgSend(v28, "fetchedWithReverseSortOrder")}];

          keyAssetsFetchResult = [v28 keyAssetsFetchResult];
          [v37 setKeyAssetsFetchResult:keyAssetsFetchResult];

          curatedFetchResult = [v28 curatedFetchResult];
          [v37 setCuratedFetchResult:curatedFetchResult];

          curatedRefetchCondition = [v28 curatedRefetchCondition];
          [v37 setCuratedRefetchCondition:curatedRefetchCondition];

          exposedFetchResult = [v37 exposedFetchResult];
          [exposedFetchResult px_safelyPrefetchObjectAtIndex:0];

          fetchResult7 = [v37 fetchResult];
          [fetchResult7 px_safelyPrefetchObjectAtIndex:0];

          keyAssetsFetchResult2 = [v37 keyAssetsFetchResult];
          [keyAssetsFetchResult2 px_safelyPrefetchObjectAtIndex:0];

          curatedFetchResult2 = [v37 curatedFetchResult];
          [curatedFetchResult2 px_safelyPrefetchObjectAtIndex:0];
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
        slowBackgroundFetch = [v50 slowBackgroundFetch];

        if (slowBackgroundFetch)
        {
          sleep(3u);
        }

        --v22;
      }

      while (!self->_interruptBackgroundFetch);
    }

    self->_interruptBackgroundFetch = 0;
    v52 = [(NSMutableOrderedSet *)self->_queuedAssetCollectionsToFetch count];
    clientQueue = [(PXPhotosDataSource *)self clientQueue];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_4;
    v57[3] = &unk_1E77445A8;
    v59 = v52 != 0;
    objc_copyWeak(v58, location);
    v58[1] = id;
    dispatch_async(clientQueue, v57);

    if (v52)
    {
      backgroundQueue = self->_backgroundQueue;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __69__PXPhotosDataSource__fetchRemainingCollectionsBackgroundLoopWithId___block_invoke_5;
      v55[3] = &unk_1E7749808;
      objc_copyWeak(v56, location);
      v56[1] = id;
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

- (void)setIsBackgroundFetching:(BOOL)fetching
{
  if (self->_isBackgroundFetching != fetching)
  {
    self->_isBackgroundFetching = fetching;
    if (fetching)
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

- (void)_prefetchIndexesByFetchResult:(id)result onlyThumbnails:(BOOL)thumbnails
{
  resultCopy = result;
  if ([resultCopy count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__PXPhotosDataSource__prefetchIndexesByFetchResult_onlyThumbnails___block_invoke;
    v7[3] = &unk_1E7744530;
    thumbnailsCopy = thumbnails;
    v7[4] = self;
    [resultCopy enumerateKeysAndObjectsUsingBlock:v7];
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

- (void)prefetchAssetsInSections:(id)sections
{
  v4 = MEMORY[0x1E695DF90];
  sectionsCopy = sections;
  dictionary = [v4 dictionary];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __47__PXPhotosDataSource_prefetchAssetsInSections___block_invoke;
  v11 = &unk_1E7744508;
  selfCopy = self;
  v13 = dictionary;
  v7 = dictionary;
  [sectionsCopy enumerateSectionIndexPathsUsingBlock:&v8];

  [(PXPhotosDataSource *)self _prefetchIndexesByFetchResult:v7 onlyThumbnails:0, v8, v9, v10, v11, selfCopy];
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

- (void)prefetchAssetsAtIndexPaths:(id)paths onlyThumbnailAssets:(BOOL)assets
{
  assetsCopy = assets;
  v7 = MEMORY[0x1E695DF90];
  pathsCopy = paths;
  dictionary = [v7 dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PXPhotosDataSource_prefetchAssetsAtIndexPaths_onlyThumbnailAssets___block_invoke;
  v11[3] = &unk_1E77444E0;
  v12 = dictionary;
  v13 = a2;
  v11[4] = self;
  v10 = dictionary;
  [pathsCopy enumerateItemIndexSetsUsingBlock:v11];

  [(PXPhotosDataSource *)self _prefetchIndexesByFetchResult:v10 onlyThumbnails:assetsCopy];
}

void __69__PXPhotosDataSource_prefetchAssetsAtIndexPaths_onlyThumbnailAssets___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [v6 assetsInSection:a3];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
}

- (void)prefetchApproximateAssetsAtIndexPaths:(id)paths reverseOrder:(BOOL)order
{
  orderCopy = order;
  v43 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v7 = pathsCopy;
  if (pathsCopy && [pathsCopy count])
  {
    v26 = orderCopy;
    selfCopy = self;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
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
          v16 = [dictionary objectForKeyedSubscript:v15];

          if (v16)
          {
            [v16 addIndex:{objc_msgSend(v14, "item")}];
          }

          else
          {
            v16 = [MEMORY[0x1E696AD50] indexSetWithIndex:{objc_msgSend(v14, "item")}];
            v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "section")}];
            [dictionary setObject:v16 forKeyedSubscript:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v11);
    }

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke;
    v34[3] = &unk_1E77444B8;
    v34[4] = selfCopy;
    v21 = dictionary2;
    v35 = v21;
    v22 = dictionary3;
    v36 = v22;
    v23 = indexSet;
    v37 = v23;
    [dictionary enumerateKeysAndObjectsUsingBlock:v34];
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

      prefetchQueue = selfCopy->_prefetchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__PXPhotosDataSource_prefetchApproximateAssetsAtIndexPaths_reverseOrder___block_invoke_2;
      block[3] = &unk_1E7747928;
      v29 = v23;
      v33 = v24;
      v30 = v22;
      v31 = v21;
      v32 = selfCopy;
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

- (BOOL)forceAccurateIndexPath:(id)path andAssetsBeforeAndAfter:(int64_t)after
{
  pathCopy = path;
  if ([(PXPhotosDataSource *)self _allSectionsConsideredAccurate]&& ![(PXPhotosDataSource *)self _areSecondaryFetchesEnabled])
  {
    v22 = 0;
  }

  else
  {
    section = [pathCopy section];
    v8 = [MEMORY[0x1E696AD50] indexSetWithIndex:section];
    v24 = [(PXPhotosDataSource *)self assetCollectionForSection:section];
    estimatedAssetCount = [v24 estimatedAssetCount];
    item = [pathCopy item];
    v11 = (estimatedAssetCount + ~item) & ~((estimatedAssetCount + ~item) >> 63);
    numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
    if (v11 < after && section + 1 < numberOfSections)
    {
      v14 = numberOfSections;
      v15 = section + 2;
      do
      {
        v16 = [(PXPhotosDataSource *)self assetCollectionForSection:v15 - 1];
        v11 += [v16 estimatedAssetCount];
        [v8 addIndex:v15 - 1];
      }

      while (v11 < after && v15++ < v14);
    }

    item2 = [pathCopy item];
    v19 = item2 & ~(item2 >> 63);
    if (v19 < after && section >= 1)
    {
      do
      {
        v20 = [(PXPhotosDataSource *)self assetCollectionForSection:section - 1];
        v19 += [v20 estimatedAssetCount];
        [v8 addIndex:section - 1];
      }

      while (v19 < after && section-- > 1);
    }

    v22 = [(PXPhotosDataSource *)self forceAccurateSectionsIfNeeded:v8];
  }

  return v22;
}

- (BOOL)forceAccurateAssetCollectionsIfNeeded:(id)needed reloadChanges:(BOOL)changes
{
  changesCopy = changes;
  v63 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v47 = 0u;
    obj = neededCopy;
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
          fetchResult = [v10 fetchResult];

          if (!fetchResult)
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
              date = [MEMORY[0x1E695DF00] date];
              [date timeIntervalSinceReferenceDate];
              v17 = v16;

              v18 = [(PXPhotosDataSource *)self _fetchTupleForAssetCollection:v9 calledOnClientQueue:1 isLimitedInitialFetch:0];

              v13 = PLUIGetLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v19 = [(PXPhotosDataSource *)self sectionForAssetCollection:v9];
                date2 = [MEMORY[0x1E695DF00] date];
                [date2 timeIntervalSinceReferenceDate];
                *buf = 134218240;
                v59 = v19;
                v60 = 2048;
                v61 = (v21 - v17) * 1000.0;
                _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEBUG, "Forced section %lu, fetched on demand, duration:%.2fms", buf, 0x16u);
              }

              v12 = v18;
            }

            [dictionary setObject:v12 forKeyedSubscript:v9];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
      }

      while (v6);
    }

    v22 = [dictionary count];
    v23 = v22 != 0;
    if (v22)
    {
      options = self->_options;
      array = [MEMORY[0x1E695DF70] array];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__PXPhotosDataSource_forceAccurateAssetCollectionsIfNeeded_reloadChanges___block_invoke_530;
      aBlock[3] = &unk_1E7744490;
      v26 = dictionary;
      v41 = v26;
      v45 = (options & 0x20) != 0;
      v46 = (options & 0x10) != 0;
      v27 = array;
      v42 = v27;
      selfCopy = self;
      v44 = a2;
      v28 = _Block_copy(aBlock);
      v29 = v28;
      if (self->_nestedChanges < 1)
      {
        if (changesCopy)
        {
          [(PXPhotosDataSource *)self _willChange];
          v29[2](v29);
          [(PXPhotosDataSource *)self _publishReloadChange];
        }

        else
        {
          allKeys = [v26 allKeys];
          [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:allKeys changeBlock:v29];
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

- (BOOL)forceAccurateSectionsIfNeeded:(id)needed reloadChanges:(BOOL)changes
{
  changesCopy = changes;
  neededCopy = needed;
  if ([(PXPhotosDataSource *)self _allSectionsConsideredAccurate]&& ![(PXPhotosDataSource *)self _areSecondaryFetchesEnabled])
  {
    v10 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(neededCopy, "count")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PXPhotosDataSource_forceAccurateSectionsIfNeeded_reloadChanges___block_invoke;
    v12[3] = &unk_1E7744440;
    v13 = v8;
    v14 = a2;
    v12[4] = self;
    v9 = v8;
    [neededCopy enumerateIndexesUsingBlock:v12];
    v10 = [(PXPhotosDataSource *)self forceAccurateAssetCollectionsIfNeeded:v9 reloadChanges:changesCopy];
  }

  return v10;
}

void __66__PXPhotosDataSource_forceAccurateSectionsIfNeeded_reloadChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 376) objectAtIndexedSubscript:a2];
  [v2 addObject:v3];
}

- (BOOL)_forceAccurateSection:(int64_t)section andNumberOfSurroundingSectionsWithContent:(int64_t)content
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
    numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
    filterPredicate = [(PXPhotosDataSource *)self filterPredicate];
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __86__PXPhotosDataSource__forceAccurateSection_andNumberOfSurroundingSectionsWithContent___block_invoke;
    v29 = &unk_1E7744418;
    v11 = v10;
    sectionCopy = section;
    v36 = 0;
    v37 = numberOfSections;
    v30 = v11;
    selfCopy = self;
    v33 = &v38;
    contentCopy = content;
    v12 = v9;
    v32 = v12;
    v13 = _Block_copy(&v26);
    v13[2](v13, 50, 0);
    if ([v11 count] < content && objc_msgSend(v12, "count") != numberOfSections)
    {
      v14 = filterPredicate;
      if (_predicateByStrippingNoIndex_onceToken != -1)
      {
        dispatch_once(&_predicateByStrippingNoIndex_onceToken, &__block_literal_global_1190);
      }

      predicateFormat = [v14 predicateFormat];
      if ([predicateFormat containsString:@"noindex:"])
      {
        v16 = [_predicateByStrippingNoIndex_regexp stringByReplacingMatchesInString:predicateFormat options:0 range:0 withTemplate:{objc_msgSend(predicateFormat, "length"), @"$1"}];
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
          fetchedObjects = [v20 fetchedObjects];
          v22 = [(PXPhotosDataSource *)self sectionsForAssetCollections:fetchedObjects];

          (v13)[2](v13, 0x7FFFFFFFFFFFFFFFLL, v22);
        }
      }

      else
      {
        v23 = PLUIGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          firstAssetCollection = [(PXPhotosDataSource *)self firstAssetCollection];
          *buf = 138412546;
          selfCopy2 = self;
          v44 = 2112;
          v45 = firstAssetCollection;
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

- (BOOL)forceAccurateSection:(int64_t)section andSectionsBeforeAndAfter:(int64_t)after
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

    numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
    v5 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, numberOfSections}];
    v6 = [(PXPhotosDataSource *)self forceAccurateSectionsIfNeeded:v5];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)_areFiltersDisabledForAssetCollection:(id)collection
{
  v3 = [(PXPhotosDataSource *)self infoForAssetCollection:collection];
  explicitlyDisableFilters = [v3 explicitlyDisableFilters];

  return explicitlyDisableFilters;
}

- (void)setDisableFilters:(BOOL)filters forAssetCollection:(id)collection
{
  filtersCopy = filters;
  v14[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if ([(PXPhotosDataSource *)self _areFiltersDisabledForAssetCollection:collectionCopy]!= filtersCopy)
  {
    v14[0] = collectionCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    v13 = collectionCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__PXPhotosDataSource_setDisableFilters_forAssetCollection___block_invoke;
    v10[3] = &unk_1E774B368;
    v10[4] = self;
    v11 = collectionCopy;
    v12 = filtersCopy;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v9 collectionsToDiff:0 collectionsToChange:v8 changeBlock:v10];
  }
}

void __59__PXPhotosDataSource_setDisableFilters_forAssetCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) infoForAssetCollection:*(a1 + 40)];
  [v2 _setExplicitlyDisableFilters:*(a1 + 48)];
  [*(a1 + 32) clearResultsForAssetCollection:*(a1 + 40)];
}

- (void)setIncludeAllBurstAssets:(BOOL)assets
{
  if (self->_includeAllBurstAssets != assets)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__PXPhotosDataSource_setIncludeAllBurstAssets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    assetsCopy = assets;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v5];
  }
}

- (void)setIncludeSharedCollectionAssets:(BOOL)assets
{
  if (self->_includeSharedCollectionAssets != assets)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PXPhotosDataSource_setIncludeSharedCollectionAssets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    assetsCopy = assets;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v5];
  }
}

- (void)setCanIncludeUnsavedSyndicatedAssets:(BOOL)assets
{
  if (self->_canIncludeUnsavedSyndicatedAssets != assets)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__PXPhotosDataSource_setCanIncludeUnsavedSyndicatedAssets___block_invoke;
    v5[3] = &unk_1E7749428;
    v5[4] = self;
    assetsCopy = assets;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v5];
  }
}

- (void)_internalSetLibraryFilter:(int64_t)filter
{
  if (self->_libraryFilter != filter)
  {
    v10[10] = v3;
    v10[11] = v4;
    _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
    assetCollections = [_sectionCache assetCollections];

    if ([assetCollections count])
    {
      v9 = [assetCollections objectAtIndexedSubscript:0];
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
    v10[5] = filter;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v10];
    if (v9)
    {
      [(PXPhotosDataSource *)self _endLibraryFilterChangedSignpostForCollection:v9];
    }
  }
}

- (void)setLibraryFilter:(int64_t)filter
{
  libraryFilterState = [(PXPhotosDataSource *)self libraryFilterState];

  if (libraryFilterState)
  {
    PXAssertGetLog();
  }

  libraryFilterState2 = [(PXPhotosDataSource *)self libraryFilterState];

  if (!libraryFilterState2)
  {
    [(PXPhotosDataSource *)self _internalSetLibraryFilter:filter];
  }
}

- (void)_endLibraryFilterChangedSignpostForCollection:(id)collection
{
  v12 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  signpostIntervalId = [(PXPhotosDataSource *)self signpostIntervalId];
  if (signpostIntervalId)
  {
    v6 = signpostIntervalId;
    dataSourceLog = [(PXPhotosDataSource *)self dataSourceLog];
    v8 = dataSourceLog;
    if (v6 != -1 && os_signpost_enabled(dataSourceLog))
    {
      localizedTitle = [collectionCopy localizedTitle];
      v10 = 138543362;
      v11 = localizedTitle;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v6, "End Set Library Filter", "%{public}@", &v10, 0xCu);
    }

    [(PXPhotosDataSource *)self setSignpostIntervalId:0];
  }
}

- (void)_startLibraryFilterChangedSignpostForCollection:(id)collection
{
  v12 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (![(PXPhotosDataSource *)self signpostIntervalId])
  {
    dataSourceLog = [(PXPhotosDataSource *)self dataSourceLog];
    v6 = os_signpost_id_make_with_pointer(dataSourceLog, collectionCopy);
    v7 = dataSourceLog;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      localizedTitle = [collectionCopy localizedTitle];
      v10 = 138543362;
      v11 = localizedTitle;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Begin Set Library Filter", "%{public}@", &v10, 0xCu);
    }

    [(PXPhotosDataSource *)self setSignpostIntervalId:v6];
  }
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  assetsCopy = assets;
  collectionsCopy = collections;
  if (self->_includeOthersInSocialGroupAssets != assetsCopy)
  {
    _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
    assetCollections = [_sectionCache assetCollections];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __109__PXPhotosDataSource_setIncludeOthersInSocialGroupAssets_provideIncrementalChangeDetailsForAssetCollections___block_invoke;
    v10[3] = &unk_1E77443F0;
    v10[4] = self;
    v11 = assetCollections;
    v13 = assetsCopy;
    v12 = collectionsCopy;
    v9 = assetCollections;
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

- (void)setFilterPredicate:(id)predicate provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  predicateCopy = predicate;
  collectionsCopy = collections;
  v8 = self->_filterPredicate;
  v9 = v8;
  if (v8 == predicateCopy)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = [(NSPredicate *)v8 isEqual:predicateCopy];

  if ((v10 & 1) == 0)
  {
    _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
    assetCollections = [_sectionCache assetCollections];

    if ([assetCollections count])
    {
      v9 = [assetCollections objectAtIndexedSubscript:0];
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
    selfCopy = self;
    v19 = assetCollections;
    v20 = predicateCopy;
    v21 = collectionsCopy;
    v13 = assetCollections;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v13 collectionsToDiff:v21 changeBlock:&v14];
    if (v9)
    {
      [(PXPhotosDataSource *)self _endFilterPredicateChangedForCollection:v9, v14, v15, v16, v17, selfCopy, v19, v20, v21];
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

- (void)_endFilterPredicateChangedForCollection:(id)collection
{
  v12 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  signpostIntervalId = [(PXPhotosDataSource *)self signpostIntervalId];
  if (signpostIntervalId)
  {
    v6 = signpostIntervalId;
    dataSourceLog = [(PXPhotosDataSource *)self dataSourceLog];
    v8 = dataSourceLog;
    if (v6 != -1 && os_signpost_enabled(dataSourceLog))
    {
      localIdentifier = [collectionCopy localIdentifier];
      v10 = 138543362;
      v11 = localIdentifier;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v6, "End Set Filter Predicate", "%{public}@", &v10, 0xCu);
    }

    [(PXPhotosDataSource *)self setSignpostIntervalId:0];
  }
}

- (void)_startFilterPredicateChangedSignpostForCollection:(id)collection
{
  v12 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (![(PXPhotosDataSource *)self signpostIntervalId])
  {
    dataSourceLog = [(PXPhotosDataSource *)self dataSourceLog];
    v6 = os_signpost_id_make_with_pointer(dataSourceLog, collectionCopy);
    v7 = dataSourceLog;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      localIdentifier = [collectionCopy localIdentifier];
      v10 = 138543362;
      v11 = localIdentifier;
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
    firstAssetCollection = v3;
LABEL_5:
    v5 = firstAssetCollection;
    goto LABEL_7;
  }

  if ([(PXPhotosDataSource *)self numberOfSections]== 1)
  {
    firstAssetCollection = [(PXPhotosDataSource *)self firstAssetCollection];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (PXAssetsDataSourceContainer)container
{
  if (!self->_assetContainerProvider || ([(PXPhotosDataSource *)self containerAssetCollection], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, (*(self->_assetContainerProvider + 2))(), containerCollection = objc_claimAutoreleasedReturnValue(), v4, !containerCollection))
  {
    containerCollection = [(PXPhotosDataSource *)self containerCollection];
  }

  return containerCollection;
}

- (id)assetsAtIndexPaths:(id)paths
{
  v5 = MEMORY[0x1E695DF70];
  pathsCopy = paths;
  array = [v5 array];
  versionIdentifier = [(PXPhotosDataSource *)self versionIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__PXPhotosDataSource_assetsAtIndexPaths___block_invoke;
  v13[3] = &unk_1E77443C8;
  v15 = versionIdentifier;
  v16 = a2;
  v13[4] = self;
  v9 = array;
  v14 = v9;
  [pathsCopy enumerateItemIndexSetsUsingBlock:v13];

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

- (id)fetchResultWithAssetsAtIndexPaths:(id)paths
{
  v5 = MEMORY[0x1E695DF70];
  pathsCopy = paths;
  array = [v5 array];
  versionIdentifier = [(PXPhotosDataSource *)self versionIdentifier];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __56__PXPhotosDataSource_fetchResultWithAssetsAtIndexPaths___block_invoke;
  v18 = &unk_1E77443C8;
  v21 = versionIdentifier;
  v22 = a2;
  selfCopy = self;
  v20 = array;
  v9 = array;
  [pathsCopy enumerateItemIndexSetsUsingBlock:&v15];

  v10 = objc_alloc(MEMORY[0x1E69788E0]);
  photoLibrary = self->_photoLibrary;
  fetchType = [MEMORY[0x1E6978630] fetchType];
  v13 = [v10 initWithOids:v9 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:1];

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

- (id)fetchResultWithAssetsInSections:(id)sections
{
  v4 = MEMORY[0x1E695DF70];
  sectionsCopy = sections;
  array = [v4 array];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __54__PXPhotosDataSource_fetchResultWithAssetsInSections___block_invoke;
  v16 = &unk_1E774A7B8;
  selfCopy = self;
  v18 = array;
  v7 = array;
  [sectionsCopy enumerateIndexesUsingBlock:&v13];

  v8 = objc_alloc(MEMORY[0x1E69788E0]);
  photoLibrary = self->_photoLibrary;
  fetchType = [MEMORY[0x1E6978630] fetchType];
  v11 = [v8 initWithOids:v7 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:1];

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

- (id)_fetchAssetsStartingAtIndexPath:(id)path
{
  pathCopy = path;
  numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
  section = [pathCopy section];
  v22 = pathCopy;
  item = [pathCopy item];
  array = [MEMORY[0x1E695DF70] array];
  if (section < numberOfSections)
  {
    v9 = 0;
    do
    {
      v10 = [(PXPhotosDataSource *)self assetsInSection:section];
      v11 = v10;
      if (v10)
      {
        v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
        v13 = [v11 count];
        if (v9 == 0 && item > 0)
        {
          v14 = item;
        }

        else
        {
          v14 = 0;
        }

        v15 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v14, v13 - v14}];
        v16 = [v11 objectsAtIndexes:v15];
        [v12 addObjectsFromArray:v16];

        [array addObjectsFromArray:v12];
      }

      ++section;
      --v9;
    }

    while (numberOfSections != section);
  }

  if ([array count])
  {
    v17 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = self->_photoLibrary;
    fetchType = [MEMORY[0x1E6978630] fetchType];
    v20 = [v17 initWithObjects:array photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:1];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)assetsStartingAtIndexPath:(id)path
{
  pathCopy = path;
  numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
  section = [pathCopy section];
  v23 = pathCopy;
  item = [pathCopy item];
  array = [MEMORY[0x1E695DF70] array];
  if (section >= numberOfSections)
  {
LABEL_10:
    v18 = objc_alloc(MEMORY[0x1E69788E0]);
    photoLibrary = self->_photoLibrary;
    fetchType = [MEMORY[0x1E6978630] fetchType];
    v21 = [v18 initWithOids:array photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:1];

    goto LABEL_11;
  }

  v9 = 0;
  while (1)
  {
    v10 = [(PXPhotosDataSource *)self assetsInSection:section];
    v11 = v10;
    if (v10)
    {
      break;
    }

LABEL_9:

    ++section;
    --v9;
    if (numberOfSections == section)
    {
      goto LABEL_10;
    }
  }

  fetchedObjectIDs = [v10 fetchedObjectIDs];
  if ([fetchedObjectIDs count])
  {
    v13 = fetchedObjectIDs;
    v14 = v13;
    v15 = v13;
    if (!v9)
    {
      v15 = v13;
      if (item >= 1)
      {
        v16 = [v13 count];
        v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{item, v16 - item}];
        v15 = [v14 objectsAtIndexes:v17];
      }
    }

    [array addObjectsFromArray:v15];

    goto LABEL_9;
  }

  [array removeAllObjects];
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

  numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
  v5 = [(PXPhotosDataSource *)self numberOfItemsInSection:0];
  if (numberOfSections >= 2)
  {
    v5 += [(PXPhotosDataSource *)self numberOfItemsInSection:numberOfSections - 1];
  }

  if (v5 > 1)
  {
    return 1;
  }

  backgroundFetchOriginSection = [(PXPhotosDataSource *)self backgroundFetchOriginSection];
  if (backgroundFetchOriginSection >= numberOfSections - 1)
  {
    v7 = numberOfSections - 1;
  }

  else
  {
    v7 = backgroundFetchOriginSection;
  }

  v8 = v7 & ~(v7 >> 63);
  if (v8 >= numberOfSections)
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

    while (v10 < numberOfSections && v9 < 2);
  }

  if (v7 >= 1)
  {
    v11 = v8 + 1;
    do
    {
      if (v8 > numberOfSections)
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

- (id)uncuratedAssetsInSection:(int64_t)section
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:section];
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

- (id)curatedAssetsInSection:(int64_t)section
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:section];
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

- (id)uncuratedAssetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(PXPhotosDataSource *)self _assetsForAssetCollection:collectionCopy];
  v6 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:collectionCopy];

  fetchResult = [v6 fetchResult];

  return fetchResult;
}

- (id)curatedAssetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(PXPhotosDataSource *)self _assetsForAssetCollection:collectionCopy];
  v6 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:collectionCopy];

  curatedFetchResult = [v6 curatedFetchResult];

  return curatedFetchResult;
}

- (BOOL)isCuratedAssetsFutilelyForAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PXPhotosDataSource *)self wantsCurationForAssetCollection:collectionCopy])
  {
    v5 = [(PXPhotosDataSource *)self curatedAssetsForAssetCollection:collectionCopy];
    v6 = [(PXPhotosDataSource *)self uncuratedAssetsForAssetCollection:collectionCopy];
    v7 = [v6 count];
    v8 = v7 <= [v5 count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCuratedAssetsEmptyForAssetCollection:(id)collection
{
  if (!collection)
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

- (BOOL)hasCurationForAssetCollection:(id)collection
{
  if (!collection)
  {
    return 0;
  }

  v3 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:?];
  isCurated = [v3 isCurated];

  return isCurated;
}

- (BOOL)wantsCurationForAssetCollection:(id)collection
{
  collectionCopy = collection;
  wantsCurationByDefault = [(PXPhotosDataSource *)self wantsCurationByDefault];
  if (collectionCopy)
  {
    v6 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:collectionCopy];
    wantsCuration = [v6 wantsCuration];
  }

  else
  {
    wantsCuration = wantsCurationByDefault;
  }

  return wantsCuration;
}

- (BOOL)wantsCurationForFirstAssetCollection
{
  selfCopy = self;
  firstAssetCollection = [(PXPhotosDataSource *)self firstAssetCollection];
  LOBYTE(selfCopy) = [(PXPhotosDataSource *)selfCopy wantsCurationForAssetCollection:firstAssetCollection];

  return selfCopy;
}

- (void)refetchResultsForAssetCollection:(id)collection
{
  v12[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v5 = [(PXPhotosDataSource *)self sectionForAssetCollection:collectionCopy];
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
    collectionCopy = v8;
    v11 = collectionCopy;
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

- (void)clearResultsForAssetCollections:(id)collections
{
  v26 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  fetcher = [(PXPhotosDataSource *)self fetcher];
  [fetcher clearFetchResultsForAssetCollections:collectionsCopy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = collectionsCopy;
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
    selfCopy = self;
    v20 = v6;
    dispatch_sync(pendingResultsIsolationQueue, &v15);
  }

  selfCopy = [(PHFetchResult *)self->_collectionListFetchResult copyWithOptions:&unk_1F190F6E8, v15, v16, v17, v18, selfCopy];
  collectionListFetchResult = self->_collectionListFetchResult;
  self->_collectionListFetchResult = selfCopy;
}

uint64_t __54__PXPhotosDataSource_clearResultsForAssetCollections___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 168) removeObjectsForKeys:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 176);

  return [v3 removeObjectsForKeys:v2];
}

- (void)clearResultsForAssetCollection:(id)collection
{
  v8 = *MEMORY[0x1E69E9840];
  if (collection)
  {
    collectionCopy = collection;
    v4 = MEMORY[0x1E695DEC8];
    collectionCopy2 = collection;
    v6 = [v4 arrayWithObjects:&collectionCopy count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [(PXPhotosDataSource *)self clearResultsForAssetCollections:v6, collectionCopy, v8];
}

- (void)stopExcludingAssets:(id)assets
{
  v28 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count] && !-[PXPhotosDataSource isImmutable](self, "isImmutable"))
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(assetsCopy, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = assetsCopy;
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

          objectID = [*(*(&v23 + 1) + 8 * v10) objectID];
          [v5 addObject:objectID];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    array = [MEMORY[0x1E695DF70] array];
    resultRecordByAssetCollection = self->_resultRecordByAssetCollection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__PXPhotosDataSource_stopExcludingAssets___block_invoke;
    v20[3] = &unk_1E7744378;
    v14 = v5;
    v21 = v14;
    v15 = array;
    v22 = v15;
    [(NSMutableDictionary *)resultRecordByAssetCollection enumerateKeysAndObjectsUsingBlock:v20];
    if ([v15 count])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __42__PXPhotosDataSource_stopExcludingAssets___block_invoke_2;
      v16[3] = &unk_1E774A1B8;
      v17 = v15;
      selfCopy = self;
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

- (void)forceExcludeAssetsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [off_1E7721768 indexPathSetWithItemIndexPaths:pathsCopy dataSourceIdentifier:{-[PXPhotosDataSource versionIdentifier](self, "versionIdentifier")}];

  [(PXPhotosDataSource *)self forceExcludeAssetsAtIndexes:v5];
}

- (void)forceExcludeAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count] && !-[PXPhotosDataSource isImmutable](self, "isImmutable"))
  {
    versionIdentifier = [(PXPhotosDataSource *)self versionIdentifier];
    v7 = objc_alloc_init(off_1E77217C8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke;
    v16[3] = &unk_1E77441F0;
    v18 = versionIdentifier;
    v19 = a2;
    v16[4] = self;
    v8 = v7;
    v17 = v8;
    [indexesCopy enumerateItemIndexPathsUsingBlock:v16];
    if ([v8 count] >= 1)
    {
      v9 = [indexesCopy mutableCopy];
      [v9 minusIndexPathSet:v8];

      indexesCopy = v9;
    }

    v10 = [(PXPhotosDataSource *)self _assetOidsByAssetCollectionForAssetsAtIndexPathsInSet:indexesCopy];
    allKeys = [v10 allKeys];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__PXPhotosDataSource_forceExcludeAssetsAtIndexes___block_invoke_2;
    v13[3] = &unk_1E774C620;
    v14 = v10;
    selfCopy = self;
    v12 = v10;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:allKeys changeBlock:v13];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    resultRecordByAssetCollection = self->_resultRecordByAssetCollection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PXPhotosDataSource_stopForceIncludingAllAssets__block_invoke;
    v10[3] = &unk_1E77441C8;
    v5 = dictionary;
    v11 = v5;
    [(NSMutableDictionary *)resultRecordByAssetCollection enumerateKeysAndObjectsUsingBlock:v10];
    if ([v5 count])
    {
      allKeys = [v5 allKeys];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__PXPhotosDataSource_stopForceIncludingAllAssets__block_invoke_2;
      v7[3] = &unk_1E774C620;
      v8 = v5;
      selfCopy = self;
      [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:allKeys changeBlock:v7];
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

- (void)forceIncludeAssetsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [off_1E7721768 indexPathSetWithItemIndexPaths:pathsCopy dataSourceIdentifier:{-[PXPhotosDataSource versionIdentifier](self, "versionIdentifier")}];

  [(PXPhotosDataSource *)self forceIncludeAssetsAtIndexes:v5];
}

- (void)forceIncludeAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count] && !-[PXPhotosDataSource isImmutable](self, "isImmutable"))
  {
    v5 = [(PXPhotosDataSource *)self _assetOidsByAssetCollectionForAssetsAtIndexPathsInSet:indexesCopy];
    allKeys = [v5 allKeys];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PXPhotosDataSource_forceIncludeAssetsAtIndexes___block_invoke;
    v8[3] = &unk_1E774C620;
    v9 = v5;
    selfCopy = self;
    v7 = v5;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:allKeys changeBlock:v8];
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
  collectionListFetchResult = [(PXPhotosDataSource *)self collectionListFetchResult];
  v5 = [collectionListFetchResult countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(collectionListFetchResult);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(PXPhotosDataSource *)self assetsInSection:[(PXPhotosDataSource *)self sectionForAssetCollection:v9]];
        [v3 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [collectionListFetchResult countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)enumerateStartingAtIndexPath:(id)path reverseDirection:(BOOL)direction usingBlock:(id)block
{
  directionCopy = direction;
  pathCopy = path;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:2380 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  if (directionCopy)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
  section = [pathCopy section];
  item = [pathCopy item];
  v23 = 0;
  if ((section & 0x8000000000000000) == 0)
  {
    v14 = item;
    v15 = section;
    do
    {
      if (v15 >= numberOfSections || (v23 & 1) != 0)
      {
        break;
      }

      selfCopy = self;
      v17 = [(PXPhotosDataSource *)self numberOfItemsInSection:v15];
      v18 = v17 - 1;
      if (!directionCopy)
      {
        v18 = 0;
      }

      if (v15 != section)
      {
        v14 = v18;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v19 = v17;
        while (v14 < v19 && (v23 & 1) == 0)
        {
          v20 = [MEMORY[0x1E696AC88] indexPathForItem:v14 inSection:v15];
          blockCopy[2](blockCopy, v20, &v23);

          v14 += v11;
          if (v14 < 0)
          {
            v14 = -1;
            break;
          }
        }
      }

      v15 += v11;
      self = selfCopy;
    }

    while (v15 >= 0);
  }
}

- (id)indexPathForLastAsset
{
  if (![(PXPhotosDataSource *)self isEmpty])
  {
    numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
    while (numberOfSections-- >= 1)
    {
      v6 = [(PXPhotosDataSource *)self numberOfItemsInSection:numberOfSections];
      if (v6 >= 1)
      {
        v3 = [MEMORY[0x1E696AC88] indexPathForItem:v6 - 1 inSection:numberOfSections];
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

- (id)assetReferenceAtIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    [(PXPhotosDataSource *)self assetAtIndexPath:pathCopy];
    objc_claimAutoreleasedReturnValue();
    -[PXPhotosDataSource assetCollectionForSection:](self, "assetCollectionForSection:", [pathCopy section]);
    objc_claimAutoreleasedReturnValue();
    v5 = [off_1E7721490 alloc];
    [(PXPhotosDataSource *)self versionIdentifier];
    PXSimpleIndexPathFromIndexPath();
  }

  return 0;
}

- (id)assetReferenceForAsset:(id)asset containedInAssetCollectionWithType:(int64_t)type
{
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:assetCopy withType:type options:0];
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
          if ([v15 containsObject:assetCopy])
          {
            v17 = [off_1E7721490 alloc];
            v18 = *(off_1E7722228 + 1);
            v20[0] = *off_1E7722228;
            v20[1] = v18;
            v16 = [v17 initWithSectionObject:v12 itemObject:assetCopy subitemObject:0 indexPath:v20];

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

- (id)indexPathForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy)
  {
    [referenceCopy simpleIndexPath];
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

  asset = [v5 asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset2 = [v5 asset];

    if (!asset2)
    {
      v10 = 0;
      goto LABEL_19;
    }

    assetCollection = [v5 assetCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      assetCollection2 = [v5 assetCollection];
    }

    else
    {
      assetCollection2 = 0;
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
    v10 = [(PXPhotosDataSource *)self indexPathForAsset:asset2 hintIndexPath:v13 hintCollection:assetCollection2];
  }

  else
  {
    v10 = 0;
    asset2 = asset;
  }

LABEL_19:

  return v10;
}

- (id)_indexPathForAssetWithUUID:(id)d orBurstIdentifier:(id)identifier orSyndicationIdentifier:(id)syndicationIdentifier hintIndexPath:(id)path hintCollections:(id)collections
{
  v51[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  syndicationIdentifierCopy = syndicationIdentifier;
  pathCopy = path;
  collectionsCopy = collections;
  v17 = [dCopy length];
  if (syndicationIdentifierCopy || v17)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__205867;
    v49 = __Block_byref_object_dispose__205868;
    v50 = 0;
    v19 = [(PXPhotosDataSource *)self _closestIndexPathToIndexPath:pathCopy];
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
    v34 = syndicationIdentifierCopy;
    v20 = dCopy;
    v35 = v20;
    v36 = identifierCopy;
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
        photoLibrary = [(PXPhotosDataSource *)self photoLibrary];
        px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];

        v24 = MEMORY[0x1E6978630];
        v51[0] = v32;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
        v26 = [v24 fetchAssetsWithLocalIdentifiers:v25 options:px_standardLibrarySpecificFetchOptions];

        lastObject = [v26 lastObject];
        if (lastObject)
        {
          v28 = [(PXPhotosDataSource *)self indexPathForAsset:lastObject hintIndexPath:pathCopy hintCollections:collectionsCopy];
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

- (id)indexPathForAssetWithUUID:(id)d orSyndicationIdentifier:(id)identifier hintIndexPath:(id)path hintCollection:(id)collection
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  pathCopy = path;
  if (collection)
  {
    collectionCopy = collection;
    v13 = MEMORY[0x1E695DEC8];
    collectionCopy2 = collection;
    collection = [v13 arrayWithObjects:&collectionCopy count:1];
  }

  v15 = [(PXPhotosDataSource *)self _indexPathForAssetWithUUID:dCopy orBurstIdentifier:0 orSyndicationIdentifier:identifierCopy hintIndexPath:pathCopy hintCollections:collection, collectionCopy, v18];

  return v15;
}

- (id)indexPathForAssetWithUUID:(id)d orBurstIdentifier:(id)identifier hintIndexPath:(id)path hintCollection:(id)collection
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  pathCopy = path;
  if (collection)
  {
    collectionCopy = collection;
    v13 = MEMORY[0x1E695DEC8];
    collectionCopy2 = collection;
    collection = [v13 arrayWithObjects:&collectionCopy count:1];
  }

  v15 = [(PXPhotosDataSource *)self _indexPathForAssetWithUUID:dCopy orBurstIdentifier:identifierCopy orSyndicationIdentifier:0 hintIndexPath:pathCopy hintCollections:collection, collectionCopy, v18];

  return v15;
}

- (int64_t)indexForAsset:(id)asset inCollection:(id)collection hintIndex:(int64_t)index
{
  assetCopy = asset;
  collectionCopy = collection;
  numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
  indexCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (assetCopy)
  {
    v12 = numberOfSections;
    if (numberOfSections)
    {
      v13 = [(PXPhotosDataSource *)self sectionForAssetCollection:collectionCopy];
      if (v13 < v12)
      {
        v14 = [(PXPhotosDataSource *)self assetsInSection:v13];
        if ([v14 count] > index)
        {
          v15 = [v14 objectAtIndex:index];
          if ([v15 isEqual:assetCopy])
          {
            indexCopy = index;
          }
        }
      }

      if (collectionCopy && indexCopy == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [(PXPhotosDataSource *)self indexPathForAsset:assetCopy inCollection:collectionCopy];
        v17 = v16;
        if (v16)
        {
          indexCopy = [v16 item];
        }

        else
        {
          indexCopy = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return indexCopy;
}

- (id)indexPathForAsset:(id)asset hintIndexPath:(id)path hintCollections:(id)collections
{
  v48 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  pathCopy = path;
  collectionsCopy = collections;
  numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
  v12 = 0;
  if (assetCopy)
  {
    v13 = numberOfSections;
    if (numberOfSections)
    {
      if (!pathCopy || numberOfSections <= [pathCopy section])
      {
        goto LABEL_18;
      }

      v14 = -[PXPhotosDataSource assetsInSection:](self, "assetsInSection:", [pathCopy section]);
      item = [pathCopy item];
      if (item < [v14 count])
      {
        v16 = [v14 indexOfObject:assetCopy inRange:{objc_msgSend(pathCopy, "item"), 1}];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_13;
        }

        item2 = [pathCopy item];
        v18 = 250;
        if (item2 > 250)
        {
          v18 = item2;
        }

        v19 = v18 - 250;
        v20 = [v14 count];
        v21 = v20 - v19 >= 500 ? 500 : v20 - v19;
        v16 = [v14 indexOfObject:assetCopy inRange:{v19, v21}];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_13:
          v22 = v16;
          v23 = [v14 objectAtIndex:v16];
          if ([v23 isEqual:assetCopy])
          {
            v12 = [MEMORY[0x1E696AC88] indexPathForItem:v22 inSection:{objc_msgSend(pathCopy, "section")}];

            if (v12)
            {
              goto LABEL_47;
            }

LABEL_18:
            if ([collectionsCopy count])
            {
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v24 = collectionsCopy;
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

                    v29 = [(PXPhotosDataSource *)self indexPathForAsset:assetCopy inCollection:*(*(&v43 + 1) + 8 * i)];
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
            v41 = assetCopy;
            v30 = _Block_copy(aBlock);
            section = [pathCopy section];
            if (v13 - 1 >= (section & ~(section >> 63)))
            {
              v32 = section & ~(section >> 63);
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

- (id)indexPathForAsset:(id)asset hintIndexPath:(id)path hintCollection:(id)collection
{
  v15 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  pathCopy = path;
  if (collection)
  {
    collectionCopy = collection;
    v10 = MEMORY[0x1E695DEC8];
    collectionCopy2 = collection;
    collection = [v10 arrayWithObjects:&collectionCopy count:1];
  }

  v12 = [(PXPhotosDataSource *)self indexPathForAsset:assetCopy hintIndexPath:pathCopy hintCollections:collection, collectionCopy, v15];

  return v12;
}

- (id)indexPathForAsset:(id)asset inCollection:(id)collection
{
  assetCopy = asset;
  v7 = [(PXPhotosDataSource *)self sectionForAssetCollection:collection];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(PXPhotosDataSource *)self assetsInSection:v7];
    v11 = v10;
    if (v10 && (v12 = [v10 indexOfObject:assetCopy], v12 != 0x7FFFFFFFFFFFFFFFLL))
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

- (id)approximateAssetsAtIndexPaths:(id)paths
{
  v31 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v5 = [pathsCopy count];
  if (v5)
  {
    v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    collectionListFetchResult = [(PXPhotosDataSource *)self collectionListFetchResult];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = pathsCopy;
    obj = pathsCopy;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      selfCopy = self;
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
          section = [v14 section];
          if (section < [collectionListFetchResult count])
          {
            if (section != v12 || v10 == 0)
            {
              v17 = [(PXPhotosDataSource *)selfCopy assetsInSection:section];
              v9 = [v17 count];
              v18 = v17;

              v12 = section;
              v10 = v18;
            }

            else
            {
              v10 = v10;
            }

            if ([v14 item] < v9)
            {
              fetchedObjects = [v10 fetchedObjects];
              v20 = [fetchedObjects objectAtIndex:{objc_msgSend(v14, "item")}];
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

    pathsCopy = v22;
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

- (BOOL)isAssetAtIndexPathPartOfCuratedSet:(PXSimpleIndexPath *)set
{
  v5 = [(PXPhotosDataSource *)self assetsInSection:set->section];
  fetchedObjectIDs = [v5 fetchedObjectIDs];
  v7 = [fetchedObjectIDs objectAtIndexedSubscript:set->item];

  if (v7 || ([v5 objectAtIndex:set->item], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectID"), v7 = objc_claimAutoreleasedReturnValue(), v8, v7))
  {
    v9 = [(PXPhotosDataSource *)self assetCollectionForSection:set->section];
    v10 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v9];
    curatedOids = [v10 curatedOids];
    v12 = [curatedOids containsObject:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)assetAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  v7 = -[PXPhotosDataSource assetsInSection:](self, "assetsInSection:", [pathCopy section]);
  v8 = [v7 objectAtIndexedSubscript:item];
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:2019 description:{@"%@ nil asset at indexPath:%@. The indexPath is probably invalid.", self, pathCopy}];
  }

  return v8;
}

- (id)facesAtSimpleIndexPath:(PXSimpleIndexPath *)path
{
  v29[2] = *MEMORY[0x1E69E9840];
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotosDataSource *)self versionIdentifier])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    v25 = *&path->item;
    v27 = *&path->dataSourceIdentifier;
    v28 = v25;
    PXSimpleIndexPathDescription();
  }

  v6 = [(PXPhotosDataSource *)self assetsInSection:path->section];
  fetchedObjectIDs = [v6 fetchedObjectIDs];
  objectID = [fetchedObjectIDs objectAtIndex:path->item];

  if (!objectID)
  {
    v9 = *&path->item;
    v27 = *&path->dataSourceIdentifier;
    v28 = v9;
    v10 = [(PXPhotosDataSource *)self assetAtSimpleIndexPath:&v27];
    objectID = [v10 objectID];

    if (!objectID)
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      objc_claimAutoreleasedReturnValue();
      v26 = *&path->item;
      v27 = *&path->dataSourceIdentifier;
      v28 = v26;
      PXSimpleIndexPathDescription();
    }
  }

  v11 = [(NSMutableDictionary *)self->_facesByAssetCache objectForKey:objectID];
  if (!v11)
  {
    photoLibrary = [(PXPhotosDataSource *)self photoLibrary];
    px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];

    [px_standardLibrarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    [px_standardLibrarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
    px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [px_standardLibrarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"assetForFace", objectID];
    firstObject = [(NSArray *)self->_filterPersons firstObject];
    v17 = firstObject;
    if (firstObject)
    {
      v18 = MEMORY[0x1E696AE18];
      objectID2 = [firstObject objectID];
      v20 = [v18 predicateWithFormat:@"noindex:(%K) = %@", @"personForFace", objectID2];

      v21 = MEMORY[0x1E696AB28];
      v29[0] = v15;
      v29[1] = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v23 = [v21 andPredicateWithSubpredicates:v22];

      [px_standardLibrarySpecificFetchOptions setInternalPredicate:v23];
    }

    else
    {
      [px_standardLibrarySpecificFetchOptions setInternalPredicate:v15];
    }

    v11 = [MEMORY[0x1E69787C8] fetchFacesWithOptions:px_standardLibrarySpecificFetchOptions];
    if (v11)
    {
      [(NSMutableDictionary *)self->_facesByAssetCache setObject:v11 forKey:objectID];
    }
  }

  return v11;
}

- (double)weightForAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    objectID = [assetCopy objectID];
    v7 = [(NSMutableDictionary *)self->_weightByAssetCache objectForKey:objectID];
    if (!v7)
    {
      v8 = MEMORY[0x1E696AD98];
      [v5 weight];
      v7 = [v8 numberWithDouble:?];
      [(NSMutableDictionary *)self->_weightByAssetCache setObject:v7 forKey:objectID];
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

- (id)assetAtSimpleIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXPhotosDataSource *)self versionIdentifier])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  v6 = [(PXPhotosDataSource *)self assetsInSection:path->section];
  if (!v6)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  v7 = [v6 objectAtIndexedSubscript:path->item];

  return v7;
}

- (id)_assetsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:collectionCopy];
  v6 = [(PXPhotosDataSource *)self _assetCollectionFetchStatus:collectionCopy];
  if (v6 - 1 > 2)
  {
    exposedFetchResult2 = 0;
  }

  else
  {
    v7 = v6;
    exposedFetchResult = [v5 exposedFetchResult];
    exposedFetchResult2 = exposedFetchResult;
    if (v7 != 2 && !exposedFetchResult)
    {
      v10 = [(PXPhotosDataSource *)self _fetchTupleForAssetCollection:collectionCopy calledOnClientQueue:1 isLimitedInitialFetch:v7 == 1];
      v11 = [(PXPhotosDataSource *)self _mutableResultRecordForAssetCollection:collectionCopy];
      [(PXPhotosDataSource *)self _addResultTuple:v10 forAssetCollection:collectionCopy preparedResultRecord:0 toMutableResultRecord:v11];
      exposedFetchResult2 = [v11 exposedFetchResult];
    }
  }

  return exposedFetchResult2;
}

- (id)assetsInSection:(int64_t)section
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:section];
  v5 = [(PXPhotosDataSource *)self _assetsForAssetCollection:v4];

  return v5;
}

- (int64_t)keyAssetIndexInSection:(int64_t)section
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:section];
  v5 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];
  keyAssetIndex = [v5 keyAssetIndex];

  return keyAssetIndex;
}

- (id)_keyAssetsForAssetCollection:(id)collection
{
  v3 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:collection];
  keyAssetsFetchResult = [v3 keyAssetsFetchResult];

  return keyAssetsFetchResult;
}

- (id)keyAssetsInSection:(int64_t)section
{
  v4 = [(PXPhotosDataSource *)self assetCollectionForSection:section];
  v5 = [(PXPhotosDataSource *)self _keyAssetsForAssetCollection:v4];

  return v5;
}

- (id)infoForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(NSMutableDictionary *)self->_infoForAssetCollection objectForKeyedSubscript:collectionCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(PXAssetCollectionDataSourceInfo);
    [(NSMutableDictionary *)self->_infoForAssetCollection setObject:v5 forKeyedSubscript:collectionCopy];
  }

  return v5;
}

- (id)sectionsForAssetCollections:(id)collections
{
  v18 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = collectionsCopy;
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

- (id)assetCollectionForSection:(int64_t)section
{
  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  assetCollections = [_sectionCache assetCollections];
  v6 = [assetCollections objectAtIndexedSubscript:section];

  return v6;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  v3 = [(PXPhotosDataSource *)self assetsInSection:section];
  v4 = [v3 count];

  return v4;
}

- (void)setWantsCurationForAllCollections:(BOOL)collections collectionsToDiff:(id)diff
{
  collectionsCopy = collections;
  v26 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  assetCollectionToSection = [_sectionCache assetCollectionToSection];
  allKeys = [assetCollectionToSection allKeys];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = allKeys;
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
        if ([v16 isCurated] != collectionsCopy || objc_msgSend(v16, "wantsCuration") != collectionsCopy)
        {

          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __74__PXPhotosDataSource_setWantsCurationForAllCollections_collectionsToDiff___block_invoke;
          v17[3] = &unk_1E774B368;
          v18 = v10;
          selfCopy = self;
          v20 = collectionsCopy;
          [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v18 collectionsToDiff:diffCopy changeBlock:v17];
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

- (void)setWantsCuration:(BOOL)curation forAssetCollection:(id)collection
{
  curationCopy = curation;
  v11[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if ([(PXPhotosDataSource *)self wantsCurationForAssetCollection:collectionCopy]!= curationCopy)
  {
    v11[0] = collectionCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PXPhotosDataSource_setWantsCuration_forAssetCollection___block_invoke;
    v8[3] = &unk_1E774B368;
    v8[4] = self;
    v9 = collectionCopy;
    v10 = curationCopy;
    [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:v7 changeBlock:v8];
  }
}

void __58__PXPhotosDataSource_setWantsCuration_forAssetCollection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mutableResultRecordForAssetCollection:*(a1 + 40)];
  [v2 setWantsCuration:*(a1 + 48)];
}

- (void)setCurationLength:(int64_t)length
{
  if (self->_curationLength != length)
  {
    v15 = v3;
    v16 = v4;
    self->_curationLength = length;
    _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
    assetCollectionToSection = [_sectionCache assetCollectionToSection];
    allKeys = [assetCollectionToSection allKeys];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__PXPhotosDataSource_setCurationLength___block_invoke;
    v11[3] = &unk_1E7749FF8;
    v12 = allKeys;
    selfCopy = self;
    lengthCopy = length;
    v10 = allKeys;
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

- (void)setKeyAsset:(id)asset forAssetCollection:(id)collection
{
  v14[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  collectionCopy = collection;
  v14[0] = collectionCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PXPhotosDataSource_setKeyAsset_forAssetCollection___block_invoke;
  v11[3] = &unk_1E774A1B8;
  v11[4] = self;
  v12 = collectionCopy;
  v13 = assetCopy;
  v9 = assetCopy;
  v10 = collectionCopy;
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

- (void)setBackgroundFetchOriginSection:(int64_t)section
{
  if (self->_backgroundFetchOriginSection != section)
  {
    self->_backgroundFetchOriginSection = section;
    self->_backgroundFetchOriginSectionChanged = 1;
    [(PXPhotosDataSource *)self _interruptBackgroundFetch];
  }
}

- (void)setReverseSortOrder:(BOOL)order
{
  if (self->_reverseSortOrder != order)
  {
    v14 = v3;
    v15 = v4;
    _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
    assetCollectionToSection = [_sectionCache assetCollectionToSection];
    allKeys = [assetCollectionToSection allKeys];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__PXPhotosDataSource_setReverseSortOrder___block_invoke;
    v11[3] = &unk_1E774B368;
    orderCopy = order;
    v11[4] = self;
    v12 = allKeys;
    v10 = allKeys;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v11];
  }
}

- (void)setSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (self->_sortDescriptors != descriptorsCopy)
  {
    if (self->_isBackgroundFetching && self->_needToStartBackgroundFetch && ![(NSMutableDictionary *)self->_resultRecordByAssetCollection count])
    {
      objc_storeStrong(&self->_sortDescriptors, descriptors);
    }

    else
    {
      _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
      assetCollectionToSection = [_sectionCache assetCollectionToSection];
      allKeys = [assetCollectionToSection allKeys];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__PXPhotosDataSource_setSortDescriptors___block_invoke;
      v10[3] = &unk_1E774A1B8;
      v10[4] = self;
      v11 = descriptorsCopy;
      v12 = allKeys;
      v9 = allKeys;
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

- (void)setFetchLimit:(unint64_t)limit
{
  if (self->_fetchLimit != limit)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__PXPhotosDataSource_setFetchLimit___block_invoke;
    v5[3] = &unk_1E77498A0;
    v5[4] = self;
    v5[5] = limit;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v5];
  }
}

- (void)setAllowedUUIDs:(id)ds provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  dsCopy = ds;
  collectionsCopy = collections;
  allowedUUIDs = self->_allowedUUIDs;
  if (allowedUUIDs != dsCopy && ([(NSSet *)allowedUUIDs isEqual:dsCopy]& 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__PXPhotosDataSource_setAllowedUUIDs_provideIncrementalChangeDetailsForAssetCollections___block_invoke;
    aBlock[3] = &unk_1E774C620;
    aBlock[4] = self;
    v9 = dsCopy;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    if ([(NSSet *)v9 count]&& self->_allowedUUIDs)
    {
      fetchedObjects = [(PHFetchResult *)self->_collectionListFetchResult fetchedObjects];
      [(PXPhotosDataSource *)self _cancelBackgroundFetchIfNeeded];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __89__PXPhotosDataSource_setAllowedUUIDs_provideIncrementalChangeDetailsForAssetCollections___block_invoke_2;
      v12[3] = &unk_1E774C2F0;
      v12[4] = self;
      v13 = v10;
      [(PXPhotosDataSource *)self _performManualChangesForAssetCollections:fetchedObjects collectionsToDiff:collectionsCopy changeBlock:v12];
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

- (void)setAllowedOIDs:(id)ds
{
  dsCopy = ds;
  v5 = self->_allowedOIDs;
  v6 = v5;
  if (v5 == dsCopy)
  {
  }

  else
  {
    v7 = [(NSSet *)v5 isEqual:dsCopy];

    if ((v7 & 1) == 0)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __37__PXPhotosDataSource_setAllowedOIDs___block_invoke;
      v8[3] = &unk_1E774C620;
      v8[4] = self;
      v9 = dsCopy;
      [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v8];
    }
  }
}

- (void)setCollectionListFetchResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (self->_collectionListFetchResult != resultCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__PXPhotosDataSource_setCollectionListFetchResult___block_invoke;
    v6[3] = &unk_1E774C620;
    v6[4] = self;
    v7 = resultCopy;
    [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:v6];
  }
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading
{
  loadingCopy = loading;
  if ([(NSMutableSet *)self->_pauseLibraryChangeDeliveryTokens containsObject:loadingCopy])
  {
    photoLibrary = [(PXPhotosDataSource *)self photoLibrary];
    [photoLibrary px_endPausingChanges:loadingCopy];

    [(NSMutableSet *)self->_pauseLibraryChangeDeliveryTokens removeObject:loadingCopy];
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

- (id)pauseChangeDeliveryAndBackgroundLoadingWithTimeout:(double)timeout identifier:(id)identifier
{
  v6 = fmax(timeout + timeout, 0.1);
  identifierCopy = identifier;
  photoLibrary = [(PXPhotosDataSource *)self photoLibrary];
  v9 = [photoLibrary px_beginPausingChangesWithTimeout:identifierCopy identifier:v6];

  [(NSMutableSet *)self->_pauseLibraryChangeDeliveryTokens addObject:v9];
  self->_pauseBackgroundFetchResultsDelivery = 1;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (timeout * 1000000000.0));
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__PXPhotosDataSource_pauseChangeDeliveryAndBackgroundLoadingWithTimeout_identifier___block_invoke;
  v16[3] = &unk_1E774B708;
  objc_copyWeak(&v19, &location);
  v11 = v9;
  v17 = v11;
  v18 = photoLibrary;
  v12 = photoLibrary;
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

- (void)pauseChangeDeliveryFor:(double)for identifier:(id)identifier
{
  identifierCopy = identifier;
  photoLibrary = [(PXPhotosDataSource *)self photoLibrary];
  v8 = [photoLibrary px_beginPausingChangesWithTimeout:identifierCopy identifier:{fmax(for + for, 1.0)}];

  v9 = dispatch_time(0, (for * 1000000000.0));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PXPhotosDataSource_pauseChangeDeliveryFor_identifier___block_invoke;
  v12[3] = &unk_1E774C620;
  v13 = photoLibrary;
  v14 = v8;
  v10 = v8;
  v11 = photoLibrary;
  dispatch_after(v9, MEMORY[0x1E69E96A0], v12);
}

- (void)unregisterChangeObserver:(id)observer
{
  observerCopy = observer;
  observersQueue = self->_observersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PXPhotosDataSource_unregisterChangeObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observersQueue, v7);
}

uint64_t __47__PXPhotosDataSource_unregisterChangeObserver___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 removeObject:v2];
}

- (void)registerChangeObserver:(id)observer
{
  observerCopy = observer;
  observersQueue = self->_observersQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PXPhotosDataSource_registerChangeObserver___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observersQueue, v7);
}

uint64_t __45__PXPhotosDataSource_registerChangeObserver___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observersQueue_copyChangeObserversForWriteIfNeeded];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 addObject:v2];
}

- (unint64_t)_cachedSectionForAssetCollection:(id)collection
{
  collectionCopy = collection;
  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  assetCollectionToSection = [_sectionCache assetCollectionToSection];

  v7 = [assetCollectionToSection objectForKeyedSubscript:collectionCopy];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (int64_t)estimatedAssetsCountWithEnrichmentState:(unsigned __int16)state
{
  stateCopy = state;
  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  v7 = _sectionCache;
  if (stateCopy <= 1)
  {
    if (!stateCopy)
    {
      estimatedAssetCountWithEnrichmentStateNotEnriched = [_sectionCache estimatedAssetCountWithEnrichmentStateNotEnriched];
      goto LABEL_12;
    }

    if (stateCopy == 1)
    {
      estimatedAssetCountWithEnrichmentStateNotEnriched = [_sectionCache estimatedAssetCountWithEnrichmentStateAssetMetadataOnly];
      goto LABEL_12;
    }

LABEL_13:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:1562 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (stateCopy == 2)
  {
    estimatedAssetCountWithEnrichmentStateNotEnriched = [_sectionCache estimatedAssetCountWithEnrichmentStateAssetMetadataAndScore];
    goto LABEL_12;
  }

  if (stateCopy == 3)
  {
    estimatedAssetCountWithEnrichmentStateNotEnriched = [_sectionCache estimatedAssetCountWithEnrichmentStateAssetMetadataAndScenesProcessed];
    goto LABEL_12;
  }

  if (stateCopy != 4)
  {
    goto LABEL_13;
  }

  estimatedAssetCountWithEnrichmentStateNotEnriched = [_sectionCache estimatedAssetCountWithEnrichmentStateComplete];
LABEL_12:
  v9 = estimatedAssetCountWithEnrichmentStateNotEnriched;

  return v9;
}

- (int64_t)numberOfSectionsWithEnrichmentState:(unsigned __int16)state
{
  stateCopy = state;
  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  v7 = _sectionCache;
  if (stateCopy <= 1)
  {
    if (!stateCopy)
    {
      numberOfEnrichmentStateNotEnrichedAssetCollections = [_sectionCache numberOfEnrichmentStateNotEnrichedAssetCollections];
      goto LABEL_12;
    }

    if (stateCopy == 1)
    {
      numberOfEnrichmentStateNotEnrichedAssetCollections = [_sectionCache numberOfEnrichmentStateAssetMetadataOnlyAssetCollections];
      goto LABEL_12;
    }

LABEL_13:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:1545 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (stateCopy == 2)
  {
    numberOfEnrichmentStateNotEnrichedAssetCollections = [_sectionCache numberOfEnrichmentStateAssetMetadataAndScoreAssetCollections];
    goto LABEL_12;
  }

  if (stateCopy == 3)
  {
    numberOfEnrichmentStateNotEnrichedAssetCollections = [_sectionCache numberOfEnrichmentStateAssetMetadataAndScenesProcessedAssetCollections];
    goto LABEL_12;
  }

  if (stateCopy != 4)
  {
    goto LABEL_13;
  }

  numberOfEnrichmentStateNotEnrichedAssetCollections = [_sectionCache numberOfEnrichmentStateCompleteAssetCollections];
LABEL_12:
  v9 = numberOfEnrichmentStateNotEnrichedAssetCollections;

  return v9;
}

- (int64_t)estimatedOtherCount
{
  if ([(PXPhotosDataSource *)self _isFiltering])
  {
    return 0;
  }

  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  estimatedOtherCount = [_sectionCache estimatedOtherCount];

  return estimatedOtherCount;
}

- (int64_t)estimatedVideosCount
{
  if ([(PXPhotosDataSource *)self _isFiltering])
  {
    return 0;
  }

  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  estimatedVideosCount = [_sectionCache estimatedVideosCount];

  return estimatedVideosCount;
}

- (int64_t)estimatedPhotosCount
{
  if ([(PXPhotosDataSource *)self _isFiltering])
  {
    return 0;
  }

  _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
  estimatedPhotosCount = [_sectionCache estimatedPhotosCount];

  return estimatedPhotosCount;
}

- (BOOL)_isFiltering
{
  filterPredicate = [(PXPhotosDataSource *)self filterPredicate];

  return filterPredicate || [(PXPhotosDataSource *)self libraryFilter]!= 0;
}

- (void)_adoptExistingAssetCollectionFetchResults:(id)results
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PXPhotosDataSource__adoptExistingAssetCollectionFetchResults___block_invoke;
  v3[3] = &unk_1E7744170;
  v3[4] = self;
  [results enumerateKeysAndObjectsUsingBlock:v3];
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

- (BOOL)_isResultTupleApplicable:(id)applicable forAssetCollection:(id)collection
{
  if (!applicable)
  {
    return 0;
  }

  applicableCopy = applicable;
  v7 = [(PXPhotosDataSource *)self _finalFilterPredicateForAssetCollection:collection];
  filterPredicate = [applicableCopy filterPredicate];

  if (v7 == filterPredicate)
  {
    v9 = 1;
  }

  else
  {
    v9 = [v7 isEqual:filterPredicate];
  }

  return v9;
}

- (id)_closestIndexPathToIndexPath:(id)path
{
  pathCopy = path;
  numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
  if (!numberOfSections)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v6 = numberOfSections;
  if ([pathCopy section] < numberOfSections)
  {
    v7 = -[PXPhotosDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", [pathCopy section]);
    if ([pathCopy item] < v7)
    {
      v8 = pathCopy;
      goto LABEL_8;
    }

    v10 = v7 < 1;
    v11 = v7 - 1;
    if (!v10)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:{objc_msgSend(pathCopy, "section")}];
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
  section = [pathCopy section];
  v14 = v6 - 1;
  if (v6 > 1)
  {
    v15 = section - 1;
    v16 = section + 1;
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
  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PXPhotosDataSource__observerInterestingAssetReferences__block_invoke;
  v8[3] = &unk_1E7744290;
  v8[4] = self;
  v4 = array;
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

- (void)_publishDidReceivePhotoLibraryChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXPhotosDataSource__publishDidReceivePhotoLibraryChange___block_invoke;
  v6[3] = &unk_1E7744290;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
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

- (void)_distributeChange:(id)change
{
  changeCopy = change;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __40__PXPhotosDataSource__distributeChange___block_invoke;
  v9 = &unk_1E7744290;
  selfCopy = self;
  v11 = changeCopy;
  v5 = changeCopy;
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

- (void)_didChange:(id)change
{
  if (self->_nestedCoalesceChanges < 1)
  {
    [(PXPhotosDataSource *)self _distributeChange:change];
  }

  else
  {
    [(NSMutableArray *)self->_coalescedChanges addObject:change];
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

- (id)_fetchTupleForAssetCollection:(id)collection calledOnClientQueue:(BOOL)queue isLimitedInitialFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  queueCopy = queue;
  v169 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
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
  selfCopy = self;
  aBlock[4] = self;
  v96 = collectionCopy;
  v98 = &v149;
  v99 = &v143;
  v100 = &v139;
  v101 = &v133;
  v107 = (options & 0x20) != 0;
  v102 = &v127;
  v103 = &v121;
  v108 = fetchCopy;
  v104 = &v115;
  v105 = &v112;
  v7 = v96;
  v106 = &v109;
  block = _Block_copy(aBlock);
  if (queueCopy)
  {
    block[2]();
  }

  else
  {
    clientQueue = [(PXPhotosDataSource *)self clientQueue];
    dispatch_sync(clientQueue, block);
  }

  selfCopy2 = self;
  v82 = v134[5];
  fetcher = [(PXPhotosDataSource *)self fetcher];
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
  if (fetchCopy && (v12 & 0x10000) != 0)
  {
LABEL_11:
    v79 = self->_emptyAssetsFetchResult;
LABEL_12:
    v73 = 0;
    goto LABEL_45;
  }

  if ((v12 & 8) != 0)
  {
    v79 = [fetcher fetchAssetsInContainer:v76 configuration:v122[5]];
    goto LABEL_12;
  }

  v13 = [v122[5] copy];
  [v13 setFilterPredicate:v128[5]];
  v79 = [fetcher fetchAssetsInContainer:v76 configuration:v13];
  if (v150[5])
  {
    fetchedObjectIDs = [(PHFetchResult *)v79 fetchedObjectIDs];
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    v91 = 0u;
    v16 = fetchedObjectIDs;
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
    photoLibrary = selfCopy->_photoLibrary;
    fetchType = [(PHFetchResult *)v79 fetchType];
    fetchPropertySets = [(PHFetchResult *)v79 fetchPropertySets];
    v25 = [v21 initWithOids:v15 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:1];

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
          uuid = [v31 uuid];
          if ([v156[5] containsObject:uuid])
          {
            [v27 addObject:uuid];
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
    v25 = [fetcher fetchAssetsInContainer:v76 configuration:v35];
    v36 = [(PHFetchResult *)v25 count];
    v73 = v36 < [(PHFetchResult *)v79 count];
    if (v144[5])
    {
      v37 = [MEMORY[0x1E695DFB8] orderedSetWithArray:?];
      v38 = [(PHFetchResult *)v25 px_fetchedObjectIDsSortedByUUIDs:v37];

      v39 = objc_alloc(MEMORY[0x1E69788E0]);
      v72 = selfCopy->_photoLibrary;
      fetchType2 = [(PHFetchResult *)v25 fetchType];
      fetchPropertySets2 = [(PHFetchResult *)v25 fetchPropertySets];
      v42 = [v39 initWithOids:v38 photoLibrary:v72 fetchType:fetchType2 fetchPropertySets:fetchPropertySets2 identifier:0 registerIfNeeded:1];

      v25 = v42;
    }

    v79 = v35;
    goto LABEL_43;
  }

  v73 = 0;
LABEL_44:

  selfCopy2 = selfCopy;
LABEL_45:
  v43 = ([v7 px_supportsFastCuration] & 1) != 0 || objc_msgSend(v116[5], "curationKind") == 3;
  v44 = !queueCopy || ((*(v140 + 24) | v43) & 1) != 0 || !selfCopy2->_isBackgroundFetching;
  v45 = selfCopy2->_options;
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
      if (queueCopy && ((*(v140 + 24) | v43) & 1) == 0)
      {
        v52 = PLUIGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v162 = selfCopy2;
          v163 = 2112;
          v164 = v7;
          _os_log_impl(&dword_1A3C1C000, v52, OS_LOG_TYPE_DEFAULT, "%@ fetching key assets for %@ on the main queue. This can block for a long time and should never happen.", buf, 0x16u);
        }

        selfCopy2 = selfCopy;
      }

      if ((selfCopy2->_options & 0x200000) != 0)
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

        v82 = [fetcher fetchAssetsInContainer:v76 configuration:*(*v53 + 40)];
      }

      if (v82)
      {
        goto LABEL_95;
      }

      v54 = PLUIGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v71 = selfCopy2->_options;
        *buf = 138412802;
        v162 = selfCopy2;
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
      v162 = selfCopy2;
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
    selfCopy2 = selfCopy;
    goto LABEL_95;
  }

  if ((v44 & 1) == 0)
  {
    v50 = PLUIGetLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v162 = selfCopy2;
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

    selfCopy2 = selfCopy;
    if (v51)
    {
      goto LABEL_89;
    }

    goto LABEL_95;
  }

  if (queueCopy)
  {
    v48 = selfCopy2->_options;
    if (((*(v140 + 24) | v43) & 1) == 0)
    {
      v49 = PLUIGetLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v162 = selfCopy2;
        v163 = 2112;
        v164 = v7;
        _os_log_impl(&dword_1A3C1C000, v49, OS_LOG_TYPE_DEFAULT, "%@ fetching curated assets for %@ on the main queue. This can block for a long time and should never happen.", buf, 0x16u);
      }

      selfCopy2 = selfCopy;
      v48 = selfCopy->_options;
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
    v47 = [fetcher fetchAssetsInContainer:v76 configuration:v116[5]];
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
      v88 = fetcher;
      v89 = v76;
      v90 = &v115;
      v46 = _Block_copy(v86);

      selfCopy2 = selfCopy;
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
    v69 = [fetcher fetchAssetsInContainer:v76 configuration:v68];

    v47 = v69;
    selfCopy2 = selfCopy;
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
    v162 = selfCopy2;
    v163 = 2112;
    v164 = v7;
    v165 = 2112;
    v166 = v76;
    _os_log_impl(&dword_1A3C1C000, v70, OS_LOG_TYPE_ERROR, "%@ failed to fetch curated assets for assetCollection:%@ assetContainer:%@", buf, 0x20u);
  }

  v47 = 0;
  selfCopy2 = selfCopy;
  if ((options & 0x20) != 0)
  {
    goto LABEL_78;
  }

LABEL_95:
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __94__PXPhotosDataSource__fetchTupleForAssetCollection_calledOnClientQueue_isLimitedInitialFetch___block_invoke_455;
  v83[3] = &unk_1E774B368;
  v83[4] = selfCopy2;
  v59 = v7;
  v84 = v59;
  v85 = v73;
  v60 = _Block_copy(v83);
  v61 = v60;
  if (queueCopy)
  {
    (*(v60 + 2))(v60);
  }

  else
  {
    clientQueue2 = [(PXPhotosDataSource *)selfCopy clientQueue];
    dispatch_sync(clientQueue2, v61);
  }

  v63 = [PXPhotosResultTuple alloc];
  reverseSortOrder = [v122[5] reverseSortOrder];
  filterPredicate = [v122[5] filterPredicate];
  v66 = [(PXPhotosResultTuple *)v63 initWithFetchResult:v79 fetchedWithReverseSortOrder:reverseSortOrder curatedFetchResult:v47 curatedRefetchCondition:v46 keyAssetsFetchResult:v82 filterPredicate:filterPredicate];

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

- (id)_assetContainerForAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetContainerProvider = self->_assetContainerProvider;
  if (!assetContainerProvider || (assetContainerProvider[2](assetContainerProvider, collectionCopy), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = collectionCopy;
  }

  return v6;
}

- (id)_fetcherConfigurationForAssetCollection:(id)collection useCase:(int64_t)case isLimitedInitialFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  collectionCopy = collection;
  switch(case)
  {
    case 3:
      v10 = +[PXPhotosDataSourceSettings sharedInstance];
      disableKeyAssetCuration = [v10 disableKeyAssetCuration];

      if (disableKeyAssetCuration)
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
  [(PXPhotosDataSource *)self _getFetchLimit:&v21 fetchWithReverseSortOrder:&v20 forAssetCollection:collectionCopy isLimitedInitialFetch:fetchCopy];
  v14 = objc_alloc_init(PXPhotosAssetsFetcherConfiguration);
  [(PXPhotosAssetsFetcherConfiguration *)v14 setCurationKind:curationKind];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setCurationLength:self->_curationLength];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setOptions:v13];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setLibraryFilter:self->_libraryFilter];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setFetchLimit:v21];
  v15 = [(PXPhotosDataSource *)self _finalFilterPredicateForAssetCollection:collectionCopy];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setFilterPredicate:v15];

  v16 = [(PXPhotosDataSource *)self _inclusionPredicateForAssetCollection:collectionCopy];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setInclusionPredicate:v16];

  sortDescriptors = [(PXPhotosDataSource *)self sortDescriptors];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setSortDescriptors:sortDescriptors];

  [(PXPhotosAssetsFetcherConfiguration *)v14 setIncludeUnsavedSyndicatedAssets:self->_canIncludeUnsavedSyndicatedAssets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setIncludeSharedCollectionAssets:self->_includeSharedCollectionAssets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setIncludeAllBurstAssets:self->_includeAllBurstAssets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setReverseSortOrder:v20];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setHideHiddenAssets:self->_hideHiddenAssets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setFetchPropertySets:self->_fetchPropertySets];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setReferencePersons:self->_filterPersons];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setCurationType:self->_curationType];
  referenceAsset = [(PXPhotosDataSource *)self referenceAsset];
  [(PXPhotosAssetsFetcherConfiguration *)v14 setReferenceAsset:referenceAsset];

  [(PXPhotosAssetsFetcherConfiguration *)v14 setIncludeOthersInSocialGroupAssets:self->_includeOthersInSocialGroupAssets];

  return v14;
}

- (void)_getFetchLimit:(unint64_t *)limit fetchWithReverseSortOrder:(BOOL *)order forAssetCollection:(id)collection isLimitedInitialFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  collectionCopy = collection;
  fetchLimit = [(PXPhotosDataSource *)self fetchLimit];
  if (![(PXPhotosDataSource *)self _reverseSortOrderForAssetCollection:collectionCopy])
  {
    reverseSortOrder = [(PXPhotosDataSource *)self reverseSortOrder];
    if (!fetchCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = +[PXPhotosDataSource limitedInitialFetchCountLimit];
    if (fetchLimit >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = fetchLimit;
    }

    if (fetchLimit)
    {
      fetchLimit = v14;
    }

    else
    {
      fetchLimit = v13;
    }

    if (reverseSortOrder)
    {
      keyAssetsAtEnd = 1;
    }

    else
    {
      keyAssetsAtEnd = [collectionCopy keyAssetsAtEnd];
    }

    0x40 = [PXPhotosAssetsFetcher _adjustedReverseSortOrderForCollection:collectionCopy reverseSortOrder:keyAssetsAtEnd fetcherOptions:(self->_options >> 15) & 0x10 | (self->_options >> 12) & 2 | (self->_options >> 8) & 1 | (self->_options >> 15) & 0x28 | (self->_options >> 16) & 0x40];
    v12 = collectionCopy;
    reverseSortOrder = 0x40;
    goto LABEL_15;
  }

  reverseSortOrder = 1;
  if (fetchCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = collectionCopy;
LABEL_15:
  *limit = fetchLimit;
  *order = reverseSortOrder;
}

- (void)_performManualReloadWithChangeBlock:(id)block
{
  blockCopy = block;
  [(PXPhotosDataSource *)self _willChange];
  blockCopy[2](blockCopy);

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
    _inaccurateAssetCollections = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
    [_inaccurateAssetCollections removeAllObjects];

    [(NSMutableDictionary *)self->_resultRecordByAssetCollection removeAllObjects];
  }

  [(PXPhotosDataSource *)self _publishReloadChange];
}

- (void)_performManualChangesForAssetCollections:(id)collections collectionsToDiff:(id)diff collectionsToChange:(id)change changeBlock:(id)block
{
  v92 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  diffCopy = diff;
  changeCopy = change;
  blockCopy = block;
  if ([collectionsCopy count])
  {
    if (self->_nestedCoalesceChanges >= 1 && [(NSMutableArray *)self->_coalescedChanges count])
    {
      [(PXPhotosDataSource *)self _performManualReloadWithChangeBlock:blockCopy];
      goto LABEL_72;
    }

    v63 = blockCopy;
    v67 = changeCopy;
    options = self->_options;
    selfCopy = self;
    versionIdentifier = [(PXPhotosDataSource *)self versionIdentifier];
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v15 = collectionsCopy;
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
          if ([(PXPhotosDataSource *)selfCopy sectionForAssetCollection:v20]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v85 objects:v91 count:16];
      }

      while (v17);
    }

    v76 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
    v62 = collectionsCopy;
    if ((options & 0x20) != 0)
    {
      v72 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
    }

    else
    {
      v72 = 0;
    }

    collectionListFetchResult = [(PXPhotosDataSource *)selfCopy collectionListFetchResult];
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
          v27 = [(PXPhotosDataSource *)selfCopy _assetsForAssetCollection:v26];
          [v76 setObject:v27 forKeyedSubscript:v26];
          if ((options & 0x20) != 0)
          {
            v28 = [(PXPhotosDataSource *)selfCopy _keyAssetsForAssetCollection:v26];
            [v72 setObject:v28 forKeyedSubscript:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v81 objects:v90 count:16];
      }

      while (v23);
    }

    p_isa = &selfCopy->super.isa;
    [(PXPhotosDataSource *)selfCopy _willChange];
    v63[2]();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    array = [MEMORY[0x1E695DF70] array];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v21;
    changeCopy = v67;
    v73 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v73)
    {
      v71 = *v78;
      v66 = diffCopy;
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
              if (diffCopy)
              {
                goto LABEL_38;
              }

LABEL_39:
              v35 = [p_isa[13] objectForKeyedSubscript:v31];
              fetchResultBeforeChanges = [v35 fetchResultBeforeChanges];
              if (fetchResultBeforeChanges == v34)
              {
                v70 = 0;
              }

              else
              {
                fetchResultBeforeChanges2 = [v35 fetchResultBeforeChanges];
                fetchedObjectIDs = [fetchResultBeforeChanges2 fetchedObjectIDs];
                fetchedObjectIDs2 = [v34 fetchedObjectIDs];
                if (fetchedObjectIDs == fetchedObjectIDs2)
                {
                  v70 = 0;
                }

                else
                {
                  v70 = [fetchedObjectIDs isEqual:fetchedObjectIDs2] ^ 1;
                }
              }

              fetchResultAfterChanges = [v35 fetchResultAfterChanges];
              if (fetchResultAfterChanges == v32)
              {
                v46 = 0;
              }

              else
              {
                fetchResultAfterChanges2 = [v35 fetchResultAfterChanges];
                fetchedObjectIDs3 = [fetchResultAfterChanges2 fetchedObjectIDs];
                fetchedObjectIDs4 = [v32 fetchedObjectIDs];
                if (fetchedObjectIDs3 == fetchedObjectIDs4)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = [fetchedObjectIDs3 isEqual:fetchedObjectIDs4] ^ 1;
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
              changeCopy = v67;
              p_isa = &selfCopy->super.isa;
              if (([v47 hasAnyChanges] & 1) == 0)
              {

                v41 = 0;
              }

              diffCopy = v66;
            }

            else
            {
              v32 = p_isa[65];
              if (!v34)
              {
                goto LABEL_37;
              }

LABEL_34:
              if (!diffCopy)
              {
                goto LABEL_39;
              }

LABEL_38:
              if ([diffCopy containsObject:v31])
              {
                goto LABEL_39;
              }

              v40 = objc_alloc(MEMORY[0x1E6978848]);
              v41 = [v40 initWithFetchResult:v34 currentFetchResult:v32 changedIdentifiers:MEMORY[0x1E695E0F0] unknownMergeEvent:1];
            }

            [dictionary setObject:v41 forKeyedSubscript:v31];
          }

          [v76 setObject:v32 forKeyedSubscript:v31];
          if ((options & 0x20) != 0)
          {
            v48 = [p_isa _keyAssetsForAssetCollection:v31];
            v49 = [v72 objectForKeyedSubscript:v31];
            if (v48 != v49)
            {
              [indexSet addIndex:{objc_msgSend(p_isa, "sectionForAssetCollection:", v31)}];
            }
          }

          if ([changeCopy containsObject:v31])
          {
            objectID = [v31 objectID];

            if (objectID)
            {
              objectID2 = [v31 objectID];
              [array addObject:objectID2];
            }
          }
        }

        v73 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v73);
    }

    if ([array count])
    {
      collectionListFetchResult2 = [p_isa collectionListFetchResult];
      v53 = collectionListFetchResult;
      v54 = [objc_alloc(MEMORY[0x1E6978848]) initWithFetchResult:collectionListFetchResult currentFetchResult:collectionListFetchResult2 changedIdentifiers:array unknownMergeEvent:0];

      collectionsCopy = v62;
    }

    else
    {
      v54 = 0;
      collectionsCopy = v62;
      v53 = collectionListFetchResult;
    }

    versionIdentifier2 = [p_isa versionIdentifier];
    [p_isa _sectionCache];
    v57 = v56 = p_isa;
    assetCollectionToSection = [v57 assetCollectionToSection];

    v59 = -[PXPhotosDataSourceChange initWithIncrementalChanges:assetCollectionChangeDetails:sectionsWithKeyAssetChanges:previousCollectionsCount:assetCollectionToSectionCache:originatingPhotoLibraryChange:fromIdentifier:toIdentifier:]([PXPhotosDataSourceChange alloc], "initWithIncrementalChanges:assetCollectionChangeDetails:sectionsWithKeyAssetChanges:previousCollectionsCount:assetCollectionToSectionCache:originatingPhotoLibraryChange:fromIdentifier:toIdentifier:", v54, dictionary, indexSet, [v56 _previousCollectionsCount], assetCollectionToSection, 0, versionIdentifier, versionIdentifier2);
    [v56 _didChange:v59];

    blockCopy = v63;
  }

LABEL_72:
}

- (void)performChanges:(id)changes
{
  ++self->_nestedCoalesceChanges;
  (*(changes + 2))(changes, a2);
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
      firstObject = [(NSMutableArray *)self->_coalescedChanges firstObject];
    }

    else
    {
      firstObject = objc_alloc_init(PXPhotosDataSourceChange);
    }

    v6 = firstObject;
    [(NSMutableArray *)self->_coalescedChanges removeAllObjects];
    [(PXPhotosDataSource *)self _distributeChange:v6];
  }
}

- (id)_assetOidsByAssetCollectionForAssetsAtIndexPathsInSet:(id)set
{
  setCopy = set;
  versionIdentifier = [(PXPhotosDataSource *)self versionIdentifier];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PXPhotosDataSource__assetOidsByAssetCollectionForAssetsAtIndexPathsInSet___block_invoke;
  v12[3] = &unk_1E77441F0;
  v14 = versionIdentifier;
  v15 = a2;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [setCopy enumerateItemIndexPathsUsingBlock:v12];

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

- (id)_mutableResultRecordForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(NSMutableDictionary *)self->_resultRecordByAssetCollection objectForKeyedSubscript:collectionCopy];
  v6 = [v5 copy];

  if (!v6)
  {
    v6 = [(PXPhotosDataSource *)self _createResultRecordForAssetCollection:collectionCopy];
  }

  [(NSMutableDictionary *)self->_resultRecordByAssetCollection setObject:v6 forKeyedSubscript:collectionCopy];

  return v6;
}

- (id)_resultRecordForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(NSMutableDictionary *)self->_resultRecordByAssetCollection objectForKeyedSubscript:collectionCopy];
  if (!v5)
  {
    v5 = [(PXPhotosDataSource *)self _createResultRecordForAssetCollection:collectionCopy];
    [(NSMutableDictionary *)self->_resultRecordByAssetCollection setObject:v5 forKeyedSubscript:collectionCopy];
  }

  return v5;
}

- (id)_createResultRecordForAssetCollection:(id)collection
{
  v4 = objc_alloc_init(PXPhotosMutableResultRecord);
  [(PXPhotosMutableResultRecord *)v4 setWantsCuration:[(PXPhotosDataSource *)self wantsCurationByDefault]];
  [(PXPhotosMutableResultRecord *)v4 setPreloadAssetTypeCounts:(self->_options >> 1) & 1];
  [(PXPhotosMutableResultRecord *)v4 setEnsureKeyAssetAtBeginning:(self->_options >> 14) & 1];
  [(PXPhotosMutableResultRecord *)v4 setCurationLength:[(PXPhotosDataSource *)self curationLength]];
  sortDescriptors = [(PXPhotosDataSource *)self sortDescriptors];
  [(PXPhotosMutableResultRecord *)v4 setSortDescriptors:sortDescriptors];

  return v4;
}

- (id)_inclusionPredicateForAssetCollection:(id)collection
{
  v3 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:collection];
  inclusionPredicate = [v3 inclusionPredicate];

  return inclusionPredicate;
}

- (id)_finalFilterPredicateForAssetCollection:(id)collection
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = [(PXPhotosDataSource *)self _filterPredicateForAssetCollection:collection];
  allowedUUIDs = [(PXPhotosDataSource *)self allowedUUIDs];
  if (allowedUUIDs)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid in %@", allowedUUIDs];
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

  allowedOIDs = [(PXPhotosDataSource *)self allowedOIDs];
  if (allowedOIDs)
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", allowedOIDs];
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

- (id)_allowedOIDsForAssetCollection:(id)collection
{
  if ([(PXPhotosDataSource *)self _areFiltersDisabledForAssetCollection:collection])
  {
    allowedOIDs = 0;
  }

  else
  {
    allowedOIDs = [(PXPhotosDataSource *)self allowedOIDs];
  }

  return allowedOIDs;
}

- (id)_allowedUUIDsForAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PXPhotosDataSource *)self _areFiltersDisabledForAssetCollection:collectionCopy])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PXPhotosDataSource *)self infoForAssetCollection:collectionCopy];
    allowedUUIDs = [v6 allowedUUIDs];
    v8 = allowedUUIDs;
    if (allowedUUIDs)
    {
      allowedUUIDs2 = allowedUUIDs;
    }

    else
    {
      allowedUUIDs2 = [(PXPhotosDataSource *)self allowedUUIDs];
    }

    v5 = allowedUUIDs2;
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
  allValues = [(NSMutableDictionary *)self->_infoForAssetCollection allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 UUIDFilterHidesSomeAssets] & 1) == 0)
        {
          allowedUUIDs = [v8 allowedUUIDs];

          if (!allowedUUIDs)
          {
            continue;
          }
        }

        v2 = 1;
        goto LABEL_15;
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)setAllowedUUIDs:(id)ds manualOrderUUIDs:(id)iDs forAssetCollections:(id)collections
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  collectionsCopy = collections;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDataSource.m" lineNumber:746 description:{@"%s must be called on the main thread", "-[PXPhotosDataSource setAllowedUUIDs:manualOrderUUIDs:forAssetCollections:]"}];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = collectionsCopy;
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
        v19 = [dsCopy objectForKeyedSubscript:v17];
        [v18 setAllowedUUIDs:v19];

        v20 = [iDsCopy objectForKeyedSubscript:v17];
        [v18 setManualOrderUUIDs:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  [(PXPhotosDataSource *)self _restartBackgroundFetchWithAssetCollectionsToDiff:0];
}

- (id)_filterPredicateForAssetCollection:(id)collection
{
  v12[2] = *MEMORY[0x1E69E9840];
  if ([(PXPhotosDataSource *)self _areFiltersDisabledForAssetCollection:collection])
  {
    v4 = 0;
    goto LABEL_12;
  }

  basePredicate = [(PXPhotosDataSource *)self basePredicate];
  filterPredicate = [(PXPhotosDataSource *)self filterPredicate];
  v7 = filterPredicate;
  if (basePredicate && filterPredicate)
  {
    v8 = objc_alloc(MEMORY[0x1E696AB28]);
    v12[0] = basePredicate;
    v12[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v4 = [v8 initWithType:1 subpredicates:v9];
  }

  else
  {
    if (basePredicate)
    {
      v10 = basePredicate;
    }

    else
    {
      if (!filterPredicate)
      {
        v4 = 0;
        goto LABEL_11;
      }

      v10 = filterPredicate;
    }

    v4 = v10;
  }

LABEL_11:

LABEL_12:

  return v4;
}

- (BOOL)_reverseSortOrderForAssetCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PXPhotosDataSource *)self fetchLimit])
  {
    keyAssetsAtEnd = [collectionCopy keyAssetsAtEnd];
  }

  else
  {
    keyAssetsAtEnd = 0;
  }

  return keyAssetsAtEnd;
}

- (unint64_t)_assetCollectionFetchStatus:(id)status
{
  statusCopy = status;
  _inaccurateAssetCollections = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
  if (![_inaccurateAssetCollections count])
  {

    goto LABEL_7;
  }

  _inaccurateAssetCollections2 = [(PXPhotosDataSource *)self _inaccurateAssetCollections];
  v7 = [_inaccurateAssetCollections2 containsObject:statusCopy];

  if (!v7)
  {
LABEL_7:
    v10 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:statusCopy];
    if ([v10 wantsCuration] && (objc_msgSend(statusCopy, "px_supportsFastCuration") & 1) == 0)
    {
      exposedFetchResult = [v10 exposedFetchResult];
      if (exposedFetchResult)
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

- (BOOL)isSectionConsideredAccurate:(int64_t)accurate
{
  v4 = [(PHFetchResult *)self->_collectionListFetchResult objectAtIndexedSubscript:accurate];
  v5 = [(PXPhotosDataSource *)self _assetCollectionFetchStatus:v4];
  if (v5 == 2)
  {
    v6 = [(PXPhotosDataSource *)self _resultRecordForAssetCollection:v4];
    exposedFetchResult = [v6 exposedFetchResult];
    v8 = exposedFetchResult != 0;
  }

  else
  {
    v8 = v5 == 3;
  }

  return v8;
}

- (void)_enumerateChangeObserversWithBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v9++));
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
  numberOfSections = [(PXPhotosDataSource *)self numberOfSections];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfSections];
  if (numberOfSections >= 1)
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
      exposedFetchResult = [v9 exposedFetchResult];
      v11 = exposedFetchResult;
      if (exposedFetchResult)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(exposedFetchResult, "count")}];
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

      if (numberOfSections == ++v5)
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
  v18 = [v16 stringWithFormat:@"<%@ sections:%ld sectionCounts:[%@]>", v17, numberOfSections, v15];

  return v18;
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary px_unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PXPhotosDataSource;
  [(PXPhotosDataSource *)&v3 dealloc];
}

- (void)_initResultRecordsWithOldOptions:(unint64_t)options newOptions:(unint64_t)newOptions
{
  if ((options & newOptions & 0x20) != 0 && ((options >> 4) & 1) != ((newOptions >> 4) & 1))
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

- (id)_createDataSourceWithAssetsCollections:(id)collections existingAssetCollectionFetchResults:(id)results
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEB0];
  resultsCopy = results;
  collectionsCopy = collections;
  v9 = [v6 sortDescriptorWithKey:@"transientIdentifier" ascending:1];
  v18[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [collectionsCopy sortUsingDescriptors:v10];

  v11 = [MEMORY[0x1E6978760] transientCollectionListWithCollections:collectionsCopy title:0];

  v12 = MEMORY[0x1E6978650];
  collectionListFetchResult = [(PXPhotosDataSource *)self collectionListFetchResult];
  fetchOptions = [collectionListFetchResult fetchOptions];
  v15 = [v12 fetchCollectionsInCollectionList:v11 options:fetchOptions];

  v16 = [[PXPhotosDataSource alloc] initWithPhotosDataSource:self options:0];
  [(PXPhotosDataSource *)v16 setCollectionListFetchResult:v15];
  [(PXPhotosDataSource *)v16 _adoptExistingAssetCollectionFetchResults:resultsCopy];

  [(PXPhotosDataSource *)v16 setWantsCurationByDefault:0];

  return v16;
}

- (id)createDataSourceWithAssetsAtIndexPaths:(id)paths
{
  v4 = MEMORY[0x1E695DF70];
  pathsCopy = paths;
  v6 = objc_alloc_init(v4);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__PXPhotosDataSource_createDataSourceWithAssetsAtIndexPaths___block_invoke;
  v13[3] = &unk_1E77441A0;
  v13[4] = self;
  v14 = uUIDString;
  v15 = v6;
  v9 = v6;
  v10 = uUIDString;
  [pathsCopy enumerateItemIndexSetsUsingBlock:v13];

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

- (id)createDataSourceWithAssetsInSectionOfAsset:(id)asset usingNewTransientAssetCollection:(BOOL)collection
{
  collectionCopy = collection;
  assetCopy = asset;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (collectionCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    assetCollection = [assetCopy assetCollection];
    px_isRecentlyViewedCollection = [assetCollection px_isRecentlyViewedCollection];

    _sectionCache = [(PXPhotosDataSource *)self _sectionCache];
    assetCollections = [_sectionCache assetCollections];
    v14 = [assetCollections count];

    if (v14)
    {
      v15 = 0;
      do
      {
        if (assetCopy)
        {
          [assetCopy indexPath];
          if (v15 != *(&v35 + 1))
          {
            goto LABEL_13;
          }

          [assetCopy indexPath];
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
          v24 = __98__PXPhotosDataSource_createDataSourceWithAssetsInSectionOfAsset_usingNewTransientAssetCollection___block_invoke(uUIDString, v15, px_isRecentlyViewedCollection);
          v17 = [v23 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0 identifier:v24 photoLibrary:self->_photoLibrary];

          emptyAssetsFetchResult = [(PXPhotosDataSource *)self emptyAssetsFetchResult];
          [v7 setObject:emptyAssetsFetchResult forKeyedSubscript:v17];

          [v32 addObject:v17];
          goto LABEL_14;
        }

        v19 = v18;
        v20 = MEMORY[0x1E6978650];
        v21 = __98__PXPhotosDataSource_createDataSourceWithAssetsInSectionOfAsset_usingNewTransientAssetCollection___block_invoke(uUIDString, v15, px_isRecentlyViewedCollection);
        v22 = [v20 transientAssetCollectionWithAssetFetchResult:v19 title:0 identifier:v21];

        [v32 addObject:v22];
        [v7 setObject:v19 forKeyedSubscript:v22];

LABEL_14:
        ++v15;
        _sectionCache2 = [(PXPhotosDataSource *)self _sectionCache];
        assetCollections2 = [_sectionCache2 assetCollections];
        v28 = [assetCollections2 count];
      }

      while (v15 < v28);
    }
  }

  else
  {
    if (assetCopy)
    {
      [assetCopy indexPath];
      v29 = v33;
    }

    else
    {
      v29 = 0;
    }

    uUIDString = [(PXPhotosDataSource *)self assetCollectionForSection:v29];
    if (uUIDString)
    {
      [v32 addObject:uUIDString];
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

- (PXPhotosDataSource)initWithPhotosDataSource:(id)source options:(unint64_t)options
{
  sourceCopy = source;
  v42.receiver = self;
  v42.super_class = PXPhotosDataSource;
  v7 = [(PXPhotosDataSource *)&v42 init];
  if (v7)
  {
    photoLibrary = [sourceCopy photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;

    collectionListFetchResult = [sourceCopy collectionListFetchResult];
    collectionListFetchResult = v7->_collectionListFetchResult;
    v7->_collectionListFetchResult = collectionListFetchResult;

    containerCollection = [sourceCopy containerCollection];
    containerCollection = v7->_containerCollection;
    v7->_containerCollection = containerCollection;

    basePredicate = [sourceCopy basePredicate];
    basePredicate = v7->_basePredicate;
    v7->_basePredicate = basePredicate;

    filterPredicate = [sourceCopy filterPredicate];
    filterPredicate = v7->_filterPredicate;
    v7->_filterPredicate = filterPredicate;

    v7->_canIncludeUnsavedSyndicatedAssets = [sourceCopy canIncludeUnsavedSyndicatedAssets];
    v7->_includeSharedCollectionAssets = [sourceCopy includeSharedCollectionAssets];
    v7->_includeAllBurstAssets = [sourceCopy includeAllBurstAssets];
    v7->_includeOthersInSocialGroupAssets = [sourceCopy includeOthersInSocialGroupAssets];
    v7->_ignoreSharedLibraryFilters = [sourceCopy ignoreSharedLibraryFilters];
    sharedLibraryStatusProvider = [sourceCopy sharedLibraryStatusProvider];
    sharedLibraryStatusProvider = v7->_sharedLibraryStatusProvider;
    v7->_sharedLibraryStatusProvider = sharedLibraryStatusProvider;

    libraryFilterState = [sourceCopy libraryFilterState];
    libraryFilterState = v7->_libraryFilterState;
    v7->_libraryFilterState = libraryFilterState;

    v7->_libraryFilter = [sourceCopy libraryFilter];
    allowedUUIDs = [sourceCopy allowedUUIDs];
    allowedUUIDs = v7->_allowedUUIDs;
    v7->_allowedUUIDs = allowedUUIDs;

    allowedOIDs = [sourceCopy allowedOIDs];
    allowedOIDs = v7->_allowedOIDs;
    v7->_allowedOIDs = allowedOIDs;

    v26 = [*(sourceCopy + 10) mutableCopy];
    resultRecordByAssetCollection = v7->_resultRecordByAssetCollection;
    v7->_resultRecordByAssetCollection = v26;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    preparedChangeDetailsByAssetCollection = v7->_preparedChangeDetailsByAssetCollection;
    v7->_preparedChangeDetailsByAssetCollection = dictionary;

    v30 = [*(sourceCopy + 7) copy];
    hintIndexPathByAssetReferenceCache = v7->_hintIndexPathByAssetReferenceCache;
    v7->_hintIndexPathByAssetReferenceCache = v30;

    _inaccurateAssetCollections = [sourceCopy _inaccurateAssetCollections];
    v33 = [_inaccurateAssetCollections mutableCopy];
    inaccurateAssetCollections = v7->__inaccurateAssetCollections;
    v7->__inaccurateAssetCollections = v33;

    v35 = [*(sourceCopy + 15) mutableCopy];
    infoForAssetCollection = v7->_infoForAssetCollection;
    v7->_infoForAssetCollection = v35;

    v7->__previousCollectionsCount = [(PHFetchResult *)v7->_collectionListFetchResult count];
    v7->_fetchLimit = *(sourceCopy + 57);
    v37 = [*(sourceCopy + 58) copy];
    sortDescriptors = v7->_sortDescriptors;
    v7->_sortDescriptors = v37;

    v7->_reverseSortOrder = *(sourceCopy + 334);
    v7->_versionIdentifier = *(sourceCopy + 46);
    objc_storeStrong(&v7->_facesByAssetCache, *(sourceCopy + 29));
    objc_storeStrong(&v7->_weightByAssetCache, *(sourceCopy + 30));
    objc_storeStrong(&v7->_filterPersons, *(sourceCopy + 49));
    v7->_hideHiddenAssets = *(sourceCopy + 248);
    v7->_wantsCurationByDefault = *(sourceCopy + 335);
    objc_storeStrong(&v7->_fetchPropertySets, *(sourceCopy + 32));
    v7->_curationType = *(sourceCopy + 33);
    v7->_curationKind = *(sourceCopy + 34);
    v7->_curationLength = *(sourceCopy + 35);
    v7->_allowSlowFetchesOnClientQueue = *(sourceCopy + 338);
    objc_storeStrong(&v7->_clientQueue, *(sourceCopy + 60));
    v39 = [*(sourceCopy + 64) copy];
    assetContainerProvider = v7->_assetContainerProvider;
    v7->_assetContainerProvider = v39;

    objc_storeWeak(&v7->_parentDataSource, sourceCopy);
    v7->_options = options;
    -[PXPhotosDataSource _initResultRecordsWithOldOptions:newOptions:](v7, "_initResultRecordsWithOldOptions:newOptions:", [sourceCopy options], options);
    [(PXPhotosDataSource *)v7 _commonInit];
  }

  return v7;
}

- (PXPhotosDataSource)initWithPhotosDataSourceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v70.receiver = self;
  v70.super_class = PXPhotosDataSource;
  v6 = [(PXPhotosDataSource *)&v70 init];
  if (v6)
  {
    collectionListFetchResult = [configurationCopy collectionListFetchResult];
    containerCollection = [configurationCopy containerCollection];
    existingAssetCollectionFetchResults = [configurationCopy existingAssetCollectionFetchResults];
    existingKeyAssetsFetchResults = [configurationCopy existingKeyAssetsFetchResults];
    referenceAsset = [configurationCopy referenceAsset];
    obj = [configurationCopy filterPredicate];
    includeOthersInSocialGroupAssets = [configurationCopy includeOthersInSocialGroupAssets];
    sortDescriptors = [configurationCopy sortDescriptors];
    canIncludeUnsavedSyndicatedAssets = [configurationCopy canIncludeUnsavedSyndicatedAssets];
    includeSharedCollectionAssets = [configurationCopy includeSharedCollectionAssets];
    allowedUUIDs = [configurationCopy allowedUUIDs];
    allowedOIDs = [configurationCopy allowedOIDs];
    options = [configurationCopy options];
    filterPersons = [configurationCopy filterPersons];
    filterSocialGroup = [configurationCopy filterSocialGroup];
    hideHiddenAssets = [configurationCopy hideHiddenAssets];
    photoLibrary = [configurationCopy photoLibrary];
    v13 = photoLibrary;
    if (photoLibrary)
    {
      px_deprecated_appPhotoLibrary = photoLibrary;
    }

    else
    {
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    }

    v15 = px_deprecated_appPhotoLibrary;

    curationType = [configurationCopy curationType];
    reverseSortOrder = [configurationCopy reverseSortOrder];
    includeAllBurstAssets = [configurationCopy includeAllBurstAssets];
    if (allowedUUIDs && allowedOIDs)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PXPhotosDataSource.m" lineNumber:302 description:{@"It is invalid to combine allowedUUIDs with allowedOIDs, pick one."}];
    }

    clientQueue = [configurationCopy clientQueue];
    v17 = clientQueue;
    if (clientQueue)
    {
      v18 = containerCollection;
      v19 = clientQueue;
      clientQueue = v6->_clientQueue;
      v6->_clientQueue = v19;
    }

    else
    {
      v21 = MEMORY[0x1E69E96A0];
      v22 = MEMORY[0x1E69E96A0];
      clientQueue = v6->_clientQueue;
      v6->_clientQueue = v21;
      v18 = containerCollection;
    }

    objc_storeStrong(&v6->_photoLibrary, v15);
    objc_storeStrong(&v6->_collectionListFetchResult, collectionListFetchResult);
    objc_storeStrong(&v6->_containerCollection, v18);
    basePredicate = [configurationCopy basePredicate];
    basePredicate = v6->_basePredicate;
    v6->_basePredicate = basePredicate;

    objc_storeStrong(&v6->_filterPredicate, obj);
    v6->_includeOthersInSocialGroupAssets = includeOthersInSocialGroupAssets;
    objc_storeStrong(&v6->_sortDescriptors, sortDescriptors);
    v6->_canIncludeUnsavedSyndicatedAssets = canIncludeUnsavedSyndicatedAssets;
    v6->_includeSharedCollectionAssets = includeSharedCollectionAssets;
    v6->_ignoreSharedLibraryFilters = [configurationCopy ignoreSharedLibraryFilters];
    v25 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v15];
    sharedLibraryStatusProvider = v6->_sharedLibraryStatusProvider;
    v6->_sharedLibraryStatusProvider = v25;

    libraryFilterState = [configurationCopy libraryFilterState];
    libraryFilterState = v6->_libraryFilterState;
    v6->_libraryFilterState = libraryFilterState;

    v29 = v6->_libraryFilterState;
    if (v29)
    {
      viewMode = [(PXLibraryFilterState *)v29 viewMode];
    }

    else
    {
      viewMode = [configurationCopy libraryFilter];
    }

    v6->_libraryFilter = viewMode;
    objc_storeStrong(&v6->_allowedUUIDs, allowedUUIDs);
    objc_storeStrong(&v6->_allowedOIDs, allowedOIDs);
    objc_storeStrong(&v6->_referenceAsset, referenceAsset);
    objc_storeStrong(&v6->_filterPersons, filterPersons);
    objc_storeStrong(&v6->_filterSocialGroup, filterSocialGroup);
    v6->_hideHiddenAssets = hideHiddenAssets;
    fetchPropertySets = [configurationCopy fetchPropertySets];
    fetchPropertySets = v6->_fetchPropertySets;
    v6->_fetchPropertySets = fetchPropertySets;

    v6->_wantsCurationByDefault = [configurationCopy wantsCurationByDefault];
    v6->_curationType = curationType;
    v6->_curationKind = [configurationCopy curationKind];
    v6->_curationLength = 0;
    v6->_reverseSortOrder = reverseSortOrder;
    v6->_includeAllBurstAssets = includeAllBurstAssets;
    assetContainerProvider = [configurationCopy assetContainerProvider];
    v34 = [assetContainerProvider copy];
    assetContainerProvider = v6->_assetContainerProvider;
    v6->_assetContainerProvider = v34;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    resultRecordByAssetCollection = v6->_resultRecordByAssetCollection;
    v6->_resultRecordByAssetCollection = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    preparedChangeDetailsByAssetCollection = v6->_preparedChangeDetailsByAssetCollection;
    v6->_preparedChangeDetailsByAssetCollection = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    hintIndexPathByAssetReferenceCache = v6->_hintIndexPathByAssetReferenceCache;
    v6->_hintIndexPathByAssetReferenceCache = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    facesByAssetCache = v6->_facesByAssetCache;
    v6->_facesByAssetCache = dictionary4;

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    weightByAssetCache = v6->_weightByAssetCache;
    v6->_weightByAssetCache = dictionary5;

    v46 = [MEMORY[0x1E695DFA8] set];
    inaccurateAssetCollections = v6->__inaccurateAssetCollections;
    v6->__inaccurateAssetCollections = v46;

    v48 = [MEMORY[0x1E695DFA8] set];
    pauseLibraryChangeDeliveryTokens = v6->_pauseLibraryChangeDeliveryTokens;
    v6->_pauseLibraryChangeDeliveryTokens = v48;

    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
    infoForAssetCollection = v6->_infoForAssetCollection;
    v6->_infoForAssetCollection = dictionary6;

    v6->_options = options;
    [(PXPhotosDataSource *)v6 _incrementVersionIdentifier];
    if (existingAssetCollectionFetchResults)
    {
      [(PXPhotosDataSource *)v6 _adoptExistingAssetCollectionFetchResults:existingAssetCollectionFetchResults];
    }

    if (existingKeyAssetsFetchResults)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __60__PXPhotosDataSource_initWithPhotosDataSourceConfiguration___block_invoke;
      v68[3] = &unk_1E7744170;
      v69 = v6;
      [existingKeyAssetsFetchResults enumerateKeysAndObjectsUsingBlock:v68];
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
  backgroundFetchingGroup = [self backgroundFetchingGroup];
  v4 = dispatch_time(0, 120000000000);
  dispatch_group_wait(backgroundFetchingGroup, v4);

  kdebug_trace();
}

@end