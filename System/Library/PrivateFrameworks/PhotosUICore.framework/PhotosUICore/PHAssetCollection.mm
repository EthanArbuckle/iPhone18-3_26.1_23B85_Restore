@interface PHAssetCollection
@end

@implementation PHAssetCollection

void __57__PHAssetCollection_PhotosUICore__px_otherAlbumsSubtypes__block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = px_otherAlbumsSubtypes_subtypes;
  px_otherAlbumsSubtypes_subtypes = &unk_1F19117B8;

  if (_os_feature_enabled_impl())
  {
    v1 = [&unk_1F19117D0 arrayByAddingObjectsFromArray:px_otherAlbumsSubtypes_subtypes];
    v2 = px_otherAlbumsSubtypes_subtypes;
    px_otherAlbumsSubtypes_subtypes = v1;
  }

  v3 = [&unk_1F19117E8 arrayByAddingObjectsFromArray:px_otherAlbumsSubtypes_subtypes];
  v4 = px_otherAlbumsSubtypes_subtypes;
  px_otherAlbumsSubtypes_subtypes = v3;

  v5 = +[PXCuratedLibrarySettings sharedInstance];
  v6 = [v5 enableRecentlyEditedAlbum];

  if (v6)
  {
    v7 = [&unk_1F1911800 arrayByAddingObjectsFromArray:px_otherAlbumsSubtypes_subtypes];
    v8 = px_otherAlbumsSubtypes_subtypes;
    px_otherAlbumsSubtypes_subtypes = v7;
  }

  v9 = PLUserSmartAlbumGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = px_otherAlbumsSubtypes_subtypes;
    v10 = v12;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@> Other Albums Subtypes to Fetch: %@", &v11, 0x16u);
  }
}

void __65__PHAssetCollection_PhotosUICore__px_mediaTypeSmartAlbumSubtypes__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = px_mediaTypeSmartAlbumSubtypes_subtypes;
  px_mediaTypeSmartAlbumSubtypes_subtypes = &unk_1F19117A0;

  v1 = PLUserSmartAlbumGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543618;
    v4 = objc_opt_class();
    v5 = 2112;
    v6 = &unk_1F19117A0;
    v2 = v4;
    _os_log_impl(&dword_1A3C1C000, v1, OS_LOG_TYPE_DEFAULT, "<%{public}@> Media Smart Albums Subtypes to Fetch: %@", &v3, 0x16u);
  }
}

void __70__PHAssetCollection_PhotosUICore__px_albumNameForTransientIdentifier___block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXPhotosVirtualCollection";
  v2[1] = @"PXEventsVirtualCollection";
  v3[0] = @"library";
  v3[1] = @"event";
  v2[2] = @"PXMemoriesVirtualCollection";
  v2[3] = @"PXTripsVirtualCollection";
  v3[2] = @"memory";
  v3[3] = @"trip";
  v2[4] = @"PXPeopleVirtualCollection";
  v2[5] = @"PXCompleteMyMomentVirtualCollection";
  v3[4] = @"people";
  v3[5] = @"icloud-links";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = px_albumNameForTransientIdentifier__albumNames;
  px_albumNameForTransientIdentifier__albumNames = v0;
}

@end