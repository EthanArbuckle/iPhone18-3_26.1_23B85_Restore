@interface PLCloudSharingEnablingJob
+ (void)deleteAllLocalSharedAlbumsInLibrary:(id)a3 keepPendingAlbums:(BOOL)a4 withReason:(id)a5;
+ (void)disableCloudSharingWithLibraryServicesManager:(id)a3;
+ (void)enableCloudSharing:(BOOL)a3 withPathManager:(id)a4;
- (id)description;
- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4;
- (void)encodeToXPCObject:(id)a3;
- (void)runDaemonSide;
@end

@implementation PLCloudSharingEnablingJob

- (void)runDaemonSide
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudSharingEnablingJob runDaemonSide]"];
  v4 = [objc_opt_class() lowPriorityOperationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__PLCloudSharingEnablingJob_runDaemonSide__block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [v4 addOperationWithBlock:v6];
}

void __42__PLCloudSharingEnablingJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) enableSharing];
    *buf = 67109120;
    LODWORD(v28) = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCloudSharingEnabledJob runDaemonSide %d", buf, 8u);
  }

  if ([*(a1 + 32) enableSharing])
  {
    +[PLPhotoSharingHelper clearCachedAccountState];
    v5 = [*(a1 + 32) transientPhotoLibrary];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 pathManager];
      v8 = [v7 photoDirectoryWithType:23 additionalPathComponents:@"personID"];

      v9 = +[PLPhotoSharingHelper sharingPersonID];
      if (v9)
      {
        v10 = [MEMORY[0x1E696AC08] defaultManager];
        v11 = MEMORY[0x1E695DFF8];
        v12 = [*(a1 + 32) libraryServicesManager];
        v13 = [v12 pathManager];
        v14 = [v13 photoDirectoryWithType:23];
        v15 = [v11 fileURLWithPath:v14 isDirectory:1];

        v26 = 0;
        LOBYTE(v12) = [v15 getResourceValue:&v26 forKey:*MEMORY[0x1E695DB20] error:0];
        v23 = v26;
        v16 = 0;
        if ((v12 & 1) == 0)
        {
          v25 = 0;
          v17 = [v10 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v25];
          v16 = v25;
          if ((v17 & 1) == 0)
          {
            v18 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [v15 path];
              *buf = 138412546;
              v28 = v19;
              v29 = 2112;
              v30 = v16;
              _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory %@: %@", buf, 0x16u);
            }
          }
        }

        [v10 removeItemAtPath:v8 error:0];
        v20 = [v9 dataUsingEncoding:4];
        if (([v20 writeToFile:v8 options:1073741825 error:0] & 1) == 0)
        {
          v21 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v28 = v9;
            v29 = 2112;
            v30 = v8;
            v31 = 2112;
            v32 = v16;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "ERROR: Unable to write personID %@ to file %@: %@", buf, 0x20u);
          }
        }
      }

      +[PLPhotoSharingHelper updateSharedAlbumsCachedServerConfigurationLimits];
      v22 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "will perform initial poll", buf, 2u);
      }

      [PLPhotoSharingHelper pollForAlbumListUpdatesWithRefreshResetSync:0];
    }

    else
    {
      v8 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "PLCloudSharingEnablingJob unable to create PLPhotoLibrary instance. Enabling failed.", buf, 2u);
      }
    }
  }

  else
  {
    v6 = [*(a1 + 32) libraryServicesManager];
    [PLCloudSharingEnablingJob disableCloudSharingWithLibraryServicesManager:v6];
  }

  v24.receiver = *(a1 + 32);
  v24.super_class = PLCloudSharingEnablingJob;
  objc_msgSendSuper2(&v24, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];
  objc_autoreleasePoolPop(v2);
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PLCloudSharingEnablingJob;
  v3 = [(PLDaemonJob *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" enableSharing %d", -[PLCloudSharingEnablingJob enableSharing](self, "enableSharing")];

  return v4;
}

- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = PLCloudSharingEnablingJob;
  v7 = [(PLCloudSharingJob *)&v9 initFromXPCObject:v6 libraryServicesManager:a4];
  if (v7)
  {
    [v7 setEnableSharing:{xpc_dictionary_get_BOOL(v6, "enableSharing")}];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)a3
{
  v5.receiver = self;
  v5.super_class = PLCloudSharingEnablingJob;
  v4 = a3;
  [(PLDaemonJob *)&v5 encodeToXPCObject:v4];
  xpc_dictionary_set_BOOL(v4, "enableSharing", [(PLCloudSharingEnablingJob *)self enableSharing:v5.receiver]);
}

+ (void)deleteAllLocalSharedAlbumsInLibrary:(id)a3 keepPendingAlbums:(BOOL)a4 withReason:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:a1 file:@"PLCloudSharingEnablingJob.m" lineNumber:190 description:@"deleteAllLocalSharedAlbumsInLibrary only valid in assetsd!"];
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"collectionShareKind", 2];
  v10 = [v8 managedObjectContext];
  v11 = [(PLShare *)PLCollectionShare sharesWithPredicate:v9 fetchLimit:0 inManagedObjectContext:v10];

  if ([v11 count])
  {
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v39 = [v11 count];
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "PLCloudSharingEnablingJob will delete all %lu sharedstream collection shares", buf, 0xCu);
    }

    v13 = +[PLNotificationManager sharedManager];
    v14 = [v8 managedObjectContext];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __94__PLCloudSharingEnablingJob_deleteAllLocalSharedAlbumsInLibrary_keepPendingAlbums_withReason___block_invoke;
    v35[3] = &unk_1E75748A8;
    v37 = a4;
    v36 = v13;
    v15 = v13;
    v16 = [v14 enumerateWithIncrementalSaveUsingObjects:v11 withBlock:v35];

    if (v16)
    {
      v17 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v16;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "PLCloudSharingEnablingJob failed to delete shared albums: %@", buf, 0xCu);
      }
    }
  }

  v18 = [PLCloudSharedAlbum allCloudSharedAlbumsInLibrary:v8];
  if ([v18 count])
  {
    v19 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 count];
      *buf = 134217984;
      v39 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "PLCloudSharingEnablingJob will delete all %lu shared albums", buf, 0xCu);
    }

    v21 = +[PLNotificationManager sharedManager];
    v22 = [v8 managedObjectContext];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __94__PLCloudSharingEnablingJob_deleteAllLocalSharedAlbumsInLibrary_keepPendingAlbums_withReason___block_invoke_78;
    v32[3] = &unk_1E75748D0;
    v34 = a4;
    v33 = v21;
    v23 = v21;
    v24 = [v22 enumerateWithIncrementalSaveUsingObjects:v18 withBlock:v32];

    if (v24)
    {
      v25 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v24;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "PLCloudSharingEnablingJob failed to delete shared albums: %@", buf, 0xCu);
      }
    }
  }

  v26 = [PLManagedAsset allCloudSharedAssetsInLibrary:v8];
  if ([v26 count])
  {
    v27 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v26 count];
      *buf = 134217984;
      v39 = v28;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "PLCloudSharingEnablingJob will delete all %lu orphaned shared assets", buf, 0xCu);
    }

    v29 = [v8 managedObjectContext];
    v30 = [v29 deleteObjectsWithIncrementalSave:v26];
  }
}

void __94__PLCloudSharingEnablingJob_deleteAllLocalSharedAlbumsInLibrary_keepPendingAlbums_withReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) != 1 || [v3 status] != 2)
  {
    [*(a1 + 32) noteDidDeleteCollectionShare:v3];
    [v3 locallyIncrementallyDeleteAndSaveWithError:0];
  }
}

void __94__PLCloudSharingEnablingJob_deleteAllLocalSharedAlbumsInLibrary_keepPendingAlbums_withReason___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) != 1 || [v3 cloudRelationshipStateLocalValue] != 1)
  {
    [*(a1 + 32) noteDidDeleteSharedAlbum:v3];
    [v3 delete];
  }
}

+ (void)disableCloudSharingWithLibraryServicesManager:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Telling mstreamd to forget sharing data", buf, 2u);
  }

  [PLPhotoSharingHelper forgetSharingPersonID:0];
  v5 = [v3 pathManager];
  v6 = [v5 photoDirectoryWithType:23 additionalPathComponents:@"recentlyUsedGUIDS"];
  v7 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Removing recently used GUIDs from %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v41 = 0;
  v9 = [v8 removeItemAtPath:v6 error:&v41];
  v10 = v41;

  if ((v9 & 1) == 0)
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = v6;
      v44 = 2112;
      v45 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  v12 = [v5 photoDirectoryWithType:24];
  if ([v12 length])
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Removing cloud sharing metadata %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v40 = v10;
    v15 = [v14 removeItemAtPath:v12 error:&v40];
    v16 = v40;

    if (v15)
    {
      v10 = v16;
    }

    else
    {
      v17 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = v12;
        v44 = 2112;
        v45 = v16;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  v18 = [PLPhotoSharingHelper temporaryUploadDerivativesBasePathWithPathManager:v5];
  if ([v18 length])
  {
    v19 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v18;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Removing temporary generated upload derivatives %@", buf, 0xCu);
    }

    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v39 = v10;
    v21 = [v20 removeItemAtPath:v18 error:&v39];
    v22 = v39;

    if (v21)
    {
      v10 = v22;
    }

    else
    {
      v23 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = v18;
        v44 = 2112;
        v45 = v22;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to remove %@: %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  v24 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Removing persisted person info", buf, 2u);
  }

  v25 = [v3 libraryBundle];
  v26 = [v25 personInfoManager];
  [v26 removePersistedInfo];

  v27 = [v3 databaseContext];
  v28 = [v27 newShortLivedLibraryWithName:"+[PLCloudSharingEnablingJob disableCloudSharingWithLibraryServicesManager:]"];

  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __75__PLCloudSharingEnablingJob_disableCloudSharingWithLibraryServicesManager___block_invoke;
  v37 = &unk_1E75781E8;
  v29 = v28;
  v38 = v29;
  [v29 performTransactionAndWait:&v34];
  v30 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Discarding all notifications", buf, 2u);
  }

  v31 = [PLNotificationManager sharedManager:v34];
  [v31 discardAllNotifications];

  v32 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Rebuilding cloud feed entries", buf, 2u);
  }

  v33 = [[PLCloudFeedEntriesManager alloc] initWithPhotoLibrary:v29];
  [(PLCloudFeedEntriesManager *)v33 rebuildAllEntries:0];
}

void __75__PLCloudSharingEnablingJob_disableCloudSharingWithLibraryServicesManager___block_invoke(uint64_t a1)
{
  v2 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "PLCloudSharingEnablingJob deleting all shared albums and assets while disabling", v4, 2u);
  }

  v3 = [PLAssetTransactionReason transactionReason:@"[PLCloudSharingEnablingJob]Deleting all shared albums and assets while disabling"];
  [PLCloudSharingEnablingJob deleteAllLocalSharedAlbumsInLibrary:*(a1 + 32) keepPendingAlbums:0 withReason:v3];
}

+ (void)enableCloudSharing:(BOOL)a3 withPathManager:(id)a4
{
  v4 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Disabling";
    if (v4)
    {
      v8 = @"Enabling";
    }

    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%@ shared album", &v11, 0xCu);
  }

  [a1 deleteAllRecoveryEventsWithPathManager:v6];
  v9 = objc_opt_new();
  [v9 setEnableSharing:v4];
  [v9 runAndWaitForMessageToBeSent];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobileslideshow.PreferenceChanged", 0, 0, 1u);
}

@end