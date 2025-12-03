@interface PXPhotoKitVirtualCollections
+ (id)_makeTransientAssetCollectionWithRecentsKey:(id)key title:(id)title identifier:(id)identifier photoLibrary:(id)library configurationHandler:(id)handler;
+ (id)_virtualCollectionForType:(int64_t)type photoLibrary:(id)library;
- (PHAssetCollection)peopleCollection;
- (PHAssetCollection)prototypeCollection;
- (PHPhotoLibrary)photoLibrary;
- (PXPhotoKitVirtualCollections)initWithPhotoLibrary:(id)library;
- (id)featuredEventsCollectionsWithAssetFetchResult:(id)result;
- (id)featuredMemoriesCollectionsWithAssetFetchResult:(id)result;
- (id)featuredPeopleCollectionsWithAssetFetchResult:(id)result;
- (id)featuredTripsCollectionsWithAssetFetchResult:(id)result;
@end

@implementation PXPhotoKitVirtualCollections

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (id)featuredPeopleCollectionsWithAssetFetchResult:(id)result
{
  v4 = MEMORY[0x1E6978650];
  fetchedObjects = [result fetchedObjects];
  v6 = PXLocalizedStringFromTable(@"PXCollectionFeaturedPeopleCollectionTitle", @"LemonadeLocalizable");
  photoLibrary = [(PXPhotoKitVirtualCollections *)self photoLibrary];
  v8 = [v4 transientAssetCollectionWithAssets:fetchedObjects title:v6 identifier:@"PXTransientCollectionIdentifierFeaturedPeople" photoLibrary:photoLibrary];

  return v8;
}

- (id)featuredMemoriesCollectionsWithAssetFetchResult:(id)result
{
  v4 = MEMORY[0x1E6978650];
  fetchedObjects = [result fetchedObjects];
  v6 = PXLocalizedStringFromTable(@"PXCollectionFeaturedMemoriesCollectionTitle", @"LemonadeLocalizable");
  photoLibrary = [(PXPhotoKitVirtualCollections *)self photoLibrary];
  v8 = [v4 transientAssetCollectionWithAssets:fetchedObjects title:v6 identifier:@"PXTransientCollectionIdentifierFeaturedMemories" photoLibrary:photoLibrary];

  return v8;
}

- (id)featuredEventsCollectionsWithAssetFetchResult:(id)result
{
  v4 = MEMORY[0x1E6978650];
  fetchedObjects = [result fetchedObjects];
  v6 = PXLocalizedStringFromTable(@"PXCollectionFeaturedEventsCollectionTitle", @"LemonadeLocalizable");
  photoLibrary = [(PXPhotoKitVirtualCollections *)self photoLibrary];
  v8 = [v4 transientAssetCollectionWithAssets:fetchedObjects title:v6 identifier:@"PXTransientCollectionIdentifierFeaturedEvents" photoLibrary:photoLibrary];

  return v8;
}

- (id)featuredTripsCollectionsWithAssetFetchResult:(id)result
{
  v4 = MEMORY[0x1E6978650];
  fetchedObjects = [result fetchedObjects];
  v6 = PXLocalizedStringFromTable(@"PXCollectionFeaturedTripsCollectionTitle", @"LemonadeLocalizable");
  photoLibrary = [(PXPhotoKitVirtualCollections *)self photoLibrary];
  v8 = [v4 transientAssetCollectionWithAssets:fetchedObjects title:v6 identifier:@"PXTransientCollectionIdentifierFeaturedTrips" photoLibrary:photoLibrary];

  return v8;
}

- (PHAssetCollection)prototypeCollection
{
  v2 = MEMORY[0x1E6978650];
  photoLibrary = [(PXPhotoKitVirtualCollections *)self photoLibrary];
  v4 = [v2 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:@"Prototype" identifier:@"PXPrototypeVirtualCollection" photoLibrary:photoLibrary];

  return v4;
}

- (PHAssetCollection)peopleCollection
{
  photoLibrary = [(PXPhotoKitVirtualCollections *)self photoLibrary];
  v4 = PXLocalizedStringForPersonOrPetAndVisibility(0, [photoLibrary px_peoplePetsHomeVisibility], @"PXCollectionPeopleTitle");

  v5 = MEMORY[0x1E6978650];
  photoLibrary2 = [(PXPhotoKitVirtualCollections *)self photoLibrary];
  v7 = [v5 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:v4 identifier:@"PXPeopleVirtualCollection" photoLibrary:photoLibrary2];

  return v7;
}

- (PXPhotoKitVirtualCollections)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v142.receiver = self;
  v142.super_class = PXPhotoKitVirtualCollections;
  v5 = [(PXPhotoKitVirtualCollections *)&v142 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, libraryCopy);
    v7 = MEMORY[0x1E6978650];
    v8 = PXLocalizedStringFromTable(@"PXCollectionCollectionsTitle", @"PhotosUICore");
    v9 = MEMORY[0x1E695E0F0];
    v10 = [v7 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:v8 identifier:@"PXCollectionsVirtualCollection" photoLibrary:libraryCopy];
    collectionsCollection = v6->_collectionsCollection;
    v6->_collectionsCollection = v10;

    v12 = MEMORY[0x1E6978650];
    v13 = PXLocalizedStringFromTable(@"PXCollectionPhotosTitle", @"PhotosUICore");
    v14 = [v12 transientAssetCollectionWithAssets:v9 title:v13 identifier:@"PXMomentsVirtualCollection" photoLibrary:libraryCopy];
    momentsCollection = v6->_momentsCollection;
    v6->_momentsCollection = v14;

    v16 = MEMORY[0x1E6978650];
    v17 = PXLocalizedStringFromTable(@"PXCollectionLibraryTitle", @"PhotosUICore");
    v18 = [v16 transientAssetCollectionWithAssets:v9 title:v17 identifier:@"PXPhotosVirtualCollection" photoLibrary:libraryCopy];
    photosCollection = v6->_photosCollection;
    v6->_photosCollection = v18;

    v20 = MEMORY[0x1E6978650];
    v21 = PXLocalizedStringFromTable(@"PXCollectionMemoriesTitle", @"PhotosUICore");
    v22 = [v20 transientAssetCollectionWithAssets:v9 title:v21 identifier:@"PXMemoriesVirtualCollection" photoLibrary:libraryCopy];
    memoriesCollection = v6->_memoriesCollection;
    v6->_memoriesCollection = v22;

    v24 = MEMORY[0x1E6978650];
    v25 = PXLocalizedStringFromTable(@"PXCollectionAllAlbumsTitle", @"PhotosUICore");
    v26 = [v24 transientAssetCollectionWithAssets:v9 title:v25 identifier:@"PXAllAlbumsVirtualCollection" photoLibrary:libraryCopy];
    allAlbumsCollection = v6->_allAlbumsCollection;
    v6->_allAlbumsCollection = v26;

    v28 = MEMORY[0x1E6978650];
    v29 = PXLocalizedStringFromTable(@"PXCollectionAllProjectsTitle", @"PhotosUICore");
    v30 = [v28 transientAssetCollectionWithAssets:v9 title:v29 identifier:@"PXAllProjectsVirtualCollection" photoLibrary:libraryCopy];
    allProjectsCollection = v6->_allProjectsCollection;
    v6->_allProjectsCollection = v30;

    v32 = MEMORY[0x1E6978650];
    v33 = PXLocalizedStringFromTable(@"PXCollectionAllSharedAlbumsTitle", @"PhotosUICore");
    v34 = [v32 transientAssetCollectionWithAssets:v9 title:v33 identifier:@"PXAllSharedAlbumsVirtualCollection" photoLibrary:libraryCopy];
    sharedAlbumsCollection = v6->_sharedAlbumsCollection;
    v6->_sharedAlbumsCollection = v34;

    v36 = MEMORY[0x1E6978650];
    v37 = PXLocalizedStringFromTable(@"PXCollectionSearchTitle", @"PhotosUICore");
    v38 = [v36 transientAssetCollectionWithAssets:v9 title:v37 identifier:@"PXPhotosSearchVirtualCollection" photoLibrary:libraryCopy];
    searchCollection = v6->_searchCollection;
    v6->_searchCollection = v38;

    v40 = MEMORY[0x1E6978650];
    v41 = PXLocalizedStringFromTable(@"PXCollectionBookmarksTitle", @"PhotosUICore");
    v42 = [v40 transientAssetCollectionWithAssets:v9 title:v41 identifier:@"PXBookmarksVirtualCollection" photoLibrary:libraryCopy];
    bookmarksCollection = v6->_bookmarksCollection;
    v6->_bookmarksCollection = v42;

    v44 = MEMORY[0x1E6978650];
    v45 = PXLocalizedStringFromTable(@"PXCollectionCompleteMyMomentTitle", @"PhotosUICore");
    v46 = [v44 transientAssetCollectionWithAssets:v9 title:v45 identifier:@"PXCompleteMyMomentVirtualCollection" photoLibrary:libraryCopy];
    completeMyMomentCollection = v6->_completeMyMomentCollection;
    v6->_completeMyMomentCollection = v46;

    v48 = MEMORY[0x1E6978650];
    v49 = PXLocalizedStringFromTable(@"PXCollectionSharedActivityTitle", @"PhotosUICore");
    v50 = [v48 transientAssetCollectionWithAssets:v9 title:v49 identifier:@"PXSharedActivityVirtualCollection" photoLibrary:libraryCopy];
    sharedActivityCollection = v6->_sharedActivityCollection;
    v6->_sharedActivityCollection = v50;

    v52 = MEMORY[0x1E6978650];
    v53 = PXLocalizedStringFromTable(@"PXCollectionEventsTitle", @"LemonadeLocalizable");
    v54 = [v52 transientAssetCollectionWithAssets:v9 title:v53 identifier:@"PXEventsVirtualCollection" photoLibrary:libraryCopy];
    eventsCollection = v6->_eventsCollection;
    v6->_eventsCollection = v54;

    v56 = MEMORY[0x1E6978650];
    v57 = PXLocalizedStringFromTable(@"PXCollectionTripsTitle", @"LemonadeLocalizable");
    v58 = [v56 transientAssetCollectionWithAssets:v9 title:v57 identifier:@"PXTripsVirtualCollection" photoLibrary:libraryCopy];
    tripsCollection = v6->_tripsCollection;
    v6->_tripsCollection = v58;

    v60 = MEMORY[0x1E6978650];
    v61 = PXLocalizedStringFromTable(@"PXCollectionFeaturedPhotosTitle", @"LemonadeLocalizable");
    v62 = [v60 transientAssetCollectionWithAssets:v9 title:v61 identifier:@"PXFeaturedPhotosVirtualCollection" photoLibrary:libraryCopy];
    featuredPhotosCollection = v6->_featuredPhotosCollection;
    v6->_featuredPhotosCollection = v62;

    v64 = MEMORY[0x1E6978650];
    v65 = PXLocalizedStringFromTable(@"PXCollectionWallpaperSuggestionsCollectionTitle", @"LemonadeLocalizable");
    v66 = [v64 transientAssetCollectionWithAssets:v9 title:v65 identifier:@"PXWallpaperSuggestionsVirtualCollection" photoLibrary:libraryCopy];
    wallpaperSuggestionsCollection = v6->_wallpaperSuggestionsCollection;
    v6->_wallpaperSuggestionsCollection = v66;

    v68 = MEMORY[0x1E6978650];
    v69 = PXLocalizedStringFromTable(@"PXCollectionMapCollectionTitle", @"LemonadeLocalizable");
    v70 = [v68 transientAssetCollectionWithAssets:v9 title:v69 identifier:@"PXTransientCollectionIdentifierMap" photoLibrary:libraryCopy];
    mapCollection = v6->_mapCollection;
    v6->_mapCollection = v70;

    v72 = MEMORY[0x1E6978760];
    v73 = PXLocalizedStringFromTable(@"PXCollectionBookmarksCollectionTitle", @"LemonadeLocalizable");
    v74 = [v72 transientCollectionListWithCollections:v9 title:v73 identifier:@"PXBookmarksVirtualCollectionList" photoLibrary:libraryCopy];
    bookmarksCollectionList = v6->_bookmarksCollectionList;
    v6->_bookmarksCollectionList = v74;

    v76 = MEMORY[0x1E6978760];
    v77 = PXLocalizedStringFromTable(@"PXOtherAlbumsOutlineTitle", @"PhotosUICore");
    v78 = [v76 transientCollectionListWithCollections:v9 title:v77 identifier:@"PXTransientCollectionIdentifierUtilities" photoLibrary:libraryCopy];
    utilitiesCollectionList = v6->_utilitiesCollectionList;
    v6->_utilitiesCollectionList = v78;

    v80 = MEMORY[0x1E6978760];
    v81 = PXLocalizedStringFromTable(@"PXCollectionSharedAlbumsTitle", @"PhotosUICore");
    v82 = [v80 transientCollectionListWithCollections:v9 title:v81 identifier:@"PXSharedAlbumsAndActivityVirtualCollection" photoLibrary:libraryCopy];
    sharedAlbumsAndActivityCollectionList = v6->_sharedAlbumsAndActivityCollectionList;
    v6->_sharedAlbumsAndActivityCollectionList = v82;

    v84 = MEMORY[0x1E6978760];
    v85 = PXLocalizedStringFromTable(@"PXSyncedFromMacOutlineTitle", @"PhotosUICore");
    v86 = [v84 transientCollectionListWithCollections:v9 title:v85 identifier:@"PXMacSyncedAlbumsVirtualCollection" photoLibrary:libraryCopy];
    macSyncedAlbumsCollectionList = v6->_macSyncedAlbumsCollectionList;
    v6->_macSyncedAlbumsCollectionList = v86;

    v88 = objc_alloc(MEMORY[0x1E69BF270]);
    v140[0] = MEMORY[0x1E69E9820];
    v140[1] = 3221225472;
    v140[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke;
    v140[3] = &unk_1E774BB70;
    v89 = libraryCopy;
    v141 = v89;
    v90 = [v88 initWithRetriableBlock:v140];
    importHistoryCollection = v6->_importHistoryCollection;
    v6->_importHistoryCollection = v90;

    v92 = objc_alloc(MEMORY[0x1E69BF270]);
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke_2;
    v138[3] = &unk_1E774BB70;
    v93 = v89;
    v139 = v93;
    v94 = [v92 initWithRetriableBlock:v138];
    recentlyViewedCollection = v6->_recentlyViewedCollection;
    v6->_recentlyViewedCollection = v94;

    v96 = objc_alloc(MEMORY[0x1E69BF270]);
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke_3;
    v136[3] = &unk_1E774BB70;
    v97 = v93;
    v137 = v97;
    v98 = [v96 initWithRetriableBlock:v136];
    recentlyEditedCollection = v6->_recentlyEditedCollection;
    v6->_recentlyEditedCollection = v98;

    v100 = objc_alloc(MEMORY[0x1E69BF270]);
    v134[0] = MEMORY[0x1E69E9820];
    v134[1] = 3221225472;
    v134[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke_4;
    v134[3] = &unk_1E774BB70;
    v101 = v97;
    v135 = v101;
    v102 = [v100 initWithRetriableBlock:v134];
    recentlySharedCollection = v6->_recentlySharedCollection;
    v6->_recentlySharedCollection = v102;

    v104 = objc_alloc(MEMORY[0x1E69BF270]);
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v132[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke_5;
    v132[3] = &unk_1E774BB70;
    v105 = v101;
    v133 = v105;
    v106 = [v104 initWithRetriableBlock:v132];
    contentSyndicationCollection = v6->_contentSyndicationCollection;
    v6->_contentSyndicationCollection = v106;

    v108 = objc_alloc(MEMORY[0x1E69BF270]);
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke_6;
    v130[3] = &unk_1E774BB70;
    v109 = v105;
    v131 = v109;
    v110 = [v108 initWithRetriableBlock:v130];
    sharedAlbumsCollectionList = v6->_sharedAlbumsCollectionList;
    v6->_sharedAlbumsCollectionList = v110;

    v112 = objc_alloc(MEMORY[0x1E69BF270]);
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke_7;
    v128[3] = &unk_1E774BB70;
    v113 = v109;
    v129 = v113;
    v114 = [v112 initWithRetriableBlock:v128];
    mediaTypesCollectionList = v6->_mediaTypesCollectionList;
    v6->_mediaTypesCollectionList = v114;

    v116 = objc_alloc(MEMORY[0x1E69BF270]);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke_8;
    v126[3] = &unk_1E774BB70;
    v117 = v113;
    v127 = v117;
    v118 = [v116 initWithRetriableBlock:v126];
    rootAlbumCollectionList = v6->_rootAlbumCollectionList;
    v6->_rootAlbumCollectionList = v118;

    v120 = objc_alloc(MEMORY[0x1E69BF270]);
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __53__PXPhotoKitVirtualCollections_initWithPhotoLibrary___block_invoke_9;
    v124[3] = &unk_1E774BB70;
    v125 = v117;
    v121 = [v120 initWithRetriableBlock:v124];
    rootProjectCollectionList = v6->_rootProjectCollectionList;
    v6->_rootProjectCollectionList = v121;
  }

  return v6;
}

+ (id)_virtualCollectionForType:(int64_t)type photoLibrary:(id)library
{
  libraryCopy = library;
  v7 = libraryCopy;
  if (type > 4)
  {
    if (type > 6)
    {
      switch(type)
      {
        case 7:
          v23 = MEMORY[0x1E6978760];
          px_standardLibrarySpecificFetchOptions = [libraryCopy px_standardLibrarySpecificFetchOptions];
          v24 = [v23 fetchRootProjectCollectionListWithOptions:px_standardLibrarySpecificFetchOptions];
          break;
        case 8:
          v25 = MEMORY[0x1E6978760];
          px_standardLibrarySpecificFetchOptions = [libraryCopy px_standardLibrarySpecificFetchOptions];
          v24 = [v25 fetchRootAlbumCollectionListWithOptions:px_standardLibrarySpecificFetchOptions];
          break;
        case 9:
          v8 = MEMORY[0x1E6978770];
          px_standardLibrarySpecificFetchOptions2 = [libraryCopy px_standardLibrarySpecificFetchOptions];
          px_standardLibrarySpecificFetchOptions = [v8 fetchAssetCollectionsWithType:12 subtype:102 options:px_standardLibrarySpecificFetchOptions2];

          v11 = PXLocalizedStringFromTable(@"PXCollectionSharedAlbumsTitle", @"PhotosUICore");
          firstObject = [MEMORY[0x1E6978760] transientCollectionListWithCollectionsFetchResult:px_standardLibrarySpecificFetchOptions title:v11 identifier:@"PXSharedAlbumsVirtualCollection"];
          goto LABEL_24;
        default:
          goto LABEL_26;
      }

      v11 = v24;
      firstObject = [v24 firstObject];
LABEL_24:
      v4 = firstObject;

      goto LABEL_25;
    }

    if (type != 5)
    {
      v17 = MEMORY[0x1E6978650];
      px_mediaTypeSmartAlbumSubtypes = [MEMORY[0x1E6978650] px_mediaTypeSmartAlbumSubtypes];
      px_standardLibrarySpecificFetchOptions = [v17 px_fetchAssetCollectionsWithAlbumSubtypes:px_mediaTypeSmartAlbumSubtypes photoLibrary:v7];

      v11 = PXLocalizedStringFromTable(@"PXMediaTypesAlbumsListTitle", @"PhotosUICore");
      firstObject = [MEMORY[0x1E6978760] transientCollectionListWithCollections:px_standardLibrarySpecificFetchOptions title:v11 identifier:@"PXMediaTypesVirtualCollection" photoLibrary:v7];
      goto LABEL_24;
    }

    px_standardLibrarySpecificFetchOptions = PXLocalizedStringFromTable(@"PXCollectionRecentlyViewedTitle", @"LemonadeLocalizable");
    v15 = @"additionalAttributes.lastViewedDate";
    v16 = @"PXRecentlyViewedVirtualCollection";
    goto LABEL_19;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      px_standardLibrarySpecificFetchOptions = PXLocalizedStringFromTable(@"PXCollectionRecentlyEditedTitle", @"LemonadeLocalizable");
      v15 = @"adjustmentTimestamp";
      v16 = @"PXRecentlyEditedVirtualCollection";
      v20 = &__block_literal_global_161350;
      v21 = px_standardLibrarySpecificFetchOptions;
      v22 = v7;
LABEL_20:
      v19 = [PXPhotoKitVirtualCollections _makeTransientAssetCollectionWithRecentsKey:v15 title:v21 identifier:v16 photoLibrary:v22 configurationHandler:v20];
      goto LABEL_21;
    }

    px_standardLibrarySpecificFetchOptions = PXLocalizedStringFromTable(@"PXCollectionRecentlySharedTitle", @"LemonadeLocalizable");
    v15 = @"lastSharedDate";
    v16 = @"PXRecentlySharedVirtualCollection";
LABEL_19:
    v21 = px_standardLibrarySpecificFetchOptions;
    v22 = v7;
    v20 = 0;
    goto LABEL_20;
  }

  if (type != 1)
  {
    if (type != 2)
    {
      goto LABEL_26;
    }

    px_standardLibrarySpecificFetchOptions = [libraryCopy px_standardLibrarySpecificFetchOptions];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"importSession != nil"];
    [px_standardLibrarySpecificFetchOptions setInternalPredicate:v13];

    [px_standardLibrarySpecificFetchOptions setWantsIncrementalChangeDetails:1];
    [px_standardLibrarySpecificFetchOptions setSortDescriptors:MEMORY[0x1E695E0F0]];
    v11 = [objc_alloc(MEMORY[0x1E6978AF8]) initWithFetchOptions:px_standardLibrarySpecificFetchOptions];
    [v11 setType:2];
    v14 = PXLocalizedStringFromTable(@"PXImportHistoryTitle", @"PhotosUICore");
    [v11 setTitle:v14];

    [v11 setIdentifier:@"PXImportHistoryVirtualCollection"];
    [v11 setKeyAssetsPosition:2];
    firstObject = [MEMORY[0x1E6978650] transientAssetCollectionWithOptions:v11];
    goto LABEL_24;
  }

  px_standardLibrarySpecificFetchOptions = PXContentSyndicationLocalizedSocialLayerTitle();
  v19 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:px_standardLibrarySpecificFetchOptions identifier:@"PXContentSyndicationVirtualCollection" photoLibrary:v7];
LABEL_21:
  v4 = v19;
LABEL_25:

LABEL_26:

  return v4;
}

+ (id)_makeTransientAssetCollectionWithRecentsKey:(id)key title:(id)title identifier:(id)identifier photoLibrary:(id)library configurationHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v12 = MEMORY[0x1E695DEE8];
  libraryCopy = library;
  identifierCopy = identifier;
  titleCopy = title;
  keyCopy = key;
  currentCalendar = [v12 currentCalendar];
  v18 = objc_opt_new();
  [v18 setDay:-14];
  v19 = [MEMORY[0x1E695DF00] now];
  v20 = [currentCalendar startOfDayForDate:v19];

  v21 = [currentCalendar dateByAddingComponents:v18 toDate:v20 options:0];
  px_standardLibrarySpecificFetchOptions = [libraryCopy px_standardLibrarySpecificFetchOptions];

  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", keyCopy, v21];
  [px_standardLibrarySpecificFetchOptions setInternalPredicate:v23];

  v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:keyCopy ascending:0];

  v29[0] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  [px_standardLibrarySpecificFetchOptions setInternalSortDescriptors:v25];

  [px_standardLibrarySpecificFetchOptions setWantsIncrementalChangeDetails:1];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, px_standardLibrarySpecificFetchOptions);
  }

  v26 = [objc_alloc(MEMORY[0x1E6978AF8]) initWithFetchOptions:px_standardLibrarySpecificFetchOptions];
  [v26 setType:2];
  [v26 setTitle:titleCopy];

  [v26 setIdentifier:identifierCopy];
  [v26 setKeyAssetsPosition:1];
  v27 = [MEMORY[0x1E6978650] transientAssetCollectionWithOptions:v26];

  return v27;
}

@end