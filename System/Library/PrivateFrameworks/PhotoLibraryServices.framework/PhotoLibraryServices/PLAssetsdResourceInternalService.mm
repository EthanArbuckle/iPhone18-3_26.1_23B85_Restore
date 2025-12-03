@interface PLAssetsdResourceInternalService
- (PLAssetsdResourceInternalService)initWithLibraryServicesManager:(id)manager trustedCallerBundleID:(id)d;
- (void)asynchronousMasterThumbnailForAssetUUID:(id)d reply:(id)reply;
- (void)batchSaveAssetJobs:(id)jobs reply:(id)reply;
- (void)cancelAllPrewarmingWithReply:(id)reply;
- (void)prewarmWithCapturePhotoSettings:(id)settings reply:(id)reply;
@end

@implementation PLAssetsdResourceInternalService

- (void)cancelAllPrewarmingWithReply:(id)reply
{
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  deferredProcessingServicerHandler = [libraryServicesManager deferredProcessingServicerHandler];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PLAssetsdResourceInternalService_cancelAllPrewarmingWithReply___block_invoke;
  v8[3] = &unk_1E7571990;
  v9 = replyCopy;
  v7 = replyCopy;
  [deferredProcessingServicerHandler cancelAllPrewarmingWithCompletion:v8];
}

void __65__PLAssetsdResourceInternalService_cancelAllPrewarmingWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

- (void)prewarmWithCapturePhotoSettings:(id)settings reply:(id)reply
{
  replyCopy = reply;
  settingsCopy = settings;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  deferredProcessingServicerHandler = [libraryServicesManager deferredProcessingServicerHandler];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PLAssetsdResourceInternalService_prewarmWithCapturePhotoSettings_reply___block_invoke;
  v11[3] = &unk_1E7571990;
  v12 = replyCopy;
  v10 = replyCopy;
  [deferredProcessingServicerHandler prewarmWithCapturePhotoSettings:settingsCopy completionHandler:v11];
}

void __74__PLAssetsdResourceInternalService_prewarmWithCapturePhotoSettings_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

- (void)asynchronousMasterThumbnailForAssetUUID:(id)d reply:(id)reply
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v28) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: asynchronousMasterThumbnailForAssetUUID:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v28 + 1);
    *(&v28 + 1) = v9;

    os_activity_scope_enter(v9, (&v29 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdResourceInternalService asynchronousMasterThumbnailForAssetUUID:reply:]"];

  thumbnailManager = [v13 thumbnailManager];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__PLAssetsdResourceInternalService_asynchronousMasterThumbnailForAssetUUID_reply___block_invoke;
  v23[3] = &unk_1E7573C00;
  v15 = dCopy;
  v24 = v15;
  v16 = v13;
  v25 = v16;
  v17 = thumbnailManager;
  v26 = v17;
  v18 = replyCopy;
  v27 = v18;
  [v16 performBlockAndWait:v23];

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v32 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v21, "Received batchSaveAssets:reply: with %d jobs", "%{public}s", buf, 0xCu);
    }
  }
}

void __82__PLAssetsdResourceInternalService_asynchronousMasterThumbnailForAssetUUID_reply___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithUUID:a1[4] inLibrary:a1[5]];
  if (v2)
  {
    v3 = a1[6];
    v4 = [MEMORY[0x1E69BF248] defaultFormatChooser];
    v5 = [v4 masterThumbnailFormat];
    v6 = [v3 dataForPhoto:v2 format:objc_msgSend(v5 allowPlaceholder:"formatID") width:0 height:0 bytesPerRow:0 dataWidth:0 dataHeight:0 imageDataOffset:{0, 0}];
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BFF48];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Asset not found";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [v7 errorWithDomain:v8 code:41003 userInfo:v9];
  }

  (*(a1[7] + 16))();
}

- (void)batchSaveAssetJobs:(id)jobs reply:(id)reply
{
  v64 = *MEMORY[0x1E69E9840];
  jobsCopy = jobs;
  replyCopy = reply;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v58) = enabled;
  if (enabled)
  {
    v7 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: batchSaveAssetJobs:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v58 + 1);
    *(&v58 + 1) = v7;

    os_activity_scope_enter(v7, (&v59 + 8));
  }

  v9 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [jobsCopy count];
    *buf = 67109120;
    *v62 = v10;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Received batchSaveAssets:reply: with %d jobs", buf, 8u);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = jobsCopy;
  v11 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v55;
    v14 = *MEMORY[0x1E69C0410];
    v15 = *MEMORY[0x1E69C0390];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(obj);
        }

        if (v12 >= 11)
        {
          v21 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [obj count];
            *buf = 67109120;
            *v62 = v22 - v12;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "  [...and %d more]", buf, 8u);
          }

          goto LABEL_19;
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        v18 = PLGatekeeperXPCGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v17 objectForKeyedSubscript:v14];
          v20 = [v17 objectForKeyedSubscript:v15];
          *buf = 67109634;
          *v62 = v12;
          *&v62[4] = 2114;
          *&v62[6] = v19;
          *&v62[14] = 2114;
          *&v62[16] = v20;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "  [job-%d] type %{public}@ uuid %{public}@", buf, 0x1Cu);

          ++v12;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v23 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Begin batchSaveAssetJobs", buf, 2u);
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  imageWriter = [libraryServicesManager imageWriter];

  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __61__PLAssetsdResourceInternalService_batchSaveAssetJobs_reply___block_invoke;
  v51[3] = &unk_1E7566140;
  v51[4] = self;
  v27 = imageWriter;
  v52 = v27;
  v28 = v26;
  v53 = v28;
  [obj enumerateObjectsUsingBlock:v51];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v30 = *MEMORY[0x1E69C0430];
  [dictionary setObject:*MEMORY[0x1E69C0430] forKey:*MEMORY[0x1E69C0410]];
  [dictionary setObject:v28 forKey:*MEMORY[0x1E69C0348]];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PLAssetsdResourceInternalService_batchSaveAssetJobs_reply___block_invoke_2;
  aBlock[3] = &unk_1E7566170;
  v31 = v28;
  v49 = v31;
  v32 = replyCopy;
  v50 = v32;
  v33 = _Block_copy(aBlock);
  v34 = [v33 copy];
  v35 = _Block_copy(v34);
  [dictionary setObject:v35 forKey:@"completionBlock"];

  v36 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = NSStringFromSelector(a2);
    v38 = [v31 count];
    *buf = 138412802;
    *v62 = v37;
    *&v62[8] = 2112;
    *&v62[10] = v30;
    *&v62[18] = 1024;
    *&v62[20] = v38;
    _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "[%@] enqueuing batch save job %@ with %d jobs", buf, 0x1Cu);
  }

  [v27 enqueueJob:dictionary];
  v39 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEBUG, "End batchSaveAssetJobs", buf, 2u);
  }

  if (v58 == 1)
  {
    os_activity_scope_leave((&v59 + 8));
  }

  if (v59)
  {
    v40 = PLRequestGetLog();
    v41 = v40;
    v42 = v59;
    if ((v59 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      Name = sel_getName(*(&v60 + 1));
      *buf = 136446210;
      *v62 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v41, OS_SIGNPOST_INTERVAL_END, v42, "Received batchSaveAssets:reply: with %d jobs", "%{public}s", buf, 0xCu);
    }
  }
}

void __61__PLAssetsdResourceInternalService_batchSaveAssetJobs_reply___block_invoke(id *a1, void *a2)
{
  v18 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [a1[4] libraryServicesManager];
  v5 = [v4 imageWriter];
  v6 = [MEMORY[0x1E696B0B8] currentConnection];
  v7 = [v5 imageWriterJob:v18 hasValidPathsWithConnection:v6];

  if (v7)
  {
    if ([v18 count])
    {
      v8 = [v18 objectForKey:*MEMORY[0x1E69C0410]];
      v9 = [v18 objectForKey:*MEMORY[0x1E69C03D0]];
      if ([v8 isEqualToString:*MEMORY[0x1E69C0458]])
      {
        v10 = *MEMORY[0x1E69C04C8];
        v11 = [v18 objectForKey:*MEMORY[0x1E69C04C8]];
        if (![v11 length])
        {
          if (![v9 length])
          {
            v12 = [MEMORY[0x1E69BF178] defaultFileExtensionForAssetType:0];

            v9 = v12;
          }

          v13 = [v18 objectForKey:*MEMORY[0x1E69C0388]];

          if (!v13)
          {
            v14 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
            if (v14 || ([v18 objectForKeyedSubscript:*MEMORY[0x1E69C03B8]], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v15 = v14;
            }

            else
            {
              v17 = [MEMORY[0x1E696AFB0] UUID];
              v15 = [v17 UUIDString];
            }

            v16 = [a1[5] cameraAssetPathForNewAssetWithExtension:v9 assetUUID:v15];

            v11 = v16;
          }

          if (v11)
          {
            [v18 setObject:v11 forKey:v10];
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }

    [a1[6] addObject:v18];
  }

  objc_autoreleasePoolPop(v3);
}

void __61__PLAssetsdResourceInternalService_batchSaveAssetJobs_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 removeObjectForKey:@"completionBlock"];
  PLImageWriterRemovePrivateKeysFromJobDictionary(v3);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 removeObjectForKey:{@"completionBlock", v10}];
        PLImageWriterRemovePrivateKeysFromJobDictionary(v9);
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 40) + 16))();
}

- (PLAssetsdResourceInternalService)initWithLibraryServicesManager:(id)manager trustedCallerBundleID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = PLAssetsdResourceInternalService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v11 initWithLibraryServicesManager:manager];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trustedCallerBundleID, d);
  }

  return v9;
}

@end