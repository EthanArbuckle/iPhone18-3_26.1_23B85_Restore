@interface PLAssetDownloadManager
+ (id)defaultManager;
- (PLAssetDownloadManager)init;
- (PLAssetDownloadManagerDelegate)delegate;
- (int)requestRequiredResourcesForManagedAssetObjectUUID:(id)d library:(id)library completionHandler:(id)handler;
- (void)cancelRequest:(int)request;
@end

@implementation PLAssetDownloadManager

- (PLAssetDownloadManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancelRequest:(int)request
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__PLAssetDownloadManager_cancelRequest___block_invoke;
  v3[3] = &unk_1E756CD90;
  v3[4] = self;
  requestCopy = request;
  [(PLAssetDownloadManager *)self _onQueueAsync:v3];
}

void __40__PLAssetDownloadManager_cancelRequest___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(*(a1 + 32) + 16);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{*(a1 + 40), 0}];
  v3 = [v1 objectForKeyedSubscript:v2];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = +[PLAssetResourceDownloadManager defaultManager];
        [v9 cancelRequest:{objc_msgSend(v8, "intValue")}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (int)requestRequiredResourcesForManagedAssetObjectUUID:(id)d library:(id)library completionHandler:(id)handler
{
  dCopy = d;
  libraryCopy = library;
  handlerCopy = handler;
  v11 = atomic_fetch_add(&self->_currentRequestId, 1u) + 1;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__3531;
  v38[4] = __Block_byref_object_dispose__3532;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3531;
  v36 = __Block_byref_object_dispose__3532;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke;
  v27[3] = &unk_1E7578898;
  v13 = dCopy;
  v28 = v13;
  v14 = libraryCopy;
  v29 = v14;
  v30 = v38;
  v31 = &v32;
  [v14 performBlockAndWait:v27];
  if ([v33[5] count])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_4;
    v17[3] = &unk_1E7577FE8;
    v17[4] = self;
    v18 = v12;
    v22 = &v32;
    v19 = v13;
    v23 = v38;
    v20 = v14;
    v21 = handlerCopy;
    [(PLAssetDownloadManager *)self _onQueueAsync:v17];

    v15 = v18;
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_3;
    v24[3] = &unk_1E7565688;
    v25 = handlerCopy;
    v26 = v11;
    [(PLAssetDownloadManager *)self _onQueueAsync:v24];
    v15 = v25;
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v38, 8);

  return v11;
}

void __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithUUID:a1[4] inLibrary:a1[5]];
  v3 = [v2 objectID];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v2 persistedResourcesMatching:&__block_literal_global_33];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 cplType];
        if (v12)
        {
          v13 = v12;
          if ([v11 remoteAvailability] >= 1)
          {
            v14 = [v11 cplFileURL];
            v15 = [v14 checkResourceIsReachableAndReturnError:0];

            if ((v15 & 1) == 0)
            {
              v16 = *(*(a1[7] + 8) + 40);
              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
              [v16 addObject:v17];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

void __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_4(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [*(*(a1 + 32) + 16) setObject:? forKey:?];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v27 = 0u;
  obj = *(*(*(a1 + 72) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v28;
    *&v3 = 138412546;
    v17 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v27 + 1) + 8 * v6) unsignedIntegerValue];
        v8 = PLBackendGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 48);
          v10 = [MEMORY[0x1E6994B90] descriptionForResourceType:v7];
          *buf = v17;
          v32 = v9;
          v33 = 2112;
          v34 = v10;
          _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Starting download for asset: %@ cloudResourceType: %@", buf, 0x16u);
        }

        v11 = +[PLAssetResourceDownloadManager defaultManager];
        v12 = *(*(*(a1 + 80) + 8) + 40);
        v13 = *(a1 + 56);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_36;
        v25[3] = &unk_1E7565700;
        v14 = *(a1 + 40);
        v25[4] = *(a1 + 32);
        v26 = v14;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_4_43;
        v20[3] = &unk_1E7565728;
        v20[4] = *(a1 + 32);
        v21 = *(a1 + 48);
        v24 = v7;
        v22 = *(a1 + 40);
        v23 = *(a1 + 64);
        v15 = [v11 requestCloudResourceType:v7 assetObjectID:v12 library:v13 progressHandler:v25 completionHandler:v20];

        v16 = [MEMORY[0x1E696AD98] numberWithInt:v15];
        [v19 addObject:v16];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v4);
  }
}

void __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_36(uint64_t a1, int a2, double a3)
{
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_2_37;
  v6[3] = &unk_1E75656D8;
  v6[4] = v5;
  v7 = *(a1 + 40);
  v8 = a3;
  v9 = a2;
  [v5 _onQueueAsync:v6];
}

void __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_4_43(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_5;
  v11[3] = &unk_1E7574B70;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v12 = v7;
  v13 = v5;
  v9 = *(a1 + 32);
  v17 = v8;
  v14 = v9;
  v15 = *(a1 + 48);
  v18 = a2;
  v16 = *(a1 + 56);
  v10 = v5;
  [v6 _onQueueAsync:v11];
}

void __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E6994B90] descriptionForResourceType:*(a1 + 72)];
    v5 = *(a1 + 40);
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Finished download for asset: %@ cloudResourceType: %@ error:%@", &v11, 0x20u);
  }

  v6 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:*(a1 + 56)];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 80)];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 80)];
    [v6 removeObject:v9];

    if (![v6 count])
    {
      [*(*(a1 + 48) + 16) removeObjectForKey:*(a1 + 56)];
      v10 = *(a1 + 64);
      if (v10)
      {
        (*(v10 + 16))(v10, *(a1 + 80), *(a1 + 40));
      }
    }
  }
}

void __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_2_37(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    [*(*(a1 + 32) + 24) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  [v2 setObject:v3 forKey:v4];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_3_38;
  v9[3] = &unk_1E75656B0;
  v9[4] = &v10;
  [v2 enumerateKeysAndObjectsUsingBlock:v9];
  v5 = v11[3];
  v6 = [v2 count];
  v11[3] = v5 / v6;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  LOBYTE(v4) = objc_opt_respondsToSelector();

  if (v4)
  {
    v8 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v8 progressForRequestId:*(a1 + 56) progress:v11[3]];
  }

  _Block_object_dispose(&v10, 8);
}

double __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_3_38(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 floatValue];
  v5 = *(*(a1 + 32) + 8);
  result = *(v5 + 24) + v4;
  *(v5 + 24) = result;
  return result;
}

BOOL __102__PLAssetDownloadManager_requestRequiredResourcesForManagedAssetObjectUUID_library_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isDerivative] & 1) == 0 && objc_msgSend(v2, "resourceType") != 13 && objc_msgSend(v2, "resourceType") != 9;

  return v3;
}

- (PLAssetDownloadManager)init
{
  v10.receiver = self;
  v10.super_class = PLAssetDownloadManager;
  v2 = [(PLAssetDownloadManager *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    requestsById = v2->_requestsById;
    v2->_requestsById = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    progressById = v2->_progressById;
    v2->_progressById = dictionary2;

    v7 = dispatch_queue_create("com.apple.mobileslideshow.plassetdownloadrequest", 0);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, &__block_literal_global_3550);
  }

  v3 = defaultManager_manager;

  return v3;
}

void __40__PLAssetDownloadManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(PLAssetDownloadManager);
  v1 = defaultManager_manager;
  defaultManager_manager = v0;
}

@end