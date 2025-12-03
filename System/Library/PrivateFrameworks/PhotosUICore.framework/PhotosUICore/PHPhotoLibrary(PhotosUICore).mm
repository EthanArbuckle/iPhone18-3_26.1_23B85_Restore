@interface PHPhotoLibrary(PhotosUICore)
+ (id)px_appPhotoLibrary;
+ (id)px_appPhotoLibraryForTesting;
+ (id)px_momentShareWithLocalIdentifier:()PhotosUICore;
+ (id)px_systemPhotoLibrary;
+ (id)px_transientIdentifierForWellKnownAssetCollectionName:()PhotosUICore;
+ (void)px_setAppPhotoLibraryForTesting:()PhotosUICore;
- (BOOL)px_fetchHasNoVisibleAssets;
- (BOOL)px_fetchHasSignificantRegularAlbumCount;
- (BOOL)px_fetchHasSignificantSharedAlbumActivities;
- (PXPhotoLibraryChangeDistributor)px_changeDistributor;
- (id)px_assetCollectionForSmartAlbumWithSubtype:()PhotosUICore;
- (id)px_assetCollectionWithLocalIdentifier:()PhotosUICore;
- (id)px_assetCollectionWithTransientIdentifier:()PhotosUICore;
- (id)px_beginPausingChangesWithTimeout:()PhotosUICore identifier:;
- (id)px_collectionListWithLocalIdentifier:()PhotosUICore;
- (id)px_collectionListWithTransientIdentifier:()PhotosUICore;
- (id)px_fetchAssetForSuggestionWithLocalIdentifier:()PhotosUICore;
- (id)px_fetchObjectWithLocalIdentifier:()PhotosUICore;
- (id)px_fetchObjectsWithLocalIdentifiers:()PhotosUICore wantsDefaultPredicates:;
- (id)px_localDefaults;
- (id)px_memoryWithLocalIdentifier:()PhotosUICore;
- (id)px_rootAlbumCollectionList;
- (id)px_utilityCollectionWithType:()PhotosUICore;
- (id)px_virtualCollections;
- (uint64_t)px_areChangesPaused;
- (uint64_t)px_peoplePetsHomeVisibility;
- (void)px_endPausingChanges:()PhotosUICore;
- (void)px_registerChangeObserver:()PhotosUICore;
- (void)px_unregisterChangeObserver:()PhotosUICore;
@end

@implementation PHPhotoLibrary(PhotosUICore)

- (id)px_localDefaults
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, &DefaultsManagerKey);
  if (!v2)
  {
    v3 = objc_initWeak(&location, selfCopy);

    v4 = objc_alloc(MEMORY[0x1E69BF270]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PHPhotoLibrary_PhotosUICore__px_localDefaults__block_invoke;
    v7[3] = &unk_1E7744030;
    objc_copyWeak(&v8, &location);
    v2 = [v4 initWithRetriableBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    objc_setAssociatedObject(selfCopy, &DefaultsManagerKey, v2, 0x301);
  }

  objc_sync_exit(selfCopy);

  objectValue = [v2 objectValue];

  return objectValue;
}

- (id)px_virtualCollections
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, &UICollectionsKey);
  if (!v2)
  {
    v3 = objc_initWeak(&location, selfCopy);

    v4 = objc_alloc(MEMORY[0x1E69BF270]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PHPhotoLibrary_PhotosUICore__px_virtualCollections__block_invoke;
    v7[3] = &unk_1E7744030;
    objc_copyWeak(&v8, &location);
    v2 = [v4 initWithRetriableBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    objc_setAssociatedObject(selfCopy, &UICollectionsKey, v2, 0x301);
  }

  objc_sync_exit(selfCopy);

  objectValue = [v2 objectValue];

  return objectValue;
}

+ (id)px_appPhotoLibrary
{
  if (PFProcessIsLaunchedToExecuteTests() && PLIsSystemLibraryAccessProhibited())
  {
    px_appPhotoLibraryForTesting = [self px_appPhotoLibraryForTesting];
    if (!px_appPhotoLibraryForTesting)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:302 description:@"Tests that depend on photo library singletons must provide an 'px_appPhotoLibraryForTesting'"];

      abort();
    }
  }

  else
  {
    if (px_appPhotoLibrary_onceToken != -1)
    {
      dispatch_once(&px_appPhotoLibrary_onceToken, &__block_literal_global_151129);
    }

    if (px_appPhotoLibrary_appProvidesPhotoLibrary == 1 && ([MEMORY[0x1E69DC668] sharedApplication], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      px_appPhotoLibraryForTesting = [v6 px_photoLibrary];
    }

    else if ([MEMORY[0x1E69789A8] isMultiLibraryModeEnabled])
    {
      v8 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_FAULT, "multi-library mode enabled, cannot provide the +sharedPhotoLibrary (may cause photos functionality to silently fail)", v10, 2u);
      }

      px_appPhotoLibraryForTesting = 0;
    }

    else
    {
      px_appPhotoLibraryForTesting = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
    }
  }

  return px_appPhotoLibraryForTesting;
}

- (PXPhotoLibraryChangeDistributor)px_changeDistributor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, &ChangeDistributorKey);
  if (!v2)
  {
    v2 = [[PXPhotoLibraryChangeDistributor alloc] initWithPhotoLibrary:selfCopy];
    objc_setAssociatedObject(selfCopy, &ChangeDistributorKey, v2, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v2;
}

- (id)px_rootAlbumCollectionList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = objc_getAssociatedObject(selfCopy, sel_px_rootAlbumCollectionList);
  if (!v4)
  {
    librarySpecificFetchOptions = [selfCopy librarySpecificFetchOptions];
    v6 = objc_initWeak(&location, selfCopy);

    v7 = objc_alloc(MEMORY[0x1E69BF270]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__PHPhotoLibrary_PhotosUICore__px_rootAlbumCollectionList__block_invoke;
    v12[3] = &unk_1E773DC98;
    objc_copyWeak(&v14, &location);
    v8 = librarySpecificFetchOptions;
    v13 = v8;
    v4 = [v7 initWithRetriableBlock:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    objc_setAssociatedObject(selfCopy, sel_px_rootAlbumCollectionList, v4, 0x301);
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:670 description:@"Root Collection List not available"];
    }
  }

  objc_sync_exit(selfCopy);

  objectValue = [v4 objectValue];

  return objectValue;
}

- (id)px_collectionListWithLocalIdentifier:()PhotosUICore
{
  v4 = a3;
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  v6 = MEMORY[0x1E6978760];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

  v8 = [v6 fetchCollectionListsWithLocalIdentifiers:v7 options:librarySpecificFetchOptions];

  firstObject = [v8 firstObject];

  return firstObject;
}

- (id)px_collectionListWithTransientIdentifier:()PhotosUICore
{
  v15[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  px_virtualCollections = [self px_virtualCollections];
  v14[0] = @"PXSharedAlbumsVirtualCollection";
  sharedAlbumsCollectionList = [px_virtualCollections sharedAlbumsCollectionList];
  v15[0] = sharedAlbumsCollectionList;
  v14[1] = @"PXSharedAlbumsAndActivityVirtualCollection";
  sharedAlbumsCollectionList2 = [px_virtualCollections sharedAlbumsCollectionList];
  v15[1] = sharedAlbumsCollectionList2;
  v14[2] = @"PXMediaTypesVirtualCollection";
  mediaTypesCollectionList = [px_virtualCollections mediaTypesCollectionList];
  v15[2] = mediaTypesCollectionList;
  v14[3] = @"PXTransientCollectionIdentifierUtilities";
  utilitiesCollectionList = [px_virtualCollections utilitiesCollectionList];
  v15[3] = utilitiesCollectionList;
  v14[4] = @"PXBookmarksVirtualCollectionList";
  bookmarksCollectionList = [px_virtualCollections bookmarksCollectionList];
  v15[4] = bookmarksCollectionList;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = [v11 objectForKeyedSubscript:v4];

  return v12;
}

- (id)px_assetCollectionWithTransientIdentifier:()PhotosUICore
{
  v30[20] = *MEMORY[0x1E69E9840];
  v28 = a3;
  px_virtualCollections = [self px_virtualCollections];
  v29[0] = @"PXCollectionsVirtualCollection";
  collectionsCollection = [px_virtualCollections collectionsCollection];
  v30[0] = collectionsCollection;
  v29[1] = @"PXAllAlbumsVirtualCollection";
  allAlbumsCollection = [px_virtualCollections allAlbumsCollection];
  v30[1] = allAlbumsCollection;
  v29[2] = @"PXAllProjectsVirtualCollection";
  allProjectsCollection = [px_virtualCollections allProjectsCollection];
  v30[2] = allProjectsCollection;
  v29[3] = @"PXMomentsVirtualCollection";
  momentsCollection = [px_virtualCollections momentsCollection];
  v30[3] = momentsCollection;
  v29[4] = @"PXPhotosVirtualCollection";
  photosCollection = [px_virtualCollections photosCollection];
  v30[4] = photosCollection;
  v29[5] = @"PXPeopleVirtualCollection";
  peopleCollection = [px_virtualCollections peopleCollection];
  v30[5] = peopleCollection;
  v29[6] = @"PXTransientCollectionIdentifierMap";
  mapCollection = [px_virtualCollections mapCollection];
  v30[6] = mapCollection;
  v29[7] = @"PXBookmarksVirtualCollection";
  bookmarksCollection = [px_virtualCollections bookmarksCollection];
  v30[7] = bookmarksCollection;
  v29[8] = @"PXEventsVirtualCollection";
  eventsCollection = [px_virtualCollections eventsCollection];
  v30[8] = eventsCollection;
  v29[9] = @"PXTripsVirtualCollection";
  tripsCollection = [px_virtualCollections tripsCollection];
  v30[9] = tripsCollection;
  v29[10] = @"PXTransientCollectionIdentifierUtilities";
  utilitiesCollectionList = [px_virtualCollections utilitiesCollectionList];
  v30[10] = utilitiesCollectionList;
  v29[11] = @"PXMemoriesVirtualCollection";
  memoriesCollection = [px_virtualCollections memoriesCollection];
  v30[11] = memoriesCollection;
  v29[12] = @"PXCompleteMyMomentVirtualCollection";
  completeMyMomentCollection = [px_virtualCollections completeMyMomentCollection];
  v30[12] = completeMyMomentCollection;
  v29[13] = @"PXImportHistoryVirtualCollection";
  importHistoryCollection = [px_virtualCollections importHistoryCollection];
  v30[13] = importHistoryCollection;
  v29[14] = @"PXSharedActivityVirtualCollection";
  sharedActivityCollection = [px_virtualCollections sharedActivityCollection];
  v30[14] = sharedActivityCollection;
  v29[15] = @"PXContentSyndicationVirtualCollection";
  contentSyndicationCollection = [px_virtualCollections contentSyndicationCollection];
  v30[15] = contentSyndicationCollection;
  v29[16] = @"PXFeaturedPhotosVirtualCollection";
  featuredPhotosCollection = [px_virtualCollections featuredPhotosCollection];
  v30[16] = featuredPhotosCollection;
  v29[17] = @"PXRecentlyViewedVirtualCollection";
  recentlyViewedCollection = [px_virtualCollections recentlyViewedCollection];
  v30[17] = recentlyViewedCollection;
  v29[18] = @"PXRecentlyEditedVirtualCollection";
  recentlyEditedCollection = [px_virtualCollections recentlyEditedCollection];
  v30[18] = recentlyEditedCollection;
  v29[19] = @"PXRecentlySharedVirtualCollection";
  recentlySharedCollection = [px_virtualCollections recentlySharedCollection];
  v30[19] = recentlySharedCollection;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:20];

  v14 = [v13 objectForKeyedSubscript:v28];

  return v14;
}

- (id)px_memoryWithLocalIdentifier:()PhotosUICore
{
  v4 = a3;
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setIncludeStoryMemories:1];
  v6 = MEMORY[0x1E69788F0];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

  v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:librarySpecificFetchOptions];

  firstObject = [v8 firstObject];

  return firstObject;
}

- (id)px_assetCollectionWithLocalIdentifier:()PhotosUICore
{
  v4 = a3;
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePlacesSmartAlbum:1];
  [librarySpecificFetchOptions setIncludeDuplicatesAlbums:1];
  [librarySpecificFetchOptions setIncludeUserSmartAlbums:1];
  [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
  [librarySpecificFetchOptions setIncludeRecentlyEditedSmartAlbum:1];
  [librarySpecificFetchOptions setIncludeScreenRecordingsSmartAlbum:1];
  [librarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
  [librarySpecificFetchOptions setIncludeProResSmartAlbum:1];
  [librarySpecificFetchOptions setIncludePendingMemories:1];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setIncludeStoryMemories:1];
  v6 = MEMORY[0x1E6978650];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

  v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:librarySpecificFetchOptions];

  firstObject = [v8 firstObject];

  return firstObject;
}

- (id)px_utilityCollectionWithType:()PhotosUICore
{
  v15[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_getAssociatedObject(selfCopy, sel_px_utilityCollectionWithType_);
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    objc_setAssociatedObject(selfCopy, sel_px_utilityCollectionWithType_, v6, 0x301);
    if (!v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:556 description:@"Utility Collections not available"];

      v6 = 0;
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    librarySpecificFetchOptions = [selfCopy librarySpecificFetchOptions];
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [librarySpecificFetchOptions setInternalSortDescriptors:v11];

    v8 = [objc_alloc(MEMORY[0x1E6978B10]) initWithType:a3 fetchOptions:librarySpecificFetchOptions];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
    [v6 setObject:v8 forKeyedSubscript:v12];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)px_assetCollectionForSmartAlbumWithSubtype:()PhotosUICore
{
  if (a3 <= 200)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"subtype > PHAssetCollectionSubtypeSmartAlbumGeneric"}];
  }

  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludePlacesSmartAlbum:a3 == 1000000203];
  [librarySpecificFetchOptions setIncludeUserSmartAlbums:a3 == 1000000204];
  [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:a3 == 1000000205];
  [librarySpecificFetchOptions setIncludeRecentlyEditedSmartAlbum:a3 == 1000000206];
  [librarySpecificFetchOptions setIncludeScreenRecordingsSmartAlbum:a3 == 220];
  [librarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:a3 == 1000000214];
  [librarySpecificFetchOptions setIncludeProResSmartAlbum:a3 == 1000000211];
  [librarySpecificFetchOptions setIncludeDuplicatesAlbums:a3 == 1000000212];
  v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:a3 options:librarySpecificFetchOptions];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)px_fetchAssetForSuggestionWithLocalIdentifier:()PhotosUICore
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v6 = MEMORY[0x1E6978650];
  v17[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:librarySpecificFetchOptions];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:firstObject options:librarySpecificFetchOptions];
    firstObject2 = [v10 firstObject];
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 138412546;
      v14 = v4;
      v15 = 2080;
      v16 = "[PHPhotoLibrary(PhotosUICore) px_fetchAssetForSuggestionWithLocalIdentifier:]";
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_FAULT, "Failed to fetch suggestion by localIdentifier: %@, %s", &v13, 0x16u);
    }

    firstObject2 = 0;
  }

  return firstObject2;
}

- (id)px_fetchObjectWithLocalIdentifier:()PhotosUICore
{
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:0];
  v3 = [self px_fetchObjectsWithLocalIdentifiers:v2 wantsDefaultPredicates:0];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)px_fetchObjectsWithLocalIdentifiers:()PhotosUICore wantsDefaultPredicates:
{
  v6 = a3;
  firstObject = [v6 firstObject];
  if (!firstObject)
  {
    executeQuery = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:self];
    goto LABEL_20;
  }

  v8 = [MEMORY[0x1E6978958] identifierCodeFromLocalIdentifier:firstObject];
  if (v8)
  {
    v9 = [MEMORY[0x1E69789A8] fetchTypeForLocalIdentifierCode:v8];
  }

  else
  {
    v9 = 0;
  }

  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIsExclusivePredicate:a4 ^ 1u];
  if ([v9 isEqualToString:*MEMORY[0x1E6978DC0]])
  {
    v12 = [MEMORY[0x1E6978A08] queryForType:v9 withIdentifiers:v6 identifierKeyPath:@"personUUID" options:librarySpecificFetchOptions];
  }

  else
  {
    if (!v9)
    {
LABEL_18:
      executeQuery = 0;
      goto LABEL_19;
    }

    if ([v9 isEqualToString:*MEMORY[0x1E6978D98]])
    {
      [librarySpecificFetchOptions setIncludeGuestAssets:1];
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E6978DB8]])
    {
      [librarySpecificFetchOptions setIncludePendingMemories:1];
      [librarySpecificFetchOptions setIncludeRejectedMemories:1];
      [librarySpecificFetchOptions setIncludeLocalMemories:1];
      [librarySpecificFetchOptions setIncludeStoryMemories:1];
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E6978DA0]])
    {
      [librarySpecificFetchOptions setIncludePlacesSmartAlbum:1];
      [librarySpecificFetchOptions setIncludeDuplicatesAlbums:1];
      [librarySpecificFetchOptions setIncludeUserSmartAlbums:1];
      [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
      [librarySpecificFetchOptions setIncludeRecentlyEditedSmartAlbum:1];
      [librarySpecificFetchOptions setIncludeScreenRecordingsSmartAlbum:1];
      [librarySpecificFetchOptions setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
      [librarySpecificFetchOptions setIncludeProResSmartAlbum:1];
    }

    v12 = [MEMORY[0x1E6978A08] queryForType:v9 withLocalIdentifiers:v6 options:librarySpecificFetchOptions];
  }

  v13 = v12;
  if (!v12)
  {
    goto LABEL_18;
  }

  executeQuery = [v12 executeQuery];

LABEL_19:
LABEL_20:

  return executeQuery;
}

- (BOOL)px_fetchHasSignificantSharedAlbumActivities
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-7776000.0];
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:6];
  v4 = [PXSharedAlbumsActivityEntry fetchCountOfRecentFeedActivitiesWithOptions:librarySpecificFetchOptions newerThanDate:v2];
  v5 = v4 == [librarySpecificFetchOptions fetchLimit];

  return v5;
}

- (BOOL)px_fetchHasSignificantRegularAlbumCount
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69BFF40];
  v17[0] = *MEMORY[0x1E69BFF18];
  v17[1] = v2;
  v17[2] = *MEMORY[0x1E69BFF58];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setFetchLimit:10];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"importedByBundleIdentifier in %@", v3];
  [librarySpecificFetchOptions setInternalPredicate:v5];

  v6 = PLUIGetLog();
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HasSignificantRegularAlbumCount", "", buf, 2u);
  }

  v10 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:1 subtype:2 options:librarySpecificFetchOptions];
  v11 = v9;
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_END, v7, "HasSignificantRegularAlbumCount", "", buf, 2u);
  }

  v13 = [v10 count];
  v14 = v13 == [librarySpecificFetchOptions fetchLimit];

  return v14;
}

- (BOOL)px_fetchHasNoVisibleAssets
{
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  [librarySpecificFetchOptions setFetchLimit:1];
  v2 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v3 = [v2 count] == 0;

  return v3;
}

- (uint64_t)px_peoplePetsHomeVisibility
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, &PeoplePetsHomeVisibilitySourceKey);
  if (!v2)
  {
    v3 = objc_initWeak(&location, selfCopy);

    v4 = objc_alloc(MEMORY[0x1E69BF270]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PHPhotoLibrary_PhotosUICore__px_peoplePetsHomeVisibility__block_invoke;
    v8[3] = &unk_1E7744030;
    objc_copyWeak(&v9, &location);
    v2 = [v4 initWithRetriableBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    objc_setAssociatedObject(selfCopy, &PeoplePetsHomeVisibilitySourceKey, v2, 0x301);
  }

  objc_sync_exit(selfCopy);

  objectValue = [v2 objectValue];
  visibility = [objectValue visibility];

  return visibility;
}

- (uint64_t)px_areChangesPaused
{
  px_changeDistributor = [self px_changeDistributor];
  areChangesPaused = [px_changeDistributor areChangesPaused];

  return areChangesPaused;
}

- (void)px_endPausingChanges:()PhotosUICore
{
  v4 = a3;
  px_changeDistributor = [self px_changeDistributor];
  [px_changeDistributor endPausingChanges:v4];
}

- (id)px_beginPausingChangesWithTimeout:()PhotosUICore identifier:
{
  v6 = a4;
  px_changeDistributor = [self px_changeDistributor];
  v8 = [px_changeDistributor beginPausingChangesWithTimeout:v6 identifier:a2];

  return v8;
}

- (void)px_unregisterChangeObserver:()PhotosUICore
{
  v4 = a3;
  px_changeDistributor = [self px_changeDistributor];
  [px_changeDistributor unregisterChangeObserver:v4];
}

- (void)px_registerChangeObserver:()PhotosUICore
{
  v4 = a3;
  px_changeDistributor = [self px_changeDistributor];
  [px_changeDistributor registerChangeObserver:v4];
}

+ (id)px_transientIdentifierForWellKnownAssetCollectionName:()PhotosUICore
{
  v9[6] = *MEMORY[0x1E69E9840];
  v8[0] = @"collections";
  v8[1] = @"import-history";
  v9[0] = @"PXCollectionsVirtualCollection";
  v9[1] = @"PXImportHistoryVirtualCollection";
  v8[2] = @"recently-edited";
  v8[3] = @"recently-shared";
  v9[2] = @"PXRecentlyEditedVirtualCollection";
  v9[3] = @"PXRecentlySharedVirtualCollection";
  v8[4] = @"recently-viewed";
  v8[5] = @"shared-with-you";
  v9[4] = @"PXRecentlyViewedVirtualCollection";
  v9[5] = @"PXContentSyndicationVirtualCollection";
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:v8 count:6];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (id)px_momentShareWithLocalIdentifier:()PhotosUICore
{
  v4 = a3;
  sharedMomentSharePhotoLibrary = [self sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [sharedMomentSharePhotoLibrary librarySpecificFetchOptions];
  v7 = MEMORY[0x1E6978930];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

  v9 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:librarySpecificFetchOptions];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (void)px_setAppPhotoLibraryForTesting:()PhotosUICore
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:343 description:@"The 'px_appPhotoLibraryForTesting' property is only available when testing"];
  }

  WeakRetained = objc_loadWeakRetained(&_appPhotoLibraryForTesting);

  v7 = PLUIGetLog();
  v8 = v7;
  if (!v5)
  {
    if (WeakRetained)
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v9 = objc_loadWeakRetained(&_appPhotoLibraryForTesting);
      v15 = 138412290;
      v16 = v9;
      v10 = "Clear app photo library for testing: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v9 = objc_loadWeakRetained(&_appPhotoLibraryForTesting);
      v15 = 138412290;
      v16 = v9;
      v10 = "Clear app photo library for testing: %@ (none existing)";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
    }

    v13 = 12;
    goto LABEL_15;
  }

  if (WeakRetained)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_loadWeakRetained(&_appPhotoLibraryForTesting);
      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v9;
      v10 = "Set app photo library for testing: %@ (nuking existing: %@)";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
LABEL_15:
      _os_log_impl(&dword_1A3C1C000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Set app photo library for testing: %@", &v15, 0xCu);
  }

LABEL_16:

  objc_storeWeak(&_appPhotoLibraryForTesting, v5);
}

+ (id)px_appPhotoLibraryForTesting
{
  WeakRetained = objc_loadWeakRetained(&_appPhotoLibraryForTesting);

  return WeakRetained;
}

+ (id)px_systemPhotoLibrary
{
  v10 = *MEMORY[0x1E69E9840];
  px_deprecated_appPhotoLibrary = [objc_opt_class() px_deprecated_appPhotoLibrary];
  if (([px_deprecated_appPhotoLibrary isSystemPhotoLibrary] & 1) == 0)
  {
    v1 = objc_alloc(MEMORY[0x1E69789A8]);
    systemPhotoLibraryURL = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
    v3 = [v1 initWithPhotoLibraryURL:systemPhotoLibraryURL];

    v7 = 0;
    LOBYTE(systemPhotoLibraryURL) = [v3 openAndWaitWithUpgrade:0 error:&v7];
    v4 = v7;
    if ((systemPhotoLibraryURL & 1) == 0)
    {
      v5 = PLUIGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unable to open photo library: %@", buf, 0xCu);
      }
    }

    px_deprecated_appPhotoLibrary = v3;
  }

  return px_deprecated_appPhotoLibrary;
}

@end