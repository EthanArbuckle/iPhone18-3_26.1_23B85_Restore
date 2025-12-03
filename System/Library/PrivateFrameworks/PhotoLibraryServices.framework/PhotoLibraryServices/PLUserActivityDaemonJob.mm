@interface PLUserActivityDaemonJob
+ (id)newUserActivityDaemonJob;
+ (void)checkedSharedAlbumServerModelRelationships;
+ (void)userDidChangeStatusForMomentShare:(id)share;
+ (void)userDidDeleteSharedAlbum:(id)album;
+ (void)userDidDeleteSharedAssets:(id)assets;
+ (void)userDidLeavePhotosApplication;
+ (void)userDidNavigateAwayFromAllSharedAlbums;
+ (void)userDidNavigateAwayFromSharedAlbum:(id)album;
+ (void)userDidNavigateIntoCollectionShare:(id)share;
+ (void)userDidNavigateIntoImagePickerSharedAlbum:(id)album;
+ (void)userDidNavigateIntoSharedAlbum:(id)album;
+ (void)userDidReadCommentOnSharedAsset:(id)asset;
+ (void)userDidViewCloudFeedContent:(unint64_t)content;
+ (void)userDidViewSharedLibraryParticipantAssetTrashNotification;
- (PLUserActivityDaemonJob)initWithAssetsdClient:(id)client;
- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager;
- (void)encodeToXPCObject:(id)object;
- (void)runDaemonSide;
@end

@implementation PLUserActivityDaemonJob

- (void)runDaemonSide
{
  v3 = +[PLNotificationManager sharedManager];
  libraryServicesManager = [(PLDaemonJob *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v6 = [databaseContext newShortLivedLibraryWithName:"-[PLUserActivityDaemonJob runDaemonSide]"];

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

- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = PLUserActivityDaemonJob;
  v7 = [(PLDaemonJob *)&v12 initFromXPCObject:objectCopy libraryServicesManager:manager];
  if (v7)
  {
    [v7 setActionType:{xpc_dictionary_get_int64(objectCopy, "actionType")}];
    v8 = PLStringFromXPCDictionary();
    [v7 setAlbumUUID:v8];

    v9 = PLArrayFromXPCDictionary();
    [v7 setAssetUUIDs:v9];

    [v7 setCloudFeedContent:{xpc_dictionary_get_int64(objectCopy, "cloudFeedContent")}];
    v10 = PLStringFromXPCDictionary();
    [v7 setMomentShareUUID:v10];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = PLUserActivityDaemonJob;
  [(PLDaemonJob *)&v11 encodeToXPCObject:objectCopy];
  albumUUID = [(PLUserActivityDaemonJob *)self albumUUID];

  if (albumUUID)
  {
    albumUUID2 = [(PLUserActivityDaemonJob *)self albumUUID];
    PLXPCDictionarySetString();
  }

  assetUUIDs = [(PLUserActivityDaemonJob *)self assetUUIDs];

  if (assetUUIDs)
  {
    assetUUIDs2 = [(PLUserActivityDaemonJob *)self assetUUIDs];
    PLXPCDictionarySetArray();
  }

  momentShareUUID = [(PLUserActivityDaemonJob *)self momentShareUUID];

  if (momentShareUUID)
  {
    momentShareUUID2 = [(PLUserActivityDaemonJob *)self momentShareUUID];
    PLXPCDictionarySetString();
  }

  xpc_dictionary_set_int64(objectCopy, "actionType", self->_actionType);
  xpc_dictionary_set_int64(objectCopy, "cloudFeedContent", self->_cloudFeedContent);
}

- (PLUserActivityDaemonJob)initWithAssetsdClient:(id)client
{
  v4.receiver = self;
  v4.super_class = PLUserActivityDaemonJob;
  return [(PLDaemonJob *)&v4 initWithAssetsdClient:client];
}

+ (void)checkedSharedAlbumServerModelRelationships
{
  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:13];
  [newUserActivityDaemonJob run];
}

+ (void)userDidViewSharedLibraryParticipantAssetTrashNotification
{
  v3 = PLUserActivityGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "User did view shared library participant asset trash notification", v5, 2u);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:12];
  [newUserActivityDaemonJob run];
}

+ (void)userDidChangeStatusForMomentShare:(id)share
{
  v11 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [shareCopy uuid];
    v9 = 138543362;
    v10 = uuid;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did change status for moment share: %{public}@", &v9, 0xCu);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:11];
  uuid2 = [shareCopy uuid];
  [newUserActivityDaemonJob setMomentShareUUID:uuid2];

  [newUserActivityDaemonJob run];
}

+ (void)userDidLeavePhotosApplication
{
  v3 = PLUserActivityGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "User did delete leave Photos app", v5, 2u);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:10];
  [newUserActivityDaemonJob run];
}

+ (void)userDidDeleteSharedAssets:(id)assets
{
  v21 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = [assetsCopy count];
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did delete %lu shared album assets", buf, 0xCu);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:8];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = assetsCopy;
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

        uuid = [*(*(&v14 + 1) + 8 * v12) uuid];
        if (uuid)
        {
          [v7 addObject:uuid];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [newUserActivityDaemonJob setAssetUUIDs:v7];
  [newUserActivityDaemonJob run];
}

+ (void)userDidDeleteSharedAlbum:(id)album
{
  v11 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [albumCopy uuid];
    v9 = 138543362;
    v10 = uuid;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did delete shared album: %{public}@", &v9, 0xCu);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:9];
  uuid2 = [albumCopy uuid];
  [newUserActivityDaemonJob setAlbumUUID:uuid2];

  [newUserActivityDaemonJob run];
}

+ (void)userDidReadCommentOnSharedAsset:(id)asset
{
  v12 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [assetCopy uuid];
    v10 = 138543362;
    v11 = uuid;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did read comments on asset: %{public}@", &v10, 0xCu);
  }

  uuid2 = [assetCopy uuid];
  if (uuid2)
  {
    newUserActivityDaemonJob = [self newUserActivityDaemonJob];
    [newUserActivityDaemonJob setActionType:7];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:uuid2];
    [newUserActivityDaemonJob setAssetUUIDs:v9];

    [newUserActivityDaemonJob run];
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

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:6];
  [newUserActivityDaemonJob run];
}

+ (void)userDidNavigateAwayFromSharedAlbum:(id)album
{
  v11 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [albumCopy uuid];
    v9 = 138543362;
    v10 = uuid;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did navigate away from shared album: %{public}@", &v9, 0xCu);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:5];
  uuid2 = [albumCopy uuid];
  [newUserActivityDaemonJob setAlbumUUID:uuid2];

  [newUserActivityDaemonJob run];
}

+ (void)userDidNavigateIntoImagePickerSharedAlbum:(id)album
{
  v11 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [albumCopy uuid];
    v9 = 138543362;
    v10 = uuid;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did navigate into picker shared album: %{public}@", &v9, 0xCu);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:4];
  uuid2 = [albumCopy uuid];
  [newUserActivityDaemonJob setAlbumUUID:uuid2];

  [newUserActivityDaemonJob run];
}

+ (void)userDidNavigateIntoSharedAlbum:(id)album
{
  v11 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [albumCopy uuid];
    v9 = 138543362;
    v10 = uuid;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did navigate into shared album: %{public}@", &v9, 0xCu);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:3];
  uuid2 = [albumCopy uuid];
  [newUserActivityDaemonJob setAlbumUUID:uuid2];

  [newUserActivityDaemonJob run];
}

+ (void)userDidNavigateIntoCollectionShare:(id)share
{
  v11 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [shareCopy uuid];
    v9 = 138543362;
    v10 = uuid;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did navigate into collection share: %{public}@", &v9, 0xCu);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:2];
  uuid2 = [shareCopy uuid];
  [newUserActivityDaemonJob setAlbumUUID:uuid2];

  [newUserActivityDaemonJob run];
}

+ (void)userDidViewCloudFeedContent:(unint64_t)content
{
  v5 = PLUserActivityGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "User did view cloud feed content", v7, 2u);
  }

  newUserActivityDaemonJob = [self newUserActivityDaemonJob];
  [newUserActivityDaemonJob setActionType:1];
  [newUserActivityDaemonJob setCloudFeedContent:content];
  [newUserActivityDaemonJob run];
}

+ (id)newUserActivityDaemonJob
{
  v2 = [PLUserActivityDaemonJob alloc];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v4 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:systemLibraryURL];
  v5 = [(PLUserActivityDaemonJob *)v2 initWithAssetsdClient:v4];

  return v5;
}

@end