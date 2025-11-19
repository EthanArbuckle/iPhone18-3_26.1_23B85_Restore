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
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, &DefaultsManagerKey);
  if (!v2)
  {
    v3 = objc_initWeak(&location, v1);

    v4 = objc_alloc(MEMORY[0x1E69BF270]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PHPhotoLibrary_PhotosUICore__px_localDefaults__block_invoke;
    v7[3] = &unk_1E7744030;
    objc_copyWeak(&v8, &location);
    v2 = [v4 initWithRetriableBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    objc_setAssociatedObject(v1, &DefaultsManagerKey, v2, 0x301);
  }

  objc_sync_exit(v1);

  v5 = [v2 objectValue];

  return v5;
}

- (id)px_virtualCollections
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, &UICollectionsKey);
  if (!v2)
  {
    v3 = objc_initWeak(&location, v1);

    v4 = objc_alloc(MEMORY[0x1E69BF270]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PHPhotoLibrary_PhotosUICore__px_virtualCollections__block_invoke;
    v7[3] = &unk_1E7744030;
    objc_copyWeak(&v8, &location);
    v2 = [v4 initWithRetriableBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    objc_setAssociatedObject(v1, &UICollectionsKey, v2, 0x301);
  }

  objc_sync_exit(v1);

  v5 = [v2 objectValue];

  return v5;
}

+ (id)px_appPhotoLibrary
{
  if (PFProcessIsLaunchedToExecuteTests() && PLIsSystemLibraryAccessProhibited())
  {
    v4 = [a1 px_appPhotoLibraryForTesting];
    if (!v4)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:a1 file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:302 description:@"Tests that depend on photo library singletons must provide an 'px_appPhotoLibraryForTesting'"];

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
      v4 = [v6 px_photoLibrary];
    }

    else if ([MEMORY[0x1E69789A8] isMultiLibraryModeEnabled])
    {
      v8 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_FAULT, "multi-library mode enabled, cannot provide the +sharedPhotoLibrary (may cause photos functionality to silently fail)", v10, 2u);
      }

      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E69789A8] sharedPhotoLibrary];
    }
  }

  return v4;
}

- (PXPhotoLibraryChangeDistributor)px_changeDistributor
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, &ChangeDistributorKey);
  if (!v2)
  {
    v2 = [[PXPhotoLibraryChangeDistributor alloc] initWithPhotoLibrary:v1];
    objc_setAssociatedObject(v1, &ChangeDistributorKey, v2, 0x301);
  }

  objc_sync_exit(v1);

  return v2;
}

- (id)px_rootAlbumCollectionList
{
  v3 = a1;
  objc_sync_enter(v3);
  v4 = objc_getAssociatedObject(v3, sel_px_rootAlbumCollectionList);
  if (!v4)
  {
    v5 = [v3 librarySpecificFetchOptions];
    v6 = objc_initWeak(&location, v3);

    v7 = objc_alloc(MEMORY[0x1E69BF270]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__PHPhotoLibrary_PhotosUICore__px_rootAlbumCollectionList__block_invoke;
    v12[3] = &unk_1E773DC98;
    objc_copyWeak(&v14, &location);
    v8 = v5;
    v13 = v8;
    v4 = [v7 initWithRetriableBlock:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    objc_setAssociatedObject(v3, sel_px_rootAlbumCollectionList, v4, 0x301);
    if (!v4)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v3 file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:670 description:@"Root Collection List not available"];
    }
  }

  objc_sync_exit(v3);

  v10 = [v4 objectValue];

  return v10;
}

- (id)px_collectionListWithLocalIdentifier:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 librarySpecificFetchOptions];
  v6 = MEMORY[0x1E6978760];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

  v8 = [v6 fetchCollectionListsWithLocalIdentifiers:v7 options:v5];

  v9 = [v8 firstObject];

  return v9;
}

- (id)px_collectionListWithTransientIdentifier:()PhotosUICore
{
  v15[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 px_virtualCollections];
  v14[0] = @"PXSharedAlbumsVirtualCollection";
  v6 = [v5 sharedAlbumsCollectionList];
  v15[0] = v6;
  v14[1] = @"PXSharedAlbumsAndActivityVirtualCollection";
  v7 = [v5 sharedAlbumsCollectionList];
  v15[1] = v7;
  v14[2] = @"PXMediaTypesVirtualCollection";
  v8 = [v5 mediaTypesCollectionList];
  v15[2] = v8;
  v14[3] = @"PXTransientCollectionIdentifierUtilities";
  v9 = [v5 utilitiesCollectionList];
  v15[3] = v9;
  v14[4] = @"PXBookmarksVirtualCollectionList";
  v10 = [v5 bookmarksCollectionList];
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = [v11 objectForKeyedSubscript:v4];

  return v12;
}

- (id)px_assetCollectionWithTransientIdentifier:()PhotosUICore
{
  v30[20] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [a1 px_virtualCollections];
  v29[0] = @"PXCollectionsVirtualCollection";
  v27 = [v4 collectionsCollection];
  v30[0] = v27;
  v29[1] = @"PXAllAlbumsVirtualCollection";
  v26 = [v4 allAlbumsCollection];
  v30[1] = v26;
  v29[2] = @"PXAllProjectsVirtualCollection";
  v25 = [v4 allProjectsCollection];
  v30[2] = v25;
  v29[3] = @"PXMomentsVirtualCollection";
  v24 = [v4 momentsCollection];
  v30[3] = v24;
  v29[4] = @"PXPhotosVirtualCollection";
  v23 = [v4 photosCollection];
  v30[4] = v23;
  v29[5] = @"PXPeopleVirtualCollection";
  v22 = [v4 peopleCollection];
  v30[5] = v22;
  v29[6] = @"PXTransientCollectionIdentifierMap";
  v21 = [v4 mapCollection];
  v30[6] = v21;
  v29[7] = @"PXBookmarksVirtualCollection";
  v20 = [v4 bookmarksCollection];
  v30[7] = v20;
  v29[8] = @"PXEventsVirtualCollection";
  v19 = [v4 eventsCollection];
  v30[8] = v19;
  v29[9] = @"PXTripsVirtualCollection";
  v18 = [v4 tripsCollection];
  v30[9] = v18;
  v29[10] = @"PXTransientCollectionIdentifierUtilities";
  v17 = [v4 utilitiesCollectionList];
  v30[10] = v17;
  v29[11] = @"PXMemoriesVirtualCollection";
  v16 = [v4 memoriesCollection];
  v30[11] = v16;
  v29[12] = @"PXCompleteMyMomentVirtualCollection";
  v5 = [v4 completeMyMomentCollection];
  v30[12] = v5;
  v29[13] = @"PXImportHistoryVirtualCollection";
  v6 = [v4 importHistoryCollection];
  v30[13] = v6;
  v29[14] = @"PXSharedActivityVirtualCollection";
  v7 = [v4 sharedActivityCollection];
  v30[14] = v7;
  v29[15] = @"PXContentSyndicationVirtualCollection";
  v8 = [v4 contentSyndicationCollection];
  v30[15] = v8;
  v29[16] = @"PXFeaturedPhotosVirtualCollection";
  v9 = [v4 featuredPhotosCollection];
  v30[16] = v9;
  v29[17] = @"PXRecentlyViewedVirtualCollection";
  v10 = [v4 recentlyViewedCollection];
  v30[17] = v10;
  v29[18] = @"PXRecentlyEditedVirtualCollection";
  v11 = [v4 recentlyEditedCollection];
  v30[18] = v11;
  v29[19] = @"PXRecentlySharedVirtualCollection";
  v12 = [v4 recentlySharedCollection];
  v30[19] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:20];

  v14 = [v13 objectForKeyedSubscript:v28];

  return v14;
}

- (id)px_memoryWithLocalIdentifier:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 librarySpecificFetchOptions];
  [v5 setIncludePendingMemories:1];
  [v5 setIncludeLocalMemories:1];
  [v5 setIncludeStoryMemories:1];
  v6 = MEMORY[0x1E69788F0];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

  v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:v5];

  v9 = [v8 firstObject];

  return v9;
}

- (id)px_assetCollectionWithLocalIdentifier:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 librarySpecificFetchOptions];
  [v5 setIncludePlacesSmartAlbum:1];
  [v5 setIncludeDuplicatesAlbums:1];
  [v5 setIncludeUserSmartAlbums:1];
  [v5 setIncludeAllPhotosSmartAlbum:1];
  [v5 setIncludeRecentlyEditedSmartAlbum:1];
  [v5 setIncludeScreenRecordingsSmartAlbum:1];
  [v5 setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
  [v5 setIncludeProResSmartAlbum:1];
  [v5 setIncludePendingMemories:1];
  [v5 setIncludeLocalMemories:1];
  [v5 setIncludeStoryMemories:1];
  v6 = MEMORY[0x1E6978650];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

  v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:v5];

  v9 = [v8 firstObject];

  return v9;
}

- (id)px_utilityCollectionWithType:()PhotosUICore
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  objc_sync_enter(v5);
  v6 = objc_getAssociatedObject(v5, sel_px_utilityCollectionWithType_);
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    objc_setAssociatedObject(v5, sel_px_utilityCollectionWithType_, v6, 0x301);
    if (!v6)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v5 file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:556 description:@"Utility Collections not available"];

      v6 = 0;
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = [v5 librarySpecificFetchOptions];
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v9 setInternalSortDescriptors:v11];

    v8 = [objc_alloc(MEMORY[0x1E6978B10]) initWithType:a3 fetchOptions:v9];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3];
    [v6 setObject:v8 forKeyedSubscript:v12];
  }

  objc_sync_exit(v5);

  return v8;
}

- (id)px_assetCollectionForSmartAlbumWithSubtype:()PhotosUICore
{
  if (a3 <= 200)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"subtype > PHAssetCollectionSubtypeSmartAlbumGeneric"}];
  }

  v5 = [a1 librarySpecificFetchOptions];
  [v5 setIncludePlacesSmartAlbum:a3 == 1000000203];
  [v5 setIncludeUserSmartAlbums:a3 == 1000000204];
  [v5 setIncludeAllPhotosSmartAlbum:a3 == 1000000205];
  [v5 setIncludeRecentlyEditedSmartAlbum:a3 == 1000000206];
  [v5 setIncludeScreenRecordingsSmartAlbum:a3 == 220];
  [v5 setIncludeSharedLibrarySharingSuggestionsSmartAlbum:a3 == 1000000214];
  [v5 setIncludeProResSmartAlbum:a3 == 1000000211];
  [v5 setIncludeDuplicatesAlbums:a3 == 1000000212];
  v6 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:2 subtype:a3 options:v5];
  v7 = [v6 firstObject];

  return v7;
}

- (id)px_fetchAssetForSuggestionWithLocalIdentifier:()PhotosUICore
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 librarySpecificFetchOptions];
  [v5 setIncludeGuestAssets:1];
  v6 = MEMORY[0x1E6978650];
  v17[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v8 = [v6 fetchAssetCollectionsWithLocalIdentifiers:v7 options:v5];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v9 options:v5];
    v11 = [v10 firstObject];
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

    v11 = 0;
  }

  return v11;
}

- (id)px_fetchObjectWithLocalIdentifier:()PhotosUICore
{
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:0];
  v3 = [a1 px_fetchObjectsWithLocalIdentifiers:v2 wantsDefaultPredicates:0];
  v4 = [v3 firstObject];

  return v4;
}

- (id)px_fetchObjectsWithLocalIdentifiers:()PhotosUICore wantsDefaultPredicates:
{
  v6 = a3;
  v7 = [v6 firstObject];
  if (!v7)
  {
    v10 = [MEMORY[0x1E69788E0] emptyFetchResultWithPhotoLibrary:a1];
    goto LABEL_20;
  }

  v8 = [MEMORY[0x1E6978958] identifierCodeFromLocalIdentifier:v7];
  if (v8)
  {
    v9 = [MEMORY[0x1E69789A8] fetchTypeForLocalIdentifierCode:v8];
  }

  else
  {
    v9 = 0;
  }

  v11 = [a1 librarySpecificFetchOptions];
  [v11 setIsExclusivePredicate:a4 ^ 1u];
  if ([v9 isEqualToString:*MEMORY[0x1E6978DC0]])
  {
    v12 = [MEMORY[0x1E6978A08] queryForType:v9 withIdentifiers:v6 identifierKeyPath:@"personUUID" options:v11];
  }

  else
  {
    if (!v9)
    {
LABEL_18:
      v10 = 0;
      goto LABEL_19;
    }

    if ([v9 isEqualToString:*MEMORY[0x1E6978D98]])
    {
      [v11 setIncludeGuestAssets:1];
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E6978DB8]])
    {
      [v11 setIncludePendingMemories:1];
      [v11 setIncludeRejectedMemories:1];
      [v11 setIncludeLocalMemories:1];
      [v11 setIncludeStoryMemories:1];
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E6978DA0]])
    {
      [v11 setIncludePlacesSmartAlbum:1];
      [v11 setIncludeDuplicatesAlbums:1];
      [v11 setIncludeUserSmartAlbums:1];
      [v11 setIncludeAllPhotosSmartAlbum:1];
      [v11 setIncludeRecentlyEditedSmartAlbum:1];
      [v11 setIncludeScreenRecordingsSmartAlbum:1];
      [v11 setIncludeSharedLibrarySharingSuggestionsSmartAlbum:1];
      [v11 setIncludeProResSmartAlbum:1];
    }

    v12 = [MEMORY[0x1E6978A08] queryForType:v9 withLocalIdentifiers:v6 options:v11];
  }

  v13 = v12;
  if (!v12)
  {
    goto LABEL_18;
  }

  v10 = [v12 executeQuery];

LABEL_19:
LABEL_20:

  return v10;
}

- (BOOL)px_fetchHasSignificantSharedAlbumActivities
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-7776000.0];
  v3 = [a1 librarySpecificFetchOptions];
  [v3 setFetchLimit:6];
  v4 = [PXSharedAlbumsActivityEntry fetchCountOfRecentFeedActivitiesWithOptions:v3 newerThanDate:v2];
  v5 = v4 == [v3 fetchLimit];

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
  v4 = [a1 librarySpecificFetchOptions];
  [v4 setWantsIncrementalChangeDetails:0];
  [v4 setFetchLimit:10];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"importedByBundleIdentifier in %@", v3];
  [v4 setInternalPredicate:v5];

  v6 = PLUIGetLog();
  v7 = os_signpost_id_generate(v6);
  v8 = v6;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HasSignificantRegularAlbumCount", "", buf, 2u);
  }

  v10 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:1 subtype:2 options:v4];
  v11 = v9;
  v12 = v11;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_END, v7, "HasSignificantRegularAlbumCount", "", buf, 2u);
  }

  v13 = [v10 count];
  v14 = v13 == [v4 fetchLimit];

  return v14;
}

- (BOOL)px_fetchHasNoVisibleAssets
{
  v1 = [a1 librarySpecificFetchOptions];
  [v1 setWantsIncrementalChangeDetails:0];
  [v1 setShouldPrefetchCount:1];
  [v1 setFetchLimit:1];
  v2 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v1];
  v3 = [v2 count] == 0;

  return v3;
}

- (uint64_t)px_peoplePetsHomeVisibility
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, &PeoplePetsHomeVisibilitySourceKey);
  if (!v2)
  {
    v3 = objc_initWeak(&location, v1);

    v4 = objc_alloc(MEMORY[0x1E69BF270]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PHPhotoLibrary_PhotosUICore__px_peoplePetsHomeVisibility__block_invoke;
    v8[3] = &unk_1E7744030;
    objc_copyWeak(&v9, &location);
    v2 = [v4 initWithRetriableBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    objc_setAssociatedObject(v1, &PeoplePetsHomeVisibilitySourceKey, v2, 0x301);
  }

  objc_sync_exit(v1);

  v5 = [v2 objectValue];
  v6 = [v5 visibility];

  return v6;
}

- (uint64_t)px_areChangesPaused
{
  v1 = [a1 px_changeDistributor];
  v2 = [v1 areChangesPaused];

  return v2;
}

- (void)px_endPausingChanges:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 px_changeDistributor];
  [v5 endPausingChanges:v4];
}

- (id)px_beginPausingChangesWithTimeout:()PhotosUICore identifier:
{
  v6 = a4;
  v7 = [a1 px_changeDistributor];
  v8 = [v7 beginPausingChangesWithTimeout:v6 identifier:a2];

  return v8;
}

- (void)px_unregisterChangeObserver:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 px_changeDistributor];
  [v5 unregisterChangeObserver:v4];
}

- (void)px_registerChangeObserver:()PhotosUICore
{
  v4 = a3;
  v5 = [a1 px_changeDistributor];
  [v5 registerChangeObserver:v4];
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
  v5 = [a1 sharedMomentSharePhotoLibrary];
  v6 = [v5 librarySpecificFetchOptions];
  v7 = MEMORY[0x1E6978930];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, 0}];

  v9 = [v7 fetchAssetCollectionsWithLocalIdentifiers:v8 options:v6];

  v10 = [v9 firstObject];

  return v10;
}

+ (void)px_setAppPhotoLibraryForTesting:()PhotosUICore
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PHPhotoLibrary+PhotosUICore.m" lineNumber:343 description:@"The 'px_appPhotoLibraryForTesting' property is only available when testing"];
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
  v0 = [objc_opt_class() px_deprecated_appPhotoLibrary];
  if (([v0 isSystemPhotoLibrary] & 1) == 0)
  {
    v1 = objc_alloc(MEMORY[0x1E69789A8]);
    v2 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
    v3 = [v1 initWithPhotoLibraryURL:v2];

    v7 = 0;
    LOBYTE(v2) = [v3 openAndWaitWithUpgrade:0 error:&v7];
    v4 = v7;
    if ((v2 & 1) == 0)
    {
      v5 = PLUIGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unable to open photo library: %@", buf, 0xCu);
      }
    }

    v0 = v3;
  }

  return v0;
}

@end