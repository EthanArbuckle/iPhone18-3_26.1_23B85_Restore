@interface PLAssetsdResourceInternalClient
- (BOOL)cancelAllPrewarming:(id *)prewarming;
- (BOOL)handlePhotoKitIngestJobs:(id)jobs withCompletionHandler:(id)handler;
- (BOOL)prewarmWithCapturePhotoSettings:(id)settings error:(id *)error;
- (void)batchSaveAssetsWithJobDictionaries:(id)dictionaries completionHandler:(id)handler;
- (void)cancelAllPrewarmingWithCompletionHandler:(id)handler;
- (void)prewarmWithCapturePhotoSettings:(id)settings completionHandler:(id)handler;
- (void)requestMasterThumbnailForAssetUUID:(id)d completionHandler:(id)handler;
@end

@implementation PLAssetsdResourceInternalClient

- (void)cancelAllPrewarmingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Sending cancel all prewarming", buf, 2u);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PLAssetsdResourceInternalClient_cancelAllPrewarmingWithCompletionHandler___block_invoke_28;
  v8[3] = &unk_1E79323B0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_27_11024 handler:v8];
}

void __76__PLAssetsdResourceInternalClient_cancelAllPrewarmingWithCompletionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PLAssetsdResourceInternalClient_cancelAllPrewarmingWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7932DD0;
  v4 = *(a1 + 32);
  [a2 cancelAllPrewarmingWithReply:v3];
}

void __76__PLAssetsdResourceInternalClient_cancelAllPrewarmingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdResourceInternalClient cancelAllPrewarmingWithCompletionHandler:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

void __76__PLAssetsdResourceInternalClient_cancelAllPrewarmingWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[PLAssetsdResourceInternalClient cancelAllPrewarmingWithCompletionHandler:]_block_invoke_2";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Error in reply for %s: %@", &v8, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (BOOL)cancelAllPrewarming:(id *)prewarming
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__11029;
  v19 = __Block_byref_object_dispose__11030;
  v20 = 0;
  v5 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "Sending cancel all prewarming", buf, 2u);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PLAssetsdResourceInternalClient_cancelAllPrewarming___block_invoke;
  v13[3] = &unk_1E7932360;
  v13[4] = &v21;
  v13[5] = &v15;
  v7 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PLAssetsdResourceInternalClient_cancelAllPrewarming___block_invoke_25;
  v12[3] = &unk_1E7932E48;
  v12[4] = &v21;
  v12[5] = &v15;
  [v7 cancelAllPrewarmingWithReply:v12];

  v8 = *(v22 + 24);
  v9 = v16[5];
  if (prewarming && (v8 & 1) == 0)
  {
    v9 = v9;
    *prewarming = v9;
  }

  v10 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v10;
}

void __55__PLAssetsdResourceInternalClient_cancelAllPrewarming___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceInternalClient cancelAllPrewarming:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __55__PLAssetsdResourceInternalClient_cancelAllPrewarming___block_invoke_25(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[PLAssetsdResourceInternalClient cancelAllPrewarming:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Error in reply for %s: %@", &v8, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)prewarmWithCapturePhotoSettings:(id)settings completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  handlerCopy = handler;
  v8 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = settingsCopy;
    _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "Sending prewarm with PLCapturePhotoSettings: %@", buf, 0xCu);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_completionHandler___block_invoke_23;
  v12[3] = &unk_1E7932388;
  v13 = settingsCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = settingsCopy;
  [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_11035 handler:v12];
}

void __85__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_completionHandler___block_invoke_23(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_DEBUG, "Sending PLCapturePhotoSettings over proxy: %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_completionHandler___block_invoke_24;
  v6[3] = &unk_1E7932DD0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v3 prewarmWithCapturePhotoSettings:v5 reply:v6];
}

void __85__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdResourceInternalClient prewarmWithCapturePhotoSettings:completionHandler:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

void __85__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_completionHandler___block_invoke_24(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[PLAssetsdResourceInternalClient prewarmWithCapturePhotoSettings:completionHandler:]_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_ERROR, "Error in reply for %s: %@", &v8, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (BOOL)prewarmWithCapturePhotoSettings:(id)settings error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11029;
  v20 = __Block_byref_object_dispose__11030;
  v21 = 0;
  v7 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = settingsCopy;
    _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_DEFAULT, "Sending prewarm with PLCapturePhotoSettings: %@", buf, 0xCu);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_error___block_invoke;
  v15[3] = &unk_1E7932360;
  v15[4] = &v22;
  v15[5] = &v16;
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_error___block_invoke_21;
  v14[3] = &unk_1E7932E48;
  v14[4] = &v22;
  v14[5] = &v16;
  [v9 prewarmWithCapturePhotoSettings:settingsCopy reply:v14];

  v10 = *(v23 + 24);
  v11 = v17[5];
  if (error && (v10 & 1) == 0)
  {
    v11 = v11;
    *error = v11;
  }

  v12 = *(v23 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v12 & 1;
}

void __73__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceInternalClient prewarmWithCapturePhotoSettings:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __73__PLAssetsdResourceInternalClient_prewarmWithCapturePhotoSettings_error___block_invoke_21(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[PLAssetsdResourceInternalClient prewarmWithCapturePhotoSettings:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Error in reply for %s: %@", &v8, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)handlePhotoKitIngestJobs:(id)jobs withCompletionHandler:(id)handler
{
  jobsCopy = jobs;
  handlerCopy = handler;
  v7 = objc_alloc_init(NSClassFromString(@"PHAssetCreationRequestBridge"));
  v8 = v7;
  if (v7)
  {
    v9 = [v7 executeCreationRequestWithBatchJobDictionaries:jobsCopy];
    isSuccess = [v9 isSuccess];
    error = [v9 error];
    handlerCopy[2](handlerCopy, isSuccess, jobsCopy, error);
  }

  return v8 != 0;
}

- (void)requestMasterThumbnailForAssetUUID:(id)d completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v30) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: requestMasterThumbnailForAssetUUID:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v30 + 1);
    *(&v30 + 1) = v10;

    os_activity_scope_enter(v10, (&v31 + 8));
  }

  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceInternalClient.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__PLAssetsdResourceInternalClient_requestMasterThumbnailForAssetUUID_completionHandler___block_invoke;
  v28[3] = &unk_1E7932DA8;
  v29 = handlerCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3254779904;
  v20[2] = __88__PLAssetsdResourceInternalClient_requestMasterThumbnailForAssetUUID_completionHandler___block_invoke_2;
  v20[3] = &unk_1F1F72A78;
  v23 = v30;
  v24 = *(&v30 + 1);
  v25 = v31;
  v26 = v32;
  v27 = a2;
  v13 = dCopy;
  v21 = v13;
  v14 = v29;
  v22 = v14;
  [proxyFactory remoteObjectProxyWithErrorHandler:v28 handler:v20];

  if (v30 == 1)
  {
    os_activity_scope_leave((&v31 + 8));
  }

  if (v31)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v31;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v32 + 1));
      *buf = 136446210;
      v34 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __88__PLAssetsdResourceInternalClient_requestMasterThumbnailForAssetUUID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v17 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v18[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__PLAssetsdResourceInternalClient_requestMasterThumbnailForAssetUUID_completionHandler___block_invoke_16;
  v12[3] = &unk_1E7932338;
  v13 = v11;
  v14 = *(a1 + 40);
  [v3 asynchronousMasterThumbnailForAssetUUID:v13 reply:v12];
}

void __88__PLAssetsdResourceInternalClient_requestMasterThumbnailForAssetUUID_completionHandler___block_invoke_16(uint64_t a1, char a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412802;
      v12 = v10;
      v13 = 2080;
      v14 = "[PLAssetsdResourceInternalClient requestMasterThumbnailForAssetUUID:completionHandler:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Error getting master thumbnail %@ for %s: %@", &v11, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)batchSaveAssetsWithJobDictionaries:(id)dictionaries completionHandler:(id)handler
{
  v54 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  handlerCopy = handler;
  v47 = 0u;
  *sel = 0u;
  v46 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v46) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: batchSaveAssetsWithJobDictionaries:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v46 + 1);
    *(&v46 + 1) = v7;

    os_activity_scope_enter(v7, (&v47 + 8));
  }

  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceInternalClient.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  context = objc_autoreleasePoolPush();
  v9 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [dictionariesCopy count];
    *buf = 67109120;
    *v50 = v10;
    _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_DEFAULT, "Sending batchSaveAssetsWithJobDictionaries:completionHander: with %d jobs", buf, 8u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = dictionariesCopy;
  v12 = [v11 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v43;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = PLGatekeeperXPCGetLog();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v13 >= 11)
        {
          if (v18)
          {
            v21 = [v11 count];
            *buf = 67109120;
            *v50 = v21 - v13;
            _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_DEFAULT, "  [...and %d more]", buf, 8u);
          }

          goto LABEL_21;
        }

        if (v18)
        {
          v19 = [v16 objectForKeyedSubscript:@"JobType"];
          v20 = [v16 objectForKeyedSubscript:@"CreatedAssetUUID"];
          *buf = 67109634;
          *v50 = v13;
          *&v50[4] = 2114;
          *&v50[6] = v19;
          v51 = 2114;
          v52 = v20;
          _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_DEFAULT, "  [job-%d] type %{public}@ uuid %{public}@", buf, 0x1Cu);

          ++v13;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v42 objects:v53 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  if (!PFIsCamera() || ![(PLAssetsdResourceInternalClient *)self handlePhotoKitIngestJobs:v11 withCompletionHandler:handlerCopy])
  {
    proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __88__PLAssetsdResourceInternalClient_batchSaveAssetsWithJobDictionaries_completionHandler___block_invoke;
    v40[3] = &unk_1E7932DA8;
    v41 = handlerCopy;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3254779904;
    v32[2] = __88__PLAssetsdResourceInternalClient_batchSaveAssetsWithJobDictionaries_completionHandler___block_invoke_11;
    v32[3] = &unk_1F1F72A78;
    v35 = v46;
    v36 = *(&v46 + 1);
    v37 = v47;
    v38 = *sel;
    v39 = a2;
    v33 = v11;
    v34 = v41;
    [proxyFactory remoteObjectProxyWithErrorHandler:v40 handler:v32];
  }

  objc_autoreleasePoolPop(context);
  if (v46 == 1)
  {
    os_activity_scope_leave((&v47 + 8));
  }

  if (v47)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v47;
    if ((v47 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      *v50 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __88__PLAssetsdResourceInternalClient_batchSaveAssetsWithJobDictionaries_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[PLAssetsdResourceInternalClient batchSaveAssetsWithJobDictionaries:completionHandler:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", buf, 0x16u);
  }

  v5 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696AA08];
  v9 = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.photos.error" code:41002 userInfo:v6];

  (*(*(a1 + 32) + 16))();
}

void __88__PLAssetsdResourceInternalClient_batchSaveAssetsWithJobDictionaries_completionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v16 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v17[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__PLAssetsdResourceInternalClient_batchSaveAssetsWithJobDictionaries_completionHandler___block_invoke_13;
  v12[3] = &unk_1E7932518;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  [v3 batchSaveAssetJobs:v11 reply:v12];
}

@end