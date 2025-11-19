@interface PLAssetsdPhotoKitClient
+ (BOOL)sendChangesRequest:(id)a3 usingProxyFactory:(id)a4 error:(id *)a5;
+ (void)sendChangesRequest:(id)a3 usingProxyFactory:(id)a4 reply:(id)a5;
- (BOOL)cancelReservedCloudIdentifiers:(id)a3 error:(id *)a4;
- (BOOL)cancelReservedCloudIdentifiersWithEntityName:(id)a3 error:(id *)a4;
- (BOOL)forceSyndicationIngestSyncToDate:(id)a3 error:(id *)a4;
- (BOOL)processUniversalSearchJITForAssetUUID:(id)a3 processingTypes:(unint64_t)a4 error:(id *)a5;
- (BOOL)resetStateForMediaProcessingTaskID:(unint64_t)a3 assetUUIDs:(id)a4 resetOptions:(unint64_t)a5 error:(id *)a6;
- (BOOL)sendChangesRequest:(id)a3 error:(id *)a4;
- (id)analyzeAssets:(id)a3 forFeature:(unint64_t)a4 withCompletionHandler:(id)a5;
- (id)analyzeLibraryForFeature:(unint64_t)a3 withCompletionHandler:(id)a4;
- (id)forceSyndicationIngestAsyncToDate:(id)a3 withCompletionHandler:(id)a4;
- (id)getUUIDsForAssetObjectIDs:(id)a3 filterPredicate:(id)a4 context:(id)a5 error:(id *)a6;
- (id)ingestItemWithCoreSpotlightUniqueIdentifier:(id)a3 bundleID:(id)a4 purgeUrgency:(int64_t)a5 error:(id *)a6;
- (id)photoLibraryIdentifierWithError:(id *)a3;
- (id)processUniversalSearchJITForCoreSpotlightUniqueIdentifier:(id)a3 bundleID:(id)a4 processingTypes:(unint64_t)a5 error:(id *)a6;
- (id)reserveCloudIdentifiersWithEntityName:(id)a3 count:(unint64_t)a4 error:(id *)a5;
- (id)reservedCloudIdentifiersWithEntityName:(id)a3 error:(id *)a4;
- (id)resolveLocalIdentifiersForCloudIdentifiers:(id)a3 error:(id *)a4;
- (void)sendChangesRequest:(id)a3 reply:(id)a4;
@end

@implementation PLAssetsdPhotoKitClient

- (id)photoLibraryIdentifierWithError:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: photoLibraryIdentifierWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v26 + 1);
    *(&v26 + 1) = v6;

    os_activity_scope_enter(v6, (&v27 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__992;
  v32 = __Block_byref_object_dispose__993;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__992;
  v24 = __Block_byref_object_dispose__993;
  v25 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__PLAssetsdPhotoKitClient_photoLibraryIdentifierWithError___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &v20;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__PLAssetsdPhotoKitClient_photoLibraryIdentifierWithError___block_invoke_39;
  v18[3] = &unk_1E792FAC8;
  v18[4] = &buf;
  v18[5] = &v20;
  [v9 getPhotoLibraryIdentifierWithReply:v18];

  v10 = *(*(&buf + 1) + 40);
  v11 = v21[5];
  if (!v10 && a3)
  {
    v11 = v11;
    *a3 = v11;
  }

  v12 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&buf, 8);
  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(*(&v28 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v12;
}

void __59__PLAssetsdPhotoKitClient_photoLibraryIdentifierWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient photoLibraryIdentifierWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __59__PLAssetsdPhotoKitClient_photoLibraryIdentifierWithError___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Error getting photo library identifier: %@", &v9, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)resetStateForMediaProcessingTaskID:(unint64_t)a3 assetUUIDs:(id)a4 resetOptions:(unint64_t)a5 error:(id *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v31) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resetStateForMediaProcessingTaskID:assetUUIDs:resetOptions:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v31 + 1);
    *(&v31 + 1) = v12;

    os_activity_scope_enter(v12, (&v32 + 8));
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__992;
  v37 = __Block_byref_object_dispose__993;
  v38 = 0;
  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __92__PLAssetsdPhotoKitClient_resetStateForMediaProcessingTaskID_assetUUIDs_resetOptions_error___block_invoke;
  v26[3] = &unk_1E7932770;
  v26[4] = &buf;
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v26];

  if (v15)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __92__PLAssetsdPhotoKitClient_resetStateForMediaProcessingTaskID_assetUUIDs_resetOptions_error___block_invoke_38;
    v25[3] = &unk_1E7932E48;
    v25[4] = &v27;
    v25[5] = &buf;
    v16 = [v15 resetStateForMediaProcessingTaskID:a3 assetUUIDs:v10 resetOptions:a5 reply:v25];
    v17 = *(v28 + 24);
    v18 = *(*(&buf + 1) + 40);
    if ((v17 & 1) == 0 && a6)
    {
      v18 = v18;
      *a6 = v18;
    }

    v19 = *(v28 + 24);
  }

  else
  {
    v19 = 0;
    if (a6)
    {
      *a6 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v27, 8);
  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      Name = sel_getName(*(&v33 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19 & 1;
}

void __92__PLAssetsdPhotoKitClient_resetStateForMediaProcessingTaskID_assetUUIDs_resetOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient resetStateForMediaProcessingTaskID:assetUUIDs:resetOptions:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __92__PLAssetsdPhotoKitClient_resetStateForMediaProcessingTaskID_assetUUIDs_resetOptions_error___block_invoke_38(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (id)analyzeLibraryForFeature:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: analyzeLibraryForFeature:withCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v22 + 1);
    *(&v22 + 1) = v8;

    os_activity_scope_enter(v8, (&v23 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__992;
  v28 = __Block_byref_object_dispose__993;
  v29 = 0;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __74__PLAssetsdPhotoKitClient_analyzeLibraryForFeature_withCompletionHandler___block_invoke;
  v21[3] = &unk_1E7932770;
  v21[4] = &buf;
  v11 = [v10 remoteObjectProxyWithErrorHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__PLAssetsdPhotoKitClient_analyzeLibraryForFeature_withCompletionHandler___block_invoke_37;
  v19[3] = &unk_1E7932DA8;
  v12 = v6;
  v20 = v12;
  v13 = [v11 analyzeLibraryForFeature:a3 reply:v19];

  _Block_object_dispose(&buf, 8);
  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v13;
}

void __74__PLAssetsdPhotoKitClient_analyzeLibraryForFeature_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient analyzeLibraryForFeature:withCompletionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __74__PLAssetsdPhotoKitClient_analyzeLibraryForFeature_withCompletionHandler___block_invoke_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = [PLResult failureWithError:a2];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = [PLResult successWithResult:v4];

    v3 = v5;
  }

  v6 = v3;
  (*(v2 + 16))(v2);
}

- (id)analyzeAssets:(id)a3 forFeature:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v10 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: analyzeAssets:forFeature:withCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v25 + 1);
    *(&v25 + 1) = v11;

    os_activity_scope_enter(v11, (&v26 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__992;
  v31 = __Block_byref_object_dispose__993;
  v32 = 0;
  v13 = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __74__PLAssetsdPhotoKitClient_analyzeAssets_forFeature_withCompletionHandler___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v14 = [v13 remoteObjectProxyWithErrorHandler:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__PLAssetsdPhotoKitClient_analyzeAssets_forFeature_withCompletionHandler___block_invoke_36;
  v22[3] = &unk_1E7932DA8;
  v15 = v9;
  v23 = v15;
  v16 = [v14 analyzeAssets:v8 forFeature:a4 reply:v22];

  _Block_object_dispose(&buf, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v16;
}

void __74__PLAssetsdPhotoKitClient_analyzeAssets_forFeature_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient analyzeAssets:forFeature:withCompletionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __74__PLAssetsdPhotoKitClient_analyzeAssets_forFeature_withCompletionHandler___block_invoke_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = [PLResult failureWithError:a2];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = [PLResult successWithResult:v4];

    v3 = v5;
  }

  v6 = v3;
  (*(v2 + 16))(v2);
}

- (id)forceSyndicationIngestAsyncToDate:(id)a3 withCompletionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: forceSyndicationIngestAsyncToDate:withCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  v11 = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __83__PLAssetsdPhotoKitClient_forceSyndicationIngestAsyncToDate_withCompletionHandler___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v12 = v7;
  v24 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __83__PLAssetsdPhotoKitClient_forceSyndicationIngestAsyncToDate_withCompletionHandler___block_invoke_35;
  v21[3] = &unk_1E7932DA8;
  v14 = v12;
  v22 = v14;
  v15 = [v13 forceSyndicationIngestAsyncToDate:v6 reply:v21];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v15;
}

void __83__PLAssetsdPhotoKitClient_forceSyndicationIngestAsyncToDate_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient forceSyndicationIngestAsyncToDate:withCompletionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = [PLResult failureWithError:v3];
  (*(v5 + 16))(v5, v6);
}

void __83__PLAssetsdPhotoKitClient_forceSyndicationIngestAsyncToDate_withCompletionHandler___block_invoke_35(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "forceSyndicationIngestUpToDate failed with error %@", &v7, 0xCu);
    }

    v5 = [PLResult failureWithError:v3];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    v5 = [PLResult successWithResult:v6];
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)forceSyndicationIngestSyncToDate:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: forceSyndicationIngestSyncToDate:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v22 + 1);
    *(&v22 + 1) = v8;

    os_activity_scope_enter(v8, (&v23 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__992;
  v28 = __Block_byref_object_dispose__993;
  v29 = 0;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66__PLAssetsdPhotoKitClient_forceSyndicationIngestSyncToDate_error___block_invoke;
  v21[3] = &unk_1E7932770;
  v21[4] = &buf;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__PLAssetsdPhotoKitClient_forceSyndicationIngestSyncToDate_error___block_invoke_33;
  v20[3] = &unk_1E7932770;
  v20[4] = &buf;
  v12 = [v11 forceSyndicationIngestAsyncToDate:v6 reply:v20];

  v13 = *(*(&buf + 1) + 40);
  v14 = v13;
  if (v13 && a4)
  {
    v14 = v14;
    *a4 = v14;
  }

  _Block_object_dispose(&buf, 8);
  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v13 == 0;
}

void __66__PLAssetsdPhotoKitClient_forceSyndicationIngestSyncToDate_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient forceSyndicationIngestSyncToDate:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__PLAssetsdPhotoKitClient_forceSyndicationIngestSyncToDate_error___block_invoke_33(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "forceSyndicationIngestUpToDate failed with error %@", &v7, 0xCu);
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)ingestItemWithCoreSpotlightUniqueIdentifier:(id)a3 bundleID:(id)a4 purgeUrgency:(int64_t)a5 error:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v37) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: ingestItemWithCoreSpotlightUniqueIdentifier:bundleID:purgeUrgency:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v37 + 1);
    *(&v37 + 1) = v13;

    os_activity_scope_enter(v13, (&v38 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__992;
  v43 = __Block_byref_object_dispose__993;
  v44 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__992;
  v35 = __Block_byref_object_dispose__993;
  v36 = 0;
  v15 = [(PLAssetsdBaseClient *)self proxyFactory];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __99__PLAssetsdPhotoKitClient_ingestItemWithCoreSpotlightUniqueIdentifier_bundleID_purgeUrgency_error___block_invoke;
  v30[3] = &unk_1E7932770;
  v30[4] = &v31;
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v30];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__PLAssetsdPhotoKitClient_ingestItemWithCoreSpotlightUniqueIdentifier_bundleID_purgeUrgency_error___block_invoke_32;
  v25[3] = &unk_1E792FAA0;
  v17 = v11;
  v26 = v17;
  v18 = v10;
  v27 = v18;
  v28 = &v31;
  p_buf = &buf;
  [v16 ingestItemWithCoreSpotlightUniqueIdentifier:v18 bundleID:v17 purgeUrgency:a5 reply:v25];

  if (a6)
  {
    *a6 = v32[5];
  }

  v19 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&buf, 8);

  if (v37 == 1)
  {
    os_activity_scope_leave((&v38 + 8));
  }

  if (v38)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v38;
    if ((v38 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      Name = sel_getName(*(&v39 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __99__PLAssetsdPhotoKitClient_ingestItemWithCoreSpotlightUniqueIdentifier_bundleID_purgeUrgency_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient ingestItemWithCoreSpotlightUniqueIdentifier:bundleID:purgeUrgency:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __99__PLAssetsdPhotoKitClient_ingestItemWithCoreSpotlightUniqueIdentifier_bundleID_purgeUrgency_error___block_invoke_32(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v12 = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Ingest failed for %{public}@ : %{public}@ : %@", &v12, 0x20u);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }

  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

- (BOOL)processUniversalSearchJITForAssetUUID:(id)a3 processingTypes:(unint64_t)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: processUniversalSearchJITForAssetUUID:processingTypes:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v26 + 1);
    *(&v26 + 1) = v10;

    os_activity_scope_enter(v10, (&v27 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__992;
  v32 = __Block_byref_object_dispose__993;
  v33 = 0;
  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __87__PLAssetsdPhotoKitClient_processUniversalSearchJITForAssetUUID_processingTypes_error___block_invoke;
  v25[3] = &unk_1E7932770;
  v25[4] = &buf;
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v25];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__PLAssetsdPhotoKitClient_processUniversalSearchJITForAssetUUID_processingTypes_error___block_invoke_31;
  v22[3] = &unk_1E7932608;
  v14 = v8;
  v23 = v14;
  p_buf = &buf;
  [v13 processUniversalSearchJITForAssetUUID:v14 processingTypes:a4 reply:v22];

  v15 = *(*(&buf + 1) + 40);
  v16 = v15;
  if (v15 && a5)
  {
    v16 = v16;
    *a5 = v16;
  }

  _Block_object_dispose(&buf, 8);
  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v15 == 0;
}

void __87__PLAssetsdPhotoKitClient_processUniversalSearchJITForAssetUUID_processingTypes_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient processUniversalSearchJITForAssetUUID:processingTypes:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __87__PLAssetsdPhotoKitClient_processUniversalSearchJITForAssetUUID_processingTypes_error___block_invoke_31(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 138543618;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "US JIT Processing failed for asset %{public}@ : %@", &v8, 0x16u);
    }
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

- (id)processUniversalSearchJITForCoreSpotlightUniqueIdentifier:(id)a3 bundleID:(id)a4 processingTypes:(unint64_t)a5 error:(id *)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v39) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: processUniversalSearchJITForCoreSpotlightUniqueIdentifier:bundleID:processingTypes:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v39 + 1);
    *(&v39 + 1) = v13;

    os_activity_scope_enter(v13, (&v40 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__992;
  v45 = __Block_byref_object_dispose__993;
  v46 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__992;
  v37 = __Block_byref_object_dispose__993;
  v38 = 0;
  v15 = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __116__PLAssetsdPhotoKitClient_processUniversalSearchJITForCoreSpotlightUniqueIdentifier_bundleID_processingTypes_error___block_invoke;
  v32[3] = &unk_1E7932770;
  v32[4] = &v33;
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v32];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __116__PLAssetsdPhotoKitClient_processUniversalSearchJITForCoreSpotlightUniqueIdentifier_bundleID_processingTypes_error___block_invoke_29;
  v27[3] = &unk_1E792FAA0;
  p_buf = &buf;
  v17 = v11;
  v28 = v17;
  v18 = v10;
  v29 = v18;
  v31 = &v33;
  [v16 processUniversalSearchJITForCoreSpotlightUniqueIdentifier:v18 bundleID:v17 processingTypes:a5 reply:v27];

  v19 = *(*(&buf + 1) + 40);
  v20 = v34[5];
  if (!v19 && a6)
  {
    v20 = v20;
    *a6 = v20;
  }

  v21 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&buf, 8);
  if (v39 == 1)
  {
    os_activity_scope_leave((&v40 + 8));
  }

  if (v40)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v40;
    if ((v40 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      Name = sel_getName(*(&v41 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v21;
}

void __116__PLAssetsdPhotoKitClient_processUniversalSearchJITForCoreSpotlightUniqueIdentifier_bundleID_processingTypes_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient processUniversalSearchJITForCoreSpotlightUniqueIdentifier:bundleID:processingTypes:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __116__PLAssetsdPhotoKitClient_processUniversalSearchJITForCoreSpotlightUniqueIdentifier_bundleID_processingTypes_error___block_invoke_29(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (!v6)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "US JIT Processing failed for %{public}@ : %{public}@ : %@", &v11, 0x20u);
    }

    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }
}

- (id)getUUIDsForAssetObjectIDs:(id)a3 filterPredicate:(id)a4 context:(id)a5 error:(id *)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v47 = 0u;
  *sel = 0u;
  v46 = 0u;
  v13 = +[PLXPCMessageLogger enabled];
  LOBYTE(v46) = v13;
  if (v13)
  {
    v14 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getUUIDsForAssetObjectIDs:filterPredicate:context:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15 = *(&v46 + 1);
    *(&v46 + 1) = v14;

    os_activity_scope_enter(v14, (&v47 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__992;
  v53 = __Block_byref_object_dispose__993;
  v54 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__992;
  v44 = __Block_byref_object_dispose__993;
  v45 = 0;
  v16 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v18)
  {
    v19 = *v37;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v36 + 1) + 8 * i) URIRepresentation];
        [v16 addObject:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v18);
  }

  v22 = [(PLAssetsdBaseClient *)self proxyFactory];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __83__PLAssetsdPhotoKitClient_getUUIDsForAssetObjectIDs_filterPredicate_context_error___block_invoke;
  v35[3] = &unk_1E7932770;
  v35[4] = &buf;
  v23 = [v22 synchronousRemoteObjectProxyWithErrorHandler:v35];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __83__PLAssetsdPhotoKitClient_getUUIDsForAssetObjectIDs_filterPredicate_context_error___block_invoke_25;
  v31[3] = &unk_1E792FA78;
  p_buf = &buf;
  v24 = v12;
  v32 = v24;
  v34 = &v40;
  [v23 getUUIDsForAssetObjectURIs:v16 filterPredicate:v11 reply:v31];

  if (a6)
  {
    *a6 = *(*(&buf + 1) + 40);
  }

  v25 = v41[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&buf, 8);

  if (v46 == 1)
  {
    os_activity_scope_leave((&v47 + 8));
  }

  if (v47)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    v28 = v47;
    if ((v47 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v27, OS_SIGNPOST_INTERVAL_END, v28, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v25;
}

void __83__PLAssetsdPhotoKitClient_getUUIDsForAssetObjectIDs_filterPredicate_context_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient getUUIDsForAssetObjectIDs:filterPredicate:context:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __83__PLAssetsdPhotoKitClient_getUUIDsForAssetObjectIDs_filterPredicate_context_error___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Received error getting uuids for asset object IDs, error: %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [*(a1 + 32) persistentStoreCoordinator];
    v12 = [MEMORY[0x1E695DF90] dictionary];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__PLAssetsdPhotoKitClient_getUUIDsForAssetObjectIDs_filterPredicate_context_error___block_invoke_27;
    v17[3] = &unk_1E792FA50;
    v18 = v11;
    v13 = v12;
    v19 = v13;
    v10 = v11;
    [v5 enumerateKeysAndObjectsUsingBlock:v17];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
    v16 = v13;
  }
}

void __83__PLAssetsdPhotoKitClient_getUUIDsForAssetObjectIDs_filterPredicate_context_error___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) managedObjectIDForURIRepresentation:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v6 forKey:v5];
  }
}

- (BOOL)cancelReservedCloudIdentifiers:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v31) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: cancelReservedCloudIdentifiers:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v31 + 1);
    *(&v31 + 1) = v8;

    os_activity_scope_enter(v8, (&v32 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__992;
  v37 = __Block_byref_object_dispose__993;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v10 = [MEMORY[0x1E695DF70] array];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __64__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiers_error___block_invoke;
  v23[3] = &unk_1E792FA28;
  v11 = v10;
  v24 = v11;
  p_buf = &buf;
  v26 = &v27;
  [v6 enumerateObjectsUsingBlock:v23];
  if (*(v28 + 24) != 1)
  {
    v14 = *(*(&buf + 1) + 40);
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiers_error___block_invoke_2;
  v22[3] = &unk_1E7932770;
  v22[4] = &buf;
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiers_error___block_invoke_24;
  v21[3] = &unk_1E7932E48;
  v21[4] = &v27;
  v21[5] = &buf;
  [v13 cancelReservedCloudIdentifiers:v11 reply:v21];

  LOBYTE(v12) = *(v28 + 24);
  v14 = *(*(&buf + 1) + 40);
  if ((v12 & 1) == 0 && a4)
  {
LABEL_8:
    v14 = v14;
    *a4 = v14;
  }

LABEL_9:

  v15 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&buf, 8);

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v15;
}

void __64__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiers_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a2;
  v11 = [[v6 alloc] initWithUUIDString:v7];

  if (v11)
  {
    [*(a1 + 32) addObject:v11];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.error" code:46111 userInfo:0];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __64__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiers_error___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient cancelReservedCloudIdentifiers:error:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __64__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiers_error___block_invoke_24(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Received error cancelling reserved cloud identifiers, error: %@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (BOOL)cancelReservedCloudIdentifiersWithEntityName:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: cancelReservedCloudIdentifiersWithEntityName:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v26 + 1);
    *(&v26 + 1) = v8;

    os_activity_scope_enter(v8, (&v27 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__992;
  v32 = __Block_byref_object_dispose__993;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiersWithEntityName_error___block_invoke;
  v21[3] = &unk_1E7932770;
  v21[4] = &buf;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiersWithEntityName_error___block_invoke_20;
  v20[3] = &unk_1E7932E48;
  v20[4] = &v22;
  v20[5] = &buf;
  [v11 cancelReservedCloudIdentifiersWithEntityName:v6 reply:v20];

  v12 = *(v23 + 24);
  v13 = *(*(&buf + 1) + 40);
  if (a4 && (v12 & 1) == 0)
  {
    v13 = v13;
    *a4 = v13;
  }

  v14 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&buf, 8);

  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v28 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __78__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiersWithEntityName_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient cancelReservedCloudIdentifiersWithEntityName:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __78__PLAssetsdPhotoKitClient_cancelReservedCloudIdentifiersWithEntityName_error___block_invoke_20(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Received error cancelling reserved cloud identifiers, error: %@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)reservedCloudIdentifiersWithEntityName:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: reservedCloudIdentifiersWithEntityName:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v28 + 1);
    *(&v28 + 1) = v8;

    os_activity_scope_enter(v8, (&v29 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__992;
  v34 = __Block_byref_object_dispose__993;
  v35 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__992;
  v26 = __Block_byref_object_dispose__993;
  v27 = 0;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__PLAssetsdPhotoKitClient_reservedCloudIdentifiersWithEntityName_error___block_invoke;
  v21[3] = &unk_1E7932770;
  v21[4] = &buf;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__PLAssetsdPhotoKitClient_reservedCloudIdentifiersWithEntityName_error___block_invoke_18;
  v20[3] = &unk_1E7931E38;
  v20[4] = &buf;
  v20[5] = &v22;
  [v11 reservedCloudIdentifiersWithEntityName:v6 reply:v20];

  v12 = v23[5];
  v13 = *(*(&buf + 1) + 40);
  if (!v12 && a4)
  {
    v13 = v13;
    *a4 = v13;
  }

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&buf, 8);
  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v30 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __72__PLAssetsdPhotoKitClient_reservedCloudIdentifiersWithEntityName_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient reservedCloudIdentifiersWithEntityName:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __72__PLAssetsdPhotoKitClient_reservedCloudIdentifiersWithEntityName_error___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Received error retrieving reserved cloud identifiers, error: %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__PLAssetsdPhotoKitClient_reservedCloudIdentifiersWithEntityName_error___block_invoke_19;
    v15[3] = &unk_1E792FA00;
    v16 = v11;
    v10 = v11;
    [v5 enumerateObjectsUsingBlock:v15];
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void __72__PLAssetsdPhotoKitClient_reservedCloudIdentifiersWithEntityName_error___block_invoke_19(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUIDString];
  [v2 addObject:v3];
}

- (id)reserveCloudIdentifiersWithEntityName:(id)a3 count:(unint64_t)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v30) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: reserveCloudIdentifiersWithEntityName:count:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v30 + 1);
    *(&v30 + 1) = v10;

    os_activity_scope_enter(v10, (&v31 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__992;
  v36 = __Block_byref_object_dispose__993;
  v37 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__992;
  v28 = __Block_byref_object_dispose__993;
  v29 = 0;
  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__PLAssetsdPhotoKitClient_reserveCloudIdentifiersWithEntityName_count_error___block_invoke;
  v23[3] = &unk_1E7932770;
  v23[4] = &buf;
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v23];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__PLAssetsdPhotoKitClient_reserveCloudIdentifiersWithEntityName_count_error___block_invoke_12;
  v22[3] = &unk_1E7931E38;
  v22[4] = &buf;
  v22[5] = &v24;
  [v13 reserveCloudIdentifiersWithEntityName:v8 count:a4 reply:v22];

  v14 = v25[5];
  v15 = *(*(&buf + 1) + 40);
  if (!v14 && a5)
  {
    v15 = v15;
    *a5 = v15;
  }

  v16 = v25[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&buf, 8);
  if (v30 == 1)
  {
    os_activity_scope_leave((&v31 + 8));
  }

  if (v31)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v31;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(*(&v32 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v16;
}

void __77__PLAssetsdPhotoKitClient_reserveCloudIdentifiersWithEntityName_count_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient reserveCloudIdentifiersWithEntityName:count:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __77__PLAssetsdPhotoKitClient_reserveCloudIdentifiersWithEntityName_count_error___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Received error reserving cloud identifiers, error: %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PLAssetsdPhotoKitClient_reserveCloudIdentifiersWithEntityName_count_error___block_invoke_14;
    v15[3] = &unk_1E792FA00;
    v16 = v11;
    v10 = v11;
    [v5 enumerateObjectsUsingBlock:v15];
    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:v10];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void __77__PLAssetsdPhotoKitClient_reserveCloudIdentifiersWithEntityName_count_error___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUIDString];
  [v2 addObject:v3];
}

- (id)resolveLocalIdentifiersForCloudIdentifiers:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resolveLocalIdentifiersForCloudIdentifiers:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v26 + 1);
    *(&v26 + 1) = v8;

    os_activity_scope_enter(v8, (&v27 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__992;
  v32 = __Block_byref_object_dispose__993;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__992;
  v24 = __Block_byref_object_dispose__993;
  v25 = 0;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__PLAssetsdPhotoKitClient_resolveLocalIdentifiersForCloudIdentifiers_error___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &buf;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__PLAssetsdPhotoKitClient_resolveLocalIdentifiersForCloudIdentifiers_error___block_invoke_10;
  v18[3] = &unk_1E7930BB0;
  v18[4] = &buf;
  v18[5] = &v20;
  [v11 resolveLocalIdentifiersForCloudIdentifiers:v6 reply:v18];

  if (a4)
  {
    *a4 = *(*(&buf + 1) + 40);
  }

  v12 = v21[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&buf, 8);
  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(*(&v28 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v12;
}

void __76__PLAssetsdPhotoKitClient_resolveLocalIdentifiersForCloudIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdPhotoKitClient resolveLocalIdentifiersForCloudIdentifiers:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __76__PLAssetsdPhotoKitClient_resolveLocalIdentifiersForCloudIdentifiers_error___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Received error getting uuids for local cloud identifiers, error: %@", &v10, 0xCu);
    }

    v9 = 32;
  }

  else
  {
    v9 = 40;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), a3);
}

- (BOOL)sendChangesRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PLAssetsdBaseClient *)self proxyFactory];
  LOBYTE(a4) = [PLAssetsdPhotoKitClient sendChangesRequest:v6 usingProxyFactory:v7 error:a4];

  return a4;
}

- (void)sendChangesRequest:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  [PLAssetsdPhotoKitClient sendChangesRequest:v7 usingProxyFactory:v8 reply:v6];
}

+ (BOOL)sendChangesRequest:(id)a3 usingProxyFactory:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v30) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendChangesRequest:usingProxyFactory:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v30 + 1);
    *(&v30 + 1) = v10;

    os_activity_scope_enter(v10, (&v31 + 8));
  }

  v12 = [v8 queue];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__992;
  v36 = __Block_byref_object_dispose__993;
  v37 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__PLAssetsdPhotoKitClient_sendChangesRequest_usingProxyFactory_error___block_invoke;
  v22[3] = &unk_1E7932E20;
  v13 = v8;
  v23 = v13;
  v24 = &v26;
  p_buf = &buf;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v22];
  [PLAssetsdPhotoKitClient setInTransactionProxy:1 queue:v12];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__PLAssetsdPhotoKitClient_sendChangesRequest_usingProxyFactory_error___block_invoke_9;
  v21[3] = &unk_1E7932E48;
  v21[4] = &v26;
  v21[5] = &buf;
  [v14 applyChangesRequest:v7 reply:v21];
  [PLAssetsdPhotoKitClient setInTransactionProxy:0 queue:v12];
  if (v27[3])
  {
    v15 = 1;
  }

  else if (a5)
  {
    *a5 = *(*(&buf + 1) + 40);
    v15 = *(v27 + 24);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v26, 8);

  if (v30 == 1)
  {
    os_activity_scope_leave((&v31 + 8));
  }

  if (v31)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v31;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(*(&v32 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v15 & 1;
}

void __70__PLAssetsdPhotoKitClient_sendChangesRequest_usingProxyFactory_error___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[4];
    v6 = NSStringFromSelector(sel_sendChangesRequest_usingProxyFactory_error_);
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error received from proxy factory %{public}@ in %{public}@: %@", &v9, 0x20u);
  }

  *(*(a1[5] + 8) + 24) = 0;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
}

+ (void)sendChangesRequest:(id)a3 usingProxyFactory:(id)a4 reply:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendChangesRequest:usingProxyFactory:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v33 + 1);
    *(&v33 + 1) = v12;

    os_activity_scope_enter(v12, (&v34 + 8));
  }

  v14 = [v9 queue];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __70__PLAssetsdPhotoKitClient_sendChangesRequest_usingProxyFactory_reply___block_invoke;
  v31[3] = &unk_1E7932DA8;
  v32 = v10;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3254779904;
  v22[2] = __70__PLAssetsdPhotoKitClient_sendChangesRequest_usingProxyFactory_reply___block_invoke_3;
  v22[3] = &unk_1F1F72688;
  v26 = v33;
  v27 = *(&v33 + 1);
  v28 = v34;
  v29 = v35;
  v30 = a2;
  v15 = v14;
  v23 = v15;
  v16 = v8;
  v24 = v16;
  v17 = v32;
  v25 = v17;
  [v9 remoteObjectProxyWithErrorHandler:v31 handler:v22];

  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(*(&v35 + 1));
      *buf = 136446210;
      v37 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __70__PLAssetsdPhotoKitClient_sendChangesRequest_usingProxyFactory_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446466;
    v6 = "+[PLAssetsdPhotoKitClient sendChangesRequest:usingProxyFactory:reply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %{public}s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __70__PLAssetsdPhotoKitClient_sendChangesRequest_usingProxyFactory_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
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
      v10 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  [PLAssetsdPhotoKitClient setInTransactionProxy:1 queue:*(a1 + 32)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PLAssetsdPhotoKitClient_sendChangesRequest_usingProxyFactory_reply___block_invoke_6;
  v12[3] = &unk_1E7932DD0;
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  [v3 applyChangesRequest:v11 reply:v12];
  [PLAssetsdPhotoKitClient setInTransactionProxy:0 queue:*(a1 + 32)];
}

@end