@interface PLAssetsdDebugClient
- (BOOL)allMomentsMetadataWithOutputPath:(id)path metadataDictionary:(id *)dictionary error:(id *)error;
- (BOOL)archiveComputeCacheWithError:(id *)error;
- (BOOL)backgroundMigrationWithError:(id *)error;
- (BOOL)cleanupEmptyHighlightsWithError:(id *)error;
- (BOOL)clearSensitivityStateForAssetsWithUUIDs:(id)ds error:(id *)error;
- (BOOL)debugSidecarFileURLsForAsset:(id)asset debugSidecarFileURLs:(id *)ls error:(id *)error;
- (BOOL)dumpMetadataForMomentsWithOutputPath:(id)path metadataDirectory:(id *)directory error:(id *)error;
- (BOOL)fileTapToRadarWithTitle:(id)title description:(id)description error:(id *)error;
- (BOOL)indexAssetsWithUUIDs:(id)ds error:(id *)error;
- (BOOL)insertBackgroundResourceJobConfigurationWithBundleIdentifier:(id)identifier state:(signed __int16)state error:(id *)error;
- (BOOL)invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithError:(id *)error;
- (BOOL)locationOfInterestUpdateWithError:(id *)error;
- (BOOL)processRecentHighlightsWithError:(id *)error;
- (BOOL)processUnprocessedMomentLocationsWithError:(id *)error;
- (BOOL)rebuildHighlightsDeletingExistingHighlights:(BOOL)highlights error:(id *)error;
- (BOOL)rebuildMomentsDeletingExistingMoments:(BOOL)moments error:(id *)error;
- (BOOL)rebuildSearchIndexWithError:(id *)error;
- (BOOL)resetBackgroundMigrationClassName:(id)name error:(id *)error;
- (BOOL)resetComputeCacheWithError:(id *)error;
- (BOOL)resetDrawAssetPersonEdgesBackgroundMigrationActionWithError:(id *)error;
- (BOOL)resetMaintenanceTasksWithError:(id *)error;
- (BOOL)restoreComputeCacheWithError:(id *)error;
- (BOOL)revertToOriginalForAsset:(id)asset error:(id *)error;
- (BOOL)runMaintenanceTask:(id)task error:(id *)error;
- (BOOL)signalBackgroundJobServiceForWorkerCodes:(id)codes error:(id *)error;
- (BOOL)updateHighlightTitlesWithError:(id *)error;
- (id)backgroundAssetResourceNetworkStatusForBundleID:(id)d withLevel:(int64_t)level;
- (id)computeCacheStatusWithError:(id *)error;
- (id)getCPLStateForDebug:(BOOL)debug;
- (id)getTaskConstraintStatus;
- (id)getXPCTransactionStatus;
- (id)momentGenerationStatus;
- (id)requestSearchDebugInformationForAssetUUID:(id)d redacted:(BOOL)redacted error:(id *)error;
- (id)runAssetContainmentOnAllSocialGroupsWithCompletion:(id)completion;
- (id)runAssetContainmentOnSocialGroupWithUUID:(id)d withCompletion:(id)completion;
- (id)syndicationIngestMutexStateDescriptionWithError:(id *)error;
- (id)updateAndSaveAssetPersonEdgesWithCompletion:(id)completion;
- (int64_t)removeAllThumbnailsForDryRun:(BOOL)run count:(unint64_t *)count;
- (void)clearPrefetchState;
- (void)closeSearchIndexWithCompletionHandler:(id)handler;
- (void)coalesceJournalsForManagerName:(id)name payloadClassIDs:(id)ds withChangeJournalOverThreshold:(float)threshold completionHandler:(id)handler;
- (void)dropSearchIndexWithCompletionHandler:(id)handler;
- (void)enqueuePrefetch;
- (void)identifyAssetsWithInconsistentCloudState;
- (void)prefetchResourcesForHighlights:(id)highlights;
- (void)prefetchResourcesForMemories:(id)memories;
- (void)prefetchResourcesWithMode:(int64_t)mode;
- (void)privateDownloadCloudPhotoLibraryAsset:(id)asset resourceType:(unint64_t)type highPriority:(BOOL)priority completionHandler:(id)handler;
- (void)pruneAssets:(id)assets resourceTypes:(id)types;
- (void)rebuildAllThumbnails;
- (void)rebuildCloudFeed;
- (void)rebuildTableThumbs;
- (void)recoverAssetsInInconsistentCloudState;
- (void)snapshotJournalsForManagerName:(id)name payloadClassIDs:(id)ds withCompletionHandler:(id)handler;
- (void)unloadImageFilesForAsset:(id)asset minimumFormat:(int)format completionHandler:(id)handler;
- (void)verifyAssetResourceJobConsistency;
- (void)waitForMomentGeneration;
@end

@implementation PLAssetsdDebugClient

- (BOOL)insertBackgroundResourceJobConfigurationWithBundleIdentifier:(id)identifier state:(signed __int16)state error:(id *)error
{
  stateCopy = state;
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v28 = 0u;
  *sel = 0u;
  v27 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v27) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: insertBackgroundResourceJobConfigurationWithBundleIdentifier:state:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v27 + 1);
    *(&v27 + 1) = v10;

    os_activity_scope_enter(v10, (&v28 + 8));
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1936;
  v33 = __Block_byref_object_dispose__1937;
  v34 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_190];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__PLAssetsdDebugClient_insertBackgroundResourceJobConfigurationWithBundleIdentifier_state_error___block_invoke_191;
  v22[3] = &unk_1E7932E48;
  v22[4] = &v23;
  v22[5] = &buf;
  [v13 insertBackgroundResourceJobConfigurationWithBundleIdentifier:identifierCopy state:stateCopy reply:v22];

  v14 = *(v24 + 24);
  v15 = *(*(&buf + 1) + 40);
  if (error && (v14 & 1) == 0)
  {
    v15 = v15;
    *error = v15;
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

void __97__PLAssetsdDebugClient_insertBackgroundResourceJobConfigurationWithBundleIdentifier_state_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient insertBackgroundResourceJobConfigurationWithBundleIdentifier:state:error:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)verifyAssetResourceJobConsistency
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: verifyAssetResourceJobConsistency", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_185];
  [v11 verifyAssetResourceJobConsistencyWithReply:&__block_literal_global_188];

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

void __57__PLAssetsdDebugClient_verifyAssetResourceJobConsistency__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient verifyAssetResourceJobConsistency]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (id)backgroundAssetResourceNetworkStatusForBundleID:(id)d withLevel:(int64_t)level
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: backgroundAssetResourceNetworkStatusForBundleID:withLevel:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v26 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_182];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __82__PLAssetsdDebugClient_backgroundAssetResourceNetworkStatusForBundleID_withLevel___block_invoke_183;
  v24[3] = &unk_1E7931EB0;
  v24[4] = &buf;
  [v17 backgroundAssetResourceNetworkStatusForBundleID:dCopy withLevel:level reply:v24];

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18;
}

void __82__PLAssetsdDebugClient_backgroundAssetResourceNetworkStatusForBundleID_withLevel___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient backgroundAssetResourceNetworkStatusForBundleID:withLevel:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)fileTapToRadarWithTitle:(id)title description:(id)description error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  descriptionCopy = description;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v10 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: fileTapToRadarWithTitle:description:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v28 + 1);
    *(&v28 + 1) = v11;

    os_activity_scope_enter(v11, (&v29 + 8));
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1936;
  v34 = __Block_byref_object_dispose__1937;
  v35 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v14 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_179];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__PLAssetsdDebugClient_fileTapToRadarWithTitle_description_error___block_invoke_180;
  v23[3] = &unk_1E7932E48;
  v23[4] = &v24;
  v23[5] = &buf;
  [v14 fileTapToRadarWithTitle:titleCopy description:descriptionCopy reply:v23];

  v15 = *(v25 + 24);
  v16 = *(*(&buf + 1) + 40);
  if (error && (v15 & 1) == 0)
  {
    v16 = v16;
    *error = v16;
  }

  v17 = *(v25 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v24, 8);
  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v17;
}

void __66__PLAssetsdDebugClient_fileTapToRadarWithTitle_description_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient fileTapToRadarWithTitle:description:error:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)signalBackgroundJobServiceForWorkerCodes:(id)codes error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: signalBackgroundJobServiceForWorkerCodes:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v25 + 1);
    *(&v25 + 1) = v8;

    os_activity_scope_enter(v8, (&v26 + 8));
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_176];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__PLAssetsdDebugClient_signalBackgroundJobServiceForWorkerCodes_error___block_invoke_177;
  v20[3] = &unk_1E7932E48;
  v20[4] = &v21;
  v20[5] = &buf;
  [v11 signalBackgroundJobServiceForWorkerCodes:codesCopy reply:v20];

  v12 = *(v22 + 24);
  v13 = *(*(&buf + 1) + 40);
  if (error && (v12 & 1) == 0)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = *(v22 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v21, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __71__PLAssetsdDebugClient_signalBackgroundJobServiceForWorkerCodes_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient signalBackgroundJobServiceForWorkerCodes:error:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)runMaintenanceTask:(id)task error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: runMaintenanceTask:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v25 + 1);
    *(&v25 + 1) = v8;

    os_activity_scope_enter(v8, (&v26 + 8));
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_173];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__PLAssetsdDebugClient_runMaintenanceTask_error___block_invoke_174;
  v20[3] = &unk_1E7932E48;
  v20[4] = &v21;
  v20[5] = &buf;
  [v11 runMaintenanceTask:taskCopy reply:v20];

  v12 = *(v22 + 24);
  v13 = *(*(&buf + 1) + 40);
  if (error && (v12 & 1) == 0)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = *(v22 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v21, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __49__PLAssetsdDebugClient_runMaintenanceTask_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient runMaintenanceTask:error:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)resetMaintenanceTasksWithError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resetMaintenanceTasksWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v23 + 1);
    *(&v23 + 1) = v6;

    os_activity_scope_enter(v6, (&v24 + 8));
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1936;
  v29 = __Block_byref_object_dispose__1937;
  v30 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_170];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__PLAssetsdDebugClient_resetMaintenanceTasksWithError___block_invoke_171;
  v18[3] = &unk_1E7932E48;
  v18[4] = &v19;
  v18[5] = &buf;
  [v9 resetMaintenanceTasksWithReply:v18];

  v10 = *(v20 + 24);
  v11 = *(*(&buf + 1) + 40);
  if (error && (v10 & 1) == 0)
  {
    v11 = v11;
    *error = v11;
  }

  v12 = *(v20 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v19, 8);
  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v12;
}

void __55__PLAssetsdDebugClient_resetMaintenanceTasksWithError___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient resetMaintenanceTasksWithError:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)resetDrawAssetPersonEdgesBackgroundMigrationActionWithError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resetDrawAssetPersonEdgesBackgroundMigrationActionWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v23 + 1);
    *(&v23 + 1) = v6;

    os_activity_scope_enter(v6, (&v24 + 8));
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1936;
  v29 = __Block_byref_object_dispose__1937;
  v30 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_167];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__PLAssetsdDebugClient_resetDrawAssetPersonEdgesBackgroundMigrationActionWithError___block_invoke_168;
  v18[3] = &unk_1E7932E48;
  v18[4] = &v19;
  v18[5] = &buf;
  [v9 resetDrawAssetPersonEdgesBackgroundMigrationActionWithReply:v18];

  v10 = *(v20 + 24);
  v11 = *(*(&buf + 1) + 40);
  if (error && (v10 & 1) == 0)
  {
    v11 = v11;
    *error = v11;
  }

  v12 = *(v20 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v19, 8);
  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v12;
}

void __84__PLAssetsdDebugClient_resetDrawAssetPersonEdgesBackgroundMigrationActionWithError___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient resetDrawAssetPersonEdgesBackgroundMigrationActionWithError:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)resetBackgroundMigrationClassName:(id)name error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resetBackgroundMigrationClassName:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v25 + 1);
    *(&v25 + 1) = v8;

    os_activity_scope_enter(v8, (&v26 + 8));
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_164];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__PLAssetsdDebugClient_resetBackgroundMigrationClassName_error___block_invoke_165;
  v20[3] = &unk_1E7932E48;
  v20[4] = &v21;
  v20[5] = &buf;
  [v11 resetBackgroundMigrationClassName:nameCopy reply:v20];

  v12 = *(v22 + 24);
  v13 = *(*(&buf + 1) + 40);
  if (error && (v12 & 1) == 0)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = *(v22 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v21, 8);
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __64__PLAssetsdDebugClient_resetBackgroundMigrationClassName_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient resetBackgroundMigrationClassName:error:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)backgroundMigrationWithError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: backgroundMigrationWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v23 + 1);
    *(&v23 + 1) = v6;

    os_activity_scope_enter(v6, (&v24 + 8));
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1936;
  v29 = __Block_byref_object_dispose__1937;
  v30 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_161];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__PLAssetsdDebugClient_backgroundMigrationWithError___block_invoke_162;
  v18[3] = &unk_1E7932E48;
  v18[4] = &v19;
  v18[5] = &buf;
  [v9 backgroundMigrationWithReply:v18];

  v10 = *(v20 + 24);
  v11 = *(*(&buf + 1) + 40);
  if (error && (v10 & 1) == 0)
  {
    v11 = v11;
    *error = v11;
  }

  v12 = *(v20 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v19, 8);
  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v12;
}

void __53__PLAssetsdDebugClient_backgroundMigrationWithError___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient backgroundMigrationWithError:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)waitForMomentGeneration
{
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v2 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_156];
  [v2 waitForMomentGenerationWithReply:&__block_literal_global_159];
}

void __47__PLAssetsdDebugClient_waitForMomentGeneration__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient waitForMomentGeneration]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (id)syndicationIngestMutexStateDescriptionWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: syndicationIngestMutexStateDescriptionWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v25 + 1);
    *(&v25 + 1) = v6;

    os_activity_scope_enter(v6, (&v26 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1936;
  v23 = __Block_byref_object_dispose__1937;
  v24 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PLAssetsdDebugClient_syndicationIngestMutexStateDescriptionWithError___block_invoke;
  v18[3] = &unk_1E7932770;
  v18[4] = &v19;
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PLAssetsdDebugClient_syndicationIngestMutexStateDescriptionWithError___block_invoke_153;
  v17[3] = &unk_1E7930B88;
  v17[4] = &buf;
  v17[5] = &v19;
  [v9 syndicationIngestMutexStateDescriptionWithReply:v17];

  v10 = *(*(&buf + 1) + 40);
  if (!v10)
  {
    if (error)
    {
      *error = v20[5];
      v10 = *(*(&buf + 1) + 40);
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = v10;
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
      Name = sel_getName(*(&v27 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v11;
}

void __72__PLAssetsdDebugClient_syndicationIngestMutexStateDescriptionWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient syndicationIngestMutexStateDescriptionWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __72__PLAssetsdDebugClient_syndicationIngestMutexStateDescriptionWithError___block_invoke_153(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)computeCacheStatusWithError:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v26) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: computeCacheStatusWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v26 + 1);
    *(&v26 + 1) = v6;

    os_activity_scope_enter(v6, (&v27 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1936;
  v32 = __Block_byref_object_dispose__1937;
  v33 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1936;
  v24 = __Block_byref_object_dispose__1937;
  v25 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__PLAssetsdDebugClient_computeCacheStatusWithError___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &buf;
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__PLAssetsdDebugClient_computeCacheStatusWithError___block_invoke_151;
  v18[3] = &unk_1E7930BB0;
  v18[4] = &buf;
  v18[5] = &v20;
  [v9 computeCacheStatusWithReply:v18];

  v10 = v21[5];
  v11 = *(*(&buf + 1) + 40);
  if (!v10 && error)
  {
    v11 = v11;
    *error = v11;
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

void __52__PLAssetsdDebugClient_computeCacheStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient computeCacheStatusWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __52__PLAssetsdDebugClient_computeCacheStatusWithError___block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)resetComputeCacheWithError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: resetComputeCacheWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1936;
  v30 = __Block_byref_object_dispose__1937;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__PLAssetsdDebugClient_resetComputeCacheWithError___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &buf;
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__PLAssetsdDebugClient_resetComputeCacheWithError___block_invoke_150;
  v18[3] = &unk_1E7932360;
  v18[4] = &buf;
  v18[5] = &v20;
  [v9 resetComputeCacheWithReply:v18];

  v10 = *(v21 + 24);
  v11 = *(*(&buf + 1) + 40);
  if (error && (v10 & 1) == 0)
  {
    v11 = v11;
    *error = v11;
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

void __51__PLAssetsdDebugClient_resetComputeCacheWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient resetComputeCacheWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __51__PLAssetsdDebugClient_resetComputeCacheWithError___block_invoke_150(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)archiveComputeCacheWithError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: archiveComputeCacheWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1936;
  v30 = __Block_byref_object_dispose__1937;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__PLAssetsdDebugClient_archiveComputeCacheWithError___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &buf;
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__PLAssetsdDebugClient_archiveComputeCacheWithError___block_invoke_149;
  v18[3] = &unk_1E7932360;
  v18[4] = &buf;
  v18[5] = &v20;
  [v9 archiveComputeCacheWithReply:v18];

  v10 = *(v21 + 24);
  v11 = *(*(&buf + 1) + 40);
  if (error && (v10 & 1) == 0)
  {
    v11 = v11;
    *error = v11;
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

void __53__PLAssetsdDebugClient_archiveComputeCacheWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient archiveComputeCacheWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __53__PLAssetsdDebugClient_archiveComputeCacheWithError___block_invoke_149(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)restoreComputeCacheWithError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v24) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: restoreComputeCacheWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v24 + 1);
    *(&v24 + 1) = v6;

    os_activity_scope_enter(v6, (&v25 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1936;
  v30 = __Block_byref_object_dispose__1937;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__PLAssetsdDebugClient_restoreComputeCacheWithError___block_invoke;
  v19[3] = &unk_1E7932770;
  v19[4] = &buf;
  v9 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __53__PLAssetsdDebugClient_restoreComputeCacheWithError___block_invoke_148;
  v18[3] = &unk_1E7932360;
  v18[4] = &buf;
  v18[5] = &v20;
  [v9 restoreComputeCacheWithReply:v18];

  v10 = *(v21 + 24);
  v11 = *(*(&buf + 1) + 40);
  if (error && (v10 & 1) == 0)
  {
    v11 = v11;
    *error = v11;
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

void __53__PLAssetsdDebugClient_restoreComputeCacheWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient restoreComputeCacheWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __53__PLAssetsdDebugClient_restoreComputeCacheWithError___block_invoke_148(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (id)updateAndSaveAssetPersonEdgesWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: updateAndSaveAssetPersonEdgesWithCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __68__PLAssetsdDebugClient_updateAndSaveAssetPersonEdgesWithCompletion___block_invoke;
  v20[3] = &unk_1E7932DA8;
  v9 = completionCopy;
  v21 = v9;
  v10 = [proxyFactory remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__PLAssetsdDebugClient_updateAndSaveAssetPersonEdgesWithCompletion___block_invoke_147;
  v18[3] = &unk_1E7932DA8;
  v11 = v9;
  v19 = v11;
  v12 = [v10 updateAndSaveAssetPersonEdgesWithReply:v18];

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
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v12;
}

void __68__PLAssetsdDebugClient_updateAndSaveAssetPersonEdgesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdDebugClient updateAndSaveAssetPersonEdgesWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __68__PLAssetsdDebugClient_updateAndSaveAssetPersonEdgesWithCompletion___block_invoke_147(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Received error udpating asset person edges, error: %@", &v6, 0xCu);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

- (id)runAssetContainmentOnSocialGroupWithUUID:(id)d withCompletion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: runAssetContainmentOnSocialGroupWithUUID:withCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__PLAssetsdDebugClient_runAssetContainmentOnSocialGroupWithUUID_withCompletion___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v12 = completionCopy;
  v24 = v12;
  v13 = [proxyFactory remoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__PLAssetsdDebugClient_runAssetContainmentOnSocialGroupWithUUID_withCompletion___block_invoke_146;
  v21[3] = &unk_1E7932DA8;
  v14 = v12;
  v22 = v14;
  v15 = [v13 runAssetContainmentOnSocialGroup:dCopy reply:v21];

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

void __80__PLAssetsdDebugClient_runAssetContainmentOnSocialGroupWithUUID_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdDebugClient runAssetContainmentOnSocialGroupWithUUID:withCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __80__PLAssetsdDebugClient_runAssetContainmentOnSocialGroupWithUUID_withCompletion___block_invoke_146(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Received error running asset containment, error: %@", &v6, 0xCu);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

- (id)runAssetContainmentOnAllSocialGroupsWithCompletion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v5;
  if (v5)
  {
    v6 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: runAssetContainmentOnAllSocialGroupsWithCompletion:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__PLAssetsdDebugClient_runAssetContainmentOnAllSocialGroupsWithCompletion___block_invoke;
  v20[3] = &unk_1E7932DA8;
  v9 = completionCopy;
  v21 = v9;
  v10 = [proxyFactory remoteObjectProxyWithErrorHandler:v20];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__PLAssetsdDebugClient_runAssetContainmentOnAllSocialGroupsWithCompletion___block_invoke_145;
  v18[3] = &unk_1E7932DA8;
  v11 = v9;
  v19 = v11;
  v12 = [v10 runAssetContainmentOnAllSocialGroups:v18];

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
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v12;
}

void __75__PLAssetsdDebugClient_runAssetContainmentOnAllSocialGroupsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdDebugClient runAssetContainmentOnAllSocialGroupsWithCompletion:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __75__PLAssetsdDebugClient_runAssetContainmentOnAllSocialGroupsWithCompletion___block_invoke_145(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Received error running asset containment, error: %@", &v6, 0xCu);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

- (void)coalesceJournalsForManagerName:(id)name payloadClassIDs:(id)ds withChangeJournalOverThreshold:(float)threshold completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dsCopy = ds;
  handlerCopy = handler;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v14 = +[PLXPCMessageLogger enabled];
  LOBYTE(v35) = v14;
  if (v14)
  {
    v15 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: coalesceJournalsForManagerName:payloadClassIDs:withChangeJournalOverThreshold:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v16 = *(&v35 + 1);
    *(&v35 + 1) = v15;

    os_activity_scope_enter(v15, (&v36 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3254779904;
  v25[2] = __120__PLAssetsdDebugClient_coalesceJournalsForManagerName_payloadClassIDs_withChangeJournalOverThreshold_completionHandler___block_invoke_140;
  v25[3] = &unk_1F1F725A8;
  v29 = v35;
  v30 = *(&v35 + 1);
  v31 = v36;
  v32 = v37;
  v33 = a2;
  v18 = nameCopy;
  v26 = v18;
  v19 = dsCopy;
  v27 = v19;
  thresholdCopy = threshold;
  v20 = handlerCopy;
  v28 = v20;
  [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_139 handler:v25];

  if (v35 == 1)
  {
    os_activity_scope_leave((&v36 + 8));
  }

  if (v36)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v36;
    if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(*(&v37 + 1));
      *buf = 136446210;
      v39 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __120__PLAssetsdDebugClient_coalesceJournalsForManagerName_payloadClassIDs_withChangeJournalOverThreshold_completionHandler___block_invoke_140(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 56) == 1)
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
      v10 = NSStringFromSelector(*(a1 + 104));
      *buf = 138543362;
      v18 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 112);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __120__PLAssetsdDebugClient_coalesceJournalsForManagerName_payloadClassIDs_withChangeJournalOverThreshold_completionHandler___block_invoke_141;
  v15[3] = &unk_1E79324A0;
  v16 = *(a1 + 48);
  LODWORD(v14) = v13;
  [v3 coalesceJournalsForManagerName:v11 payloadClassIDs:v12 withChangeJournalOverThreshold:v15 reply:v14];
}

void __120__PLAssetsdDebugClient_coalesceJournalsForManagerName_payloadClassIDs_withChangeJournalOverThreshold_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient coalesceJournalsForManagerName:payloadClassIDs:withChangeJournalOverThreshold:completionHandler:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

uint64_t __120__PLAssetsdDebugClient_coalesceJournalsForManagerName_payloadClassIDs_withChangeJournalOverThreshold_completionHandler___block_invoke_141(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)snapshotJournalsForManagerName:(id)name payloadClassIDs:(id)ds withCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dsCopy = ds;
  handlerCopy = handler;
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  v12 = +[PLXPCMessageLogger enabled];
  LOBYTE(v32) = v12;
  if (v12)
  {
    v13 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: snapshotJournalsForManagerName:payloadClassIDs:withCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v32 + 1);
    *(&v32 + 1) = v13;

    os_activity_scope_enter(v13, (&v33 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __93__PLAssetsdDebugClient_snapshotJournalsForManagerName_payloadClassIDs_withCompletionHandler___block_invoke_135;
  v23[3] = &unk_1F1F72768;
  v27 = v32;
  v28 = *(&v32 + 1);
  v29 = v33;
  v30 = *sel;
  v31 = a2;
  v16 = nameCopy;
  v24 = v16;
  v17 = dsCopy;
  v25 = v17;
  v18 = handlerCopy;
  v26 = v18;
  [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_134 handler:v23];

  if (v32 == 1)
  {
    os_activity_scope_leave((&v33 + 8));
  }

  if (v33)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v33;
    if ((v33 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v36 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __93__PLAssetsdDebugClient_snapshotJournalsForManagerName_payloadClassIDs_withCompletionHandler___block_invoke_135(uint64_t a1, void *a2)
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
  v13[2] = __93__PLAssetsdDebugClient_snapshotJournalsForManagerName_payloadClassIDs_withCompletionHandler___block_invoke_136;
  v13[3] = &unk_1E7932DA8;
  v14 = *(a1 + 48);
  [v3 snapshotJournalsForManagerName:v11 payloadClassIDs:v12 reply:v13];
}

void __93__PLAssetsdDebugClient_snapshotJournalsForManagerName_payloadClassIDs_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient snapshotJournalsForManagerName:payloadClassIDs:withCompletionHandler:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

uint64_t __93__PLAssetsdDebugClient_snapshotJournalsForManagerName_payloadClassIDs_withCompletionHandler___block_invoke_136(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)privateDownloadCloudPhotoLibraryAsset:(id)asset resourceType:(unint64_t)type highPriority:(BOOL)priority completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  if (assetCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v13 = +[PLXPCMessageLogger enabled];
    LOBYTE(v31) = v13;
    if (v13)
    {
      v14 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: privateDownloadCloudPhotoLibraryAsset:resourceType:highPriority:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      v15 = *(&v31 + 1);
      *(&v31 + 1) = v14;

      os_activity_scope_enter(v14, (&v32 + 8));
    }

    proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3254779904;
    v21[2] = __106__PLAssetsdDebugClient_privateDownloadCloudPhotoLibraryAsset_resourceType_highPriority_completionHandler___block_invoke_129;
    v21[3] = &unk_1F1F72650;
    v24 = v31;
    v25 = *(&v31 + 1);
    v26 = v32;
    v27 = v33;
    v28 = a2;
    v22 = assetCopy;
    typeCopy = type;
    priorityCopy = priority;
    v23 = handlerCopy;
    [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_128 handler:v21];

    if (v31 == 1)
    {
      os_activity_scope_leave((&v32 + 8));
    }

    if (v32)
    {
      v17 = PLRequestGetLog();
      v18 = v17;
      v19 = v32;
      if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        Name = sel_getName(*(&v33 + 1));
        *buf = 136446210;
        v35 = Name;
        _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
      }
    }
  }
}

void __106__PLAssetsdDebugClient_privateDownloadCloudPhotoLibraryAsset_resourceType_highPriority_completionHandler___block_invoke_129(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v14 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      v12 = 138543362;
      v13 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v12, 0xCu);
    }
  }

  v11 = [*(a1 + 32) URIRepresentation];
  [v3 privateDownloadCloudPhotoLibraryAsset:v11 resourceType:*(a1 + 104) highPriority:*(a1 + 112) reply:*(a1 + 40)];
}

void __106__PLAssetsdDebugClient_privateDownloadCloudPhotoLibraryAsset_resourceType_highPriority_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient privateDownloadCloudPhotoLibraryAsset:resourceType:highPriority:completionHandler:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)clearSensitivityStateForAssetsWithUUIDs:(id)ds error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  v7 = +[PLXPCMessageLogger enabled];
  LOBYTE(v22) = v7;
  if (v7)
  {
    v8 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: clearSensitivityStateForAssetsWithUUIDs:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v22 + 1);
    *(&v22 + 1) = v8;

    os_activity_scope_enter(v8, (&v23 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1936;
  v28 = __Block_byref_object_dispose__1937;
  v29 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__PLAssetsdDebugClient_clearSensitivityStateForAssetsWithUUIDs_error___block_invoke;
  v21[3] = &unk_1E7932770;
  v21[4] = &buf;
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__PLAssetsdDebugClient_clearSensitivityStateForAssetsWithUUIDs_error___block_invoke_126;
  v20[3] = &unk_1E7932770;
  v20[4] = &buf;
  [v11 clearSensitivityStateForAssetsWithUUIDs:dsCopy reply:v20];

  v12 = *(*(&buf + 1) + 40);
  v13 = v12;
  if (v12 && error)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = *(*(&buf + 1) + 40);
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

  return v14 == 0;
}

void __70__PLAssetsdDebugClient_clearSensitivityStateForAssetsWithUUIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient clearSensitivityStateForAssetsWithUUIDs:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __70__PLAssetsdDebugClient_clearSensitivityStateForAssetsWithUUIDs_error___block_invoke_126(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (BOOL)locationOfInterestUpdateWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: locationOfInterestUpdateWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v26 = v10;
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
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__PLAssetsdDebugClient_locationOfInterestUpdateWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  [v15 locationOfInterestUpdateWithReply:&__block_literal_global_125];

  v16 = *(*(&buf + 1) + 40);
  v17 = v16;
  if (v16 && error)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 == 0;
}

void __58__PLAssetsdDebugClient_locationOfInterestUpdateWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient locationOfInterestUpdateWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v26 = v10;
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
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__PLAssetsdDebugClient_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  [v15 invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithCompletionBlock:&__block_literal_global_122];

  v16 = *(*(&buf + 1) + 40);
  v17 = v16;
  if (v16 && error)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 == 0;
}

void __90__PLAssetsdDebugClient_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)cleanupEmptyHighlightsWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: cleanupEmptyHighlightsWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v26 = v10;
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
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __56__PLAssetsdDebugClient_cleanupEmptyHighlightsWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  [v15 cleanupEmptyHighlightsWithReply:&__block_literal_global_119];

  v16 = *(*(&buf + 1) + 40);
  v17 = v16;
  if (v16 && error)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 == 0;
}

void __56__PLAssetsdDebugClient_cleanupEmptyHighlightsWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient cleanupEmptyHighlightsWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)updateHighlightTitlesWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: updateHighlightTitlesWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v26 = v10;
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
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__PLAssetsdDebugClient_updateHighlightTitlesWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  [v15 updateHighlightTitlesWithReply:&__block_literal_global_116];

  v16 = *(*(&buf + 1) + 40);
  v17 = v16;
  if (v16 && error)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 == 0;
}

void __55__PLAssetsdDebugClient_updateHighlightTitlesWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient updateHighlightTitlesWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)processUnprocessedMomentLocationsWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: processUnprocessedMomentLocationsWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v26 = v10;
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
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __67__PLAssetsdDebugClient_processUnprocessedMomentLocationsWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  [v15 processUnprocessedMomentLocationsWithReply:&__block_literal_global_113];

  v16 = *(*(&buf + 1) + 40);
  v17 = v16;
  if (v16 && error)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 == 0;
}

void __67__PLAssetsdDebugClient_processUnprocessedMomentLocationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient processUnprocessedMomentLocationsWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)processRecentHighlightsWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: processRecentHighlightsWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v26 = v10;
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
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__PLAssetsdDebugClient_processRecentHighlightsWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  [v15 processRecentHighlightsWithReply:&__block_literal_global_110];

  v16 = *(*(&buf + 1) + 40);
  v17 = v16;
  if (v16 && error)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 == 0;
}

void __57__PLAssetsdDebugClient_processRecentHighlightsWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient processRecentHighlightsWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)prefetchResourcesWithMode:(int64_t)mode
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: prefetchResourcesWithMode:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v21 + 1);
    *(&v21 + 1) = v7;

    os_activity_scope_enter(v7, (&v22 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v22 = v10;
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v25 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_105];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__PLAssetsdDebugClient_prefetchResourcesWithMode___block_invoke_106;
  v20[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v20[4] = mode;
  [v15 prefetchResourcesWithMode:mode reply:v20];

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v19 = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = v19;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __50__PLAssetsdDebugClient_prefetchResourcesWithMode___block_invoke_106(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[PLAssetsdDebugClient prefetchResourcesWithMode:]_block_invoke";
      v13 = 2112;
      v14 = v3;
      v6 = "Error prefetching resources: %s %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
LABEL_6:
      _os_log_impl(&dword_1AA9BD000, v7, v8, v6, &v11, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 134217984;
    v12 = v10;
    v6 = "Prefetched resources: %ld";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 12;
    goto LABEL_6;
  }
}

void __50__PLAssetsdDebugClient_prefetchResourcesWithMode___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient prefetchResourcesWithMode:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)prefetchResourcesForHighlights:(id)highlights
{
  v28 = *MEMORY[0x1E69E9840];
  highlightsCopy = highlights;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: prefetchResourcesForHighlights:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
    *buf = 136446210;
    v27 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_102];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__PLAssetsdDebugClient_prefetchResourcesForHighlights___block_invoke_103;
  v21[3] = &unk_1E79329F0;
  v16 = highlightsCopy;
  v22 = v16;
  [v15 prefetchResourcesForHighlights:v16 reply:v21];

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
      *buf = 136446210;
      v27 = v20;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __55__PLAssetsdDebugClient_prefetchResourcesForHighlights___block_invoke_103(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_DEFAULT, "Prefetching resources for highlights %@", &v4, 0xCu);
  }
}

void __55__PLAssetsdDebugClient_prefetchResourcesForHighlights___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient prefetchResourcesForHighlights:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)prefetchResourcesForMemories:(id)memories
{
  v22 = *MEMORY[0x1E69E9840];
  memoriesCopy = memories;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v17) = v6;
  if (v6)
  {
    *(&v17 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: prefetchResourcesForMemories:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_97];
  [v13 prefetchResourcesForMemories:memoriesCopy reply:&__block_literal_global_100];

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

void __53__PLAssetsdDebugClient_prefetchResourcesForMemories___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient prefetchResourcesForMemories:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)pruneAssets:(id)assets resourceTypes:(id)types
{
  v25 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  typesCopy = types;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v20) = v9;
  if (v9)
  {
    *(&v20 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: pruneAssets:resourceTypes:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v20 + 1), (&v21 + 8));
  }

  v10 = PLRequestGetLog();
  sel[1] = a2;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v24 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v16 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_92];
  [v16 pruneAssetsWithUUID:assetsCopy resourceTypes:typesCopy reply:&__block_literal_global_95];

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v11)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v19 = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = v19;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v18, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __50__PLAssetsdDebugClient_pruneAssets_resourceTypes___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient pruneAssets:resourceTypes:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)debugSidecarFileURLsForAsset:(id)asset debugSidecarFileURLs:(id *)ls error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v42 = 0u;
  *sel = 0u;
  v41 = 0u;
  v9 = +[PLXPCMessageLogger enabled];
  LOBYTE(v41) = v9;
  if (v9)
  {
    v10 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: debugSidecarFileURLsForAsset:debugSidecarFileURLs:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11 = *(&v41 + 1);
    *(&v41 + 1) = v10;

    os_activity_scope_enter(v10, (&v42 + 8));
  }

  v12 = PLRequestGetLog();
  sel[1] = a2;
  v13 = os_signpost_id_generate(v12);
  *&v42 = v13;
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdDebugClient.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (!ls)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLAssetsdDebugClient.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"sidecarFileURLs"}];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__1936;
  v47 = __Block_byref_object_dispose__1937;
  v48 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1936;
  v35 = __Block_byref_object_dispose__1937;
  v36 = 0;
  objectID = [assetCopy objectID];
  uRIRepresentation = [objectID URIRepresentation];

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__PLAssetsdDebugClient_debugSidecarFileURLsForAsset_debugSidecarFileURLs_error___block_invoke;
  v30[3] = &unk_1E7932770;
  v30[4] = &buf;
  v20 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v30];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__PLAssetsdDebugClient_debugSidecarFileURLsForAsset_debugSidecarFileURLs_error___block_invoke_84;
  v29[3] = &unk_1E7932860;
  v29[4] = &v31;
  v29[5] = &v37;
  v29[6] = &buf;
  [v20 debugSidecarURLsWithObjectURI:uRIRepresentation reply:v29];

  if (*(v38 + 24) == 1)
  {
    *ls = v32[5];
    v21 = *(v38 + 24);
  }

  else
  {
    v21 = 0;
  }

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

  return v21 & 1;
}

void __80__PLAssetsdDebugClient_debugSidecarFileURLsForAsset_debugSidecarFileURLs_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient debugSidecarFileURLsForAsset:debugSidecarFileURLs:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __80__PLAssetsdDebugClient_debugSidecarFileURLsForAsset_debugSidecarFileURLs_error___block_invoke_84(void *a1, int a2, void *a3, void *a4)
{
  v18 = a3;
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    if ([v18 count])
    {
      v10 = 0;
      do
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"debugSidecarFileURL-%i", v10];
        v12 = PLSandboxedURLFromDictionary(v18, [v11 cStringUsingEncoding:4]);

        if (!v12)
        {
          break;
        }

        [v9 addObject:v12];

        ++v10;
      }

      while ([v18 count] > v10);
    }

    v13 = [v9 copy];
    v14 = *(a1[4] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    v16 = *(a1[6] + 8);
    v17 = v7;
    v9 = *(v16 + 40);
    *(v16 + 40) = v17;
  }
}

- (BOOL)revertToOriginalForAsset:(id)asset error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v33) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: revertToOriginalForAsset:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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

  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdDebugClient.m" lineNumber:337 description:{@"Invalid parameter not satisfying: %@", @"objectID"}];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1936;
  v39 = __Block_byref_object_dispose__1937;
  v40 = 0;
  uRIRepresentation = [assetCopy URIRepresentation];
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __55__PLAssetsdDebugClient_revertToOriginalForAsset_error___block_invoke;
  v28[3] = &unk_1E7932770;
  v28[4] = &buf;
  v18 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __55__PLAssetsdDebugClient_revertToOriginalForAsset_error___block_invoke_77;
  v27[3] = &unk_1E7932360;
  v27[4] = &buf;
  v27[5] = &v29;
  [v18 revertToOriginalWithObjectURI:uRIRepresentation reply:v27];

  if (error)
  {
    v19 = *(*(&buf + 1) + 40);
    if (v19)
    {
      *error = v19;
    }
  }

  v20 = *(v30 + 24);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v29, 8);
  if (v33 == 1)
  {
    os_activity_scope_leave((&v34 + 8));
  }

  if (v34)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v34;
    if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      v24 = sel_getName(*(&v35 + 1));
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v24;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v20;
}

void __55__PLAssetsdDebugClient_revertToOriginalForAsset_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient revertToOriginalForAsset:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __55__PLAssetsdDebugClient_revertToOriginalForAsset_error___block_invoke_77(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Unable to revert to original for asset with error: %@", &v6, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)enqueuePrefetch
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: enqueuePrefetch", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_73];
  [v11 enqueuePrefetch];

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

void __39__PLAssetsdDebugClient_enqueuePrefetch__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient enqueuePrefetch]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)clearPrefetchState
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: clearPrefetchState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_71];
  [v11 clearPrefetchState];

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

void __42__PLAssetsdDebugClient_clearPrefetchState__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient clearPrefetchState]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (id)getCPLStateForDebug:(BOOL)debug
{
  debugCopy = debug;
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getCPLStateForDebug:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
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
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1936;
  v29 = __Block_byref_object_dispose__1937;
  v30 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_68];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __44__PLAssetsdDebugClient_getCPLStateForDebug___block_invoke_69;
  v22[3] = &unk_1E7931EB0;
  v22[4] = &buf;
  [v15 getCPLStateForDebug:debugCopy withReply:v22];

  v16 = *(*(&buf + 1) + 40);
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

void __44__PLAssetsdDebugClient_getCPLStateForDebug___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient getCPLStateForDebug:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (id)getTaskConstraintStatus
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getTaskConstraintStatus", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1936;
  v27 = __Block_byref_object_dispose__1937;
  v28 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_65];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__PLAssetsdDebugClient_getTaskConstraintStatus__block_invoke_66;
  v20[3] = &unk_1E7931EB0;
  v20[4] = &buf;
  [v13 getTaskConstraintStatusWithReply:v20];

  v14 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __47__PLAssetsdDebugClient_getTaskConstraintStatus__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient getTaskConstraintStatus]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (id)getXPCTransactionStatus
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: getXPCTransactionStatus", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1936;
  v27 = __Block_byref_object_dispose__1937;
  v28 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_62];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__PLAssetsdDebugClient_getXPCTransactionStatus__block_invoke_63;
  v20[3] = &unk_1E7931EB0;
  v20[4] = &buf;
  [v13 getXPCTransactionStatusWithReply:v20];

  v14 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __47__PLAssetsdDebugClient_getXPCTransactionStatus__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient getXPCTransactionStatus]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)rebuildTableThumbs
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: rebuildTableThumbs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_57];
  [v11 rebuildTableThumbsWithReply:&__block_literal_global_60];

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

void __42__PLAssetsdDebugClient_rebuildTableThumbs__block_invoke_58(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412546;
    v5 = v2;
    v6 = 2080;
    v7 = "[PLAssetsdDebugClient rebuildTableThumbs]_block_invoke";
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_DEBUG, "Finished table thumb rebuild with status: %@, for %s", &v4, 0x16u);
  }
}

void __42__PLAssetsdDebugClient_rebuildTableThumbs__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient rebuildTableThumbs]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (int64_t)removeAllThumbnailsForDryRun:(BOOL)run count:(unint64_t *)count
{
  runCopy = run;
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: removeAllThumbnailsForDryRun:count:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(*(&v25 + 1), (&v26 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v26 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
    *buf = 136446210;
    v33 = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PLXPC Sync", "%{public}s", buf, 0xCu);
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_53];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__PLAssetsdDebugClient_removeAllThumbnailsForDryRun_count___block_invoke_54;
  v24[3] = &unk_1E792FD30;
  v24[4] = &v28;
  v24[5] = count;
  [v17 removeAllThumbnailsForDryRun:runCopy reply:v24];

  v18 = v29[3];
  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      *buf = 136446210;
      v33 = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v28, 8);
  return v18;
}

void __59__PLAssetsdDebugClient_removeAllThumbnailsForDryRun_count___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 longLongValue];
  v6 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v5;
  if (v6)
  {
    **(a1 + 40) = [v7 unsignedIntegerValue];
  }
}

void __59__PLAssetsdDebugClient_removeAllThumbnailsForDryRun_count___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient removeAllThumbnailsForDryRun:count:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)rebuildAllThumbnails
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: rebuildAllThumbnails", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_51];
  [v11 rebuildAllThumbnails];

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

void __44__PLAssetsdDebugClient_rebuildAllThumbnails__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient rebuildAllThumbnails]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)rebuildCloudFeed
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: rebuildCloudFeed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_46_1965];
  [v11 rebuildCloudFeedWithReply:&__block_literal_global_49_1966];

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

void __40__PLAssetsdDebugClient_rebuildCloudFeed__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient rebuildCloudFeed]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (BOOL)indexAssetsWithUUIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1936;
  v22 = __Block_byref_object_dispose__1937;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__PLAssetsdDebugClient_indexAssetsWithUUIDs_error___block_invoke;
  v13[3] = &unk_1E7932770;
  v13[4] = &v18;
  v8 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PLAssetsdDebugClient_indexAssetsWithUUIDs_error___block_invoke_44;
  v12[3] = &unk_1E7932E48;
  v12[4] = &v14;
  v12[5] = &v18;
  [v8 indexAssetsWithUUIDs:dsCopy reply:v12];

  if (error)
  {
    v9 = v19[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void __51__PLAssetsdDebugClient_indexAssetsWithUUIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient indexAssetsWithUUIDs:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)requestSearchDebugInformationForAssetUUID:(id)d redacted:(BOOL)redacted error:(id *)error
{
  redactedCopy = redacted;
  dCopy = d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1936;
  v26 = __Block_byref_object_dispose__1937;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1936;
  v20 = __Block_byref_object_dispose__1937;
  v21 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PLAssetsdDebugClient_requestSearchDebugInformationForAssetUUID_redacted_error___block_invoke;
  v15[3] = &unk_1E7932770;
  v15[4] = &v16;
  v10 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__PLAssetsdDebugClient_requestSearchDebugInformationForAssetUUID_redacted_error___block_invoke_43;
  v14[3] = &unk_1E79302A8;
  v14[4] = &v22;
  [v10 searchAttributesForAssetWithUUID:dCopy redacted:redactedCopy reply:v14];

  if (error)
  {
    v11 = v17[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

void __81__PLAssetsdDebugClient_requestSearchDebugInformationForAssetUUID_redacted_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient requestSearchDebugInformationForAssetUUID:redacted:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)rebuildSearchIndexWithError:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: rebuildSearchIndexWithError:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  v9 = PLRequestGetLog();
  sel[1] = a2;
  v10 = os_signpost_id_generate(v9);
  *&v26 = v10;
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
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1936;
  v31 = __Block_byref_object_dispose__1937;
  v32 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__PLAssetsdDebugClient_rebuildSearchIndexWithError___block_invoke;
  v24[3] = &unk_1E7932770;
  v24[4] = &buf;
  v15 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v24];
  [v15 rebuildSearchIndexWithReply:&__block_literal_global_42];

  v16 = *(&buf + 1);
  if (error)
  {
    v17 = *(*(&buf + 1) + 40);
    if (v17)
    {
      *error = v17;
      v16 = *(&buf + 1);
    }
  }

  v18 = *(v16 + 40);
  _Block_object_dispose(&buf, 8);

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v22;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v18 == 0;
}

void __52__PLAssetsdDebugClient_rebuildSearchIndexWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient rebuildSearchIndexWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)closeSearchIndexWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: closeSearchIndexWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdDebugClient.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__PLAssetsdDebugClient_closeSearchIndexWithCompletionHandler___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v24 = handlerCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __62__PLAssetsdDebugClient_closeSearchIndexWithCompletionHandler___block_invoke_37;
  v16[3] = &unk_1F1F722C0;
  v18 = v25;
  v19 = *(&v25 + 1);
  v20 = v26;
  v21 = v27;
  v22 = a2;
  v10 = v24;
  v17 = v10;
  [proxyFactory remoteObjectProxyWithErrorHandler:v23 handler:v16];

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

void __62__PLAssetsdDebugClient_closeSearchIndexWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdDebugClient closeSearchIndexWithCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __62__PLAssetsdDebugClient_closeSearchIndexWithCompletionHandler___block_invoke_37(uint64_t a1, void *a2)
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
  v11[2] = __62__PLAssetsdDebugClient_closeSearchIndexWithCompletionHandler___block_invoke_38;
  v11[3] = &unk_1E7932DD0;
  v12 = *(a1 + 32);
  [v3 closeSearchIndexWithReply:v11];
}

- (void)dropSearchIndexWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: dropSearchIndexWithCompletionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v25 + 1);
    *(&v25 + 1) = v7;

    os_activity_scope_enter(v7, (&v26 + 8));
  }

  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdDebugClient.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61__PLAssetsdDebugClient_dropSearchIndexWithCompletionHandler___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v24 = handlerCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __61__PLAssetsdDebugClient_dropSearchIndexWithCompletionHandler___block_invoke_33;
  v16[3] = &unk_1F1F722C0;
  v18 = v25;
  v19 = *(&v25 + 1);
  v20 = v26;
  v21 = v27;
  v22 = a2;
  v10 = v24;
  v17 = v10;
  [proxyFactory remoteObjectProxyWithErrorHandler:v23 handler:v16];

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

void __61__PLAssetsdDebugClient_dropSearchIndexWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdDebugClient dropSearchIndexWithCompletionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __61__PLAssetsdDebugClient_dropSearchIndexWithCompletionHandler___block_invoke_33(uint64_t a1, void *a2)
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
  v11[2] = __61__PLAssetsdDebugClient_dropSearchIndexWithCompletionHandler___block_invoke_34;
  v11[3] = &unk_1E7932DD0;
  v12 = *(a1 + 32);
  [v3 dropSearchIndexWithReply:v11];
}

- (BOOL)allMomentsMetadataWithOutputPath:(id)path metadataDictionary:(id *)dictionary error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v37 = 0u;
  *sel = 0u;
  v36 = 0u;
  v10 = +[PLXPCMessageLogger enabled];
  LOBYTE(v36) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: allMomentsMetadataWithOutputPath:metadataDictionary:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v36 + 1);
    *(&v36 + 1) = v11;

    os_activity_scope_enter(v11, (&v37 + 8));
  }

  v13 = PLRequestGetLog();
  sel[1] = a2;
  v14 = os_signpost_id_generate(v13);
  *&v37 = v14;
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  if (!dictionary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdDebugClient.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"metadataDictionary"}];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1936;
  v42 = __Block_byref_object_dispose__1937;
  v43 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1936;
  v34 = __Block_byref_object_dispose__1937;
  v35 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __82__PLAssetsdDebugClient_allMomentsMetadataWithOutputPath_metadataDictionary_error___block_invoke;
  v29[3] = &unk_1E7932770;
  v29[4] = &buf;
  v19 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v29];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __82__PLAssetsdDebugClient_allMomentsMetadataWithOutputPath_metadataDictionary_error___block_invoke_32;
  v28[3] = &unk_1E79302A8;
  v28[4] = &v30;
  [v19 dumpMomentsMetadataToPath:pathCopy reply:v28];

  if (error)
  {
    v20 = *(*(&buf + 1) + 40);
    if (v20)
    {
      *error = v20;
    }
  }

  *dictionary = v31[5];
  v21 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&buf, 8);
  if (v36 == 1)
  {
    os_activity_scope_leave((&v37 + 8));
  }

  if (v37)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v37;
    if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v25 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v25;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v21 == 0;
}

void __82__PLAssetsdDebugClient_allMomentsMetadataWithOutputPath_metadataDictionary_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient allMomentsMetadataWithOutputPath:metadataDictionary:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)dumpMetadataForMomentsWithOutputPath:(id)path metadataDirectory:(id *)directory error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v36 = 0u;
  *sel = 0u;
  v35 = 0u;
  v10 = +[PLXPCMessageLogger enabled];
  LOBYTE(v35) = v10;
  if (v10)
  {
    v11 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: dumpMetadataForMomentsWithOutputPath:metadataDirectory:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v35 + 1);
    *(&v35 + 1) = v11;

    os_activity_scope_enter(v11, (&v36 + 8));
  }

  v13 = PLRequestGetLog();
  sel[1] = a2;
  v14 = os_signpost_id_generate(v13);
  *&v36 = v14;
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__1936;
  v41 = __Block_byref_object_dispose__1937;
  v42 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1936;
  v33 = __Block_byref_object_dispose__1937;
  v34 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __85__PLAssetsdDebugClient_dumpMetadataForMomentsWithOutputPath_metadataDirectory_error___block_invoke;
  v28[3] = &unk_1E7932770;
  v28[4] = &buf;
  v19 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __85__PLAssetsdDebugClient_dumpMetadataForMomentsWithOutputPath_metadataDirectory_error___block_invoke_27;
  v27[3] = &unk_1E79302A8;
  v27[4] = &v29;
  [v19 dumpMetadataForMomentsToPath:pathCopy reply:v27];

  if (error)
  {
    v20 = *(*(&buf + 1) + 40);
    if (v20)
    {
      *error = v20;
    }
  }

  if (directory)
  {
    *directory = v30[5];
  }

  v21 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&buf, 8);
  if (v35 == 1)
  {
    os_activity_scope_leave((&v36 + 8));
  }

  if (v36)
  {
    v22 = PLRequestGetLog();
    v23 = v22;
    v24 = v36;
    if ((v36 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v25 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v25;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v23, OS_SIGNPOST_INTERVAL_END, v24, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v21 == 0;
}

void __85__PLAssetsdDebugClient_dumpMetadataForMomentsWithOutputPath_metadataDirectory_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient dumpMetadataForMomentsWithOutputPath:metadataDirectory:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)rebuildHighlightsDeletingExistingHighlights:(BOOL)highlights error:(id *)error
{
  highlightsCopy = highlights;
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v32) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: rebuildHighlightsDeletingExistingHighlights:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v32 + 1);
    *(&v32 + 1) = v9;

    os_activity_scope_enter(v9, (&v33 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v33 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
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
  v37 = __Block_byref_object_copy__1936;
  v38 = __Block_byref_object_dispose__1937;
  v39 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__PLAssetsdDebugClient_rebuildHighlightsDeletingExistingHighlights_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v27];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __74__PLAssetsdDebugClient_rebuildHighlightsDeletingExistingHighlights_error___block_invoke_26;
  v25[3] = &unk_1E792FD08;
  v26 = highlightsCopy;
  v25[4] = &buf;
  v25[5] = &v28;
  [v17 rebuildHighlightsDeletingExistingHighlights:highlightsCopy reply:v25];

  if (error)
  {
    v18 = *(*(&buf + 1) + 40);
    if (v18)
    {
      *error = v18;
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
      v23 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __74__PLAssetsdDebugClient_rebuildHighlightsDeletingExistingHighlights_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient rebuildHighlightsDeletingExistingHighlights:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __74__PLAssetsdDebugClient_rebuildHighlightsDeletingExistingHighlights_error___block_invoke_26(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      v7[0] = 67109378;
      v7[1] = v6;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Error synchronously rebuilding moments and delete existing ones before: %d, error: %@", v7, 0x12u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)rebuildMomentsDeletingExistingMoments:(BOOL)moments error:(id *)error
{
  momentsCopy = moments;
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v32) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: rebuildMomentsDeletingExistingMoments:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v32 + 1);
    *(&v32 + 1) = v9;

    os_activity_scope_enter(v9, (&v33 + 8));
  }

  v11 = PLRequestGetLog();
  sel[1] = a2;
  v12 = os_signpost_id_generate(v11);
  *&v33 = v12;
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    Name = sel_getName(sel[1]);
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
  v37 = __Block_byref_object_copy__1936;
  v38 = __Block_byref_object_dispose__1937;
  v39 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__PLAssetsdDebugClient_rebuildMomentsDeletingExistingMoments_error___block_invoke;
  v27[3] = &unk_1E7932770;
  v27[4] = &buf;
  v17 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:v27];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __68__PLAssetsdDebugClient_rebuildMomentsDeletingExistingMoments_error___block_invoke_25;
  v25[3] = &unk_1E792FD08;
  v26 = momentsCopy;
  v25[4] = &buf;
  v25[5] = &v28;
  [v17 rebuildMomentsDeletingExistingMoments:momentsCopy reply:v25];

  if (error)
  {
    v18 = *(*(&buf + 1) + 40);
    if (v18)
    {
      *error = v18;
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
      v23 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v23;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v19;
}

void __68__PLAssetsdDebugClient_rebuildMomentsDeletingExistingMoments_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdDebugClient rebuildMomentsDeletingExistingMoments:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __68__PLAssetsdDebugClient_rebuildMomentsDeletingExistingMoments_error___block_invoke_25(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      v7[0] = 67109378;
      v7[1] = v6;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "Error synchronously rebuilding moments and delete existing ones before: %d, error: %@", v7, 0x12u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)momentGenerationStatus
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v21) = v4;
  if (v4)
  {
    v5 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: momentGenerationStatus", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = *(&v21 + 1);
    *(&v21 + 1) = v5;

    os_activity_scope_enter(v5, (&v22 + 8));
  }

  v7 = PLRequestGetLog();
  sel[1] = a2;
  v8 = os_signpost_id_generate(v7);
  *&v22 = v8;
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    Name = sel_getName(sel[1]);
    LODWORD(buf) = 136446210;
    *(&buf + 4) = Name;
    _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLXPC Sync", "%{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1936;
  v27 = __Block_byref_object_dispose__1937;
  v28 = 0;
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v13 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_22_2010];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__PLAssetsdDebugClient_momentGenerationStatus__block_invoke_23;
  v20[3] = &unk_1E7931EB0;
  v20[4] = &buf;
  [v13 momentGenerationStatusWithReply:v20];

  v14 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    v17 = v22;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v18 = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v18;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v14;
}

void __46__PLAssetsdDebugClient_momentGenerationStatus__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient momentGenerationStatus]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)recoverAssetsInInconsistentCloudState
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: recoverAssetsInInconsistentCloudState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20_2016];
  [v11 recoverAssetsInInconsistentCloudState];

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

void __61__PLAssetsdDebugClient_recoverAssetsInInconsistentCloudState__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient recoverAssetsInInconsistentCloudState]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)identifyAssetsWithInconsistentCloudState
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  *sel = 0u;
  v15 = 0u;
  v4 = +[PLXPCMessageLogger enabled];
  LOBYTE(v15) = v4;
  if (v4)
  {
    *(&v15 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: identifyAssetsWithInconsistentCloudState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

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

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v11 = [proxyFactory synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2022];
  [v11 identifyAssetsWithInconsistentCloudState];

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

void __64__PLAssetsdDebugClient_identifyAssetsWithInconsistentCloudState__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[PLAssetsdDebugClient identifyAssetsWithInconsistentCloudState]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v4, 0x16u);
  }
}

- (void)unloadImageFilesForAsset:(id)asset minimumFormat:(int)format completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v34) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: unloadImageFilesForAsset:minimumFormat:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v34 + 1);
    *(&v34 + 1) = v12;

    os_activity_scope_enter(v12, (&v35 + 8));
  }

  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdDebugClient.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  uRIRepresentation = [assetCopy URIRepresentation];
  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __81__PLAssetsdDebugClient_unloadImageFilesForAsset_minimumFormat_completionHandler___block_invoke;
  v32[3] = &unk_1E7932DA8;
  v33 = handlerCopy;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3254779904;
  v23[2] = __81__PLAssetsdDebugClient_unloadImageFilesForAsset_minimumFormat_completionHandler___block_invoke_15;
  v23[3] = &unk_1F1F728B8;
  v26 = v34;
  v27 = *(&v34 + 1);
  v28 = v35;
  v29 = v36;
  v30 = a2;
  v16 = uRIRepresentation;
  v24 = v16;
  formatCopy = format;
  v17 = v33;
  v25 = v17;
  [proxyFactory remoteObjectProxyWithErrorHandler:v32 handler:v23];

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

void __81__PLAssetsdDebugClient_unloadImageFilesForAsset_minimumFormat_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdDebugClient unloadImageFilesForAsset:minimumFormat:completionHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __81__PLAssetsdDebugClient_unloadImageFilesForAsset_minimumFormat_completionHandler___block_invoke_15(uint64_t a1, void *a2)
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

  [v3 asynchronousUnloadImageFilesForAssetWithObjectURI:*(a1 + 32) minimumFormat:*(a1 + 104) reply:*(a1 + 40)];
}

@end