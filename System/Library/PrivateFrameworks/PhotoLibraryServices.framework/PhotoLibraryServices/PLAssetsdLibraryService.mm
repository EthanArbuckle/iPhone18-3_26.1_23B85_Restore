@interface PLAssetsdLibraryService
+ (int64_t)requiredLibraryServicesStateForURL:(id)l;
- (PLAssetsdLibraryService)initWithLibraryServicesManager:(id)manager bundleController:(id)controller connectionAuthorization:(id)authorization assetsdService:(id)service;
- (id)_postRunningProgress;
- (id)_preRunningProgress;
- (id)_returnValueForProgress:(id)progress addTo:(id)to;
- (id)importFileSystemAssetsWithReason:(id)reason force:(BOOL)force reply:(id)reply;
- (id)libraryBundle;
- (id)newLibraryOpener;
- (id)postOpenProgressWithReply:(id)reply;
- (id)resetPersonsWithReply:(id)reply;
- (id)resetSocialGroupsWithReply:(id)reply;
- (id)sandboxExtensionsByPathForLibraryAccessRole:(int64_t)role;
- (id)transferAssetsWithUuids:(id)uuids fromLibraryURL:(id)l transferOptions:(id)options reply:(id)reply;
- (id)transferPersonsWithUuids:(id)uuids fromLibraryURL:(id)l transferOptions:(id)options reply:(id)reply;
- (id)upgradePhotoLibraryDatabaseWithOptions:(id)options reply:(id)reply;
- (void)_sendClientReply:(id)reply sandboxExtensionsByPath:(id)path error:(id)error;
- (void)automaticallyDeleteEmptyAlbumWithObjectURI:(id)i reply:(id)reply;
- (void)dealloc;
- (void)getCurrentModelVersionWithReply:(id)reply;
- (void)getPhotoLibraryStoreXPCListenerEndpointWithReply:(id)reply;
- (void)isLibraryReadyForImportWithReply:(id)reply;
- (void)launchAssetsd;
- (void)openApplicationOwnedFoldersWithReply:(id)reply;
- (void)openPhotoLibraryDatabaseWithOptions:(id)options reply:(id)reply;
- (void)proxyLockFileWithDatabasePath:(id)path reply:(id)reply;
- (void)publishRemoteChangeEvent:(id)event delayedSaveActionsDetail:(id)detail reply:(id)reply;
- (void)recoverFromCrashIfNeeded;
- (void)repairSingletonObjectsWithReply:(id)reply;
- (void)searchDonationProgressForTaskIDs:(id)ds reply:(id)reply;
- (void)updateThumbnailsForPhotos:(id)photos assignNewIndex:(BOOL)index forceRefresh:(BOOL)refresh reply:(id)reply;
- (void)validateOrRebuildPhotoLibraryDatabaseWithReply:(id)reply;
@end

@implementation PLAssetsdLibraryService

- (id)_postRunningProgress
{
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  postRunningProgress = [libraryServicesManager postRunningProgress];
  v5 = [(PLAssetsdLibraryService *)self _returnValueForProgress:postRunningProgress addTo:self->_postRunningProgressFollowers];

  return v5;
}

- (void)searchDonationProgressForTaskIDs:(id)ds reply:(id)reply
{
  v59 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  replyCopy = reply;
  v50 = 0u;
  *sel = 0u;
  v49 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v49) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: searchDonationProgressForTaskIDs:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v49 + 1);
    *(&v49 + 1) = v9;

    os_activity_scope_enter(v9, (&v50 + 8));
  }

  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__106333;
  v57 = __Block_byref_object_dispose__106334;
  v58 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__106333;
  v47 = __Block_byref_object_dispose__106334;
  v48 = 0;
  v12 = [dsCopy count];
  if (v12)
  {
    if (v12 == 1)
    {
      libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
      searchDonationProgress = [libraryServicesManager searchDonationProgress];
      firstObject = [dsCopy firstObject];
      unsignedIntegerValue = [firstObject unsignedIntegerValue];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __66__PLAssetsdLibraryService_searchDonationProgressForTaskIDs_reply___block_invoke;
      v40[3] = &unk_1E7575F00;
      p_buf = &buf;
      v41 = v11;
      v17 = [searchDonationProgress donationProgressForMediaProcessingTaskID:unsignedIntegerValue completionHandler:v40];
      v18 = v44[5];
      v44[5] = v17;

      v19 = v41;
    }

    else
    {
      libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
      searchDonationProgress2 = [libraryServicesManager2 searchDonationProgress];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __66__PLAssetsdLibraryService_searchDonationProgressForTaskIDs_reply___block_invoke_2;
      v36[3] = &unk_1E7575F28;
      v38 = &buf;
      v39 = &v43;
      v37 = v11;
      v25 = [searchDonationProgress2 donationProgressForMediaProcessingTaskIDs:dsCopy completionHandler:v36];

      v19 = v37;
    }
  }

  else
  {
    dispatch_group_leave(v11);
    v20 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A278];
    v53 = @"No taskIDs provided";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v21 = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v19];
    v22 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v21;
  }

  v26 = dispatch_queue_create("[PLAssetsdLibraryService searchDonationProgressForTaskIDs:reply:]", 0);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __66__PLAssetsdLibraryService_searchDonationProgressForTaskIDs_reply___block_invoke_3;
  v32[3] = &unk_1E7575F50;
  v27 = replyCopy;
  v33 = v27;
  v34 = &buf;
  v35 = &v43;
  dispatch_group_notify(v11, v26, v32);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&buf, 8);

  if (v49 == 1)
  {
    os_activity_scope_leave((&v50 + 8));
  }

  if (v50)
  {
    v28 = PLRequestGetLog();
    v29 = v28;
    v30 = v50;
    if ((v50 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v29, OS_SIGNPOST_INTERVAL_END, v30, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", &buf, 0xCu);
    }
  }
}

void __66__PLAssetsdLibraryService_searchDonationProgressForTaskIDs_reply___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __66__PLAssetsdLibraryService_searchDonationProgressForTaskIDs_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [v7 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)];
          v15 = [v14 completedUnitCount];
          if (v15 <= [v14 totalUnitCount])
          {
            v16 = [v14 completedUnitCount];
          }

          else
          {
            v16 = [v14 totalUnitCount];
          }

          v11 += v16;
          v10 += [v14 totalUnitCount];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v17 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:v10];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    [*(*(*(a1 + 48) + 8) + 40) setCompletedUnitCount:v11];
    v5 = v20;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __66__PLAssetsdLibraryService_searchDonationProgressForTaskIDs_reply___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 40) == 0;
  v4 = [*(*(a1[6] + 8) + 40) completedUnitCount];
  v5 = [*(*(a1[6] + 8) + 40) totalUnitCount];
  v6 = *(v2 + 16);
  v7 = *(*(a1[5] + 8) + 40);

  return v6(v2, v3, v4, v5, v7);
}

- (void)proxyLockFileWithDatabasePath:(id)path reply:(id)reply
{
  v5 = MEMORY[0x1E69BF238];
  replyCopy = reply;
  v7 = [v5 proxyLockFilePathForDatabasePath:path];
  replyCopy[2](replyCopy, v7);
}

- (id)resetSocialGroupsWithReply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v16 = 0u;
  *sel = 0u;
  v14 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v14) = enabled;
  if (enabled)
  {
    *(&v14 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetSocialGroupsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v14 + 1), (&v16 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v8 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryService resetSocialGroupsWithReply:]"];

  v9 = [PLSocialGroup resetAllInLibrary:v8 completion:replyCopy];

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v16)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }

  return v9;
}

- (id)resetPersonsWithReply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v16 = 0u;
  *sel = 0u;
  v14 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v14) = enabled;
  if (enabled)
  {
    *(&v14 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetPersonsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v14 + 1), (&v16 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v8 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryService resetPersonsWithReply:]"];

  v9 = [PLPerson resetAllInLibrary:v8 completion:replyCopy];

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v16)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }

  return v9;
}

- (id)transferPersonsWithUuids:(id)uuids fromLibraryURL:(id)l transferOptions:(id)options reply:(id)reply
{
  v36 = *MEMORY[0x1E69E9840];
  uuidsCopy = uuids;
  lCopy = l;
  optionsCopy = options;
  replyCopy = reply;
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v31) = enabled;
  if (enabled)
  {
    v15 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: transferPersonsWithUuids:fromLibraryURL:transferOptions:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v31 + 1);
    *(&v31 + 1) = v15;

    os_activity_scope_enter(v15, (&v32 + 8));
  }

  mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
  v18 = [lCopy url];
  v30 = 0;
  v19 = [mEMORY[0x1E69BF278] URLFromClientLibraryURL:v18 sandboxExtension:0 error:&v30];
  v20 = v30;

  if (v19)
  {
    v21 = +[PLPhotoLibraryBundleController sharedBundleController];
    v22 = [v21 openBundleAtLibraryURL:v19];

    libraryBundle = [(PLAssetsdLibraryService *)self libraryBundle];
    v24 = [v22 transferPersons:uuidsCopy toBundle:libraryBundle options:optionsCopy completion:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, v20);
    v24 = 0;
  }

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v35 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }

  return v24;
}

- (id)transferAssetsWithUuids:(id)uuids fromLibraryURL:(id)l transferOptions:(id)options reply:(id)reply
{
  v36 = *MEMORY[0x1E69E9840];
  uuidsCopy = uuids;
  lCopy = l;
  optionsCopy = options;
  replyCopy = reply;
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v31) = enabled;
  if (enabled)
  {
    v15 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: transferAssetsWithUuids:fromLibraryURL:transferOptions:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v31 + 1);
    *(&v31 + 1) = v15;

    os_activity_scope_enter(v15, (&v32 + 8));
  }

  mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
  v18 = [lCopy url];
  v30 = 0;
  v19 = [mEMORY[0x1E69BF278] URLFromClientLibraryURL:v18 sandboxExtension:0 error:&v30];
  v20 = v30;

  if (v19)
  {
    v21 = +[PLPhotoLibraryBundleController sharedBundleController];
    v22 = [v21 openBundleAtLibraryURL:v19];

    libraryBundle = [(PLAssetsdLibraryService *)self libraryBundle];
    v24 = [v22 transferAssets:uuidsCopy toBundle:libraryBundle options:optionsCopy completion:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, v20);
    v24 = 0;
  }

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v35 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }

  return v24;
}

- (id)libraryBundle
{
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  libraryBundle = [libraryServicesManager libraryBundle];

  return libraryBundle;
}

- (void)publishRemoteChangeEvent:(id)event delayedSaveActionsDetail:(id)detail reply:(id)reply
{
  replyCopy = reply;
  detailCopy = detail;
  eventCopy = event;
  libraryBundle = [(PLAssetsdLibraryService *)self libraryBundle];
  changeHandlingContainer = [libraryBundle changeHandlingContainer];

  object = [eventCopy object];

  [changeHandlingContainer publishRemoteChangeEvent:object delayedSaveActionsDetail:detailCopy reply:replyCopy];
}

- (void)automaticallyDeleteEmptyAlbumWithObjectURI:(id)i reply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v28) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: automaticallyDeleteEmptyAlbumWithObjectURI:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v28 + 1);
    *(&v28 + 1) = v9;

    os_activity_scope_enter(v9, (&v29 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v27 = 0;
  v12 = [libraryServicesManager awaitLibraryState:7 error:&v27];
  v13 = v27;

  if (v12)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    persistentStoreCoordinator = [libraryServicesManager2 persistentStoreCoordinator];

    v16 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:iCopy];
    if (v16)
    {
      libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
      imageWriter = [libraryServicesManager3 imageWriter];
      [imageWriter enqueueAutoDeleteEmptyAlbumJobWithAlbumID:v16];

      replyCopy[2](replyCopy, 1, 0);
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v32 = @"Invalid album object URI";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v21];
      (replyCopy)[2](replyCopy, 0, v22);
    }
  }

  else
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "LibraryServicesManager cannot get to the Running state", buf, 2u);
    }

    (replyCopy)[2](replyCopy, 0, v13);
  }

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v34 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (void)updateThumbnailsForPhotos:(id)photos assignNewIndex:(BOOL)index forceRefresh:(BOOL)refresh reply:(id)reply
{
  v42 = *MEMORY[0x1E69E9840];
  photosCopy = photos;
  replyCopy = reply;
  v38 = 0u;
  *sel = 0u;
  v37 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v37) = enabled;
  if (enabled)
  {
    v13 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: updateThumbnailsForPhotos:assignNewIndex:forceRefresh:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v37 + 1);
    *(&v37 + 1) = v13;

    os_activity_scope_enter(v13, (&v38 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v36 = 0;
  v16 = [libraryServicesManager awaitLibraryState:6 error:&v36];
  v17 = v36;

  if (v16)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    databaseContext = [libraryServicesManager2 databaseContext];
    v20 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdLibraryService updateThumbnailsForPhotos:assignNewIndex:forceRefresh:reply:]"];

    managedObjectContext = [v20 managedObjectContext];
    persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __87__PLAssetsdLibraryService_updateThumbnailsForPhotos_assignNewIndex_forceRefresh_reply___block_invoke;
    v30[3] = &unk_1E7575ED8;
    v31 = photosCopy;
    v23 = persistentStoreCoordinator;
    v32 = v23;
    v24 = v20;
    v33 = v24;
    refreshCopy = refresh;
    indexCopy = index;
    [v24 performTransaction:v30 completionHandler:replyCopy];
  }

  else
  {
    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "LibraryServicesManager cannot get to the PreparingAccessible state", buf, 2u);
    }

    replyCopy[2](replyCopy);
  }

  if (v37 == 1)
  {
    os_activity_scope_leave((&v38 + 8));
  }

  if (v38)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    v28 = v38;
    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v41 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

void __87__PLAssetsdLibraryService_updateThumbnailsForPhotos_assignNewIndex_forceRefresh_reply___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v38 + 1) + 8 * i)];
        v9 = [*(a1 + 40) managedObjectIDForURIRepresentation:v8];
        if (v9)
        {
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v5);
  }

  v10 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    v10 = v2;
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v10];
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  [v14 setIncludesPendingChanges:1];
  v32 = v11;
  [v14 setPredicate:v11];
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v45 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  [v14 setSortDescriptors:v16];

  v17 = [*(a1 + 48) managedObjectContext];
  v37 = 0;
  v31 = v14;
  v18 = [v17 executeFetchRequest:v14 error:&v37];
  v19 = v37;

  if (v19)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Fetch for repair assets failed with error %@", buf, 0xCu);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v18;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v33 + 1) + 8 * j);
        if (*(a1 + 56) == 1)
        {
          v27 = [*(a1 + 48) managedObjectContext];
          [v27 refreshObject:v26 mergeChanges:{objc_msgSend(v26, "hasChanges")}];
        }

        v28 = [v26 filename];

        if (v28)
        {
          v29 = [v26 effectiveThumbnailIndex];
          if ((*(a1 + 57) & 1) != 0 || (v30 = v29, v29 == 0x7FFFFFFFFFFFFFFFLL))
          {
            v30 = [PLThumbnailIndexes nextAvailableThumbnailIndexInLibrary:*(a1 + 48)];
          }

          [v26 setEffectiveThumbnailIndex:v30];
          [v26 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 forceSRGBConversion:0];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v23);
  }
}

- (void)repairSingletonObjectsWithReply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: repairSingletonObjectsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v20 + 1);
    *(&v20 + 1) = v6;

    os_activity_scope_enter(v6, (&v21 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v19 = 0;
  v9 = [libraryServicesManager awaitLibraryState:6 error:&v19];
  v10 = v19;

  if (v9)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    modelMigrator = [libraryServicesManager2 modelMigrator];
    [modelMigrator repairSingletonObjectsInDatabase];

    if (!replyCopy)
    {
      goto LABEL_10;
    }

    v13 = 0;
  }

  else
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "LibraryServicesManager cannot get to the PreparingAccessible state", buf, 2u);
    }

    v13 = v10;
  }

  (replyCopy)[2](replyCopy, v9, v13);
LABEL_10:

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v21;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (void)recoverFromCrashIfNeeded
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  *sel = 0u;
  v18 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v18) = enabled;
  if (enabled)
  {
    v4 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: recoverFromCrashIfNeeded", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v5 = *(&v18 + 1);
    *(&v18 + 1) = v4;

    os_activity_scope_enter(v4, (&v19 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v17 = 0;
  v7 = [libraryServicesManager awaitLibraryState:6 error:&v17];
  v8 = v17;

  if (v7)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    imageWriter = [libraryServicesManager2 imageWriter];

    libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    crashRecoverySupport = [libraryServicesManager3 crashRecoverySupport];

    [crashRecoverySupport recoverFromCrashIfNeededWithImageWriter:imageWriter];
  }

  else
  {
    imageWriter = PLBackendGetLog();
    if (os_log_type_enabled(imageWriter, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, imageWriter, OS_LOG_TYPE_ERROR, "LibraryServicesManager cannot get to the PreparingAccessible state", buf, 2u);
    }
  }

  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v19;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v22 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (id)importFileSystemAssetsWithReason:(id)reason force:(BOOL)force reply:(id)reply
{
  forceCopy = force;
  v37 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  replyCopy = reply;
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v32) = enabled;
  if (enabled)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: importFileSystemAssetsWithReason:force:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v32 + 1);
    *(&v32 + 1) = v11;

    os_activity_scope_enter(v11, (&v33 + 8));
  }

  v13 = [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdLibraryService importFileSystemAssetsWithReason:force:reply:]"];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v31 = 0;
  v15 = [libraryServicesManager awaitLibraryState:6 error:&v31];
  v16 = v31;

  if (v15)
  {
    v17 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    [v17 becomeCurrentWithPendingUnitCount:{objc_msgSend(v17, "totalUnitCount")}];
    if (forceCopy)
    {
      v18 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdLibraryService importFileSystemAssetsWithReason:force:reply:]"];
      globalValues = [v18 globalValues];
      [globalValues setImportFilesystemAssetsState:-1];
    }

    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    modelMigrator = [libraryServicesManager2 modelMigrator];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __72__PLAssetsdLibraryService_importFileSystemAssetsWithReason_force_reply___block_invoke;
    v28[3] = &unk_1E7575EB0;
    v29 = v13;
    v30 = replyCopy;
    [modelMigrator loadFileSystemDataIntoDatabaseIfNeededWithReason:reasonCopy completionHandler:v28];
  }

  else
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "LibraryServicesManager cannot get to the PreparingAccessible state", buf, 2u);
    }

    replyCopy[2](replyCopy);
    v17 = 0;
  }

  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v36 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }

  return v17;
}

uint64_t __72__PLAssetsdLibraryService_importFileSystemAssetsWithReason_force_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stillAlive];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getPhotoLibraryStoreXPCListenerEndpointWithReply:(id)reply
{
  v38 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v29 = 0;
  v6 = [libraryServicesManager awaitLibraryState:7 error:&v29];
  v7 = v29;

  if (v6)
  {
    v27 = 0u;
    *sel = 0u;
    v26 = 0u;
    enabled = [MEMORY[0x1E69BF350] enabled];
    LOBYTE(v26) = enabled;
    if (enabled)
    {
      v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getPhotoLibraryStoreXPCListenerEndpointWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      v10 = *(&v26 + 1);
      *(&v26 + 1) = v9;

      os_activity_scope_enter(*(&v26 + 1), (&v27 + 8));
    }

    xpcPhotoLibraryStoreContainer = self->_xpcPhotoLibraryStoreContainer;
    if (!xpcPhotoLibraryStoreContainer)
    {
      libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
      pathManager = [libraryServicesManager2 pathManager];
      v14 = [PLXPCPhotoLibraryStoreContainer newContainerWithPathManager:pathManager connectionAuthorization:self->_connectionAuthorization];
      v15 = self->_xpcPhotoLibraryStoreContainer;
      self->_xpcPhotoLibraryStoreContainer = v14;

      xpcPhotoLibraryStoreContainer = self->_xpcPhotoLibraryStoreContainer;
    }

    listenerEndpoint = [(PLXPCPhotoLibraryStoreContainer *)xpcPhotoLibraryStoreContainer listenerEndpoint];
    v17 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
      pathManager2 = [libraryServicesManager3 pathManager];
      trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
      clientProcessIdentifier = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization clientProcessIdentifier];
      *buf = 134218754;
      v31 = listenerEndpoint;
      v32 = 2112;
      v33 = pathManager2;
      v34 = 2112;
      v35 = trustedCallerBundleID;
      v36 = 1024;
      v37 = clientProcessIdentifier;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Vending XPC store endpoint %p for %@ to %@[%d]", buf, 0x26u);
    }

    replyCopy[2](replyCopy, listenerEndpoint);
    if (v26 == 1)
    {
      os_activity_scope_leave((&v27 + 8));
    }

    if (v27)
    {
      v22 = PLRequestGetLog();
      v23 = v22;
      if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        Name = sel_getName(sel[1]);
        *buf = 136446210;
        v31 = Name;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v25 = PLBackendGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "LibraryServicesManager is not running", &v26, 2u);
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)_sendClientReply:(id)reply sandboxExtensionsByPath:(id)path error:(id)error
{
  errorCopy = error;
  (*(reply + 2))(reply, path, errorCopy);
  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0FC0198];
  v20 = errorCopy;
  if (v20)
  {
    v10 = *MEMORY[0x1E69BFF48];
    v11 = *MEMORY[0x1E696AA08];
    v12 = v20;
    do
    {
      domain = [v12 domain];
      if ([domain isEqual:v10])
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "code")}];
        v15 = [v9 containsObject:v14];

        if (v15)
        {
          libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
          libraryBundle = [libraryServicesManager libraryBundle];

          [(PLPhotoLibraryBundleController *)self->_libraryBundleController shutdownBundle:libraryBundle reason:v20];
          break;
        }
      }

      else
      {
      }

      userInfo = [v12 userInfo];
      v17 = [userInfo objectForKeyedSubscript:v11];

      v12 = v17;
    }

    while (v17);
  }
}

- (id)_returnValueForProgress:(id)progress addTo:(id)to
{
  toCopy = to;
  progressCopy = progress;
  v7 = [[PLProgressFollower alloc] initWithSourceProgress:progressCopy progressHandler:0];

  [toCopy addObject:v7];
  outputProgress = [(PLProgressFollower *)v7 outputProgress];

  return outputProgress;
}

- (id)_preRunningProgress
{
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  preRunningProgress = [libraryServicesManager preRunningProgress];
  v5 = [(PLAssetsdLibraryService *)self _returnValueForProgress:preRunningProgress addTo:self->_preRunningProgressFollowers];

  return v5;
}

- (id)upgradePhotoLibraryDatabaseWithOptions:(id)options reply:(id)reply
{
  v68 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v58 = 0u;
  *sel = 0u;
  v57 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v57) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: upgradePhotoLibraryDatabaseWithOptions:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v57 + 1);
    *(&v57 + 1) = v9;

    os_activity_scope_enter(v9, (&v58 + 8));
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v56 = 0;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];
  libraryURL = [pathManager libraryURL];

  path = [libraryURL path];
  LODWORD(pathManager) = [defaultManager fileExistsAtPath:path isDirectory:&v56];
  v16 = v56;

  if ((pathManager & v16) == 0)
  {
    v26 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      path2 = [libraryURL path];
      *buf = 138412290;
      v67 = path2;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Unable to upgrade photo library because it does not exist at path %@.", buf, 0xCu);
    }

    v28 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A368];
    path3 = [libraryURL path];
    v63 = path3;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v25 = [v28 errorWithDomain:*MEMORY[0x1E69BFF48] code:41015 userInfo:v29];

LABEL_13:
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v17 = MEMORY[0x1E69BF2A0];
  libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  LOBYTE(v17) = [v17 shouldAutoUpgradeWellKnownPhotoLibraryIdentifier:{objc_msgSend(libraryServicesManager2, "wellKnownPhotoLibraryIdentifier")}];

  if ((v17 & 1) == 0 && ![(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientAuthorizedForLibraryUpgrade])
  {
    trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
    v20 = [trustedCallerBundleID isEqualToString:@"com.apple.migrationpluginwrapper"];

    if ((v20 & 1) == 0)
    {
      v21 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        trustedCallerBundleID2 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
        *buf = 138543362;
        v67 = trustedCallerBundleID2;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Denying upgrade request from %{public}@. Only certain clients are allowed to upgrade the library.", buf, 0xCu);
      }

      v23 = MEMORY[0x1E696ABC0];
      v64 = *MEMORY[0x1E696A998];
      v65 = libraryURL;
      path3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v25 = [v23 errorWithDomain:*MEMORY[0x1E69BFF48] code:41005 userInfo:path3];
      goto LABEL_13;
    }
  }

LABEL_14:
  trustedCallerBundleID3 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
  libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  [libraryServicesManager3 setUpgradeClient:trustedCallerBundleID3];

  v32 = [optionsCopy objectForKeyedSubscript:@"PLPhotoLibraryCreateOptions"];
  LOBYTE(libraryServicesManager3) = [v32 unsignedIntegerValue];

  if ((libraryServicesManager3 & 4) != 0)
  {
    libraryServicesManager4 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    pathManager2 = [libraryServicesManager4 pathManager];

    [pathManager2 setSqliteErrorForRebuildReason:10 allowsExit:0];
    libraryServicesManager5 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    libraryBundle = [libraryServicesManager5 libraryBundle];

    v43 = MEMORY[0x1E696ABC0];
    v60 = *MEMORY[0x1E696A578];
    v61 = @"client requested library rebuild";
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v45 = [v43 errorWithDomain:*MEMORY[0x1E69BFF48] code:41020 userInfo:v44];

    WeakRetained = objc_loadWeakRetained(&self->_assetsdService);
    [libraryBundle unbindAssetsdService:WeakRetained];
    [(PLPhotoLibraryBundleController *)self->_libraryBundleController shutdownBundle:libraryBundle reason:v45];
    replyCopy[2](replyCopy, 0, v45);
    [WeakRetained invalidateConnectionWithReason:v45];

    v25 = 0;
    _preRunningProgress = 0;
    goto LABEL_20;
  }

  v33 = [[PLLibraryOpenerCreationOptions alloc] initWithOptionsDictionary:optionsCopy connectionAuthorization:self->_connectionAuthorization];
  libraryServicesManager6 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  [libraryServicesManager6 setCreateMode:0 options:v33];

  libraryServicesManager7 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v55 = 0;
  v36 = [libraryServicesManager7 activate:&v55];
  v25 = v55;

  if (v36)
  {
    objc_initWeak(buf, self);
    libraryServicesManager8 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __72__PLAssetsdLibraryService_upgradePhotoLibraryDatabaseWithOptions_reply___block_invoke;
    v52[3] = &unk_1E7575E88;
    objc_copyWeak(&v54, buf);
    v52[4] = self;
    v53 = replyCopy;
    [libraryServicesManager8 awaitLibraryState:7 completionHandler:v52];

    objc_destroyWeak(&v54);
    objc_destroyWeak(buf);

    _preRunningProgress = [(PLAssetsdLibraryService *)self _preRunningProgress];
    goto LABEL_20;
  }

LABEL_19:
  [(PLAssetsdLibraryService *)self _sendClientReply:replyCopy sandboxExtensionsByPath:0 error:v25];
  _preRunningProgress = 0;
LABEL_20:

  if (v57 == 1)
  {
    os_activity_scope_leave((&v58 + 8));
  }

  if (v58)
  {
    v47 = PLRequestGetLog();
    v48 = v47;
    v49 = v58;
    if ((v58 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v67 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v48, OS_SIGNPOST_INTERVAL_END, v49, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }

  return _preRunningProgress;
}

void __72__PLAssetsdLibraryService_upgradePhotoLibraryDatabaseWithOptions_reply___block_invoke(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (a2)
  {
    v7 = [*(a1 + 32) sandboxExtensionsByPathForLibraryAccessRole:1];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [WeakRetained _sendClientReply:*(a1 + 40) sandboxExtensionsByPath:0 error:v8];
  }
}

- (id)postOpenProgressWithReply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v22) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: postOpenProgressWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __53__PLAssetsdLibraryService_postOpenProgressWithReply___block_invoke;
  v19 = &unk_1E7576FF8;
  selfCopy = self;
  v9 = replyCopy;
  v21 = v9;
  [libraryServicesManager awaitLibraryState:7 completionHandler:&v16];

  v10 = [(PLAssetsdLibraryService *)self _postRunningProgress:v16];

  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }

  return v10;
}

void __53__PLAssetsdLibraryService_postOpenProgressWithReply___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) libraryServicesManager];
    v4 = [v3 modelMigrator];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__PLAssetsdLibraryService_postOpenProgressWithReply___block_invoke_2;
    v6[3] = &unk_1E7576AA0;
    v7 = *(a1 + 40);
    [v4 loadFileSystemAssetsNotifyCompleted:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)openPhotoLibraryDatabaseWithOptions:(id)options reply:(id)reply
{
  v41 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v32) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: openPhotoLibraryDatabaseWithOptions:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v32 + 1);
    *(&v32 + 1) = v9;

    os_activity_scope_enter(v9, (&v33 + 8));
  }

  newLibraryOpener = [(PLAssetsdLibraryService *)self newLibraryOpener];
  v31 = 0;
  v12 = [newLibraryOpener openPhotoLibraryDatabaseWithAutoUpgrade:0 autoCreate:0 error:&v31];
  v13 = v31;
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (v14 == 1)
  {
    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    createOptions = [libraryServicesManager createOptions];

    if ((createOptions & 0x10) == 0)
    {
      v13 = 0;
      goto LABEL_15;
    }

    trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
    v18 = [trustedCallerBundleID isEqualToString:@"com.apple.mediaanalysisd"];

    if (v18)
    {
      v19 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        trustedCallerBundleID2 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
        *buf = 138543362;
        v40 = trustedCallerBundleID2;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Library createOptions do not allow mediaanalysisd to run. Rejecting connection from %{public}@", buf, 0xCu);
      }

      v21 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A278];
      trustedCallerBundleID4 = NSStringFromPLErrorCode();
      v38 = trustedCallerBundleID4;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v13 = [v21 errorWithDomain:*MEMORY[0x1E69BFF48] code:41005 userInfo:v23];
      v24 = 0;
      goto LABEL_18;
    }

    v13 = 0;
  }

  if (!v12)
  {
    v24 = 0;
    goto LABEL_20;
  }

LABEL_15:
  v24 = [(PLAssetsdLibraryService *)self sandboxExtensionsByPathForLibraryAccessRole:1];
  if ([optionsCopy libraryInitiator] == 1)
  {
    trustedCallerBundleID3 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
    v26 = [trustedCallerBundleID3 length] == 0;

    if (!v26)
    {
      v35 = *MEMORY[0x1E69BF4C8];
      trustedCallerBundleID4 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
      v36 = trustedCallerBundleID4;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      PLSendCoreAnalyticEvent();
LABEL_18:
    }
  }

LABEL_20:
  [(PLAssetsdLibraryService *)self _sendClientReply:replyCopy sandboxExtensionsByPath:v24 error:v13];

  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v27 = PLRequestGetLog();
    v28 = v27;
    v29 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v40 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, v29, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (void)openApplicationOwnedFoldersWithReply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v20 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = enabled;
  if (enabled)
  {
    *(&v20 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: openApplicationOwnedFoldersWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v20 + 1), (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];

  fileManager = [MEMORY[0x1E69BF238] fileManager];
  libraryURL = [pathManager libraryURL];
  path = [libraryURL path];
  v11 = [fileManager fileExistsAtPath:path];

  if (v11)
  {
    v12 = [(PLAssetsdLibraryService *)self sandboxExtensionsByPathForLibraryAccessRole:2];
    v13 = 0;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v15 = NSStringFromPLErrorCode();
    v25 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [v14 errorWithDomain:*MEMORY[0x1E69BFF48] code:41015 userInfo:v16];

    v12 = 0;
  }

  [(PLAssetsdLibraryService *)self _sendClientReply:replyCopy sandboxExtensionsByPath:v12 error:v13];

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (void)validateOrRebuildPhotoLibraryDatabaseWithReply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: validateOrRebuildPhotoLibraryDatabaseWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v20 + 1);
    *(&v20 + 1) = v6;

    os_activity_scope_enter(v6, (&v21 + 8));
  }

  newLibraryOpener = [(PLAssetsdLibraryService *)self newLibraryOpener];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  openerCreationOptions = [libraryServicesManager openerCreationOptions];

  if (!openerCreationOptions)
  {
    v11 = [PLLibraryOpenerCreationOptions alloc];
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    openerCreationOptions = -[PLLibraryOpenerCreationOptions initWithWellKnownLibraryIdentifier:](v11, "initWithWellKnownLibraryIdentifier:", [libraryServicesManager2 wellKnownPhotoLibraryIdentifier]);
  }

  v19 = 0;
  v13 = [newLibraryOpener createPhotoLibraryDatabaseWithOptions:openerCreationOptions error:&v19];
  v14 = v19;
  replyCopy[2](replyCopy, v13, v14);

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v21;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (id)sandboxExtensionsByPathForLibraryAccessRole:(int64_t)role
{
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];

  mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
  v8 = [mEMORY[0x1E69BF278] sandboxExtensionsByPathForClient:self->_connectionAuthorization pathManager:pathManager libraryAccessRole:role];

  return v8;
}

- (id)newLibraryOpener
{
  v3 = [PLPhotoLibraryOpener alloc];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v5 = [(PLPhotoLibraryOpener *)v3 initWithLibraryServicesManager:libraryServicesManager reportInProgressUpgrades:[(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientAuthorizedForLibraryUpgrade]];

  return v5;
}

- (void)isLibraryReadyForImportWithReply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v19 = 0u;
  *sel = 0u;
  v18 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v18) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: isLibraryReadyForImportWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v18 + 1);
    *(&v18 + 1) = v6;

    os_activity_scope_enter(v6, (&v19 + 8));
  }

  v8 = [PLPhotoLibraryImportValidation alloc];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v10 = [(PLPhotoLibraryImportValidation *)v8 initWithLibraryManager:libraryServicesManager];

  v17 = 0;
  v11 = [(PLPhotoLibraryImportValidation *)v10 isLibraryValidForImportWithError:&v17];
  v12 = v17;
  replyCopy[2](replyCopy, v11, v12);

  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v19;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v22 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (void)getCurrentModelVersionWithReply:(id)reply
{
  v14 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v10 = 0u;
  *sel = 0u;
  v8 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v8) = enabled;
  if (enabled)
  {
    *(&v8 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getCurrentModelVersionWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v8 + 1), (&v10 + 8));
  }

  replyCopy[2](replyCopy, +[PLModelMigrator currentModelVersion]);
  if (v9 == 1)
  {
    os_activity_scope_leave((&v10 + 8));
  }

  if (v10)
  {
    v5 = PLRequestGetLog();
    v6 = v5;
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v13 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_END, v10, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (void)launchAssetsd
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  *sel = 0u;
  v6 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v6) = enabled;
  if (enabled)
  {
    *(&v6 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: launchAssetsd", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(*(&v6 + 1), (&v7 + 8));
    if (v6)
    {
      os_activity_scope_leave((&v7 + 8));
    }
  }

  if (v7)
  {
    v3 = PLRequestGetLog();
    v4 = v3;
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v10 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v4, OS_SIGNPOST_INTERVAL_END, v7, "PLXPC Sync", "unxpected nil libraryURL setting required state for %@", buf, 0xCu);
    }
  }
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_preRunningProgressFollowers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_postRunningProgressFollowers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
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

        [*(*(&v14 + 1) + 8 * v12++) invalidate];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  v13.receiver = self;
  v13.super_class = PLAssetsdLibraryService;
  [(PLAssetsdLibraryService *)&v13 dealloc];
}

- (PLAssetsdLibraryService)initWithLibraryServicesManager:(id)manager bundleController:(id)controller connectionAuthorization:(id)authorization assetsdService:(id)service
{
  controllerCopy = controller;
  authorizationCopy = authorization;
  serviceCopy = service;
  v21.receiver = self;
  v21.super_class = PLAssetsdLibraryService;
  v14 = [(PLAbstractLibraryServicesManagerService *)&v21 initWithLibraryServicesManager:manager];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_connectionAuthorization, authorization);
    objc_storeStrong(&v15->_libraryBundleController, controller);
    objc_storeWeak(&v15->_assetsdService, serviceCopy);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    preRunningProgressFollowers = v15->_preRunningProgressFollowers;
    v15->_preRunningProgressFollowers = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    postRunningProgressFollowers = v15->_postRunningProgressFollowers;
    v15->_postRunningProgressFollowers = v18;
  }

  return v15;
}

+ (int64_t)requiredLibraryServicesStateForURL:(id)l
{
  v9 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v5 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 138412290;
      v8 = objc_opt_class();
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_FAULT, "unxpected nil libraryURL setting required state for %@", &v7, 0xCu);
    }

    goto LABEL_7;
  }

  if ([MEMORY[0x1E69BF2A0] isSystemPhotoLibraryURL:lCopy])
  {
LABEL_7:
    v4 = 6;
    goto LABEL_8;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

@end