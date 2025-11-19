@interface VUISidebandMediaLibrary
+ (void)initialize;
- (BOOL)_invalidateKeysForVideoManagedObject:(id)a3 saveWhenDone:(BOOL)a4 invalidateImmediately:(BOOL)a5;
- (BOOL)_removeDownloadedMediaForVideoManagedObject:(id)a3 markAsDeleted:(BOOL)a4 saveWhenDone:(BOOL)a5 invalidateImmediately:(BOOL)a6;
- (BOOL)hasDownloadingVideosWithSeasonCanonicalId:(id)a3;
- (VUISidebandMediaLibrary)initWithManager:(id)a3;
- (id)_availableComingSoonVideos;
- (id)_comingSoonVideoForCanonicalID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5;
- (id)_downloadedVideosForNonSignedInUsers;
- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
- (id)_imageLoadParamsForImageLoaderObject:(id)a3;
- (id)_mainContextManagedObjectsForObjects:(id)a3;
- (id)_managedObjectWithEntityName:(id)a3 predicate:(id)a4 createIfNeeded:(BOOL)a5 wasCreated:(BOOL *)a6;
- (id)_movieForAdamID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5;
- (id)_objectsWithFetchRequest:(id)a3 usingMainThreadContext:(BOOL)a4;
- (id)_tvEpisodeForAdamID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5;
- (id)_tvSeasonForAdamID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5;
- (id)_tvSeasonForCanonicalID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5;
- (id)_tvSeriesForAdamID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5;
- (id)_tvSeriesForCanonicalID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5;
- (id)_videosMarkedAsDeleted;
- (id)_videosWithDownloadStates:(id)a3 downloadTrigger:(int64_t)a4 shouldDeleteAfterCompletion:(id)a5 useMainThreadContext:(BOOL)a6;
- (id)allFpsKeyDeletionInfos;
- (id)comingSoonObjectWithCanonicalID:(id)a3 createIfNeeded:(BOOL)a4;
- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4;
- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3;
- (id)episodesWithDownloadStates:(id)a3 seasonCanonicalId:(id)a4 usingMainThreadContext:(BOOL)a5;
- (id)episodesWithDownloadStates:(id)a3 showCanonicalId:(id)a4 usingMainThreadContext:(BOOL)a5;
- (id)episodesWithSeasonCanonicalIds:(id)a3 usingMainThreadContext:(BOOL)a4;
- (id)existingFpsKeyInfoForKeyURI:(id)a3;
- (id)fpsKeyInfoForVideo:(id)a3 keyURI:(id)a4 createIfNeeded:(BOOL)a5 wasCreated:(BOOL *)a6;
- (id)imageInfoForSeries:(id)a3 imageType:(unint64_t)a4 createIfNeeded:(BOOL)a5 wasCreated:(BOOL *)a6;
- (id)imageInfoForVideo:(id)a3 imageType:(unint64_t)a4 createIfNeeded:(BOOL)a5 wasCreated:(BOOL *)a6;
- (id)mainContextVideoForVideo:(id)a3;
- (id)performFetch:(id)a3;
- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4;
- (id)seasonForCanonicalIDOrAdamID:(id)a3 createIfNeeded:(BOOL)a4;
- (id)seriesForCanonicalIDOrAdamID:(id)a3;
- (id)title;
- (id)videoForAdamID:(id)a3 useMainThreadContext:(BOOL)a4;
- (id)videoForMPMediaItem:(id)a3;
- (id)videoForPlayable:(id)a3;
- (id)videosForAdamIDs:(id)a3 useMainThreadContext:(BOOL)a4;
- (id)videosWithDownloadState:(int64_t)a3 entitlementTypes:(id)a4 sortDescriptors:(id)a5 useMainThreadContext:(BOOL)a6;
- (id)videosWithDownloadStates:(id)a3 downloadTrigger:(int64_t)a4 shouldDeleteAfterCompletion:(BOOL)a5 useMainThreadContext:(BOOL)a6;
- (id)videosWithDownloadStates:(id)a3 entitlementTypes:(id)a4 sortDescriptors:(id)a5 useMainThreadContext:(BOOL)a6;
- (id)videosWithExpiredDownloadsUsingMainThreadContext:(BOOL)a3;
- (unint64_t)_countForFetchRequest:(id)a3 usingMainThreadContext:(BOOL)a4;
- (unint64_t)countOfComingSoonVideosWithSeasonCanonicalId:(id)a3;
- (unint64_t)countOfComingSoonVideosWithShowCanonicalId:(id)a3;
- (unint64_t)countOfDownloadedOrDownloadingOrEnqueuedSubscriptionVideosForNonMainQueue;
- (unint64_t)countOfDownloadedOrDownloadingVideosWithSeasonCanonicalId:(id)a3;
- (unint64_t)countOfDownloadedVideosWithSeasonCanonicalId:(id)a3;
- (void)_activeAccountDidChange:(id)a3;
- (void)_deleteComingSoonVideoManagedObjects:(id)a3;
- (void)_deleteOrphanedDownloads;
- (void)_deleteVideoManagedObjects:(id)a3;
- (void)_mainQueueManagedObjectContextDidSave:(id)a3;
- (void)_migrateVideoExpirationDateAndAllowsManualRenewal;
- (void)_pruneVideosAtAppLaunchWithCompletion:(id)a3;
- (void)_removeDownloadsForNonSignedInUsers;
- (void)dealloc;
- (void)deleteFPSKeyDeletionInfo:(id)a3;
- (void)deleteFPSKeyDeletionInfos:(id)a3;
- (void)invalidateKeysForVideoManagedObject:(id)a3;
- (void)invalidateKeysForVideoManagedObjects:(id)a3;
- (void)removeDownloadedMediaForVideoManagedObject:(id)a3 markAsDeleted:(BOOL)a4 invalidateImmediately:(BOOL)a5;
- (void)removeDownloadedMediaForVideoManagedObjects:(id)a3 markAsDeleted:(BOOL)a4 invalidateImmediately:(BOOL)a5;
- (void)saveChangesToManagedObjects;
@end

@implementation VUISidebandMediaLibrary

+ (void)initialize
{
  if (initialize_onceToken_1 != -1)
  {
    +[VUISidebandMediaLibrary initialize];
  }
}

void __37__VUISidebandMediaLibrary_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.VideosUI", "VUISidebandMediaLibrary");
  v1 = sLogObject_2;
  sLogObject_2 = v0;
}

- (void)_migrateVideoExpirationDateAndAllowsManualRenewal
{
  v55 = *MEMORY[0x1E69E9840];
  v24 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__1;
  v46 = __Block_byref_object_dispose__1;
  v47 = 0;
  v3 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VUISidebandMediaLibrary__migrateVideoExpirationDateAndAllowsManualRenewal__block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v42;
  v23 = self;
  dispatch_sync(v3, block);

  [v43[5] executeFetchRequest:v24 error:0];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v54 count:16];
  if (v4)
  {
    v5 = 0;
    v26 = *v38;
    v27 = v4;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        if (([(__CFString *)v6 hasExpirationDate]& 1) == 0)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v7 = [(__CFString *)v6 fpsKeyInfo];
          v8 = [v7 countByEnumeratingWithState:&v33 objects:v53 count:16];
          if (v8)
          {
            v9 = *v34;
            while (2)
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v34 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = [*(*(&v33 + 1) + 8 * j) expirationDate];
                v12 = v11 == 0;

                if (!v12)
                {
                  v13 = sLogObject_2;
                  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v49 = v6;
                    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Setting hasExpirationDate to YES for %@", buf, 0xCu);
                  }

                  v5 = 1;
                  [(__CFString *)v6 setHasExpirationDate:1];
                  goto LABEL_19;
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v33 objects:v53 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = [(__CFString *)v6 fpsKeyInfo];
        v15 = [v14 countByEnumeratingWithState:&v29 objects:v52 count:16];
        if (v15)
        {
          v16 = *v30;
          do
          {
            for (k = 0; k != v15; ++k)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v29 + 1) + 8 * k);
              v19 = [(__CFString *)v6 allowsManualRenewal];
              if (v19 != [v18 allowsManualRenewal])
              {
                v20 = sLogObject_2;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = [v18 allowsManualRenewal];
                  *buf = 138412546;
                  v22 = @"NO";
                  if (v21)
                  {
                    v22 = @"YES";
                  }

                  v49 = v22;
                  v50 = 2112;
                  v51 = v6;
                  _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Setting allowsManualRenewal to %@ for %@", buf, 0x16u);
                }

                -[__CFString setAllowsManualRenewal:](v6, "setAllowsManualRenewal:", [v18 allowsManualRenewal]);
                v5 = 1;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v29 objects:v52 count:16];
          }

          while (v15);
        }
      }

      v27 = [obj countByEnumeratingWithState:&v37 objects:v54 count:16];
    }

    while (v27);

    if (v5)
    {
      [(VUISidebandMediaLibrary *)v23 saveChangesToManagedObjects];
    }
  }

  else
  {
  }

  _Block_object_dispose(&v42, 8);
}

void __76__VUISidebandMediaLibrary__migrateVideoExpirationDateAndAllowsManualRenewal__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_videosMarkedAsDeleted
{
  v3 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"markedAsDeleted"];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  [v3 setPredicate:v4];
  v5 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VUISidebandMediaLibrary__videosMarkedAsDeleted__block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(v5, block);

  v6 = [v10[5] executeFetchRequest:v3 error:0];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __49__VUISidebandMediaLibrary__videosMarkedAsDeleted__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_downloadedVideosForNonSignedInUsers
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (+[VUIUtilities isInRetailDemoMode])
  {
    v3 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Device is in retail demo mode; not deleting downloads for non-signed-in users", buf, 2u);
    }

    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69D5920] activeAccount];
    v6 = [v5 ams_DSID];

    v7 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %ld", @"downloadState", 2];
    v9 = v8;
    if (v6)
    {
      v9 = v8;
      if (([v6 isEqualToNumber:&unk_1F5E5CD38] & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %@", @"dsid", v6];
        v11 = MEMORY[0x1E696AB28];
        v22[0] = v8;
        v22[1] = v10;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
        v9 = [v11 andPredicateWithSubpredicates:v12];
      }
    }

    [v7 setPredicate:v9];
    v13 = [(VUISidebandMediaLibrary *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__VUISidebandMediaLibrary__downloadedVideosForNonSignedInUsers__block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(v13, block);

    v4 = [*(v17 + 5) executeFetchRequest:v7 error:0];

    _Block_object_dispose(buf, 8);
  }

  return v4;
}

void __63__VUISidebandMediaLibrary__downloadedVideosForNonSignedInUsers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_availableComingSoonVideos
{
  v3 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"ComingSoonVideo"];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %@", @"availabilityStartDate", v4];
  [v3 setPredicate:v5];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v6 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VUISidebandMediaLibrary__availableComingSoonVideos__block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v6, block);

  v7 = [v11[5] executeFetchRequest:v3 error:0];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __53__VUISidebandMediaLibrary__availableComingSoonVideos__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_deleteOrphanedDownloads
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = dispatch_get_global_queue(9, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke;
  v6[3] = &unk_1E872D990;
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (id)allFpsKeyDeletionInfos
{
  v3 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"FPSKeyDeletionInfo"];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v4 = [(VUISidebandMediaLibrary *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__VUISidebandMediaLibrary_allFpsKeyDeletionInfos__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = [v9[5] executeFetchRequest:v3 error:0];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__VUISidebandMediaLibrary_allFpsKeyDeletionInfos__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v2 = [v1 firstObject];

  if ([v2 length])
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v49 = 0;
    v4 = [v3 contentsOfDirectoryAtPath:v2 error:&v49];
    v5 = v49;

    v6 = &unk_1EE28A000;
    if (v5 && os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke_cold_1();
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v46;
      v30 = *v46;
      v31 = v2;
      do
      {
        v10 = 0;
        v32 = v8;
        do
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * v10);
          if ([v11 hasPrefix:{@"com.apple.UserManagedAssets", v30, v31}])
          {
            v35 = v10;
            v12 = [v2 stringByAppendingPathComponent:v11];
            v13 = *(v6 + 294);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v52 = v12;
              _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Downloads directory path: %@", buf, 0xCu);
            }

            if ([v12 length])
            {

              v14 = [MEMORY[0x1E696AC08] defaultManager];
              v44 = 0;
              v15 = [v14 contentsOfDirectoryAtPath:v12 error:&v44];
              v16 = v44;

              if (v16)
              {
                v17 = *(v6 + 294);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v52 = v16;
                  _os_log_error_impl(&dword_1E323F000, v17, OS_LOG_TYPE_ERROR, "Unable to retrieve downloads directory contents: %@", buf, 0xCu);
                }
              }

              v34 = v16;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v18 = v15;
              v19 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v41;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v41 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v40 + 1) + 8 * i);
                    v24 = [v23 pathExtension];
                    if ([v24 isEqualToString:@"movpkg"])
                    {
                    }

                    else
                    {
                      v25 = [v23 pathExtension];
                      v26 = [v25 isEqualToString:@"m4v"];

                      if (!v26)
                      {
                        continue;
                      }
                    }

                    v27 = [v12 stringByAppendingPathComponent:v23];
                    if ([v27 length])
                    {
                      v28 = sLogObject_2;
                      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v52 = v27;
                        _os_log_debug_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEBUG, "Found download path on file system: %@", buf, 0xCu);
                      }

                      [*(a1 + 32) addObject:v27];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
                }

                while (v20);
              }

              v9 = v30;
              v2 = v31;
              v6 = &unk_1EE28A000;
              v5 = v34;
              v8 = v32;
            }

            v10 = v35;
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v8);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke_262;
  block[3] = &unk_1E872D990;
  v37 = *(a1 + 32);
  v29 = v37.i64[0];
  v39 = vextq_s8(v37, v37, 8uLL);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke_262(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v2 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke_2;
  block[3] = &unk_1E872E5B0;
  v14 = a1;
  block[4] = *(a1 + 32);
  block[5] = &v24;
  dispatch_sync(v2, block);

  v3 = [v25[5] executeFetchRequest:v15 error:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v32 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) localPlaybackURL];
        v10 = [v9 path];

        if (v10)
        {
          v11 = sLogObject_2;
          if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v10;
            _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "SidebandMediaLibrary - download path found: %@", buf, 0xCu);
          }

          [v4 addObject:v10];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v32 count:16];
    }

    while (v6);
  }

  v12 = dispatch_get_global_queue(21, 0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke_263;
  v16[3] = &unk_1E872D990;
  v17 = *(v14 + 40);
  v18 = v4;
  v13 = v4;
  dispatch_async(v12, v16);

  _Block_object_dispose(&v24, 8);
}

void __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke_263(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412546;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (([*(a1 + 40) containsObject:{v8, v13}] & 1) == 0)
        {
          v9 = [MEMORY[0x1E696AC08] defaultManager];
          v14 = 0;
          v10 = [v9 removeItemAtPath:v8 error:&v14];
          v11 = v14;

          v12 = sLogObject_2;
          if (v10)
          {
            if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v20 = v8;
              _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Removed orphaned download at path %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v20 = v8;
            v21 = 2112;
            v22 = v11;
            _os_log_error_impl(&dword_1E323F000, v12, OS_LOG_TYPE_ERROR, "Failed to Remove orphaned download at path %@.  Error: %@", buf, 0x16u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }
}

- (VUISidebandMediaLibrary)initWithManager:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(VUISidebandLibraryIdentifier);
  v22.receiver = self;
  v22.super_class = VUISidebandMediaLibrary;
  v6 = [(VUIMediaLibrary *)&v22 initWithIdentifier:v5 type:0 manager:v4];
  if (v6)
  {
    v7 = dispatch_queue_create("Sideband media library serial queue", 0);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    v9 = [(NSPersistentContainer *)[VUIPersistentContainer alloc] initWithName:@"SidebandLibraryModel"];
    persistentContainer = v6->_persistentContainer;
    v6->_persistentContainer = &v9->super;

    if (!v6->_persistentContainer && os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      [VUISidebandMediaLibrary initWithManager:];
    }

    objc_initWeak(&location, v6);
    v11 = [(NSPersistentContainer *)v6->_persistentContainer persistentStoreDescriptions];
    v12 = [v11 count] == 0;

    v13 = sLogObject_2;
    if (v12)
    {
      v15 = sLogObject_2;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[VUIPersistentContainer defaultDirectoryURL];
        [(VUISidebandMediaLibrary *)v16 initWithManager:buf, v15];
      }
    }

    else
    {
      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Loading persistent store", buf, 2u);
      }

      v14 = v6->_persistentContainer;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __43__VUISidebandMediaLibrary_initWithManager___block_invoke;
      v18[3] = &unk_1E872EBB0;
      objc_copyWeak(&v20, &location);
      v19 = v6;
      [(NSPersistentContainer *)v14 loadPersistentStoresWithCompletionHandler:v18];

      objc_destroyWeak(&v20);
    }

    objc_destroyWeak(&location);
  }

  return v6;
}

void __43__VUISidebandMediaLibrary_initWithManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Loaded persistent store with description: %@ error: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dumpDatabaseToLogIfEnabled];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__VUISidebandMediaLibrary_initWithManager___block_invoke_64;
  v10[3] = &unk_1E872D990;
  v11 = WeakRetained;
  v12 = *(a1 + 32);
  v9 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __43__VUISidebandMediaLibrary_initWithManager___block_invoke_64(uint64_t a1)
{
  [*(a1 + 32) _migrateVideoExpirationDateAndAllowsManualRenewal];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VUISidebandMediaLibrary_initWithManager___block_invoke_2;
  v3[3] = &unk_1E872D990;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 _pruneVideosAtAppLaunchWithCompletion:v3];
}

void __43__VUISidebandMediaLibrary_initWithManager___block_invoke_2(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v2 = VUISignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.SidebandMediaLibrary.Init.ObjectContext", "", buf, 2u);
  }

  v3 = [*(a1 + 32) serialQueue];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __43__VUISidebandMediaLibrary_initWithManager___block_invoke_65;
  v13 = &unk_1E872DB58;
  v14 = *(a1 + 32);
  v15 = &v17;
  dispatch_sync(v3, &v10);

  v4 = VUISignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launch.SidebandMediaLibrary.Init.ObjectContext", "", buf, 2u);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__mainQueueManagedObjectContextDidSave_ name:*MEMORY[0x1E695D350] object:v18[5]];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:*(a1 + 40) selector:sel__activeAccountDidChange_ name:*MEMORY[0x1E69D4A40] object:0];

  [*(a1 + 32) _postContentsDidChangeNotification];
  v7 = +[VUIOfflineKeyRenewalManager sharedInstance];
  [v7 updateKeyRenewalAndExpiration];

  v8 = +[VUISecureInvalidationManager sharedInstance];
  [v8 invalidateKeysForDeletedVideos];

  v9 = +[VUIDownloadManager sharedInstance];
  [v9 initializeDownloadManager];

  _Block_object_dispose(&v17, 8);
}

void __43__VUISidebandMediaLibrary_initWithManager___block_invoke_65(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentContainer];
  v7 = [v2 newBackgroundContext];

  [v7 setUndoManager:0];
  [*(a1 + 32) setBackgroundManagedObjectContext:v7];
  v3 = [*(a1 + 32) persistentContainer];
  v4 = [v3 viewContext];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(*(*(a1 + 40) + 8) + 40) setUndoManager:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUISidebandMediaLibrary;
  [(VUIMediaLibraryImageLoader *)&v4 dealloc];
}

- (id)videoForPlayable:(id)a3
{
  v154 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 adamID];
  v6 = [v4 playbackURL];
  if (v5 && [v5 length] && v6)
  {
    v7 = [v4 canonicalID];
    v8 = [v4 mediaType];
    v151 = 0;
    v9 = [v4 downloadURL];
    v10 = [VUIMediaInfo playbackURLOverrideForOriginalURL:v6 adamID:v5 canonicalID:v7];
    v139 = v10;
    if (v10)
    {
      v11 = v10;

      v6 = v11;
      v9 = v6;
    }

    v141 = v7;
    v142 = v6;
    v143 = v9;
    v144 = self;
    v140 = v8;
    if ([v8 isEqualToString:@"Movie"])
    {
      v12 = [(VUISidebandMediaLibrary *)self _movieForAdamID:v5 createIfNeeded:1 wasCreated:&v151];
      [v12 setCoverArtHasBeenUpdated:1];
      goto LABEL_59;
    }

    if (![v8 isEqualToString:@"Episode"])
    {
      v12 = 0;
      goto LABEL_59;
    }

    v13 = [v4 showCanonicalID];
    v14 = [v4 seasonCanonicalID];
    v15 = [v4 showAdamID];
    v135 = [v4 seasonAdamID];
    v137 = v15;
    if (![v13 length] && !objc_msgSend(v15, "length"))
    {
      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
      {
        [VUISidebandMediaLibrary videoForPlayable:];
      }

      v12 = 0;
      goto LABEL_58;
    }

    v150 = 0;
    v16 = [(VUISidebandMediaLibrary *)self _tvEpisodeForAdamID:v5 createIfNeeded:1 wasCreated:&v151];
    if (![v13 length] || (-[VUISidebandMediaLibrary _tvSeriesForCanonicalID:createIfNeeded:wasCreated:](self, "_tvSeriesForCanonicalID:createIfNeeded:wasCreated:", v13, 0, 0), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (![v15 length] || (-[VUISidebandMediaLibrary _tvSeriesForAdamID:createIfNeeded:wasCreated:](self, "_tvSeriesForAdamID:createIfNeeded:wasCreated:", v15, 0, 0), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if ([v13 length])
        {
          [(VUISidebandMediaLibrary *)self _tvSeriesForCanonicalID:v13 createIfNeeded:1 wasCreated:&v150];
        }

        else
        {
          [(VUISidebandMediaLibrary *)self _tvSeriesForAdamID:v15 createIfNeeded:1 wasCreated:&v150];
        }
        v17 = ;
      }
    }

    v18 = v17;
    v12 = v16;
    v19 = v150;
    v20 = sLogObject_2;
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19 == 1)
    {
      if (!v21)
      {
        goto LABEL_32;
      }

      *buf = 0;
      v22 = "Created managed object for series";
    }

    else
    {
      if (!v21)
      {
        goto LABEL_32;
      }

      *buf = 0;
      v22 = "Using existing managed object for series but updating its metadata";
    }

    _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
LABEL_32:

    v23 = [v4 metadata];
    v24 = [v23 episodeNumber];
    [v12 setEpisodeNumberInSeason:v24];

    v25 = [v4 metadata];
    v26 = [v25 fractionalEpisodeNumber];
    [v12 setFractionalEpisodeNumberInSeason:v26];

    v27 = [v4 metadata];
    v28 = [v27 episodeIndexInSeries];
    [v12 setEpisodeNumberInSeries:v28];

    [v18 setCanonicalID:v13];
    [v18 setAdamID:v137];
    v29 = [v4 metadata];
    v30 = [v29 showTitle];
    [v18 setTitle:v30];

    [v18 setCoverArtHasBeenUpdated:1];
    [v18 addEpisodesObject:v12];
    v31 = [v4 metadata];
    v32 = [v31 showArtworkURLFormat];

    v33 = [v4 metadata];
    v133 = [v33 showArtworkWidth];

    v34 = [v4 metadata];
    v131 = [v34 showArtworkHeight];

    if (v18)
    {
      if ([v32 length] && (objc_msgSend(v133, "doubleValue"), v35 > 0.0) && (objc_msgSend(v131, "doubleValue"), v36 > 0.0))
      {
        v37 = [(VUISidebandMediaLibrary *)v144 imageInfoForSeries:v18 imageType:0 createIfNeeded:1 wasCreated:0];
        [v37 setImageType:0];
        [v37 setUrlFormat:v32];
        [v133 doubleValue];
        [v37 setCanonicalWidth:?];
        [v131 doubleValue];
        [v37 setCanonicalHeight:?];
        [v37 setSeries:v18];
      }

      else
      {
        v37 = sLogObject_2;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [VUISidebandMediaLibrary videoForPlayable:];
        }
      }
    }

    v15 = v137;
    if (![v14 length] && !objc_msgSend(v135, "length"))
    {
      goto LABEL_57;
    }

    v149 = 0;
    if (![v14 length] || (-[VUISidebandMediaLibrary _tvSeasonForCanonicalID:createIfNeeded:wasCreated:](v144, "_tvSeasonForCanonicalID:createIfNeeded:wasCreated:", v14, 0, 0), (v38 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (![v135 length] || (-[VUISidebandMediaLibrary _tvSeasonForAdamID:createIfNeeded:wasCreated:](v144, "_tvSeasonForAdamID:createIfNeeded:wasCreated:", v135, 0, 0), (v38 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if ([v14 length])
        {
          [(VUISidebandMediaLibrary *)v144 _tvSeasonForCanonicalID:v14 createIfNeeded:1 wasCreated:&v149];
        }

        else
        {
          [(VUISidebandMediaLibrary *)v144 _tvSeasonForAdamID:v135 createIfNeeded:1 wasCreated:&v149];
        }
        v38 = ;
      }
    }

    v39 = v38;
    v40 = v149;
    v41 = sLogObject_2;
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v40 == 1)
    {
      v43 = v135;
      if (v42)
      {
        *buf = 0;
        v44 = "Created managed object for season";
LABEL_55:
        _os_log_impl(&dword_1E323F000, v41, OS_LOG_TYPE_DEFAULT, v44, buf, 2u);
      }
    }

    else
    {
      v43 = v135;
      if (v42)
      {
        *buf = 0;
        v44 = "Using existing managed object for season but updating its metadata";
        goto LABEL_55;
      }
    }

    [v39 setCanonicalID:v14];
    [v39 setAdamID:v43];
    v45 = [v4 metadata];
    v46 = [v45 seasonNumber];
    [v39 setSeasonNumber:v46];

    v47 = [v4 metadata];
    v48 = [v47 seasonTitle];
    [v39 setTitle:v48];

    [v18 addSeasonsObject:v39];
    [v12 setSeason:v39];

    v15 = v137;
LABEL_57:

    v7 = v141;
    v6 = v142;
    v9 = v143;
LABEL_58:

LABEL_59:
    [v12 setCanonicalID:v7];
    v49 = [v4 fpsCertificateURL];
    [v12 setFpsCertificateURL:v49];

    v50 = [v4 fpsKeyServerURL];
    [v12 setFpsKeyServerURL:v50];

    v51 = [v4 fpsNonceURL];
    [v12 setFpsNonceURL:v51];

    [v12 setPlaybackURL:v6];
    [v12 setDownloadURL:v9];
    v52 = [v4 metadata];
    v53 = [v52 title];
    [v12 setTitle:v53];

    v54 = [v4 metadata];
    v55 = [v54 mediaDescription];
    [v12 setMediaDescription:v55];

    [v12 setAdamID:v5];
    v56 = [v4 externalID];
    [v12 setExternalID:v56];

    v57 = [v4 channelID];
    [v12 setBrandID:v57];

    v58 = [v4 channelName];
    [v12 setBrandName:v58];

    v59 = [v4 metadata];
    v60 = [v59 ratingValue];
    [v12 setContentRatingRank:v60];

    v61 = [v4 metadata];
    v62 = [v61 ratingDomain];
    [v12 setContentRatingDomain:v62];

    v63 = [v4 metadata];
    v64 = [v63 duration];
    [v12 setDuration:v64];

    v65 = [v4 referenceID];
    [v12 setReferenceID:v65];

    v66 = [v4 playablePassThrough];
    [v12 setPlayablePassThrough:v66];

    v67 = [v4 hlsProgramID];
    [v12 setProgramID:v67];

    v68 = [v4 metadata];
    v69 = [v68 genre];
    v70 = [v69 length];

    v71 = [v4 metadata];
    v72 = v71;
    if (v70)
    {
      [v71 genre];
    }

    else
    {
      [v71 sportName];
    }
    v73 = ;
    [v12 setGenreName:v73];

    v74 = [v4 metadata];
    v75 = [v74 type];
    [v12 setIsSportingEvent:{objc_msgSend(v75, "isEqualToString:", @"SportingEvent"}];

    v76 = [v4 metadata];
    v77 = [v76 releasedDate];
    [v12 setReleaseDate:v77];

    v78 = [v4 metadata];
    [v12 setIsAdultContent:{objc_msgSend(v78, "isAdultContent")}];

    v79 = [MEMORY[0x1E69D5920] activeAccount];
    v80 = [v79 ams_DSID];
    [v12 setDsid:v80];

    v81 = [v4 requiredAgeForPlayback];
    [v12 setRequiredAgeForPlayback:v81];

    v82 = [v4 frequencyOfAgeConfirmation];
    [v12 setFrequencyOfAgeConfirmation:v82];

    v83 = [v4 rtcServiceIdentifier];
    [v12 setRtcServiceIdentifier:v83];

    [v12 setMarkedAsDeleted:0];
    v84 = [v4 tvAppDeeplinkURL];
    [v12 setShareURL:v84];

    v85 = [v4 buyParams];
    [v12 setBuyParams:v85];

    v86 = [v4 rentalID];
    [v12 setRentalID:v86];

    [v12 setDownloadedPlaybackMode:0];
    if ([v4 isSubscription])
    {
      v87 = 1;
    }

    else if ([v4 isiTunesPurchaseOrRental])
    {
      if ([v4 isRental])
      {
        v87 = 3;
      }

      else if ([v4 isFamilySharingContent])
      {
        v87 = 4;
      }

      else
      {
        v87 = 2;
      }
    }

    else
    {
      v88 = sLogObject_2;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v88, OS_LOG_TYPE_DEFAULT, "Unknown entitlement type for video", buf, 2u);
      }

      v87 = 0;
    }

    v89 = [MEMORY[0x1E696AD98] numberWithLongLong:v87];
    [v12 setEntitlementType:v89];

    v90 = [v4 fpsAdditionalServerParams];
    if (v90 && [MEMORY[0x1E696ACB0] isValidJSONObject:v90])
    {
      v148 = 0;
      v91 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v90 options:0 error:&v148];
      v92 = v148;
      if ([v91 length])
      {
        [v12 setAdditionalFPSRequestParamsJSONData:v91];
      }

      else
      {
        v93 = sLogObject_2;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          [VUISidebandMediaLibrary videoForPlayable:];
        }
      }
    }

    v94 = [v4 vpafMetrics];
    if (v94 && [MEMORY[0x1E696ACB0] isValidJSONObject:v94])
    {
      v147 = 0;
      v95 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v94 options:0 error:&v147];
      v96 = v147;
      if ([v95 length])
      {
        [v12 setVpafMetricsJSONData:v95];
      }

      else
      {
        v97 = sLogObject_2;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
        {
          [VUISidebandMediaLibrary videoForPlayable:];
        }
      }
    }

    v136 = v94;
    v98 = [v4 mediaMetrics];
    if (v98 && [MEMORY[0x1E696ACB0] isValidJSONObject:v98])
    {
      v146 = 0;
      v99 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v98 options:0 error:&v146];
      v100 = v146;
      if ([v99 length])
      {
        [v12 setMediaMetricsJSONData:v99];
      }

      else
      {
        v101 = sLogObject_2;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v153 = v100;
          _os_log_impl(&dword_1E323F000, v101, OS_LOG_TYPE_DEFAULT, "Unable to serialize mediaMetrics data: %@", buf, 0xCu);
        }
      }
    }

    v102 = [v4 playbackModes];
    if (v102 && [MEMORY[0x1E696ACB0] isValidJSONObject:v102])
    {
      v145 = 0;
      v103 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v102 options:0 error:&v145];
      v104 = v145;
      if ([v103 length])
      {
        [v12 setPlaybackModesJSONData:v103];
      }

      else
      {
        v105 = sLogObject_2;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v153 = v104;
          _os_log_impl(&dword_1E323F000, v105, OS_LOG_TYPE_DEFAULT, "Unable to serialize playbackModes data: %@", buf, 0xCu);
        }
      }
    }

    v138 = v90;
    v106 = [v4 metadata];
    v107 = [v106 artworkURLFormat];

    v108 = [v4 metadata];
    v109 = [v108 artworkWidth];

    v110 = [v4 metadata];
    v111 = [v110 artworkHeight];

    if (v12)
    {
      if ([v107 length] && (objc_msgSend(v109, "doubleValue"), v112 > 0.0) && (objc_msgSend(v111, "doubleValue"), v113 > 0.0))
      {
        v114 = [(VUISidebandMediaLibrary *)v144 imageInfoForVideo:v12 imageType:0 createIfNeeded:1 wasCreated:0];
        [v114 setImageType:0];
        [v114 setUrlFormat:v107];
        [v109 doubleValue];
        [v114 setCanonicalWidth:?];
        [v111 doubleValue];
        [v114 setCanonicalHeight:?];
        [v114 setVideo:v12];
      }

      else
      {
        v114 = sLogObject_2;
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          [VUISidebandMediaLibrary videoForPlayable:];
        }
      }
    }

    v132 = v111;
    v134 = v109;
    v115 = [v4 metadata];
    v116 = [v115 previewFrameURLFormat];

    v117 = [v4 metadata];
    v118 = [v117 previewFrameWidth];

    v119 = [v4 metadata];
    v120 = [v119 previewFrameHeight];

    if (v12)
    {
      if ([v116 length] && (objc_msgSend(v118, "doubleValue"), v121 > 0.0) && (objc_msgSend(v120, "doubleValue"), v122 > 0.0))
      {
        v123 = [(VUISidebandMediaLibrary *)v144 imageInfoForVideo:v12 imageType:1 createIfNeeded:1 wasCreated:0];
        [v123 setImageType:1];
        [v123 setUrlFormat:v116];
        [v118 doubleValue];
        [v123 setCanonicalWidth:?];
        [v120 doubleValue];
        [v123 setCanonicalHeight:?];
        [v123 setVideo:v12];
      }

      else
      {
        v123 = sLogObject_2;
        if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
        {
          [VUISidebandMediaLibrary videoForPlayable:];
        }
      }

      if ([v116 length] && (objc_msgSend(v118, "doubleValue"), v124 > 0.0) && (objc_msgSend(v120, "doubleValue"), v125 > 0.0))
      {
        v126 = [(VUISidebandMediaLibrary *)v144 imageInfoForVideo:v12 imageType:2 createIfNeeded:1 wasCreated:0];
        [v126 setImageType:2];
        [v126 setUrlFormat:v116];
        [v118 doubleValue];
        [v126 setCanonicalWidth:?];
        [v120 doubleValue];
        [v126 setCanonicalHeight:?];
        [v126 setVideo:v12];
      }

      else
      {
        v126 = sLogObject_2;
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          [VUISidebandMediaLibrary videoForPlayable:];
        }
      }

      if ((v151 & 1) == 0)
      {
        v127 = sLogObject_2;
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v127, OS_LOG_TYPE_DEFAULT, "Using existing managed object for video but updating its metadata", buf, 2u);
        }

LABEL_133:

        goto LABEL_134;
      }
    }

    else if (v151 != 1)
    {
LABEL_134:
      [(VUISidebandMediaLibrary *)v144 saveChangesToManagedObjects];

      v6 = v142;
      goto LABEL_135;
    }

    v128 = sLogObject_2;
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v128, OS_LOG_TYPE_DEFAULT, "Created managed object for video", buf, 2u);
    }

    [v12 setDownloadState:0];
    v127 = [MEMORY[0x1E695DF00] date];
    [v12 setDateAdded:v127];
    goto LABEL_133;
  }

  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
  {
    [VUISidebandMediaLibrary videoForPlayable:];
  }

  v12 = 0;
LABEL_135:
  v129 = v12;

  return v12;
}

- (id)videoForMPMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:*MEMORY[0x1E696FB60]];
  v6 = v5;
  if (v5 && [v5 longLongValue])
  {
    v31 = 0;
    v7 = [v6 stringValue];
    v8 = [v4 valueForProperty:*MEMORY[0x1E696F9E8]];
    v9 = [v8 length];
    if (v9)
    {
      v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    }

    v10 = v9;
    v11 = [v4 mediaType];
    v12 = [VUIMediaInfo playbackURLOverrideForOriginalURL:v10 adamID:v7 canonicalID:0];
    v13 = v12;
    if (v12)
    {
      v14 = v12;

      v15 = v14;
      v10 = v15;
    }

    if ((v11 & 0x100) != 0)
    {
      v17 = [(VUISidebandMediaLibrary *)self _movieForAdamID:v7 createIfNeeded:1 wasCreated:&v31];
    }

    else
    {
      if ((v11 & 0x200) == 0)
      {
        v16 = 0;
LABEL_16:
        v18 = [v4 valueForProperty:*MEMORY[0x1E696FB88]];
        [v16 setTitle:v18];

        v19 = [v4 valueForProperty:*MEMORY[0x1E696FB70]];
        [v16 setBuyParams:v19];

        if ([v4 isRental])
        {
          v20 = [v4 valueForProperty:*MEMORY[0x1E696FB78]];
          [v16 setRentalID:v20];
        }

        [v16 setPlaybackURL:v10];
        [v16 setDownloadURL:v10];
        [v16 setAdamID:v7];
        v21 = [MEMORY[0x1E69D5920] activeAccount];
        v22 = [v21 ams_DSID];
        [v16 setDsid:v22];

        [v16 setMarkedAsDeleted:0];
        if ([v4 isRental])
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        v24 = [MEMORY[0x1E696AD98] numberWithLongLong:v23];
        [v16 setEntitlementType:v24];

        if (v31 == 1)
        {
          v25 = sLogObject_2;
          if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "Created managed object for video", buf, 2u);
          }

          [v16 setDownloadState:0];
          v26 = [MEMORY[0x1E695DF00] date];
          [v16 setDateAdded:v26];
        }

        else if (v16)
        {
          v27 = sLogObject_2;
          if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
          {
            *v29 = 0;
            _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "Using existing managed object for video but updating its metadata", v29, 2u);
          }
        }

        [(VUISidebandMediaLibrary *)self saveChangesToManagedObjects];

        goto LABEL_29;
      }

      v17 = [(VUISidebandMediaLibrary *)self _tvEpisodeForAdamID:v7 createIfNeeded:1 wasCreated:&v31];
    }

    v16 = v17;
    goto LABEL_16;
  }

  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
  {
    [VUISidebandMediaLibrary videoForMPMediaItem:];
  }

  v16 = 0;
LABEL_29:

  return v16;
}

- (id)videoForAdamID:(id)a3 useMainThreadContext:(BOOL)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a4;
    v12 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a3;
    v8 = [v6 arrayWithObjects:&v12 count:1];

    v9 = [(VUISidebandMediaLibrary *)self videosForAdamIDs:v8 useMainThreadContext:v4, v12, v13];
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)videosForAdamIDs:(id)a3 useMainThreadContext:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"adamID", v6];
  if (v4)
  {
    v8 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v9 = [(VUISidebandMediaLibrary *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VUISidebandMediaLibrary_videosForAdamIDs_useMainThreadContext___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = &v22;
    dispatch_sync(v9, block);

    [v8 setPredicate:v7];
    v10 = [v23[5] executeFetchRequest:v8 error:0];
    v11 = v29[5];
    v29[5] = v10;

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v12 = [(VUISidebandMediaLibrary *)self serialQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__VUISidebandMediaLibrary_videosForAdamIDs_useMainThreadContext___block_invoke_2;
    v20[3] = &unk_1E872E5B0;
    v20[4] = self;
    v20[5] = &v22;
    dispatch_sync(v12, v20);

    v13 = v23[5];
    if (v13)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__VUISidebandMediaLibrary_videosForAdamIDs_useMainThreadContext___block_invoke_3;
      v16[3] = &unk_1E872EBD8;
      v17 = v7;
      v18 = &v28;
      v19 = &v22;
      [v13 performBlockAndWait:v16];
    }

    _Block_object_dispose(&v22, 8);
  }

  v14 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v14;
}

void __65__VUISidebandMediaLibrary_videosForAdamIDs_useMainThreadContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __65__VUISidebandMediaLibrary_videosForAdamIDs_useMainThreadContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundManagedObjectContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __65__VUISidebandMediaLibrary_videosForAdamIDs_useMainThreadContext___block_invoke_3(void *a1)
{
  v5 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
  [v5 setPredicate:a1[4]];
  v2 = [*(*(a1[6] + 8) + 40) executeFetchRequest:v5 error:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)fpsKeyInfoForVideo:(id)a3 keyURI:(id)a4 createIfNeeded:(BOOL)a5 wasCreated:(BOOL *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v27 = 0;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %@", @"video", v10, @"keyURI", v11];
  v13 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"FPSKeyInfo" predicate:v12 createIfNeeded:v7 wasCreated:&v27];
  v14 = v27;
  if (a6)
  {
    *a6 = v27;
  }

  if (v14)
  {
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"keyURI", v11];
    v16 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"FPSKeyDeletionInfo" predicate:v15 createIfNeeded:0 wasCreated:0];
    if (v16)
    {
      v17 = sLogObject_2;
      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Deleting existing key deletion info object since new key was created for the same content", buf, 2u);
      }

      *buf = 0;
      v22 = buf;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__1;
      v25 = __Block_byref_object_dispose__1;
      v26 = 0;
      v18 = [(VUISidebandMediaLibrary *)self serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __79__VUISidebandMediaLibrary_fpsKeyInfoForVideo_keyURI_createIfNeeded_wasCreated___block_invoke;
      block[3] = &unk_1E872E5B0;
      block[4] = self;
      block[5] = buf;
      dispatch_sync(v18, block);

      [*(v22 + 5) deleteObject:v16];
      _Block_object_dispose(buf, 8);
    }
  }

  return v13;
}

void __79__VUISidebandMediaLibrary_fpsKeyInfoForVideo_keyURI_createIfNeeded_wasCreated___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)existingFpsKeyInfoForKeyURI:(id)a3
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"keyURI", a3];
  v5 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"FPSKeyInfo" predicate:v4 createIfNeeded:0 wasCreated:0];

  return v5;
}

- (id)imageInfoForVideo:(id)a3 imageType:(unint64_t)a4 createIfNeeded:(BOOL)a5 wasCreated:(BOOL *)a6
{
  v7 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %lu", @"video", v10, @"imageType", a4];
  v24 = 0;
  v12 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"VideoImageInfo" predicate:v11 createIfNeeded:v7 wasCreated:&v24];
  if (v24)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v13 = [(VUISidebandMediaLibrary *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__VUISidebandMediaLibrary_imageInfoForVideo_imageType_createIfNeeded_wasCreated___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = &v18;
    dispatch_sync(v13, block);

    v14 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = @"ImageData";
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Creating managed object for entity name %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"ImageData" inManagedObjectContext:v19[5]];
    [v12 setImageData:v15];

    _Block_object_dispose(&v18, 8);
  }

  if (a6)
  {
    *a6 = v24;
  }

  return v12;
}

void __81__VUISidebandMediaLibrary_imageInfoForVideo_imageType_createIfNeeded_wasCreated___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)imageInfoForSeries:(id)a3 imageType:(unint64_t)a4 createIfNeeded:(BOOL)a5 wasCreated:(BOOL *)a6
{
  v7 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %lu", @"series", v10, @"imageType", a4];
  v24 = 0;
  v12 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"TVSeriesImageInfo" predicate:v11 createIfNeeded:v7 wasCreated:&v24];
  if (v24)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v13 = [(VUISidebandMediaLibrary *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__VUISidebandMediaLibrary_imageInfoForSeries_imageType_createIfNeeded_wasCreated___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = &v18;
    dispatch_sync(v13, block);

    v14 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = @"ImageData";
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Creating managed object for entity name %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"ImageData" inManagedObjectContext:v19[5]];
    [v12 setImageData:v15];

    _Block_object_dispose(&v18, 8);
  }

  if (a6)
  {
    *a6 = v24;
  }

  return v12;
}

void __82__VUISidebandMediaLibrary_imageInfoForSeries_imageType_createIfNeeded_wasCreated___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)deleteFPSKeyDeletionInfo:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(VUISidebandMediaLibrary *)self deleteFPSKeyDeletionInfos:v6, v7, v8];
  }
}

- (void)deleteFPSKeyDeletionInfos:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__1;
    v22 = __Block_byref_object_dispose__1;
    v23 = 0;
    v5 = [(VUISidebandMediaLibrary *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__VUISidebandMediaLibrary_deleteFPSKeyDeletionInfos___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = &v18;
    dispatch_sync(v5, block);

    v12 = self;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v26 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = sLogObject_2;
          if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v10;
            _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Deleting managed object %@", buf, 0xCu);
          }

          [v19[5] deleteObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v26 count:16];
      }

      while (v7);
    }

    [(VUISidebandMediaLibrary *)v12 saveChangesToManagedObjects];
    _Block_object_dispose(&v18, 8);
  }
}

void __53__VUISidebandMediaLibrary_deleteFPSKeyDeletionInfos___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)videosWithDownloadState:(int64_t)a3 entitlementTypes:(id)a4 sortDescriptors:(id)a5 useMainThreadContext:(BOOL)a6
{
  v6 = a6;
  v10 = MEMORY[0x1E695DFD8];
  v11 = MEMORY[0x1E696AD98];
  v12 = a5;
  v13 = a4;
  v14 = [v11 numberWithLongLong:a3];
  v15 = [v10 setWithObject:v14];
  v16 = [(VUISidebandMediaLibrary *)self videosWithDownloadStates:v15 entitlementTypes:v13 sortDescriptors:v12 useMainThreadContext:v6];

  return v16;
}

- (id)videosWithDownloadStates:(id)a3 entitlementTypes:(id)a4 sortDescriptors:(id)a5 useMainThreadContext:(BOOL)a6
{
  v6 = a6;
  v44[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"downloadState", v10];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  if (v11)
  {
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"entitlementType", v11];
    v16 = MEMORY[0x1E696AB28];
    v44[0] = v14;
    v44[1] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v18 = [v16 andPredicateWithSubpredicates:v17];

    v14 = v18;
  }

  [v13 setPredicate:v14];
  if (v12)
  {
    [v13 setSortDescriptors:v12];
  }

  [(VUISidebandMediaLibrary *)self serialQueue];
  if (v6)
    v19 = {;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__VUISidebandMediaLibrary_videosWithDownloadStates_entitlementTypes_sortDescriptors_useMainThreadContext___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = &v32;
    dispatch_sync(v19, block);

    v20 = [v33[5] executeFetchRequest:v13 error:0];
    v21 = v39[5];
    v39[5] = v20;
  }

  else
    v22 = {;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __106__VUISidebandMediaLibrary_videosWithDownloadStates_entitlementTypes_sortDescriptors_useMainThreadContext___block_invoke_2;
    v30[3] = &unk_1E872E5B0;
    v30[4] = self;
    v30[5] = &v32;
    dispatch_sync(v22, v30);

    v23 = v33[5];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __106__VUISidebandMediaLibrary_videosWithDownloadStates_entitlementTypes_sortDescriptors_useMainThreadContext___block_invoke_3;
    v26[3] = &unk_1E872EC00;
    v28 = &v38;
    v29 = &v32;
    v27 = v13;
    [v23 performBlockAndWait:v26];
    v21 = v27;
  }

  v24 = v39[5];
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);

  return v24;
}

void __106__VUISidebandMediaLibrary_videosWithDownloadStates_entitlementTypes_sortDescriptors_useMainThreadContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __106__VUISidebandMediaLibrary_videosWithDownloadStates_entitlementTypes_sortDescriptors_useMainThreadContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundManagedObjectContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __106__VUISidebandMediaLibrary_videosWithDownloadStates_entitlementTypes_sortDescriptors_useMainThreadContext___block_invoke_3(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) executeFetchRequest:a1[4] error:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)videosWithDownloadStates:(id)a3 downloadTrigger:(int64_t)a4 shouldDeleteAfterCompletion:(BOOL)a5 useMainThreadContext:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = MEMORY[0x1E696AD98];
  v11 = a3;
  v12 = [v10 numberWithBool:v7];
  v13 = [(VUISidebandMediaLibrary *)self _videosWithDownloadStates:v11 downloadTrigger:a4 shouldDeleteAfterCompletion:v12 useMainThreadContext:v6];

  return v13;
}

- (id)videosWithExpiredDownloadsUsingMainThreadContext:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES AND %K == NO AND %K == %ld", @"hasExpirationDate", @"markedAsDeleted", @"downloadState", 0];
  [v5 setPredicate:v6];
  v7 = [(VUISidebandMediaLibrary *)self _objectsWithFetchRequest:v5 usingMainThreadContext:v3];

  return v7;
}

- (id)seriesForCanonicalIDOrAdamID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(VUISidebandMediaLibrary *)self _tvSeriesForCanonicalID:v4 createIfNeeded:0 wasCreated:0];
    if (!v5)
    {
      v5 = [(VUISidebandMediaLibrary *)self _tvSeriesForAdamID:v4 createIfNeeded:0 wasCreated:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)seasonForCanonicalIDOrAdamID:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(VUISidebandMediaLibrary *)self _tvSeasonForCanonicalID:v6 createIfNeeded:v4 wasCreated:0];
    if (!v7)
    {
      v7 = [(VUISidebandMediaLibrary *)self _tvSeasonForAdamID:v6 createIfNeeded:v4 wasCreated:0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)comingSoonObjectWithCanonicalID:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(VUISidebandMediaLibrary *)self _comingSoonVideoForCanonicalID:v6 createIfNeeded:v4 wasCreated:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)episodesWithDownloadStates:(id)a3 seasonCanonicalId:(id)a4 usingMainThreadContext:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E695D5E0];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithEntityName:@"TVEpisode"];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND %K IN %@ AND season.canonicalID == %@", @"markedAsDeleted", @"downloadState", v10, v9];

  [v11 setPredicate:v12];
  v13 = [(VUISidebandMediaLibrary *)self _objectsWithFetchRequest:v11 usingMainThreadContext:v5];

  return v13;
}

- (id)episodesWithDownloadStates:(id)a3 showCanonicalId:(id)a4 usingMainThreadContext:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E695D5E0];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithEntityName:@"TVEpisode"];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND %K IN %@ AND series.canonicalID == %@", @"markedAsDeleted", @"downloadState", v10, v9];

  [v11 setPredicate:v12];
  v13 = [(VUISidebandMediaLibrary *)self _objectsWithFetchRequest:v11 usingMainThreadContext:v5];

  return v13;
}

- (id)episodesWithSeasonCanonicalIds:(id)a3 usingMainThreadContext:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = [[v6 alloc] initWithEntityName:@"TVEpisode"];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND season.canonicalID IN %@", @"markedAsDeleted", v7];

  [v8 setPredicate:v9];
  v10 = [(VUISidebandMediaLibrary *)self _objectsWithFetchRequest:v8 usingMainThreadContext:v4];

  return v10;
}

- (void)removeDownloadedMediaForVideoManagedObject:(id)a3 markAsDeleted:(BOOL)a4 invalidateImmediately:(BOOL)a5
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a5;
    v6 = a4;
    v11 = a3;
    v8 = MEMORY[0x1E695DEC8];
    v9 = a3;
    v10 = [v8 arrayWithObjects:&v11 count:1];

    [(VUISidebandMediaLibrary *)self removeDownloadedMediaForVideoManagedObjects:v10 markAsDeleted:v6 invalidateImmediately:v5, v11, v12];
  }
}

- (void)removeDownloadedMediaForVideoManagedObjects:(id)a3 markAsDeleted:(BOOL)a4 invalidateImmediately:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(VUISidebandMediaLibrary *)self mainContextVideoForVideo:*(*(&v15 + 1) + 8 * v13), v15];
          [(VUISidebandMediaLibrary *)self _removeDownloadedMediaForVideoManagedObject:v14 markAsDeleted:v6 saveWhenDone:0 invalidateImmediately:v5];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [(VUISidebandMediaLibrary *)self saveChangesToManagedObjects];
  }
}

- (unint64_t)countOfDownloadedOrDownloadingOrEnqueuedSubscriptionVideosForNonMainQueue
{
  v3 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %ld || %K == %ld || %K == %ld) && (%K == NIL OR %K IN %@)", @"downloadState", 1, @"downloadState", 3, @"downloadState", 2, @"entitlementType", @"entitlementType", &unk_1F5E5E808];
  [v3 setPredicate:v4];
  v5 = [(VUISidebandMediaLibrary *)self _countForFetchRequest:v3 usingMainThreadContext:0];

  return v5;
}

- (void)invalidateKeysForVideoManagedObject:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(VUISidebandMediaLibrary *)self invalidateKeysForVideoManagedObjects:v6, v7, v8];
  }
}

- (void)invalidateKeysForVideoManagedObjects:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(VUISidebandMediaLibrary *)self mainContextVideoForVideo:*(*(&v11 + 1) + 8 * v9), v11];
          [(VUISidebandMediaLibrary *)self _invalidateKeysForVideoManagedObject:v10 saveWhenDone:0 invalidateImmediately:1];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(VUISidebandMediaLibrary *)self saveChangesToManagedObjects];
  }
}

- (void)saveChangesToManagedObjects
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __54__VUISidebandMediaLibrary_saveChangesToManagedObjects__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)mainContextVideoForVideo:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v10 count:1];

    v7 = [(VUISidebandMediaLibrary *)self _mainContextManagedObjectsForObjects:v6, v10, v11];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)title
{
  v2 = +[VUILocalizationManager sharedInstance];
  v3 = [v2 localizedStringForKey:@"LIBRARY"];

  return v3;
}

- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  objc_initWeak(&location, self);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v6 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__VUISidebandMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(v6, block);

  v7 = v20[5];
  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__VUISidebandMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_3;
    v11[3] = &unk_1E872EC28;
    objc_copyWeak(&v15, &location);
    v14 = &v19;
    v12 = v5;
    v13 = v4;
    [v7 performBlock:v11];

    objc_destroyWeak(&v15);
  }

  else
  {
    v8 = [(VUIMediaLibrary *)self manager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__VUISidebandMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_2;
    v16[3] = &unk_1E872D7E0;
    v17 = v4;
    [v8 _enqueueCompletionQueueBlock:v16];
  }

  v9 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:0];
  _Block_object_dispose(&v19, 8);

  objc_destroyWeak(&location);

  return v9;
}

void __81__VUISidebandMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundManagedObjectContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __81__VUISidebandMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __81__VUISidebandMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v29[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Movie"];
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"TVEpisode"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NIL OR %K IN %@", @"entitlementType", @"entitlementType", &unk_1F5E5E820];
  [v2 setPredicate:v4];
  [v3 setPredicate:v4];
  [v2 setFetchLimit:1];
  [v3 setFetchLimit:1];
  v24 = v2;
  v5 = [*(*(*(a1 + 48) + 8) + 40) executeFetchRequest:v2 error:0];
  v6 = [*(*(*(a1 + 48) + 8) + 40) executeFetchRequest:v3 error:0];
  v23 = v5;
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v8 = +[VUIMediaEntityType movie];
    [v7 addObject:v8];
  }

  if ([v6 count])
  {
    v9 = *(a1 + 32);
    v10 = +[VUIMediaEntityType episode];
    [v9 addObject:v10];
  }

  v11 = *(a1 + 32);
  v12 = +[VUIMediaLibraryUtilities mediaItemEntityTypesSortComparator];
  [v11 sortUsingComparator:v12];

  v13 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Video"];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %ld", @"downloadState", 2];
  v15 = MEMORY[0x1E696AB28];
  v29[0] = v14;
  v29[1] = v4;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];

  [v13 setPredicate:v17];
  [v13 setFetchLimit:1];
  v18 = [*(*(*(a1 + 48) + 8) + 40) executeFetchRequest:v13 error:0];
  v19 = objc_alloc_init(VUIMediaItemEntityTypesFetchResponse);
  [(VUIMediaItemEntityTypesFetchResponse *)v19 setMediaItemEntityTypes:*(a1 + 32)];
  -[VUIMediaItemEntityTypesFetchResponse setLocalMediaItemsAvailable:](v19, "setLocalMediaItemsAvailable:", [v18 count] != 0);
  v20 = [WeakRetained manager];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__VUISidebandMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_189;
  v26[3] = &unk_1E872DC10;
  v21 = *(a1 + 40);
  v27 = v19;
  v28 = v21;
  v22 = v19;
  [v20 _enqueueCompletionQueueBlock:v26];
}

uint64_t __81__VUISidebandMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_189(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v9 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__VUISidebandMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v23;
  dispatch_sync(v9, block);

  v10 = v24[5];
  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__VUISidebandMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_3;
    v14[3] = &unk_1E872EC50;
    objc_copyWeak(&v19, &location);
    v15 = v6;
    v18 = &v23;
    v16 = v8;
    v17 = v7;
    [v10 performBlock:v14];

    objc_destroyWeak(&v19);
  }

  else
  {
    v11 = [(VUIMediaLibrary *)self manager];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__VUISidebandMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_2;
    v20[3] = &unk_1E872D7E0;
    v21 = v7;
    [v11 _enqueueCompletionQueueBlock:v20];
  }

  v12 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:0];
  _Block_object_dispose(&v23, 8);

  objc_destroyWeak(&location);

  return v12;
}

void __66__VUISidebandMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundManagedObjectContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __66__VUISidebandMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __66__VUISidebandMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_3(uint64_t a1)
{
  v154 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v98 = a1;
  obj = *(a1 + 32);
  v94 = [obj countByEnumeratingWithState:&v143 objects:v153 count:16];
  if (v94)
  {
    v93 = *v144;
    v3 = 0x1E8728000uLL;
    v109 = WeakRetained;
    do
    {
      v4 = 0;
      do
      {
        if (*v144 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v97 = v4;
        v5 = *(*(&v143 + 1) + 8 * v4);
        v113 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v6 = [v5 range];
        v95 = v7;
        v96 = v6;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v115 = v5;
        v99 = [v5 mediaEntityTypes];
        v8 = v98;
        v101 = [v99 countByEnumeratingWithState:&v139 objects:v152 count:16];
        if (v101)
        {
          v100 = *v140;
          do
          {
            v9 = 0;
            do
            {
              if (*v140 != v100)
              {
                objc_enumerationMutation(v99);
              }

              v10 = *(*(&v139 + 1) + 8 * v9);
              v11 = [*(v3 + 1048) movie];
              v12 = v11;
              if (v10 == v11)
              {

LABEL_37:
                v105 = v9;
                v34 = [*(v3 + 1048) movie];
                v35 = @"TVEpisode";
                if (v10 == v34)
                {
                  v35 = @"Movie";
                }

                v36 = v35;

                v103 = v36;
                v37 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:v36];
                v38 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NIL OR %K IN %@", @"entitlementType", @"entitlementType", &unk_1F5E5E838];
                [v37 setPredicate:v38];
                v39 = v8;
                v106 = v37;
                v40 = [*(*(*(v8 + 56) + 8) + 40) executeFetchRequest:v37 error:0];
                v135 = 0u;
                v136 = 0u;
                v137 = 0u;
                v138 = 0u;
                v41 = [v40 countByEnumeratingWithState:&v135 objects:v151 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v136;
                  do
                  {
                    for (i = 0; i != v42; ++i)
                    {
                      if (*v136 != v43)
                      {
                        objc_enumerationMutation(v40);
                      }

                      v45 = *(*(&v135 + 1) + 8 * i);
                      v46 = [VUISidebandMediaItem alloc];
                      v47 = [v115 properties];
                      v48 = [(VUISidebandMediaItem *)v46 initWithMediaLibrary:WeakRetained videoManagedObject:v45 requestedProperties:v47];

                      [v113 addObject:v48];
                    }

                    v42 = [v40 countByEnumeratingWithState:&v135 objects:v151 count:16];
                  }

                  while (v42);
                }

                v3 = 0x1E8728000;
                v16 = v103;
                v9 = v105;
                v8 = v39;
                goto LABEL_47;
              }

              v13 = [*(v3 + 1048) episode];

              if (v10 == v13)
              {
                goto LABEL_37;
              }

              v14 = [*(v3 + 1048) show];

              if (v10 == v14)
              {
                v16 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"TVSeries"];
                v49 = [*(*(*(v8 + 56) + 8) + 40) executeFetchRequest:v16 error:0];
                v131 = 0u;
                v132 = 0u;
                v133 = 0u;
                v134 = 0u;
                v106 = v49;
                v111 = [v49 countByEnumeratingWithState:&v131 objects:v150 count:16];
                if (v111)
                {
                  v102 = v16;
                  v104 = v9;
                  v108 = *v132;
                  do
                  {
                    for (j = 0; j != v111; ++j)
                    {
                      if (*v132 != v108)
                      {
                        objc_enumerationMutation(v106);
                      }

                      v51 = *(*(&v131 + 1) + 8 * j);
                      v127 = 0u;
                      v128 = 0u;
                      v129 = 0u;
                      v130 = 0u;
                      v52 = [v51 episodes];
                      v53 = [v52 countByEnumeratingWithState:&v127 objects:v149 count:16];
                      if (v53)
                      {
                        v54 = v53;
                        v55 = *v128;
                        while (2)
                        {
                          for (k = 0; k != v54; ++k)
                          {
                            if (*v128 != v55)
                            {
                              objc_enumerationMutation(v52);
                            }

                            v57 = *(*(&v127 + 1) + 8 * k);
                            v58 = [v57 entitlementType];
                            if (!v58)
                            {
                              goto LABEL_67;
                            }

                            v59 = v58;
                            v60 = [v57 entitlementType];
                            if ([v60 isEqualToNumber:&unk_1F5E5CCF0])
                            {

LABEL_67:
                              v63 = [VUISidebandSeriesMediaCollection alloc];
                              v64 = [v115 properties];
                              v65 = [(VUISidebandSeriesMediaCollection *)v63 initWithMediaLibrary:v109 seriesManagedObject:v51 requestedProperties:v64];

                              [v113 addObject:v65];
                              goto LABEL_68;
                            }

                            v61 = [v57 entitlementType];
                            v62 = [v61 isEqualToNumber:&unk_1F5E5CD08];

                            if (v62)
                            {
                              goto LABEL_67;
                            }
                          }

                          v54 = [v52 countByEnumeratingWithState:&v127 objects:v149 count:16];
                          if (v54)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_68:
                    }

                    v111 = [v106 countByEnumeratingWithState:&v131 objects:v150 count:16];
                  }

                  while (v111);
                  goto LABEL_70;
                }
              }

              else
              {
                v15 = [*(v3 + 1048) season];

                if (v10 != v15)
                {
                  goto LABEL_48;
                }

                v16 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"TVSeason"];
                v17 = [*(*(*(v8 + 56) + 8) + 40) executeFetchRequest:v16 error:0];
                v123 = 0u;
                v124 = 0u;
                v125 = 0u;
                v126 = 0u;
                v106 = v17;
                v110 = [v17 countByEnumeratingWithState:&v123 objects:v148 count:16];
                if (v110)
                {
                  v102 = v16;
                  v104 = v9;
                  v107 = *v124;
                  do
                  {
                    for (m = 0; m != v110; ++m)
                    {
                      if (*v124 != v107)
                      {
                        objc_enumerationMutation(v106);
                      }

                      v19 = *(*(&v123 + 1) + 8 * m);
                      v119 = 0u;
                      v120 = 0u;
                      v121 = 0u;
                      v122 = 0u;
                      v20 = [v19 episodes];
                      v21 = [v20 countByEnumeratingWithState:&v119 objects:v147 count:16];
                      if (v21)
                      {
                        v22 = v21;
                        v23 = *v120;
                        while (2)
                        {
                          for (n = 0; n != v22; ++n)
                          {
                            if (*v120 != v23)
                            {
                              objc_enumerationMutation(v20);
                            }

                            v25 = *(*(&v119 + 1) + 8 * n);
                            v26 = [v25 entitlementType];
                            if (!v26)
                            {
                              goto LABEL_32;
                            }

                            v27 = v26;
                            v28 = [v25 entitlementType];
                            if ([v28 isEqualToNumber:&unk_1F5E5CCF0])
                            {

LABEL_32:
                              v31 = [VUISidebandSeasonMediaCollection alloc];
                              v32 = [v115 properties];
                              v33 = [(VUISidebandSeasonMediaCollection *)v31 initWithMediaLibrary:v109 seasonManagedObject:v19 requestedProperties:v32];

                              [v113 addObject:v33];
                              goto LABEL_33;
                            }

                            v29 = [v25 entitlementType];
                            v30 = [v29 isEqualToNumber:&unk_1F5E5CD08];

                            if (v30)
                            {
                              goto LABEL_32;
                            }
                          }

                          v22 = [v20 countByEnumeratingWithState:&v119 objects:v147 count:16];
                          if (v22)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_33:
                    }

                    v110 = [v106 countByEnumeratingWithState:&v123 objects:v148 count:16];
                  }

                  while (v110);
LABEL_70:
                  WeakRetained = v109;
                  v8 = v98;
                  v3 = 0x1E8728000;
                  v16 = v102;
                  v9 = v104;
                }
              }

LABEL_47:

LABEL_48:
              ++v9;
            }

            while (v9 != v101);
            v66 = [v99 countByEnumeratingWithState:&v139 objects:v152 count:16];
            v101 = v66;
          }

          while (v66);
        }

        v67 = v113;
        v68 = [v115 predicate];

        v69 = v67;
        if (v68)
        {
          v70 = [v115 predicate];
          v69 = [v67 filteredArrayUsingPredicate:v70];
        }

        v72 = v95;
        v71 = v96;
        if (v96 == 0x7FFFFFFFFFFFFFFFLL || v95 == 0)
        {
          v74 = v69;
        }

        else
        {
          v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v74 = v75;
          if (v96 < v96 + v95)
          {
            do
            {
              if (v71 >= [v69 count])
              {
                break;
              }

              v76 = [v69 objectAtIndex:v71];
              [v74 addObject:v76];

              ++v71;
              --v72;
            }

            while (v72);
          }
        }

        v77 = v74;
        v78 = VUISidebandMediaItemKind();
        if ([v115 _isItemsFetch])
        {
          v79 = VUISidebandMediaItemKind();
        }

        else if ([v115 _isShowsFetch])
        {
          v79 = VUISidebandSeriesMediaCollectionKind();
        }

        else
        {
          if (![v115 _isSeasonsFetch])
          {
            goto LABEL_91;
          }

          v79 = VUISidebandSeasonMediaCollectionKind();
        }

        v80 = v79;

        v78 = v80;
LABEL_91:
        v81 = [v115 _manualSortDescriptorsWithMediaEntityKind:v78 propertiesRequiredForSort:0];
        v82 = v77;
        if (v81)
        {
          v82 = [v77 sortedArrayUsingDescriptors:v81];
        }

        v83 = [v115 _sortIndexPropertyKeyWithMediaEntityKind:v78];
        if (v83)
        {
          v84 = [VUIMediaLibraryUtilities sortIndexesForMediaEntities:v82 sortIndexPropertyKey:v83];
        }

        else
        {
          v84 = 0;
        }

        v114 = v81;
        v85 = [v115 groupingKeyPath];
        if (v85)
        {
          v112 = v77;
          v86 = v67;
          v87 = [v115 groupingSortComparator];
          v88 = [VUIMediaLibraryUtilities groupingForMediaEntities:v82 groupingKeyPath:v85 groupingSortComparator:v87 performDefaultSort:1 sortIndexPropertyKey:v83];

          if ([v115 _shouldGenerateGroupingSortIndexes])
          {
            v89 = [VUIMediaLibraryUtilities sortIndexesForGrouping:v88];
          }

          else
          {
            v89 = 0;
          }

          v67 = v86;
          v77 = v112;
        }

        else
        {
          v88 = 0;
          v89 = 0;
        }

        v90 = objc_alloc_init(VUIMediaEntityFetchResponse);
        [(VUIMediaEntityFetchResponse *)v90 setMediaEntities:v82];
        [(VUIMediaEntityFetchResponse *)v90 setSortIndexes:v84];
        [(VUIMediaEntityFetchResponse *)v90 setGrouping:v88];
        [(VUIMediaEntityFetchResponse *)v90 setGroupingSortIndexes:v89];
        [*(v98 + 40) addObject:v90];

        v4 = v97 + 1;
        WeakRetained = v109;
        v3 = 0x1E8728000;
      }

      while (v97 + 1 != v94);
      v94 = [obj countByEnumeratingWithState:&v143 objects:v153 count:16];
    }

    while (v94);
  }

  v91 = [WeakRetained manager];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __66__VUISidebandMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_4;
  v116[3] = &unk_1E872DC10;
  v118 = *(v98 + 48);
  v117 = *(v98 + 40);
  [v91 _enqueueCompletionQueueBlock:v116];
}

uint64_t __66__VUISidebandMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(VUIMediaLibrary *)self manager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__VUISidebandMediaLibrary_saveMediaEntity_completionHandler___block_invoke;
    v9[3] = &unk_1E872D7E0;
    v10 = v5;
    [v6 _enqueueCompletionQueueBlock:v9];
  }

  v7 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:0];

  return v7;
}

- (id)_imageLoadParamsForImageLoaderObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = v3) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The imageLoaderObject parameter must be an instance of VUISidebandMediaEntityImageLoadParams"];
    v4 = 0;
  }

  return v4;
}

- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = [(VUIImageLoadParamsOperation *)[VUISidebandMediaEntityImageLoadOperation alloc] initWithParams:v8 scaleToSize:v5 cropToFit:width, height];

  return v9;
}

- (id)_movieForAdamID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"adamID", a3];
  v9 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"Movie" predicate:v8 createIfNeeded:v6 wasCreated:a5];

  return v9;
}

- (id)_tvEpisodeForAdamID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"adamID", a3];
  v9 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"TVEpisode" predicate:v8 createIfNeeded:v6 wasCreated:a5];

  return v9;
}

- (id)_tvSeasonForCanonicalID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"canonicalID", a3];
  v9 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"TVSeason" predicate:v8 createIfNeeded:v6 wasCreated:a5];

  return v9;
}

- (id)_tvSeasonForAdamID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"adamID", a3];
  v9 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"TVSeason" predicate:v8 createIfNeeded:v6 wasCreated:a5];

  return v9;
}

- (id)_comingSoonVideoForCanonicalID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"canonicalID", a3];
  v9 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"ComingSoonVideo" predicate:v8 createIfNeeded:v6 wasCreated:a5];

  return v9;
}

- (id)_tvSeriesForCanonicalID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"canonicalID", a3];
  v9 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"TVSeries" predicate:v8 createIfNeeded:v6 wasCreated:a5];

  return v9;
}

- (id)_tvSeriesForAdamID:(id)a3 createIfNeeded:(BOOL)a4 wasCreated:(BOOL *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"adamID", a3];
  v9 = [(VUISidebandMediaLibrary *)self _managedObjectWithEntityName:@"TVSeries" predicate:v8 createIfNeeded:v6 wasCreated:a5];

  return v9;
}

- (id)_videosWithDownloadStates:(id)a3 downloadTrigger:(int64_t)a4 shouldDeleteAfterCompletion:(id)a5 useMainThreadContext:(BOOL)a6
{
  v6 = a6;
  v43[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ AND %K == %ld", @"downloadState", v10, @"downloadTriggerType", a4];
  if (v11)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"shouldDeleteAfterCompletion", v11];
    v15 = MEMORY[0x1E696AB28];
    v43[0] = v13;
    v43[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];

    v13 = v17;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  [v12 setPredicate:v13];
  [(VUISidebandMediaLibrary *)self serialQueue];
  if (v6)
    v18 = {;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __118__VUISidebandMediaLibrary__videosWithDownloadStates_downloadTrigger_shouldDeleteAfterCompletion_useMainThreadContext___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = &v31;
    dispatch_sync(v18, block);

    v19 = [v32[5] executeFetchRequest:v12 error:0];
    v20 = v38[5];
    v38[5] = v19;
  }

  else
    v21 = {;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __118__VUISidebandMediaLibrary__videosWithDownloadStates_downloadTrigger_shouldDeleteAfterCompletion_useMainThreadContext___block_invoke_2;
    v29[3] = &unk_1E872E5B0;
    v29[4] = self;
    v29[5] = &v31;
    dispatch_sync(v21, v29);

    v22 = v32[5];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __118__VUISidebandMediaLibrary__videosWithDownloadStates_downloadTrigger_shouldDeleteAfterCompletion_useMainThreadContext___block_invoke_3;
    v25[3] = &unk_1E872EC00;
    v27 = &v37;
    v28 = &v31;
    v26 = v12;
    [v22 performBlockAndWait:v25];
    v20 = v26;
  }

  v23 = v38[5];
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);

  return v23;
}

void __118__VUISidebandMediaLibrary__videosWithDownloadStates_downloadTrigger_shouldDeleteAfterCompletion_useMainThreadContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __118__VUISidebandMediaLibrary__videosWithDownloadStates_downloadTrigger_shouldDeleteAfterCompletion_useMainThreadContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundManagedObjectContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __118__VUISidebandMediaLibrary__videosWithDownloadStates_downloadTrigger_shouldDeleteAfterCompletion_useMainThreadContext___block_invoke_3(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) executeFetchRequest:a1[4] error:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_objectsWithFetchRequest:(id)a3 usingMainThreadContext:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  [(VUISidebandMediaLibrary *)self serialQueue];
  if (v4)
    v7 = {;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__VUISidebandMediaLibrary__objectsWithFetchRequest_usingMainThreadContext___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = &v20;
    dispatch_sync(v7, block);

    v8 = [v21[5] executeFetchRequest:v6 error:0];
    v9 = v27[5];
    v27[5] = v8;
  }

  else
    v10 = {;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__VUISidebandMediaLibrary__objectsWithFetchRequest_usingMainThreadContext___block_invoke_2;
    v18[3] = &unk_1E872E5B0;
    v18[4] = self;
    v18[5] = &v20;
    dispatch_sync(v10, v18);

    v11 = v21[5];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__VUISidebandMediaLibrary__objectsWithFetchRequest_usingMainThreadContext___block_invoke_3;
    v14[3] = &unk_1E872EC00;
    v16 = &v26;
    v17 = &v20;
    v15 = v6;
    [v11 performBlockAndWait:v14];
    v9 = v15;
  }

  v12 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v12;
}

void __75__VUISidebandMediaLibrary__objectsWithFetchRequest_usingMainThreadContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __75__VUISidebandMediaLibrary__objectsWithFetchRequest_usingMainThreadContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundManagedObjectContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __75__VUISidebandMediaLibrary__objectsWithFetchRequest_usingMainThreadContext___block_invoke_3(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) executeFetchRequest:a1[4] error:0];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)_countForFetchRequest:(id)a3 usingMainThreadContext:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  if (v4)
  {
    v7 = [(VUISidebandMediaLibrary *)self serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__VUISidebandMediaLibrary__countForFetchRequest_usingMainThreadContext___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = self;
    block[5] = &v19;
    dispatch_sync(v7, block);

    v8 = [v20[5] countForFetchRequest:v6 error:0];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26[3] = v8;
    }
  }

  else
  {
    v9 = [(VUISidebandMediaLibrary *)self serialQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__VUISidebandMediaLibrary__countForFetchRequest_usingMainThreadContext___block_invoke_2;
    v17[3] = &unk_1E872E5B0;
    v17[4] = self;
    v17[5] = &v19;
    dispatch_sync(v9, v17);

    v10 = v20[5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__VUISidebandMediaLibrary__countForFetchRequest_usingMainThreadContext___block_invoke_3;
    v13[3] = &unk_1E872EC78;
    v15 = &v19;
    v14 = v6;
    v16 = &v25;
    [v10 performBlockAndWait:v13];
  }

  v11 = v26[3];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v11;
}

void __72__VUISidebandMediaLibrary__countForFetchRequest_usingMainThreadContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __72__VUISidebandMediaLibrary__countForFetchRequest_usingMainThreadContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundManagedObjectContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __72__VUISidebandMediaLibrary__countForFetchRequest_usingMainThreadContext___block_invoke_3(void *a1)
{
  result = [*(*(a1[5] + 8) + 40) countForFetchRequest:a1[4] error:0];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1[6] + 8) + 24) = result;
  }

  return result;
}

- (id)_managedObjectWithEntityName:(id)a3 predicate:(id)a4 createIfNeeded:(BOOL)a5 wasCreated:(BOOL *)a6
{
  v7 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (a6)
  {
    *a6 = 0;
  }

  v12 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:v10];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v13 = [(VUISidebandMediaLibrary *)self serialQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__VUISidebandMediaLibrary__managedObjectWithEntityName_predicate_createIfNeeded_wasCreated___block_invoke;
  v18[3] = &unk_1E872E5B0;
  v18[4] = self;
  v18[5] = &v19;
  dispatch_sync(v13, v18);

  [v12 setPredicate:v11];
  v14 = [v20[5] executeFetchRequest:v12 error:0];
  v15 = [v14 firstObject];
  if (!v15 && v7)
  {
    v16 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Creating managed object for entity name %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:v10 inManagedObjectContext:v20[5]];
    if (a6)
    {
      *a6 = 1;
    }
  }

  _Block_object_dispose(&v19, 8);

  return v15;
}

void __92__VUISidebandMediaLibrary__managedObjectWithEntityName_predicate_createIfNeeded_wasCreated___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_removeDownloadedMediaForVideoManagedObject:(id)a3 markAsDeleted:(BOOL)a4 saveWhenDone:(BOOL)a5 invalidateImmediately:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 localPlaybackURL];
    v13 = sLogObject_2;
    v14 = os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Deleting downloaded video at %@", buf, 0xCu);
      }

      [v11 setLocalPlaybackURL:0];
      v15 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __120__VUISidebandMediaLibrary__removeDownloadedMediaForVideoManagedObject_markAsDeleted_saveWhenDone_invalidateImmediately___block_invoke;
      block[3] = &unk_1E872D768;
      v22 = v12;
      dispatch_async(v15, block);
    }

    else if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "No file path exists for managed object; not deleting existing downloaded video", buf, 2u);
    }

    v17 = sLogObject_2;
    v18 = os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Marking video as deleted", buf, 2u);
      }

      [v11 setMarkedAsDeleted:1];
      [v11 setHasExpirationDate:0];
      [v11 setAllowsManualRenewal:0];
      [v11 setAvailabilityEndDate:0];
      [v11 setShouldMarkAsDeletedAfterCancellationOrFailure:0];
    }

    else if (v18)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "NOT marking video as deleted", buf, 2u);
    }

    v16 = [(VUISidebandMediaLibrary *)self _invalidateKeysForVideoManagedObject:v11 saveWhenDone:0 invalidateImmediately:v6];
    v19 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Removing offline FPS keys from database and setting state to NotDownloaded", buf, 2u);
    }

    [v11 setDownloadState:0];
    [v11 setEnqueuedOrder:0];
    [v11 setShouldDeleteAfterCompletion:0];
    if (v7)
    {
      [(VUISidebandMediaLibrary *)self saveChangesToManagedObjects];
    }
  }

  else
  {
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      [VUISidebandMediaLibrary _removeDownloadedMediaForVideoManagedObject:markAsDeleted:saveWhenDone:invalidateImmediately:];
    }

    v16 = 0;
  }

  return v16;
}

void __120__VUISidebandMediaLibrary__removeDownloadedMediaForVideoManagedObject_markAsDeleted_saveWhenDone_invalidateImmediately___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v9 = 0;
  v5 = [v2 removeItemAtURL:v4 error:&v9];
  v6 = v9;

  v7 = sLogObject_2;
  if (v5)
  {
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Successfully deleted file; removing local playback URL from database", v8, 2u);
    }
  }

  else if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
  {
    __120__VUISidebandMediaLibrary__removeDownloadedMediaForVideoManagedObject_markAsDeleted_saveWhenDone_invalidateImmediately___block_invoke_cold_1(v3, v6, v7);
  }
}

- (BOOL)_invalidateKeysForVideoManagedObject:(id)a3 saveWhenDone:(BOOL)a4 invalidateImmediately:(BOOL)a5
{
  v5 = a5;
  v73 = *MEMORY[0x1E69E9840];
  v54 = a3;
  if (!v54)
  {
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      [VUISidebandMediaLibrary _invalidateKeysForVideoManagedObject:saveWhenDone:invalidateImmediately:];
    }

    v39 = 0;
    goto LABEL_43;
  }

  v53 = v5;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__1;
  v68 = __Block_byref_object_dispose__1;
  v69 = 0;
  v7 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__VUISidebandMediaLibrary__invalidateKeysForVideoManagedObject_saveWhenDone_invalidateImmediately___block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v64;
  v52 = self;
  dispatch_sync(v7, block);

  v8 = sLogObject_2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v54 fpsKeyInfo];
    v10 = [v9 count];
    *buf = 134217984;
    v72 = v10;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu key info(s) for this video.  Finding one to use for invalidation", buf, 0xCu);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = [v54 fpsKeyInfo];
  v12 = [v11 countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (!v12)
  {
LABEL_20:

    goto LABEL_28;
  }

  v13 = *v60;
LABEL_6:
  v14 = 0;
  while (1)
  {
    if (*v60 != v13)
    {
      objc_enumerationMutation(v11);
    }

    v15 = *(*(&v59 + 1) + 8 * v14);
    if (([v15 isLowValue] & 1) == 0)
    {
      break;
    }

    v16 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v72 = v15;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring low value key that cannot be used for invalidation: %@", buf, 0xCu);
    }

LABEL_18:
    if (v12 == ++v14)
    {
      v12 = [v11 countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  v17 = [v15 expirationDate];
  v18 = v17;
  if (v17)
  {
    if (([v17 vui_isInTheFuture] & 1) == 0)
    {
      v19 = [v15 playbackExpirationStartDate];
      v20 = v19 == 0;

      if (v20)
      {
        v21 = sLogObject_2;
        if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v72 = v15;
          _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Not invalidating expired key: %@", buf, 0xCu);
        }

        goto LABEL_18;
      }
    }
  }

  v22 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = v15;
    _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "Found key to invalidate: %@", buf, 0xCu);
  }

  v23 = v15;

  if (v23)
  {
    v24 = MEMORY[0x1E696AE18];
    v25 = [v23 contentID];
    v26 = [v24 predicateWithFormat:@"%K == %@", @"contentID", v25];

    v27 = [(VUISidebandMediaLibrary *)v52 _managedObjectWithEntityName:@"FPSKeyDeletionInfo" predicate:v26 createIfNeeded:1 wasCreated:0];
    v28 = [v54 fpsKeyServerURL];
    [v27 setFpsKeyServerURL:v28];

    v29 = [v54 fpsNonceURL];
    [v27 setFpsNonceURL:v29];

    v30 = [v54 additionalFPSRequestParamsJSONData];
    [v27 setAdditionalFPSRequestParamsJSONData:v30];

    v31 = [v54 dsid];
    [v27 setDsid:v31];

    v32 = [v23 keyURI];
    [v27 setKeyURI:v32];

    v33 = [v23 keyData];
    [v27 setKeyData:v33];

    v34 = [v23 expirationDate];
    [v27 setExpirationDate:v34];

    v35 = [v23 playbackExpirationStartDate];
    [v27 setPlaybackExpirationStartDate:v35];

    v36 = [v23 contentID];
    [v27 setContentID:v36];

    if (!v53)
    {
      v37 = sLogObject_2;
      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "Created key deletion info, but invalidateImmediately is NO.  Will add to penalty box to prevent invalidation, and will skip invalidation", buf, 2u);
      }
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __99__VUISidebandMediaLibrary__invalidateKeysForVideoManagedObject_saveWhenDone_invalidateImmediately___block_invoke_239;
    v56[3] = &unk_1E872ECA0;
    v58 = v53;
    v57 = v27;
    v38 = v27;
    dispatch_async(MEMORY[0x1E69E96A0], v56);

    v39 = 1;
    goto LABEL_40;
  }

LABEL_28:
  if (!v53)
  {
LABEL_37:
    v48 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v48, OS_LOG_TYPE_DEFAULT, "No key info exists for invalidation", buf, 2u);
    }

    goto LABEL_39;
  }

  v40 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"FPSKeyDeletionInfo"];
  v41 = MEMORY[0x1E696AE18];
  v42 = [v54 adamID];
  v43 = [v41 predicateWithFormat:@"%K == %@", @"contentID", v42];

  [v40 setPredicate:v43];
  v44 = [v65[5] executeFetchRequest:v40 error:0];
  if (![v44 count])
  {

    goto LABEL_37;
  }

  v45 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v45, OS_LOG_TYPE_DEFAULT, "No key info exists for invalidation, but found a previously existing deletion info for this video.  Removing it from the penalty box and performing invalidation", buf, 2u);
  }

  v46 = +[VUISecureInvalidationManager sharedInstance];
  v47 = [v44 firstObject];
  [v46 removeDeletionInfoFromPenaltyBox:v47];

  dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_242);
LABEL_39:
  v23 = 0;
  v39 = 0;
LABEL_40:
  v49 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v49, OS_LOG_TYPE_DEFAULT, "Removing offline FPS keys from database", buf, 2u);
  }

  v50 = [v54 fpsKeyInfo];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __99__VUISidebandMediaLibrary__invalidateKeysForVideoManagedObject_saveWhenDone_invalidateImmediately___block_invoke_243;
  v55[3] = &unk_1E872ECC8;
  v55[4] = &v64;
  [v50 enumerateObjectsUsingBlock:v55];

  _Block_object_dispose(&v64, 8);
LABEL_43:

  return v39;
}

void __99__VUISidebandMediaLibrary__invalidateKeysForVideoManagedObject_saveWhenDone_invalidateImmediately___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __99__VUISidebandMediaLibrary__invalidateKeysForVideoManagedObject_saveWhenDone_invalidateImmediately___block_invoke_239(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[VUISecureInvalidationManager sharedInstance];
  v4 = *(a1 + 32);
  v5 = v3;
  if (v2 == 1)
  {
    [v3 removeDeletionInfoFromPenaltyBox:v4];

    v5 = +[VUISecureInvalidationManager sharedInstance];
    [v5 invalidateKeysForDeletedVideos];
  }

  else
  {
    [v3 addDeletionInfoToPenaltyBox:v4];
  }
}

void __99__VUISidebandMediaLibrary__invalidateKeysForVideoManagedObject_saveWhenDone_invalidateImmediately___block_invoke_240()
{
  v0 = +[VUISecureInvalidationManager sharedInstance];
  [v0 invalidateKeysForDeletedVideos];
}

void __99__VUISidebandMediaLibrary__invalidateKeysForVideoManagedObject_saveWhenDone_invalidateImmediately___block_invoke_243(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) deleteObject:a2];
  v2 = MEMORY[0x1E69E58C0];
  v3 = +[VUIOfflineKeyRenewalManager sharedInstance];
  [v2 cancelPreviousPerformRequestsWithTarget:v3 selector:sel_updateKeyRenewalAndExpiration object:0];

  v4 = +[VUIOfflineKeyRenewalManager sharedInstance];
  [v4 performSelector:sel_updateKeyRenewalAndExpiration withObject:0 afterDelay:0.0];
}

- (void)_mainQueueManagedObjectContextDidSave:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E695D328]];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:*MEMORY[0x1E695D4D0]];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:*MEMORY[0x1E695D2F8]];

  if ([v7 count])
  {
    v12 = [v5 setByAddingObjectsFromSet:v7];

    v5 = v12;
  }

  if ([v9 count])
  {
    v13 = [v5 setByAddingObjectsFromSet:v9];

    v5 = v13;
  }

  if ([v11 count])
  {
    v14 = [v5 setByAddingObjectsFromSet:v11];

    v5 = v14;
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __65__VUISidebandMediaLibrary__mainQueueManagedObjectContextDidSave___block_invoke;
  v31[3] = &unk_1E872ECF0;
  v31[4] = v32;
  [v5 enumerateObjectsUsingBlock:v31];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v15 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VUISidebandMediaLibrary__mainQueueManagedObjectContextDidSave___block_invoke_2;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v25;
  dispatch_sync(v15, block);

  objc_initWeak(&location, self);
  v16 = v26[5];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__VUISidebandMediaLibrary__mainQueueManagedObjectContextDidSave___block_invoke_3;
  v18[3] = &unk_1E872ED18;
  v20 = &v25;
  v17 = v4;
  v19 = v17;
  v21 = v32;
  objc_copyWeak(&v22, &location);
  [v16 performBlock:v18];
  objc_destroyWeak(&v22);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(v32, 8);
}

void __65__VUISidebandMediaLibrary__mainQueueManagedObjectContextDidSave___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __65__VUISidebandMediaLibrary__mainQueueManagedObjectContextDidSave___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundManagedObjectContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __65__VUISidebandMediaLibrary__mainQueueManagedObjectContextDidSave___block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) mergeChangesFromContextDidSaveNotification:*(a1 + 32)];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Done merging changes to background context; Will post media library contents did change notification on next run loop", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VUISidebandMediaLibrary__mainQueueManagedObjectContextDidSave___block_invoke_250;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v4, (a1 + 56));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v4);
  }
}

void __65__VUISidebandMediaLibrary__mainQueueManagedObjectContextDidSave___block_invoke_250(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postContentsDidChangeNotification];
}

- (id)_mainContextManagedObjectsForObjects:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v6 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VUISidebandMediaLibrary__mainContextManagedObjectsForObjects___block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(v6, block);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) objectID];
        v12 = [v20[5] objectWithID:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v19, 8);

  return v5;
}

void __64__VUISidebandMediaLibrary__mainContextManagedObjectsForObjects___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_deleteVideoManagedObjects:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v3 = [(VUISidebandMediaLibrary *)self _mainContextManagedObjectsForObjects:?];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v5)
  {
    v6 = *v69;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v69 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 |= [(VUISidebandMediaLibrary *)self _removeDownloadedMediaForVideoManagedObject:*(*(&v68 + 1) + 8 * i) markAsDeleted:1 saveWhenDone:0 invalidateImmediately:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v5);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v11)
  {
    v12 = *v65;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v65 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v64 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 series];
          v16 = [v14 season];
          if (v15)
          {
            [v8 addObject:v15];
          }

          if (v16)
          {
            [v9 addObject:v16];
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v11);
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__1;
  v62 = __Block_byref_object_dispose__1;
  v63 = 0;
  v17 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VUISidebandMediaLibrary__deleteVideoManagedObjects___block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v58;
  dispatch_sync(v17, block);

  v42 = v9;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v10;
  v18 = [obj countByEnumeratingWithState:&v53 objects:v76 count:16];
  if (v18)
  {
    v19 = *v54;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v53 + 1) + 8 * k);
        v22 = sLogObject_2;
        if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v75 = v21;
          _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "Deleting managed object %@", buf, 0xCu);
        }

        [v59[5] deleteObject:v21];
      }

      v18 = [obj countByEnumeratingWithState:&v53 objects:v76 count:16];
    }

    while (v18);
  }

  [v59[5] processPendingChanges];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v23 = v42;
  v24 = [v23 countByEnumeratingWithState:&v49 objects:v73 count:16];
  if (v24)
  {
    v25 = *v50;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v49 + 1) + 8 * m);
        v28 = [v27 episodes];
        v29 = [v28 count] == 0;

        if (v29)
        {
          v30 = sLogObject_2;
          if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v75 = v27;
            _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "No more episodes exist for season.  Deleting managed object %@", buf, 0xCu);
          }

          [v59[5] deleteObject:v27];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v49 objects:v73 count:16];
    }

    while (v24);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = v8;
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v72 count:16];
  if (v32)
  {
    v33 = *v46;
    do
    {
      for (n = 0; n != v32; ++n)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v45 + 1) + 8 * n);
        v36 = [v35 episodes];
        v37 = [v36 count] == 0;

        if (v37)
        {
          v38 = sLogObject_2;
          if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v75 = v35;
            _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "No more episodes exist for series.  Deleting managed object %@", buf, 0xCu);
          }

          [v59[5] deleteObject:v35];
        }
      }

      v32 = [v31 countByEnumeratingWithState:&v45 objects:v72 count:16];
    }

    while (v32);
  }

  [(VUISidebandMediaLibrary *)self saveChangesToManagedObjects];
  if ((v4 & 1) == 0)
  {
    v39 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v39, OS_LOG_TYPE_DEFAULT, "Posting secure invalidation complete notification because no videos will be invalidated", buf, 2u);
    }

    v40 = [MEMORY[0x1E696AD88] defaultCenter];
    [v40 postNotificationName:@"VUITellAppRemovalServiceThatSecureInvalidationDidCompleteNotification" object:0];
  }

  _Block_object_dispose(&v58, 8);
}

void __54__VUISidebandMediaLibrary__deleteVideoManagedObjects___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_deleteComingSoonVideoManagedObjects:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v4 = [(VUISidebandMediaLibrary *)self _mainContextManagedObjectsForObjects:?];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v5 = [(VUISidebandMediaLibrary *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VUISidebandMediaLibrary__deleteComingSoonVideoManagedObjects___block_invoke;
  block[3] = &unk_1E872E5B0;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(v5, block);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v26 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = sLogObject_2;
        if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v10;
          _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Deleting coming soon managed object %@", buf, 0xCu);
        }

        [v19[5] deleteObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v26 count:16];
    }

    while (v7);
  }

  [v19[5] processPendingChanges];
  [(VUISidebandMediaLibrary *)self saveChangesToManagedObjects];
  _Block_object_dispose(&v18, 8);
}

void __64__VUISidebandMediaLibrary__deleteComingSoonVideoManagedObjects___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_pruneVideosAtAppLaunchWithCompletion:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v34 = a3;
  if (sDeleteAllEntriesOnInitialization == 1)
  {
    v4 = self;
    v5 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Deleting all videos and keys", buf, 2u);
    }

    v6 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Video"];
    *buf = 0;
    v61 = buf;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__1;
    v64 = __Block_byref_object_dispose__1;
    v65 = 0;
    v7 = [(VUISidebandMediaLibrary *)v4 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__VUISidebandMediaLibrary__pruneVideosAtAppLaunchWithCompletion___block_invoke;
    block[3] = &unk_1E872E5B0;
    block[4] = v4;
    block[5] = buf;
    dispatch_sync(v7, block);

    v8 = [*(v61 + 5) executeFetchRequest:v6 error:0];
    obj = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"ComingSoonVideo"];

    v9 = [*(v61 + 5) executeFetchRequest:obj error:0];
    [(VUISidebandMediaLibrary *)v4 _deleteVideoManagedObjects:v8];
    [(VUISidebandMediaLibrary *)v4 _deleteComingSoonVideoManagedObjects:v9];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    val = self;
    v33 = [(VUISidebandMediaLibrary *)self _videosMarkedAsDeleted];
    v32 = [(VUISidebandMediaLibrary *)self _downloadedVideosForNonSignedInUsers];
    v10 = [(VUISidebandMediaLibrary *)self videosWithDownloadState:2 entitlementTypes:0 sortDescriptors:0 useMainThreadContext:1];
    v31 = [(VUISidebandMediaLibrary *)val _availableComingSoonVideos];
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v12)
    {
      v13 = *v56;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v16 = [v15 fpsKeyInfo];
          v17 = [v16 countByEnumeratingWithState:&v51 objects:v66 count:16];
          if (v17)
          {
            v18 = *v52;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v52 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = [*(*(&v51 + 1) + 8 * j) expirationDate];
                v21 = v20;
                if (v20 && [v20 vui_isInThePast])
                {
                  [v38 addObject:v15];

                  goto LABEL_21;
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v51 objects:v66 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:

          v22 = [v15 localPlaybackURL];
          if (v22)
          {
            [v39 addObject:v15];
            [v11 addObject:v22];
          }

          else
          {
            [v36 addObject:v15];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v12);
    }

    objc_initWeak(buf, val);
    v23 = dispatch_get_global_queue(21, 0);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __65__VUISidebandMediaLibrary__pruneVideosAtAppLaunchWithCompletion___block_invoke_270;
    v40[3] = &unk_1E872ED90;
    v41 = v11;
    v42 = v39;
    v43 = v36;
    v24 = v36;
    v25 = v39;
    v26 = v11;
    objc_copyWeak(&v50, buf);
    v44 = v33;
    v45 = v32;
    v46 = v38;
    v47 = val;
    v48 = v31;
    v49 = v34;
    v27 = v31;
    v28 = v38;
    v29 = v32;
    v30 = v33;
    dispatch_async(v23, v40);

    objc_destroyWeak(&v50);
    objc_destroyWeak(buf);
  }
}

void __65__VUISidebandMediaLibrary__pruneVideosAtAppLaunchWithCompletion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __65__VUISidebandMediaLibrary__pruneVideosAtAppLaunchWithCompletion___block_invoke_270(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v3 = [*(a1 + 32) count];
  if (v3 == [*(a1 + 40) count])
  {
    v4 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__VUISidebandMediaLibrary__pruneVideosAtAppLaunchWithCompletion___block_invoke_2;
    v19[3] = &unk_1E872ED40;
    v20 = v2;
    v21 = *(a1 + 48);
    v22 = *(a1 + 40);
    [v4 enumerateObjectsUsingBlock:v19];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VUISidebandMediaLibrary__pruneVideosAtAppLaunchWithCompletion___block_invoke_3;
  block[3] = &unk_1E872ED68;
  objc_copyWeak(&v18, (a1 + 104));
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v13 = v10;
  v14 = v9;
  v11 = *(a1 + 88);
  v15 = *(a1 + 80);
  v16 = v11;
  v17 = *(a1 + 96);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
}

void __65__VUISidebandMediaLibrary__pruneVideosAtAppLaunchWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = [a2 path];
  if (!v9 || (v5 = [*(a1 + 32) fileExistsAtPath:v9], v6 = v9, (v5 & 1) == 0))
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) objectAtIndex:a3];
    [v7 addObject:v8];

    v6 = v9;
  }
}

void __65__VUISidebandMediaLibrary__pruneVideosAtAppLaunchWithCompletion___block_invoke_3(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v3 addObjectsFromArray:*(a1 + 32)];
  [v3 addObjectsFromArray:*(a1 + 40)];
  [v3 addObjectsFromArray:*(a1 + 48)];
  if (![*(a1 + 56) count])
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_27;
  }

  v4 = [*(a1 + 64) _mainContextManagedObjectsForObjects:*(a1 + 56)];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (!v5)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_26;
  }

  v6 = v5;
  v37 = v3;
  v38 = WeakRetained;
  v7 = 0;
  v8 = 0;
  v9 = *v40;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v40 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v39 + 1) + 8 * i);
      v12 = [v11 availabilityEndDate];
      if (![v11 allowsManualRenewal])
      {
        v14 = sLogObject_2;
        if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v15 = v14;
          v16 = "Deleting expired video since it does not allow manual renewal";
          goto LABEL_17;
        }

LABEL_18:
        [*(a1 + 64) _removeDownloadedMediaForVideoManagedObject:v11 markAsDeleted:0 saveWhenDone:0 invalidateImmediately:1];
        ++v8;
        goto LABEL_19;
      }

      if (v12 && ![v12 vui_isInTheFuture])
      {
        v17 = sLogObject_2;
        if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v15 = v17;
          v16 = "Deleting expired video even though it allows manual renewal, since it is outside the availability window";
LABEL_17:
          _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
        }

        goto LABEL_18;
      }

      v13 = sLogObject_2;
      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Invalidating (but not deleting) expired video since it allows manual key renewal and is still within availability window", buf, 2u);
      }

      [*(a1 + 64) _invalidateKeysForVideoManagedObject:v11 saveWhenDone:0 invalidateImmediately:1];
      ++v7;
LABEL_19:
    }

    v6 = [v4 countByEnumeratingWithState:&v39 objects:v45 count:16];
  }

  while (v6);
  if (v8)
  {
    [*(a1 + 64) saveChangesToManagedObjects];
  }

  v3 = v37;
  WeakRetained = v38;
LABEL_26:

LABEL_27:
  v18 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v44 = v8;
    _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "On launch, deleted downloads for %lu expired videos", buf, 0xCu);
  }

  v19 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v44 = v7;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "On launch, invalidated downloads for %lu expired videos", buf, 0xCu);
  }

  v20 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = [v3 count];
    *buf = 134217984;
    v44 = v22;
    _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Will prune %lu managed object(s) on launch, of which:", buf, 0xCu);
  }

  v23 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 32);
    v25 = v23;
    v26 = [v24 count];
    *buf = 134217984;
    v44 = v26;
    _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "           %lu object(s) are marked as deleted", buf, 0xCu);
  }

  v27 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 40);
    v29 = v27;
    v30 = [v28 count];
    *buf = 134217984;
    v44 = v30;
    _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "           %lu object(s) have downloads for non-signed-in users", buf, 0xCu);
  }

  v31 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 48);
    v33 = v31;
    v34 = [v32 count];
    *buf = 134217984;
    v44 = v34;
    _os_log_impl(&dword_1E323F000, v33, OS_LOG_TYPE_DEFAULT, "           %lu object(s) have downloads but the download is missing", buf, 0xCu);
  }

  if ([v3 count])
  {
    v35 = [v3 allObjects];
    [WeakRetained _deleteVideoManagedObjects:v35];
  }

  if ([*(a1 + 72) count])
  {
    [WeakRetained _deleteComingSoonVideoManagedObjects:*(a1 + 72)];
  }

  [*(a1 + 64) _deleteOrphanedDownloads];
  v36 = *(a1 + 80);
  if (v36)
  {
    (*(v36 + 16))();
  }
}

- (void)_removeDownloadsForNonSignedInUsers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(VUISidebandMediaLibrary *)self _downloadedVideosForNonSignedInUsers];
  v4 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 134217984;
    v17 = [v3 count];
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Removing %lu downloads for users that are not signed in", buf, 0xCu);
  }

  if ([v3 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(VUISidebandMediaLibrary *)self _removeDownloadedMediaForVideoManagedObject:*(*(&v11 + 1) + 8 * v10++) markAsDeleted:1 saveWhenDone:0 invalidateImmediately:1, v11];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(VUISidebandMediaLibrary *)self saveChangesToManagedObjects];
  }
}

- (void)_activeAccountDidChange:(id)a3
{
  v4 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Active account did change", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUISidebandMediaLibrary__activeAccountDidChange___block_invoke;
  block[3] = &unk_1E872E4B8;
  objc_copyWeak(&v6, buf);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __51__VUISidebandMediaLibrary__activeAccountDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeDownloadsForNonSignedInUsers];
}

- (id)performFetch:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v5 = [(VUISidebandMediaLibrary *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__VUISidebandMediaLibrary_performFetch___block_invoke;
  v8[3] = &unk_1E872E5B0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  v6 = [v10[5] executeFetchRequest:v4 error:0];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __40__VUISidebandMediaLibrary_performFetch___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) persistentContainer];
  v2 = [v5 viewContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)countOfDownloadedVideosWithSeasonCanonicalId:(id)a3
{
  v4 = MEMORY[0x1E695D5E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithEntityName:@"TVEpisode"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND %K == %@ AND season.canonicalID == %@", @"markedAsDeleted", @"downloadState", &unk_1F5E5E628, v5];

  [v6 setPredicate:v7];
  v8 = [(VUISidebandMediaLibrary *)self countForFetchRequest:v6 usingMainThreadContext:1];

  return v8;
}

- (unint64_t)countOfDownloadedOrDownloadingVideosWithSeasonCanonicalId:(id)a3
{
  v4 = MEMORY[0x1E695D5E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithEntityName:@"TVEpisode"];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5E5E628, &unk_1F5E5E640, &unk_1F5E5E658, 0}];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND %K IN %@ AND season.canonicalID == %@", @"markedAsDeleted", @"downloadState", v7, v5];

  [v6 setPredicate:v8];
  v9 = [(VUISidebandMediaLibrary *)self countForFetchRequest:v6 usingMainThreadContext:1];

  return v9;
}

- (BOOL)hasDownloadingVideosWithSeasonCanonicalId:(id)a3
{
  v4 = MEMORY[0x1E695D5E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithEntityName:@"TVEpisode"];
  [v6 setFetchLimit:1];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5E5E640, &unk_1F5E5E658, 0}];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND %K IN %@ AND season.canonicalID == %@", @"markedAsDeleted", @"downloadState", v7, v5];

  [v6 setPredicate:v8];
  LOBYTE(self) = [(VUISidebandMediaLibrary *)self countForFetchRequest:v6 usingMainThreadContext:1]!= 0;

  return self;
}

- (unint64_t)countOfComingSoonVideosWithShowCanonicalId:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(VUISidebandMediaLibrary *)self seriesForCanonicalIDOrAdamID:a3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 seasons];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) comingSoonVideos];
        v7 += [v10 count];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)countOfComingSoonVideosWithSeasonCanonicalId:(id)a3
{
  v3 = [(VUISidebandMediaLibrary *)self seasonForCanonicalIDOrAdamID:a3 createIfNeeded:0];
  v4 = [v3 comingSoonVideos];
  v5 = [v4 count];

  return v5;
}

- (void)initWithManager:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "Unable to load store descriptions for defaultDirectoryURL %@", buf, 0xCu);
}

- (void)videoForPlayable:.cold.3()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)videoForPlayable:.cold.4()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __120__VUISidebandMediaLibrary__removeDownloadedMediaForVideoManagedObject_markAsDeleted_saveWhenDone_invalidateImmediately___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "Unable to delete contents at %@: %@", &v4, 0x16u);
}

void __51__VUISidebandMediaLibrary__deleteOrphanedDownloads__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_13();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_pruneVideosAtAppLaunchWithCompletion:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v4 = objc_begin_catch(a1);
  *a3 = v4;
  v5 = v4;
  v6 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Posting secure invalidation complete notification because an exception occurred", v7, 2u);
  }
}

@end