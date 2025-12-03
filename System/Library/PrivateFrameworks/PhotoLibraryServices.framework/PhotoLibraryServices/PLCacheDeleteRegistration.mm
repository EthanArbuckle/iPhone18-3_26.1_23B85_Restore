@interface PLCacheDeleteRegistration
+ (id)cacheDeleteUrgencySpecialCasePhotoLibrary;
+ (void)registerDefaultHandlers;
+ (void)registerSpecialCaseHandler;
- (PLCacheDeleteRegistration)init;
- (void)_processRemovedFiles:(id)files withCacheDeleteSupport:(id)support forLibraryURL:(id)l;
- (void)_registerResourceDirectories;
- (void)_replaceCameraWatcherWith:(id)with;
- (void)cameraWatcherDidChangeState:(id)state;
- (void)registerCacheDeleteSupport:(id)support withLibraryServicesManager:(id)manager;
- (void)unregisterCacheDeleteSupport:(id)support withLibraryServicesManager:(id)manager;
@end

@implementation PLCacheDeleteRegistration

- (void)_replaceCameraWatcherWith:(id)with
{
  withCopy = with;
  [(PFCameraViewfinderSessionWatcher *)self->_cameraWatcher stopWatching];
  cameraWatcher = self->_cameraWatcher;
  self->_cameraWatcher = withCopy;
}

- (void)cameraWatcherDidChangeState:(id)state
{
  queue = self->_queue;
  stateCopy = state;
  dispatch_assert_queue_V2(queue);
  LOBYTE(queue) = [stateCopy isCameraRunning];

  if ((queue & 1) == 0 && self->_fileIDsAndPurgedPathsReceivedWhileCameraIsStreamingPerLibrary)
  {
    v6 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Camera preview stopped, processing ccd purge notifications now", buf, 2u);
    }

    fileIDsAndPurgedPathsReceivedWhileCameraIsStreamingPerLibrary = self->_fileIDsAndPurgedPathsReceivedWhileCameraIsStreamingPerLibrary;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PLCacheDeleteRegistration_cameraWatcherDidChangeState___block_invoke;
    v9[3] = &unk_1E756A930;
    v9[4] = self;
    [(NSMutableDictionary *)fileIDsAndPurgedPathsReceivedWhileCameraIsStreamingPerLibrary enumerateKeysAndObjectsUsingBlock:v9];
    v8 = self->_fileIDsAndPurgedPathsReceivedWhileCameraIsStreamingPerLibrary;
    self->_fileIDsAndPurgedPathsReceivedWhileCameraIsStreamingPerLibrary = 0;
  }
}

void __57__PLCacheDeleteRegistration_cameraWatcherDidChangeState___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:a2];
  [v6 markAsNotLocallyAvailableForResourcesWithFileIDsToPath:v5];
}

- (void)_processRemovedFiles:(id)files withCacheDeleteSupport:(id)support forLibraryURL:(id)l
{
  filesCopy = files;
  supportCopy = support;
  lCopy = l;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__PLCacheDeleteRegistration__processRemovedFiles_withCacheDeleteSupport_forLibraryURL___block_invoke;
  v15[3] = &unk_1E7578100;
  v16 = filesCopy;
  selfCopy = self;
  v18 = supportCopy;
  v19 = lCopy;
  v12 = lCopy;
  v13 = supportCopy;
  v14 = filesCopy;
  dispatch_async(queue, v15);
}

void __87__PLCacheDeleteRegistration__processRemovedFiles_withCacheDeleteSupport_forLibraryURL___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v34 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Processing %ld events", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v26 = v4;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"rescan", v26}];

        if (v10)
        {
          v14 = PLResourceCachingGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Missing history events, rescanning whole file system", buf, 2u);
          }

          PLSimulateCrash();
          [*(*(a1 + 40) + 8) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_84];
          v4 = v26;
          [v26 removeAllObjects];
          goto LABEL_21;
        }

        v11 = [v9 objectForKeyedSubscript:@"historyDone"];

        if (v11)
        {
          v15 = PLResourceCachingGetLog();
          v4 = v26;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "No more purge events to handle", buf, 2u);
          }

          goto LABEL_21;
        }

        v12 = [v9 objectForKeyedSubscript:@"path"];
        v13 = [v9 objectForKeyedSubscript:@"fileID"];
        if ([*(a1 + 48) isFilePurgedForFileID:v13 purgedPath:v12])
        {
          [v26 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v4 = v26;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  if ([*(*(a1 + 40) + 32) isCameraRunning])
  {
    v16 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Camera preview is running, delaying acting on purge notification till preview stops", buf, 2u);
    }

    v17 = *(*(a1 + 40) + 40);
    if (!v17)
    {
      v18 = [MEMORY[0x1E695DF90] dictionary];
      v19 = *(a1 + 40);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v17 = *(*(a1 + 40) + 40);
    }

    v21 = [v17 objectForKeyedSubscript:*(a1 + 56)];

    if (!v21)
    {
      v22 = [MEMORY[0x1E695DF90] dictionary];
      [*(*(a1 + 40) + 40) setObject:v22 forKeyedSubscript:*(a1 + 56)];
    }

    v23 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:*(a1 + 56)];
    v24 = [v23 count];

    if (v24 >> 4 > 0x270)
    {
      v25 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v4;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "More than 10,000 ccd notifications already pending, ignoring these: %@", buf, 0xCu);
      }
    }

    else
    {
      v25 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:*(a1 + 56)];
      [v25 addEntriesFromDictionary:v4];
    }
  }

  else
  {
    [*(a1 + 48) markAsNotLocallyAvailableForResourcesWithFileIDsToPath:v4];
  }
}

- (void)_registerResourceDirectories
{
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  cacheDeleteSupportByLibraryURL = self->_cacheDeleteSupportByLibraryURL;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __57__PLCacheDeleteRegistration__registerResourceDirectories__block_invoke;
  v43[3] = &unk_1E756A8C0;
  v5 = v3;
  v44 = v5;
  [(NSMutableDictionary *)cacheDeleteSupportByLibraryURL enumerateKeysAndObjectsUsingBlock:v43];
  v6 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Current resource directories %@", buf, 0xCu);
  }

  v50 = @"CACHE_DELETE_PURGE_NOTIFICATION";
  v51[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PLCacheDeleteRegistration__registerResourceDirectories__block_invoke_69;
  aBlock[3] = &unk_1E756A8E8;
  aBlock[4] = self;
  v33 = _Block_copy(aBlock);
  v34 = v7;
  v8 = CacheDeleteRegister();
  v9 = PLResourceCachingGetLog();
  v10 = v9;
  if (v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Failed to register with CacheDelete for purge notifications";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Registered for CacheDelete purge notifications";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_19BF1F000, v12, v13, v11, buf, 2u);
LABEL_9:

  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = self->_cacheDeleteSupportByLibraryURL;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __57__PLCacheDeleteRegistration__registerResourceDirectories__block_invoke_72;
  v40[3] = &unk_1E756A8C0;
  v16 = v14;
  v41 = v16;
  [(NSMutableDictionary *)v15 enumerateKeysAndObjectsUsingBlock:v40];
  v17 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v16;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Resource directories to mark all new children purgeable %@", buf, 0xCu);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v36 + 1) + 8 * i) isDirectory:1];
        v35 = 0;
        v24 = [PLCacheDeleteSupport markChildrenPurgeableForDirectoryAtURL:v23 withUrgency:0 error:&v35];
        v25 = v35;
        v26 = PLResourceCachingGetLog();
        v27 = v26;
        if (v24)
        {
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_22;
          }

          v28 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v23];
          *buf = 138412290;
          v46 = v28;
          v29 = v27;
          v30 = OS_LOG_TYPE_DEBUG;
          v31 = "Marked purgeable new children of directory %@ ";
          v32 = 12;
        }

        else
        {
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }

          v28 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v23];
          *buf = 138412546;
          v46 = v28;
          v47 = 2112;
          v48 = v25;
          v29 = v27;
          v30 = OS_LOG_TYPE_ERROR;
          v31 = "Failed to mark purgeable new children of directory: %@, error: %@";
          v32 = 22;
        }

        _os_log_impl(&dword_19BF1F000, v29, v30, v31, buf, v32);

LABEL_22:
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v20);
  }
}

void __57__PLCacheDeleteRegistration__registerResourceDirectories__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = [a3 purgeableDirectories];
  v4 = [v5 allObjects];
  [v3 addObjectsFromArray:v4];
}

uint64_t __57__PLCacheDeleteRegistration__registerResourceDirectories__block_invoke_69(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = a2;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "got notifications: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PLCacheDeleteRegistration__registerResourceDirectories__block_invoke_70;
  v8[3] = &unk_1E756A8C0;
  v8[4] = v5;
  return [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __57__PLCacheDeleteRegistration__registerResourceDirectories__block_invoke_72(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = [a3 markChildrenPurgeableDirectories];
  v4 = [v5 allObjects];
  [v3 addObjectsFromArray:v4];
}

void __57__PLCacheDeleteRegistration__registerResourceDirectories__block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  v8 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "enumerating directories for notification ID: %{public}@", buf, 0xCu);
  }

  v9 = [v6 purgeableDirectories];
  v10 = [v9 allObjects];
  v13 = v5;
  v11 = v5;
  v12 = v6;
  CacheDeleteEnumerateRemovedFilesInDirectories();
}

- (void)unregisterCacheDeleteSupport:(id)support withLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__PLCacheDeleteRegistration_unregisterCacheDeleteSupport_withLibraryServicesManager___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = managerCopy;
  selfCopy = self;
  v7 = managerCopy;
  dispatch_async(queue, v8);
}

void __85__PLCacheDeleteRegistration_unregisterCacheDeleteSupport_withLibraryServicesManager___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pathManager];
  v3 = [v2 libraryURL];
  if (v3)
  {
    [*(*(a1 + 40) + 8) setObject:0 forKeyedSubscript:v3];
    [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:v3];
    if ([*(*(a1 + 40) + 8) count])
    {
      [*(a1 + 40) _registerResourceDirectories];
    }

    else
    {
      CacheDeleteRegister();
    }
  }

  else
  {
    v4 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Missing libraryURL to unregister ", v5, 2u);
    }
  }
}

- (void)registerCacheDeleteSupport:(id)support withLibraryServicesManager:(id)manager
{
  supportCopy = support;
  managerCopy = manager;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PLCacheDeleteRegistration_registerCacheDeleteSupport_withLibraryServicesManager___block_invoke;
  block[3] = &unk_1E75761B8;
  v12 = managerCopy;
  selfCopy = self;
  v14 = supportCopy;
  v9 = supportCopy;
  v10 = managerCopy;
  dispatch_async(queue, block);
}

void __83__PLCacheDeleteRegistration_registerCacheDeleteSupport_withLibraryServicesManager___block_invoke(id *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] pathManager];
  v3 = [v2 libraryURL];
  if (v3)
  {
    v4 = [v2 capabilities];
    v5 = [v4 isCentralizedCacheDeleteCapable];

    if (v5)
    {
      v6 = MEMORY[0x1E69BF208];
      v7 = [v3 path];
      v8 = [v6 mountPointForPath:v7];

      if (!v8)
      {
        v17 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v3;
          v18 = "Failed to get mount point for libraryURL %@";
LABEL_34:
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
        }

LABEL_35:

        goto LABEL_36;
      }

      v9 = [*(a1[5] + 1) objectForKeyedSubscript:v3];

      v10 = PLResourceCachingGetLog();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (!v11)
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v30 = v3;
        v12 = "Replacing cache delete support for libraryURL %@";
      }

      else
      {
        if (!v11)
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v30 = v3;
        v12 = "Adding cache delete support for libraryURL %@";
      }

      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
LABEL_17:

      [*(a1[5] + 1) setObject:a1[6] forKeyedSubscript:v3];
      if ([a1[4] wellKnownPhotoLibraryIdentifier] == 1)
      {
        v17 = @"com.apple.assetsd.purgeNotification";
LABEL_21:
        [*(a1[5] + 2) setObject:v17 forKeyedSubscript:v3];
        v19 = [a1[6] purgeableDirectories];
        v20 = [v19 allObjects];

        v21 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v30 = v3;
          v31 = 2112;
          v32 = v8;
          v33 = 2112;
          v34 = v20;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Listen for purge notifications on libraryURL %@ (mount point: %@) and resource directories %@", buf, 0x20u);
        }

        CacheDeleteInitPurgeMarker();
        [a1[5] _registerResourceDirectories];
        v22 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Processing purging events at start up", buf, 2u);
        }

        v26 = a1[6];
        v27 = v3;
        CacheDeleteEnumerateRemovedFilesInDirectories();

        goto LABEL_35;
      }

      if ([a1[4] wellKnownPhotoLibraryIdentifier] == 3)
      {
        v17 = [@"com.apple.assetsd.purgeNotification" stringByAppendingFormat:@".%lu", objc_msgSend(a1[4], "wellKnownPhotoLibraryIdentifier")];
        if (v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v28 = 0;
        v23 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:v3 createIfMissing:1 error:&v28];
        v24 = v28;
        if (v23)
        {
          v25 = [v23 uuid];
          v17 = [@"com.apple.assetsd.purgeNotification" stringByAppendingFormat:@".%@", v25];
        }

        else
        {
          v25 = PLResourceCachingGetLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = v3;
            v31 = 2112;
            v32 = v24;
            _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Unable to get library identifier for cache delete purge notification ID: %@, error: %@", buf, 0x16u);
          }

          v17 = 0;
        }

        if (v17)
        {
          goto LABEL_21;
        }
      }

      v17 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v3;
        v18 = "Couldn't derive purgeNotificationID for libraryURL %@";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    v8 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v3;
      v13 = "%@ does not support CCD";
      v14 = v8;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 12;
      goto LABEL_11;
    }
  }

  else
  {
    v8 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "Missing libraryURL to listen for purge notifications";
      v14 = v8;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 2;
LABEL_11:
      _os_log_impl(&dword_19BF1F000, v14, v15, v13, buf, v16);
    }
  }

LABEL_36:
}

- (PLCacheDeleteRegistration)init
{
  v13.receiver = self;
  v13.super_class = PLCacheDeleteRegistration;
  v2 = [(PLCacheDeleteRegistration *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cacheDeleteSupportByLibraryURL = v2->_cacheDeleteSupportByLibraryURL;
    v2->_cacheDeleteSupportByLibraryURL = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notificationIDsByLibraryURL = v2->_notificationIDsByLibraryURL;
    v2->_notificationIDsByLibraryURL = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v8 = dispatch_queue_create("com.apple.photos.cacheDelete", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = [objc_alloc(MEMORY[0x1E69C0690]) initWithDispatchQueue:v2->_queue delegate:v2];
    cameraWatcher = v2->_cameraWatcher;
    v2->_cameraWatcher = v10;

    [(PFCameraViewfinderSessionWatcher *)v2->_cameraWatcher startWatching];
  }

  return v2;
}

+ (id)cacheDeleteUrgencySpecialCasePhotoLibrary
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[PLPhotoLibraryBundleController sharedBundleController];
  v3 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:1];
  v4 = [v2 openBundleAtLibraryURL:v3];

  libraryServicesManager = [v4 libraryServicesManager];
  v14 = 0;
  v6 = [libraryServicesManager activate:&v14];
  v7 = v14;
  v8 = v7;
  if (v6 && (v7, v13 = 0, v9 = [libraryServicesManager awaitLibraryState:7 error:&v13], v8 = v13, v9))
  {
    databaseContext = [libraryServicesManager databaseContext];
    v11 = [databaseContext newShortLivedLibraryWithName:"CacheDelete UrgencySpecialCase"];
  }

  else
  {
    databaseContext = PLResourceCachingGetLog();
    if (os_log_type_enabled(databaseContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_19BF1F000, databaseContext, OS_LOG_TYPE_ERROR, "Unable to photo library for CacheDelete: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (void)registerSpecialCaseHandler
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PLCacheDeleteRegistration_registerSpecialCaseHandler__block_invoke;
  aBlock[3] = &__block_descriptor_40_e45_____CFDictionary__20__0i8____CFDictionary__12l;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PLCacheDeleteRegistration_registerSpecialCaseHandler__block_invoke_41;
  v12[3] = &__block_descriptor_40_e45_____CFDictionary__20__0i8____CFDictionary__12l;
  v12[4] = self;
  v4 = _Block_copy(v12);
  v5 = CacheDeleteRegister();
  v6 = PLResourceCachingGetLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      v8 = "Failed to register with CacheDelete for purge UrgencySpecialCase";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v9, v10, v8, v11, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    v8 = "Registered with CacheDelete for purge UrgencySpecialCase";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }
}

uint64_t __55__PLCacheDeleteRegistration_registerSpecialCaseHandler__block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLResourceCachingGetLog();
  v7 = v6;
  if (a2 != 4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Called by CacheDelete to purge but NOT UrgencySpecialCase...", buf, 2u);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Called by CacheDelete to purge UrgencySpecialCase... amount: %{public}@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) cacheDeleteUrgencySpecialCasePhotoLibrary];
  if (!infoVolumeMatchesLibrary(v5, v7))
  {
    v18 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "CacheDelete purge volume does not match the photo library", buf, 2u);
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v9 = [v7 thumbnailManager];
  v10 = [v7 managedObjectContext];
  v11 = [v9 removeAllThumbnailsInContextForUrgentCacheDeleteRequest:v10 dryRun:0 count:0];

  v12 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "purged for CacheDelete UrgencySpecialCase: %lld in thumbnails", buf, 0xCu);
  }

  v13 = v11 & ~(v11 >> 63);
  v14 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v15 = [v14 unsignedLongLongValue];

  if (v15 > v13)
  {
    v16 = [PLDiskSpaceManagement performCloudSharingSpaceManagementWithBytesToPurge:v15 - v13 shouldFreeSpace:1 shouldKeepRecentlyViewedAssets:0 fromPhotoLibrary:v7];
    v17 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "purged for CacheDelete UrgencySpecialCase: %llu in shared streams", buf, 0xCu);
    }

    v13 += v16;
  }

LABEL_17:

  v19 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v23[1] = @"CACHE_DELETE_AMOUNT";
  v24[0] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
  v24[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v21;
}

uint64_t __55__PLCacheDeleteRegistration_registerSpecialCaseHandler__block_invoke_41(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != 4)
  {
    v6 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Called by CacheDelete to find purgeable but NOT UrgencySpecialCase", buf, 2u);
    }

    goto LABEL_13;
  }

  v6 = [*(a1 + 32) cacheDeleteUrgencySpecialCasePhotoLibrary];
  if (!infoVolumeMatchesLibrary(v5, v6))
  {
    v13 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "CacheDelete purgeable volume does not match the photo library", buf, 2u);
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v7 = [v6 thumbnailManager];
  v8 = [v7 removeAllThumbnailsInContextForUrgentCacheDeleteRequest:0 dryRun:1 count:0];

  v9 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v8;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Called by CacheDelete to find purgeable for UrgencySpecialCase: %lld in thumbnails", buf, 0xCu);
  }

  v10 = [PLDiskSpaceManagement performCloudSharingSpaceManagementWithBytesToPurge:0 shouldFreeSpace:0 shouldKeepRecentlyViewedAssets:0 fromPhotoLibrary:v6];
  v11 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v10;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Called by CacheDelete to find purgeable for UrgencySpecialCase: %llu in shared streams", buf, 0xCu);
  }

  v12 = v10 + v8;
LABEL_14:

  v14 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v18[1] = @"CACHE_DELETE_AMOUNT";
  v19[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v16;
}

+ (void)registerDefaultHandlers
{
  v2 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "CacheDelete registerDefaultHandler", v3, 2u);
  }

  CacheDeleteRegister();
}

@end