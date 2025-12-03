@interface PLCloudSharingJob
+ (id)highPriorityOperationQueue;
+ (id)lowPriorityOperationQueue;
+ (id)recoveredEventsWithPathManager:(id)manager;
+ (void)deleteAllRecoveryEventsWithPathManager:(id)manager;
- (PLCloudSharingJob)initWithAssetsdClient:(id)client;
- (PLPhotoLibrary)transientPhotoLibrary;
- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager;
- (void)archiveXPCToDisk:(id)disk;
- (void)runAndWaitForMessageToBeSent;
- (void)runDaemonSide;
@end

@implementation PLCloudSharingJob

- (void)runAndWaitForMessageToBeSent
{
  v11 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  [(PLDaemonJob *)self sendToAssetsd];
  v4 = CFAbsoluteTimeGetCurrent();
  assetsdClient = [(PLDaemonJob *)self assetsdClient];
  [assetsdClient waitUntilConnectionSendsAllMessages];

  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = v4 - Current;
    v9 = 2048;
    v10 = CFAbsoluteTimeGetCurrent() - v4;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "runAndWaitForMessageToBeSent sendToAssetsd time %f waitUntilConnectionSendsAllMessages time %f", &v7, 0x16u);
  }
}

- (void)runDaemonSide
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_archiveFilename)
  {
    libraryServicesManager = [(PLDaemonJob *)self libraryServicesManager];
    modelMigrator = [libraryServicesManager modelMigrator];
    pathManager = [modelMigrator pathManager];
    cloudSharingArchiveDirectory = [pathManager cloudSharingArchiveDirectory];

    v7 = [cloudSharingArchiveDirectory stringByAppendingPathComponent:self->_archiveFilename];
    v8 = objc_opt_new();
    [v8 removeItemAtPath:v7 error:0];

    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Deleted archive %@", buf, 0xCu);
    }
  }

  v10.receiver = self;
  v10.super_class = PLCloudSharingJob;
  [(PLDaemonJob *)&v10 runDaemonSide];
}

- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = PLCloudSharingJob;
  v7 = [(PLDaemonJob *)&v11 initFromXPCObject:objectCopy libraryServicesManager:manager];
  if (v7)
  {
    v8 = PLStringFromXPCDictionary();
    v9 = v7[8];
    v7[8] = v8;

    *(v7 + 72) = xpc_dictionary_get_BOOL(objectCopy, "PLCloudSharingJob_shouldPrioritize");
  }

  +[PLPhotoSharingHelper initializeMSPlatform];

  return v7;
}

- (void)archiveXPCToDisk:(id)disk
{
  v54 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v5 = objc_autoreleasePoolPush();
  v6 = atomic_fetch_add(&archiveXPCToDisk__archiveCounter, 1uLL) + 1;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f.%lld.job", *&Current, v6];
  xpc_dictionary_set_string(diskCopy, "PLCloudSharingJob_archiveFilename", [v8 UTF8String]);
  xpc_dictionary_set_BOOL(diskCopy, "PLCloudSharingJob_shouldPrioritize", self->_shouldPrioritize);
  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v41 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v9 format:200 options:0 error:&v41];
  v11 = v41;
  systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  cloudSharingArchiveDirectory = [systemLibraryPathManager cloudSharingArchiveDirectory];

  v14 = [cloudSharingArchiveDirectory stringByAppendingPathComponent:v8];
  if (v10 && (([v10 writeToFile:v14 options:1073741825 error:0] & 1) != 0 || (v15 = objc_opt_new(), v40 = v11, objc_msgSend(v15, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", cloudSharingArchiveDirectory, 1, 0, &v40), v16 = v40, v17 = v11, v18 = self, v19 = v9, v20 = v5, v21 = v16, v17, v15, v22 = objc_msgSend(v10, "writeToFile:options:error:", v14, 1073741825, 0), v23 = v21, v5 = v20, v9 = v19, self = v18, v11 = v23, (v22 & 1) != 0)))
  {
    v24 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v38 = v5;
      v25 = objc_opt_class();
      v37 = v25;
      v26 = CFAbsoluteTimeGetCurrent();
      *buf = 134218754;
      selfCopy = self;
      v44 = 2112;
      v45 = v25;
      v5 = v38;
      v46 = 2112;
      v47 = v14;
      v48 = 2048;
      v49 = v26 - Current;
      v27 = "Archived <%p>%@ to %@ in %f";
      v28 = v24;
      v29 = OS_LOG_TYPE_DEBUG;
      v30 = 42;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v28, v29, v27, buf, v30);
    }
  }

  else
  {
    v24 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v39 = cloudSharingArchiveDirectory;
      v31 = v11;
      selfCopy2 = self;
      v33 = v9;
      v34 = v5;
      v35 = objc_opt_class();
      v37 = v35;
      v36 = [v10 length];
      *buf = 134219266;
      selfCopy = selfCopy2;
      v11 = v31;
      cloudSharingArchiveDirectory = v39;
      v44 = 2112;
      v45 = v35;
      v5 = v34;
      v9 = v33;
      v46 = 2048;
      v47 = v33;
      v48 = 2048;
      v49 = *&v36;
      v50 = 2112;
      v51 = v14;
      v52 = 2112;
      v53 = v11;
      v27 = "ERROR: archiving <%p>%@ (plist %p data %lu) to %@: %@";
      v28 = v24;
      v29 = OS_LOG_TYPE_ERROR;
      v30 = 62;
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (PLPhotoLibrary)transientPhotoLibrary
{
  libraryServicesManager = [(PLDaemonJob *)self libraryServicesManager];

  if (!libraryServicesManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudSharingJob.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"self.libraryServicesManager"}];
  }

  v5 = PFFullMethodName();
  libraryServicesManager2 = [(PLDaemonJob *)self libraryServicesManager];
  databaseContext = [libraryServicesManager2 databaseContext];
  v8 = [databaseContext newShortLivedLibraryWithName:{objc_msgSend(v5, "UTF8String")}];

  return v8;
}

- (PLCloudSharingJob)initWithAssetsdClient:(id)client
{
  v4.receiver = self;
  v4.super_class = PLCloudSharingJob;
  result = [(PLDaemonJob *)&v4 initWithAssetsdClient:client];
  if (result)
  {
    result->_shouldPrioritize = 0;
  }

  return result;
}

+ (void)deleteAllRecoveryEventsWithPathManager:(id)manager
{
  v33 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Deleting all recovery events!", buf, 2u);
  }

  cloudSharingArchiveDirectory = [managerCopy cloudSharingArchiveDirectory];
  v6 = objc_opt_new();
  v27 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:cloudSharingArchiveDirectory error:&v27];
  v8 = v27;
  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = v8;
      v20 = v7;
      v21 = managerCopy;
      v12 = 0;
      v13 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [cloudSharingArchiveDirectory stringByAppendingPathComponent:*(*(&v23 + 1) + 8 * i)];
          v22 = v12;
          v16 = [v6 removeItemAtPath:v15 error:&v22];
          v17 = v22;

          if (v16)
          {
            v12 = v17;
          }

          else
          {
            v18 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v30 = v15;
              v31 = 2112;
              v32 = v17;
              _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unable to delete recovery event file %@: %@", buf, 0x16u);
            }

            v12 = 0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);

      v7 = v20;
      managerCopy = v21;
      v8 = v19;
    }
  }

  else
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = cloudSharingArchiveDirectory;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unable to find recovery events file under %@: %@", buf, 0x16u);
    }
  }
}

+ (id)recoveredEventsWithPathManager:(id)manager
{
  v39 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  [MEMORY[0x1E695DF70] array];
  v26 = v25 = managerCopy;
  cloudSharingArchiveDirectory = [managerCopy cloudSharingArchiveDirectory];
  v28 = objc_opt_new();
  v5 = [v28 contentsOfDirectoryAtPath:cloudSharingArchiveDirectory error:0];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v30 = *MEMORY[0x1E69BFD30];
    v27 = *v33;
    do
    {
      v11 = 0;
      v29 = v9;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if ([v12 hasSuffix:@".job"])
        {
          v14 = [cloudSharingArchiveDirectory stringByAppendingPathComponent:v12];
          v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
          v16 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v15];
          v31 = 0;
          [v16 getUInt16:&v31 forKey:v30];
          if (v31 > 2u)
          {
            goto LABEL_12;
          }

          v17 = v7;
          v18 = cloudSharingArchiveDirectory;
          [MEMORY[0x1E69BF230] persistUInt16:(v31 + 1) forKey:v30 fileURL:v15];
          v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v14 options:1 error:0];
          if ([v19 length])
          {
            [v19 bytes];
            [v19 length];
            v20 = xpc_create_from_plist();
            if (v20)
            {
              v21 = v20;
              [v26 addObject:v20];

              cloudSharingArchiveDirectory = v18;
              v7 = v17;
              v10 = v27;
LABEL_16:

              v9 = v29;
              goto LABEL_17;
            }
          }

          v7 = v17;
          v10 = v27;
          if (v31 >= 3u)
          {
LABEL_12:
            v22 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v37 = v12;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "Deleting recovered event %@ because of too many recovery attempts", buf, 0xCu);
            }
          }

          [v28 removeItemAtPath:v14 error:0];
          goto LABEL_16;
        }

LABEL_17:
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v9);
  }

  v23 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v26;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "recoveredEvents %@", buf, 0xCu);
  }

  return v26;
}

+ (id)highPriorityOperationQueue
{
  pl_dispatch_once();
  v2 = highPriorityOperationQueue_serialOperationQueue;

  return v2;
}

uint64_t __47__PLCloudSharingJob_highPriorityOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = highPriorityOperationQueue_serialOperationQueue;
  highPriorityOperationQueue_serialOperationQueue = v0;

  [highPriorityOperationQueue_serialOperationQueue setMaxConcurrentOperationCount:1];
  v2 = highPriorityOperationQueue_serialOperationQueue;

  return [v2 setQualityOfService:25];
}

+ (id)lowPriorityOperationQueue
{
  pl_dispatch_once();
  v2 = lowPriorityOperationQueue_serialOperationQueue;

  return v2;
}

uint64_t __46__PLCloudSharingJob_lowPriorityOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = lowPriorityOperationQueue_serialOperationQueue;
  lowPriorityOperationQueue_serialOperationQueue = v0;

  [lowPriorityOperationQueue_serialOperationQueue setMaxConcurrentOperationCount:1];
  v2 = lowPriorityOperationQueue_serialOperationQueue;

  return [v2 setQualityOfService:9];
}

@end