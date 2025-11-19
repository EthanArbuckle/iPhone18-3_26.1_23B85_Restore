@interface PLUserActivityDaemonJob
+ (id)newUserActivityDaemonJob;
+ (void)checkedSharedAlbumServerModelRelationships;
+ (void)userDidChangeStatusForMomentShare:(id)a3;
+ (void)userDidDeleteSharedAlbum:(id)a3;
+ (void)userDidDeleteSharedAssets:(id)a3;
+ (void)userDidLeavePhotosApplication;
+ (void)userDidNavigateAwayFromAllSharedAlbums;
+ (void)userDidNavigateAwayFromSharedAlbum:(id)a3;
+ (void)userDidNavigateIntoCollectionShare:(id)a3;
+ (void)userDidNavigateIntoImagePickerSharedAlbum:(id)a3;
+ (void)userDidNavigateIntoSharedAlbum:(id)a3;
+ (void)userDidReadCommentOnSharedAsset:(id)a3;
+ (void)userDidViewCloudFeedContent:(unint64_t)a3;
+ (void)userDidViewSharedLibraryParticipantAssetTrashNotification;
- (PLUserActivityDaemonJob)initWithAssetsdClient:(id)a3;
- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4;
- (void)encodeToXPCObject:(id)a3;
- (void)runDaemonSide;
@end

@implementation PLUserActivityDaemonJob

- (void)runDaemonSide
{
  v3 = +[PLNotificationManager sharedManager];
  v4 = [(PLDaemonJob *)self libraryServicesManager];
  v5 = [v4 databaseContext];
  v6 = [v5 newShortLivedLibraryWithName:"-[PLUserActivityDaemonJob runDaemonSide]"];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__PLUserActivityDaemonJob_runDaemonSide__block_invoke;
  v9[3] = &unk_1E75761B8;
  v9[4] = self;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  v8 = v6;
  [v8 performTransaction:v9];
}

void __40__PLUserActivityDaemonJob_runDaemonSide__block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] albumUUID];
  if (v2)
  {
    v3 = [a1[5] managedObjectContext];
    v4 = [(PLShare *)PLCollectionShare shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1[4] assetUUIDs];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [a1[5] assetWithUUID:*(*(&v21 + 1) + 8 * i)];
        if (v11)
        {
          if (!v8)
          {
            v8 = [MEMORY[0x1E695DF70] array];
          }

          [v8 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = [a1[4] momentShareUUID];
  switch([a1[4] actionType])
  {
    case 0:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"_PLUserActivityTypeInvalid not a valid user activity"];
      break;
    case 1:
      [a1[6] noteUserDidViewCloudFeedContent:objc_msgSend(a1[4] photoLibrary:{"cloudFeedContent"), a1[5]}];
      break;
    case 2:
      if (v4)
      {
        [v4 checkServerForChanges];
        [v4 prioritizeDownloads:1];
        [a1[6] noteUserDidNavigateIntoCollectionShare:v4 photoLibrary:a1[5]];
      }

      break;
    case 4:
      if (v4)
      {
        v13 = v4;
        v14 = 1;
        goto LABEL_29;
      }

      break;
    case 5:
      if (v4)
      {
        [a1[6] noteUserDidNavigateAwayFromCollectionShare:v4 photoLibrary:a1[5]];
      }

      break;
    case 6:
      v13 = v4;
      v14 = 0;
LABEL_29:
      [v13 prioritizeDownloads:v14];
      break;
    case 7:
      if ([v8 count])
      {
        v18 = a1[6];
        v19 = [v8 objectAtIndex:0];
        [v18 noteUserDidReadCommentOnSharedAsset:v19 photoLibrary:a1[5]];
      }

      break;
    case 8:
      if (v5)
      {
        [a1[6] noteUserDidDeleteSharedAssetsWithUUIDs:v5];
      }

      break;
    case 9:
      if (v2)
      {
        [a1[6] noteUserDidDeleteSharedAlbumWithUUID:v2];
      }

      break;
    case 10:
      [a1[6] noteUserDidLeavePhotosApplication];
      break;
    case 11:
      if (v12)
      {
        [a1[6] noteUserDidChangeStatusForMomentShare:v12 photoLibrary:a1[5]];
      }

      break;
    case 12:
      v15 = [a1[5] managedObjectContext];
      v16 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:v15];

      if (v16)
      {
        v17 = [a1[5] managedObjectContext];
        [v16 userViewedAssetTrashNotificationWithManagedObjectContext:v17];
      }

      else
      {
        v17 = PLUserActivityGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to find an active LibraryScope to mark as notification viewed", v20, 2u);
        }
      }

      break;
    case 13:
      [PLPhotoSharingHelper checkServerModelRelationshipsForPhotoLibrary:a1[5]];
      break;
    default:
      break;
  }
}

- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PLUserActivityDaemonJob;
  v7 = [(PLDaemonJob *)&v12 initFromXPCObject:v6 libraryServicesManager:a4];
  if (v7)
  {
    [v7 setActionType:{xpc_dictionary_get_int64(v6, "actionType")}];
    v8 = PLStringFromXPCDictionary();
    [v7 setAlbumUUID:v8];

    v9 = PLArrayFromXPCDictionary();
    [v7 setAssetUUIDs:v9];

    [v7 setCloudFeedContent:{xpc_dictionary_get_int64(v6, "cloudFeedContent")}];
    v10 = PLStringFromXPCDictionary();
    [v7 setMomentShareUUID:v10];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLUserActivityDaemonJob;
  [(PLDaemonJob *)&v11 encodeToXPCObject:v4];
  v5 = [(PLUserActivityDaemonJob *)self albumUUID];

  if (v5)
  {
    v6 = [(PLUserActivityDaemonJob *)self albumUUID];
    PLXPCDictionarySetString();
  }

  v7 = [(PLUserActivityDaemonJob *)self assetUUIDs];

  if (v7)
  {
    v8 = [(PLUserActivityDaemonJob *)self assetUUIDs];
    PLXPCDictionarySetArray();
  }

  v9 = [(PLUserActivityDaemonJob *)self momentShareUUID];

  if (v9)
  {
    v10 = [(PLUserActivityDaemonJob *)self momentShareUUID];
    PLXPCDictionarySetString();
  }

  xpc_dictionary_set_int64(v4, "actionType", self->_actionType);
  xpc_dictionary_set_int64(v4, "cloudFeedContent", self->_cloudFeedContent);
}

- (PLUserActivityDaemonJob)initWithAssetsdClient:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLUserActivityDaemonJob;
  return [(PLDaemonJob *)&v4 initWithAssetsdClient:a3];
}

+ (void)checkedSharedAlbumServerModelRelationships
{
  v2 = [a1 newUserActivityDaemonJob];
  [v2 setActionType:13];
  [v2 run];
}

+ (void)userDidViewSharedLibraryParticipantAssetTrashNotification
{
  v3 = PLUserActivityGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "User did view shared library participant asset trash notification", v5, 2u);
  }

  v4 = [a1 newUserActivityDaemonJob];
  [v4 setActionType:12];
  [v4 run];
}

+ (void)userDidChangeStatusForMomentShare:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did change status for moment share: %{public}@", &v9, 0xCu);
  }

  v7 = [a1 newUserActivityDaemonJob];
  [v7 setActionType:11];
  v8 = [v4 uuid];
  [v7 setMomentShareUUID:v8];

  [v7 run];
}

+ (void)userDidLeavePhotosApplication
{
  v3 = PLUserActivityGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "User did delete leave Photos app", v5, 2u);
  }

  v4 = [a1 newUserActivityDaemonJob];
  [v4 setActionType:10];
  [v4 run];
}

+ (void)userDidDeleteSharedAssets:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = [v4 count];
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did delete %lu shared album assets", buf, 0xCu);
  }

  v6 = [a1 newUserActivityDaemonJob];
  [v6 setActionType:8];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) uuid];
        if (v13)
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [v6 setAssetUUIDs:v7];
  [v6 run];
}

+ (void)userDidDeleteSharedAlbum:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did delete shared album: %{public}@", &v9, 0xCu);
  }

  v7 = [a1 newUserActivityDaemonJob];
  [v7 setActionType:9];
  v8 = [v4 uuid];
  [v7 setAlbumUUID:v8];

  [v7 run];
}

+ (void)userDidReadCommentOnSharedAsset:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did read comments on asset: %{public}@", &v10, 0xCu);
  }

  v7 = [v4 uuid];
  if (v7)
  {
    v8 = [a1 newUserActivityDaemonJob];
    [v8 setActionType:7];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
    [v8 setAssetUUIDs:v9];

    [v8 run];
  }
}

+ (void)userDidNavigateAwayFromAllSharedAlbums
{
  v3 = PLUserActivityGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "User did navigate away from all shared albums", v5, 2u);
  }

  v4 = [a1 newUserActivityDaemonJob];
  [v4 setActionType:6];
  [v4 run];
}

+ (void)userDidNavigateAwayFromSharedAlbum:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did navigate away from shared album: %{public}@", &v9, 0xCu);
  }

  v7 = [a1 newUserActivityDaemonJob];
  [v7 setActionType:5];
  v8 = [v4 uuid];
  [v7 setAlbumUUID:v8];

  [v7 run];
}

+ (void)userDidNavigateIntoImagePickerSharedAlbum:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did navigate into picker shared album: %{public}@", &v9, 0xCu);
  }

  v7 = [a1 newUserActivityDaemonJob];
  [v7 setActionType:4];
  v8 = [v4 uuid];
  [v7 setAlbumUUID:v8];

  [v7 run];
}

+ (void)userDidNavigateIntoSharedAlbum:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did navigate into shared album: %{public}@", &v9, 0xCu);
  }

  v7 = [a1 newUserActivityDaemonJob];
  [v7 setActionType:3];
  v8 = [v4 uuid];
  [v7 setAlbumUUID:v8];

  [v7 run];
}

+ (void)userDidNavigateIntoCollectionShare:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did navigate into collection share: %{public}@", &v9, 0xCu);
  }

  v7 = [a1 newUserActivityDaemonJob];
  [v7 setActionType:2];
  v8 = [v4 uuid];
  [v7 setAlbumUUID:v8];

  [v7 run];
}

+ (void)userDidViewCloudFeedContent:(unint64_t)a3
{
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did view cloud feed content", v7, 2u);
  }

  v6 = [a1 newUserActivityDaemonJob];
  [v6 setActionType:1];
  [v6 setCloudFeedContent:a3];
  [v6 run];
}

+ (id)newUserActivityDaemonJob
{
  v2 = [PLUserActivityDaemonJob alloc];
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:v3];
  v5 = [(PLUserActivityDaemonJob *)v2 initWithAssetsdClient:v4];

  return v5;
}

@end