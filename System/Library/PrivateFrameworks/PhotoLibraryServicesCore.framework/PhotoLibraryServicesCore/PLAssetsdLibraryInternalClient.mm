@interface PLAssetsdLibraryInternalClient
- (BOOL)_inProcess_getLibrarySizesFromDB:(BOOL)a3 handler:(id)a4;
- (BOOL)backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet:(id *)a3;
- (BOOL)checkAssetsArePendingForDuplicateMergeProcessing:(id)a3;
- (BOOL)clearAvailabilityStateWithError:(id *)a3;
- (BOOL)deleteAllInitialSuggestionsWithError:(id *)a3;
- (BOOL)failAvailabilityWithError:(id *)a3;
- (BOOL)generateInitialSuggestionsWithStyleType:(unint64_t)a3 error:(id *)a4;
- (BOOL)invalidateReverseLocationDataOnAllAssetsWithError:(id *)a3;
- (BOOL)processIdenticalDuplicatesWithProcessingType:(unint64_t)a3 error:(id *)a4;
- (BOOL)registerBackgroundJobServiceIfNecessaryOnLibraryPath:(id)a3 error:(id *)a4;
- (BOOL)repairMemoriesWithUUIDs:(id)a3 error:(id *)a4;
- (BOOL)setKeywords:(id)a3 forAssetWithUUID:(id)a4;
- (BOOL)signalAvailabilityWithChanges:(id)a3 error:(id *)a4;
- (BOOL)synchronouslyGetSizeOfResourcesToUploadByCPL:(int64_t *)a3 error:(id *)a4;
- (BOOL)synchronouslyMarkPersonAsNeedingKeyFace:(id)a3 error:(id *)a4;
- (BOOL)updateInitialSuggestionsWithIdentifiers:(id)a3 dateLastUsed:(id)a4 error:(id *)a5;
- (BOOL)waitForSearchIndexExistenceWithError:(id *)a3;
- (id)_librarySizesQueue;
- (id)availabilityStateShouldPersist:(BOOL)a3 error:(id *)a4;
- (id)featureProcessingSnapshotWithError:(id *)a3;
- (id)getBackgroundJobServiceBundlesInQueueDictionaryWithError:(id *)a3;
- (id)getBackgroundJobServiceStatusCenterDumpWithError:(id *)a3;
- (id)metricsForLibraryAtURL:(id)a3 error:(id *)a4;
- (id)readAppPrivateDataBelongingToBundleID:(id)a3 error:(id *)a4;
- (unint64_t)getBackgroundJobServiceStateWithError:(id *)a3;
- (void)_getLibrarySizesFromDB:(BOOL)a3 completionHandler:(id)a4;
- (void)coreAnalyticsLibrarySummaryDataWithCompletionHandler:(id)a3;
- (void)deleteiTunesSyncedContentWithCompletionHandler:(id)a3;
- (void)forceRunBackgroundJobsOnLibraryPath:(id)a3 criteriaShortCode:(id)a4 completionHandler:(id)a5;
- (void)getAssetCountsWithReply:(id)a3;
- (void)getLibrarySizesFromDB:(BOOL)a3 completionHandler:(id)a4;
- (void)getSearchIndexProgress:(id)a3;
- (void)markPersonAsNeedingKeyFace:(id)a3 completionHandler:(id)a4;
- (void)mergeDuplicateAssetUuidSelection:(id)a3 completionHandler:(id)a4;
- (void)pauseSearchIndexingWithCompletionHandler:(id)a3;
- (void)reloadMomentGenerationOptions;
- (void)resetLimitedLibraryAccessForApplication:(id)a3 completionHandler:(id)a4;
- (void)resumeSearchIndexingWithCompletionHandler:(id)a3;
- (void)setFetchFilterWithAssets:(id)a3 forApplication:(id)a4 withAuditToken:(id *)a5 completionHandler:(id)a6;
- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)a3 completionHandler:(id)a4;
- (void)updateAssetLocationDataWithUUID:(id)a3 completionHandler:(id)a4;
@end

@implementation PLAssetsdLibraryInternalClient

- (BOOL)signalAvailabilityWithChanges:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: signalAvailabilityWithChanges:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v26 + 1);
    *(&v26 + 1) = v8;

    os_activity_scope_enter(v8, (&v27 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3555;
  v32 = __Block_byref_object_dispose__3556;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__PLAssetsdLibraryInternalClient_signalAvailabilityWithChanges_error___block_invoke;
  v21[3] = &unk_1E7932360;
  v21[4] = &buf;
  v21[5] = &v22;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__PLAssetsdLibraryInternalClient_signalAvailabilityWithChanges_error___block_invoke_106;
  v20[3] = &unk_1E7932E48;
  v20[4] = &v22;
  v20[5] = &buf;
  [v11 signalAvailabilityWithChanges:v6 reply:v20];

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
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __70__PLAssetsdLibraryInternalClient_signalAvailabilityWithChanges_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[PLAssetsdLibraryInternalClient signalAvailabilityWithChanges:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

- (BOOL)failAvailabilityWithError:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: failAvailabilityWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3555;
  v30 = __Block_byref_object_dispose__3556;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__PLAssetsdLibraryInternalClient_failAvailabilityWithError___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__PLAssetsdLibraryInternalClient_failAvailabilityWithError___block_invoke_105;
  v18[3] = &unk_1E7932E48;
  v18[4] = &buf;
  v18[5] = &v20;
  [v9 failAvailabilityWithReply:v18];

  v10 = *(v21 + 24);
  v11 = *(*(&buf + 1) + 40);
  if (a3 && (v10 & 1) == 0)
  {
    v11 = v11;
    *a3 = v11;
  }

  v12 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(*(&v26 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v12;
}

void __60__PLAssetsdLibraryInternalClient_failAvailabilityWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient failAvailabilityWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __60__PLAssetsdLibraryInternalClient_failAvailabilityWithError___block_invoke_105(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)clearAvailabilityStateWithError:(id *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: clearAvailabilityStateWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3555;
  v30 = __Block_byref_object_dispose__3556;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__PLAssetsdLibraryInternalClient_clearAvailabilityStateWithError___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__PLAssetsdLibraryInternalClient_clearAvailabilityStateWithError___block_invoke_104;
  v18[3] = &unk_1E7932E48;
  v18[4] = &buf;
  v18[5] = &v20;
  [v9 clearAvailabilityWithReply:v18];

  v10 = *(v21 + 24);
  v11 = *(*(&buf + 1) + 40);
  if (a3 && (v10 & 1) == 0)
  {
    v11 = v11;
    *a3 = v11;
  }

  v12 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(*(&v26 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v12;
}

void __66__PLAssetsdLibraryInternalClient_clearAvailabilityStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient clearAvailabilityStateWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__PLAssetsdLibraryInternalClient_clearAvailabilityStateWithError___block_invoke_104(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (id)availabilityStateShouldPersist:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: availabilityStateShouldPersist:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v28 + 1);
    *(&v28 + 1) = v8;

    os_activity_scope_enter(v8, (&v29 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3555;
  v34 = __Block_byref_object_dispose__3556;
  v35 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3555;
  v26 = __Block_byref_object_dispose__3556;
  v27 = 0;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__PLAssetsdLibraryInternalClient_availabilityStateShouldPersist_error___block_invoke;
  v21[3] = &unk_1E7932770;
  v21[4] = &buf;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__PLAssetsdLibraryInternalClient_availabilityStateShouldPersist_error___block_invoke_103;
  v20[3] = &unk_1E7930BB0;
  v20[4] = &buf;
  v20[5] = &v22;
  [v11 availabilityStateShouldPersist:v5 reply:v20];

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

void __71__PLAssetsdLibraryInternalClient_availabilityStateShouldPersist_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient availabilityStateShouldPersist:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __71__PLAssetsdLibraryInternalClient_availabilityStateShouldPersist_error___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Failed to produced availability snapshot, error: %@", &v10, 0xCu);
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

- (id)featureProcessingSnapshotWithError:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: featureProcessingSnapshotWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v26 + 1);
    *(&v26 + 1) = v6;

    os_activity_scope_enter(v6, (&v27 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3555;
  v32 = __Block_byref_object_dispose__3556;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3555;
  v24 = __Block_byref_object_dispose__3556;
  v25 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__PLAssetsdLibraryInternalClient_featureProcessingSnapshotWithError___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__PLAssetsdLibraryInternalClient_featureProcessingSnapshotWithError___block_invoke_102;
  v18[3] = &unk_1E7930BB0;
  v18[4] = &buf;
  v18[5] = &v20;
  [v9 featureProcessingSnapshotWithReply:v18];

  v10 = v21[5];
  v11 = *(*(&buf + 1) + 40);
  if (!v10 && a3)
  {
    v11 = v11;
    *a3 = v11;
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

void __69__PLAssetsdLibraryInternalClient_featureProcessingSnapshotWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient featureProcessingSnapshotWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __69__PLAssetsdLibraryInternalClient_featureProcessingSnapshotWithError___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1AA9BD000, v8, OS_LOG_TYPE_ERROR, "Failed to produced processing snapshot, error: %@", &v10, 0xCu);
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

- (id)readAppPrivateDataBelongingToBundleID:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: readAppPrivateDataBelongingToBundleID:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v34 + 1);
    *(&v34 + 1) = v9;

    os_activity_scope_enter(v9, (&v35 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v36 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v35 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v36 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3555;
  v40 = __Block_byref_object_dispose__3556;
  v41 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3555;
  v32 = __Block_byref_object_dispose__3556;
  v33 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __78__PLAssetsdLibraryInternalClient_readAppPrivateDataBelongingToBundleID_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __78__PLAssetsdLibraryInternalClient_readAppPrivateDataBelongingToBundleID_error___block_invoke_2;
  v26[3] = &unk_1E7930BB0;
  v26[4] = &v28;
  v26[5] = &buf;
  [v17 readAppPrivateDataBelongingToBundleID:v7 reply:v26];

  v18 = v29[5];
  v19 = *(*(&buf + 1) + 40);
  if (!v18 && a4)
  {
    v19 = v19;
    *a4 = v19;
  }

  v20 = v29[5];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&buf, 8);
  if (v34 == 1)
  {
    os_activity_scope_leave((&v35 + 8));
  }

  if (v35)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v35;
    if ((v35 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(*(&v36 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20;
}

void __78__PLAssetsdLibraryInternalClient_readAppPrivateDataBelongingToBundleID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)metricsForLibraryAtURL:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: metricsForLibraryAtURL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v33 + 1);
    *(&v33 + 1) = v9;

    os_activity_scope_enter(v9, (&v34 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v35 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v34 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v35 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__3555;
  v39 = __Block_byref_object_dispose__3556;
  v40 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3555;
  v31 = __Block_byref_object_dispose__3556;
  v32 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__PLAssetsdLibraryInternalClient_metricsForLibraryAtURL_error___block_invoke;
  v26[3] = &unk_1E7932770;
  v26[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __63__PLAssetsdLibraryInternalClient_metricsForLibraryAtURL_error___block_invoke_2;
  v25[3] = &unk_1E7930BB0;
  v25[4] = &v27;
  v25[5] = &buf;
  [v17 metricsForLibraryAtURL:v7 reply:v25];

  v18 = v28[5];
  if (!v18)
  {
    if (a4)
    {
      *a4 = *(*(&buf + 1) + 40);
      v18 = v28[5];
    }

    else
    {
      v18 = 0;
    }
  }

  v19 = v18;
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&buf, 8);
  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(*(&v35 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __63__PLAssetsdLibraryInternalClient_metricsForLibraryAtURL_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)mergeDuplicateAssetUuidSelection:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: mergeDuplicateAssetUuidSelection:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v23 + 1);
    *(&v23 + 1) = v9;

    os_activity_scope_enter(v9, (&v24 + 8));
  }

  v11 = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__PLAssetsdLibraryInternalClient_mergeDuplicateAssetUuidSelection_completionHandler___block_invoke;
  v21[3] = &unk_1E7932DA8;
  v22 = v7;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PLAssetsdLibraryInternalClient_mergeDuplicateAssetUuidSelection_completionHandler___block_invoke_2;
  v18[3] = &unk_1E79302D0;
  v12 = v6;
  v19 = v12;
  v13 = v22;
  v20 = v13;
  [v11 remoteObjectProxyWithErrorHandler:v21 handler:v18];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (BOOL)checkAssetsArePendingForDuplicateMergeProcessing:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: checkAssetsArePendingForDuplicateMergeProcessing:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v23 + 1);
    *(&v23 + 1) = v7;

    os_activity_scope_enter(v7, (&v24 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v24 = v10;
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x2020000000;
  v28 = 0;
  v14 = [(PLAssetsdBaseClient *)self proxyFactory];
  v15 = [v14 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_98];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__PLAssetsdLibraryInternalClient_checkAssetsArePendingForDuplicateMergeProcessing___block_invoke_99;
  v22[3] = &unk_1E7930BD8;
  v22[4] = &buf;
  [v15 assetsArePendingForDuplicateMergeProcessing:v5 reply:v22];

  v16 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v20;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v16;
}

void __83__PLAssetsdLibraryInternalClient_checkAssetsArePendingForDuplicateMergeProcessing___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient checkAssetsArePendingForDuplicateMergeProcessing:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)processIdenticalDuplicatesWithProcessingType:(unint64_t)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v32) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: processIdenticalDuplicatesWithProcessingType:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v32 + 1);
    *(&v32 + 1) = v9;

    os_activity_scope_enter(v9, (&v33 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v34 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v33 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v34 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3555;
  v38 = __Block_byref_object_dispose__3556;
  v39 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __85__PLAssetsdLibraryInternalClient_processIdenticalDuplicatesWithProcessingType_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __85__PLAssetsdLibraryInternalClient_processIdenticalDuplicatesWithProcessingType_error___block_invoke_96;
  v26[3] = &unk_1E7932E48;
  v26[4] = &v28;
  v26[5] = &buf;
  [v17 processIdenticalDuplicatesWithProcessingType:a3 reply:v26];

  v18 = *(v29 + 24);
  v19 = *(*(&buf + 1) + 40);
  if (a4 && (v18 & 1) == 0)
  {
    v19 = v19;
    *a4 = v19;
  }

  v20 = *(v29 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v28, 8);
  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(*(&v34 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20;
}

void __85__PLAssetsdLibraryInternalClient_processIdenticalDuplicatesWithProcessingType_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient processIdenticalDuplicatesWithProcessingType:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)coreAnalyticsLibrarySummaryDataWithCompletionHandler:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v17) = v6;
  if (v6)
  {
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: coreAnalyticsLibrarySummaryDataWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v18 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v21 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_95_3575];
  [v13 coreAnalyticsLibrarySummaryDataWithCompletionHandler:v5];

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v8)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = sel_getName(sel[1]);
      *buf = 136446210;
      v21 = v16;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __87__PLAssetsdLibraryInternalClient_coreAnalyticsLibrarySummaryDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient coreAnalyticsLibrarySummaryDataWithCompletionHandler:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)forceRunBackgroundJobsOnLibraryPath:(id)a3 criteriaShortCode:(id)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v12;
  if (v12)
  {
    *(&v23 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: forceRunBackgroundJobsOnLibraryPath:criteriaShortCode:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v23 + 1), (&v24 + 8));
  }

  v13 = PLRequestGetLog();
  sel[1] = a2;
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v27 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v18 = [(PLAssetsdBaseClient *)self proxyFactory];
  v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_93_3579];
  [v19 forceRunBackgroundJobsOnLibraryPath:v9 criteriaShortCode:v10 completionHandler:v11];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v14)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v22 = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __106__PLAssetsdLibraryInternalClient_forceRunBackgroundJobsOnLibraryPath_criteriaShortCode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient forceRunBackgroundJobsOnLibraryPath:criteriaShortCode:completionHandler:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)setWidgetTimelineGeneratedForDisplaySize:(CGSize)a3 completionHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v34 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setWidgetTimelineGeneratedForDisplaySize:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v29 + 1);
    *(&v29 + 1) = v10;

    os_activity_scope_enter(v10, (&v30 + 8));
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __93__PLAssetsdLibraryInternalClient_setWidgetTimelineGeneratedForDisplaySize_completionHandler___block_invoke;
  v27[3] = &unk_1E7932DA8;
  v28 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3254779904;
  v18[2] = __93__PLAssetsdLibraryInternalClient_setWidgetTimelineGeneratedForDisplaySize_completionHandler___block_invoke_2;
  v18[3] = &unk_1F1F72880;
  v20 = v29;
  v21 = *(&v29 + 1);
  v22 = v30;
  v23 = v31;
  v24 = a2;
  v25 = width;
  v26 = height;
  v13 = v28;
  v19 = v13;
  [v12 remoteObjectProxyWithErrorHandler:v27 handler:v18];

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(*(&v31 + 1));
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __93__PLAssetsdLibraryInternalClient_setWidgetTimelineGeneratedForDisplaySize_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 setWidgetTimelineGeneratedForDisplaySize:*(a1 + 32) completionHandler:{*(a1 + 96), *(a1 + 104)}];
}

- (void)resetLimitedLibraryAccessForApplication:(id)a3 completionHandler:(id)a4
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
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resetLimitedLibraryAccessForApplication:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v30 + 1);
    *(&v30 + 1) = v10;

    os_activity_scope_enter(v10, (&v31 + 8));
  }

  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"applicationIdentifier"}];
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __92__PLAssetsdLibraryInternalClient_resetLimitedLibraryAccessForApplication_completionHandler___block_invoke;
  v28[3] = &unk_1E7932DA8;
  v29 = v8;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3254779904;
  v20[2] = __92__PLAssetsdLibraryInternalClient_resetLimitedLibraryAccessForApplication_completionHandler___block_invoke_2;
  v20[3] = &unk_1F1F72AB0;
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

void __92__PLAssetsdLibraryInternalClient_resetLimitedLibraryAccessForApplication_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 resetLimitedLibraryAccessForApplication:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)setFetchFilterWithAssets:(id)a3 forApplication:(id)a4 withAuditToken:(id *)a5 completionHandler:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v14 = +[PLXPCMessageLogger enabled];
  LOBYTE(v41) = v14;
  if (v14)
  {
    v15 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setFetchFilterWithAssets:forApplication:withAuditToken:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v41 + 1);
    *(&v41 + 1) = v15;

    os_activity_scope_enter(v15, (&v42 + 8));
  }

  if (!v11)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:477 description:{@"Invalid parameter not satisfying: %@", @"uuids"}];
  }

  if (!v12)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:478 description:{@"Invalid parameter not satisfying: %@", @"applicationIdentifier"}];
  }

  v17 = [(PLAssetsdBaseClient *)self proxyFactory];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __107__PLAssetsdLibraryInternalClient_setFetchFilterWithAssets_forApplication_withAuditToken_completionHandler___block_invoke;
  v39[3] = &unk_1E7932DA8;
  v40 = v13;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3254779904;
  v28[2] = __107__PLAssetsdLibraryInternalClient_setFetchFilterWithAssets_forApplication_withAuditToken_completionHandler___block_invoke_2;
  v28[3] = &unk_1F1F72420;
  v32 = v41;
  v33 = *(&v41 + 1);
  v34 = v42;
  v35 = v43;
  v36 = a2;
  v18 = v11;
  v29 = v18;
  v19 = v12;
  v30 = v19;
  v20 = *&a5->var0[4];
  v37 = *a5->var0;
  v38 = v20;
  v21 = v40;
  v31 = v21;
  [v17 remoteObjectProxyWithErrorHandler:v39 handler:v28];

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
      Name = sel_getName(*(&v43 + 1));
      *buf = 136446210;
      v45 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __107__PLAssetsdLibraryInternalClient_setFetchFilterWithAssets_forApplication_withAuditToken_completionHandler___block_invoke_2(uint64_t a1, void *a2)
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
      LODWORD(v15[0]) = 138543362;
      *(v15 + 4) = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", v15, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 128);
  v15[0] = *(a1 + 112);
  v15[1] = v14;
  [v3 setFetchFilterWithAssets:v11 forApplication:v12 withAuditToken:v15 completionHandler:v13];
}

- (void)deleteiTunesSyncedContentWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: deleteiTunesSyncedContentWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v24 + 1);
    *(&v24 + 1) = v7;

    os_activity_scope_enter(v7, (&v25 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __81__PLAssetsdLibraryInternalClient_deleteiTunesSyncedContentWithCompletionHandler___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v23 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __81__PLAssetsdLibraryInternalClient_deleteiTunesSyncedContentWithCompletionHandler___block_invoke_81;
  v15[3] = &unk_1F1F72218;
  v17 = v24;
  v18 = *(&v24 + 1);
  v19 = v25;
  v20 = v26;
  v21 = a2;
  v10 = v23;
  v16 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v22 handler:v15];

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v26 + 1));
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __81__PLAssetsdLibraryInternalClient_deleteiTunesSyncedContentWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdLibraryInternalClient deleteiTunesSyncedContentWithCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __81__PLAssetsdLibraryInternalClient_deleteiTunesSyncedContentWithCompletionHandler___block_invoke_81(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 deleteiTunesSyncedContentWithCompletionHandler:*(a1 + 32)];
}

- (BOOL)backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  *sel = 0u;
  v18 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v18) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v18 + 1);
    *(&v18 + 1) = v6;

    os_activity_scope_enter(v6, (&v19 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3555;
  v24 = __Block_byref_object_dispose__3556;
  v25 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__PLAssetsdLibraryInternalClient_backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet___block_invoke;
  v17[3] = &unk_1E7932770;
  v17[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v17];
  [v9 backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet];

  if (a3 && (v10 = *(*(&buf + 1) + 40)) != 0)
  {
    v11 = 0;
    *a3 = v10;
  }

  else
  {
    v11 = 1;
  }

  _Block_object_dispose(&buf, 8);

  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v19;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __94__PLAssetsdLibraryInternalClient_backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient backgroundJobServiceRemoveAllBundleRecordsFromProcessingSet:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getBackgroundJobServiceBundlesInQueueDictionaryWithError:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getBackgroundJobServiceBundlesInQueueDictionaryWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v25 + 1);
    *(&v25 + 1) = v6;

    os_activity_scope_enter(v6, (&v26 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3555;
  v31 = __Block_byref_object_dispose__3556;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3555;
  v23 = __Block_byref_object_dispose__3556;
  v24 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__PLAssetsdLibraryInternalClient_getBackgroundJobServiceBundlesInQueueDictionaryWithError___block_invoke;
  v18[3] = &unk_1E7932770;
  v18[4] = &v19;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__PLAssetsdLibraryInternalClient_getBackgroundJobServiceBundlesInQueueDictionaryWithError___block_invoke_80;
  v17[3] = &unk_1E79302A8;
  v17[4] = &buf;
  [v9 getBackgroundJobServiceBundlesInQueueDictionaryWithReply:v17];

  if (a3)
  {
    v10 = v20[5];
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&buf, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __91__PLAssetsdLibraryInternalClient_getBackgroundJobServiceBundlesInQueueDictionaryWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient getBackgroundJobServiceBundlesInQueueDictionaryWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getBackgroundJobServiceStatusCenterDumpWithError:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getBackgroundJobServiceStatusCenterDumpWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v25 + 1);
    *(&v25 + 1) = v6;

    os_activity_scope_enter(v6, (&v26 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3555;
  v31 = __Block_byref_object_dispose__3556;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3555;
  v23 = __Block_byref_object_dispose__3556;
  v24 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__PLAssetsdLibraryInternalClient_getBackgroundJobServiceStatusCenterDumpWithError___block_invoke;
  v18[3] = &unk_1E7932770;
  v18[4] = &v19;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__PLAssetsdLibraryInternalClient_getBackgroundJobServiceStatusCenterDumpWithError___block_invoke_78;
  v17[3] = &unk_1E79302A8;
  v17[4] = &buf;
  [v9 getBackgroundJobServiceStatusCenterDumpWithReply:v17];

  if (a3)
  {
    v10 = v20[5];
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&buf, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __83__PLAssetsdLibraryInternalClient_getBackgroundJobServiceStatusCenterDumpWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient getBackgroundJobServiceStatusCenterDumpWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (unint64_t)getBackgroundJobServiceStateWithError:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getBackgroundJobServiceStateWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v23 + 1);
    *(&v23 + 1) = v6;

    os_activity_scope_enter(v6, (&v24 + 8));
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3555;
  v29 = __Block_byref_object_dispose__3556;
  v30 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PLAssetsdLibraryInternalClient_getBackgroundJobServiceStateWithError___block_invoke;
  v18[3] = &unk_1E7932770;
  v18[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PLAssetsdLibraryInternalClient_getBackgroundJobServiceStateWithError___block_invoke_76;
  v17[3] = &unk_1E7930CA0;
  v17[4] = &v19;
  [v9 getBackgroundJobServiceStateWithReply:v17];

  if (a3)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = v20[3];
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v19, 8);
  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __72__PLAssetsdLibraryInternalClient_getBackgroundJobServiceStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient getBackgroundJobServiceStateWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)registerBackgroundJobServiceIfNecessaryOnLibraryPath:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v27) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: registerBackgroundJobServiceIfNecessaryOnLibraryPath:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v27 + 1);
    *(&v27 + 1) = v9;

    os_activity_scope_enter(v9, (&v28 + 8));
  }

  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"libraryPath"}];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3555;
  v33 = __Block_byref_object_dispose__3556;
  v34 = 0;
  v11 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __93__PLAssetsdLibraryInternalClient_registerBackgroundJobServiceIfNecessaryOnLibraryPath_error___block_invoke;
  v22[3] = &unk_1E7932770;
  v22[4] = &buf;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__PLAssetsdLibraryInternalClient_registerBackgroundJobServiceIfNecessaryOnLibraryPath_error___block_invoke_75;
  v21[3] = &unk_1E7932E48;
  v21[4] = &v23;
  v21[5] = &buf;
  [v12 registerBackgroundJobServiceIfNecessaryOnLibraryPath:v7 reply:v21];

  if (a4)
  {
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      *a4 = v13;
    }
  }

  v14 = *(v24 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v23, 8);
  if (v27 == 1)
  {
    os_activity_scope_leave((&v28 + 8));
  }

  if (v28)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v28;
    if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(*(&v29 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __93__PLAssetsdLibraryInternalClient_registerBackgroundJobServiceIfNecessaryOnLibraryPath_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient registerBackgroundJobServiceIfNecessaryOnLibraryPath:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __93__PLAssetsdLibraryInternalClient_registerBackgroundJobServiceIfNecessaryOnLibraryPath_error___block_invoke_75(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (BOOL)invalidateReverseLocationDataOnAllAssetsWithError:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: invalidateReverseLocationDataOnAllAssetsWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v23 + 1);
    *(&v23 + 1) = v6;

    os_activity_scope_enter(v6, (&v24 + 8));
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3555;
  v29 = __Block_byref_object_dispose__3556;
  v30 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__PLAssetsdLibraryInternalClient_invalidateReverseLocationDataOnAllAssetsWithError___block_invoke;
  v18[3] = &unk_1E7932360;
  v18[4] = &buf;
  v18[5] = &v19;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__PLAssetsdLibraryInternalClient_invalidateReverseLocationDataOnAllAssetsWithError___block_invoke_71;
  v17[3] = &unk_1E7932E48;
  v17[4] = &buf;
  v17[5] = &v19;
  [v9 invalidateReverseLocationDataOnAllAssetsWithReply:v17];

  if (a3)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = *(v20 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v19, 8);
  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __84__PLAssetsdLibraryInternalClient_invalidateReverseLocationDataOnAllAssetsWithError___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[PLAssetsdLibraryInternalClient invalidateReverseLocationDataOnAllAssetsWithError:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __84__PLAssetsdLibraryInternalClient_invalidateReverseLocationDataOnAllAssetsWithError___block_invoke_71(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)setKeywords:(id)a3 forAssetWithUUID:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setKeywords:forAssetWithUUID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v26 + 1);
    *(&v26 + 1) = v10;

    os_activity_scope_enter(v10, (&v27 + 8));
  }

  v12 = PLRequestGetLog();
  sel[1] = a2;
  v13 = os_signpost_id_generate(v12);
  *&v27 = v13;
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x2020000000;
  v31 = 0;
  v17 = [(PLAssetsdBaseClient *)self proxyFactory];
  v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_68_3625];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __63__PLAssetsdLibraryInternalClient_setKeywords_forAssetWithUUID___block_invoke_69;
  v25[3] = &unk_1E7930BD8;
  v25[4] = &buf;
  [v18 setAssetKeywords:v7 forAssetUUID:v8 reply:v25];

  v19 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (v26 == 1)
  {
    os_activity_scope_leave((&v27 + 8));
  }

  if (v27)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v27;
    if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __63__PLAssetsdLibraryInternalClient_setKeywords_forAssetWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient setKeywords:forAssetWithUUID:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)deleteAllInitialSuggestionsWithError:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: deleteAllInitialSuggestionsWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3555;
  v28 = __Block_byref_object_dispose__3556;
  v29 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_65_3629];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__PLAssetsdLibraryInternalClient_deleteAllInitialSuggestionsWithError___block_invoke_66;
  v17[3] = &unk_1E7932E48;
  v17[4] = &v18;
  v17[5] = &buf;
  [v9 deleteAllInitialSuggestionsWithReply:v17];

  if (a3)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = *(v19 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v18, 8);
  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __71__PLAssetsdLibraryInternalClient_deleteAllInitialSuggestionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient deleteAllInitialSuggestionsWithError:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)updateInitialSuggestionsWithIdentifiers:(id)a3 dateLastUsed:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v28 = 0u;
  *sel = 0u;
  v27 = 0u;
  v10 = +[PLXPCMessageLogger enabled];
  LOBYTE(v27) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: updateInitialSuggestionsWithIdentifiers:dateLastUsed:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v27 + 1);
    *(&v27 + 1) = v11;

    os_activity_scope_enter(v11, (&v28 + 8));
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3555;
  v33 = __Block_byref_object_dispose__3556;
  v34 = 0;
  v13 = [(PLAssetsdBaseClient *)self proxyFactory];
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_62_3632];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __93__PLAssetsdLibraryInternalClient_updateInitialSuggestionsWithIdentifiers_dateLastUsed_error___block_invoke_63;
  v22[3] = &unk_1E7932E48;
  v22[4] = &v23;
  v22[5] = &buf;
  [v14 updateInitialSuggestionsWithIdentifiers:v8 dateLastUsed:v9 reply:v22];

  if (a5)
  {
    v15 = *(*(&buf + 1) + 40);
    if (v15)
    {
      *a5 = v15;
    }
  }

  v16 = *(v24 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v23, 8);
  if (v27 == 1)
  {
    os_activity_scope_leave((&v28 + 8));
  }

  if (v28)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v28;
    if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v16;
}

void __93__PLAssetsdLibraryInternalClient_updateInitialSuggestionsWithIdentifiers_dateLastUsed_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient updateInitialSuggestionsWithIdentifiers:dateLastUsed:error:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)generateInitialSuggestionsWithStyleType:(unint64_t)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: generateInitialSuggestionsWithStyleType:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v24 + 1);
    *(&v24 + 1) = v8;

    os_activity_scope_enter(v8, (&v25 + 8));
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3555;
  v30 = __Block_byref_object_dispose__3556;
  v31 = 0;
  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__PLAssetsdLibraryInternalClient_generateInitialSuggestionsWithStyleType_error___block_invoke_60;
  v19[3] = &unk_1E7932E48;
  v19[4] = &v20;
  v19[5] = &buf;
  [v11 generateInitialSuggestionsWithStyleType:a3 reply:v19];

  if (a4)
  {
    v12 = *(*(&buf + 1) + 40);
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = *(v21 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v20, 8);
  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    v16 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v13;
}

void __80__PLAssetsdLibraryInternalClient_generateInitialSuggestionsWithStyleType_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient generateInitialSuggestionsWithStyleType:error:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)pauseSearchIndexingWithCompletionHandler:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: pauseSearchIndexingWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__PLAssetsdLibraryInternalClient_pauseSearchIndexingWithCompletionHandler___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v24 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __75__PLAssetsdLibraryInternalClient_pauseSearchIndexingWithCompletionHandler___block_invoke_56;
  v16[3] = &unk_1F1F72218;
  v18 = v25;
  v19 = *(&v25 + 1);
  v20 = v26;
  v21 = v27;
  v22 = a2;
  v10 = v24;
  v17 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v23 handler:v16];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v27 + 1));
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __75__PLAssetsdLibraryInternalClient_pauseSearchIndexingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdLibraryInternalClient pauseSearchIndexingWithCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __75__PLAssetsdLibraryInternalClient_pauseSearchIndexingWithCompletionHandler___block_invoke_56(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v15 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      *buf = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PLAssetsdLibraryInternalClient_pauseSearchIndexingWithCompletionHandler___block_invoke_57;
  v11[3] = &unk_1E7932DD0;
  v12 = *(a1 + 32);
  [v3 pauseSearchIndexingWithReply:v11];
}

- (void)resumeSearchIndexingWithCompletionHandler:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resumeSearchIndexingWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__PLAssetsdLibraryInternalClient_resumeSearchIndexingWithCompletionHandler___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v24 = v5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __76__PLAssetsdLibraryInternalClient_resumeSearchIndexingWithCompletionHandler___block_invoke_54;
  v16[3] = &unk_1F1F72218;
  v18 = v25;
  v19 = *(&v25 + 1);
  v20 = v26;
  v21 = v27;
  v22 = a2;
  v10 = v24;
  v17 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v23 handler:v16];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v27 + 1));
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __76__PLAssetsdLibraryInternalClient_resumeSearchIndexingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdLibraryInternalClient resumeSearchIndexingWithCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __76__PLAssetsdLibraryInternalClient_resumeSearchIndexingWithCompletionHandler___block_invoke_54(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v15 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v16[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      *buf = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__PLAssetsdLibraryInternalClient_resumeSearchIndexingWithCompletionHandler___block_invoke_55;
  v11[3] = &unk_1E7932DD0;
  v12 = *(a1 + 32);
  [v3 resumeSearchIndexingWithReply:v11];
}

- (BOOL)waitForSearchIndexExistenceWithError:(id *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: waitForSearchIndexExistenceWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v23 + 1);
    *(&v23 + 1) = v6;

    os_activity_scope_enter(v6, (&v24 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3555;
  v29 = __Block_byref_object_dispose__3556;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = [(PLAssetsdBaseClient *)self proxyFactory];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__PLAssetsdLibraryInternalClient_waitForSearchIndexExistenceWithError___block_invoke;
  v18[3] = &unk_1E7932770;
  v18[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__PLAssetsdLibraryInternalClient_waitForSearchIndexExistenceWithError___block_invoke_53;
  v17[3] = &unk_1E7932E48;
  v17[4] = &buf;
  v17[5] = &v19;
  [v9 waitForSearchIndexExistenceWithReply:v17];

  if (a3)
  {
    v10 = *(*(&buf + 1) + 40);
    if (v10)
    {
      *a3 = v10;
    }
  }

  v11 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&buf, 8);

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    v14 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      Name = sel_getName(*(&v25 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __71__PLAssetsdLibraryInternalClient_waitForSearchIndexExistenceWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdLibraryInternalClient waitForSearchIndexExistenceWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __71__PLAssetsdLibraryInternalClient_waitForSearchIndexExistenceWithError___block_invoke_53(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (v6)
  {
    v7 = PLSearchBackendIndexStatusGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Error waiting for search index existence: %@", &v9, 0xCu);
    }
  }
}

- (void)getSearchIndexProgress:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getSearchIndexProgress:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v23 + 1);
    *(&v23 + 1) = v7;

    os_activity_scope_enter(v7, (&v24 + 8));
  }

  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __57__PLAssetsdLibraryInternalClient_getSearchIndexProgress___block_invoke_52;
  v16[3] = &unk_1F1F72218;
  v18 = v23;
  v19 = *(&v23 + 1);
  v20 = v24;
  v21 = *sel;
  v22 = a2;
  v10 = v5;
  v17 = v10;
  [v9 remoteObjectProxyWithErrorHandler:&__block_literal_global_51_3650 handler:v16];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __57__PLAssetsdLibraryInternalClient_getSearchIndexProgress___block_invoke_52(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 getSearchIndexProgressWithReply:*(a1 + 32)];
}

void __57__PLAssetsdLibraryInternalClient_getSearchIndexProgress___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient getSearchIndexProgress:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)synchronouslyMarkPersonAsNeedingKeyFace:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v32) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: synchronouslyMarkPersonAsNeedingKeyFace:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v32 + 1);
    *(&v32 + 1) = v9;

    os_activity_scope_enter(v9, (&v33 + 8));
  }

  v11 = PLRequestGetLog();
  *(&v34 + 1) = a2;
  v12 = os_signpost_id_generate(v11);
  *&v33 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(*(&v34 + 1));
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!v7)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"personUUID"}];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3555;
  v38 = __Block_byref_object_dispose__3556;
  v39 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __80__PLAssetsdLibraryInternalClient_synchronouslyMarkPersonAsNeedingKeyFace_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__PLAssetsdLibraryInternalClient_synchronouslyMarkPersonAsNeedingKeyFace_error___block_invoke_2;
  v26[3] = &unk_1E7932E48;
  v26[4] = &v28;
  v26[5] = &buf;
  [v17 markPersonAsNeedingKeyFaceWithPersonUUID:v7 reply:v26];

  if (a4)
  {
    v18 = *(*(&buf + 1) + 40);
    if (v18)
    {
      *a4 = v18;
    }
  }

  v19 = *(v29 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v28, 8);
  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(*(&v34 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __80__PLAssetsdLibraryInternalClient_synchronouslyMarkPersonAsNeedingKeyFace_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (void)markPersonAsNeedingKeyFace:(id)a3 completionHandler:(id)a4
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
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: markPersonAsNeedingKeyFace:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v31 + 1);
    *(&v31 + 1) = v10;

    os_activity_scope_enter(v10, (&v32 + 8));
  }

  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"personUUID"}];
  }

  if (!v8)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __79__PLAssetsdLibraryInternalClient_markPersonAsNeedingKeyFace_completionHandler___block_invoke;
  v29[3] = &unk_1E7932DA8;
  v30 = v8;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __79__PLAssetsdLibraryInternalClient_markPersonAsNeedingKeyFace_completionHandler___block_invoke_2;
  v21[3] = &unk_1F1F72AB0;
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

void __79__PLAssetsdLibraryInternalClient_markPersonAsNeedingKeyFace_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 markPersonAsNeedingKeyFaceWithPersonUUID:*(a1 + 32) reply:*(a1 + 40)];
}

- (void)reloadMomentGenerationOptions
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: reloadMomentGenerationOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v15 + 1), (&v16 + 8));
  }

  v5 = PLRequestGetLog();
  sel[1] = a2;
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v19 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  v10 = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_45_3665];
  [v11 reloadMomentGenerationOptions];

  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v6)
  {
    v12 = PLRequestGetLog();
    v13 = v12;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = v14;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v6, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __63__PLAssetsdLibraryInternalClient_reloadMomentGenerationOptions__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdLibraryInternalClient reloadMomentGenerationOptions]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)repairMemoriesWithUUIDs:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v30 = 0u;
  *sel = 0u;
  v29 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v29) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: repairMemoriesWithUUIDs:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v29 + 1);
    *(&v29 + 1) = v9;

    os_activity_scope_enter(v9, (&v30 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v30 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!v7)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"memoryUUIDs"}];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3555;
  v35 = __Block_byref_object_dispose__3556;
  v36 = 0;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64__PLAssetsdLibraryInternalClient_repairMemoriesWithUUIDs_error___block_invoke;
  v28[3] = &unk_1E7932770;
  v28[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__PLAssetsdLibraryInternalClient_repairMemoriesWithUUIDs_error___block_invoke_2;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  [v17 repairMemoriesWithUUIDs:v7 reply:v27];

  v18 = *(&buf + 1);
  if (a4)
  {
    v19 = *(*(&buf + 1) + 40);
    if (v19)
    {
      *a4 = v19;
      v18 = *(&buf + 1);
    }
  }

  v20 = *(v18 + 40);
  _Block_object_dispose(&buf, 8);

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20 == 0;
}

void __64__PLAssetsdLibraryInternalClient_repairMemoriesWithUUIDs_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)updateAssetLocationDataWithUUID:(id)a3 completionHandler:(id)a4
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
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: updateAssetLocationDataWithUUID:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v31 + 1);
    *(&v31 + 1) = v10;

    os_activity_scope_enter(v10, (&v32 + 8));
  }

  if (!v7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];
  }

  if (!v8)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v12 = [(PLAssetsdBaseClient *)self proxyFactory];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __84__PLAssetsdLibraryInternalClient_updateAssetLocationDataWithUUID_completionHandler___block_invoke;
  v29[3] = &unk_1E7932DA8;
  v30 = v8;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __84__PLAssetsdLibraryInternalClient_updateAssetLocationDataWithUUID_completionHandler___block_invoke_2;
  v21[3] = &unk_1F1F72AB0;
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

void __84__PLAssetsdLibraryInternalClient_updateAssetLocationDataWithUUID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 updateAssetLocationDataWithUUID:*(a1 + 32) reply:*(a1 + 40)];
}

- (BOOL)synchronouslyGetSizeOfResourcesToUploadByCPL:(int64_t *)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  *sel = 0u;
  v36 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v36) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: synchronouslyGetSizeOfResourcesToUploadByCPL:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v36 + 1);
    *(&v36 + 1) = v9;

    os_activity_scope_enter(v9, (&v37 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v37 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!a3)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"size"}];
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__3555;
  v42 = __Block_byref_object_dispose__3556;
  v43 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = -1;
  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __85__PLAssetsdLibraryInternalClient_synchronouslyGetSizeOfResourcesToUploadByCPL_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __85__PLAssetsdLibraryInternalClient_synchronouslyGetSizeOfResourcesToUploadByCPL_error___block_invoke_2;
  v26[3] = &unk_1E7930280;
  v26[4] = &v28;
  v26[5] = &v32;
  v26[6] = &buf;
  [v17 getSizeOfResourcesToUploadByCPLWithReply:v26];

  v18 = *(v33 + 24);
  if (v18 == 1)
  {
    *a3 = v29[3];
  }

  if (a4)
  {
    v19 = *(*(&buf + 1) + 40);
    if (v19)
    {
      *a4 = v19;
      LOBYTE(v18) = *(v33 + 24);
    }
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v32, 8);
  if (v36 == 1)
  {
    os_activity_scope_leave((&v37 + 8));
  }

  if (v37)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v37;
    if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      v23 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 & 1;
}

void __85__PLAssetsdLibraryInternalClient_synchronouslyGetSizeOfResourcesToUploadByCPL_error___block_invoke_2(void *a1, int a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a2)
  {
    *(*(a1[4] + 8) + 24) = a3;
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    v9 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Error getting size of resources to upload by CPL, error: %@", &v10, 0xCu);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }
}

- (void)_getLibrarySizesFromDB:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getLibrarySizesFromDB:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v33 + 1);
    *(&v33 + 1) = v9;

    os_activity_scope_enter(v9, (&v34 + 8));
  }

  if (!v7)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PLAssetsdLibraryInternalClient.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = qos_class_self();
    v13 = PLStringFromQoSClass(v12);
    v14 = v13;
    v15 = @"NO";
    if (v4)
    {
      v15 = @"YES";
    }

    *buf = 138412546;
    v37 = v15;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_DEFAULT, "Calling XPC getLibrarySizesFromDB:%@ at QoS %@", buf, 0x16u);
  }

  v16 = [(PLAssetsdBaseClient *)self proxyFactory];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __75__PLAssetsdLibraryInternalClient__getLibrarySizesFromDB_completionHandler___block_invoke;
  v31[3] = &unk_1E7932DA8;
  v32 = v7;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __75__PLAssetsdLibraryInternalClient__getLibrarySizesFromDB_completionHandler___block_invoke_2;
  v23[3] = &unk_1F1F72170;
  v25 = v33;
  v26 = *(&v33 + 1);
  v27 = v34;
  v28 = v35;
  v29 = a2;
  v30 = v4;
  v17 = v32;
  v24 = v17;
  [v16 remoteObjectProxyWithErrorHandler:v31 handler:v23];

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

void __75__PLAssetsdLibraryInternalClient__getLibrarySizesFromDB_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 getLibrarySizesFromDB:*(a1 + 96) reply:*(a1 + 32)];
}

- (id)_librarySizesQueue
{
  if (_librarySizesQueue_onceToken != -1)
  {
    dispatch_once(&_librarySizesQueue_onceToken, &__block_literal_global_3697);
  }

  v3 = _librarySizesQueue_sLibrarySizesQueue;

  return v3;
}

uint64_t __52__PLAssetsdLibraryInternalClient__librarySizesQueue__block_invoke()
{
  _librarySizesQueue_sLibrarySizesQueue = dispatch_queue_create("com.apple.photos.librarySizesFromDB", 0);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_inProcess_getLibrarySizesFromDB:(BOOL)a3 handler:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = NSClassFromString(@"PHPhotoLibrary");
  v8 = v7;
  if (v7)
  {
    v9 = [v7 alloc];
    v10 = [(objc_class *)v8 systemPhotoLibraryURL];
    v11 = [v9 initWithPhotoLibraryURL:v10];

    v25 = 0;
    v12 = [v11 openAndWaitWithUpgrade:0 error:&v25];
    v13 = v25;
    v14 = v13;
    if (v12)
    {
      v15 = [(PLAssetsdLibraryInternalClient *)self _librarySizesQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PLAssetsdLibraryInternalClient__inProcess_getLibrarySizesFromDB_handler___block_invoke;
      block[3] = &unk_1E7930570;
      v22 = v11;
      v24 = a3;
      v23 = v6;
      dispatch_async(v15, block);
    }

    else
    {
      if (!v13)
      {
        v16 = MEMORY[0x1E696ABC0];
        v30 = *MEMORY[0x1E696A278];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No error, photoLibrary = %@", v11];
        v31[0] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        v14 = [v16 errorWithDomain:@"com.apple.photos.error" code:44001 userInfo:v18];
      }

      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "[PLAssetsdLibraryInternalClient _inProcess_getLibrarySizesFromDB:handler:]";
        v28 = 2112;
        v29 = v14;
        _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_ERROR, "%s Failed to open PHPhotoLibrary for the SPL, sending empty dictionary to handler: %@", buf, 0x16u);
      }

      (*(v6 + 2))(v6, 0, MEMORY[0x1E695E0F8], v14);
    }
  }

  return v8 != 0;
}

void __75__PLAssetsdLibraryInternalClient__inProcess_getLibrarySizesFromDB_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6 = 0;
  v4 = [v2 getLibrarySizesFromDB:v3 error:&v6];
  v5 = v6;
  if (!v4)
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getLibrarySizesFromDB:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PLAssetsdLibraryInternalClient_getLibrarySizesFromDB_completionHandler___block_invoke;
  v16[3] = &unk_1E7930C78;
  v7 = v6;
  v17 = v7;
  if (![(PLAssetsdLibraryInternalClient *)self _inProcess_getLibrarySizesFromDB:v4 handler:v16])
  {
    v8 = qos_class_self();
    if (v8 >= 0x12)
    {
      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = PLStringFromQoSClass(v8);
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Lowering QoS for getLibrarySizes from %@ to UT", buf, 0xCu);
      }

      v8 = QOS_CLASS_UTILITY;
    }

    v11 = [(PLAssetsdLibraryInternalClient *)self _librarySizesQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PLAssetsdLibraryInternalClient_getLibrarySizesFromDB_completionHandler___block_invoke_5;
    v13[3] = &unk_1E7930570;
    v13[4] = self;
    v15 = v4;
    v14 = v7;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, v13);
    dispatch_async(v11, v12);
  }
}

- (void)getAssetCountsWithReply:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getAssetCountsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v24 + 1);
    *(&v24 + 1) = v7;

    os_activity_scope_enter(v7, (&v25 + 8));
  }

  v9 = [(PLAssetsdBaseClient *)self proxyFactory];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__PLAssetsdLibraryInternalClient_getAssetCountsWithReply___block_invoke;
  v22[3] = &unk_1E7932DA8;
  v23 = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3254779904;
  v15[2] = __58__PLAssetsdLibraryInternalClient_getAssetCountsWithReply___block_invoke_2;
  v15[3] = &unk_1F1F72218;
  v17 = v24;
  v18 = *(&v24 + 1);
  v19 = v25;
  v20 = v26;
  v21 = a2;
  v10 = v23;
  v16 = v10;
  [v9 remoteObjectProxyWithErrorHandler:v22 handler:v15];

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(*(&v26 + 1));
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __58__PLAssetsdLibraryInternalClient_getAssetCountsWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 getAssetCountsWithReply:*(a1 + 32)];
}

@end