@interface PLRebuildJournalManager
+ (BOOL)assetJournalExists:(id)a3 error:(id *)a4;
+ (BOOL)existingJournalsCompatibleForRebuild:(id)a3 error:(id *)a4;
+ (BOOL)isEnabledWithPathManager:(id)a3 error:(id *)a4;
+ (id)baseURLFromPathManager:(id)a3;
+ (id)payloadClasses;
- (BOOL)_coalesceJournalsForPayloadClassIDs:(id)a3 withChangeJournalOverThreshold:(float)a4 error:(id *)a5;
- (BOOL)_performSnapshotForPayloadClassIDs:(id)a3 error:(id *)a4;
- (BOOL)_performSnapshotIfNecessaryWithError:(id *)a3;
- (BOOL)_recreateResourcesForAsset:(id)a3 withPayload:(id)a4 resources:(id)a5 recreateOptions:(unsigned __int8)a6 storeOptions:(id)a7 libraryID:(id)a8 isCPLEnabled:(BOOL)a9;
- (BOOL)_replayFromCurrentHistoryToken;
- (BOOL)_snapshotJournalsForPayloadClassIDs:(id)a3 error:(id *)a4;
- (BOOL)coalesceJournalsForPayloadClassIDs:(id)a3 withChangeJournalOverThreshold:(float)a4 error:(id *)a5;
- (BOOL)snapshotJournalsForPayloadClassIDs:(id)a3 error:(id *)a4;
- (PLRebuildJournalManager)initWithLibraryServicesManager:(id)a3;
- (id)_assetsToImportFromAssetJournalInManagedObjectContext:(id)a3 outOnDiskURLs:(id)a4;
- (id)_newTransientContext;
- (id)assetsToImportFromAssetJournalInManagedObjectContext:(id)a3 outOnDiskURLs:(id)a4;
- (void)_handleChangeHandlingNotificationWithTransaction:(id)a3;
- (void)_recreateAssetsInManagedObjectContext:(id)a3 options:(unsigned __int8)a4 progress:(id)a5;
- (void)_recreateNonAssetsInManagedObjectContext:(id)a3 progress:(id)a4;
- (void)_registerForChangeHandlingNotifications;
- (void)_retrySnapshot;
- (void)_snapshotJournalsIgnoreHistoreIfNecessaryForPayloadClassIDs:(id)a3;
- (void)_start;
- (void)_startAfterRebuild;
- (void)coalesceJournalsForPayloadClassIDs:(id)a3 withChangeJournalOverThreshold:(float)a4 completionHandler:(id)a5;
- (void)notifyRebuildComplete;
- (void)notifyWillRebuild;
- (void)recreateAllObjectsInManagedObjectContext:(id)a3 options:(unsigned __int8)a4;
- (void)recreateAssetsInManagedObjectContext:(id)a3 options:(unsigned __int8)a4 progress:(id)a5;
- (void)recreateNonAssetsInManagedObjectContext:(id)a3 progress:(id)a4;
- (void)snapshotJournalsForPayloadClassIDs:(id)a3 withCompletionHandler:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation PLRebuildJournalManager

- (id)_assetsToImportFromAssetJournalInManagedObjectContext:(id)a3 outOnDiskURLs:(id)a4
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v11 = [WeakRetained pathManager];

  LODWORD(WeakRetained) = [v11 isUBF];
  v12 = objc_loadWeakRetained(&self->_lsm);
  v13 = [v12 pathManager];
  v14 = v13;
  if (WeakRetained)
  {
    v15 = 4;
  }

  else
  {
    v15 = 1;
  }

  v16 = [v13 photoDirectoryWithType:v15];

  v88 = 0;
  v17 = [MEMORY[0x1E69BF238] realPathForPath:v16 error:&v88];
  v18 = v88;
  if (v17)
  {
    v19 = [PLJournal alloc];
    v20 = [(PLJournalManagerCore *)self->_journalManager baseURL];
    v21 = [(PLJournal *)v19 initWithBaseURL:v20 payloadClass:objc_opt_class()];

    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __95__PLRebuildJournalManager__assetsToImportFromAssetJournalInManagedObjectContext_outOnDiskURLs___block_invoke;
    v82[3] = &unk_1E7575970;
    v83 = v11;
    v70 = v17;
    v84 = v17;
    v69 = v8;
    v85 = v69;
    v22 = v9;
    v86 = v22;
    v87 = v7;
    v81 = v18;
    v23 = [v21 enumeratePayloadsUsingBlock:v82 error:&v81];
    v67 = v81;

    v24 = PLMigrationGetLog();
    v25 = v24;
    v68 = v11;
    if (!v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = v67;
        v93 = v67;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Error enumerating assets journal for import %@", buf, 0xCu);
      }

      else
      {
        v51 = v67;
      }

      v17 = v70;
      goto LABEL_42;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v69 count];
      *buf = 134217984;
      v93 = v26;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Will import %lu assets from asset journal", buf, 0xCu);
    }

    v66 = v21;

    v17 = v70;
    v64 = v8;
    v65 = v7;
    v63 = v9;
    if ([v22 count])
    {
      v27 = MEMORY[0x1E695D5E0];
      v28 = +[PLAssetJournalEntryPayload payloadClassID];
      v29 = [v27 fetchRequestWithEntityName:v28];

      [v29 setReturnsObjectsAsFaults:1];
      v91 = @"uuid";
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
      [v29 setPropertiesToFetch:v30];

      [v29 setFetchBatchSize:100];
      v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v22];
      [v29 setPredicate:v31];

      v80 = 0;
      v32 = [v6 executeFetchRequest:v29 error:&v80];
      v33 = v80;
      v34 = v33;
      if (v32)
      {
        v62 = v33;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v35 = v32;
        v36 = [v35 countByEnumeratingWithState:&v76 objects:v90 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v77;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v77 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = [*(*(&v76 + 1) + 8 * i) uuid];
              [v22 removeObject:v40];
            }

            v37 = [v35 countByEnumeratingWithState:&v76 objects:v90 count:16];
          }

          while (v37);
        }

        v8 = v64;
        v7 = v65;
        v34 = v62;
        v9 = v63;
      }

      v11 = v68;
      v17 = v70;
    }

    if (![v22 count])
    {
      v18 = v67;
      v21 = v66;
LABEL_43:
      v59 = [v69 allValues];

      goto LABEL_44;
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v41 = v22;
    v42 = [v41 countByEnumeratingWithState:&v72 objects:v89 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v73;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v73 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v72 + 1) + 8 * j);
          v47 = [PLJournalEntry alloc];
          v48 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v46];
          v49 = [(PLJournalEntry *)v47 initForDeleteWithPayloadID:v48 payloadClass:objc_opt_class()];

          [v25 addObject:v49];
        }

        v43 = [v41 countByEnumeratingWithState:&v72 objects:v89 count:16];
      }

      while (v43);
    }

    v71 = v67;
    v50 = [v66 appendChangeEntries:v25 error:&v71];
    v51 = v71;

    v52 = PLMigrationGetLog();
    v53 = v52;
    if (v50)
    {
      v8 = v64;
      v7 = v65;
      v9 = v63;
      v17 = v70;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [v41 count];
        *buf = 134217984;
        v93 = v54;
        v55 = "Deleted %lu non-local assets from asset journal";
        v56 = v53;
        v57 = OS_LOG_TYPE_DEFAULT;
        v58 = 12;
LABEL_40:
        _os_log_impl(&dword_19BF1F000, v56, v57, v55, buf, v58);
      }
    }

    else
    {
      v8 = v64;
      v7 = v65;
      v9 = v63;
      v17 = v70;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v60 = [v41 count];
        *buf = 134218242;
        v93 = v60;
        v94 = 2112;
        v95 = v51;
        v55 = "Error deleting %lu entries from asset journal: %@";
        v56 = v53;
        v57 = OS_LOG_TYPE_ERROR;
        v58 = 22;
        goto LABEL_40;
      }
    }

    v21 = v66;
LABEL_42:

    v18 = v51;
    v11 = v68;
    goto LABEL_43;
  }

  v21 = PLMigrationGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v93 = v16;
    v94 = 2112;
    v95 = v18;
    _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to resolve originals path: %{public}@, error: %@", buf, 0x16u);
  }

  v59 = MEMORY[0x1E695E0F0];
LABEL_44:

  return v59;
}

void __95__PLRebuildJournalManager__assetsToImportFromAssetJournalInManagedObjectContext_outOnDiskURLs___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 originalResourceRelativePathsWithPathManager:*(a1 + 32)];
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = v5;
      v28 = v4;
      v29 = 0;
      v10 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = MEMORY[0x1E695DFF8];
          v14 = [*(a1 + 40) stringByAppendingPathComponent:v12];
          v15 = [v13 fileURLWithPath:v14];

          if ([v15 checkResourceIsReachableAndReturnError:0])
          {
            [v9 addObject:v15];
            v16 = [v6 firstObject];

            if (v12 == v16)
            {
              v17 = v15;

              v29 = v17;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v8);

      v4 = v28;
      v18 = v29;
      v5 = v9;
      if (v29)
      {
        v19 = [*(a1 + 48) objectForKeyedSubscript:v29];
        v20 = v19;
        if (v19)
        {
          v21 = *(a1 + 56);
          v22 = [v19 assetPayload];
          v23 = [v22 payloadID];
          v24 = [v23 payloadIDString];
          [v21 addObject:v24];
        }

        v25 = [[PLFileSystemImportAsset alloc] initWithAssetPayload:v3];
        [*(a1 + 48) setObject:v25 forKeyedSubscript:v29];

        v26 = [*(a1 + 48) objectForKeyedSubscript:v29];
        [v26 addURLs:v5];

        [*(a1 + 64) unionSet:v5];
        goto LABEL_20;
      }
    }

    else
    {
    }

    v27 = *(a1 + 56);
    v18 = [v3 payloadID];
    v20 = [v18 payloadIDString];
    [v27 addObject:v20];
LABEL_20:

    goto LABEL_21;
  }

  v5 = PLMigrationGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v3;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Asset payload has no resources, not importing: %{public}@", buf, 0xCu);
  }

LABEL_21:
}

- (id)assetsToImportFromAssetJournalInManagedObjectContext:(id)a3 outOnDiskURLs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__104308;
  v21 = __Block_byref_object_dispose__104309;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PLRebuildJournalManager_assetsToImportFromAssetJournalInManagedObjectContext_outOnDiskURLs___block_invoke;
  v13[3] = &unk_1E75778C0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __94__PLRebuildJournalManager_assetsToImportFromAssetJournalInManagedObjectContext_outOnDiskURLs___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[24] == 3)
  {
    v3 = [v2 _assetsToImportFromAssetJournalInManagedObjectContext:a1[5] outOnDiskURLs:a1[6]];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = _PFAssertFailHandler();
    [(PLRebuildJournalManager *)v6 _recreateNonAssetsInManagedObjectContext:v7 progress:v8, v9];
  }
}

- (void)_recreateNonAssetsInManagedObjectContext:(id)a3 progress:(id)a4
{
  v261 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v249 = 0;
  v250 = &v249;
  v251 = 0x3032000000;
  v252 = __Block_byref_object_copy__104308;
  v253 = __Block_byref_object_dispose__104309;
  v254 = 0;
  v245 = 0;
  v246 = &v245;
  v247 = 0x2020000000;
  v248 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke;
  aBlock[3] = &unk_1E75756C8;
  v120 = v7;
  v244 = v120;
  v8 = _Block_copy(aBlock);
  v241[0] = MEMORY[0x1E69E9820];
  v241[1] = 3221225472;
  v241[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_2;
  v241[3] = &unk_1E75756F0;
  v9 = v5;
  v242 = v9;
  v127 = _Block_copy(v241);
  v238[0] = MEMORY[0x1E69E9820];
  v238[1] = 3221225472;
  v238[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_128;
  v238[3] = &unk_1E7575740;
  v10 = v6;
  v239 = v10;
  v129 = v8;
  v240 = v129;
  v126 = _Block_copy(v238);
  v130 = [v9 hasChanges];
  v143 = [(PLJournalManagerCore *)self->_journalManager baseURL];
  v142 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v141 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v138 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v140 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v139 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v137 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v136 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v134 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v135 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v133 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
  v131 = v10;
  v123 = [(PLJournal *)v136 countOfInsertEntriesWithError:0];
  v121 = [(PLJournal *)v142 countOfInsertEntriesWithError:0];
  v11 = [(PLJournal *)v141 countOfInsertEntriesWithError:0];
  v12 = [(PLJournal *)v138 countOfInsertEntriesWithError:0];
  v13 = [(PLJournal *)v140 countOfInsertEntriesWithError:0];
  v14 = [(PLJournal *)v139 countOfInsertEntriesWithError:0];
  v15 = [(PLJournal *)v137 countOfInsertEntriesWithError:0];
  v16 = [(PLJournal *)v135 countOfInsertEntriesWithError:0];
  v17 = [(PLJournal *)v134 countOfInsertEntriesWithError:0];
  v18 = [(PLJournal *)v133 countOfInsertEntriesWithError:0];
  v19 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v121 + v123 + v11 + v12 + v13 + v14 + v15 + v16 + v17 + v18 parent:v131 pendingUnitCount:{objc_msgSend(v131, "totalUnitCount")}];
  v124 = [v9 changeSource];
  [v9 setChangeSource:2];
  v233[0] = MEMORY[0x1E69E9820];
  v233[1] = 3221225472;
  v233[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_132;
  v233[3] = &unk_1E7575768;
  v20 = v131;
  v234 = v20;
  v132 = v9;
  v235 = v132;
  v237 = v130;
  v21 = v19;
  v236 = v21;
  v22 = (v250 + 5);
  obj = v250[5];
  LOBYTE(v16) = [(PLJournal *)v142 enumeratePayloadsUsingBlock:v233 error:&obj];
  objc_storeStrong(v22, obj);
  *(v246 + 24) = v16;
  if (![v20 isCancelled])
  {
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_135;
    v227[3] = &unk_1E7575790;
    v24 = v20;
    v228 = v24;
    v25 = v132;
    v229 = v25;
    v231 = v130;
    v26 = v21;
    v230 = v26;
    v27 = (v250 + 5);
    v226 = v250[5];
    v28 = [(PLJournal *)v141 enumeratePayloadsUsingBlock:v227 error:&v226];
    objc_storeStrong(v27, v226);
    *(v246 + 24) = v28;
    if ([v24 isCancelled])
    {
      v29 = PLMigrationGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", buf, 2u);
      }

      goto LABEL_84;
    }

    v221[0] = MEMORY[0x1E69E9820];
    v221[1] = 3221225472;
    v221[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_137;
    v221[3] = &unk_1E7575768;
    v30 = v24;
    v222 = v30;
    v31 = v25;
    v223 = v31;
    v225 = v130;
    v32 = v26;
    v224 = v32;
    v33 = (v250 + 5);
    v220 = v250[5];
    v34 = [(PLJournal *)v140 enumeratePayloadsUsingBlock:v221 error:&v220];
    objc_storeStrong(v33, v220);
    *(v246 + 24) = v34;
    if ([v30 isCancelled])
    {
      v35 = PLMigrationGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", buf, 2u);
      }

      goto LABEL_83;
    }

    v36 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v212[0] = MEMORY[0x1E69E9820];
    v212[1] = 3221225472;
    v212[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_139;
    v212[3] = &unk_1E75757B8;
    v39 = v30;
    v213 = v39;
    v122 = v37;
    v214 = v122;
    v125 = v38;
    v215 = v125;
    v119 = v129;
    v219 = v119;
    v117 = v31;
    v216 = v117;
    v40 = v36;
    v217 = v40;
    v113 = v32;
    v218 = v113;
    v41 = (v250 + 5);
    v211 = v250[5];
    v42 = [(PLJournal *)v139 enumeratePayloadsUsingBlock:v212 error:&v211];
    objc_storeStrong(v41, v211);
    *(v246 + 24) = v42;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v35 = v40;
    v43 = [v35 countByEnumeratingWithState:&v207 objects:v260 count:16];
    if (v43)
    {
      v44 = *v208;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v208 != v44)
          {
            objc_enumerationMutation(v35);
          }

          v46 = *(*(&v207 + 1) + 8 * i);
          v47 = [v35 objectForKey:v46];
          [v47 updateAlbum:v46 includePendingChanges:1];
        }

        v43 = [v35 countByEnumeratingWithState:&v207 objects:v260 count:16];
      }

      while (v43);
    }

    if ([v39 isCancelled])
    {
      v48 = PLMigrationGetLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", buf, 2u);
      }

      goto LABEL_82;
    }

    v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v50 = [PLJournal alloc];
    v51 = [(PLJournalManagerCore *)self->_journalManager baseURL];
    v116 = [(PLJournal *)v50 initWithBaseURL:v51 payloadClass:objc_opt_class()];

    v205[0] = MEMORY[0x1E69E9820];
    v205[1] = 3221225472;
    v205[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_144;
    v205[3] = &unk_1E75757E0;
    v115 = v49;
    v206 = v115;
    v52 = (v250 + 5);
    v204 = v250[5];
    LOBYTE(v50) = [(PLJournal *)v116 enumeratePayloadsUsingBlock:v205 error:&v204];
    objc_storeStrong(v52, v204);
    *(v246 + 24) = v50;
    v201[0] = MEMORY[0x1E69E9820];
    v201[1] = 3221225472;
    v201[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_2_147;
    v201[3] = &unk_1E7575808;
    v53 = v117;
    v202 = v53;
    v54 = v119;
    v203 = v54;
    [v115 enumerateKeysAndObjectsUsingBlock:v201];
    if ([v39 isCancelled])
    {
      v55 = PLMigrationGetLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", buf, 2u);
      }

      goto LABEL_81;
    }

    v127[2](v127, @"albums and folders");
    v196[0] = MEMORY[0x1E69E9820];
    v196[1] = 3221225472;
    v196[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_152;
    v196[3] = &unk_1E7575768;
    v56 = v39;
    v197 = v56;
    v57 = v53;
    v198 = v57;
    v200 = v130;
    v58 = v113;
    v199 = v58;
    v59 = (v250 + 5);
    v195 = v250[5];
    v60 = [(PLJournal *)v138 enumeratePayloadsUsingBlock:v196 error:&v195];
    objc_storeStrong(v59, v195);
    *(v246 + 24) = v60;
    if ([v56 isCancelled])
    {
      v61 = PLMigrationGetLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", buf, 2u);
      }

      goto LABEL_80;
    }

    v127[2](v127, @"import sessions");
    v188[0] = MEMORY[0x1E69E9820];
    v188[1] = 3221225472;
    v188[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_156;
    v188[3] = &unk_1E7575830;
    v62 = v56;
    v189 = v62;
    v63 = v57;
    v190 = v63;
    v191 = self;
    v194 = v130;
    v193 = v54;
    v64 = v58;
    v192 = v64;
    v65 = (v250 + 5);
    v187 = v250[5];
    v66 = [(PLJournal *)v137 enumeratePayloadsUsingBlock:v188 error:&v187];
    objc_storeStrong(v65, v187);
    *(v246 + 24) = v66;
    if ([v62 isCancelled])
    {
      v67 = PLMigrationGetLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", buf, 2u);
      }

      goto LABEL_79;
    }

    v127[2](v127, @"memories");
    v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v182[0] = MEMORY[0x1E69E9820];
    v182[1] = 3221225472;
    v182[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_162;
    v182[3] = &unk_1E7575858;
    v69 = v62;
    v183 = v69;
    v70 = v63;
    v184 = v70;
    v71 = v68;
    v185 = v71;
    v72 = v64;
    v186 = v72;
    v73 = (v250 + 5);
    v181 = v250[5];
    v74 = [(PLJournal *)v136 enumeratePayloadsUsingBlock:v182 error:&v181];
    objc_storeStrong(v73, v181);
    *(v246 + 24) = v74;
    [PLPersonJournalEntryPayload updateMergeTargetPersonWithPersonUUIDMapping:v71 fromDataInManagedObjectContext:v70];
    if ([v69 isCancelled])
    {
      v75 = PLMigrationGetLog();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", buf, 2u);
      }

      goto LABEL_78;
    }

    *buf = 0;
    v178 = buf;
    v179 = 0x2020000000;
    v180 = 0;
    v172[0] = MEMORY[0x1E69E9820];
    v172[1] = 3221225472;
    v172[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_165;
    v172[3] = &unk_1E7575880;
    v76 = v69;
    v173 = v76;
    v77 = v70;
    v174 = v77;
    v176 = buf;
    v78 = v72;
    v175 = v78;
    v79 = (v250 + 5);
    v171 = v250[5];
    v80 = [(PLJournal *)v135 enumeratePayloadsUsingBlock:v172 error:&v171];
    objc_storeStrong(v79, v171);
    *(v246 + 24) = v80;
    if (*(v178 + 3))
    {
      v81 = PLMigrationGetLog();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        v82 = *(v178 + 3);
        LODWORD(v257) = 134217984;
        *(&v257 + 4) = v82;
        _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_INFO, "Skipping %lu potentially deferred faces", &v257, 0xCu);
      }
    }

    v118 = [[PLJournal alloc] initWithBaseURL:v143 payloadClass:objc_opt_class()];
    v169[0] = MEMORY[0x1E69E9820];
    v169[1] = 3221225472;
    v169[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_168;
    v169[3] = &unk_1E75758A8;
    v83 = v77;
    v170 = v83;
    v84 = (v250 + 5);
    v168 = v250[5];
    v85 = [(PLJournal *)v118 enumeratePayloadsUsingBlock:v169 error:&v168];
    objc_storeStrong(v84, v168);
    *(v246 + 24) = v85;
    v127[2](v127, @"persons and faces");
    if ([v76 isCancelled])
    {
      v86 = PLMigrationGetLog();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v257) = 0;
        _os_log_impl(&dword_19BF1F000, v86, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", &v257, 2u);
      }

      goto LABEL_77;
    }

    v164[0] = MEMORY[0x1E69E9820];
    v164[1] = 3221225472;
    v164[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_173;
    v164[3] = &unk_1E75758D0;
    v87 = v76;
    v165 = v87;
    v88 = v83;
    v166 = v88;
    v89 = v78;
    v167 = v89;
    v90 = (v250 + 5);
    v163 = v250[5];
    v91 = [(PLJournal *)v134 enumeratePayloadsUsingBlock:v164 error:&v163];
    objc_storeStrong(v90, v163);
    *(v246 + 24) = v91;
    v127[2](v127, @"social groups");
    if ([v87 isCancelled])
    {
      v92 = PLMigrationGetLog();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v257) = 0;
        _os_log_impl(&dword_19BF1F000, v92, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", &v257, 2u);
      }

      goto LABEL_76;
    }

    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 3221225472;
    v159[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_179;
    v159[3] = &unk_1E75758F8;
    v114 = v87;
    v160 = v114;
    v112 = v88;
    v161 = v112;
    v93 = v89;
    v162 = v93;
    v94 = (v250 + 5);
    v158 = v250[5];
    v95 = [(PLJournal *)v133 enumeratePayloadsUsingBlock:v159 error:&v158];
    objc_storeStrong(v94, v158);
    *(v246 + 24) = v95;
    v127[2](v127, @"asset resource upload job configurations");
    if ([v114 isCancelled])
    {
      v96 = PLMigrationGetLog();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v257) = 0;
        _os_log_impl(&dword_19BF1F000, v96, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", &v257, 2u);
      }

      goto LABEL_75;
    }

    [v112 setChangeSource:0];
    WeakRetained = objc_loadWeakRetained(&self->_lsm);
    if ([WeakRetained isCloudPhotoLibraryEnabled])
    {
      v98 = *(v178 + 3) == 0;

      if (!v98)
      {
        *&v257 = 0;
        *(&v257 + 1) = &v257;
        v258 = 0x2020000000;
        v259 = 0;
        v154 = 0;
        v155 = &v154;
        v156 = 0x2020000000;
        v157 = 0;
        v149[0] = MEMORY[0x1E69E9820];
        v149[1] = 3221225472;
        v149[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_185;
        v149[3] = &unk_1E7575920;
        v99 = v114;
        v150 = v99;
        v151 = v112;
        v152 = &v257;
        v153 = &v154;
        v100 = (v250 + 5);
        v148 = v250[5];
        v101 = [(PLJournal *)v135 enumeratePayloadsUsingBlock:v149 error:&v148];
        objc_storeStrong(v100, v148);
        *(v246 + 24) = v101;
        if (*(*(&v257 + 1) + 24))
        {
          v102 = PLMigrationGetLog();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            v103 = *(*(&v257 + 1) + 24);
            *v255 = 134217984;
            v256 = v103;
            _os_log_impl(&dword_19BF1F000, v102, OS_LOG_TYPE_ERROR, "Dropped %lu faces", v255, 0xCu);
          }
        }

        if (v155[3])
        {
          v104 = PLMigrationGetLog();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
          {
            v105 = v155[3];
            *v255 = 134217984;
            v256 = v105;
            _os_log_impl(&dword_19BF1F000, v104, OS_LOG_TYPE_INFO, "Deferred %lu faces", v255, 0xCu);
          }
        }

        v127[2](v127, @"deferred rebuild faces");
        if ([v99 isCancelled])
        {
          v106 = PLMigrationGetLog();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            *v255 = 0;
            _os_log_impl(&dword_19BF1F000, v106, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", v255, 2u);
          }

          _Block_object_dispose(&v154, 8);
          _Block_object_dispose(&v257, 8);
          goto LABEL_75;
        }

        _Block_object_dispose(&v154, 8);
        _Block_object_dispose(&v257, 8);
      }
    }

    else
    {
    }

    v107 = [v112 photoLibrary];
    v108 = [(PLGenericAlbum *)PLManagedFolder rootFolderInLibrary:v107];

    v109 = [v112 photoLibrary];
    v110 = [(PLGenericAlbum *)PLManagedFolder projectAlbumRootFolderInLibrary:v109];

    v126[2](v126, v108, v122);
    v126[2](v126, v110, v125);
    if ([v114 isCancelled])
    {
      v111 = PLMigrationGetLog();
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
LABEL_67:

LABEL_74:
LABEL_75:

        v92 = v160;
LABEL_76:

        v86 = v165;
LABEL_77:

        _Block_object_dispose(buf, 8);
LABEL_78:

        v67 = v71;
LABEL_79:

        v61 = v189;
LABEL_80:

        v55 = v197;
LABEL_81:

        v48 = v115;
LABEL_82:

LABEL_83:
        v29 = v222;
LABEL_84:

        v23 = v228;
        goto LABEL_85;
      }

      LOWORD(v257) = 0;
LABEL_66:
      _os_log_impl(&dword_19BF1F000, v111, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", &v257, 2u);
      goto LABEL_67;
    }

    v127[2](v127, @"root folders");
    [v93 setCompletedUnitCount:{objc_msgSend(v93, "totalUnitCount")}];
    if ([(PLRebuildJournalManager *)self _replayFromCurrentHistoryToken])
    {
      if ([v114 isCancelled])
      {
        v111 = PLMigrationGetLog();
        if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_67;
        }

        LOWORD(v257) = 0;
        goto LABEL_66;
      }

      v144[0] = MEMORY[0x1E69E9820];
      v144[1] = 3221225472;
      v144[2] = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_193;
      v144[3] = &unk_1E7575948;
      v144[4] = self;
      v145 = v143;
      v146 = &v245;
      v147 = &v249;
      [v120 enumerateKeysAndObjectsUsingBlock:v144];
    }

    [v112 setChangeSource:v124];
    goto LABEL_74;
  }

  v23 = PLMigrationGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Early return from journal re-create non-assets due to progress cancel", buf, 2u);
  }

LABEL_85:

  _Block_object_dispose(&v245, 8);
  _Block_object_dispose(&v249, 8);
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v5 = [objc_opt_class() payloadClassID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() payloadClassID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  v9 = [PLJournalEntry alloc];
  v10 = [v12 payloadID];
  v11 = [(PLJournalEntry *)v9 initForDeleteWithPayloadID:v10 payloadClass:objc_opt_class()];
  [v6 addObject:v11];
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) hasChanges])
  {
    v4 = *(a1 + 32);
    v10 = 0;
    v5 = [v4 save:&v10];
    v6 = v10;
    if ((v5 & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rebuild: (%@) failed to save context %@: %@", v3, *(a1 + 32), v6];
      v8 = PLMigrationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0];
      objc_exception_throw(v9);
    }

    [*(a1 + 32) refreshAllObjects];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_128(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__104308;
  v23 = __Block_byref_object_dispose__104309;
  v24 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_2_129;
  v14 = &unk_1E7575718;
  v15 = *(a1 + 32);
  v7 = v5;
  v16 = v7;
  v18 = &v19;
  v17 = *(a1 + 40);
  [v6 enumerateObjectsWithOptions:2 usingBlock:&v11];
  v8 = [v20[5] childCollectionUUIDs];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v20[5] childCollectionUUIDs];
    [PLFolderJournalEntryPayload updateChildrenOrderingInFolder:v7 usingChildCollectionUUIDs:v10 includePendingChanges:1];
  }

  _Block_object_dispose(&v19, 8);
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_132(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort albums journal enumeration due to progress cancel", v12, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [*(a1 + 40) photoLibrary];
    v10 = [PLGenericAlbum albumWithUUID:v8 inLibrary:v9];

    if (!v10)
    {
      v11 = [v5 insertAlbumFromDataInManagedObjectContext:*(a1 + 40)];
      if (v11)
      {
        [v5 updateAlbum:v11 includePendingChanges:*(a1 + 56)];
      }
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_135(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort projects journal enumeration due to progress cancel", v12, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [*(a1 + 40) photoLibrary];
    v10 = [PLGenericAlbum albumWithUUID:v8 inLibrary:v9];

    if (!v10)
    {
      v11 = [v5 insertAlbumFromDataInManagedObjectContext:*(a1 + 40)];
      if (v11)
      {
        [v5 updateAlbum:v11 includePendingChanges:*(a1 + 56)];
      }
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_137(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort fetching album journal enumeration due to progress cancel", v12, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [*(a1 + 40) photoLibrary];
    v10 = [PLGenericAlbum albumWithUUID:v8 inLibrary:v9];

    if (!v10)
    {
      v11 = [v5 insertAlbumFromDataInManagedObjectContext:*(a1 + 40)];
      if (v11)
      {
        [v5 updateAlbum:v11 includePendingChanges:*(a1 + 56)];
      }
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_139(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (![*(a1 + 32) isCancelled])
  {
    if ([v5 isRootFolder])
    {
      v7 = *(a1 + 40);
    }

    else
    {
      if (![v5 isProjectAlbumRootFolder])
      {
        v8 = [v5 cloudGUID];
        if ([v8 isEqualToString:@"----Project-Root-Folder----"])
        {
          v9 = [v5 isProjectAlbumRootFolder];

          if ((v9 & 1) == 0)
          {
            v10 = PLMigrationGetLog();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *v16 = 0;
              _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "JournalManager: found project root album PLFolderJournalEntryPayload with incorrect folder type, will delete", v16, 2u);
            }

            (*(*(a1 + 80) + 16))();
            goto LABEL_10;
          }
        }

        else
        {
        }

        v11 = [v5 payloadID];
        v12 = [v11 payloadIDString];
        v13 = [*(a1 + 56) photoLibrary];
        v14 = [PLGenericAlbum albumWithUUID:v12 inLibrary:v13];

        if (!v14)
        {
          v15 = [v5 insertAlbumFromDataInManagedObjectContext:*(a1 + 56)];
          if (v15)
          {
            [*(a1 + 64) setObject:v5 forKey:v15];
          }
        }

        goto LABEL_10;
      }

      v7 = *(a1 + 48);
    }

    [v7 addObject:v5];
LABEL_10:
    [*(a1 + 72) setCompletedUnitCount:{objc_msgSend(*(a1 + 72), "completedUnitCount") + 1}];
    goto LABEL_11;
  }

  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort folder journal enumeration due to progress cancel", buf, 2u);
  }

  *a3 = 1;
LABEL_11:
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v3, "albumListType")}];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v9, "albumListType")}];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  [v6 addObject:v9];
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_2_147(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 lastObject];
  v6 = [v5 insertAlbumListFromDataInManagedObjectContext:*(a1 + 32)];
  if (v6)
  {
    [v5 updateAlbumList:v6];
  }

  [v4 removeObject:v5];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_152(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort import session journal enumeration due to progress cancel", v12, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [*(a1 + 40) photoLibrary];
    v10 = [PLGenericAlbum albumWithUUID:v8 inLibrary:v9];

    if (!v10)
    {
      v11 = [v5 insertAlbumFromDataInManagedObjectContext:*(a1 + 40)];
      if (v11)
      {
        [v5 updateAlbum:v11 includePendingChanges:*(a1 + 56)];
      }
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_156(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort memories journal enumeration due to progress cancel", &v18, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [*(a1 + 40) photoLibrary];
    v10 = [PLMemory memoryWithUUID:v8 inPhotoLibrary:v9];

    if (!v10)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
      v12 = [WeakRetained isCloudPhotoLibraryEnabled];

      if (v12 && ([v5 hasAllAssetsAvailableInManagedObjectContext:*(a1 + 40) includePendingAssetChanges:*(a1 + 72)] & 1) == 0)
      {
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v5;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Skipping restore for memory with references to unavailable assets, will restore %@ from iCloud Photo Library", &v18, 0xCu);
        }

        v17 = PLMigrationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v5;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Removing memory journal entry for %@", &v18, 0xCu);
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v13 = PLMigrationGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v5;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Creating new memory from journal entry payload %@", &v18, 0xCu);
        }

        v14 = [v5 insertMemoryFromDataInManagedObjectContext:*(a1 + 40)];
        if (([v5 updateAssetsInMemory:v14 includePendingAssetChanges:*(a1 + 72)] & 1) == 0)
        {
          v15 = PLMigrationGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v18 = 138412290;
            v19 = v5;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Incomplete restore of assets for memory %@", &v18, 0xCu);
          }
        }
      }
    }

    [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_162(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort persons journal enumeration due to progress cancel", v14, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [PLPerson personWithUUID:v8 inManagedObjectContext:*(a1 + 40)];

    if (!v9)
    {
      v10 = [v5 insertPersonFromDataInManagedObjectContext:*(a1 + 40)];
      if (v10)
      {
        v11 = [v5 mergeTargetPersonUUID];
        v12 = *(a1 + 48);
        v13 = [v10 personUUID];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }
    }

    [*(a1 + 56) setCompletedUnitCount:{objc_msgSend(*(a1 + 56), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_165(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort faces journal enumeration due to progress cancel", buf, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [PLDetectedFace detectedFaceWithUUID:v8 inManagedObjectContext:*(a1 + 40)];

    if (!v9)
    {
      v11 = 0;
      if (([v5 insertFaceFromDataInManagedObjectContext:*(a1 + 40) allowDeferred:&v11] & 1) == 0)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        v10 = PLMigrationGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v13 = v5;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Skipping face for journal payload, might be deferred: %@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_173(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort social groups journal enumeration due to progress cancel", v11, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [PLGraphNode fetchNodeWithUUID:v8 inManagedObjectContext:*(a1 + 40)];

    if (!v9)
    {
      v10 = [v5 insertSocialGroupInManagedObjectContext:*(a1 + 40)];
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_179(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort asset resource upload job configuration enumeration due to progress cancel", &v12, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [PLAssetResourceUploadJobConfiguration configurationWithUUID:v8 managedObjectContext:*(a1 + 40) error:0];

    if (!v9)
    {
      v10 = [v5 insertAssetResourceUploadJobConfigurationFromDataInManagedObjectContext:*(a1 + 40)];

      if (!v10)
      {
        v11 = PLMigrationGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v5;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Skipping asset resource upload job configuration for journal payload: %@", &v12, 0xCu);
        }
      }
    }

    [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "completedUnitCount") + 1}];
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_185(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort faces journal enumeration due to progress cancel", buf, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [PLDetectedFace detectedFaceWithUUID:v8 inManagedObjectContext:*(a1 + 40)];

    if (!v9)
    {
      v12 = 1;
      if ([v5 insertFaceFromDataInManagedObjectContext:*(a1 + 40) allowDeferred:&v12])
      {
        if (v12 == 1)
        {
          v10 = PLMigrationGetLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v14 = v5;
            _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Deferred face for journal payload: %@", buf, 0xCu);
          }

          ++*(*(*(a1 + 56) + 8) + 24);
        }
      }

      else
      {
        ++*(*(*(a1 + 48) + 8) + 24);
        v11 = PLMigrationGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v14 = v5;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Dropped face for journal payload: %@", buf, 0xCu);
        }
      }
    }
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_193(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1[4] + 16) payloadClassForPayloadClassID:v5];
  if (v7)
  {
    v8 = [[PLJournal alloc] initWithBaseURL:a1[5] payloadClass:v7];
    v9 = *(a1[7] + 8);
    obj = *(v9 + 40);
    v10 = [(PLJournal *)v8 appendChangeEntries:v6 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    *(*(a1[6] + 8) + 24) = v10;
  }

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1[7] + 8) + 40);
      *buf = 138412802;
      v15 = v5;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Rebuild: Unable to append delete entries for invalid objects to %@ journal: %@, %@", buf, 0x20u);
    }
  }
}

void __77__PLRebuildJournalManager__recreateNonAssetsInManagedObjectContext_progress___block_invoke_2_129(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Will abort root folder journal enumeration due to progress cancel", v15, 2u);
    }

    *a4 = 1;
  }

  else
  {
    v9 = [v7 payloadID];
    v10 = [v9 payloadIDString];
    v11 = [*(a1 + 40) uuid];
    v12 = [v10 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v13 = [v7 childCollectionUUIDs];
        v14 = [v13 count];

        if (v14)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        }
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_recreateAssetsInManagedObjectContext:(id)a3 options:(unsigned __int8)a4 progress:(id)a5
{
  v6 = a4;
  v137 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__104308;
  v127 = __Block_byref_object_dispose__104309;
  v128 = 0;
  v10 = PLMigrationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Recreate options enabled: %d", buf, 8u);
  }

  v74 = v6;

  v11 = [v8 changeSource];
  [v8 setChangeSource:2];
  v73 = v11;
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = [PLJournal alloc];
  v14 = [(PLJournalManagerCore *)self->_journalManager baseURL];
  v15 = [(PLJournal *)v13 initWithBaseURL:v14 payloadClass:objc_opt_class()];

  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke;
  v119[3] = &unk_1E7575600;
  v16 = v9;
  v120 = v16;
  v17 = v8;
  v121 = v17;
  v76 = v12;
  v122 = v76;
  v18 = v124;
  obj = v124[5];
  v19 = [(PLJournal *)v15 enumeratePayloadsUsingBlock:v119 error:&obj];
  objc_storeStrong(v18 + 5, obj);
  if (!v19)
  {
    v20 = PLMigrationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(PLJournal *)v15 payloadClass];
      v22 = v124[5];
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Enumeration failed for payload class: %{public}@, error: %@", buf, 0x16u);
    }
  }

  if ([v17 hasChanges])
  {
    v23 = v124;
    v117 = v124[5];
    v24 = [v17 save:&v117];
    objc_storeStrong(v23 + 5, v117);
    if ((v24 & 1) == 0)
    {
      v25 = PLMigrationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = v124[5];
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Rebuild: unable to save moc during volume creation. Data loss may occur. (%@)", buf, 0xCu);
      }
    }
  }

  [(PLRebuildJournalManager *)self _replayFromCurrentHistoryToken];
  if ([v16 isCancelled])
  {
    v27 = PLMigrationGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Early return from journal re-create assets due to progress cancel", buf, 2u);
    }
  }

  else
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v30 = [PLJournal alloc];
    v31 = [(PLJournalManagerCore *)self->_journalManager baseURL];
    v75 = [(PLJournal *)v30 initWithBaseURL:v31 payloadClass:objc_opt_class()];

    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke_106;
    v112[3] = &unk_1E7575628;
    v32 = v16;
    v113 = v32;
    v33 = v17;
    v114 = v33;
    v27 = v28;
    v115 = v27;
    v72 = v29;
    v116 = v72;
    v34 = v124;
    v111 = v124[5];
    LOBYTE(v29) = [(PLJournal *)v75 enumeratePayloadsUsingBlock:v112 error:&v111];
    objc_storeStrong(v34 + 5, v111);
    if ((v29 & 1) == 0)
    {
      v35 = PLMigrationGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [(PLJournal *)v75 payloadClass];
        v37 = v124[5];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2112;
        *&buf[14] = v37;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Enumeration failed for payload class: %{public}@, error: %@", buf, 0x16u);
      }
    }

    if ([v33 hasChanges])
    {
      v38 = v124;
      v110 = v124[5];
      v39 = [v33 save:&v110];
      objc_storeStrong(v38 + 5, v110);
      if ((v39 & 1) == 0)
      {
        v40 = PLMigrationGetLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = v124[5];
          *buf = 138412290;
          *&buf[4] = v41;
          _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Rebuild: unable to save moc during keyword creation. Data loss may occur. (%@)", buf, 0xCu);
        }
      }
    }

    [(PLRebuildJournalManager *)self _replayFromCurrentHistoryToken];
    if ([v32 isCancelled])
    {
      v42 = PLMigrationGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "Early return from journal re-create assets due to progress cancel", buf, 2u);
      }
    }

    else
    {
      v43 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v134 = __Block_byref_object_copy__104308;
      v135 = __Block_byref_object_dispose__104309;
      if (v74)
      {
        v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }

      v136 = v43;
      v109[0] = 0;
      v109[1] = v109;
      v109[2] = 0x2020000000;
      v109[3] = 0;
      v108[0] = 0;
      v108[1] = v108;
      v108[2] = 0x2020000000;
      v108[3] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke_109;
      aBlock[3] = &unk_1E7575650;
      aBlock[4] = v109;
      aBlock[5] = v108;
      v71 = _Block_copy(aBlock);
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke_2;
      v101[3] = &unk_1E7575678;
      v44 = v33;
      v105 = &v123;
      v102 = v44;
      v103 = self;
      v45 = v32;
      v104 = v45;
      v106 = buf;
      v69 = _Block_copy(v101);
      v71[2]();
      v68 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      WeakRetained = objc_loadWeakRetained(&self->_lsm);
      v47 = [WeakRetained pathManager];
      v67 = PLLibraryIDFromPathManager();

      v48 = objc_alloc_init(PLResourceDataStoreOptions);
      [(PLResourceDataStoreOptions *)v48 setAssumeNoExistingResources:0];
      v66 = v48;
      v49 = [PLJournal alloc];
      v50 = [(PLJournalManagerCore *)self->_journalManager baseURL];
      v70 = [(PLJournal *)v49 initWithBaseURL:v50 payloadClass:objc_opt_class()];

      v51 = [(PLJournal *)v70 countOfInsertEntriesWithError:0];
      v65 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v51 parent:v45 pendingUnitCount:{objc_msgSend(v45, "totalUnitCount")}];
      if ([v45 isCancelled])
      {
        v52 = PLMigrationGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *v97 = 0;
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "Early return from journal re-create assets due to progress cancel", v97, 2u);
        }
      }

      else
      {
        *v97 = 0;
        v98 = v97;
        v99 = 0x2020000000;
        v53 = [v44 photoLibrary];
        v54 = [v53 isCloudPhotoLibraryEnabled];

        v100 = v54;
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke_113;
        v78[3] = &unk_1E75756A0;
        v79 = v45;
        v64 = v44;
        v80 = v64;
        v95 = v74 & 1;
        v55 = v70;
        v81 = v55;
        v90 = buf;
        v82 = v72;
        v56 = v68;
        v91 = v97;
        v83 = v56;
        v84 = self;
        v96 = v74;
        v85 = v66;
        v86 = v67;
        v92 = &v123;
        v57 = v65;
        v87 = v57;
        v93 = v109;
        v94 = v108;
        v58 = v69;
        v88 = v58;
        v89 = v71;
        v59 = v124;
        v77 = v124[5];
        v60 = [(PLJournal *)v55 enumeratePayloadsUsingBlock:v78 error:&v77];
        objc_storeStrong(v59 + 5, v77);
        if (!v60)
        {
          v61 = PLMigrationGetLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = [(PLJournal *)v55 payloadClass];
            v63 = v124[5];
            *v129 = 138543618;
            v130 = v62;
            v131 = 2112;
            v132 = v63;
            _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "Enumeration failed for payload class: %{public}@, error: %@", v129, 0x16u);
          }
        }

        (*(v58 + 2))(v58, v56);
        [v57 setCompletedUnitCount:{objc_msgSend(v57, "totalUnitCount")}];
        [v64 setChangeSource:v73];

        _Block_object_dispose(v97, 8);
      }

      _Block_object_dispose(v108, 8);
      _Block_object_dispose(v109, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  _Block_object_dispose(&v123, 8);
}

void __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort volume journal enumeration due to progress cancel", v13, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [PLFileSystemVolume volumeForObjectUUID:v8 context:*(a1 + 40)];

    if (!v9)
    {
      v10 = [v5 insertFileSystemVolumeFromDataInManagedObjectContext:*(a1 + 40)];
      v11 = *(a1 + 48);
      v12 = [v5 payloadID];
      [v11 addObject:v12];
    }
  }
}

void __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke_106(uint64_t a1, void *a2, _BYTE *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (![*(a1 + 32) isCancelled])
  {
    v7 = [v5 title];
    v8 = [PLManagedKeyword keywordForTitle:v7 context:*(a1 + 40)];

    if (v8)
    {
      v9 = [v8 uuid];
      v10 = [v5 payloadID];
      v11 = [v10 payloadIDString];
      v12 = [v9 isEqualToString:v11];

      if (v12)
      {
LABEL_12:

        goto LABEL_13;
      }

      v13 = PLMigrationGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v8 title];
        v15 = [v5 payloadID];
        v16 = [v8 uuid];
        v23 = 138412802;
        v24 = v14;
        v25 = 2112;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Rebuild: remapping uuid for keyword %@, %@ -> %@", &v23, 0x20u);
      }

      v17 = [v8 uuid];
      v18 = *(a1 + 56);
      v19 = [v5 payloadID];
      v20 = [v19 payloadIDString];
      [v18 setObject:v17 forKeyedSubscript:v20];
    }

    else
    {
      v21 = [v5 insertKeywordFromDataInManagedObjectContext:*(a1 + 40)];
      v22 = *(a1 + 48);
      v17 = [v5 payloadID];
      [v22 addObject:v17];
    }

    goto LABEL_12;
  }

  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort keyword journal enumeration due to progress cancel", &v23, 2u);
  }

  *a3 = 1;
LABEL_13:
}

uint64_t __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke_109(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  result = arc4random_uniform(0xAu);
  *(*(*(a1 + 40) + 8) + 24) = (result + 20);
  return result;
}

void __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 56) + 8);
    obj = *(v3 + 40);
    v4 = [v2 save:&obj];
    objc_storeStrong((v3 + 40), obj);
    if ((v4 & 1) == 0)
    {
      v5 = PLMigrationGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Rebuild: unable to save moc during asset creation. Data loss may occur. (%@)", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) refreshAllObjects];
  [*(a1 + 40) _replayFromCurrentHistoryToken];
  if ([*(a1 + 48) isCancelled])
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Skipping replay from current history token due to progress cancel", buf, 2u);
    }
  }

  else if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "LegacyMigrationRecoveryFix: Ignored assets due to missing resource data: [%@]", buf, 0xCu);
    }

    [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
  }
}

void __82__PLRebuildJournalManager__recreateAssetsInManagedObjectContext_options_progress___block_invoke_113(uint64_t a1, void *a2, _BYTE *a3)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Will abort asset journal enumeration due to progress cancel", buf, 2u);
    }

    *a3 = 1;
  }

  else
  {
    v7 = [v5 payloadID];
    v8 = [v7 payloadIDString];
    v9 = [PLManagedAsset assetWithUUID:v8 inManagedObjectContext:*(a1 + 40)];

    if (v9)
    {
      [*(a1 + 96) setCompletedUnitCount:{objc_msgSend(*(a1 + 96), "completedUnitCount") + 1}];
    }

    else
    {
      v10 = [v5 resources];
      v11 = v10;
      if (*(a1 + 160) == 1 && ![v10 count])
      {
        v40 = [PLJournalEntry alloc];
        v41 = [v5 payloadID];
        v42 = [(PLJournalEntry *)v40 initForDeleteWithPayloadID:v41 payloadClass:objc_opt_class()];

        v43 = *(a1 + 48);
        v50 = v42;
        v57[0] = v42;
        v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
        v52 = 0;
        LOBYTE(v42) = [v43 appendChangeEntries:v44 error:&v52];
        v12 = v52;

        if (v42)
        {
          v45 = *(*(*(a1 + 120) + 8) + 40);
          v46 = [v5 payloadID];
          v47 = [v46 payloadIDString];
          [v45 addObject:v47];
        }

        else
        {
          v46 = PLMigrationGetLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v54 = v5;
            v55 = 2112;
            v56 = v12;
            _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Rebuild: Failed to add deletion change for invalid recovery asset for payload %@: %@", buf, 0x16u);
          }
        }

        v9 = 0;
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = [v5 insertAssetFromDataInManagedObjectContext:*(a1 + 40) keywordUUIDRemapping:*(a1 + 56) rawPayloadAttributesToUpdate:v12];
        v13 = *(a1 + 64);
        v14 = [v5 payloadID];
        [v13 addObject:v14];

        v15 = *(a1 + 48);
        v16 = [v5 payloadID];
        v51 = 0;
        LOBYTE(v15) = [v15 appendUpdatePayloadWithPayloadID:v16 rawAttributes:v12 error:&v51];
        v50 = v51;

        if ((v15 & 1) == 0)
        {
          v17 = PLMigrationGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v5 payloadID];
            *buf = 138543618;
            v54 = v18;
            v55 = 2112;
            v56 = v50;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Rebuild: Failed to add reupdate change for inserted asset for payload ID %{public}@ %@", buf, 0x16u);
          }
        }

        v19 = *(*(a1 + 128) + 8);
        if (*(v19 + 24))
        {
          v20 = [*(a1 + 40) photoLibrary];
          *(*(*(a1 + 128) + 8) + 24) = [v20 isCloudPhotoLibraryEnabled];
        }

        else
        {
          *(v19 + 24) = 0;
        }

        LOBYTE(v48) = *(*(*(a1 + 128) + 8) + 24);
        if ([*(a1 + 72) _recreateResourcesForAsset:v9 withPayload:v5 resources:v11 recreateOptions:*(a1 + 161) storeOptions:*(a1 + 80) libraryID:*(a1 + 88) isCPLEnabled:v48])
        {
          if ([v9 deferredProcessingNeeded])
          {
            WeakRetained = objc_loadWeakRetained((*(a1 + 72) + 8));
            v22 = [WeakRetained backgroundJobService];
            v23 = [*(a1 + 40) photoLibrary];
            v24 = +[PLBackgroundJobWorkerTypes typesMaskForDeferredProcessingNeeded:](PLBackgroundJobWorkerTypes, "typesMaskForDeferredProcessingNeeded:", [v9 deferredProcessingNeeded]);
            [v22 signalBackgroundProcessingNeededOnLibrary:v23 workerTypes:v24];
          }

          v25 = [*(a1 + 40) photoLibrary];
          v26 = [v25 thumbnailManager];
          v27 = [v26 thumbnailJPEGPathForPhoto:v9];

          v28 = [MEMORY[0x1E696AC08] defaultManager];
          LODWORD(v25) = [v28 fileExistsAtPath:v27];

          if (v25 && (v29 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v27]) != 0 && (DCIM_newPLImageWithStoredJPEGData(), v30 = objc_claimAutoreleasedReturnValue(), v29, v30))
          {
            v31 = [*(a1 + 40) photoLibrary];
            [v9 setEffectiveThumbnailIndex:{+[PLThumbnailIndexes nextAvailableThumbnailIndexInLibrary:](PLThumbnailIndexes, "nextAvailableThumbnailIndexInLibrary:", v31)}];

            v32 = [PLImageContainer alloc];
            v33 = DCIM_storedJPEGDataFromImage();
            v34 = [*MEMORY[0x1E6982E58] identifier];
            v35 = [(PLImageContainer *)v32 initWithPLImage:v30 backingData:v33 uniformTypeIdentifier:v34 auxiliaryImageRecords:0];

            v36 = [*(a1 + 40) photoLibrary];
            v37 = [v36 thumbnailManager];
            [v37 setThumbnailsForAsset:v9 withImage:v35];
          }

          else
          {
            LOBYTE(v49) = 0;
            [v9 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:0 metadata:0 forceSRGBConversion:0 saveCameraPreviewWellImage:v49];
          }

          if (++*(*(*(a1 + 144) + 8) + 24) > *(*(*(a1 + 152) + 8) + 24))
          {
            (*(*(a1 + 104) + 16))();
            [*(a1 + 64) removeAllObjects];
            [*(a1 + 96) setCompletedUnitCount:{*(*(*(a1 + 152) + 8) + 24) + objc_msgSend(*(a1 + 96), "completedUnitCount")}];
            (*(*(a1 + 112) + 16))();
          }
        }

        else
        {
          v38 = PLMigrationGetLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = *(*(*(a1 + 136) + 8) + 40);
            *buf = 138412546;
            v54 = v5;
            v55 = 2112;
            v56 = v39;
            _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Rebuild: (Asset) Failed to create resources for asset payload %@: %@", buf, 0x16u);
          }

          [v9 deleteFromDatabaseOnly];
          [*(a1 + 96) setCompletedUnitCount:{objc_msgSend(*(a1 + 96), "completedUnitCount") + 1}];
        }
      }
    }
  }
}

- (BOOL)_recreateResourcesForAsset:(id)a3 withPayload:(id)a4 resources:(id)a5 recreateOptions:(unsigned __int8)a6 storeOptions:(id)a7 libraryID:(id)a8 isCPLEnabled:(BOOL)a9
{
  v53 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v40 = a7;
  v39 = a8;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v35 = v14;
    v38 = v13;
    v18 = 0;
    v19 = 0;
    v37 = *v45;
    while (2)
    {
      v20 = 0;
      v21 = v18;
      v22 = v19;
      do
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v44 + 1) + 8 * v20);
        v24 = [v23 validatedExternalResourceWithAsset:v38 isCPLEnabled:{a9, v35}];
        v25 = [PLResourceDataStoreManager storeForExternalResource:v24 inLibraryWithID:v39];
        v42 = v21;
        v43 = v22;
        v26 = [v25 storeExternalResource:v24 forAsset:v38 options:v40 error:&v43 resultingResource:&v42];
        v19 = v43;

        v18 = v42;
        if ((v26 & 1) == 0)
        {

          v27 = 0;
          goto LABEL_11;
        }

        [v23 updateStoredResource:v18];

        ++v20;
        v21 = v18;
        v22 = v19;
      }

      while (v17 != v20);
      v17 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v27 = 1;
LABEL_11:
    v13 = v38;
    v14 = v35;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v27 = 1;
  }

  if (([v13 isPhotoIris] & 1) != 0 || objc_msgSend(v13, "isVideo"))
  {
    v28 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = [v13 pathForLocalVideoKeyFrame];
    v41 = 0;
    v30 = [v28 removeItemAtPath:v29 error:&v41];
    v31 = v41;

    if ((v30 & 1) == 0 && (PLIsErrorFileNotFound() & 1) == 0)
    {
      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v14 payloadID];
        *buf = 138543618;
        v49 = v33;
        v50 = 2112;
        v51 = v31;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Rebuild: failed to remove unnecessary file for payload ID %{public}@ %@", buf, 0x16u);
      }
    }
  }

  return v27;
}

- (void)recreateNonAssetsInManagedObjectContext:(id)a3 progress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 photoLibrary];
  v9 = [v8 libraryID];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v11 = [WeakRetained pathManager];
  v12 = PLLibraryIDFromPathManager();
  v13 = [v9 isEqual:v12];

  if (v13)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PLRebuildJournalManager_recreateNonAssetsInManagedObjectContext_progress___block_invoke;
    block[3] = &unk_1E75761B8;
    block[4] = self;
    v19 = v6;
    v20 = v7;
    v15 = v7;
    v16 = v6;
    dispatch_sync(queue, block);
  }

  else
  {
    [v6 photoLibrary];
    [objc_claimAutoreleasedReturnValue() libraryID];
    objc_claimAutoreleasedReturnValue();
    [objc_loadWeakRetained(&self->_lsm) pathManager];
    objc_claimAutoreleasedReturnValue();
    PLLibraryIDFromPathManager();
    objc_claimAutoreleasedReturnValue();
    v17 = _PFAssertFailHandler();
    __76__PLRebuildJournalManager_recreateNonAssetsInManagedObjectContext_progress___block_invoke(v17);
  }
}

void __76__PLRebuildJournalManager_recreateNonAssetsInManagedObjectContext_progress___block_invoke(void *a1)
{
  if (*(a1[4] + 48) == 3)
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[4];

    [v4 _recreateNonAssetsInManagedObjectContext:v2 progress:v3];
  }

  else
  {
    v5 = _PFAssertFailHandler();
    [(PLRebuildJournalManager *)v5 recreateAssetsInManagedObjectContext:v6 options:v7 progress:v8, v9];
  }
}

- (void)recreateAssetsInManagedObjectContext:(id)a3 options:(unsigned __int8)a4 progress:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 photoLibrary];
  v11 = [v10 libraryID];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v13 = [WeakRetained pathManager];
  v14 = PLLibraryIDFromPathManager();
  v15 = [v11 isEqual:v14];

  if (v15)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__PLRebuildJournalManager_recreateAssetsInManagedObjectContext_options_progress___block_invoke;
    block[3] = &unk_1E7576310;
    block[4] = self;
    v21 = v8;
    v23 = a4;
    v22 = v9;
    v17 = v9;
    v18 = v8;
    dispatch_sync(queue, block);
  }

  else
  {
    [v8 photoLibrary];
    [objc_claimAutoreleasedReturnValue() libraryID];
    objc_claimAutoreleasedReturnValue();
    [objc_loadWeakRetained(&self->_lsm) pathManager];
    objc_claimAutoreleasedReturnValue();
    PLLibraryIDFromPathManager();
    objc_claimAutoreleasedReturnValue();
    v19 = _PFAssertFailHandler();
    __81__PLRebuildJournalManager_recreateAssetsInManagedObjectContext_options_progress___block_invoke(v19);
  }
}

void __81__PLRebuildJournalManager_recreateAssetsInManagedObjectContext_options_progress___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 48) == 3)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v5 _recreateAssetsInManagedObjectContext:v3 options:v2 progress:v4];
  }

  else
  {
    v6 = _PFAssertFailHandler();
    [(PLRebuildJournalManager *)v6 recreateAllObjectsInManagedObjectContext:v7 options:v8, v9];
  }
}

- (void)recreateAllObjectsInManagedObjectContext:(id)a3 options:(unsigned __int8)a4
{
  v6 = a3;
  v7 = [v6 photoLibrary];
  v8 = [v7 libraryID];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v10 = [WeakRetained pathManager];
  v11 = PLLibraryIDFromPathManager();
  v12 = [v8 isEqual:v11];

  if (v12)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PLRebuildJournalManager_recreateAllObjectsInManagedObjectContext_options___block_invoke;
    block[3] = &unk_1E7576AC8;
    block[4] = self;
    v17 = v6;
    v18 = a4;
    v14 = v6;
    dispatch_sync(queue, block);
  }

  else
  {
    [v6 photoLibrary];
    [objc_claimAutoreleasedReturnValue() libraryID];
    objc_claimAutoreleasedReturnValue();
    [objc_loadWeakRetained(&self->_lsm) pathManager];
    objc_claimAutoreleasedReturnValue();
    PLLibraryIDFromPathManager();
    objc_claimAutoreleasedReturnValue();
    v15 = _PFAssertFailHandler();
    __76__PLRebuildJournalManager_recreateAllObjectsInManagedObjectContext_options___block_invoke(v15);
  }
}

uint64_t __76__PLRebuildJournalManager_recreateAllObjectsInManagedObjectContext_options___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] == 3)
  {
    [v2 _recreateAssetsInManagedObjectContext:*(a1 + 40) options:*(a1 + 48) progress:0];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _recreateNonAssetsInManagedObjectContext:v4 progress:0];
  }

  else
  {
    v6 = _PFAssertFailHandler();
    return [(PLRebuildJournalManager *)v6 _replayFromCurrentHistoryToken];
  }
}

- (BOOL)_replayFromCurrentHistoryToken
{
  v46 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__104308;
  v36 = __Block_byref_object_dispose__104309;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = +[PLConcurrencyLimiter sharedLimiter];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__PLRebuildJournalManager__replayFromCurrentHistoryToken__block_invoke;
  v24[3] = &unk_1E7578898;
  v26 = &v28;
  v24[4] = self;
  v5 = v3;
  v25 = v5;
  v27 = &v32;
  [v4 sync:v24 identifyingBlock:0 library:0];

  if (v29[3])
  {
    if ([v5 count])
    {
      v7 = 10.0;
      if (MEMORY[0x19EAEE230]())
      {
        v8 = [MEMORY[0x1E695E000] standardUserDefaults];
        v9 = [v8 objectForKey:@"PLRebuildJournalManagerImmediateCoalesceThreshold"];

        if (v9)
        {
          [v9 floatValue];
          v7 = *&v6;
        }
      }

      else
      {
        v9 = 0;
      }

      journalManager = self->_journalManager;
      v16 = (v33 + 5);
      obj = v33[5];
      *&v6 = v7;
      v17 = [(PLJournalManager *)journalManager coalesceJournalsForPayloadClassIDs:v5 withChangeJournalOverThreshold:&obj error:v6];
      objc_storeStrong(v16, obj);
      if (!v17)
      {
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [(PLJournalManagerCore *)self->_journalManager name];
          v20 = v33[5];
          *buf = 138544130;
          v39 = v19;
          v40 = 2114;
          v41 = v5;
          v42 = 2048;
          v43 = v7;
          v44 = 2112;
          v45 = v20;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: Error attempting to coalesce journals for payloadClassIDs [%{public}@] with a threshold over %f: %@", buf, 0x2Au);
        }
      }

LABEL_18:
    }
  }

  else
  {
    if ([v33[5] code] != 51009)
    {
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = [(PLJournalManagerCore *)self->_journalManager name];
        v14 = v33[5];
        *buf = 138543618;
        v39 = v13;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: Error replaying history: %@", buf, 0x16u);
      }

      goto LABEL_18;
    }

    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(PLJournalManagerCore *)self->_journalManager name];
      v12 = v33[5];
      *buf = 138543618;
      v39 = v11;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: History token not found in history, removing token and re-starting: %@", buf, 0x16u);
    }

    [(PLJournalManager *)self->_journalManager clearHistoryToken];
    if (self->_state == 2)
    {
      dispatch_group_enter(self->_startupWaitGroup);
      [(PLRebuildJournalManager *)self _start];
    }
  }

  v21 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v21 & 1;
}

void __57__PLRebuildJournalManager__replayFromCurrentHistoryToken__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[2];
  v4 = [v2 _newTransientContext];
  v5 = a1[5];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  LOBYTE(v3) = [v3 replayFromCurrentHistoryTokenWithManagedObjectContext:v4 updatedPayloadClassIDs:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[6] + 8) + 24) = v3;
}

- (id)_newTransientContext
{
  v3 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  v4 = MEMORY[0x1E69BF238];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v6 = [WeakRetained pathManager];
  v7 = [v6 libraryURL];
  v8 = [v4 redactedDescriptionForFileURL:v7];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(PLJournalManagerCore *)self->_journalManager name];
  v11 = [v9 stringWithFormat:@"JournalManager[%@] transient context (%@)", v10, v8];
  [v3 setName:v11];

  v12 = objc_loadWeakRetained(&self->_lsm);
  v13 = [v12 persistentStoreCoordinator];
  [v3 setPersistentStoreCoordinator:v13];

  [v3 setStalenessInterval:0.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47__PLRebuildJournalManager__newTransientContext__block_invoke;
  v17[3] = &unk_1E7578848;
  v14 = v3;
  v18 = v14;
  v19 = self;
  [v14 performBlockAndWait:v17];
  v15 = v14;

  return v15;
}

void __47__PLRebuildJournalManager__newTransientContext__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v3 = [WeakRetained pathManager];
  v4 = [*(a1 + 32) userInfo];
  [v4 setObject:v3 forKeyedSubscript:@"com.apple.photos.PLModelMigratorPathManagerKey"];

  v8 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v5 = [v8 libraryBundle];
  v6 = [v5 graphCache];
  v7 = [*(a1 + 32) userInfo];
  [v7 setObject:v6 forKeyedSubscript:@"com.apple.photos.PLMigrationGraphCacheKey"];
}

- (BOOL)_coalesceJournalsForPayloadClassIDs:(id)a3 withChangeJournalOverThreshold:(float)a4 error:(id *)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (self->_state == 2)
  {
    journalManager = self->_journalManager;
    v23 = 0;
    *&v9 = a4;
    v11 = [(PLJournalManager *)journalManager coalesceJournalsForPayloadClassIDs:v8 withChangeJournalOverThreshold:&v23 error:v9];
    v12 = v23;
    if (v11)
    {
      v13 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to coalesce journals in manager state: %d", self->_state];
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E69BFF48];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v18 = [v15 errorWithDomain:v16 code:51008 userInfo:v17];

    v19 = PLMigrationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [(PLJournalManagerCore *)self->_journalManager name];
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: %@", buf, 0x16u);
    }

    v12 = v18;
  }

  if (a5)
  {
    v21 = v12;
    v13 = 0;
    *a5 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_10:

  return v13;
}

- (BOOL)coalesceJournalsForPayloadClassIDs:(id)a3 withChangeJournalOverThreshold:(float)a4 error:(id *)a5
{
  v8 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__104308;
  v24 = __Block_byref_object_dispose__104309;
  v25 = 0;
  dispatch_group_wait(self->_startupWaitGroup, 0xFFFFFFFFFFFFFFFFLL);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PLRebuildJournalManager_coalesceJournalsForPayloadClassIDs_withChangeJournalOverThreshold_error___block_invoke;
  block[3] = &unk_1E75755C8;
  v17 = &v26;
  block[4] = self;
  v10 = v8;
  v19 = a4;
  v16 = v10;
  v18 = &v20;
  dispatch_sync(queue, block);
  v11 = *(v27 + 24);
  v12 = v21[5];
  if (a5 && (v11 & 1) == 0)
  {
    v12 = v12;
    *a5 = v12;
  }

  v13 = *(v27 + 24);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  return v13;
}

void __99__PLRebuildJournalManager_coalesceJournalsForPayloadClassIDs_withChangeJournalOverThreshold_error___block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  LODWORD(a2) = *(a1 + 64);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 _coalesceJournalsForPayloadClassIDs:v4 withChangeJournalOverThreshold:&obj error:a2];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v6;
}

- (void)coalesceJournalsForPayloadClassIDs:(id)a3 withChangeJournalOverThreshold:(float)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  startupWaitGroup = self->_startupWaitGroup;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __111__PLRebuildJournalManager_coalesceJournalsForPayloadClassIDs_withChangeJournalOverThreshold_completionHandler___block_invoke;
  v14[3] = &unk_1E75755A0;
  v14[4] = self;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  dispatch_group_notify(startupWaitGroup, queue, v14);
}

uint64_t __111__PLRebuildJournalManager_coalesceJournalsForPayloadClassIDs_withChangeJournalOverThreshold_completionHandler___block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 56);
  [*(a1 + 32) _coalesceJournalsForPayloadClassIDs:*(a1 + 40) withChangeJournalOverThreshold:0 error:a2];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)_performSnapshotForPayloadClassIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v7 = +[PLConcurrencyLimiter sharedLimiter];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PLRebuildJournalManager__performSnapshotForPayloadClassIDs_error___block_invoke;
  v10[3] = &unk_1E7576680;
  v8 = v6;
  v11 = v8;
  v12 = self;
  v13 = &v15;
  v14 = a4;
  [v7 sync:v10 identifyingBlock:0 library:0];

  LOBYTE(a4) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return a4;
}

void __68__PLRebuildJournalManager__performSnapshotForPayloadClassIDs_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  v4 = v3[2];
  if (v2)
  {
    v5 = *(a1 + 32);
    v7 = [v3 _newTransientContext];
    v6 = [v4 performPartialSnapshotForPayloadClassIDs:v5 append:1 createOnlyIfNecessary:0 withManagedObjectContext:? error:?];
  }

  else
  {
    v7 = [v3 _newTransientContext];
    v6 = [v4 performFullSnapshotAppend:1 createOnlyIfNecessary:0 withManagedObjectContext:? error:?];
  }

  *(*(*(a1 + 48) + 8) + 24) = v6;
}

- (BOOL)_performSnapshotIfNecessaryWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v5 = +[PLConcurrencyLimiter sharedLimiter];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PLRebuildJournalManager__performSnapshotIfNecessaryWithError___block_invoke;
  v7[3] = &unk_1E7576208;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  [v5 sync:v7 identifyingBlock:0 library:0];

  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return a3;
}

void __64__PLRebuildJournalManager__performSnapshotIfNecessaryWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[2];
  v4 = [v2 _newTransientContext];
  *(*(a1[5] + 8) + 24) = [v3 performSnapshotIfNecessaryAppend:1 withManagedObjectContext:v4 error:a1[6]];
}

- (BOOL)_snapshotJournalsForPayloadClassIDs:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_state == 2)
  {
    v19 = 0;
    v7 = [(PLRebuildJournalManager *)self _performSnapshotForPayloadClassIDs:v6 error:&v19];
    v8 = v19;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to request snapshot in manager state: %d", self->_state];
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E69BFF48];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v8 = [v10 errorWithDomain:v11 code:51008 userInfo:v12];

    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(PLJournalManagerCore *)self->_journalManager name];
      *buf = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  [(PLJournalManager *)self->_journalManager clearIgnoreHistoryDuringSnapshot];
  v15 = v8;
  v16 = v15;
  if (!v7 && a4)
  {
    v17 = v15;
    *a4 = v16;
  }

  return v7;
}

- (void)_snapshotJournalsIgnoreHistoreIfNecessaryForPayloadClassIDs:(id)a3
{
  if (![a3 count])
  {
    journalManager = self->_journalManager;

    [(PLJournalManager *)journalManager setIgnoreHistoryDuringSnapshot];
  }
}

- (BOOL)snapshotJournalsForPayloadClassIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__104308;
  v21 = __Block_byref_object_dispose__104309;
  v22 = 0;
  [(PLRebuildJournalManager *)self _snapshotJournalsIgnoreHistoreIfNecessaryForPayloadClassIDs:v6];
  dispatch_group_wait(self->_startupWaitGroup, 0xFFFFFFFFFFFFFFFFLL);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PLRebuildJournalManager_snapshotJournalsForPayloadClassIDs_error___block_invoke;
  v13[3] = &unk_1E7578898;
  v15 = &v23;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  v16 = &v17;
  dispatch_sync(queue, v13);
  v9 = *(v24 + 24);
  v10 = v18[5];
  if (a4 && (v9 & 1) == 0)
  {
    v10 = v10;
    *a4 = v10;
  }

  v11 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v11;
}

void __68__PLRebuildJournalManager_snapshotJournalsForPayloadClassIDs_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _snapshotJournalsForPayloadClassIDs:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (void)snapshotJournalsForPayloadClassIDs:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PLRebuildJournalManager *)self _snapshotJournalsIgnoreHistoreIfNecessaryForPayloadClassIDs:v6];
  queue = self->_queue;
  startupWaitGroup = self->_startupWaitGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PLRebuildJournalManager_snapshotJournalsForPayloadClassIDs_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7576F38;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_group_notify(startupWaitGroup, queue, block);
}

void __84__PLRebuildJournalManager_snapshotJournalsForPayloadClassIDs_withCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  [v2 _snapshotJournalsForPayloadClassIDs:v3 error:&v6];
  v4 = v6;
  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (void)_handleChangeHandlingNotificationWithTransaction:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PLRebuildJournalManager__handleChangeHandlingNotificationWithTransaction___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __76__PLRebuildJournalManager__handleChangeHandlingNotificationWithTransaction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] >= 2u)
  {
    [v2 _replayFromCurrentHistoryToken];
  }

  v3 = *(a1 + 40);

  return [v3 stillAlive];
}

- (void)_registerForChangeHandlingNotifications
{
  [(PLRebuildJournalManager *)self _unregisterForChangeHandlingNotifications];
  objc_initWeak(&location, self);
  changeHandlingNotificationObserver = self->_changeHandlingNotificationObserver;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PLRebuildJournalManager__registerForChangeHandlingNotifications__block_invoke;
  v4[3] = &unk_1E7575578;
  objc_copyWeak(&v5, &location);
  [(PLChangeHandlingNotificationObserver *)changeHandlingNotificationObserver startObservingRemoteNotificationsWithBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__PLRebuildJournalManager__registerForChangeHandlingNotifications__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleChangeHandlingNotificationWithTransaction:v4];
}

- (void)_retrySnapshot
{
  if (self->_state == 1)
  {
    [(PLRebuildJournalManager *)self _start];
  }
}

- (void)_start
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(PLJournalManager *)self->_journalManager needsSnapshot])
  {
    self->_state = 1;
    v13 = 0;
    v3 = [(PLRebuildJournalManager *)self _performSnapshotIfNecessaryWithError:&v13];
    v4 = v13;
    if (v3)
    {
      self->_state = 2;
      [(PLRebuildJournalManager *)self _replayFromCurrentHistoryToken];
      dispatch_group_leave(self->_startupWaitGroup);
    }

    else
    {
      v7 = PLMigrationGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(PLJournalManagerCore *)self->_journalManager name];
        *buf = 138543874;
        v15 = v8;
        v16 = 2048;
        v17 = 10;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: retrying snapshot after %ld seconds, error: %@", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v9 = dispatch_time(0, 10000000000);
      queue = self->_queue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __33__PLRebuildJournalManager__start__block_invoke;
      v11[3] = &unk_1E75788C0;
      objc_copyWeak(&v12, buf);
      dispatch_after(v9, queue, v11);
      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PLJournalManagerCore *)self->_journalManager name];
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: started, replaying from history", buf, 0xCu);
    }

    self->_state = 2;
    [(PLRebuildJournalManager *)self _replayFromCurrentHistoryToken];
    dispatch_group_leave(self->_startupWaitGroup);
  }
}

void __33__PLRebuildJournalManager__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _retrySnapshot];
}

- (void)_startAfterRebuild
{
  v25 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == 3 || state == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_lsm);
    v6 = [WeakRetained postRunningProgress];
    v7 = [v6 isCancelled];

    if (v7)
    {
      v8 = PLMigrationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(PLJournalManagerCore *)self->_journalManager name];
        *buf = 138543362;
        v22 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: postRunningProgress is cancelled. Not retrying _startAfterRebuild.", buf, 0xCu);
      }
    }

    else
    {
      v10 = objc_loadWeakRetained(&self->_lsm);
      v11 = [v10 databaseContext];
      v8 = [v11 newShortLivedLibraryWithName:"-[PLRebuildJournalManager _startAfterRebuild]"];

      v12 = [v8 globalValues];
      LODWORD(v11) = [v12 isRebuildComplete];

      if (v11)
      {
        v13 = PLMigrationGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(PLJournalManagerCore *)self->_journalManager name];
          *buf = 138543362;
          v22 = v14;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: starting after rebuild complete", buf, 0xCu);
        }

        [(PLRebuildJournalManager *)self _start];
      }

      else
      {
        self->_state = 3;
        v15 = PLMigrationGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(PLJournalManagerCore *)self->_journalManager name];
          *buf = 138543618;
          v22 = v16;
          v23 = 2048;
          v24 = 10;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: rebuild not complete, retry start after %ld seconds", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v17 = dispatch_time(0, 10000000000);
        queue = self->_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__PLRebuildJournalManager__startAfterRebuild__block_invoke;
        block[3] = &unk_1E75788C0;
        objc_copyWeak(&v20, buf);
        dispatch_after(v17, queue, block);
        objc_destroyWeak(&v20);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __45__PLRebuildJournalManager__startAfterRebuild__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startAfterRebuild];
}

- (void)notifyRebuildComplete
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLRebuildJournalManager notifyRebuildComplete]"];
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PLRebuildJournalManager_notifyRebuildComplete__block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(queue, v6);
}

uint64_t __48__PLRebuildJournalManager_notifyRebuildComplete__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[24])
  {
    [v2 _registerForChangeHandlingNotifications];
    v2 = *(a1 + 32);
  }

  [v2 _startAfterRebuild];
  v3 = *(a1 + 40);

  return [v3 stillAlive];
}

- (void)notifyWillRebuild
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PLRebuildJournalManager_notifyWillRebuild__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__PLRebuildJournalManager_notifyWillRebuild__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 16) name];
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: notified rebuild starting", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4[24] == 2)
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 16) name];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: already started, re-entering wait group", &v7, 0xCu);
    }

    dispatch_group_enter(*(*(a1 + 32) + 40));
  }

  else if (!v4[24])
  {
    [v4 _registerForChangeHandlingNotifications];
  }

  *(*(a1 + 32) + 48) = 3;
}

- (void)stop
{
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v4 = [WeakRetained postRunningProgress];
  v5 = [v4 isCancelled];

  if ((v5 & 1) == 0)
  {
    dispatch_group_wait(self->_startupWaitGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  [(PLRebuildJournalManager *)self _unregisterForChangeHandlingNotifications];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PLRebuildJournalManager_stop__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __31__PLRebuildJournalManager_stop__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 16) name];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: stopping", &v4, 0xCu);
  }
}

- (void)start
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLRebuildJournalManager start]"];
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__PLRebuildJournalManager_start__block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(queue, v6);
}

uint64_t __32__PLRebuildJournalManager_start__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[24])
  {
    [v2 _registerForChangeHandlingNotifications];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v4 = [WeakRetained databaseContext];
    v5 = [v4 newShortLivedLibraryWithName:"-[PLRebuildJournalManager start]_block_invoke"];

    v6 = [v5 globalValues];
    LODWORD(v4) = [v6 isRebuildComplete];

    if (v4)
    {
      [*(a1 + 32) _start];
    }

    else
    {
      v7 = PLMigrationGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "JournalManager: waiting to be notified of rebuild start", v9, 2u);
      }

      *(*(a1 + 32) + 48) = 3;
    }
  }

  return [*(a1 + 40) stillAlive];
}

- (PLRebuildJournalManager)initWithLibraryServicesManager:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PLRebuildJournalManager;
  v6 = [(PLRebuildJournalManager *)&v21 init];
  if (v6)
  {
    v7 = [PLJournalManager journalManagerWithClass:objc_opt_class() libraryServiceManager:v5];
    v8 = *(v6 + 2);
    *(v6 + 2) = v7;

    objc_storeWeak(v6 + 1, v5);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);
    v11 = dispatch_queue_create("com.apple.assetsd.PLJournalManager.queue", v10);
    v12 = *(v6 + 4);
    *(v6 + 4) = v11;

    v13 = dispatch_group_create();
    v14 = *(v6 + 5);
    *(v6 + 5) = v13;

    *(v6 + 24) = 0;
    v15 = [v5 libraryBundle];

    if (!v15)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:v6 file:@"PLRebuildJournalManager.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"lsm.libraryBundle"}];
    }

    v16 = [v5 libraryBundle];
    v17 = [v16 makeChangeHandlingNotificationObserverWithLowPriorityThrottleInterval:4.0];
    v18 = *(v6 + 3);
    *(v6 + 3) = v17;

    dispatch_group_enter(*(v6 + 5));
  }

  return v6;
}

+ (BOOL)existingJournalsCompatibleForRebuild:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DFF8];
  v8 = [v6 photoDirectoryWithType:8];
  v9 = [v7 fileURLWithPath:v8];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__104308;
  v26 = __Block_byref_object_dispose__104309;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v10 = [a1 payloadClasses];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PLRebuildJournalManager_existingJournalsCompatibleForRebuild_error___block_invoke;
  v14[3] = &unk_1E7575550;
  v11 = v9;
  v15 = v11;
  v16 = &v22;
  v17 = &v18;
  [v10 enumerateObjectsUsingBlock:v14];

  if (a4)
  {
    *a4 = v23[5];
  }

  v12 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __70__PLRebuildJournalManager_existingJournalsCompatibleForRebuild_error___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = [[PLJournal alloc] initWithBaseURL:a1[4] payloadClass:a2];
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [(PLJournal *)v7 currentPayloadVersionWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9 <= [a2 payloadVersion])
  {
    if (!v9)
    {
      if (PLIsErrorEqualToCode())
      {
        v19 = *(a1[5] + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = 0;
      }

      else
      {
        *(*(a1[6] + 8) + 24) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E69BFF48];
    v22 = *MEMORY[0x1E696A578];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [a2 payloadClassID];
    v14 = [v12 stringWithFormat:@"Existing journal (%@) too new to perform a rebuild, journal version %lu greater than current version %u", v13, v9, objc_msgSend(a2, "payloadVersion")];
    v23[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = [v10 errorWithDomain:v11 code:46006 userInfo:v15];
    v17 = *(a1[5] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

+ (BOOL)assetJournalExists:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [PLJournal alloc];
  v7 = MEMORY[0x1E695DFF8];
  v8 = [v5 photoDirectoryWithType:8];

  v9 = [v7 fileURLWithPath:v8];
  v10 = [(PLJournal *)v6 initWithBaseURL:v9 payloadClass:objc_opt_class()];

  v13 = 0uLL;
  v11 = [(PLJournal *)v10 snapshotJournalFileSize:&v13 + 8 changeJournalFileSize:&v13 error:a4]&& v13 != 0;

  return v11;
}

+ (BOOL)isEnabledWithPathManager:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLRebuildJournalManager.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  if ([v7 isUBF])
  {
    v8 = MEMORY[0x1E69BF2A0];
    v9 = [v7 libraryURL];
    v10 = [v8 wellKnownPhotoLibraryIdentifierForURL:v9];

    if (v10 != 3)
    {
      v21 = 1;
      goto LABEL_11;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v26 = *MEMORY[0x1E696A278];
    v27[0] = @"Disabled journal for invalid well known library type";
    v13 = MEMORY[0x1E695DF20];
    v14 = v27;
    v15 = &v26;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v24 = *MEMORY[0x1E696A278];
    v25 = @"Disabled journal for unsupported DCIM format";
    v13 = MEMORY[0x1E695DF20];
    v14 = &v25;
    v15 = &v24;
  }

  v16 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
  v17 = [v11 errorWithDomain:v12 code:46309 userInfo:v16];

  v18 = v17;
  v19 = v18;
  if (a4)
  {
    v20 = v18;
    *a4 = v19;
  }

  v21 = 0;
LABEL_11:

  return v21;
}

+ (id)payloadClasses
{
  v4[15] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v4[13] = objc_opt_class();
  v4[14] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:15];

  return v2;
}

+ (id)baseURLFromPathManager:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [a3 photoDirectoryWithType:8];
    v5 = [v3 fileURLWithPath:v4 isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end