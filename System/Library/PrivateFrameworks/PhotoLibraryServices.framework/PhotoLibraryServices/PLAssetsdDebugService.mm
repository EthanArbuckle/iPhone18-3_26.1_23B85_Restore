@interface PLAssetsdDebugService
- (PLAssetsdDebugService)initWithLibraryServicesManager:(id)manager resourceDownloader:(id)downloader bundleController:(id)controller connectionAuthorization:(id)authorization;
- (id)_persistentStoreCoordinator;
- (id)runAssetContainmentOnAllSocialGroups:(id)groups;
- (id)runAssetContainmentOnSocialGroup:(id)group reply:(id)reply;
- (id)updateAndSaveAssetPersonEdgesWithReply:(id)reply;
- (void)archiveComputeCacheWithReply:(id)reply;
- (void)asynchronousUnloadImageFilesForAssetWithObjectURI:(id)i minimumFormat:(unsigned __int16)format reply:(id)reply;
- (void)backgroundAssetResourceNetworkStatusForBundleID:(id)d withLevel:(int64_t)level reply:(id)reply;
- (void)backgroundMigrationWithReply:(id)reply;
- (void)cleanupEmptyHighlightsWithReply:(id)reply;
- (void)clearPrefetchState;
- (void)clearSensitivityStateForAssetsWithUUIDs:(id)ds reply:(id)reply;
- (void)closeSearchIndexWithReply:(id)reply;
- (void)coalesceJournalsForManagerName:(id)name payloadClassIDs:(id)ds withChangeJournalOverThreshold:(float)threshold reply:(id)reply;
- (void)computeCacheStatusWithReply:(id)reply;
- (void)debugSidecarURLsWithObjectURI:(id)i reply:(id)reply;
- (void)dropSearchIndexWithReply:(id)reply;
- (void)dumpMetadataForMomentsToPath:(id)path reply:(id)reply;
- (void)dumpMomentsMetadataToPath:(id)path reply:(id)reply;
- (void)enqueuePrefetch;
- (void)fileTapToRadarWithTitle:(id)title description:(id)description reply:(id)reply;
- (void)getCPLStateForDebug:(BOOL)debug withReply:(id)reply;
- (void)getTaskConstraintStatusWithReply:(id)reply;
- (void)getXPCTransactionStatusWithReply:(id)reply;
- (void)identifyAssetsWithInconsistentCloudState;
- (void)indexAssetsWithUUIDs:(id)ds reply:(id)reply;
- (void)insertBackgroundResourceJobConfigurationWithBundleIdentifier:(id)identifier state:(signed __int16)state reply:(id)reply;
- (void)invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithCompletionBlock:(id)block;
- (void)locationOfInterestUpdateWithReply:(id)reply;
- (void)momentGenerationStatusWithReply:(id)reply;
- (void)prefetchResourcesForHighlights:(id)highlights reply:(id)reply;
- (void)prefetchResourcesForMemories:(id)memories reply:(id)reply;
- (void)prefetchResourcesWithMode:(int64_t)mode reply:(id)reply;
- (void)privateDownloadCloudPhotoLibraryAsset:(id)asset resourceType:(unint64_t)type highPriority:(BOOL)priority reply:(id)reply;
- (void)processRecentHighlightsWithReply:(id)reply;
- (void)processUnprocessedMomentLocationsWithReply:(id)reply;
- (void)pruneAssetsWithUUID:(id)d resourceTypes:(id)types reply:(id)reply;
- (void)rebuildAllThumbnails;
- (void)rebuildCloudFeedWithReply:(id)reply;
- (void)rebuildHighlightsDeletingExistingHighlights:(BOOL)highlights reply:(id)reply;
- (void)rebuildMomentsDeletingExistingMoments:(BOOL)moments reply:(id)reply;
- (void)rebuildSearchIndexWithReply:(id)reply;
- (void)rebuildTableThumbsWithReply:(id)reply;
- (void)recoverAssetsInInconsistentCloudState;
- (void)removeAllThumbnailsForDryRun:(BOOL)run reply:(id)reply;
- (void)resetBackgroundMigrationClassName:(id)name reply:(id)reply;
- (void)resetComputeCacheWithReply:(id)reply;
- (void)resetDrawAssetPersonEdgesBackgroundMigrationActionWithReply:(id)reply;
- (void)resetMaintenanceTasksWithReply:(id)reply;
- (void)restoreComputeCacheWithReply:(id)reply;
- (void)revertToOriginalWithObjectURI:(id)i reply:(id)reply;
- (void)runMaintenanceTask:(id)task reply:(id)reply;
- (void)searchAttributesForAssetWithUUID:(id)d redacted:(BOOL)redacted reply:(id)reply;
- (void)setSearchIndexPaused:(BOOL)paused reason:(id)reason reply:(id)reply;
- (void)signalBackgroundJobServiceForWorkerCodes:(id)codes reply:(id)reply;
- (void)snapshotJournalsForManagerName:(id)name payloadClassIDs:(id)ds reply:(id)reply;
- (void)syndicationIngestMutexStateDescriptionWithReply:(id)reply;
- (void)updateHighlightTitlesWithReply:(id)reply;
- (void)verifyAssetResourceJobConsistencyWithReply:(id)reply;
- (void)waitForMomentGenerationWithReply:(id)reply;
@end

@implementation PLAssetsdDebugService

- (void)insertBackgroundResourceJobConfigurationWithBundleIdentifier:(id)identifier state:(signed __int16)state reply:(id)reply
{
  v35[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  replyCopy = reply;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__17927;
  v32 = __Block_byref_object_dispose__17928;
  v33 = 0;
  if (identifierCopy)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    databaseContext = [libraryServicesManager databaseContext];
    v12 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService insertBackgroundResourceJobConfigurationWithBundleIdentifier:state:reply:]"];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __98__PLAssetsdDebugService_insertBackgroundResourceJobConfigurationWithBundleIdentifier_state_reply___block_invoke;
    v18[3] = &unk_1E75685A8;
    v13 = v12;
    v19 = v13;
    stateCopy = state;
    v20 = identifierCopy;
    v21 = &v24;
    v22 = &v28;
    [v13 performBlockAndWait:v18];
    replyCopy[2](replyCopy, *(v25 + 24), v29[5]);

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35[0] = @"Missing bundle identifier needed for the job configuration creation";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v16 = [v14 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v15];
    v17 = v29[5];
    v29[5] = v16;

    replyCopy[2](replyCopy, 0, v29[5]);
  }

  _Block_object_dispose(&v28, 8);
}

void __98__PLAssetsdDebugService_insertBackgroundResourceJobConfigurationWithBundleIdentifier_state_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [PLAssetResourceUploadJobConfiguration insertIntoManagedObjectContext:v2 uuid:v4 bundleID:*(a1 + 40)];

  [v5 setState:*(a1 + 64)];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  LOBYTE(v4) = [v6 save:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (void)verifyAssetResourceJobConsistencyWithReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  backgroundAssetResourceUploader = [libraryServicesManager backgroundAssetResourceUploader];

  if (backgroundAssetResourceUploader)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__PLAssetsdDebugService_verifyAssetResourceJobConsistencyWithReply___block_invoke;
    v11[3] = &unk_1E7576AA0;
    v12 = replyCopy;
    [backgroundAssetResourceUploader verifyJobConsistencyWithCompletionHandler:v11];
  }

  else
  {
    v7 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
      libraryURL = [libraryServicesManager2 libraryURL];
      path = [libraryURL path];
      *buf = 138412290;
      v14 = path;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unable to get PLBackgroundAssetResourceUploader for library at path: %@", buf, 0xCu);
    }

    replyCopy[2](replyCopy);
  }
}

- (void)backgroundAssetResourceNetworkStatusForBundleID:(id)d withLevel:(int64_t)level reply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  backgroundAssetResourceUploader = [libraryServicesManager backgroundAssetResourceUploader];

  if (backgroundAssetResourceUploader)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __89__PLAssetsdDebugService_backgroundAssetResourceNetworkStatusForBundleID_withLevel_reply___block_invoke;
    v21[3] = &unk_1E7568698;
    v22 = replyCopy;
    [backgroundAssetResourceUploader networkStatusForBundleID:dCopy withLevel:level completionHandler:v21];
    libraryServicesManager3 = v22;
  }

  else
  {
    v13 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
      libraryURL = [libraryServicesManager2 libraryURL];
      path = [libraryURL path];
      *buf = 138412290;
      v24 = path;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Unable to get PLBackgroundAssetResourceUploader for library at path: %@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E696AEC0];
    libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    libraryURL2 = [libraryServicesManager3 libraryURL];
    path2 = [libraryURL2 path];
    v20 = [v17 stringWithFormat:@"Unable to get PLBackgroundAssetResourceUploader for library at path: %@", path2];
    (*(replyCopy + 2))(replyCopy, v20);
  }
}

- (void)fileTapToRadarWithTitle:(id)title description:(id)description reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  descriptionCopy = description;
  replyCopy = reply;
  v16 = 0u;
  *sel = 0u;
  v14 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v14) = enabled;
  if (enabled)
  {
    *(&v14 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: fileTapToRadarWithTitle:description:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v14 + 1), (&v16 + 8));
  }

  [PLDiagnostics tapToRadarWithTitle:titleCopy description:descriptionCopy radarComponent:0 isUserInitiated:1 displayReason:0 attachments:MEMORY[0x1E695E0F0], v14];
  replyCopy[2](replyCopy, 1, 0);
  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v16)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v12, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)signalBackgroundJobServiceForWorkerCodes:(id)codes reply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  replyCopy = reply;
  v19 = 0u;
  *sel = 0u;
  v17 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = enabled;
  if (enabled)
  {
    *(&v17 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: signalBackgroundJobServiceForWorkerCodes:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v19 + 8));
  }

  if (codesCopy)
  {
    [PLBackgroundJobWorkerTypes typesMaskFromWorkerCodes:codesCopy];
  }

  else
  {
    +[PLBackgroundJobWorkerTypes allTypesMask];
  }
  v9 = ;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  backgroundJobService = [libraryServicesManager backgroundJobService];
  libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  libraryBundle = [libraryServicesManager2 libraryBundle];
  [backgroundJobService signalBackgroundProcessingNeededOnBundle:libraryBundle workerTypes:v9];

  replyCopy[2](replyCopy, 1, 0);
  if (v18 == 1)
  {
    os_activity_scope_leave((&v19 + 8));
  }

  if (v19)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v22 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)runMaintenanceTask:(id)task reply:(id)reply
{
  v43 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  replyCopy = reply;
  v31 = 0u;
  *sel = 0u;
  v30 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v30) = enabled;
  if (enabled)
  {
    *(&v30 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: runMaintenanceTask:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v30 + 1), (&v31 + 8));
  }

  v9 = [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdDebugService runMaintenanceTask:reply:]"];
  if (taskCopy)
  {
    v10 = NSClassFromString(taskCopy);
    v11 = NSClassFromString(&cfstr_Plmaintenancet.isa);
    if (v10 && (v12 = v11) != 0)
    {
      taskCopy = [v10 alloc];
      if (objc_opt_isKindOfClass())
      {
        libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
        v15 = taskCopy;
        libraryBundle = [libraryServicesManager libraryBundle];
        v17 = [v15 initWithLibraryBundle:libraryBundle];

        v18 = [v17 runTaskWithTransaction:v9];
        if (v18)
        {
          v19 = 0;
        }

        else
        {
          v25 = MEMORY[0x1E696ABC0];
          v33 = *MEMORY[0x1E696A278];
          v34 = @"runTaskWithTransaction failed";
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v19 = [v25 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v26];
        }

        replyCopy[2](replyCopy, v18, v19);
      }

      else
      {
        v22 = MEMORY[0x1E696AEC0];
        v23 = NSStringFromClass(v12);
        libraryServicesManager = [v22 stringWithFormat:@"runMaintenanceTask error: %@ is not a %@", taskCopy, v23];

        v24 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E696A278];
        v36 = libraryServicesManager;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v19 = [v24 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v17];
        replyCopy[2](replyCopy, 0, v19);
      }
    }

    else
    {
      taskCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"runMaintenanceTask for %@ - class not found", taskCopy];
      v21 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A278];
      v38 = taskCopy;
      libraryServicesManager = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v17 = [v21 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:libraryServicesManager];
      replyCopy[2](replyCopy, 0, v17);
    }
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A278];
    v40 = @"runMaintenanceTask for all (nil arg) not supported yet";
    taskCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    libraryServicesManager = [v20 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:taskCopy];
    replyCopy[2](replyCopy, 0, libraryServicesManager);
  }

  if (v30 == 1)
  {
    os_activity_scope_leave((&v31 + 8));
  }

  if (v31)
  {
    v27 = PLRequestGetLog();
    v28 = v27;
    if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v42 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, v31, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)resetMaintenanceTasksWithReply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v22) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetMaintenanceTasksWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  v8 = MEMORY[0x1E69BF188];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  libraryURL = [libraryServicesManager libraryURL];
  v11 = [v8 appPrivateDataForLibraryURL:libraryURL];

  v12 = [v11 valueForKey:@"PLDeferredCriticalMaintenanceTask"];
  if (v12)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Maintenance Task: Removing critical marker: %@", buf, 0xCu);
    }

    v21 = 0;
    v14 = [v11 setValue:0 forKeyPath:@"PLDeferredCriticalMaintenanceTask" error:&v21];
    v15 = v21;
  }

  else
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Maintenance Task: Critical marker doesn't exist. Nothing to remove", buf, 2u);
    }

    v15 = 0;
    v14 = 1;
  }

  replyCopy[2](replyCopy, v14, v15);

  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    v19 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)resetDrawAssetPersonEdgesBackgroundMigrationActionWithReply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetDrawAssetPersonEdgesBackgroundMigrationActionWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v21 + 1);
    *(&v21 + 1) = v6;

    os_activity_scope_enter(v6, (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v10 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService resetDrawAssetPersonEdgesBackgroundMigrationActionWithReply:]"];

  v11 = objc_opt_class();
  pathManager = [v10 pathManager];
  v20 = 0;
  v13 = [PLBackgroundModelMigration resetBackgroundActionClass:v11 pathManager:pathManager error:&v20];
  v14 = v20;

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  (replyCopy)[2](replyCopy, v13, v15);

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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)resetBackgroundMigrationClassName:(id)name reply:(id)reply
{
  v70 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  replyCopy = reply;
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v31) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetBackgroundMigrationClassName:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v31 + 1);
    *(&v31 + 1) = v9;

    os_activity_scope_enter(v9, (&v32 + 8));
  }

  if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientAuthorizedForLibraryUpgrade])
  {
    v11 = [MEMORY[0x1E69BF210] setupWithLibraryIdentifier:0 type:1];
    v12 = PLMigrationGetLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      if (v11)
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v39 = 0u;
        v40 = 0u;
        *buf = 0u;
        v14 = PLMigrationGetLog();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
        v36 = 138543362;
        v37 = trustedCallerBundleID;
        LODWORD(v29) = 12;
        v16 = _os_log_send_and_compose_impl();

        [v11 logWithMessage:v16 fromCodeLocation:"PLAssetsdDebugService.m" type:{1102, 0, &v36, v29}];
        if (v16 != buf)
        {
          free(v16);
        }
      }

      else
      {
        v20 = PLMigrationGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          trustedCallerBundleID2 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
          *buf = 138543362;
          *&buf[4] = trustedCallerBundleID2;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Reseting background migration action from client: %{public}@", buf, 0xCu);
        }
      }
    }

    v22 = NSClassFromString(nameCopy);
    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    pathManager = [libraryServicesManager pathManager];
    v30 = 0;
    v19 = [PLBackgroundModelMigration resetBackgroundActionClass:v22 pathManager:pathManager error:&v30];
    v18 = v30;
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35 = @"Client not authorized to perform library migration";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v18 = [v17 errorWithDomain:*MEMORY[0x1E69BFF48] code:41010 userInfo:v11];
    v19 = 0;
  }

  replyCopy[2](replyCopy, v19, v18);
  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      *&buf[4] = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)backgroundMigrationWithReply:(id)reply
{
  v68 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v30 = 0u;
  *sel = 0u;
  v29 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v29) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: backgroundMigrationWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v29 + 1);
    *(&v29 + 1) = v6;

    os_activity_scope_enter(v6, (&v30 + 8));
  }

  if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientAuthorizedForLibraryUpgrade])
  {
    v8 = [MEMORY[0x1E69BF210] setupWithLibraryIdentifier:0 type:1];
    v9 = PLMigrationGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      if (v8)
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        v37 = 0u;
        v38 = 0u;
        *buf = 0u;
        v11 = PLMigrationGetLog();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
        v34 = 138543362;
        v35 = trustedCallerBundleID;
        LODWORD(v27) = 12;
        v13 = _os_log_send_and_compose_impl();

        [v8 logWithMessage:v13 fromCodeLocation:"PLAssetsdDebugService.m" type:{1086, 0, &v34, v27}];
        if (v13 != buf)
        {
          free(v13);
        }
      }

      else
      {
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          trustedCallerBundleID2 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
          *buf = 138543362;
          *&buf[4] = trustedCallerBundleID2;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Background migration action client: %{public}@", buf, 0xCu);
        }
      }
    }

    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    libraryBundle = [libraryServicesManager libraryBundle];
    v28 = 0;
    v22 = [PLBackgroundModelMigration migrateBackgroundActionsWithPhotoLibraryBundle:libraryBundle logger:v8 error:&v28 reportProgressUsingBlock:0 continuationHandler:&__block_literal_global_17982];
    v16 = v28;

    v17 = v22 == 1;
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33 = @"Client not authorized to perform library migration";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v16 = [v14 errorWithDomain:*MEMORY[0x1E69BFF48] code:41010 userInfo:v15];

    v17 = 0;
  }

  replyCopy[2](replyCopy, v17, v16);

  if (v29 == 1)
  {
    os_activity_scope_leave((&v30 + 8));
  }

  if (v30)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    v25 = v30;
    if ((v30 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      *&buf[4] = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, v25, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)waitForMomentGenerationWithReply:(id)reply
{
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  v8 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PLAssetsdDebugService_waitForMomentGenerationWithReply___block_invoke;
  v10[3] = &unk_1E75781E8;
  v11 = v8;
  v9 = v8;
  [generator generateWithIncrementalDataCompletionHandler:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  replyCopy[2](replyCopy, 0);
}

- (void)syndicationIngestMutexStateDescriptionWithReply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = enabled;
  if (enabled)
  {
    *(&v17 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: syndicationIngestMutexStateDescriptionWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v18 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];

  syndicationIngestMutex = [databaseContext syndicationIngestMutex];
  syndicationIngestMutexStateDescription = [syndicationIngestMutex syndicationIngestMutexStateDescription];

  if (syndicationIngestMutexStateDescription)
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get state description. databaseContext = %p", databaseContext];
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v21 = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10 = [v12 errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:v13];
  }

  replyCopy[2](replyCopy, syndicationIngestMutexStateDescription, v10);

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v18)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v23 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)computeCacheStatusWithReply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v18 = 0u;
  *sel = 0u;
  v17 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v17) = enabled;
  if (enabled)
  {
    *(&v17 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: computeCacheStatusWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v17 + 1), (&v18 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  computeCacheManager = [libraryServicesManager computeCacheManager];

  if (computeCacheManager)
  {
    status = [computeCacheManager status];
    replyCopy[2](replyCopy, status, 0);
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = +[PLComputeCacheManager name];
    status = [v9 stringWithFormat:@"Failed to obtain manager: %@", v10];

    v11 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    v21 = status;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [v11 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v12];
    (replyCopy)[2](replyCopy, 0, v13);
  }

  if (v17 == 1)
  {
    os_activity_scope_leave((&v18 + 8));
  }

  if (v18)
  {
    v14 = PLRequestGetLog();
    v15 = v14;
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v23 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)resetComputeCacheWithReply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: resetComputeCacheWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v21 + 1);
    *(&v21 + 1) = v6;

    os_activity_scope_enter(v6, (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  computeCacheManager = [libraryServicesManager computeCacheManager];

  if (computeCacheManager)
  {
    v20 = 0;
    [computeCacheManager resetComputeCacheWithError:&v20];
    v10 = v20;
    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = +[PLComputeCacheManager name];
    v10 = [v11 stringWithFormat:@"Failed to obtain manager: %@", v12];

    v13 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25 = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v13 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v14];
    replyCopy[2](replyCopy, v15);
  }

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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)archiveComputeCacheWithReply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: archiveComputeCacheWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v21 + 1);
    *(&v21 + 1) = v6;

    os_activity_scope_enter(v6, (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  computeCacheManager = [libraryServicesManager computeCacheManager];

  if (computeCacheManager)
  {
    v20 = 0;
    [computeCacheManager createArchiveWithError:&v20];
    v10 = v20;
    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = +[PLComputeCacheManager name];
    v10 = [v11 stringWithFormat:@"Failed to obtain manager: %@", v12];

    v13 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25 = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v13 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v14];
    replyCopy[2](replyCopy, v15);
  }

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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (id)updateAndSaveAssetPersonEdgesWithReply:(id)reply
{
  v38 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v30) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: updateAndSaveAssetPersonEdgesWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v30 + 1);
    *(&v30 + 1) = v6;

    os_activity_scope_enter(v6, (&v31 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];

  v10 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService updateAndSaveAssetPersonEdgesWithReply:]"];
  v11 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__17927;
  v36 = __Block_byref_object_dispose__17928;
  v37 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__17927;
  v28[4] = __Block_byref_object_dispose__17928;
  v29 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__PLAssetsdDebugService_updateAndSaveAssetPersonEdgesWithReply___block_invoke;
  v22[3] = &unk_1E7571738;
  v26 = v28;
  v12 = v10;
  v23 = v12;
  p_buf = &buf;
  v13 = v11;
  v24 = v13;
  v14 = replyCopy;
  v25 = v14;
  [v12 performBlock:v22];
  v15 = v25;
  v16 = v13;

  _Block_object_dispose(v28, 8);
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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v16;
}

void __64__PLAssetsdDebugService_updateAndSaveAssetPersonEdgesWithReply___block_invoke(uint64_t a1)
{
  v2 = +[PLManagedAsset fetchRequest];
  [v2 setResultType:1];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 40) becomeCurrentWithPendingUnitCount:1];
  v8 = *(*(*(a1 + 56) + 8) + 40);
  if (v8)
  {
    v9 = [*(a1 + 32) managedObjectContext];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    [PLSocialGroupAssetContainment updateAndSaveAssetPersonEdgesForAssetsWithIDs:v8 inContext:v9 error:&v11];
    objc_storeStrong((v10 + 40), v11);
  }

  [*(a1 + 40) resignCurrent];
  (*(*(a1 + 48) + 16))();
}

- (void)restoreComputeCacheWithReply:(id)reply
{
  v28 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: restoreComputeCacheWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v21 + 1);
    *(&v21 + 1) = v6;

    os_activity_scope_enter(v6, (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  computeCacheManager = [libraryServicesManager computeCacheManager];

  if (computeCacheManager)
  {
    v20 = 0;
    [computeCacheManager restoreComputeCacheWithProgress:0 error:&v20];
    v10 = v20;
    replyCopy[2](replyCopy, v10);
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = +[PLComputeCacheManager name];
    v10 = [v11 stringWithFormat:@"Failed to obtain manager:  %@", v12];

    v13 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A278];
    v25 = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v13 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v14];
    replyCopy[2](replyCopy, v15);
  }

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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (id)runAssetContainmentOnSocialGroup:(id)group reply:(id)reply
{
  v36 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  replyCopy = reply;
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v31) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: runAssetContainmentOnSocialGroup:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v31 + 1);
    *(&v31 + 1) = v9;

    os_activity_scope_enter(v9, (&v32 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService runAssetContainmentOnSocialGroup:reply:]"];

  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __64__PLAssetsdDebugService_runAssetContainmentOnSocialGroup_reply___block_invoke;
  v26[3] = &unk_1E7573C00;
  v15 = v13;
  v27 = v15;
  v16 = groupCopy;
  v28 = v16;
  v17 = replyCopy;
  v30 = v17;
  v18 = v14;
  v29 = v18;
  [v15 performBlock:v26];
  v19 = v29;
  v20 = v18;

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v35 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v20;
}

void __64__PLAssetsdDebugService_runAssetContainmentOnSocialGroup_reply___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLGraphLabel fetchBuiltInLabelWithCode:1000 inContext:v2];

  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLGraphNode entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ AND %K == %@", @"primaryLabel", v3, @"uuid", *(a1 + 40)];
  [v6 setPredicate:v7];

  v8 = [*(a1 + 32) managedObjectContext];
  v22 = 0;
  v9 = [v8 executeFetchRequest:v6 error:&v22];
  v10 = v22;
  v11 = [v9 firstObject];

  if (v11)
  {
    v12 = [PLGraphNodeContainer newNodeContainerWithNode:v11];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find node."];
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E69BFF48];
    v23 = *MEMORY[0x1E696A278];
    v24[0] = v13;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v17 = [v14 errorWithDomain:v15 code:41003 userInfo:v16];

    v12 = 0;
    v10 = v17;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  [*(a1 + 48) becomeCurrentWithPendingUnitCount:1];
  v21 = 0;
  [v12 runAssetContainmentWithError:&v21 assetIDsToUpdate:0];
  v10 = v21;
  [*(a1 + 48) resignCurrent];
  v18 = [*(a1 + 32) managedObjectContext];
  v19 = v18;
  if (v10)
  {
    [v18 rollback];
  }

  else
  {
    v20 = 0;
    [v18 save:&v20];
    v10 = v20;
  }

LABEL_9:
  (*(*(a1 + 56) + 16))();
}

- (id)runAssetContainmentOnAllSocialGroups:(id)groups
{
  v35 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v28 = 0u;
  *sel = 0u;
  v27 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v27) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: runAssetContainmentOnAllSocialGroups:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v27 + 1);
    *(&v27 + 1) = v6;

    os_activity_scope_enter(v6, (&v28 + 8));
  }

  v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v11 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService runAssetContainmentOnAllSocialGroups:]"];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__17927;
  v33 = __Block_byref_object_dispose__17928;
  v34 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__PLAssetsdDebugService_runAssetContainmentOnAllSocialGroups___block_invoke;
  v22[3] = &unk_1E756B9E8;
  v12 = v8;
  v23 = v12;
  v13 = v11;
  v24 = v13;
  p_buf = &buf;
  v14 = groupsCopy;
  v25 = v14;
  [v13 performBlock:v22];
  v15 = v25;
  v16 = v12;

  _Block_object_dispose(&buf, 8);
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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }

  return v16;
}

uint64_t __62__PLAssetsdDebugService_runAssetContainmentOnAllSocialGroups___block_invoke(uint64_t a1)
{
  [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
  v2 = [*(a1 + 40) managedObjectContext];
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  [PLSocialGroup runAssetContainmentOnAllSocialGroupsInContext:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);

  [*(a1 + 32) resignCurrent];
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = [*(a1 + 40) managedObjectContext];
  v6 = v5;
  if (v4)
  {
    [v5 rollback];
  }

  else
  {
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    [v5 save:&v9];
    objc_storeStrong((v7 + 40), v9);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)coalesceJournalsForManagerName:(id)name payloadClassIDs:(id)ds withChangeJournalOverThreshold:(float)threshold reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dsCopy = ds;
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v20 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = enabled;
  if (enabled)
  {
    *(&v20 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: coalesceJournalsForManagerName:payloadClassIDs:withChangeJournalOverThreshold:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v20 + 1), (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v15 = [libraryServicesManager journalManagerForName:nameCopy];

  if (v15)
  {
    *&v16 = threshold;
    [v15 coalesceJournalsForPayloadClassIDs:dsCopy withChangeJournalOverThreshold:replyCopy completionHandler:v16];
  }

  else
  {
    replyCopy[2](replyCopy);
  }

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)snapshotJournalsForManagerName:(id)name payloadClassIDs:(id)ds reply:(id)reply
{
  v33 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dsCopy = ds;
  replyCopy = reply;
  v27 = 0u;
  *sel = 0u;
  v26 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v26) = enabled;
  if (enabled)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: snapshotJournalsForManagerName:payloadClassIDs:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v26 + 1);
    *(&v26 + 1) = v12;

    os_activity_scope_enter(v12, (&v27 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v15 = [libraryServicesManager journalManagerForName:nameCopy];

  if (v15)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__PLAssetsdDebugService_snapshotJournalsForManagerName_payloadClassIDs_reply___block_invoke;
    v24[3] = &unk_1E7577430;
    v25 = replyCopy;
    [v15 snapshotJournalsForPayloadClassIDs:dsCopy withCompletionHandler:v24];
    nameCopy = v25;
  }

  else
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid journal manager for name = %@", nameCopy];
    v17 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A278];
    v30 = nameCopy;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x1E69BFF48] code:41003 userInfo:v18];
    (*(replyCopy + 2))(replyCopy, v19);
  }

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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v32 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)privateDownloadCloudPhotoLibraryAsset:(id)asset resourceType:(unint64_t)type highPriority:(BOOL)priority reply:(id)reply
{
  v37 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  replyCopy = reply;
  v33 = 0u;
  *sel = 0u;
  v32 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v32) = enabled;
  if (enabled)
  {
    v13 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: privateDownloadCloudPhotoLibraryAsset:resourceType:highPriority:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14 = *(&v32 + 1);
    *(&v32 + 1) = v13;

    os_activity_scope_enter(v13, (&v33 + 8));
  }

  v15 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdDebugService privateDownloadCloudPhotoLibraryAsset:resourceType:highPriority:reply:]"];
  managedObjectContext = [v15 managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];

  v18 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:assetCopy];
  v19 = v18;
  if (v18 && ([v18 isTemporaryID] & 1) == 0)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __95__PLAssetsdDebugService_privateDownloadCloudPhotoLibraryAsset_resourceType_highPriority_reply___block_invoke;
    v25[3] = &unk_1E7568670;
    v26 = v19;
    v27 = v15;
    selfCopy = self;
    typeCopy = type;
    priorityCopy = priority;
    v29 = replyCopy;
    [v27 performBlock:v25 withPriority:1];
  }

  else
  {
    v20 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "privateDownloadCloudPhotoLibraryAsset: invalid object URI", buf, 2u);
    }

    replyCopy[2](replyCopy);
  }

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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v36 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __95__PLAssetsdDebugService_privateDownloadCloudPhotoLibraryAsset_resourceType_highPriority_reply___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  v3 = v2;
  if (v2 && ([v2 isDeleted] & 1) == 0)
  {
    v5 = *(*(a1 + 48) + 16);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v12 = 0;
    LOBYTE(v11) = 0;
    v8 = [v5 startCPLDownloadForAsset:v3 resourceType:v6 masterResourceOnly:0 highPriority:v7 track:0 notify:0 transient:v11 proposedTaskIdentifier:0 doneToken:0 error:&v12];
    v9 = v12;
    if (v9)
    {
      v10 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "privateDownloadCloudPhotoLibraryAsset: error downloading asset. (%@)", buf, 0xCu);
      }
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "privateDownloadCloudPhotoLibraryAsset: invalid asset", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)clearSensitivityStateForAssetsWithUUIDs:(id)ds reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  replyCopy = reply;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v25) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: clearSensitivityStateForAssetsWithUUIDs:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService clearSensitivityStateForAssetsWithUUIDs:reply:]"];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__PLAssetsdDebugService_clearSensitivityStateForAssetsWithUUIDs_reply___block_invoke;
  v21[3] = &unk_1E7576F38;
  v14 = dsCopy;
  v22 = v14;
  v15 = v13;
  v23 = v15;
  v16 = replyCopy;
  v24 = v16;
  [v15 performBlockAndWait:v21];
  (*(v16 + 2))(v16, 0);

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
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __71__PLAssetsdDebugService_clearSensitivityStateForAssetsWithUUIDs_reply___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = +[PLManagedAsset fetchRequest];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"uuid", v4];
    [v3 setPredicate:v5];
  }

  else
  {
    [v2 setPredicate:0];
  }

  v6 = [*(a1 + 40) managedObjectContext];
  v23 = 0;
  v7 = [v6 executeFetchRequest:v3 error:&v23];
  v8 = v23;

  if (!v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        [v14 setCompactSCSensitivityAnalysis:0];
        [v14 setSensitivityAnalysisState:0];
        PLResetMediaProcessingStateOnAsset(1, v14, 0x10000uLL);
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = [*(a1 + 40) managedObjectContext];
  v18 = 0;
  v16 = [v15 save:&v18];
  v17 = v18;

  if ((v16 & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)locationOfInterestUpdateWithReply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: locationOfInterestUpdateWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  [generator locationOfInterestUpdateWithCompletionBlock:replyCopy];
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithCompletionBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithCompletionBlock:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  [generator invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithCompletionBlock:blockCopy];
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)cleanupEmptyHighlightsWithReply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: cleanupEmptyHighlightsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  [generator cleanupEmptyHighlightsWithCompletionBlock:replyCopy];
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)updateHighlightTitlesWithReply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: updateHighlightTitlesWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  [generator updateHighlightTitlesWithCompletionBlock:replyCopy];
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)processUnprocessedMomentLocationsWithReply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: processUnprocessedMomentLocationsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  [generator processUnprocessedMomentLocationsWithCompletionBlock:replyCopy];
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)processRecentHighlightsWithReply:(id)reply
{
  v18 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v14 = 0u;
  *sel = 0u;
  v12 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v12) = enabled;
  if (enabled)
  {
    *(&v12 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: processRecentHighlightsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v12 + 1), (&v14 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  [generator processRecentHighlightsWithCompletionBlock:replyCopy];
  if (v13 == 1)
  {
    os_activity_scope_leave((&v14 + 8));
  }

  if (v14)
  {
    v9 = PLRequestGetLog();
    v10 = v9;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v17 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_END, v14, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)prefetchResourcesWithMode:(int64_t)mode reply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v21 = 0u;
  *sel = 0u;
  v20 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = enabled;
  if (enabled)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: prefetchResourcesWithMode:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v20 + 1);
    *(&v20 + 1) = v8;

    os_activity_scope_enter(v8, (&v21 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__PLAssetsdDebugService_prefetchResourcesWithMode_reply___block_invoke;
  v17[3] = &unk_1E7568648;
  v12 = replyCopy;
  v18 = v12;
  modeCopy = mode;
  [databaseContext perform:v17 withName:"-[PLAssetsdDebugService prefetchResourcesWithMode:reply:]"];

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v21;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v24 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __57__PLAssetsdDebugService_prefetchResourcesWithMode_reply___block_invoke(uint64_t a1, void *a2)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 libraryServicesManager];
  v5 = [v4 cloudPhotoLibraryManager];

  if (v5)
  {
    v6 = [PLCloudResourcePrefetchManager alloc];
    v7 = [v3 libraryServicesManager];
    v8 = [(PLCloudResourcePrefetchManager *)v6 initWithCPLManager:v5 pruneManager:0 libraryServicesManager:v7];

    v9 = [PLPrefetchConfiguration alloc];
    v10 = [v5 cplConfiguration];
    v11 = [v10 valueForKey:*MEMORY[0x1E6994968]];
    v12 = [(PLPrefetchConfiguration *)v9 initWithPrefetchDictionary:v11];

    v42 = v12;
    v13 = [[PLCloudResourcePrefetchPredicateOptions alloc] initWithPrefetchMode:*(a1 + 40) prefetchOptimizeMode:+[PLPrefetchConfiguration excludeDynamicResources:"defaultPrefetchOptimizeMode"]prefetchConfiguration:0, v12];
    v14 = PLPrefetchGetLog();
    v15 = os_signpost_id_generate(v14);
    v16 = *(a1 + 40);
    v17 = v14;
    v18 = v17;
    v19 = v15 - 1;
    if (v16 == 3)
    {
      if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "predicate", "", buf, 2u);
      }

      v20 = [PLCloudResourcePrefetchPredicates predicatesForThumbnails:v13];
      v21 = v18;
      v22 = v21;
      if (v19 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v31 = v22;
      }

      else
      {
        if (os_signpost_enabled(v21))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v15, "predicate", "", buf, 2u);
        }

        v23 = v22;
        if (os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v15, "fetch", "", buf, 2u);
        }
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __57__PLAssetsdDebugService_prefetchResourcesWithMode_reply___block_invoke_108;
      v46[3] = &unk_1E7575338;
      v32 = &v47;
      v47 = v22;
      v48[1] = v15;
      v33 = v48;
      v48[0] = *(a1 + 32);
      v34 = v22;
      v35 = v46;
      v36 = v8;
      v37 = v20;
      v38 = v3;
      v39 = 0;
    }

    else
    {
      if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "predicate", "", buf, 2u);
      }

      v20 = [PLCloudResourcePrefetchPredicates predicatesForNonThumbnails:v13 lastCompletePrefetchDate:0];
      v28 = v18;
      v29 = v28;
      if (v19 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v40 = v29;
      }

      else
      {
        if (os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v29, OS_SIGNPOST_INTERVAL_END, v15, "predicate", "", buf, 2u);
        }

        v30 = v29;
        if (os_signpost_enabled(v30))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v15, "fetch", "", buf, 2u);
        }
      }

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __57__PLAssetsdDebugService_prefetchResourcesWithMode_reply___block_invoke_109;
      v43[3] = &unk_1E7575338;
      v32 = &v44;
      v44 = v29;
      v45[1] = v15;
      v33 = v45;
      v45[0] = *(a1 + 32);
      v41 = v29;
      v35 = v43;
      v36 = v8;
      v37 = v20;
      v38 = v3;
      v39 = 4;
    }

    [(PLCloudResourcePrefetchManager *)v36 prefetchResourcesWithPredicates:v37 photoLibrary:v38 prefetchPhase:v39 completionHandler:v35];
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E69BFF48];
    v50 = *MEMORY[0x1E696A578];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not initialize cloud photo library manager because this library isn't the system library."];
    v51[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v8 = [v24 errorWithDomain:v25 code:41022 userInfo:v27];

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __57__PLAssetsdDebugService_prefetchResourcesWithMode_reply___block_invoke_108(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetch", "", v6, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __57__PLAssetsdDebugService_prefetchResourcesWithMode_reply___block_invoke_109(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetch", "", v6, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)prefetchResourcesForHighlights:(id)highlights reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  highlightsCopy = highlights;
  replyCopy = reply;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v22) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: prefetchResourcesForHighlights:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v22 + 1);
    *(&v22 + 1) = v9;

    os_activity_scope_enter(v9, (&v23 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__PLAssetsdDebugService_prefetchResourcesForHighlights_reply___block_invoke;
  v19[3] = &unk_1E7568620;
  v13 = highlightsCopy;
  v20 = v13;
  v14 = replyCopy;
  v21 = v14;
  [databaseContext perform:v19 withName:"-[PLAssetsdDebugService prefetchResourcesForHighlights:reply:]"];

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
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __62__PLAssetsdDebugService_prefetchResourcesForHighlights_reply___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 libraryServicesManager];
  v5 = [v4 cloudPhotoLibraryManager];

  v6 = [PLCloudResourcePrefetchManager alloc];
  v7 = [v3 libraryServicesManager];
  v8 = [(PLCloudResourcePrefetchManager *)v6 initWithCPLManager:v5 pruneManager:0 libraryServicesManager:v7];

  v9 = [PLCloudResourcePrefetchPredicates predicateToPrefetchHighlightWithUUIDs:*(a1 + 32) photoLibrary:v3];
  v10 = v9;
  if (v9)
  {
    v12[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [(PLCloudResourcePrefetchManager *)v8 prefetchResourcesWithPredicates:v11 photoLibrary:v3 prefetchPhase:4 completionHandler:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)prefetchResourcesForMemories:(id)memories reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  memoriesCopy = memories;
  replyCopy = reply;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v22) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: prefetchResourcesForMemories:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v22 + 1);
    *(&v22 + 1) = v9;

    os_activity_scope_enter(v9, (&v23 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__PLAssetsdDebugService_prefetchResourcesForMemories_reply___block_invoke;
  v19[3] = &unk_1E7568620;
  v13 = memoriesCopy;
  v20 = v13;
  v14 = replyCopy;
  v21 = v14;
  [databaseContext perform:v19 withName:"-[PLAssetsdDebugService prefetchResourcesForMemories:reply:]"];

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
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __60__PLAssetsdDebugService_prefetchResourcesForMemories_reply___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 libraryServicesManager];
  v5 = [v4 cloudPhotoLibraryManager];

  if (v5)
  {
    v6 = [PLCloudResourcePrefetchManager alloc];
    v7 = [v3 libraryServicesManager];
    v8 = [(PLCloudResourcePrefetchManager *)v6 initWithCPLManager:v5 pruneManager:0 libraryServicesManager:v7];

    v9 = [PLMemory memoriesWithUUIDs:*(a1 + 32) inPhotoLibrary:v3];
    v10 = [PLPrefetchConfiguration alloc];
    v11 = [v5 cplConfiguration];
    v12 = [v11 valueForKey:*MEMORY[0x1E6994968]];
    v13 = [(PLPrefetchConfiguration *)v10 initWithPrefetchDictionary:v12];

    v14 = [[PLCloudResourcePrefetchPredicateOptions alloc] initWithPrefetchMode:1 prefetchOptimizeMode:+[PLPrefetchConfiguration excludeDynamicResources:"defaultPrefetchOptimizeMode"]prefetchConfiguration:0, v13];
    v15 = [PLCloudResourcePrefetchPredicates predicateToPrefetchMemories:v9 photoLibrary:v3 options:v14];
    v16 = v15;
    if (v15)
    {
      v18[0] = v15;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [(PLCloudResourcePrefetchManager *)v8 prefetchResourcesWithPredicates:v17 photoLibrary:v3 prefetchPhase:2 completionHandler:0];
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pruneAssetsWithUUID:(id)d resourceTypes:(id)types reply:(id)reply
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  typesCopy = types;
  replyCopy = reply;
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v31) = enabled;
  if (enabled)
  {
    v12 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: pruneAssetsWithUUID:resourceTypes:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v31 + 1);
    *(&v31 + 1) = v12;

    os_activity_scope_enter(v12, (&v32 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager2 databaseContext];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __65__PLAssetsdDebugService_pruneAssetsWithUUID_resourceTypes_reply___block_invoke;
  v25[3] = &unk_1E75685F8;
  v17 = libraryServicesManager;
  v26 = v17;
  v18 = dCopy;
  v27 = v18;
  v19 = typesCopy;
  v28 = v19;
  selfCopy = self;
  v20 = replyCopy;
  v30 = v20;
  [databaseContext perform:v25 withName:"-[PLAssetsdDebugService pruneAssetsWithUUID:resourceTypes:reply:]"];

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v35 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __65__PLAssetsdDebugService_pruneAssetsWithUUID_resourceTypes_reply___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) cloudPhotoLibraryManager];
  if (v4)
  {
    v26 = v4;
    v27 = [[PLCloudResourcePruneManager alloc] initWithCPLManager:v4 libraryServicesManager:*(a1 + 32)];
    [PLManagedAsset assetsWithUUIDs:*(a1 + 40) options:1 inLibrary:v3];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = v37 = 0u;
    v6 = [(PLCloudResourcePruneManager *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          if (v10 && ([v10 isDeleted] & 1) == 0)
          {
            v12 = [v10 allCPLResourcesForPruning];
            v13 = *(a1 + 48);
            if (v13)
            {
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __65__PLAssetsdDebugService_pruneAssetsWithUUID_resourceTypes_reply___block_invoke_2;
              v32[3] = &unk_1E75759F0;
              v33 = v13;
              [v12 indexesOfObjectsPassingTest:v32];
              v15 = v14 = v3;
              [v12 objectsAtIndexes:v15];
              v17 = v16 = a1;

              v3 = v14;
              v12 = v17;
              a1 = v16;
            }

            [(PLCloudResourcePruneManager *)v27 pruneResources:v12 inPhotoLibrary:v3];
          }

          objc_autoreleasePoolPop(v11);
        }

        v7 = [(PLCloudResourcePruneManager *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v7);
    }

    v4 = v26;
LABEL_24:

    goto LABEL_25;
  }

  v18 = [*(a1 + 56) libraryServicesManager];
  v19 = [v18 wellKnownPhotoLibraryIdentifier];

  if (v19 == 3)
  {
    [PLManagedAsset assetsWithUUIDs:*(a1 + 40) options:1 inLibrary:v3];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = v31 = 0u;
    v20 = [(PLCloudResourcePruneManager *)v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v5);
          }

          v24 = *(*(&v28 + 1) + 8 * j);
          v25 = objc_autoreleasePoolPush();
          [v24 purgeSyndicationResourcesOriginalsOnly:0];
          objc_autoreleasePoolPop(v25);
        }

        v21 = [(PLCloudResourcePruneManager *)v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v21);
    }

    v27 = v5;
    goto LABEL_24;
  }

LABEL_25:
  (*(*(a1 + 64) + 16))();
}

uint64_t __65__PLAssetsdDebugService_pruneAssetsWithUUID_resourceTypes_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "cplType")}];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

- (void)debugSidecarURLsWithObjectURI:(id)i reply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v28) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: debugSidecarURLsWithObjectURI:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v28 + 1);
    *(&v28 + 1) = v9;

    os_activity_scope_enter(v9, (&v29 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v13 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService debugSidecarURLsWithObjectURI:reply:]"];

  managedObjectContext = [v13 managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  v16 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:iCopy];

  if (v16)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__PLAssetsdDebugService_debugSidecarURLsWithObjectURI_reply___block_invoke;
    v24[3] = &unk_1E7576F38;
    v25 = managedObjectContext;
    v26 = v16;
    v27 = replyCopy;
    [v13 performBlock:v24];

    v17 = v25;
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = @"Invalid objectID value";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v17 = [v18 errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:v19];

    (*(replyCopy + 2))(replyCopy, 0, 0, v17);
  }

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    v22 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v34 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v21, OS_SIGNPOST_INTERVAL_END, v22, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __61__PLAssetsdDebugService_debugSidecarURLsWithObjectURI_reply___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  v2 = [MEMORY[0x1E695DFA8] set];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PLAssetsdDebugService_debugSidecarURLsWithObjectURI_reply___block_invoke_2;
  aBlock[3] = &unk_1E75756F0;
  v3 = v2;
  v28 = v3;
  v4 = _Block_copy(aBlock);
  v20 = v1;
  v5 = [v1 pathForDiagnosticFile];
  v18 = v4;
  (*(v4 + 2))(v4, v5);

  v21 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v22 = 0;
        v13 = [MEMORY[0x1E696AC08] defaultManager];
        v14 = [v13 fileExistsAtPath:v12 isDirectory:&v22];
        v15 = v22;

        if (v14 && (v15 & 1) == 0)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"debugSidecarFileURL-%i", v9];
          [v16 cStringUsingEncoding:4];
          v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
          PLDictionarySetSandboxedURL();

          v9 = (v9 + 1);
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t __61__PLAssetsdDebugService_debugSidecarURLsWithObjectURI_reply___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)revertToOriginalWithObjectURI:(id)i reply:(id)reply
{
  v34 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v28 = 0u;
  *sel = 0u;
  v27 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v27) = enabled;
  if (enabled)
  {
    v9 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: revertToOriginalWithObjectURI:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v27 + 1);
    *(&v27 + 1) = v9;

    os_activity_scope_enter(v9, (&v28 + 8));
  }

  _persistentStoreCoordinator = [(PLAssetsdDebugService *)self _persistentStoreCoordinator];
  v12 = [_persistentStoreCoordinator managedObjectIDForURIRepresentation:iCopy];
  v13 = v12;
  if (v12 && ([v12 isTemporaryID] & 1) == 0)
  {
    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    databaseContext = [libraryServicesManager databaseContext];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __61__PLAssetsdDebugService_revertToOriginalWithObjectURI_reply___block_invoke;
    v25[3] = &unk_1E75685D0;
    v26 = v13;
    [databaseContext performTransactionSync:v25 withName:"-[PLAssetsdDebugService revertToOriginalWithObjectURI:reply:]"];

    v18 = 0;
    v14 = v26;
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid objectID: %@, isTemporaryID: %d", v13, objc_msgSend(v13, "isTemporaryID")];
    v15 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Cannot revert asset with error: %@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31 = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v18 = [v16 errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:v17];
  }

  replyCopy[2](replyCopy, v18);
  if (v27 == 1)
  {
    os_activity_scope_leave((&v28 + 8));
  }

  if (v28)
  {
    v21 = PLRequestGetLog();
    v22 = v21;
    v23 = v28;
    if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v33 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_END, v23, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __61__PLAssetsdDebugService_revertToOriginalWithObjectURI_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:a2];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Reverting asset %@", &v4, 0xCu);
  }

  [v2 revertToOriginal];
}

- (void)enqueuePrefetch
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: enqueuePrefetch", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

  [cloudPhotoLibraryManager startAutomaticPrefetchOrPrune];
  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)clearPrefetchState
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: clearPrefetchState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

  [cloudPhotoLibraryManager clearPrefetchState];
  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getCPLStateForDebug:(BOOL)debug withReply:(id)reply
{
  debugCopy = debug;
  v19 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v15 = 0u;
  *sel = 0u;
  v13 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v13) = enabled;
  if (enabled)
  {
    *(&v13 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getCPLStateForDebug:withReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v13 + 1), (&v15 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

  if (cloudPhotoLibraryManager)
  {
    [cloudPhotoLibraryManager getCPLStateForDebug:debugCopy completionHandler:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, @"No CPL manager configured\n");
  }

  if (v14 == 1)
  {
    os_activity_scope_leave((&v15 + 8));
  }

  if (v15)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v18 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getTaskConstraintStatusWithReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getTaskConstraintStatusWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  v5 = +[PLCameraCaptureTaskConstraintCoordinator taskConstraintStatus];
  replyCopy[2](replyCopy, v5);

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)getXPCTransactionStatusWithReply:(id)reply
{
  v15 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = enabled;
  if (enabled)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: getXPCTransactionStatusWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  openXPCTransactionStatus = [MEMORY[0x1E69BF360] openXPCTransactionStatus];
  replyCopy[2](replyCopy, openXPCTransactionStatus);

  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)rebuildTableThumbsWithReply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v25 = 0u;
  *sel = 0u;
  v23 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = enabled;
  if (enabled)
  {
    *(&v23 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: rebuildTableThumbsWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v23 + 1), (&v25 + 8));
  }

  _persistentStoreCoordinator = [(PLAssetsdDebugService *)self _persistentStoreCoordinator];
  persistentStores = [_persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  modelMigrator = [libraryServicesManager modelMigrator];

  v11 = [modelMigrator _migrationThumbnailManagerWithStore:firstObject];
  libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager2 databaseContext];
  v14 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService rebuildTableThumbsWithReply:]"];

  managedObjectContext = [v14 managedObjectContext];
  [v11 resetThumbnailsWithResetType:1 deferHintChanges:0 inContext:managedObjectContext];

  v16 = MEMORY[0x1E69BF310];
  pathManager = [v14 pathManager];
  v18 = [v16 tableThumbnailFormatsForConfigPhase:1 withPathManager:pathManager];

  v19 = objc_alloc_init(PLTableThumbnailMigrator);
  [(PLTableThumbnailMigrator *)v19 migrateAllAssetsPendingTableThumbRebuildInLibrary:v14 toTableFormats:v18 limit:0];
  replyCopy[2](replyCopy, @"done");

  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v28 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v21, OS_SIGNPOST_INTERVAL_END, v25, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)removeAllThumbnailsForDryRun:(BOOL)run reply:(id)reply
{
  runCopy = run;
  v24 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v21 = 0u;
  *sel = 0u;
  v19 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v19) = enabled;
  if (enabled)
  {
    *(&v19 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: removeAllThumbnailsForDryRun:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v19 + 1), (&v21 + 8));
  }

  *buf = 0;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v10 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService removeAllThumbnailsForDryRun:reply:]"];

  thumbnailManager = [v10 thumbnailManager];
  managedObjectContext = [v10 managedObjectContext];
  v13 = [thumbnailManager removeAllThumbnailsInContextForUrgentCacheDeleteRequest:managedObjectContext dryRun:runCopy count:buf];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*buf];
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
  replyCopy[2](replyCopy, v14, v15);

  if (v20 == 1)
  {
    os_activity_scope_leave((&v21 + 8));
  }

  if (v21)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      *&buf[4] = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)rebuildAllThumbnails
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 32);
  v10 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = enabled;
  if (enabled)
  {
    *(&v10 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: rebuildAllThumbnails", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), &v11[0].opaque[1]);
  }

  _persistentStoreCoordinator = [(PLAssetsdDebugService *)self _persistentStoreCoordinator];
  persistentStores = [_persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  modelMigrator = [libraryServicesManager modelMigrator];
  [modelMigrator debug_resetThumbnailsAndInitiateRebuildRequestInStore:firstObject];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, PLPhotoLibraryForceClientExitNotification, 0, 0, 0);
  sleep(1u);
  exit(1);
}

- (void)rebuildCloudFeedWithReply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v15 = 0u;
  *sel = 0u;
  v13 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v13) = enabled;
  if (enabled)
  {
    *(&v13 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: rebuildCloudFeedWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v13 + 1), (&v15 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  databaseContext = [libraryServicesManager databaseContext];
  v8 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService rebuildCloudFeedWithReply:]"];

  v9 = [[PLCloudFeedEntriesManager alloc] initWithPhotoLibrary:v8];
  [(PLCloudFeedEntriesManager *)v9 rebuildAllEntries:replyCopy];

  if (v14 == 1)
  {
    os_activity_scope_leave((&v15 + 8));
  }

  if (v15)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v18 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)indexAssetsWithUUIDs:(id)ds reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  replyCopy = reply;
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  searchIndexingEngine = [libraryServicesManager searchIndexingEngine];

  v10 = PLGatekeeperXPCGetLog();
  v11 = v10;
  if (searchIndexingEngine)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = dsCopy;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Search: Index Assets: %@", buf, 0xCu);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__PLAssetsdDebugService_indexAssetsWithUUIDs_reply___block_invoke;
    v18[3] = &unk_1E7571990;
    v19 = replyCopy;
    v12 = [searchIndexingEngine indexAssetsWithUUIDs:dsCopy partialUpdateMask:3 completion:v18];
    v13 = v19;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
      *buf = 138412546;
      v23 = libraryServicesManager2;
      v24 = 2112;
      v25 = dsCopy;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to get IndexingEngine for libraryServicesManager %@. Unable to index assets: %@", buf, 0x16u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v20 = *MEMORY[0x1E696A278];
    v21 = @"No PLSearchIndexingEngine.";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v13 = [v15 errorWithDomain:v16 code:41008 userInfo:v17];

    (*(replyCopy + 2))(replyCopy, 0, v13);
  }
}

void __52__PLAssetsdDebugService_indexAssetsWithUUIDs_reply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

- (void)searchAttributesForAssetWithUUID:(id)d redacted:(BOOL)redacted reply:(id)reply
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  replyCopy = reply;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v28) = enabled;
  if (enabled)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: searchAttributesForAssetWithUUID:redacted:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v28 + 1);
    *(&v28 + 1) = v11;

    os_activity_scope_enter(v11, (&v29 + 8));
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__17927;
  v34 = __Block_byref_object_dispose__17928;
  v35 = 0;
  v13 = [(PLAbstractLibraryServicesManagerService *)self newShortLivedLibraryWithName:"[PLAssetsdDebugService searchAttributesForAssetWithUUID:redacted:reply:]"];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__PLAssetsdDebugService_searchAttributesForAssetWithUUID_redacted_reply___block_invoke;
  v22[3] = &unk_1E75765B8;
  v15 = dCopy;
  v23 = v15;
  v16 = v13;
  v24 = v16;
  v17 = libraryServicesManager;
  v25 = v17;
  p_buf = &buf;
  redactedCopy = redacted;
  [v16 performBlockAndWait:v22];
  replyCopy[2](replyCopy, *(*(&buf + 1) + 40));

  _Block_object_dispose(&buf, 8);
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
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __73__PLAssetsdDebugService_searchAttributesForAssetWithUUID_redacted_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v12 = [PLManagedAsset assetWithUUID:v2 inManagedObjectContext:v3];

  v4 = [PLSearchIndexConfiguration alloc];
  v5 = [*(a1 + 48) pathManager];
  v6 = [(PLSearchIndexConfiguration *)v4 initWithPathManager:v5];

  v7 = [*(a1 + 48) wellKnownPhotoLibraryIdentifier];
  v8 = [(PLSearchIndexConfiguration *)v6 indexingContext];
  v9 = [PLSpotlightAssetTranslator jsonDictionaryFromAsset:v12 libraryIdentifier:v7 indexingContext:v8 includeEmbeddingData:0 redacted:*(a1 + 64)];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (void)rebuildSearchIndexWithReply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v23 = 0u;
  *sel = 0u;
  v22 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v22) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: rebuildSearchIndexWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v22 + 1);
    *(&v22 + 1) = v6;

    os_activity_scope_enter(v6, (&v23 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    databaseContext = [libraryServicesManager2 databaseContext];
    v12 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService rebuildSearchIndexWithReply:]"];

    libraryServicesManager3 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager3 searchIndexingEngine];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53__PLAssetsdDebugService_rebuildSearchIndexWithReply___block_invoke;
    v20[3] = &unk_1E7576AA0;
    v21 = replyCopy;
    [searchIndexingEngine resetSearchIndexWithReason:4 library:v12 dropCompletion:v20 completion:0];
  }

  else
  {
    v15 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[PLAssetsdDebugService rebuildSearchIndexWithReply:]";
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Search index disabled, unable to perform operation %s", buf, 0xCu);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy);
    }
  }

  if (v22 == 1)
  {
    os_activity_scope_leave((&v23 + 8));
  }

  if (v23)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v23;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v26 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)setSearchIndexPaused:(BOOL)paused reason:(id)reason reply:(id)reply
{
  pausedCopy = paused;
  v24 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  replyCopy = reply;
  v20 = 0u;
  *sel = 0u;
  v18 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v18) = enabled;
  if (enabled)
  {
    *(&v18 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: setSearchIndexPaused:reason:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v18 + 1), (&v20 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    if (pausedCopy)
    {
      v13 = PLGatekeeperXPCGetLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      v23 = "[PLAssetsdDebugService setSearchIndexPaused:reason:reply:]";
      v14 = "Pausing search indexing is not supported for background job indexing %s";
    }

    else
    {
      v13 = PLGatekeeperXPCGetLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      v23 = "[PLAssetsdDebugService setSearchIndexPaused:reason:reply:]";
      v14 = "Unpausing search indexing is not supported for background job indexing. Force run the appropriate background job instead %s";
    }
  }

  else
  {
    v13 = PLGatekeeperXPCGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v23 = "[PLAssetsdDebugService setSearchIndexPaused:reason:reply:]";
    v14 = "Search index disabled, unable to perform operation %s";
  }

  _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_12:

  if (replyCopy)
  {
    replyCopy[2](replyCopy);
  }

  if (v19 == 1)
  {
    os_activity_scope_leave((&v20 + 8));
  }

  if (v20)
  {
    v15 = PLRequestGetLog();
    v16 = v15;
    if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v23 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)closeSearchIndexWithReply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v20 = 0u;
  *sel = 0u;
  v19 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v19) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: closeSearchIndexWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v19 + 1);
    *(&v19 + 1) = v6;

    os_activity_scope_enter(v6, (&v20 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    v10 = +[PLConcurrencyLimiter sharedLimiter];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__PLAssetsdDebugService_closeSearchIndexWithReply___block_invoke;
    v17[3] = &unk_1E7577C08;
    v17[4] = self;
    v18 = replyCopy;
    [v10 sync:v17 identifyingBlock:0 library:0];
  }

  else
  {
    v11 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[PLAssetsdDebugService closeSearchIndexWithReply:]";
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Search index disabled, unable to perform operation %s", buf, 0xCu);
    }

    if (replyCopy)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
      (*(replyCopy + 2))(replyCopy, 0, v12);
    }
  }

  if (v19 == 1)
  {
    os_activity_scope_leave((&v20 + 8));
  }

  if (v20)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    v15 = v20;
    if ((v20 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v23 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

uint64_t __51__PLAssetsdDebugService_closeSearchIndexWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 searchIndexingEngine];
  [v3 close];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)dropSearchIndexWithReply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v21 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v21) = enabled;
  if (enabled)
  {
    v6 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: dropSearchIndexWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v7 = *(&v21 + 1);
    *(&v21 + 1) = v6;

    os_activity_scope_enter(v6, (&v22 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  isSearchIndexingEnabled = [libraryServicesManager isSearchIndexingEnabled];

  if (isSearchIndexingEnabled)
  {
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager2 searchIndexingEngine];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "-[PLAssetsdDebugService dropSearchIndexWithReply:]"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50__PLAssetsdDebugService_dropSearchIndexWithReply___block_invoke;
    v19[3] = &unk_1E7571990;
    v20 = replyCopy;
    [searchIndexingEngine dropSearchIndexWithSourceName:v12 completion:v19];

    v13 = v20;
LABEL_9:

    goto LABEL_10;
  }

  v14 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = "[PLAssetsdDebugService dropSearchIndexWithReply:]";
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Search index disabled, unable to perform operation %s", buf, 0xCu);
  }

  if (replyCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46309 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v13);
    goto LABEL_9;
  }

LABEL_10:
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
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __50__PLAssetsdDebugService_dropSearchIndexWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 isSuccess];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

- (void)dumpMomentsMetadataToPath:(id)path reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v17 = 0u;
  *sel = 0u;
  v16 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v16) = enabled;
  if (enabled)
  {
    *(&v16 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: dumpMomentsMetadataToPath:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v16 + 1), (&v17 + 8));
  }

  if (MEMORY[0x19EAEE230]())
  {
    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
    generator = [momentGenerationDataManager generator];

    v12 = [generator allMomentsMetadataWriteToFile:pathCopy];
  }

  else
  {
    v12 = 0;
  }

  replyCopy[2](replyCopy, v12);

  if (v16 == 1)
  {
    os_activity_scope_leave((&v17 + 8));
  }

  if (v17)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v20 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)dumpMetadataForMomentsToPath:(id)path reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v17 = 0u;
  *sel = 0u;
  v16 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v16) = enabled;
  if (enabled)
  {
    *(&v16 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: dumpMetadataForMomentsToPath:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v16 + 1), (&v17 + 8));
  }

  if (MEMORY[0x19EAEE230]())
  {
    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
    generator = [momentGenerationDataManager generator];

    v12 = [generator allAssetMetadataWriteToFile:pathCopy];
  }

  else
  {
    v12 = 0;
  }

  replyCopy[2](replyCopy, v12);

  if (v16 == 1)
  {
    os_activity_scope_leave((&v17 + 8));
  }

  if (v17)
  {
    v13 = PLRequestGetLog();
    v14 = v13;
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v20 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v17, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)rebuildHighlightsDeletingExistingHighlights:(BOOL)highlights reply:(id)reply
{
  highlightsCopy = highlights;
  v33 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = enabled;
  if (enabled)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: rebuildHighlightsDeletingExistingHighlights:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v24 + 1);
    *(&v24 + 1) = v8;

    os_activity_scope_enter(v8, (&v25 + 8));
  }

  v10 = objc_autoreleasePoolPush();
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  if (generator)
  {
    v29 = PLMomentGenerationShouldDeleteAllHighlightsKey;
    v14 = [MEMORY[0x1E696AD98] numberWithBool:highlightsCopy];
    v30 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__PLAssetsdDebugService_rebuildHighlightsDeletingExistingHighlights_reply___block_invoke;
    v22[3] = &unk_1E7576AA0;
    v23 = replyCopy;
    [generator rebuildAllHighlightsWithOptions:v15 completionHandler:v22];
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Failed to obtain moment generator";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = [v16 errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:v17];

    (*(replyCopy + 2))(replyCopy, v15);
  }

  objc_autoreleasePoolPop(v10);
  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v32 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)rebuildMomentsDeletingExistingMoments:(BOOL)moments reply:(id)reply
{
  momentsCopy = moments;
  v33 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v25 = 0u;
  *sel = 0u;
  v24 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v24) = enabled;
  if (enabled)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: rebuildMomentsDeletingExistingMoments:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v24 + 1);
    *(&v24 + 1) = v8;

    os_activity_scope_enter(v8, (&v25 + 8));
  }

  v10 = objc_autoreleasePoolPush();
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  if (generator)
  {
    v29 = PLMomentGenerationShouldDeleteAllMomentsKey;
    v14 = [MEMORY[0x1E696AD98] numberWithBool:momentsCopy];
    v30 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__PLAssetsdDebugService_rebuildMomentsDeletingExistingMoments_reply___block_invoke;
    v22[3] = &unk_1E7576AA0;
    v23 = replyCopy;
    [generator rebuildAllMomentsWithOptions:v15 completionHandler:v22];
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Failed to obtain moment generator";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = [v16 errorWithDomain:*MEMORY[0x1E69BFF48] code:41001 userInfo:v17];

    (*(replyCopy + 2))(replyCopy, v15);
  }

  objc_autoreleasePoolPop(v10);
  if (v24 == 1)
  {
    os_activity_scope_leave((&v25 + 8));
  }

  if (v25)
  {
    v18 = PLRequestGetLog();
    v19 = v18;
    v20 = v25;
    if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v32 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v20, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)momentGenerationStatusWithReply:(id)reply
{
  v19 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v15 = 0u;
  *sel = 0u;
  v13 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v13) = enabled;
  if (enabled)
  {
    *(&v13 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: momentGenerationStatusWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v13 + 1), (&v15 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  momentGenerationDataManager = [libraryServicesManager momentGenerationDataManager];
  generator = [momentGenerationDataManager generator];

  momentGenerationStatus = [generator momentGenerationStatus];
  replyCopy[2](replyCopy, momentGenerationStatus);

  if (v14 == 1)
  {
    os_activity_scope_leave((&v15 + 8));
  }

  if (v15)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v18 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)recoverAssetsInInconsistentCloudState
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  *sel = 0u;
  v13 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v13) = enabled;
  if (enabled)
  {
    *(&v13 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: recoverAssetsInInconsistentCloudState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v13 + 1), (&v15 + 8));
  }

  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

  if (cloudPhotoLibraryManager)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69BF360]);
    v7 = [PLManagedAssetRecoveryManager alloc];
    libraryServicesManager2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    v9 = [(PLManagedAssetRecoveryManager *)v7 initWithLibraryServicesManager:libraryServicesManager2];

    [(PLManagedAssetRecoveryManager *)v9 startRecoveryUsingCloudPhotoLibraryManager:cloudPhotoLibraryManager transaction:v6 shouldIdentifyInconsistentAssets:0];
  }

  if (v14 == 1)
  {
    os_activity_scope_leave((&v15 + 8));
  }

  if (v15)
  {
    v10 = PLRequestGetLog();
    v11 = v10;
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v18 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_END, v15, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)identifyAssetsWithInconsistentCloudState
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *sel = 0u;
  v10 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v10) = enabled;
  if (enabled)
  {
    *(&v10 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: identifyAssetsWithInconsistentCloudState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v10 + 1), (&v11 + 8));
  }

  v4 = [PLManagedAssetRecoveryManager alloc];
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v6 = [(PLManagedAssetRecoveryManager *)v4 initWithLibraryServicesManager:libraryServicesManager];

  [(PLManagedAssetRecoveryManager *)v6 identifyAssetsWithInconsistentCloudState];
  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v7 = PLRequestGetLog();
    v8 = v7;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)asynchronousUnloadImageFilesForAssetWithObjectURI:(id)i minimumFormat:(unsigned __int16)format reply:(id)reply
{
  v53 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v44 = 0u;
  *sel = 0u;
  v43 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v43) = enabled;
  if (enabled)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: asynchronousUnloadImageFilesForAssetWithObjectURI:minimumFormat:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v43 + 1);
    *(&v43 + 1) = v11;

    os_activity_scope_enter(v11, (&v44 + 8));
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__17927;
  v51 = __Block_byref_object_dispose__17928;
  v52 = 0;
  if (MEMORY[0x19EAEE230]())
  {
    libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
    databaseContext = [libraryServicesManager databaseContext];
    v15 = [databaseContext newShortLivedLibraryWithName:"-[PLAssetsdDebugService asynchronousUnloadImageFilesForAssetWithObjectURI:minimumFormat:reply:]"];

    managedObjectContext = [v15 managedObjectContext];
    persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];

    v18 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:iCopy];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke;
    v33[3] = &unk_1E75685A8;
    v19 = v18;
    v34 = v19;
    v20 = v15;
    formatCopy = format;
    v35 = v20;
    v36 = &v39;
    p_buf = &buf;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_8;
    v29[3] = &unk_1E7575F50;
    v30 = replyCopy;
    v31 = &v39;
    v32 = &buf;
    [v20 performTransaction:v33 completionHandler:v29];
  }

  else
  {
    v21 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47 = @"Unauthorized access";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x1E69BFF48] code:41010 userInfo:v22];
    v24 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v23;

    (*(replyCopy + 2))(replyCopy, *(v40 + 24), *(*(&buf + 1) + 40));
  }

  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v39, 8);
  if (v43 == 1)
  {
    os_activity_scope_leave((&v44 + 8));
  }

  if (v44)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v44;
    if ((v44 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel[1]);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "PLXPC Sync", "%{public}s", &buf, 0xCu);
    }
  }
}

void __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [PLManagedAsset assetWithObjectID:*(a1 + 32) inLibrary:*(a1 + 40)];
  v33 = [v2 isEditableFromAssetsLibrary];
  v3 = [v2 hasAdjustments];
  v32 = [v2 uuid];
  v31 = [v2 thumbnailIdentifier];
  v30 = [v2 effectiveThumbnailIndex];
  v4 = [v2 isRAWOnly];
  v5 = [v2 isRAWPlusJPEG];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_2;
  aBlock[3] = &unk_1E7568508;
  v27 = v6;
  v81 = v27;
  v7 = _Block_copy(aBlock);
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__17927;
  v74 = __Block_byref_object_dispose__17928;
  v75 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_3;
  v64[3] = &unk_1E7568530;
  v69 = v5;
  v67 = &v76;
  v8 = v7;
  v66 = v8;
  v9 = v2;
  v65 = v9;
  v68 = &v70;
  v29 = _Block_copy(v64);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_4;
  v58[3] = &unk_1E7568530;
  v63 = v4;
  v61 = &v76;
  v10 = v8;
  v60 = v10;
  v11 = v9;
  v59 = v11;
  v62 = &v70;
  v35 = _Block_copy(v58);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_5;
  v53[3] = &unk_1E756DED0;
  v56 = &v76;
  v12 = v10;
  v55 = v12;
  v13 = v11;
  v54 = v13;
  v57 = &v70;
  v14 = _Block_copy(v53);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_6;
  v46[3] = &unk_1E7568558;
  LOBYTE(v2) = v3;
  v51 = v3;
  v49 = &v76;
  v15 = v12;
  v48 = v15;
  v16 = v13;
  v47 = v16;
  v50 = &v70;
  v52 = v4;
  v17 = a1;
  v18 = _Block_copy(v46);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_7;
  v36[3] = &unk_1E7568580;
  v45 = v2;
  v42 = &v76;
  v19 = v15;
  v41 = v19;
  v20 = v16;
  v37 = v20;
  v43 = &v70;
  v38 = *(v17 + 40);
  v21 = v31;
  v39 = v21;
  v44 = v30;
  v22 = v32;
  v40 = v22;
  v23 = _Block_copy(v36);
  if (v33)
  {
    v24 = *(v17 + 64);
    if ((v24 - 9997) >= 2)
    {
      if ((v24 - 9999) <= 1)
      {
        v29[2](v29);
        v25 = v35;
LABEL_8:
        v25[2]();
        goto LABEL_9;
      }

      v26 = [MEMORY[0x1E69BF260] formatWithID:v27];
      v34 = [v26 isThumbnail];

      if (v34)
      {
        v29[2](v29);
        v35[2]();
        v14[2](v14);
        (v18[2])(v18);
        v25 = v23;
        goto LABEL_8;
      }
    }

    v29[2](v29);
    v35[2]();
    v14[2](v14);
    v25 = v18;
    goto LABEL_8;
  }

LABEL_9:
  *(*(*(v17 + 48) + 8) + 24) = *(v77 + 24);
  objc_storeStrong((*(*(v17 + 56) + 8) + 40), v71[5]);

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);

  objc_autoreleasePoolPop(context);
}

uint64_t __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([*(a1 + 32) fileExistsAtPath:v5])
  {
    v6 = *(a1 + 32);
    v10 = 0;
    v7 = [v6 removeItemAtPath:v5 error:&v10];
    v8 = v10;
    if (a3 && !*a3)
    {
      v8 = v8;
      *a3 = v8;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v7;
}

void __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 64);
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  if (v2 == 1)
  {
    v6 = [v3 urlForSideCarImageFile];
    v7 = [v6 path];
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    v9 = (*(v4 + 16))(v4, v7, &obj);
    objc_storeStrong((v8 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) |= v9;
  }

  else
  {
    v10 = [v3 pathForOriginalFile];
    v11 = *(*(a1 + 56) + 8);
    v16 = *(v11 + 40);
    v12 = (*(v4 + 16))(v4, v10, &v16);
    objc_storeStrong((v11 + 40), v16);
    *(*(*(a1 + 48) + 8) + 24) |= v12;

    if (![*(a1 + 32) isPhotoIris])
    {
      return;
    }

    v13 = *(a1 + 40);
    v6 = [*(a1 + 32) pathForVideoComplementFile];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    LOBYTE(v13) = (*(v13 + 16))(v13, v6, &v15);
    objc_storeStrong((v14 + 40), v15);
    *(*(*(a1 + 48) + 8) + 24) |= v13;
  }
}

void __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 64);
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  if (v2 == 1)
  {
    v6 = [v3 pathForNonAdjustedFullsizeImageFile];
    v7 = *(*(a1 + 56) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    v17 = v9;
    v10 = (*(v4 + 16))(v4, v6, &v17);
    v11 = v17;
  }

  else
  {
    v6 = [v3 pathForOriginalFile];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    v8 = (v12 + 40);
    v16 = v13;
    v10 = (*(v4 + 16))(v4, v6, &v16);
    v11 = v16;
  }

  v14 = v11;
  v15 = *v8;
  *v8 = v14;

  *(*(*(a1 + 48) + 8) + 24) |= v10;
}

void __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) pathForPenultimateFullsizeRenderImageFile];
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  LOBYTE(v2) = (*(v2 + 16))(v2, v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) |= v2;
}

void __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) pathForFullsizeRenderImageFile];
    v4 = *(*(a1 + 56) + 8);
    obj = *(v4 + 40);
    LOBYTE(v2) = (*(v2 + 16))(v2, v3, &obj);
    objc_storeStrong((v4 + 40), obj);
    v5 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) |= v2;

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) pathForAdjustedLargeSizeImageFile];
    v8 = *(*(a1 + 56) + 8);
    v42 = *(v8 + 40);
    LOBYTE(v6) = (*(v6 + 16))(v6, v7, &v42);
    objc_storeStrong((v8 + 40), v42);
    *(*(*(a1 + 48) + 8) + 24) |= v6;

    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) pathForAdjustedLargeThumbnailFile];
    v11 = *(*(a1 + 56) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    v41 = v13;
    v14 = (*(v9 + 16))(v9, v10, &v41);
    v15 = v41;
  }

  else
  {
    v16 = *(a1 + 65);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v5 = a1 + 48;
    if (v16 == 1)
    {
      v19 = [v17 pathForNonAdjustedFullsizeImageFile];
      v20 = *(*(a1 + 56) + 8);
      v22 = *(v20 + 40);
      v21 = (v20 + 40);
      v40 = v22;
      v23 = (*(v18 + 16))(v18, v19, &v40);
      v24 = v40;
    }

    else
    {
      v19 = [v17 pathForOriginalFile];
      v25 = *(*(a1 + 56) + 8);
      v26 = *(v25 + 40);
      v21 = (v25 + 40);
      v39 = v26;
      v23 = (*(v18 + 16))(v18, v19, &v39);
      v24 = v39;
    }

    v27 = v24;
    v28 = *v21;
    *v21 = v27;

    *(*(*(a1 + 48) + 8) + 24) |= v23;
    v29 = *(a1 + 40);
    v30 = [*(a1 + 32) pathForNonAdjustedLargeSizeImageFile];
    v31 = *(*(a1 + 56) + 8);
    v38 = *(v31 + 40);
    LOBYTE(v29) = (*(v29 + 16))(v29, v30, &v38);
    objc_storeStrong((v31 + 40), v38);
    *(*(*(a1 + 48) + 8) + 24) |= v29;

    v32 = *(a1 + 40);
    v10 = [*(a1 + 32) pathForNonAdjustedLargeThumbnailFile];
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    v12 = (v33 + 40);
    v37 = v34;
    v14 = (*(v32 + 16))(v32, v10, &v37);
    v15 = v37;
  }

  v35 = v15;
  v36 = *v12;
  *v12 = v35;

  *(*(*v5 + 8) + 24) |= v14;
}

void __95__PLAssetsdDebugService_asynchronousUnloadImageFilesForAssetWithObjectURI_minimumFormat_reply___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  if (v2 == 1)
  {
    v5 = [v4 pathForAdjustedMediumThumbnailFile];
    v6 = *(*(a1 + 80) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    v17 = v8;
    v9 = (*(v3 + 16))(v3, v5, &v17);
    v10 = v17;
  }

  else
  {
    v5 = [v4 pathForNonAdjustedMediumThumbnailFile];
    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    v7 = (v11 + 40);
    v16 = v12;
    v9 = (*(v3 + 16))(v3, v5, &v16);
    v10 = v16;
  }

  v13 = v10;
  v14 = *v7;
  *v7 = v13;

  *(*(*(a1 + 72) + 8) + 24) |= v9;
  v15 = [*(a1 + 40) thumbnailManager];
  [v15 deleteThumbnailsWithIdentifier:*(a1 + 48) orIndex:*(a1 + 88) uuid:*(a1 + 56)];
  [*(a1 + 32) setEffectiveThumbnailIndex:0x7FFFFFFFFFFFFFFFLL];
}

- (PLAssetsdDebugService)initWithLibraryServicesManager:(id)manager resourceDownloader:(id)downloader bundleController:(id)controller connectionAuthorization:(id)authorization
{
  downloaderCopy = downloader;
  controllerCopy = controller;
  authorizationCopy = authorization;
  v17.receiver = self;
  v17.super_class = PLAssetsdDebugService;
  v14 = [(PLAbstractLibraryServicesManagerService *)&v17 initWithLibraryServicesManager:manager];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_resourceDownloader, downloader);
    objc_storeStrong(&v15->_bundleController, controller);
    objc_storeStrong(&v15->_connectionAuthorization, authorization);
  }

  return v15;
}

- (id)_persistentStoreCoordinator
{
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  persistentStoreCoordinator = [libraryServicesManager persistentStoreCoordinator];

  return persistentStoreCoordinator;
}

@end