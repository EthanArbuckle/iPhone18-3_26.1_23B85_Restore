@interface PLAssetsdResourceClient
- (BOOL)estimatedOutputFileLengthForVideoURL:(id)a3 fallbackFilePath:(id)a4 exportPreset:(id)a5 exportProperties:(id)a6 outFileLength:(int64_t *)a7 error:(id *)a8;
- (BOOL)fileDescriptorForAssetURL:(id)a3 withAdjustments:(BOOL)a4 fileExtension:(id *)a5 fileDescriptor:(int *)a6 error:(id *)a7;
- (BOOL)fileURLForAssetURL:(id)a3 withAdjustments:(BOOL)a4 fileURL:(id *)a5 error:(id *)a6;
- (BOOL)imageDataForAsset:(id)a3 format:(int)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 outImageData:(id *)a9 outImageDataInfo:(id *)a10 outCPLDownloadContext:(id *)a11 error:(id *)a12;
- (BOOL)sandboxExtensionFileURLForAssetURL:(id)a3 withAdjustments:(BOOL)a4 fileURL:(id *)a5 error:(id *)a6;
- (BOOL)sandboxExtensionForFileSystemBookmark:(id)a3 bookmarkURL:(id *)a4 sandboxExtensionToken:(id *)a5 error:(id *)a6;
- (BOOL)sandboxExtensionsForAssetWithUUID:(id)a3 sandboxExtensionTokens:(id *)a4 error:(id *)a5;
- (BOOL)updateInternalResourcePath:(id)a3 objectURI:(id)a4 error:(id *)a5;
- (PLAssetsdResourceClient)initWithQueue:(id)a3 proxyCreating:(id)a4 proxyGetter:(SEL)a5 clientState:(id)a6;
- (id)consolidateAssets:(id)a3 completionHandler:(id)a4;
- (id)projectExtensionDataForProjectUuid:(id)a3;
- (void)addAssetWithURL:(id)a3 toAlbumWithUUID:(id)a4 completionHandler:(id)a5;
- (void)addGroupWithName:(id)a3 completionHandler:(id)a4;
- (void)adjustmentDataForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 trackCPLDownload:(BOOL)a5 completionHandler:(id)a6;
- (void)downloadCloudSharedAsset:(id)a3 withCloudPlaceholderKind:(unint64_t)a4 shouldPrioritize:(BOOL)a5 shouldExtendTimer:(BOOL)a6 completionHandler:(id)a7;
- (void)imageDataForAsset:(id)a3 format:(int)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 completionHandler:(id)a9;
- (void)saveAssetWithJobDictionary:(id)a3 imageSurface:(__IOSurface *)a4 previewImageSurface:(__IOSurface *)a5 completionHandler:(id)a6;
@end

@implementation PLAssetsdResourceClient

- (id)projectExtensionDataForProjectUuid:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: projectExtensionDataForProjectUuid:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v22 + 1);
    *(&v22 + 1) = v7;

    os_activity_scope_enter(v7, (&v23 + 8));
  }

  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:623 description:{@"Invalid parameter not satisfying: %@", @"projectUuid"}];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11880;
  v28 = __Block_byref_object_dispose__11881;
  v29 = 0;
  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_11882];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__PLAssetsdResourceClient_projectExtensionDataForProjectUuid___block_invoke_122;
  v19[3] = &unk_1E79329A8;
  p_buf = &buf;
  v11 = v5;
  v20 = v11;
  [v10 projectExtensionDataForProjectUuid:v11 reply:v19];

  v12 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v12;
}

void __62__PLAssetsdResourceClient_projectExtensionDataForProjectUuid___block_invoke_122(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v7)
  {
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [v7 localizedDescription];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_DEFAULT, "Error getting projectExtensionDataForProjectUuid = %@: %@", &v11, 0x16u);
    }
  }
}

void __62__PLAssetsdResourceClient_projectExtensionDataForProjectUuid___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdResourceClient projectExtensionDataForProjectUuid:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)updateInternalResourcePath:(id)a3 objectURI:(id)a4 error:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v35 = 0u;
  *sel = 0u;
  v34 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: updateInternalResourcePath:objectURI:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v34 + 1);
    *(&v34 + 1) = v12;

    os_activity_scope_enter(v12, (&v35 + 8));
  }

  if (!v10)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:582 description:{@"Invalid parameter not satisfying: %@", @"resourceURI"}];
  }

  if (!v9)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:583 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__11880;
  v42 = __Block_byref_object_dispose__11881;
  v43 = 0;
  v14 = PLGetSandboxExtensionTokenWithFlags(v9, *MEMORY[0x1E69E9BA8], *MEMORY[0x1E69E9BE0], 0);
  v15 = v14;
  if (v14)
  {
    v16 = PLSandboxExtensionTokenAsData(v14);
    v17 = [(PLAssetsdBaseClient *)self proxyFactory];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __70__PLAssetsdResourceClient_updateInternalResourcePath_objectURI_error___block_invoke;
    v33[3] = &unk_1E7932770;
    v33[4] = &buf;
    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v33];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __70__PLAssetsdResourceClient_updateInternalResourcePath_objectURI_error___block_invoke_118;
    v32[3] = &unk_1E7932980;
    v32[4] = &buf;
    [v18 updateInternalResourcePath:v9 objectURI:v10 sandboxExtension:v16 reply:v32];

    v19 = *(*(&buf + 1) + 40);
    v20 = v19 == 0;
    if (a5 && v19)
    {
      *a5 = v19;
    }
  }

  else
  {
    v21 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A368];
    v38 = v9;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v23 = [v21 errorWithDomain:@"com.apple.photos.error" code:44004 userInfo:v22];
    v24 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v23;

    v20 = 0;
    if (a5)
    {
      *a5 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v26, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20;
}

void __70__PLAssetsdResourceClient_updateInternalResourcePath_objectURI_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "[PLAssetsdResourceClient updateInternalResourcePath:objectURI:error:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", buf, 0x16u);
  }

  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696AA08];
  v11 = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.photos.error" code:41002 userInfo:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __70__PLAssetsdResourceClient_updateInternalResourcePath_objectURI_error___block_invoke_118(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

- (id)consolidateAssets:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v31 = 0u;
  *sel = 0u;
  v30 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v30) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: consolidateAssets:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v30 + 1);
    *(&v30 + 1) = v10;

    os_activity_scope_enter(v10, (&v31 + 8));
  }

  if (!v7)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"assetUUIDs"}];
  }

  if (!v8)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:559 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__PLAssetsdResourceClient_consolidateAssets_completionHandler___block_invoke;
  v27[3] = &unk_1E7932930;
  v13 = v7;
  v28 = v13;
  v14 = v8;
  v29 = v14;
  v15 = [v12 remoteObjectProxyWithErrorHandler:v27];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __63__PLAssetsdResourceClient_consolidateAssets_completionHandler___block_invoke_110;
  v25[3] = &unk_1E7932958;
  v16 = v14;
  v26 = v16;
  v17 = [v15 consolidateAssets:v13 reply:v25];

  if (v30 == 1)
  {
    os_activity_scope_leave((&v31 + 8));
  }

  if (v31)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v31;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v34 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v17;
}

void __63__PLAssetsdResourceClient_consolidateAssets_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "[PLAssetsdResourceClient consolidateAssets:completionHandler:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", buf, 0x16u);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a1 + 32);
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

        [v5 setObject:v3 forKeyedSubscript:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)downloadCloudSharedAsset:(id)a3 withCloudPlaceholderKind:(unint64_t)a4 shouldPrioritize:(BOOL)a5 shouldExtendTimer:(BOOL)a6 completionHandler:(id)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a7;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v15 = +[PLXPCMessageLogger enabled];
  LOBYTE(v40) = v15;
  if (v15)
  {
    v16 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: downloadCloudSharedAsset:withCloudPlaceholderKind:shouldPrioritize:shouldExtendTimer:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v17 = *(&v40 + 1);
    *(&v40 + 1) = v16;

    os_activity_scope_enter(v16, (&v41 + 8));
  }

  if (!v13)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:538 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];
  }

  v18 = [v13 URIRepresentation];
  v19 = [(PLAssetsdBaseClient *)self proxyFactory];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __130__PLAssetsdResourceClient_downloadCloudSharedAsset_withCloudPlaceholderKind_shouldPrioritize_shouldExtendTimer_completionHandler___block_invoke;
  v38[3] = &unk_1E7932DA8;
  v39 = v14;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3254779904;
  v27[2] = __130__PLAssetsdResourceClient_downloadCloudSharedAsset_withCloudPlaceholderKind_shouldPrioritize_shouldExtendTimer_completionHandler___block_invoke_101;
  v27[3] = &unk_1F1F725E0;
  v30 = v40;
  v31 = *(&v40 + 1);
  v32 = v41;
  v33 = v42;
  v34 = a2;
  v20 = v18;
  v28 = v20;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v21 = v39;
  v29 = v21;
  [v19 remoteObjectProxyWithErrorHandler:v38 handler:v27];

  if (v40 == 1)
  {
    os_activity_scope_leave((&v41 + 8));
  }

  if (v41)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v41;
    if ((v41 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      Name = sel_getName(*(&v42 + 1));
      *buf = 136446210;
      v44 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __130__PLAssetsdResourceClient_downloadCloudSharedAsset_withCloudPlaceholderKind_shouldPrioritize_shouldExtendTimer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[PLAssetsdResourceClient downloadCloudSharedAsset:withCloudPlaceholderKind:shouldPrioritize:shouldExtendTimer:completionHandler:]_block_invoke";
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

void __130__PLAssetsdResourceClient_downloadCloudSharedAsset_withCloudPlaceholderKind_shouldPrioritize_shouldExtendTimer_completionHandler___block_invoke_101(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v19 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v20[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v18 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 113);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __130__PLAssetsdResourceClient_downloadCloudSharedAsset_withCloudPlaceholderKind_shouldPrioritize_shouldExtendTimer_completionHandler___block_invoke_102;
  v15[3] = &unk_1E7932908;
  v14 = *(a1 + 32);
  v16 = *(a1 + 40);
  [v3 downloadCloudSharedAsset:v14 wantedPlaceholderkind:v11 shouldPrioritize:v12 shouldExtendTimer:v13 reply:v15];
}

- (BOOL)estimatedOutputFileLengthForVideoURL:(id)a3 fallbackFilePath:(id)a4 exportPreset:(id)a5 exportProperties:(id)a6 outFileLength:(int64_t *)a7 error:(id *)a8
{
  v54 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v47 = 0u;
  *sel = 0u;
  v46 = 0u;
  v19 = +[PLXPCMessageLogger enabled];
  LOBYTE(v46) = v19;
  if (v19)
  {
    v20 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: estimatedOutputFileLengthForVideoURL:fallbackFilePath:exportPreset:exportProperties:outFileLength:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v21 = *(&v46 + 1);
    *(&v46 + 1) = v20;

    os_activity_scope_enter(v20, (&v47 + 8));
  }

  v22 = PLRequestGetLog();
  sel[1] = a2;
  v23 = os_signpost_id_generate(v22);
  *&v47 = v23;
  v24 = v22;
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!v15)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:511 description:{@"Invalid parameter not satisfying: %@", @"videoURL"}];
  }

  if (!a7)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:512 description:{@"Invalid parameter not satisfying: %@", @"outFileLength"}];
  }

  if (!a8)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:513 description:{@"Invalid parameter not satisfying: %@", @"error"}];
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = -1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__11880;
  v52 = __Block_byref_object_dispose__11881;
  v53 = 0;
  v27 = [(PLAssetsdBaseClient *)self proxyFactory];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __131__PLAssetsdResourceClient_estimatedOutputFileLengthForVideoURL_fallbackFilePath_exportPreset_exportProperties_outFileLength_error___block_invoke;
  v41[3] = &unk_1E7932770;
  v41[4] = &buf;
  v28 = [v27 synchronousRemoteObjectProxyWithErrorHandler:v41];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __131__PLAssetsdResourceClient_estimatedOutputFileLengthForVideoURL_fallbackFilePath_exportPreset_exportProperties_outFileLength_error___block_invoke_99;
  v40[3] = &unk_1E79328E0;
  v40[4] = &v42;
  [v28 estimatedFileLengthOfVideo:v15 fallbackFilePath:v16 exportPreset:v17 exportProperties:v18 reply:v40];

  if (a7)
  {
    *a7 = v43[3];
  }

  v29 = *(&buf + 1);
  if (a8)
  {
    v30 = *(*(&buf + 1) + 40);
    if (v30)
    {
      *a8 = v30;
      v29 = *(&buf + 1);
    }
  }

  v31 = *(v29 + 40);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v42, 8);
  if (v46 == 1)
  {
    os_activity_scope_leave((&v47 + 8));
  }

  if (v47)
  {
    v32 = PLRequestGetLog();
    v33 = v32;
    v34 = v47;
    if ((v47 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      v35 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v35;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v33, OS_SIGNPOST_INTERVAL_END, v34, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v31 == 0;
}

void __131__PLAssetsdResourceClient_estimatedOutputFileLengthForVideoURL_fallbackFilePath_exportPreset_exportProperties_outFileLength_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceClient estimatedOutputFileLengthForVideoURL:fallbackFilePath:exportPreset:exportProperties:outFileLength:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)adjustmentDataForAsset:(id)a3 networkAccessAllowed:(BOOL)a4 trackCPLDownload:(BOOL)a5 completionHandler:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v36) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: adjustmentDataForAsset:networkAccessAllowed:trackCPLDownload:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v36 + 1);
    *(&v36 + 1) = v13;

    os_activity_scope_enter(v13, (&v37 + 8));
  }

  if (!v10)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:447 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];
  }

  if (!v11)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v15 = [v10 URIRepresentation];
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __106__PLAssetsdResourceClient_adjustmentDataForAsset_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke;
  v34[3] = &unk_1E7932DA8;
  v35 = v11;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3254779904;
  v25[2] = __106__PLAssetsdResourceClient_adjustmentDataForAsset_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke_83;
  v25[3] = &unk_1F1F72998;
  v28 = v36;
  v29 = *(&v36 + 1);
  v30 = v37;
  v31 = v38;
  v32 = a2;
  v17 = v15;
  v26 = v17;
  v33 = a4;
  v18 = v35;
  v27 = v18;
  [v16 remoteObjectProxyWithErrorHandler:v34 handler:v25];

  if (v36 == 1)
  {
    os_activity_scope_leave((&v37 + 8));
  }

  if (v37)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v37;
    if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(*(&v38 + 1));
      *buf = 136446210;
      v40 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __106__PLAssetsdResourceClient_adjustmentDataForAsset_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdResourceClient adjustmentDataForAsset:networkAccessAllowed:trackCPLDownload:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __106__PLAssetsdResourceClient_adjustmentDataForAsset_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke_83(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
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
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 104);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__PLAssetsdResourceClient_adjustmentDataForAsset_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke_84;
  v13[3] = &unk_1E79328B8;
  v15 = v11;
  v12 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v3 asynchronousAdjustmentDataForAsset:v12 networkAccessAllowed:v11 reply:v13];
}

void __106__PLAssetsdResourceClient_adjustmentDataForAsset_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke_84(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v45 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (v17)
  {
    v20 = [v17 object];
    v21 = xpc_fd_dup(v20);

    if ((v21 & 0x80000000) == 0)
    {
      v22 = dataWithMappedContentsOfFileDescriptor(v21);
      if (!v22)
      {
        v25 = 0;
LABEL_30:
        close(v21);

        goto LABEL_31;
      }

      v39 = v18;
      v42 = 0;
      v23 = [MEMORY[0x1E696AE40] propertyListWithData:v22 options:0 format:0 error:&v42];
      v41 = v42;
      v24 = [v23 objectForKeyedSubscript:@"adjustmentData"];
      v25 = v24;
      v40 = v23;
      if (!v23)
      {
        *v37 = v22;
        v27 = PLGatekeeperXPCGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v44 = v41;
          _os_log_impl(&dword_1AA9BD000, v27, OS_LOG_TYPE_ERROR, "Failed to serialize adjustments property list: %@", buf, 0xCu);
        }

        v22 = *v37;
        v18 = v39;
        goto LABEL_29;
      }

      if (v24)
      {
        v18 = v39;
        if (![v24 length])
        {
          *v36 = v22;
          v26 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1AA9BD000, v26, OS_LOG_TYPE_ERROR, "Adjustments property list contains an empty data blob", buf, 2u);
          }

          v22 = *v36;
        }

        goto LABEL_29;
      }

      v18 = v39;
      if (v39)
      {
        v28 = [v39 object];
        v38 = xpc_fd_dup(v28);

        if ((v38 & 0x80000000) == 0)
        {
          v25 = dataWithMappedContentsOfFileDescriptor(v38);
          v29 = PLGatekeeperXPCGetLog();
          log = v29;
          if (v25)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v30 = "Fetched adjustments data from file";
              v31 = log;
              v32 = OS_LOG_TYPE_DEFAULT;
LABEL_27:
              _os_log_impl(&dword_1AA9BD000, v31, v32, v30, buf, 2u);
            }
          }

          else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v30 = "Adjustments data file does not contain a data blob";
            v31 = log;
            v32 = OS_LOG_TYPE_ERROR;
            goto LABEL_27;
          }

          close(v38);
          goto LABEL_29;
        }
      }

      else
      {
        v33 = PLGatekeeperXPCGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1AA9BD000, v33, OS_LOG_TYPE_ERROR, "Adjustments property list does not contain a data blob", buf, 2u);
        }
      }

      v25 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_31:
  v34 = 0;
  if (v19 && (*(a1 + 40) & 1) != 0)
  {
    v34 = objc_alloc_init(PLCPLDownloadContext);
    [(PLCPLDownloadContext *)v34 setError:v19];
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)sandboxExtensionForFileSystemBookmark:(id)a3 bookmarkURL:(id *)a4 sandboxExtensionToken:(id *)a5 error:(id *)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v51) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sandboxExtensionForFileSystemBookmark:bookmarkURL:sandboxExtensionToken:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v51 + 1);
    *(&v51 + 1) = v13;

    os_activity_scope_enter(v13, (&v52 + 8));
  }

  v15 = PLRequestGetLog();
  *(&v53 + 1) = a2;
  v16 = os_signpost_id_generate(v15);
  *&v52 = v16;
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    Name = sel_getName(*(&v53 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!v11)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:410 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];
  }

  if (!a4)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:411 description:{@"Invalid parameter not satisfying: %@", @"bookmarkURL"}];
  }

  if (!a5)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:412 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__11880;
  v57 = __Block_byref_object_dispose__11881;
  v58 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__11880;
  v45 = __Block_byref_object_dispose__11881;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__11880;
  v39 = __Block_byref_object_dispose__11881;
  v40 = 0;
  v20 = [v11 URIRepresentation];
  v21 = [(PLAssetsdBaseClient *)self proxyFactory];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __105__PLAssetsdResourceClient_sandboxExtensionForFileSystemBookmark_bookmarkURL_sandboxExtensionToken_error___block_invoke;
  v34[3] = &unk_1E7932770;
  v34[4] = &buf;
  v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v34];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __105__PLAssetsdResourceClient_sandboxExtensionForFileSystemBookmark_bookmarkURL_sandboxExtensionToken_error___block_invoke_81;
  v33[3] = &unk_1E7932888;
  v33[4] = &v41;
  v33[5] = &v35;
  v33[6] = &v47;
  v33[7] = &buf;
  [v22 getSandboxExtensionForFileSystemBookmark:v20 reply:v33];

  if (*(v48 + 24) == 1)
  {
    *a5 = v36[5];
    *a4 = v42[5];
  }

  if (a6)
  {
    v23 = *(*(&buf + 1) + 40);
    if (v23)
    {
      *a6 = v23;
    }
  }

  v24 = *(v48 + 24);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v47, 8);
  if (v51 == 1)
  {
    os_activity_scope_leave((&v52 + 8));
  }

  if (v52)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v52;
    if ((v52 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      v28 = sel_getName(*(&v53 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v28;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v26, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v24;
}

void __105__PLAssetsdResourceClient_sandboxExtensionForFileSystemBookmark_bookmarkURL_sandboxExtensionToken_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceClient sandboxExtensionForFileSystemBookmark:bookmarkURL:sandboxExtensionToken:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __105__PLAssetsdResourceClient_sandboxExtensionForFileSystemBookmark_bookmarkURL_sandboxExtensionToken_error___block_invoke_81(void *a1, int a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v10 = a4;
  v11 = a5;
  if (a2)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a5);
  }
}

- (BOOL)sandboxExtensionsForAssetWithUUID:(id)a3 sandboxExtensionTokens:(id *)a4 error:(id *)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v42 = 0u;
  *sel = 0u;
  v41 = 0u;
  v10 = +[PLXPCMessageLogger enabled];
  LOBYTE(v41) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sandboxExtensionsForAssetWithUUID:sandboxExtensionTokens:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v41 + 1);
    *(&v41 + 1) = v11;

    os_activity_scope_enter(v11, (&v42 + 8));
  }

  v13 = PLRequestGetLog();
  sel[1] = a2;
  v14 = os_signpost_id_generate(v13);
  *&v42 = v14;
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!v9)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"assetUUID"}];
  }

  if (!a4)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"pathToTokenMap"}];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__11880;
  v47 = __Block_byref_object_dispose__11881;
  v48 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__11880;
  v35 = __Block_byref_object_dispose__11881;
  v36 = 0;
  v18 = [(PLAssetsdBaseClient *)self proxyFactory];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __90__PLAssetsdResourceClient_sandboxExtensionsForAssetWithUUID_sandboxExtensionTokens_error___block_invoke;
  v30[3] = &unk_1E7932770;
  v30[4] = &buf;
  v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v30];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__PLAssetsdResourceClient_sandboxExtensionsForAssetWithUUID_sandboxExtensionTokens_error___block_invoke_70;
  v29[3] = &unk_1E7932860;
  v29[4] = &v31;
  v29[5] = &v37;
  v29[6] = &buf;
  [v19 getSandboxExtensionsForAssetWithUUID:v9 reply:v29];

  if (*(v38 + 24) == 1)
  {
    *a4 = v32[5];
  }

  if (a5)
  {
    v20 = *(*(&buf + 1) + 40);
    if (v20)
    {
      *a5 = v20;
    }
  }

  v21 = *(v38 + 24);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v37, 8);
  if (v41 == 1)
  {
    os_activity_scope_leave((&v42 + 8));
  }

  if (v42)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v42;
    if ((v42 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v25 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v25;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v21;
}

void __90__PLAssetsdResourceClient_sandboxExtensionsForAssetWithUUID_sandboxExtensionTokens_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceClient sandboxExtensionsForAssetWithUUID:sandboxExtensionTokens:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __90__PLAssetsdResourceClient_sandboxExtensionsForAssetWithUUID_sandboxExtensionTokens_error___block_invoke_70(void *a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }
}

- (void)imageDataForAsset:(id)a3 format:(int)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 completionHandler:(id)a9
{
  v50 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v16 = a9;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v17 = +[PLXPCMessageLogger enabled];
  LOBYTE(v45) = v17;
  if (v17)
  {
    v18 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: imageDataForAsset:format:allowPlaceholder:wantURLOnly:networkAccessAllowed:trackCPLDownload:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v19 = *(&v45 + 1);
    *(&v45 + 1) = v18;

    os_activity_scope_enter(v18, (&v46 + 8));
  }

  v20 = [v28 URIRepresentation];
  v21 = [(PLAssetsdBaseClient *)self proxyFactory];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __137__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke;
  v43[3] = &unk_1E7932DA8;
  v44 = v16;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3254779904;
  v30[2] = __137__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke_59;
  v30[3] = &unk_1F1F72810;
  v33 = v45;
  v34 = *(&v45 + 1);
  v35 = v46;
  v36 = v47;
  v37 = a2;
  v22 = v20;
  v31 = v22;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v23 = v44;
  v32 = v23;
  [v21 remoteObjectProxyWithErrorHandler:v43 handler:v30];

  if (v45 == 1)
  {
    os_activity_scope_leave((&v46 + 8));
  }

  if (v46)
  {
    v24 = PLRequestGetLog();
    v25 = v24;
    v26 = v46;
    if ((v46 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      Name = sel_getName(*(&v47 + 1));
      *buf = 136446210;
      v49 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v25, OS_SIGNPOST_INTERVAL_END, v26, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __137__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdResourceClient imageDataForAsset:format:allowPlaceholder:wantURLOnly:networkAccessAllowed:trackCPLDownload:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __137__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke_59(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
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
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v22 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 104);
  v12 = *(a1 + 108);
  v13 = *(a1 + 109);
  v14 = *(a1 + 110);
  v15 = *(a1 + 111);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __137__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke_60;
  v17[3] = &unk_1E7932838;
  v19 = v14;
  v20 = v15;
  v16 = *(a1 + 32);
  v18 = *(a1 + 40);
  [v3 imageDataForAssetWithObjectURI:v16 formatID:v11 allowPlaceholder:v12 wantURLOnly:v13 networkAccessAllowed:v14 trackCPLDownload:v15 reply:v17];
}

void __137__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_completionHandler___block_invoke_60(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  v36 = a2;
  v35 = a10;
  v34 = a11;
  v33 = a12;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a3;
  v23 = objc_alloc_init(PLImageDataInfo);
  v24 = a4;
  v25 = a1;
  [(PLImageDataInfo *)v23 setDeliveredFormat:v24];
  [(PLImageDataInfo *)v23 setCanDownloadFromCloud:a5];
  [(PLImageDataInfo *)v23 setURL:v21];

  [(PLImageDataInfo *)v23 setSandboxExtensionToken:v20];
  [(PLImageDataInfo *)v23 setUTI:v19];

  [(PLImageDataInfo *)v23 setEXIFOrientation:a9];
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1)
  {
    v27 = v34;
    v26 = v35;
    v28 = v33;
    if (v35 | v33)
    {
      v29 = objc_alloc_init(PLCPLDownloadContext);
      [(PLCPLDownloadContext *)v29 setTaskIdentifier:v35];
      [(PLCPLDownloadContext *)v29 setResourceTypeDescription:v34];
      [(PLCPLDownloadContext *)v29 setError:v33];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
    v27 = v34;
    v26 = v35;
    v28 = v33;
  }

  v30 = [v36 object];
  v31 = [v22 longLongValue];

  v32 = PLDataFromXPCDataObject(v30, v31);

  (*(*(v25 + 32) + 16))();
}

- (BOOL)imageDataForAsset:(id)a3 format:(int)a4 allowPlaceholder:(BOOL)a5 wantURLOnly:(BOOL)a6 networkAccessAllowed:(BOOL)a7 trackCPLDownload:(BOOL)a8 outImageData:(id *)a9 outImageDataInfo:(id *)a10 outCPLDownloadContext:(id *)a11 error:(id *)a12
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v44 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v18 = +[PLXPCMessageLogger enabled];
  LOBYTE(v60) = v18;
  if (v18)
  {
    v19 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: imageDataForAsset:format:allowPlaceholder:wantURLOnly:networkAccessAllowed:trackCPLDownload:outImageData:outImageDataInfo:outCPLDownloadContext:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v20 = *(&v60 + 1);
    *(&v60 + 1) = v19;

    os_activity_scope_enter(v19, (&v61 + 8));
  }

  v21 = PLRequestGetLog();
  *(&v62 + 1) = a2;
  v22 = os_signpost_id_generate(v21);
  *&v61 = v22;
  v23 = v21;
  v24 = v23;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    Name = sel_getName(*(&v62 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__11880;
  v66 = __Block_byref_object_dispose__11881;
  v67 = 0;
  v26 = [v45 URIRepresentation];
  v43 = v15;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__11880;
  v58 = __Block_byref_object_dispose__11881;
  v59 = 0;
  if (a10)
  {
    v27 = objc_alloc_init(PLImageDataInfo);
  }

  else
  {
    v27 = 0;
  }

  if (a11)
  {
    v28 = objc_alloc_init(PLCPLDownloadContext);
  }

  else
  {
    v28 = 0;
  }

  v29 = [(PLAssetsdBaseClient *)self proxyFactory];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __177__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_outImageData_outImageDataInfo_outCPLDownloadContext_error___block_invoke;
  v53[3] = &unk_1E7932770;
  v53[4] = &buf;
  v30 = [v29 synchronousRemoteObjectProxyWithErrorHandler:v53];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __177__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_outImageData_outImageDataInfo_outCPLDownloadContext_error___block_invoke_57;
  v46[3] = &unk_1E7932810;
  v31 = v27;
  v47 = v31;
  v32 = v28;
  v50 = v13;
  v51 = a8;
  v52 = a9 != 0;
  v48 = v32;
  v49 = &v54;
  [v30 imageDataForAssetWithObjectURI:v26 formatID:v44 allowPlaceholder:v43 wantURLOnly:v14 networkAccessAllowed:v13 trackCPLDownload:v46 reply:?];

  if (!*(*(&buf + 1) + 40))
  {
    if (a9)
    {
      *a9 = v55[5];
    }

    if (a10)
    {
      v33 = v31;
      *a10 = v31;
    }

    if (a11)
    {
      v34 = v32;
      *a11 = v32;
    }
  }

  v35 = *(&buf + 1);
  if (a12)
  {
    v36 = *(*(&buf + 1) + 40);
    if (v36)
    {
      *a12 = v36;
      v35 = *(&buf + 1);
    }
  }

  v37 = *(v35 + 40);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&buf, 8);

  if (v60 == 1)
  {
    os_activity_scope_leave((&v61 + 8));
  }

  if (v61)
  {
    v38 = PLRequestGetLog();
    v39 = v38;
    v40 = v61;
    if ((v61 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      v41 = sel_getName(*(&v62 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v41;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v39, OS_SIGNPOST_INTERVAL_END, v40, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v37 == 0;
}

void __177__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_outImageData_outImageDataInfo_outCPLDownloadContext_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceClient imageDataForAsset:format:allowPlaceholder:wantURLOnly:networkAccessAllowed:trackCPLDownload:outImageData:outImageDataInfo:outCPLDownloadContext:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __177__PLAssetsdResourceClient_imageDataForAsset_format_allowPlaceholder_wantURLOnly_networkAccessAllowed_trackCPLDownload_outImageData_outImageDataInfo_outCPLDownloadContext_error___block_invoke_57(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  v32 = a2;
  v19 = a3;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = *(a1 + 32);
  if (v26)
  {
    [v26 setDeliveredFormat:a4];
    [*(a1 + 32) setCanDownloadFromCloud:a5];
    [*(a1 + 32) setURL:v20];
    [*(a1 + 32) setSandboxExtensionToken:v21];
    [*(a1 + 32) setUTI:v22];
    [*(a1 + 32) setEXIFOrientation:a9];
  }

  v27 = *(a1 + 40);
  if (v27 && *(a1 + 56) == 1 && *(a1 + 57) == 1 && v23 | v25)
  {
    [v27 setTaskIdentifier:v23];
    [*(a1 + 40) setResourceTypeDescription:v24];
    [*(a1 + 40) setError:v25];
  }

  if (*(a1 + 58) == 1)
  {
    v28 = [v32 object];
    v29 = PLDataFromXPCDataObject(v28, [v19 longLongValue]);
    v30 = *(*(a1 + 48) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;
  }
}

- (BOOL)fileDescriptorForAssetURL:(id)a3 withAdjustments:(BOOL)a4 fileExtension:(id *)a5 fileDescriptor:(int *)a6 error:(id *)a7
{
  v10 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v14 = +[PLXPCMessageLogger enabled];
  LOBYTE(v45) = v14;
  if (v14)
  {
    v15 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: fileDescriptorForAssetURL:withAdjustments:fileExtension:fileDescriptor:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v45 + 1);
    *(&v45 + 1) = v15;

    os_activity_scope_enter(v15, (&v46 + 8));
  }

  v17 = PLRequestGetLog();
  *(&v47 + 1) = a2;
  v18 = os_signpost_id_generate(v17);
  *&v46 = v18;
  v19 = v17;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    Name = sel_getName(*(&v47 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!v13)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"assetURL"}];
  }

  if (!a6)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"outFileDescriptor"}];
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__11880;
  v51 = __Block_byref_object_dispose__11881;
  v52 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__11880;
  v39 = __Block_byref_object_dispose__11881;
  v40 = 0;
  v22 = [(PLAssetsdBaseClient *)self proxyFactory];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __104__PLAssetsdResourceClient_fileDescriptorForAssetURL_withAdjustments_fileExtension_fileDescriptor_error___block_invoke;
  v34[3] = &unk_1E7932770;
  v34[4] = &buf;
  v23 = [v22 synchronousRemoteObjectProxyWithErrorHandler:v34];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __104__PLAssetsdResourceClient_fileDescriptorForAssetURL_withAdjustments_fileExtension_fileDescriptor_error___block_invoke_53;
  v33[3] = &unk_1E79327E8;
  v33[4] = &v35;
  v33[5] = &v41;
  v33[6] = &buf;
  v33[7] = a6;
  [v23 fileDescriptorForPersistentURL:v13 withAdjustments:v10 reply:v33];

  if (a5 && (v42[3] & 1) != 0)
  {
    *a5 = v36[5];
  }

  if (a7)
  {
    v24 = *(*(&buf + 1) + 40);
    if (v24)
    {
      *a7 = v24;
    }
  }

  v25 = *(v42 + 24);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v41, 8);
  if (v45 == 1)
  {
    os_activity_scope_leave((&v46 + 8));
  }

  if (v46)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    v28 = v46;
    if ((v46 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v29 = sel_getName(*(&v47 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v29;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v25;
}

void __104__PLAssetsdResourceClient_fileDescriptorForAssetURL_withAdjustments_fileExtension_fileDescriptor_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceClient fileDescriptorForAssetURL:withAdjustments:fileExtension:fileDescriptor:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __104__PLAssetsdResourceClient_fileDescriptorForAssetURL_withAdjustments_fileExtension_fileDescriptor_error___block_invoke_53(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v15 = a4;
  v10 = a5;
  v11 = v10;
  if (a2)
  {
    v12 = [a3 object];
    **(a1 + 56) = xpc_fd_dup(v12);
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v13 = *(*(a1 + 48) + 8);
    v14 = v10;
    v12 = *(v13 + 40);
    *(v13 + 40) = v14;
  }
}

- (BOOL)sandboxExtensionFileURLForAssetURL:(id)a3 withAdjustments:(BOOL)a4 fileURL:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v44 = 0u;
  *sel = 0u;
  v43 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v43) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sandboxExtensionFileURLForAssetURL:withAdjustments:fileURL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v43 + 1);
    *(&v43 + 1) = v13;

    os_activity_scope_enter(v13, (&v44 + 8));
  }

  v15 = PLRequestGetLog();
  sel[1] = a2;
  v16 = os_signpost_id_generate(v15);
  *&v44 = v16;
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!v8)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"withAdjustments"}];
  }

  if (!a5)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"outFileURL"}];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__11880;
  v49 = __Block_byref_object_dispose__11881;
  v50 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__11880;
  v37 = __Block_byref_object_dispose__11881;
  v38 = 0;
  v20 = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __92__PLAssetsdResourceClient_sandboxExtensionFileURLForAssetURL_withAdjustments_fileURL_error___block_invoke;
  v32[3] = &unk_1E7932770;
  v32[4] = &buf;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __92__PLAssetsdResourceClient_sandboxExtensionFileURLForAssetURL_withAdjustments_fileURL_error___block_invoke_47;
  v31[3] = &unk_1E79327C0;
  v31[4] = &v33;
  v31[5] = &v39;
  v31[6] = &buf;
  [v21 sandboxExtensionURLForPersistentURL:v11 withAdjustments:v8 reply:v31];

  if (*(v40 + 24) == 1)
  {
    *a5 = v34[5];
  }

  if (a6)
  {
    v22 = *(*(&buf + 1) + 40);
    if (v22)
    {
      *a6 = v22;
    }
  }

  v23 = *(v40 + 24);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v39, 8);
  if (v43 == 1)
  {
    os_activity_scope_leave((&v44 + 8));
  }

  if (v44)
  {
    v24 = PLRequestGetLog();
    v25 = v24;
    v26 = v44;
    if ((v44 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      v27 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v27;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v25, OS_SIGNPOST_INTERVAL_END, v26, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v23;
}

void __92__PLAssetsdResourceClient_sandboxExtensionFileURLForAssetURL_withAdjustments_fileURL_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceClient sandboxExtensionFileURLForAssetURL:withAdjustments:fileURL:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __92__PLAssetsdResourceClient_sandboxExtensionFileURLForAssetURL_withAdjustments_fileURL_error___block_invoke_47(void *a1, int a2, void *a3, void *a4, void *a5)
{
  v15 = a4;
  v9 = a5;
  if (a2)
  {
    v10 = MEMORY[0x1E695DFF8];
    v11 = [a3 path];
    v12 = [v10 fileURLWithPath:v11];
    v13 = *(a1[4] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    MEMORY[0x1AC591C90](*(*(a1[4] + 8) + 40), v15);
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a5);
  }
}

- (BOOL)fileURLForAssetURL:(id)a3 withAdjustments:(BOOL)a4 fileURL:(id *)a5 error:(id *)a6
{
  v8 = a4;
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v44 = 0u;
  *sel = 0u;
  v43 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v43) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: fileURLForAssetURL:withAdjustments:fileURL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v43 + 1);
    *(&v43 + 1) = v13;

    os_activity_scope_enter(v13, (&v44 + 8));
  }

  v15 = PLRequestGetLog();
  sel[1] = a2;
  v16 = os_signpost_id_generate(v15);
  *&v44 = v16;
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!v8)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:191 description:{@"Invalid parameter not satisfying: %@", @"withAdjustments"}];
  }

  if (!a5)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"outFileURL"}];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__11880;
  v49 = __Block_byref_object_dispose__11881;
  v50 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__11880;
  v37 = __Block_byref_object_dispose__11881;
  v38 = 0;
  v20 = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __76__PLAssetsdResourceClient_fileURLForAssetURL_withAdjustments_fileURL_error___block_invoke;
  v32[3] = &unk_1E7932770;
  v32[4] = &buf;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __76__PLAssetsdResourceClient_fileURLForAssetURL_withAdjustments_fileURL_error___block_invoke_45;
  v31[3] = &unk_1E7932798;
  v31[4] = &v33;
  v31[5] = &v39;
  v31[6] = &buf;
  [v21 filePathForPersistentURL:v11 withAdjustments:v8 reply:v31];

  if (*(v40 + 24) == 1)
  {
    *a5 = v34[5];
  }

  if (a6)
  {
    v22 = *(*(&buf + 1) + 40);
    if (v22)
    {
      *a6 = v22;
    }
  }

  v23 = *(v40 + 24);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v39, 8);
  if (v43 == 1)
  {
    os_activity_scope_leave((&v44 + 8));
  }

  if (v44)
  {
    v24 = PLRequestGetLog();
    v25 = v24;
    v26 = v44;
    if ((v44 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      v27 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v27;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v25, OS_SIGNPOST_INTERVAL_END, v26, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v23;
}

void __76__PLAssetsdResourceClient_fileURLForAssetURL_withAdjustments_fileURL_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceClient fileURLForAssetURL:withAdjustments:fileURL:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __76__PLAssetsdResourceClient_fileURLForAssetURL_withAdjustments_fileURL_error___block_invoke_45(void *a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }
}

- (void)addAssetWithURL:(id)a3 toAlbumWithUUID:(id)a4 completionHandler:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v37) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: addAssetWithURL:toAlbumWithUUID:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v37 + 1);
    *(&v37 + 1) = v13;

    os_activity_scope_enter(v13, (&v38 + 8));
  }

  if (!v9)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"assetURL"}];
  }

  if (!v10)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"albumUUID"}];
  }

  if (!v11)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v15 = [(PLAssetsdBaseClient *)self proxyFactory];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __77__PLAssetsdResourceClient_addAssetWithURL_toAlbumWithUUID_completionHandler___block_invoke;
  v35[3] = &unk_1E7932DA8;
  v36 = v11;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3254779904;
  v26[2] = __77__PLAssetsdResourceClient_addAssetWithURL_toAlbumWithUUID_completionHandler___block_invoke_35;
  v26[3] = &unk_1F1F726F8;
  v30 = v37;
  v31 = *(&v37 + 1);
  v32 = v38;
  v33 = v39;
  v34 = a2;
  v16 = v9;
  v27 = v16;
  v17 = v10;
  v28 = v17;
  v18 = v36;
  v29 = v18;
  [v15 remoteObjectProxyWithErrorHandler:v35 handler:v26];

  if (v37 == 1)
  {
    os_activity_scope_leave((&v38 + 8));
  }

  if (v38)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v38;
    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(*(&v39 + 1));
      *buf = 136446210;
      v41 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __77__PLAssetsdResourceClient_addAssetWithURL_toAlbumWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[PLAssetsdResourceClient addAssetWithURL:toAlbumWithUUID:completionHandler:]_block_invoke";
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

void __77__PLAssetsdResourceClient_addAssetWithURL_toAlbumWithUUID_completionHandler___block_invoke_35(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
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
      v10 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PLAssetsdResourceClient_addAssetWithURL_toAlbumWithUUID_completionHandler___block_invoke_36;
  v13[3] = &unk_1E7932DD0;
  v14 = *(a1 + 48);
  [v3 addAssetWithURL:v11 toAlbum:v12 reply:v13];
}

- (void)addGroupWithName:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v30) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: addGroupWithName:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v30 + 1);
    *(&v30 + 1) = v10;

    os_activity_scope_enter(v10, (&v31 + 8));
  }

  if (!v8)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __62__PLAssetsdResourceClient_addGroupWithName_completionHandler___block_invoke;
  v28[3] = &unk_1E7932DA8;
  v29 = v8;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3254779904;
  v20[2] = __62__PLAssetsdResourceClient_addGroupWithName_completionHandler___block_invoke_23;
  v20[3] = &unk_1F1F72B58;
  v23 = v30;
  v24 = *(&v30 + 1);
  v25 = v31;
  v26 = v32;
  v27 = a2;
  v13 = v7;
  v21 = v13;
  v14 = v29;
  v22 = v14;
  [v12 remoteObjectProxyWithErrorHandler:v28 handler:v20];

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

void __62__PLAssetsdResourceClient_addGroupWithName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v11 = "[PLAssetsdResourceClient addGroupWithName:completionHandler:]_block_invoke";
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

void __62__PLAssetsdResourceClient_addGroupWithName_completionHandler___block_invoke_23(uint64_t a1, void *a2)
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
  v12[2] = __62__PLAssetsdResourceClient_addGroupWithName_completionHandler___block_invoke_24;
  v12[3] = &unk_1E7932748;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  [v3 addAssetGroupWithName:v11 reply:v12];
}

void __62__PLAssetsdResourceClient_addGroupWithName_completionHandler___block_invoke_24(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = a3;
  if (!v6 && (a2 & 1) == 0)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:41007 userInfo:0];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveAssetWithJobDictionary:(id)a3 imageSurface:(__IOSurface *)a4 previewImageSurface:(__IOSurface *)a5 completionHandler:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v13 = +[PLXPCMessageLogger enabled];
  LOBYTE(v50) = v13;
  if (v13)
  {
    v14 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: saveAssetWithJobDictionary:imageSurface:previewImageSurface:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15 = *(&v50 + 1);
    *(&v50 + 1) = v14;

    os_activity_scope_enter(v14, (&v51 + 8));
  }

  if (!v12)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceClient.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v16 = objc_autoreleasePoolPush();
  v17 = [v11 objectForKeyedSubscript:@"kPLImageWriterPhotoIrisMediaGroupUUID"];
  if (v17)
  {
    v18 = [v11 objectForKeyedSubscript:@"JobType"];
    v19 = [v18 isEqualToString:@"VideoJob"];
  }

  else
  {
    v19 = 0;
  }

  creationRequestBridge = self->_creationRequestBridge;
  if ((creationRequestBridge == 0) | v19 & 1)
  {
    v21 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v11 objectForKeyedSubscript:@"JobType"];
      v23 = [v11 objectForKeyedSubscript:@"CreatedAssetUUID"];
      *buf = 138543618;
      v54 = v22;
      v55 = 2114;
      v56 = v23;
      _os_log_impl(&dword_1AA9BD000, v21, OS_LOG_TYPE_DEFAULT, "Sending saveAssetWithJobDictionary:imageSurface:previewImageSurface:completionHander: with job type %{public}@ uuid %{public}@", buf, 0x16u);
    }

    v24 = [v11 objectForKey:@"callStack"];
    if (v24)
    {
      v25 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = NSStringFromSelector(a2);
        *buf = 138412546;
        v54 = v26;
        v55 = 2112;
        v56 = v24;
        _os_log_impl(&dword_1AA9BD000, v25, OS_LOG_TYPE_DEFAULT, "##### %@ %@", buf, 0x16u);
      }

      v27 = [MEMORY[0x1E695DFD8] setWithObject:@"callStack"];
      _PLJobLogDictionary(v11, 0, v27);
    }

    if (a4)
    {
      CFRetain(a4);
    }

    if (a5)
    {
      CFRetain(a5);
    }

    v28 = [(PLAssetsdBaseClient *)self proxyFactory];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __105__PLAssetsdResourceClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke;
    v46[3] = &unk_1E79326F0;
    v48 = a4;
    v49 = a5;
    v47 = v12;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3254779904;
    v36[2] = __105__PLAssetsdResourceClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke_16;
    v36[3] = &unk_1F1F72570;
    v39 = v50;
    v40 = *(&v50 + 1);
    v41 = v51;
    v42 = v52;
    v43 = a2;
    v37 = v11;
    v44 = a4;
    v45 = a5;
    v38 = v47;
    [v28 remoteObjectProxyWithErrorHandler:v46 handler:v36];

    v29 = v47;
  }

  else
  {
    v24 = [(PLAssetJobExecutor *)creationRequestBridge executeCreationRequestWithJobDict:v11 previewImageSurface:a5];
    v30 = [v24 isSuccess];
    v29 = [v24 error];
    (*(v12 + 2))(v12, v30, v11, v29);
  }

  objc_autoreleasePoolPop(v16);
  if (v50 == 1)
  {
    os_activity_scope_leave((&v51 + 8));
  }

  if (v51)
  {
    v31 = PLRequestGetLog();
    v32 = v31;
    v33 = v51;
    if ((v51 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      Name = sel_getName(*(&v52 + 1));
      *buf = 136446210;
      v54 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v32, OS_SIGNPOST_INTERVAL_END, v33, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __105__PLAssetsdResourceClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceClient saveAssetWithJobDictionary:imageSurface:previewImageSurface:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = a1[5];
  v6 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  (*(a1[4] + 16))();
}

void __105__PLAssetsdResourceClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v20 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v21[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v19 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__PLAssetsdResourceClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke_19;
  v16[3] = &unk_1E7932720;
  v13 = *(a1 + 32);
  v17 = *(a1 + 40);
  [v3 saveAssetWithDataAndPorts:v13 imageSurface:v11 previewImageSurface:v12 reply:v16];
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void __105__PLAssetsdResourceClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke_19(uint64_t a1, int a2, void *a3, int a4, int a5, void *a6)
{
  v16 = a3;
  v11 = a6;
  v12 = *(a1 + 32);
  if (!a2)
  {
    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = 42001;
    }

    else
    {
      if (!a5)
      {
        (*(v12 + 16))(v12, 0, 0, v11);
        goto LABEL_9;
      }

      v13 = MEMORY[0x1E696ABC0];
      v14 = 42002;
    }

    v15 = [v13 errorWithDomain:@"com.apple.photos.error" code:v14 userInfo:0];
    (*(v12 + 16))(v12, 0, 0, v15);

    goto LABEL_9;
  }

  (*(v12 + 16))(v12, 1, v16, 0);
LABEL_9:
}

- (PLAssetsdResourceClient)initWithQueue:(id)a3 proxyCreating:(id)a4 proxyGetter:(SEL)a5 clientState:(id)a6
{
  v10.receiver = self;
  v10.super_class = PLAssetsdResourceClient;
  v6 = [(PLAssetsdBaseClient *)&v10 initWithQueue:a3 proxyCreating:a4 proxyGetter:a5 clientState:a6];
  if (v6)
  {
    if ((PFIsCamera() & 1) != 0 || (pl_dispatch_once(&PLIsNebulad_didCheck, &__block_literal_global_171_3989), PLIsNebulad_isNebulad == 1))
    {
      v7 = objc_alloc_init(NSClassFromString(@"PHAssetCreationRequestBridge"));
      creationRequestBridge = v6->_creationRequestBridge;
      v6->_creationRequestBridge = v7;
    }
  }

  return v6;
}

@end