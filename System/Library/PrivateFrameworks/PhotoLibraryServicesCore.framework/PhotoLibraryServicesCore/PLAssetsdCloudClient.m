@interface PLAssetsdCloudClient
- (void)cancelCPLDownloadImageDataWithVirtualTaskIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)cancelCPLDownloadWithContext:(id)a3 completionHandler:(id)a4;
- (void)computeStableHashesOfAsset:(id)a3 synchronously:(BOOL)a4 completionHandler:(id)a5;
- (void)downloadCloudPhotoLibraryAsset:(id)a3 resourceType:(unint64_t)a4 highPriority:(BOOL)a5 trackCPLDownload:(BOOL)a6 downloadIsTransient:(BOOL)a7 proposedTaskIdentifier:(id)a8 completionHandler:(id)a9;
- (void)requestCPLDownloadImageDataForAssets:(id)a3 format:(unint64_t)a4 doneTokens:(id)a5 completionHandler:(id)a6;
- (void)requestVideoPlaybackURLForCloudSharedAsset:(id)a3 mediaAssetType:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation PLAssetsdCloudClient

- (void)computeStableHashesOfAsset:(id)a3 synchronously:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v41) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: computeStableHashesOfAsset:synchronously:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v41 + 1);
    *(&v41 + 1) = v12;

    os_activity_scope_enter(v12, (&v42 + 8));
  }

  if (!v10)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudClient.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v14 = [v9 URIRepresentation];
  [(PLAssetsdBaseClient *)self proxyFactory];
  if (v6)
    v15 = {;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke;
    v39[3] = &unk_1E7932DA8;
    v16 = v10;
    v40 = v16;
    v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v39];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke_37;
    v37[3] = &unk_1E7932540;
    v38 = v16;
    [v17 computeStableHashesOfAssetWithObjectURI:v14 synchronously:1 reply:v37];

    v18 = &v40;
    v19 = &v38;
  }

  else
    v20 = {;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke_39;
    v35[3] = &unk_1E7932DA8;
    v36 = v10;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3254779904;
    v26[2] = __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke_40;
    v26[3] = &unk_1F1F729D0;
    v29 = v41;
    v30 = *(&v41 + 1);
    v31 = v42;
    v32 = v43;
    v33 = a2;
    v27 = v14;
    v34 = 0;
    v28 = v36;
    [v20 remoteObjectProxyWithErrorHandler:v35 handler:v26];

    v18 = &v36;
    v19 = &v30;
    v15 = v27;
  }

  if (v41 == 1)
  {
    os_activity_scope_leave((&v42 + 8));
  }

  if (v42)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v42;
    if ((v42 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(*(&v43 + 1));
      *buf = 136446210;
      v45 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudClient computeStableHashesOfAsset:synchronously:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke_37(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Unable to get asset stableHashes because XPC service returned an error. (%@)", &v11, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke_39(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdCloudClient computeStableHashesOfAsset:synchronously:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke_40(uint64_t a1, void *a2)
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

  v11 = *(a1 + 104);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke_41;
  v13[3] = &unk_1E7932540;
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v3 computeStableHashesOfAssetWithObjectURI:v12 synchronously:v11 reply:v13];
}

void __83__PLAssetsdCloudClient_computeStableHashesOfAsset_synchronously_completionHandler___block_invoke_41(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Unable to get asset stableHashes because XPC service returned an error. (%@)", &v11, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cancelCPLDownloadImageDataWithVirtualTaskIdentifiers:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v31) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: cancelCPLDownloadImageDataWithVirtualTaskIdentifiers:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v31 + 1);
    *(&v31 + 1) = v10;

    os_activity_scope_enter(v10, (&v32 + 8));
  }

  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudClient.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"virtualTaskIdentifiers"}];
  }

  if (!v8)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudClient.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __95__PLAssetsdCloudClient_cancelCPLDownloadImageDataWithVirtualTaskIdentifiers_completionHandler___block_invoke;
  v29[3] = &unk_1E7932DA8;
  v30 = v8;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __95__PLAssetsdCloudClient_cancelCPLDownloadImageDataWithVirtualTaskIdentifiers_completionHandler___block_invoke_2;
  v21[3] = &unk_1F1F72BC8;
  v24 = v31;
  v25 = *(&v31 + 1);
  v26 = v32;
  v27 = v33;
  v28 = a2;
  v13 = v7;
  v22 = v13;
  v14 = v30;
  v23 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v29 handler:v21];

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v33 + 1));
      *buf = 136446210;
      v35 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __95__PLAssetsdCloudClient_cancelCPLDownloadImageDataWithVirtualTaskIdentifiers_completionHandler___block_invoke_2(uint64_t a1, void *a2)
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
  v12[2] = __95__PLAssetsdCloudClient_cancelCPLDownloadImageDataWithVirtualTaskIdentifiers_completionHandler___block_invoke_35;
  v12[3] = &unk_1E7932518;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  [v3 asynchronousStopPreheatingCPLDownloadForAssetsWithTaskIdentifiers:v11 reply:v12];
}

- (void)requestCPLDownloadImageDataForAssets:(id)a3 format:(unint64_t)a4 doneTokens:(id)a5 completionHandler:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v14 = +[PLXPCMessageLogger enabled];
  LOBYTE(v38) = v14;
  if (v14)
  {
    v15 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: requestCPLDownloadImageDataForAssets:format:doneTokens:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v38 + 1);
    *(&v38 + 1) = v15;

    os_activity_scope_enter(v15, (&v39 + 8));
  }

  if (!v13)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudClient.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v17 = [(PLAssetsdBaseClient *)self proxyFactory];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __97__PLAssetsdCloudClient_requestCPLDownloadImageDataForAssets_format_doneTokens_completionHandler___block_invoke;
  v36[3] = &unk_1E7932DA8;
  v37 = v13;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3254779904;
  v26[2] = __97__PLAssetsdCloudClient_requestCPLDownloadImageDataForAssets_format_doneTokens_completionHandler___block_invoke_2;
  v26[3] = &unk_1F1F724C8;
  v30 = v38;
  v31 = *(&v38 + 1);
  v32 = v39;
  v33 = v40;
  v34 = a2;
  v18 = v11;
  v27 = v18;
  v19 = v12;
  v28 = v19;
  v35 = a4;
  v20 = v37;
  v29 = v20;
  [v17 remoteObjectProxyWithErrorHandler:v36 handler:v26];

  if (v38 == 1)
  {
    os_activity_scope_leave((&v39 + 8));
  }

  if (v39)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v39;
    if ((v39 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(*(&v40 + 1));
      *buf = 136446210;
      v42 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __97__PLAssetsdCloudClient_requestCPLDownloadImageDataForAssets_format_doneTokens_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v18 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v19[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 112);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__PLAssetsdCloudClient_requestCPLDownloadImageDataForAssets_format_doneTokens_completionHandler___block_invoke_27;
  v14[3] = &unk_1E79324F0;
  v15 = *(a1 + 48);
  [v3 asynchronousStartPreheatingCPLDownloadForAssets:v11 doneTokens:v12 format:v13 reply:v14];
}

- (void)downloadCloudPhotoLibraryAsset:(id)a3 resourceType:(unint64_t)a4 highPriority:(BOOL)a5 trackCPLDownload:(BOOL)a6 downloadIsTransient:(BOOL)a7 proposedTaskIdentifier:(id)a8 completionHandler:(id)a9
{
  v53 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a8;
  v17 = a9;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v18 = +[PLXPCMessageLogger enabled];
  LOBYTE(v48) = v18;
  if (v18)
  {
    v19 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: downloadCloudPhotoLibraryAsset:resourceType:highPriority:trackCPLDownload:downloadIsTransient:proposedTaskIdentifier:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v20 = *(&v48 + 1);
    *(&v48 + 1) = v19;

    os_activity_scope_enter(v19, (&v49 + 8));
  }

  if (!v15)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudClient.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];
  }

  if (!v17)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudClient.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v21 = [v15 URIRepresentation];
  v22 = [(PLAssetsdBaseClient *)self proxyFactory];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __159__PLAssetsdCloudClient_downloadCloudPhotoLibraryAsset_resourceType_highPriority_trackCPLDownload_downloadIsTransient_proposedTaskIdentifier_completionHandler___block_invoke;
  v46[3] = &unk_1E7932DA8;
  v47 = v17;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3254779904;
  v33[2] = __159__PLAssetsdCloudClient_downloadCloudPhotoLibraryAsset_resourceType_highPriority_trackCPLDownload_downloadIsTransient_proposedTaskIdentifier_completionHandler___block_invoke_2;
  v33[3] = &unk_1F1F72490;
  v37 = v48;
  v38 = *(&v48 + 1);
  v39 = v49;
  v40 = v50;
  v41 = a2;
  v23 = v21;
  v34 = v23;
  v24 = v16;
  v35 = v24;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v25 = v47;
  v36 = v25;
  [v22 remoteObjectProxyWithErrorHandler:v46 handler:v33];

  if (v48 == 1)
  {
    os_activity_scope_leave((&v49 + 8));
  }

  if (v49)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    v28 = v49;
    if ((v49 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      Name = sel_getName(*(&v50 + 1));
      *buf = 136446210;
      v52 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __159__PLAssetsdCloudClient_downloadCloudPhotoLibraryAsset_resourceType_highPriority_trackCPLDownload_downloadIsTransient_proposedTaskIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v23 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v24[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v22 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  v15 = *(a1 + 121);
  v16 = *(a1 + 122);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __159__PLAssetsdCloudClient_downloadCloudPhotoLibraryAsset_resourceType_highPriority_trackCPLDownload_downloadIsTransient_proposedTaskIdentifier_completionHandler___block_invoke_23;
  v17[3] = &unk_1E79324C8;
  v20 = v15;
  v18 = v11;
  v19 = *(a1 + 48);
  [v3 downloadCloudPhotoLibraryAssetWithObjectURI:v12 taskIdentifier:v18 resourceType:v13 HighPriority:v14 trackCPLDownload:v15 downloadIsTransient:v16 reply:v17];
}

void __159__PLAssetsdCloudClient_downloadCloudPhotoLibraryAsset_resourceType_highPriority_trackCPLDownload_downloadIsTransient_proposedTaskIdentifier_completionHandler___block_invoke_23(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (a2)
  {
    if (*(a1 + 48) == 1)
    {
      v11 = objc_alloc_init(PLCPLDownloadContext);
      [(PLCPLDownloadContext *)v11 setTaskIdentifier:*(a1 + 32)];
      [(PLCPLDownloadContext *)v11 setResourceTypeDescription:v9];
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)cancelCPLDownloadWithContext:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: cancelCPLDownloadWithContext:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __71__PLAssetsdCloudClient_cancelCPLDownloadWithContext_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3254779904;
  v19[2] = __71__PLAssetsdCloudClient_cancelCPLDownloadWithContext_completionHandler___block_invoke_2;
  v19[3] = &unk_1F1F72BC8;
  v22 = v29;
  v23 = *(&v29 + 1);
  v24 = v30;
  v25 = v31;
  v26 = a2;
  v13 = v7;
  v20 = v13;
  v14 = v28;
  v21 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v19];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

uint64_t __71__PLAssetsdCloudClient_cancelCPLDownloadWithContext_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__PLAssetsdCloudClient_cancelCPLDownloadWithContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
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

  v11 = [*(a1 + 32) taskIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PLAssetsdCloudClient_cancelCPLDownloadWithContext_completionHandler___block_invoke_15;
  v12[3] = &unk_1E79324A0;
  v13 = *(a1 + 40);
  [v3 cancelCPLDownloadTaskWithIdentifier:v11 reply:v12];
}

uint64_t __71__PLAssetsdCloudClient_cancelCPLDownloadWithContext_completionHandler___block_invoke_15(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)requestVideoPlaybackURLForCloudSharedAsset:(id)a3 mediaAssetType:(unint64_t)a4 completionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: requestVideoPlaybackURLForCloudSharedAsset:mediaAssetType:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v34 + 1);
    *(&v34 + 1) = v12;

    os_activity_scope_enter(v12, (&v35 + 8));
  }

  if (!v9)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PLAssetsdCloudClient.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];
  }

  v14 = [v9 URIRepresentation];
  v15 = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __100__PLAssetsdCloudClient_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_completionHandler___block_invoke;
  v32[3] = &unk_1E7932DA8;
  v33 = v10;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __100__PLAssetsdCloudClient_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_completionHandler___block_invoke_9;
  v23[3] = &unk_1F1F72848;
  v26 = v34;
  v27 = *(&v34 + 1);
  v28 = v35;
  v29 = v36;
  v30 = a2;
  v16 = v14;
  v24 = v16;
  v31 = a4;
  v17 = v33;
  v25 = v17;
  [v15 remoteObjectProxyWithErrorHandler:v32 handler:v23];

  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(*(&v36 + 1));
      *buf = 136446210;
      v38 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __100__PLAssetsdCloudClient_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[PLAssetsdCloudClient requestVideoPlaybackURLForCloudSharedAsset:mediaAssetType:completionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v6, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }
}

void __100__PLAssetsdCloudClient_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_completionHandler___block_invoke_9(uint64_t a1, void *a2)
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

  v11 = *(a1 + 104);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__PLAssetsdCloudClient_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_completionHandler___block_invoke_12;
  v13[3] = &unk_1E7932908;
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v3 requestVideoPlaybackURLForCloudSharedAsset:v12 mediaAssetType:v11 reply:v13];
}

uint64_t __100__PLAssetsdCloudClient_requestVideoPlaybackURLForCloudSharedAsset_mediaAssetType_completionHandler___block_invoke_12(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end