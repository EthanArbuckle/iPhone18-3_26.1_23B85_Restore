@interface PHCollectionList(PhotosUICore)
+ (id)_isValidGazeRectPredicate;
+ (id)_otherAlbumAssetCollectionsIncludingRecentlyDeleted:()PhotosUICore includeHidden:includeDuplicates:includingSharedLibrary:includingDebugAlbums:;
+ (id)_otherAlbumsCollectionListWithDeletedCollection:()PhotosUICore withHiddenCollection:withDuplicatesCollection:;
+ (id)px_otherAlbumsCollectionListIncludeDeleted:()PhotosUICore includeHidden:includeDuplicates:;
+ (id)px_transientIdentifierForWellKnownFolderName:()PhotosUICore;
- (BOOL)px_fetchIsEmptyWithOptions:()PhotosUICore;
- (__CFString)px_navigationWellKnownName;
- (id)px_assetCollectionRepresentation;
- (id)px_localizedTitle;
- (uint64_t)px_isAllMacSyncedAlbumsFolder;
- (uint64_t)px_isBookmarksVirtualCollection;
- (uint64_t)px_isContainedInCollectionList:()PhotosUICore;
- (uint64_t)px_isContentSyndicationFolder;
- (uint64_t)px_isFeaturedPhotosCollection;
- (uint64_t)px_isMediaTypesFolder;
- (uint64_t)px_isSharedAlbumsAndActivityFolder;
- (uint64_t)px_isSharedAlbumsFolder;
- (uint64_t)px_isTransientCollectionWithIdentifier:()PhotosUICore;
- (uint64_t)px_isTripsVirtualCollection;
- (uint64_t)px_isUtilitiesFolder;
- (uint64_t)px_isWallpaperSuggestionsVirtualCollection;
@end

@implementation PHCollectionList(PhotosUICore)

- (uint64_t)px_isTripsVirtualCollection
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXTripsVirtualCollection"];

  return v2;
}

- (uint64_t)px_isTransientCollectionWithIdentifier:()PhotosUICore
{
  v4 = a3;
  if ([self isTransient])
  {
    transientIdentifier = [self transientIdentifier];
    v6 = [transientIdentifier isEqual:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)px_isContainedInCollectionList:()PhotosUICore
{
  v4 = a3;
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeRootFolder:1];
  selfCopy = self;
  do
  {
    v8 = [selfCopy isEqual:v4];
    if (v8)
    {
      break;
    }

    v9 = [MEMORY[0x1E6978760] fetchCollectionListsContainingCollection:selfCopy options:librarySpecificFetchOptions];
    firstObject = [v9 firstObject];

    selfCopy = firstObject;
  }

  while (firstObject);

  return v8;
}

- (uint64_t)px_isBookmarksVirtualCollection
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXBookmarksVirtualCollection"];

  return v2;
}

- (uint64_t)px_isWallpaperSuggestionsVirtualCollection
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXWallpaperSuggestionsVirtualCollection"];

  return v2;
}

- (uint64_t)px_isFeaturedPhotosCollection
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXFeaturedPhotosVirtualCollection"];

  return v2;
}

- (uint64_t)px_isAllMacSyncedAlbumsFolder
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXMacSyncedAlbumsVirtualCollection"];

  return v2;
}

- (uint64_t)px_isContentSyndicationFolder
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXContentSyndicationVirtualCollection"];

  return v2;
}

- (uint64_t)px_isUtilitiesFolder
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXTransientCollectionIdentifierUtilities"];

  return v2;
}

- (uint64_t)px_isMediaTypesFolder
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXMediaTypesVirtualCollection"];

  return v2;
}

- (uint64_t)px_isSharedAlbumsAndActivityFolder
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXSharedAlbumsAndActivityVirtualCollection"];

  return v2;
}

- (uint64_t)px_isSharedAlbumsFolder
{
  transientIdentifier = [self transientIdentifier];
  v2 = [transientIdentifier isEqualToString:@"PXSharedAlbumsVirtualCollection"];

  return v2;
}

- (BOOL)px_fetchIsEmptyWithOptions:()PhotosUICore
{
  v4 = [a3 copy];
  [v4 setWantsIncrementalChangeDetails:0];
  [v4 setFetchLimit:1];
  v5 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:self options:v4];
  v6 = [v5 count] == 0;

  return v6;
}

- (id)px_assetCollectionRepresentation
{
  if ([self px_isTopLevelFolder])
  {
    photoLibrary = [self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    allAlbumsCollection = [px_virtualCollections allAlbumsCollection];
LABEL_5:
    v5 = allAlbumsCollection;

    goto LABEL_7;
  }

  if ([self px_isProjectsFolder])
  {
    photoLibrary = [self photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    allAlbumsCollection = [px_virtualCollections allProjectsCollection];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (__CFString)px_navigationWellKnownName
{
  if ([self px_isMediaTypesFolder])
  {
    v2 = PXProgrammaticNavigationWellKnownNameMediaTypes;
LABEL_7:
    v3 = *v2;
    goto LABEL_8;
  }

  if ([self px_isSharedAlbumsAndActivityFolder])
  {
    v2 = PXProgrammaticNavigationWellKnownNameSharedAlbums;
    goto LABEL_7;
  }

  if ([self px_isTopLevelFolder])
  {
    v2 = PXProgrammaticNavigationWellKnownNameMyAlbums;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)px_localizedTitle
{
  if ([self px_isTopLevelFolder])
  {
    v2 = @"PXCollectionAlbumsTitle";
LABEL_5:
    localizedTitle = PXLocalizedStringFromTable(v2, @"LemonadeLocalizable");
    goto LABEL_7;
  }

  if ([self px_isProjectsFolder])
  {
    v2 = @"PXCollectionProjectsTitle";
    goto LABEL_5;
  }

  localizedTitle = [self localizedTitle];
LABEL_7:

  return localizedTitle;
}

+ (id)px_otherAlbumsCollectionListIncludeDeleted:()PhotosUICore includeHidden:includeDuplicates:
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (px_otherAlbumsCollectionListIncludeDeleted_includeHidden_includeDuplicates__onceToken != -1)
  {
    dispatch_once(&px_otherAlbumsCollectionListIncludeDeleted_includeHidden_includeDuplicates__onceToken, &__block_literal_global_840_196170);
  }

  v8 = [off_1E7721928 alloc];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{a4, v9}];
  v16[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v16[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v13 = [v8 initWithObjects:v12];

  v14 = [px_otherAlbumsCollectionListIncludeDeleted_includeHidden_includeDuplicates__otherAlbumsCollectionDictionary objectForKeyedSubscript:v13];
  if (!v14)
  {
    v14 = [objc_opt_class() _otherAlbumsCollectionListWithDeletedCollection:a3 withHiddenCollection:a4 withDuplicatesCollection:a5];
    [px_otherAlbumsCollectionListIncludeDeleted_includeHidden_includeDuplicates__otherAlbumsCollectionDictionary setObject:v14 forKeyedSubscript:v13];
  }

  return v14;
}

+ (id)_otherAlbumAssetCollectionsIncludingRecentlyDeleted:()PhotosUICore includeHidden:includeDuplicates:includingSharedLibrary:includingDebugAlbums:
{
  v116[1] = *MEMORY[0x1E69E9840];
  v12 = objc_opt_new();
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  if (a7 && PFOSVariantHasInternalUI())
  {
    v104 = a4;
    v14 = +[PXAlbumsDebugUISettings sharedInstance];
    showUtilitiesDebugAlbum = [v14 showUtilitiesDebugAlbum];

    if (showUtilitiesDebugAlbum)
    {
      librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(curationScore == 0.25)"];
      [librarySpecificFetchOptions setInternalPredicate:v17];

      v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v116[0] = v18;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:1];
      v20 = v19 = a3;
      [librarySpecificFetchOptions setSortDescriptors:v20];

      v21 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
      v22 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v21 title:@"Internal - Utilities" identifier:@"PXDebugAlbum"];
      [v12 addObject:v22];

      a3 = v19;
    }

    v23 = +[PXAlbumsDebugUISettings sharedInstance];
    showBestKeyFrameDebugAlbum = [v23 showBestKeyFrameDebugAlbum];

    if (showBestKeyFrameDebugAlbum)
    {
      librarySpecificFetchOptions2 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(playbackStyle == %d AND videoKeyFrameTimeScale != %d AND mediaAnalysisAttributes.mediaAnalysisVersion >= %llu)", 3, *(MEMORY[0x1E6960C70] + 8), 28];
      [librarySpecificFetchOptions2 setInternalPredicate:v26];

      v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v115 = v27;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
      v29 = v28 = a3;
      [librarySpecificFetchOptions2 setSortDescriptors:v29];

      v30 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions2];
      v31 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v30 title:@"Internal - Best Key Frame" identifier:@"PXDebugAlbum"];
      [v12 addObject:v31];

      a3 = v28;
    }

    v32 = +[PXAlbumsDebugUISettings sharedInstance];
    showDreamyDebugAlbum = [v32 showDreamyDebugAlbum];

    if (showDreamyDebugAlbum)
    {
      librarySpecificFetchOptions3 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions3 setIncludeAssetSourceTypes:16];
      v35 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v114 = v35;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
      v37 = v36 = a3;
      [librarySpecificFetchOptions3 setSortDescriptors:v37];

      v38 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions3];
      v39 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v38 title:@"Internal - Dreamy" identifier:@"PXDebugAlbum"];
      [v12 addObject:v39];

      a3 = v36;
    }

    v40 = +[PXAlbumsDebugUISettings sharedInstance];
    showGazeDebugAlbum = [v40 showGazeDebugAlbum];

    v102 = a3;
    if (showGazeDebugAlbum)
    {
      librarySpecificFetchOptions4 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions4 setWantsIncrementalChangeDetails:0];
      [librarySpecificFetchOptions4 setIncludeTorsoAndFaceDetectionData:1];
      [librarySpecificFetchOptions4 setIncludedDetectionTypes:&unk_1F1911818];
      _isValidGazeRectPredicate = [self _isValidGazeRectPredicate];
      [librarySpecificFetchOptions4 setInternalPredicate:_isValidGazeRectPredicate];

      v44 = [MEMORY[0x1E69787C8] fetchFacesWithOptions:librarySpecificFetchOptions4];
      librarySpecificFetchOptions5 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      v46 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v113 = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
      [librarySpecificFetchOptions5 setSortDescriptors:v47];

      v48 = *MEMORY[0x1E6978CF0];
      v112[0] = *MEMORY[0x1E6978C90];
      v112[1] = v48;
      v112[2] = *MEMORY[0x1E6978C20];
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:3];
      [librarySpecificFetchOptions5 setFetchPropertySets:v49];

      v50 = MEMORY[0x1E6978630];
      fetchedObjects = [v44 fetchedObjects];
      v52 = [v50 fetchAssetsForFaces:fetchedObjects options:librarySpecificFetchOptions5];

      v53 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v52 title:@"Internal - Has Gaze" identifier:@"PXDebugAlbum"];
      [v12 addObject:v53];

      a3 = v102;
    }

    v54 = +[PXAlbumsDebugUISettings sharedInstance];
    showCustomDebugAlbum = [v54 showCustomDebugAlbum];

    a4 = v104;
    if (showCustomDebugAlbum)
    {
      librarySpecificFetchOptions6 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      v57 = +[PXAlbumsDebugUISettings sharedInstance];
      customDebugInternalPredicate = [v57 customDebugInternalPredicate];
      v59 = [customDebugInternalPredicate length];

      if (v59)
      {
        v60 = MEMORY[0x1E696AE18];
        v61 = +[PXAlbumsDebugUISettings sharedInstance];
        customDebugInternalPredicate2 = [v61 customDebugInternalPredicate];
        v63 = [v60 predicateWithFormat:customDebugInternalPredicate2];
        [librarySpecificFetchOptions6 setInternalPredicate:v63];
      }

      else
      {
        v64 = +[PXAlbumsDebugUISettings sharedInstance];
        customDebugPredicate = [v64 customDebugPredicate];
        v66 = [customDebugPredicate length];

        if (!v66)
        {
LABEL_17:
          v68 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
          v111 = v68;
          v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1];
          [librarySpecificFetchOptions6 setSortDescriptors:v69];

          v70 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions6];
          v71 = MEMORY[0x1E696AEC0];
          v72 = +[PXAlbumsDebugUISettings sharedInstance];
          customDebugAlbumTitle = [v72 customDebugAlbumTitle];
          v74 = [v71 stringWithFormat:@"Internal - %@", customDebugAlbumTitle];

          v75 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v70 title:v74 identifier:@"PXDebugAlbum"];
          [v12 addObject:v75];

          a3 = v102;
          a4 = v104;
          goto LABEL_18;
        }

        v67 = MEMORY[0x1E696AE18];
        v61 = +[PXAlbumsDebugUISettings sharedInstance];
        customDebugInternalPredicate2 = [v61 customDebugPredicate];
        v63 = [v67 predicateWithFormat:customDebugInternalPredicate2];
        [librarySpecificFetchOptions6 setPredicate:v63];
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  if (!a6)
  {
    goto LABEL_28;
  }

  v76 = +[PXSharedLibrarySettings sharedInstance];
  v77 = +[PXRootSettings sharedInstance];
  if (![v77 canShowInternalUI])
  {
    goto LABEL_26;
  }

  showDebugAlbums = [v76 showDebugAlbums];

  if (showDebugAlbums)
  {
    v105 = a4;
    v79 = MEMORY[0x1E69788A0];
    librarySpecificFetchOptions7 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
    v77 = [v79 fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions7];

    firstObject = [v77 firstObject];
    v82 = PLUserSmartAlbumGetLog();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier = [firstObject localIdentifier];
      *buf = 138412290;
      v110 = localIdentifier;
      _os_log_impl(&dword_1A3C1C000, v82, OS_LOG_TYPE_DEFAULT, "Suggestions by Photos ablum uses library scope: %@", buf, 0xCu);
    }

    if (firstObject)
    {
      [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      v84 = v103 = a3;
      v85 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v108 = v85;
      v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
      [v84 setSortDescriptors:v86];

      8388612 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 8388612];
      [v84 setInternalPredicate:8388612];

      v88 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v84];
      v89 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v88 title:@"Internal Only - Added by user in Camera" identifier:@"PXSharedLibraryAddedByUserInCameraDebugAlbum"];
      [v12 addObject:v89];

      librarySpecificFetchOptions8 = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
      v91 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v107 = v91;
      v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
      [librarySpecificFetchOptions8 setSortDescriptors:v92];

      8388616 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"libraryScopeShareState", 8388616];
      [librarySpecificFetchOptions8 setInternalPredicate:8388616];

      v94 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions8];
      v95 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssetFetchResult:v94 title:@"Internal Only - Suggestions by Camera" identifier:@"PXSharedLibrarySuggestedByCameraDebugAlbum"];
      [v12 addObject:v95];

      a3 = v103;
    }

    a4 = v105;
LABEL_26:
  }

LABEL_28:
  px_virtualCollections = [px_deprecated_appPhotoLibrary px_virtualCollections];
  importHistoryCollection = [px_virtualCollections importHistoryCollection];

  [v12 addObject:importHistoryCollection];
  if (a3)
  {
    px_otherAlbumsSubtypes = [MEMORY[0x1E6978650] px_otherAlbumsSubtypes];
  }

  else if (a4)
  {
    px_otherAlbumsSubtypes = &unk_1F1911830;
  }

  else
  {
    px_otherAlbumsSubtypes = 0;
  }

  if ((a5 & 1) == 0)
  {
    v99 = [px_otherAlbumsSubtypes mutableCopy];
    [v99 removeObject:&unk_1F190D7B0];

    px_otherAlbumsSubtypes = v99;
  }

  if ([px_otherAlbumsSubtypes count])
  {
    v100 = [MEMORY[0x1E6978650] px_fetchAssetCollectionsWithAlbumSubtypes:px_otherAlbumsSubtypes photoLibrary:px_deprecated_appPhotoLibrary];
    [v12 addObjectsFromArray:v100];
  }

  return v12;
}

+ (id)_isValidGazeRectPredicate
{
  v0 = MEMORY[0x1E696AE18];
  v1 = DCIM_NSStringFromCGRect();
  v2 = DCIM_NSStringFromCGRect();
  v3 = DCIM_NSStringFromCGRect();
  v4 = [v0 predicateWithFormat:@"%K != %@ && %K != %@ && %K != %@", @"gazeRectString", v1, @"gazeRectString", v2, @"gazeRectString", v3];

  return v4;
}

+ (id)_otherAlbumsCollectionListWithDeletedCollection:()PhotosUICore withHiddenCollection:withDuplicatesCollection:
{
  v5 = [MEMORY[0x1E6978760] _otherAlbumAssetCollectionsIncludingRecentlyDeleted:a3 includeHidden:a4 includeDuplicates:a5 includingSharedLibrary:a3 includingDebugAlbums:a3];
  v6 = PXLocalizedStringFromTable(@"PXUtilitiesAlbumsListTitle", @"PhotosUICore");
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v8 = [MEMORY[0x1E6978760] transientCollectionListWithCollections:v5 title:v6 identifier:0 photoLibrary:px_deprecated_appPhotoLibrary];

  return v8;
}

+ (id)px_transientIdentifierForWellKnownFolderName:()PhotosUICore
{
  v3 = px_transientIdentifierForWellKnownFolderName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&px_transientIdentifierForWellKnownFolderName__onceToken, &__block_literal_global_769);
  }

  v5 = [px_transientIdentifierForWellKnownFolderName__transientIdentifiers objectForKeyedSubscript:v4];

  return v5;
}

@end