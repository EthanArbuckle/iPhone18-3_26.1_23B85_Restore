@interface PLMigrationHistory
+ (BOOL)currentMigrationHistoryIndex:(int64_t *)a3 withManagedObjectContext:(id)a4 error:(id *)a5;
+ (BOOL)recordCurrentMigrationStateInManagedObjectContext:(id)a3 withPathManager:(id)a4 migrationType:(int64_t)a5 forceRebuildReason:(id)a6 sourceModelVersion:(id)a7 updateLegacyMigrationState:(BOOL)a8 journalRebuildRequred:(BOOL)a9 origin:(signed __int16)a10 libraryCreateOptions:(unint64_t)a11 hardwareModel:(id)a12 deviceUniqueID:(id)a13 cplEnabled:(BOOL)a14 initialSyncDate:(id)a15;
+ (id)currentMigrationHistoryWithManagedObjectContext:(id)a3;
+ (id)insertIntoManagedObjectContext:(id)a3 index:(int64_t)a4 sourceModelVersion:(id)a5 migrationType:(int64_t)a6 migrationDate:(id)a7 forceRebuildReason:(id)a8 hardwareModel:(id)a9 deviceUniqueID:(id)a10 cplEnabled:(BOOL)a11 initialSyncDate:(id)a12;
+ (id)insertLightweightWithManagedObjectContext:(id)a3 index:(int64_t)a4 sourceModelVersion:(unint64_t)a5 migrationDate:(id)a6 hardwareModel:(id)a7 deviceUniqueID:(id)a8 cplEnabled:(BOOL)a9 initialSyncDate:(id)a10;
+ (id)migrateLegacyMigrationHistoryWithMetadata:(id)a3 index:(int64_t)a4 outGlobalKeyValues:(id)a5 managedObjectContext:(id)a6;
+ (id)migrationHistoryWithManagedObjectContext:(id)a3;
+ (int64_t)_rebuildMigrationHistoryWithJournal:(id)a3 managedObjectContext:(id)a4;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
@end

@implementation PLMigrationHistory

+ (int64_t)_rebuildMigrationHistoryWithJournal:(id)a3 managedObjectContext:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__PLMigrationHistory__rebuildMigrationHistoryWithJournal_managedObjectContext___block_invoke;
  v19[3] = &unk_1E75661C0;
  v7 = v6;
  v20 = v7;
  v21 = &v22;
  v18 = 0;
  v8 = [v5 enumeratePayloadsUsingBlock:v19 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v11 = v9;
    goto LABEL_13;
  }

  if (!PLIsErrorEqualToCode())
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "+[PLMigrationHistory _rebuildMigrationHistoryWithJournal:managedObjectContext:]";
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to read MigrationHistory journal: %{public}s, %@", buf, 0x16u);
    }

    v11 = v10;
    goto LABEL_12;
  }

  v12 = PLMigrationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v27 = "+[PLMigrationHistory _rebuildMigrationHistoryWithJournal:managedObjectContext:]";
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Not rebuilding MigrationHistory due to too new payload version in the journal: %{public}s, %@", buf, 0x16u);
  }

  v17 = v10;
  v13 = [v5 createSnapshotUsingNextPayloadBlock:&__block_literal_global_7603 createOnlyIfNecessary:0 error:&v17];
  v11 = v17;

  if ((v13 & 1) == 0)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "+[PLMigrationHistory _rebuildMigrationHistoryWithJournal:managedObjectContext:]";
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to snapshot empty MigrationHistory journal: %{public}s, %@", buf, 0x16u);
    }

LABEL_12:
  }

LABEL_13:

  v15 = v23[3];
  _Block_object_dispose(&v22, 8);

  return v15;
}

void __79__PLMigrationHistory__rebuildMigrationHistoryWithJournal_managedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 insertMigrationHistoryFromDataInManagedObjectContext:*(a1 + 32)];
  if ([v3 index] > *(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 index];
  }
}

+ (BOOL)recordCurrentMigrationStateInManagedObjectContext:(id)a3 withPathManager:(id)a4 migrationType:(int64_t)a5 forceRebuildReason:(id)a6 sourceModelVersion:(id)a7 updateLegacyMigrationState:(BOOL)a8 journalRebuildRequred:(BOOL)a9 origin:(signed __int16)a10 libraryCreateOptions:(unint64_t)a11 hardwareModel:(id)a12 deviceUniqueID:(id)a13 cplEnabled:(BOOL)a14 initialSyncDate:(id)a15
{
  v15 = a8;
  v60 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  v22 = a6;
  v23 = a7;
  v24 = a12;
  v35 = a13;
  v25 = a15;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 1;
  v26 = [v20 persistentStoreCoordinator];
  v27 = [v26 persistentStores];
  v37 = [v27 firstObject];

  v28 = [v37 metadata];
  v29 = v28;
  if (v28)
  {
    v36 = [v28 mutableCopy];
    v30 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")}];
    [v36 setObject:v30 forKeyedSubscript:@"PLModelVersion"];

    if (v15)
    {
      [v36 setObject:&unk_1F0FBAE10 forKeyedSubscript:*MEMORY[0x1E69BFEE0]];
    }

    [v37 setMetadata:v36];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __273__PLMigrationHistory_recordCurrentMigrationStateInManagedObjectContext_withPathManager_migrationType_forceRebuildReason_sourceModelVersion_updateLegacyMigrationState_journalRebuildRequred_origin_libraryCreateOptions_hardwareModel_deviceUniqueID_cplEnabled_initialSyncDate___block_invoke;
    v38[3] = &unk_1E7566198;
    v39 = v21;
    v48 = a5;
    v49 = a1;
    v40 = v20;
    v47 = &v54;
    v41 = v22;
    v42 = v24;
    v43 = v35;
    v52 = a14;
    v44 = v25;
    v51 = a10;
    v53 = a9;
    v45 = v23;
    v50 = a11;
    v46 = v29;
    [v40 performBlockAndWait:v38];

    v31 = *(v55 + 24);
  }

  else
  {
    v32 = PLMigrationGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v59 = "+[PLMigrationHistory recordCurrentMigrationStateInManagedObjectContext:withPathManager:migrationType:forceRebuildReason:sourceModelVersion:updateLegacyMigrationState:journalRebuildRequred:origin:libraryCreateOptions:hardwareModel:deviceUniqueID:cplEnabled:initialSyncDate:]";
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Failed to get store metadata: %{public}s", buf, 0xCu);
    }

    v31 = 0;
    *(v55 + 24) = 0;
  }

  _Block_object_dispose(&v54, 8);
  return v31 & 1;
}

void __273__PLMigrationHistory_recordCurrentMigrationStateInManagedObjectContext_withPathManager_migrationType_forceRebuildReason_sourceModelVersion_updateLegacyMigrationState_journalRebuildRequred_origin_libraryCreateOptions_hardwareModel_deviceUniqueID_cplEnabled_initialSyncDate___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v37 = -1;
  v2 = MEMORY[0x1E695DFF8];
  v3 = [*(a1 + 32) photoDirectoryWithType:8];
  v4 = [v2 fileURLWithPath:v3];

  v5 = [[PLJournal alloc] initWithBaseURL:v4 payloadClass:objc_opt_class()];
  if (*(a1 + 104) == 2)
  {
    v6 = *(a1 + 40);
    v36 = 0;
    v7 = [PLMigrationHistory currentMigrationHistoryIndex:&v37 withManagedObjectContext:v6 error:&v36];
    v8 = v36;
    *(*(*(a1 + 96) + 8) + 24) = v7;
  }

  else
  {
    v8 = 0;
    v37 = [*(a1 + 112) _rebuildMigrationHistoryWithJournal:v5 managedObjectContext:*(a1 + 40)];
  }

  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    v9 = ++v37;
    v10 = *(a1 + 104);
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v19 = *(a1 + 40);
        v20 = [*(a1 + 80) integerValue];
        v21 = [MEMORY[0x1E695DF00] date];
        LOBYTE(v33) = *(a1 + 130);
        v14 = [PLMigrationHistory insertLightweightWithManagedObjectContext:v19 index:v9 sourceModelVersion:v20 migrationDate:v21 hardwareModel:*(a1 + 56) deviceUniqueID:*(a1 + 64) cplEnabled:v33 initialSyncDate:*(a1 + 72)];

        goto LABEL_20;
      }

      if (v10 == 3)
      {
        v15 = *(a1 + 40);
        v12 = [MEMORY[0x1E695DF00] date];
        v13 = [PLMigrationHistory insertCreatedWithManagedObjectContext:v15 index:v9 migrationDate:v12 hardwareModel:*(a1 + 56) deviceUniqueID:*(a1 + 64) cplEnabled:*(a1 + 130) initialSyncDate:*(a1 + 72)];
        goto LABEL_18;
      }
    }

    else
    {
      if (!v10)
      {
        v18 = *(a1 + 40);
        v12 = [MEMORY[0x1E695DF00] date];
        v13 = [PLMigrationHistory insertNoopWithManagedObjectContext:v18 index:v9 migrationDate:v12 hardwareModel:*(a1 + 56) deviceUniqueID:*(a1 + 64) cplEnabled:*(a1 + 130) initialSyncDate:*(a1 + 72)];
        goto LABEL_18;
      }

      if (v10 == 1)
      {
        v11 = *(a1 + 40);
        v12 = [MEMORY[0x1E695DF00] date];
        LOBYTE(v33) = *(a1 + 130);
        v13 = [PLMigrationHistory insertRebuildWithManagedObjectContext:v11 index:v9 migrationDate:v12 forceRebuildReason:*(a1 + 48) hardwareModel:*(a1 + 56) deviceUniqueID:*(a1 + 64) cplEnabled:v33 initialSyncDate:*(a1 + 72)];
LABEL_18:
        v14 = v13;

        goto LABEL_20;
      }
    }

    v16 = PLMigrationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 104);
      *buf = 134217984;
      v40 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unsupported migrationType: %ld", buf, 0xCu);
    }

    v14 = 0;
    *(*(*(a1 + 96) + 8) + 24) = 0;
LABEL_20:
    if (*(*(*(a1 + 96) + 8) + 24) != 1)
    {
      goto LABEL_37;
    }

    v22 = *(a1 + 128);
    if (!v22)
    {
      if (*(a1 + 104) != 3 || v37 < 1)
      {
        goto LABEL_26;
      }

      v22 = 6;
    }

    [v14 setOrigin:v22];
LABEL_26:
    if (*(a1 + 131) == 1)
    {
      [PLGlobalValues setJournalRebuildRequired:1 managedObjectContext:*(a1 + 40)];
    }

    [PLGlobalValues setLibraryCreateOptions:*(a1 + 120) managedObjectContext:*(a1 + 40)];
    v23 = *(a1 + 40);
    v35 = v8;
    v24 = [v23 save:&v35];
    v25 = v35;

    *(*(*(a1 + 96) + 8) + 24) = v24;
    if (*(*(*(a1 + 96) + 8) + 24))
    {
      v26 = [PLJournalEntry alloc];
      v27 = [v14 payloadForChangedKeys:0];
      v28 = [(PLJournalEntry *)v26 initForInsertWithPayload:v27];

      v38 = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v34 = v25;
      v30 = [(PLJournal *)v5 appendChangeEntries:v29 error:&v34];
      v8 = v34;

      if (!v30)
      {
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v40 = "+[PLMigrationHistory recordCurrentMigrationStateInManagedObjectContext:withPathManager:migrationType:forceRebuildReason:sourceModelVersion:updateLegacyMigrationState:journalRebuildRequred:origin:libraryCreateOptions:hardwareModel:deviceUniqueID:cplEnabled:initialSyncDate:]_block_invoke";
          v41 = 2114;
          v42 = v8;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to update MigrationHistory journal: %{public}s, %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v28 = PLMigrationGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 88);
        *buf = 136446722;
        v40 = "+[PLMigrationHistory recordCurrentMigrationStateInManagedObjectContext:withPathManager:migrationType:forceRebuildReason:sourceModelVersion:updateLegacyMigrationState:journalRebuildRequred:origin:libraryCreateOptions:hardwareModel:deviceUniqueID:cplEnabled:initialSyncDate:]_block_invoke";
        v41 = 2114;
        v42 = v25;
        v43 = 2114;
        v44 = v32;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to save store metadata: %{public}s, error: %{public}@, metadata:%{public}@", buf, 0x20u);
      }

      v8 = v25;
    }

    goto LABEL_37;
  }

  v14 = PLMigrationGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v40 = "+[PLMigrationHistory recordCurrentMigrationStateInManagedObjectContext:withPathManager:migrationType:forceRebuildReason:sourceModelVersion:updateLegacyMigrationState:journalRebuildRequred:origin:libraryCreateOptions:hardwareModel:deviceUniqueID:cplEnabled:initialSyncDate:]_block_invoke";
    v41 = 2114;
    v42 = v8;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to query next migration history index: %{public}s, %{public}@", buf, 0x16u);
  }

LABEL_37:
}

+ (id)migrateLegacyMigrationHistoryWithMetadata:(id)a3 index:(int64_t)a4 outGlobalKeyValues:(id)a5 managedObjectContext:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 < 0)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:a1 file:@"PLMigrationHistory.m" lineNumber:212 description:@"index must be greater than 0"];
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [v11 objectForKeyedSubscript:@"ImportedFileSystemAssets"];

  if (v15)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{_BOOLForKey(v11, @"ImportedFileSystemAssets"}];
    [v14 setObject:v16 forKeyedSubscript:@"ImportedFileSystemAssets"];

    [v11 removeObjectForKey:@"ImportedFileSystemAssets"];
  }

  v17 = [v11 objectForKeyedSubscript:@"ImportedFileSystemAssetsDate"];

  if (v17)
  {
    v18 = PLCompleteDateFormatter();
    v19 = _dateForKey(v11, @"ImportedFileSystemAssetsDate", v18);
    [v14 setObject:v19 forKeyedSubscript:@"ImportedFileSystemAssetsDate"];

    [v11 removeObjectForKey:@"ImportedFileSystemAssetsDate"];
  }

  v20 = [v11 objectForKeyedSubscript:@"PLRebuildRequired"];

  if (v20)
  {
    if (_BOOLForKey(v11, @"PLRebuildRequired"))
    {
      v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v14 setObject:v21 forKeyedSubscript:@"JournalRebuildRequired"];
    }

    [v11 removeObjectForKey:@"PLRebuildRequired"];
  }

  v22 = PLCompleteDateFormatter();
  v23 = _dateForKey(v11, @"PLMigrationDate", v22);

  v24 = _stringForKey(v11, @"PLLibraryUpgradeType");
  v25 = [v24 lowercaseString];

  if ([v25 hasPrefix:@"created"])
  {
    v26 = 3;
  }

  else if ([v25 hasPrefix:@"lightweight"])
  {
    v26 = 2;
  }

  else
  {
    v26 = [v25 hasPrefix:@"rebuil"];
  }

  v48 = v12;
  if ([v25 containsString:@" icloud restore"])
  {
    v27 = 2;
  }

  else
  {
    v27 = [v25 containsString:@" itunes restore"];
  }

  if ([v25 hasSuffix:@"(forced)"])
  {
    v28 = &unk_1F0FBADF8;
  }

  else
  {
    v28 = 0;
  }

  v47 = v13;
  v29 = [(PLManagedObject *)PLMigrationHistory insertInManagedObjectContext:v13];
  [v29 setIndex:a4];
  v30 = _numberForKey(v11, @"PLModelVersion");
  [v29 setModelVersion:{objc_msgSend(v30, "integerValue")}];
  v31 = _numberForKey(v11, @"PLMigrationSourceModelVersion");
  [v29 setSourceModelVersion:v31];

  [v29 setMigrationType:v26];
  [v29 setMigrationDate:v23];
  v32 = _stringForKey(v11, @"PLOSVersion");
  if (v32)
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{objc_msgSend(v32, "UTF8String")}];
    [v29 setOsVersion:v33];
  }

  v34 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];
  [v29 setStoreUUID:v34];

  [v29 setForceRebuildReason:v28];
  [v29 setOrigin:v27];
  if ([v14 count])
  {
    v35 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v14];
    [v29 setGlobalKeyValues:v35];
  }

  else
  {
    [v29 setGlobalKeyValues:0];
  }

  v36 = v48;
  [v11 removeObjectForKey:@"PLMigrationDate"];
  [v11 removeObjectForKey:@"PLLibraryUpgradeType"];
  [v11 removeObjectForKey:@"PLMigrationSourceModelVersion"];
  [v11 removeObjectForKey:@"PLOSVersion"];
  v37 = [v11 objectForKeyedSubscript:@"PLGreenValues"];
  if (v37)
  {
    [v14 setObject:v37 forKeyedSubscript:@"GreenValues"];
    [v11 removeObjectForKey:@"PLGreenValues"];
  }

  if (v48)
  {
    v46 = v30;
    v38 = v23;
    [v48 addEntriesFromDictionary:v14];
    v39 = [v14 objectForKeyedSubscript:@"ImportedFileSystemAssets"];
    if ([v39 integerValue] == 1)
    {
      v40 = [v14 objectForKeyedSubscript:@"JournalRebuildRequired"];
      v41 = [v40 BOOLValue];

      if (v41)
      {
        goto LABEL_34;
      }

      v39 = [v14 objectForKeyedSubscript:@"ImportedFileSystemAssetsDate"];
      [v48 setObject:v39 forKeyedSubscript:@"RebuildCompleteDate"];
    }

LABEL_34:
    v42 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69BFEE0]];
    v43 = [v42 integerValue];

    v36 = v48;
    v23 = v38;
    v30 = v46;
    if (v43 == 1)
    {
      [v29 setOrigin:5];
    }
  }

  return v29;
}

+ (BOOL)currentMigrationHistoryIndex:(int64_t *)a3 withManagedObjectContext:(id)a4 error:(id *)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC8];
  v8 = a4;
  v9 = [v7 expressionForKeyPath:@"index"];
  v10 = MEMORY[0x1E696ABC8];
  v24[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v12 = [v10 expressionForFunction:@"max:" arguments:v11];

  v13 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v13 setName:@"maxIndex"];
  [v13 setExpression:v12];
  [v13 setExpressionResultType:300];
  v14 = MEMORY[0x1E695D5E0];
  v15 = +[PLMigrationHistory entityName];
  v16 = [v14 fetchRequestWithEntityName:v15];

  [v16 setResultType:2];
  v23 = v13;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [v16 setPropertiesToFetch:v17];

  v18 = [v8 executeFetchRequest:v16 error:a5];

  if (v18)
  {
    v19 = [v18 firstObject];
    v20 = [v19 valueForKey:@"maxIndex"];

    if (v20)
    {
      v21 = [v20 longLongValue];
    }

    else
    {
      v21 = -1;
    }

    *a3 = v21;
  }

  return v18 != 0;
}

+ (id)currentMigrationHistoryWithManagedObjectContext:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v18 = 0;
  v19 = 0;
  v4 = [PLMigrationHistory currentMigrationHistoryIndex:&v19 withManagedObjectContext:v3 error:&v18];
  v5 = v18;
  if (!v4 || v19 < 0)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error querying current migration history index: %@", buf, 0xCu);
    }

    v14 = 0;
    v13 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695D5E0];
    v7 = +[PLMigrationHistory entityName];
    v8 = [v6 fetchRequestWithEntityName:v7];

    v9 = MEMORY[0x1E696AE18];
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
    v11 = [v9 predicateWithFormat:@"%K = %@", @"index", v10];
    [v8 setPredicate:v11];

    v17 = v5;
    v12 = [v3 executeFetchRequest:v8 error:&v17];
    v13 = v17;

    if (v12)
    {
      v14 = [v12 firstObject];
    }

    else
    {
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error fetching current migration history: %@", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  return v14;
}

+ (id)migrationHistoryWithManagedObjectContext:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  v4 = a3;
  v5 = +[PLMigrationHistory entityName];
  v6 = [v3 fetchRequestWithEntityName:v5];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"index" ascending:1];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v6 setSortDescriptors:v8];

  v13 = 0;
  v9 = [v4 executeFetchRequest:v6 error:&v13];

  v10 = v13;
  if (!v9)
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Error fetching migration history: %@", buf, 0xCu);
    }
  }

  return v9;
}

+ (id)insertIntoManagedObjectContext:(id)a3 index:(int64_t)a4 sourceModelVersion:(id)a5 migrationType:(int64_t)a6 migrationDate:(id)a7 forceRebuildReason:(id)a8 hardwareModel:(id)a9 deviceUniqueID:(id)a10 cplEnabled:(BOOL)a11 initialSyncDate:(id)a12
{
  v39 = a6;
  v17 = a3;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v40 = a9;
  v21 = a10;
  v22 = a12;
  if (a4 < 0)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:a1 file:@"PLMigrationHistory.m" lineNumber:136 description:@"index must be greater than or equal to 0"];
  }

  v23 = [(PLManagedObject *)PLMigrationHistory insertInManagedObjectContext:v17, a2];
  [v23 setIndex:a4];
  [v23 setModelVersion:{+[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")}];
  v24 = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
  [v23 setOsVersion:v24];

  v25 = v18;
  [v23 setSourceModelVersion:v18];
  [v23 setMigrationType:v39];
  v26 = v19;
  [v23 setMigrationDate:v19];
  [v23 setForceRebuildReason:v20];
  v27 = [v17 persistentStoreCoordinator];
  v28 = [v27 persistentStores];
  v29 = [v28 firstObject];

  v30 = [v29 metadata];
  v31 = [v30 objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];
  [v23 setStoreUUID:v31];

  v32 = PLPhotoLibraryServicesBinaryImageUUID();
  v33 = [v32 UUIDString];
  [v23 setFrameworkUUID:v33];

  v34 = [PLGlobalKeyValue dictionaryWithManagedObjectContext:v17 forMigrationHistory:1];
  if ([v34 count])
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  [v23 setGlobalKeyValues:v35];
  [v23 setHardwareModel:v40];
  [v23 setDeviceUniqueID:v21];
  [v23 setInitialSyncDate:v22];
  [v23 setCplEnabled:a11];

  return v23;
}

+ (id)insertLightweightWithManagedObjectContext:(id)a3 index:(int64_t)a4 sourceModelVersion:(unint64_t)a5 migrationDate:(id)a6 hardwareModel:(id)a7 deviceUniqueID:(id)a8 cplEnabled:(BOOL)a9 initialSyncDate:(id)a10
{
  v17 = MEMORY[0x1E696AD98];
  v18 = a10;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a3;
  v23 = [v17 numberWithUnsignedInteger:a5];
  LOBYTE(v26) = a9;
  v24 = [a1 insertIntoManagedObjectContext:v22 index:a4 sourceModelVersion:v23 migrationType:2 migrationDate:v21 forceRebuildReason:0 hardwareModel:v20 deviceUniqueID:v19 cplEnabled:v26 initialSyncDate:v18];

  return v24;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)[PLMigrationHistoryJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];

  return v5;
}

- (id)payloadIDForTombstone:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 objectForKeyedSubscript:@"index"];
  v5 = [v3 stringWithFormat:@"%@", v4];
  v6 = [PLJournalEntryPayloadIDFactory payloadIDWithString:v5];

  return v6;
}

- (id)payloadID
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", -[PLMigrationHistory index](self, "index")];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithString:v2];

  return v3;
}

@end