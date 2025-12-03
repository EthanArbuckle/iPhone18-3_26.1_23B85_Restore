@interface PLMigrationHistory
+ (BOOL)currentMigrationHistoryIndex:(int64_t *)index withManagedObjectContext:(id)context error:(id *)error;
+ (BOOL)recordCurrentMigrationStateInManagedObjectContext:(id)context withPathManager:(id)manager migrationType:(int64_t)type forceRebuildReason:(id)reason sourceModelVersion:(id)version updateLegacyMigrationState:(BOOL)state journalRebuildRequred:(BOOL)requred origin:(signed __int16)self0 libraryCreateOptions:(unint64_t)self1 hardwareModel:(id)self2 deviceUniqueID:(id)self3 cplEnabled:(BOOL)self4 initialSyncDate:(id)self5;
+ (id)currentMigrationHistoryWithManagedObjectContext:(id)context;
+ (id)insertIntoManagedObjectContext:(id)context index:(int64_t)index sourceModelVersion:(id)version migrationType:(int64_t)type migrationDate:(id)date forceRebuildReason:(id)reason hardwareModel:(id)model deviceUniqueID:(id)self0 cplEnabled:(BOOL)self1 initialSyncDate:(id)self2;
+ (id)insertLightweightWithManagedObjectContext:(id)context index:(int64_t)index sourceModelVersion:(unint64_t)version migrationDate:(id)date hardwareModel:(id)model deviceUniqueID:(id)d cplEnabled:(BOOL)enabled initialSyncDate:(id)self0;
+ (id)migrateLegacyMigrationHistoryWithMetadata:(id)metadata index:(int64_t)index outGlobalKeyValues:(id)values managedObjectContext:(id)context;
+ (id)migrationHistoryWithManagedObjectContext:(id)context;
+ (int64_t)_rebuildMigrationHistoryWithJournal:(id)journal managedObjectContext:(id)context;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
@end

@implementation PLMigrationHistory

+ (int64_t)_rebuildMigrationHistoryWithJournal:(id)journal managedObjectContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  journalCopy = journal;
  contextCopy = context;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__PLMigrationHistory__rebuildMigrationHistoryWithJournal_managedObjectContext___block_invoke;
  v19[3] = &unk_1E75661C0;
  v7 = contextCopy;
  v20 = v7;
  v21 = &v22;
  v18 = 0;
  v8 = [journalCopy enumeratePayloadsUsingBlock:v19 error:&v18];
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
  v13 = [journalCopy createSnapshotUsingNextPayloadBlock:&__block_literal_global_7603 createOnlyIfNecessary:0 error:&v17];
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

+ (BOOL)recordCurrentMigrationStateInManagedObjectContext:(id)context withPathManager:(id)manager migrationType:(int64_t)type forceRebuildReason:(id)reason sourceModelVersion:(id)version updateLegacyMigrationState:(BOOL)state journalRebuildRequred:(BOOL)requred origin:(signed __int16)self0 libraryCreateOptions:(unint64_t)self1 hardwareModel:(id)self2 deviceUniqueID:(id)self3 cplEnabled:(BOOL)self4 initialSyncDate:(id)self5
{
  stateCopy = state;
  v60 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  managerCopy = manager;
  reasonCopy = reason;
  versionCopy = version;
  modelCopy = model;
  dCopy = d;
  dateCopy = date;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 1;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];

  metadata = [firstObject metadata];
  v29 = metadata;
  if (metadata)
  {
    v36 = [metadata mutableCopy];
    v30 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")}];
    [v36 setObject:v30 forKeyedSubscript:@"PLModelVersion"];

    if (stateCopy)
    {
      [v36 setObject:&unk_1F0FBAE10 forKeyedSubscript:*MEMORY[0x1E69BFEE0]];
    }

    [firstObject setMetadata:v36];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __273__PLMigrationHistory_recordCurrentMigrationStateInManagedObjectContext_withPathManager_migrationType_forceRebuildReason_sourceModelVersion_updateLegacyMigrationState_journalRebuildRequred_origin_libraryCreateOptions_hardwareModel_deviceUniqueID_cplEnabled_initialSyncDate___block_invoke;
    v38[3] = &unk_1E7566198;
    v39 = managerCopy;
    typeCopy = type;
    selfCopy = self;
    v40 = contextCopy;
    v47 = &v54;
    v41 = reasonCopy;
    v42 = modelCopy;
    v43 = dCopy;
    enabledCopy = enabled;
    v44 = dateCopy;
    originCopy = origin;
    requredCopy = requred;
    v45 = versionCopy;
    optionsCopy = options;
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

+ (id)migrateLegacyMigrationHistoryWithMetadata:(id)metadata index:(int64_t)index outGlobalKeyValues:(id)values managedObjectContext:(id)context
{
  metadataCopy = metadata;
  valuesCopy = values;
  contextCopy = context;
  if (index < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMigrationHistory.m" lineNumber:212 description:@"index must be greater than 0"];
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [metadataCopy objectForKeyedSubscript:@"ImportedFileSystemAssets"];

  if (v15)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{_BOOLForKey(metadataCopy, @"ImportedFileSystemAssets"}];
    [v14 setObject:v16 forKeyedSubscript:@"ImportedFileSystemAssets"];

    [metadataCopy removeObjectForKey:@"ImportedFileSystemAssets"];
  }

  v17 = [metadataCopy objectForKeyedSubscript:@"ImportedFileSystemAssetsDate"];

  if (v17)
  {
    v18 = PLCompleteDateFormatter();
    v19 = _dateForKey(metadataCopy, @"ImportedFileSystemAssetsDate", v18);
    [v14 setObject:v19 forKeyedSubscript:@"ImportedFileSystemAssetsDate"];

    [metadataCopy removeObjectForKey:@"ImportedFileSystemAssetsDate"];
  }

  v20 = [metadataCopy objectForKeyedSubscript:@"PLRebuildRequired"];

  if (v20)
  {
    if (_BOOLForKey(metadataCopy, @"PLRebuildRequired"))
    {
      v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v14 setObject:v21 forKeyedSubscript:@"JournalRebuildRequired"];
    }

    [metadataCopy removeObjectForKey:@"PLRebuildRequired"];
  }

  v22 = PLCompleteDateFormatter();
  v23 = _dateForKey(metadataCopy, @"PLMigrationDate", v22);

  v24 = _stringForKey(metadataCopy, @"PLLibraryUpgradeType");
  lowercaseString = [v24 lowercaseString];

  if ([lowercaseString hasPrefix:@"created"])
  {
    v26 = 3;
  }

  else if ([lowercaseString hasPrefix:@"lightweight"])
  {
    v26 = 2;
  }

  else
  {
    v26 = [lowercaseString hasPrefix:@"rebuil"];
  }

  v48 = valuesCopy;
  if ([lowercaseString containsString:@" icloud restore"])
  {
    v27 = 2;
  }

  else
  {
    v27 = [lowercaseString containsString:@" itunes restore"];
  }

  if ([lowercaseString hasSuffix:@"(forced)"])
  {
    v28 = &unk_1F0FBADF8;
  }

  else
  {
    v28 = 0;
  }

  v47 = contextCopy;
  v29 = [(PLManagedObject *)PLMigrationHistory insertInManagedObjectContext:contextCopy];
  [v29 setIndex:index];
  v30 = _numberForKey(metadataCopy, @"PLModelVersion");
  [v29 setModelVersion:{objc_msgSend(v30, "integerValue")}];
  v31 = _numberForKey(metadataCopy, @"PLMigrationSourceModelVersion");
  [v29 setSourceModelVersion:v31];

  [v29 setMigrationType:v26];
  [v29 setMigrationDate:v23];
  v32 = _stringForKey(metadataCopy, @"PLOSVersion");
  if (v32)
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{objc_msgSend(v32, "UTF8String")}];
    [v29 setOsVersion:v33];
  }

  v34 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];
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
  [metadataCopy removeObjectForKey:@"PLMigrationDate"];
  [metadataCopy removeObjectForKey:@"PLLibraryUpgradeType"];
  [metadataCopy removeObjectForKey:@"PLMigrationSourceModelVersion"];
  [metadataCopy removeObjectForKey:@"PLOSVersion"];
  v37 = [metadataCopy objectForKeyedSubscript:@"PLGreenValues"];
  if (v37)
  {
    [v14 setObject:v37 forKeyedSubscript:@"GreenValues"];
    [metadataCopy removeObjectForKey:@"PLGreenValues"];
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
      bOOLValue = [v40 BOOLValue];

      if (bOOLValue)
      {
        goto LABEL_34;
      }

      v39 = [v14 objectForKeyedSubscript:@"ImportedFileSystemAssetsDate"];
      [v48 setObject:v39 forKeyedSubscript:@"RebuildCompleteDate"];
    }

LABEL_34:
    v42 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E69BFEE0]];
    integerValue = [v42 integerValue];

    v36 = v48;
    v23 = v38;
    v30 = v46;
    if (integerValue == 1)
    {
      [v29 setOrigin:5];
    }
  }

  return v29;
}

+ (BOOL)currentMigrationHistoryIndex:(int64_t *)index withManagedObjectContext:(id)context error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC8];
  contextCopy = context;
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

  v18 = [contextCopy executeFetchRequest:v16 error:error];

  if (v18)
  {
    firstObject = [v18 firstObject];
    v20 = [firstObject valueForKey:@"maxIndex"];

    if (v20)
    {
      longLongValue = [v20 longLongValue];
    }

    else
    {
      longLongValue = -1;
    }

    *index = longLongValue;
  }

  return v18 != 0;
}

+ (id)currentMigrationHistoryWithManagedObjectContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v18 = 0;
  v19 = 0;
  v4 = [PLMigrationHistory currentMigrationHistoryIndex:&v19 withManagedObjectContext:contextCopy error:&v18];
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

    firstObject = 0;
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
    v12 = [contextCopy executeFetchRequest:v8 error:&v17];
    v13 = v17;

    if (v12)
    {
      firstObject = [v12 firstObject];
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

      firstObject = 0;
    }
  }

  return firstObject;
}

+ (id)migrationHistoryWithManagedObjectContext:(id)context
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v5 = +[PLMigrationHistory entityName];
  v6 = [v3 fetchRequestWithEntityName:v5];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"index" ascending:1];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v6 setSortDescriptors:v8];

  v13 = 0;
  v9 = [contextCopy executeFetchRequest:v6 error:&v13];

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

+ (id)insertIntoManagedObjectContext:(id)context index:(int64_t)index sourceModelVersion:(id)version migrationType:(int64_t)type migrationDate:(id)date forceRebuildReason:(id)reason hardwareModel:(id)model deviceUniqueID:(id)self0 cplEnabled:(BOOL)self1 initialSyncDate:(id)self2
{
  typeCopy = type;
  contextCopy = context;
  versionCopy = version;
  dateCopy = date;
  reasonCopy = reason;
  modelCopy = model;
  dCopy = d;
  syncDateCopy = syncDate;
  if (index < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMigrationHistory.m" lineNumber:136 description:@"index must be greater than or equal to 0"];
  }

  v23 = [(PLManagedObject *)PLMigrationHistory insertInManagedObjectContext:contextCopy, a2];
  [v23 setIndex:index];
  [v23 setModelVersion:{+[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")}];
  currentBuildVersionString = [MEMORY[0x1E69BF1B8] currentBuildVersionString];
  [v23 setOsVersion:currentBuildVersionString];

  v25 = versionCopy;
  [v23 setSourceModelVersion:versionCopy];
  [v23 setMigrationType:typeCopy];
  v26 = dateCopy;
  [v23 setMigrationDate:dateCopy];
  [v23 setForceRebuildReason:reasonCopy];
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];

  metadata = [firstObject metadata];
  v31 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];
  [v23 setStoreUUID:v31];

  v32 = PLPhotoLibraryServicesBinaryImageUUID();
  uUIDString = [v32 UUIDString];
  [v23 setFrameworkUUID:uUIDString];

  v34 = [PLGlobalKeyValue dictionaryWithManagedObjectContext:contextCopy forMigrationHistory:1];
  if ([v34 count])
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  [v23 setGlobalKeyValues:v35];
  [v23 setHardwareModel:modelCopy];
  [v23 setDeviceUniqueID:dCopy];
  [v23 setInitialSyncDate:syncDateCopy];
  [v23 setCplEnabled:enabled];

  return v23;
}

+ (id)insertLightweightWithManagedObjectContext:(id)context index:(int64_t)index sourceModelVersion:(unint64_t)version migrationDate:(id)date hardwareModel:(id)model deviceUniqueID:(id)d cplEnabled:(BOOL)enabled initialSyncDate:(id)self0
{
  v17 = MEMORY[0x1E696AD98];
  syncDateCopy = syncDate;
  dCopy = d;
  modelCopy = model;
  dateCopy = date;
  contextCopy = context;
  v23 = [v17 numberWithUnsignedInteger:version];
  LOBYTE(v26) = enabled;
  v24 = [self insertIntoManagedObjectContext:contextCopy index:index sourceModelVersion:v23 migrationType:2 migrationDate:dateCopy forceRebuildReason:0 hardwareModel:modelCopy deviceUniqueID:dCopy cplEnabled:v26 initialSyncDate:syncDateCopy];

  return v24;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  v5 = [(PLManagedObjectJournalEntryPayload *)[PLMigrationHistoryJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];

  return v5;
}

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [tombstone objectForKeyedSubscript:@"index"];
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