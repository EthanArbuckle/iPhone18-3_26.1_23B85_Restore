@interface PLAssetsdCPLResourceDownloader
- (PLAssetsdCPLResourceDownloader)initWithPhotoLibrary:(id)a3 trustedCallerBundleID:(id)a4 clientConnection:(id)a5;
- (id)startCPLDownloadForAsset:(id)a3 resourceType:(unint64_t)a4 masterResourceOnly:(BOOL)a5 highPriority:(BOOL)a6 track:(BOOL)a7 notify:(BOOL)a8 transient:(BOOL)a9 proposedTaskIdentifier:(id)a10 doneToken:(id)a11 error:(id *)a12;
- (void)_handleInvalidation;
- (void)cancelCPLDownloadTaskWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)cancelCPLDownloadTasks:(id)a3 completionHandler:(id)a4;
- (void)handleInvalidation;
- (void)sendClientCPLStatusWithVirtualTaskIdentifier:(id)a3 downloadContext:(id)a4;
@end

@implementation PLAssetsdCPLResourceDownloader

- (void)sendClientCPLStatusWithVirtualTaskIdentifier:(id)a3 downloadContext:(id)a4
{
  v25 = a4;
  v6 = a3;
  v7 = [v25 objectForKeyedSubscript:@"taskIdentifier"];
  v8 = [v25 objectForKeyedSubscript:@"pending"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = 0;
  }

  else if (v7)
  {
    v11 = [(PLPhotoLibrary *)self->_photoLibrary libraryServicesManager];
    v12 = [v11 cloudPhotoLibraryManager];
    v13 = [v12 isResourceTransferTaskAliveWithTaskWithIdentifier:v7];

    v10 = v13 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  v14 = [v25 objectForKeyedSubscript:@"progress"];
  if (v14)
  {
    v15 = [v25 objectForKeyedSubscript:@"progress"];
    [v15 doubleValue];
    v17 = v16;
  }

  else
  {
    v17 = -1.0;
  }

  if (v10)
  {
    v18 = 1;
  }

  else
  {
    v19 = [v25 objectForKeyedSubscript:@"completed"];
    if (v19)
    {
      v20 = [v25 objectForKeyedSubscript:@"completed"];
      v18 = [v20 BOOLValue];
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = [v25 objectForKeyedSubscript:@"error"];
  v22 = [v25 objectForKeyedSubscript:@"data"];
  WeakRetained = objc_loadWeakRetained(&self->_clientConnection);
  v24 = [WeakRetained remoteObjectProxyWithErrorHandler:&__block_literal_global_90647];
  [v24 downloadStatusForIdentifier:v6 progress:v18 completed:v22 data:v21 error:v17];
}

void __95__PLAssetsdCPLResourceDownloader_sendClientCPLStatusWithVirtualTaskIdentifier_downloadContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdCPLResourceDownloader sendClientCPLStatusWithVirtualTaskIdentifier:downloadContext:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)cancelCPLDownloadTasks:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLPhotoLibrary *)self->_photoLibrary libraryServicesManager];
  v9 = [v8 cloudPhotoLibraryManager];

  if (v6 && v9)
  {
    pendingCPLDownloadsIsolationQueue = self->_pendingCPLDownloadsIsolationQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTasks_completionHandler___block_invoke;
    v11[3] = &unk_1E7573C00;
    v12 = v6;
    v13 = self;
    v14 = v9;
    v15 = v7;
    dispatch_async(pendingCPLDownloadsIsolationQueue, v11);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __75__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTasks_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(*(a1 + 40) + 40) objectForKey:v6];
      v8 = [v7 objectForKeyedSubscript:@"taskIdentifier"];
      if (v8)
      {
        ++v16[3];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __75__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTasks_completionHandler___block_invoke_2;
        v10[3] = &unk_1E7573C50;
        v9 = *(a1 + 48);
        v10[4] = *(a1 + 40);
        v11 = v6;
        v14 = &v15;
        v13 = *(a1 + 56);
        v12 = *(a1 + 32);
        [v9 cancelResourceTransferTaskWithIdentifier:v8 completion:v10];

        v4 = 1;
      }
    }
  }

  if ((v4 & 1) == 0)
  {
LABEL_9:
    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v15, 8);
}

void __75__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTasks_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTasks_completionHandler___block_invoke_3;
  block[3] = &unk_1E7573C28;
  v12 = a2;
  block[4] = v4;
  v9 = v3;
  v7 = *(a1 + 56);
  v6 = v7;
  v11 = v7;
  v10 = *(a1 + 48);
  dispatch_async(v5, block);
}

uint64_t __75__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTasks_completionHandler___block_invoke_3(uint64_t result)
{
  v1 = result;
  if (*(result + 72) == 1)
  {
    result = [*(*(result + 32) + 40) removeObjectForKey:*(result + 40)];
  }

  if (!--*(*(*(v1 + 64) + 8) + 24))
  {
    v2 = *(*(v1 + 56) + 16);

    return v2();
  }

  return result;
}

- (void)cancelCPLDownloadTaskWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLPhotoLibrary *)self->_photoLibrary libraryServicesManager];
  v9 = [v8 cloudPhotoLibraryManager];

  if (v6 && v9)
  {
    pendingCPLDownloadsIsolationQueue = self->_pendingCPLDownloadsIsolationQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTaskWithIdentifier_completionHandler___block_invoke;
    v11[3] = &unk_1E7573C00;
    v11[4] = self;
    v12 = v6;
    v13 = v9;
    v14 = v7;
    dispatch_async(pendingCPLDownloadsIsolationQueue, v11);
  }

  else
  {
    v7[2](v7);
  }
}

void __88__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTaskWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"taskIdentifier"];
    if (v4)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __88__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTaskWithIdentifier_completionHandler___block_invoke_2;
      v7[3] = &unk_1E7573BD8;
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7[4] = *(a1 + 32);
      v8 = v5;
      v9 = *(a1 + 56);
      [v6 cancelResourceTransferTaskWithIdentifier:v4 completion:v7];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __88__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTaskWithIdentifier_completionHandler___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a1[4];
    v6 = a1[5];
    v8 = *(v7 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__PLAssetsdCPLResourceDownloader_cancelCPLDownloadTaskWithIdentifier_completionHandler___block_invoke_3;
    v10[3] = &unk_1E7578848;
    v10[4] = v7;
    v11 = v6;
    dispatch_async(v8, v10);
  }

  return (*(a1[6] + 16))(a1[6], a2, a3, a4, a5);
}

- (id)startCPLDownloadForAsset:(id)a3 resourceType:(unint64_t)a4 masterResourceOnly:(BOOL)a5 highPriority:(BOOL)a6 track:(BOOL)a7 notify:(BOOL)a8 transient:(BOOL)a9 proposedTaskIdentifier:(id)a10 doneToken:(id)a11 error:(id *)a12
{
  v12 = a8;
  v14 = a6;
  v15 = a5;
  v83[1] = *MEMORY[0x1E69E9840];
  v46 = a3;
  v44 = a10;
  v45 = a11;
  v18 = [(PLPhotoLibrary *)self->_photoLibrary libraryServicesManager];
  v47 = [v18 cloudPhotoLibraryManager];

  if (v47)
  {
    v74 = 0;
    v75 = &v74;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__90668;
    v78 = __Block_byref_object_dispose__90669;
    v79 = 0;
    v19 = [v46 photoLibrary];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke;
    v71[3] = &unk_1E7578910;
    v73 = &v74;
    v43 = v46;
    v72 = v43;
    [v19 performBlockAndWait:v71];

    v20 = PLImageManagerGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = v75[5];
      *buf = 138412290;
      v81 = v21;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Starting CPL download with asset uuid: %@", buf, 0xCu);
    }

    v22 = [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdCPLResourceDownloader startCPLDownloadForAsset:resourceType:masterResourceOnly:highPriority:track:notify:transient:proposedTaskIdentifier:doneToken:error:]"];
    if (a7 || v12)
    {
      if ([v44 length])
      {
        v27 = v44;
      }

      else
      {
        v28 = [MEMORY[0x1E696AFB0] UUID];
        v27 = [v28 UUIDString];
      }

      pendingCPLDownloadsIsolationQueue = self->_pendingCPLDownloadsIsolationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_44;
      block[3] = &unk_1E7576168;
      v70 = a4;
      block[4] = self;
      v23 = v27;
      v68 = v23;
      v69 = v22;
      dispatch_async(pendingCPLDownloadsIsolationQueue, block);
    }

    else
    {
      v23 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_2;
    aBlock[3] = &unk_1E7573AC0;
    v30 = v23;
    v63 = v30;
    v64 = self;
    v66 = v12;
    v31 = v22;
    v65 = v31;
    v32 = _Block_copy(aBlock);
    if (a9)
    {
      if (v14)
      {
        v33 = PLBackendGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Requesting high priority in-memory resource download not supported, download will take place with default priority", buf, 2u);
        }
      }

      trustedCallerBundleID = self->_trustedCallerBundleID;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_59;
      v57[3] = &unk_1E7573B10;
      v35 = v30;
      v36 = v12;
      v37 = v35;
      v58[0] = v35;
      v58[1] = self;
      v61 = v36;
      v59 = v45;
      v60 = v31;
      [v47 downloadResourceInMemoryForAsset:v43 resourceType:a4 masterResourceOnly:v15 clientBundleID:trustedCallerBundleID proposedTaskIdentifier:v37 taskDidBeginHandler:v32 completionHandler:v57];
      v38 = v58;
      v39 = &v59;
      v40 = &v60;
    }

    else
    {
      v42 = self->_trustedCallerBundleID;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_71;
      v53[3] = &unk_1E7573B60;
      v54[0] = v30;
      v54[1] = self;
      v56 = v12;
      v55 = v31;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_3_74;
      v48[3] = &unk_1E7573BB0;
      v49[0] = v54[0];
      v49[1] = self;
      v52 = v12;
      v50 = v45;
      v51 = v55;
      [v47 downloadAsset:v43 resourceType:a4 masterResourceOnly:v15 highPriority:v14 clientBundleID:v42 proposedTaskIdentifier:v49[0] taskDidBeginHandler:v32 progressBlock:v53 completionHandler:v48];

      v38 = v54;
      v39 = &v55;
      v40 = v49;
    }

    v26 = v30;
    _Block_object_dispose(&v74, 8);
  }

  else
  {
    if (a12)
    {
      v24 = MEMORY[0x1E696ABC0];
      v82 = *MEMORY[0x1E696A578];
      v83[0] = @"PLCloudPhotoLibraryManager is not available";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
      *a12 = [v24 errorWithDomain:*MEMORY[0x1E69BFF48] code:41004 userInfo:v25];
    }

    v26 = 0;
  }

  return v26;
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_44(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF90];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  v4 = [v2 dictionaryWithObject:v3 forKey:@"resourceType"];

  [v4 setObject:MEMORY[0x1E695E118] forKey:@"pending"];
  [*(*(a1 + 32) + 40) setObject:v4 forKey:*(a1 + 40)];
  [*(a1 + 48) stillAlive];
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  [*(a1 + 32) hash];
  [v6 hash];
  kdebug_trace();
  if (v6 | v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_3;
      v11[3] = &unk_1E7573A98;
      v11[4] = v9;
      v12 = v8;
      v13 = v6;
      v14 = v7;
      v16 = *(a1 + 56);
      v15 = *(a1 + 48);
      dispatch_async(v10, v11);
    }
  }
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_59(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) hash];
  [v7 hash];
  kdebug_trace();
  if (v7)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = *(v11 + 32);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_2_60;
      v16 = &unk_1E7573AE8;
      v17 = v11;
      v18 = v10;
      v19 = v9;
      v20 = v8;
      v24 = *(a1 + 64);
      v21 = v7;
      v22 = *(a1 + 48);
      v23 = *(a1 + 56);
      dispatch_async(v12, &v13);
    }
  }

  [*(a1 + 56) stillAlive];
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_71(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  [*(a1 + 32) hash];
  [v5 hash];
  kdebug_trace();
  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = *(v7 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_2_72;
      block[3] = &unk_1E7573B38;
      block[4] = v7;
      v10 = v6;
      v13 = a3;
      v14 = *(a1 + 56);
      v11 = v5;
      v12 = *(a1 + 48);
      dispatch_async(v8, block);
    }
  }
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_3_74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  [*(a1 + 32) hash];
  [v7 hash];
  kdebug_trace();
  if (v7)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = *(v10 + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_4;
      block[3] = &unk_1E7573B88;
      block[4] = v10;
      v13 = v9;
      v14 = v8;
      v18 = *(a1 + 64);
      v15 = v7;
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      dispatch_async(v11, block);
    }
  }

  [*(a1 + 56) stillAlive];
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_4(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v5 setObject:v2 forKey:@"completed"];

  v3 = *(a1 + 48);
  if (v3)
  {
    [v5 setObject:v3 forKey:@"error"];
  }

  if (*(a1 + 80) == 1)
  {
    [*(a1 + 40) hash];
    [*(a1 + 56) hash];
    kdebug_trace();
    [*(a1 + 32) sendClientCPLStatusWithVirtualTaskIdentifier:*(a1 + 40) downloadContext:v5];
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    [v4 hash];
    kdebug_trace();
    notify_post([*(a1 + 64) UTF8String]);
  }

  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 72) stillAlive];
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_2_72(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  LODWORD(v2) = *(a1 + 64);
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  [v4 setObject:v3 forKey:@"progress"];

  if (*(a1 + 68) == 1)
  {
    [*(a1 + 40) hash];
    [*(a1 + 48) hash];
    kdebug_trace();
    [*(a1 + 32) sendClientCPLStatusWithVirtualTaskIdentifier:*(a1 + 40) downloadContext:v4];
  }

  [*(a1 + 56) stillAlive];
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_2_60(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"completed"];
  v2 = *(a1 + 48);
  if (v2)
  {
    [v5 setObject:v2 forKeyedSubscript:@"error"];
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    [v5 setObject:v3 forKeyedSubscript:@"data"];
    [v5 setObject:&unk_1F0FC04D8 forKeyedSubscript:@"progress"];
  }

  if (*(a1 + 88) == 1)
  {
    [*(a1 + 40) hash];
    [*(a1 + 64) hash];
    kdebug_trace();
    [*(a1 + 32) sendClientCPLStatusWithVirtualTaskIdentifier:*(a1 + 40) downloadContext:v5];
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    [v4 hash];
    kdebug_trace();
    notify_post([*(a1 + 72) UTF8String]);
  }

  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 80) stillAlive];
}

void __166__PLAssetsdCPLResourceDownloader_startCPLDownloadForAsset_resourceType_masterResourceOnly_highPriority_track_notify_transient_proposedTaskIdentifier_doneToken_error___block_invoke_3(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    [v4 setObject:v2 forKey:@"taskIdentifier"];
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    [v4 setObject:v3 forKey:@"error"];
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 40) hash];
    [*(a1 + 48) hash];
    kdebug_trace();
    [*(a1 + 32) sendClientCPLStatusWithVirtualTaskIdentifier:*(a1 + 40) downloadContext:v4];
  }

  [*(a1 + 64) stillAlive];
  [v4 removeObjectForKey:@"pending"];
}

- (void)handleInvalidation
{
  objc_initWeak(&location, self);
  pendingCPLDownloadsIsolationQueue = self->_pendingCPLDownloadsIsolationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PLAssetsdCPLResourceDownloader_handleInvalidation__block_invoke;
  v4[3] = &unk_1E75788C0;
  objc_copyWeak(&v5, &location);
  dispatch_async(pendingCPLDownloadsIsolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __52__PLAssetsdCPLResourceDownloader_handleInvalidation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInvalidation];
}

- (void)_handleInvalidation
{
  v15 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_pendingCPLDownloadsIsolationQueue);
  if ([(NSMutableDictionary *)self->_pendingCPLDownloads count])
  {
    v3 = [(PLPhotoLibrary *)self->_photoLibrary libraryServicesManager];
    v4 = [v3 cloudPhotoLibraryManager];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMutableDictionary *)self->_pendingCPLDownloads allKeys];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 cancelResourceTransferTaskWithIdentifier:*(*(&v10 + 1) + 8 * v9++) completion:0];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)self->_pendingCPLDownloads removeAllObjects];
  }
}

- (PLAssetsdCPLResourceDownloader)initWithPhotoLibrary:(id)a3 trustedCallerBundleID:(id)a4 clientConnection:(id)a5
{
  v10 = a3;
  v11 = a4;
  objc_initWeak(&location, a5);
  if (!v10)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLAssetsdCPLResourceDownloader.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v22.receiver = self;
  v22.super_class = PLAssetsdCPLResourceDownloader;
  v12 = [(PLAssetsdCPLResourceDownloader *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, a3);
    objc_storeStrong(&v13->_trustedCallerBundleID, a4);
    v14 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v13->_clientConnection, v14);

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingCPLDownloads = v13->_pendingCPLDownloads;
    v13->_pendingCPLDownloads = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.assetsd.pendingCPLDownloadsIsolation", v17);
    pendingCPLDownloadsIsolationQueue = v13->_pendingCPLDownloadsIsolationQueue;
    v13->_pendingCPLDownloadsIsolationQueue = v18;
  }

  objc_destroyWeak(&location);

  return v13;
}

@end