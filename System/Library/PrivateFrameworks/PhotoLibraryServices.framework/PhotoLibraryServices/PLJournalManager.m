@interface PLJournalManager
+ (id)journalManagerWithClass:(Class)a3 libraryServiceManager:(id)a4;
- (BOOL)_enumerateJournalEntriesFromHistoryToken:(id)a3 latestHistoryToken:(id *)a4 withManagedObjectContext:(id)a5 journalEntryBlock:(id)a6 shouldStopBlock:(id)a7 error:(id *)a8;
- (BOOL)_needsFullSnapshot;
- (BOOL)_needsPartialSnapshot:(id)a3;
- (BOOL)coalesceJournalsForPayloadClassIDs:(id)a3 withChangeJournalOverThreshold:(float)a4 error:(id *)a5;
- (BOOL)needsSnapshot;
- (BOOL)performFullSnapshotAppend:(BOOL)a3 createOnlyIfNecessary:(BOOL)a4 withManagedObjectContext:(id)a5 entryLimitBlock:(id)a6 error:(id *)a7;
- (BOOL)performPartialSnapshotForPayloadClassIDs:(id)a3 append:(BOOL)a4 createOnlyIfNecessary:(BOOL)a5 withManagedObjectContext:(id)a6 error:(id *)a7;
- (BOOL)performSnapshotIfNecessaryAppend:(BOOL)a3 withManagedObjectContext:(id)a4 error:(id *)a5;
- (BOOL)replayFromCurrentHistoryTokenWithManagedObjectContext:(id)a3 updatedPayloadClassIDs:(id)a4 error:(id *)a5;
- (id)_existingObjectWithID:(id)a3 managedObjectContext:(id)a4;
- (id)currentHistoryToken;
- (void)_loadHistoryTokenIfNecessary;
- (void)clearHistoryToken;
@end

@implementation PLJournalManager

+ (id)journalManagerWithClass:(Class)a3 libraryServiceManager:(id)a4
{
  v6 = [a4 pathManager];
  v7 = [(objc_class *)a3 baseURLFromPathManager:v6];

  v8 = [a1 alloc];
  v9 = [(objc_class *)a3 name];
  v10 = [(objc_class *)a3 payloadClasses];
  v11 = [v8 initWithName:v9 baseURL:v7 payloadClasses:v10];

  return v11;
}

- (BOOL)replayFromCurrentHistoryTokenWithManagedObjectContext:(id)a3 updatedPayloadClassIDs:(id)a4 error:(id *)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v10 = atomic_load(&self->_ignoreHistoryDuringSnapshot);
  v66 = v10 & 1;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 1;
  if (v64[3])
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(PLJournalManagerCore *)self name];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "JournalManager[%{public}@]: Skipping replay from current history due to ignoreHistoryDuringSnapshot token", &buf, 0xCu);
    }

    v13 = 0;
    *(v60 + 24) = 0;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__13012;
    v74 = __Block_byref_object_dispose__13013;
    v75 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 1;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__13012;
    v53 = __Block_byref_object_dispose__13013;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__13012;
    v47 = __Block_byref_object_dispose__13013;
    v48 = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __103__PLJournalManager_replayFromCurrentHistoryTokenWithManagedObjectContext_updatedPayloadClassIDs_error___block_invoke;
    v34[3] = &unk_1E7567418;
    v37 = &v59;
    p_buf = &buf;
    v34[4] = self;
    v35 = v8;
    v15 = v14;
    v36 = v15;
    v39 = &v55;
    v40 = &v49;
    v41 = &v63;
    v42 = &v43;
    [v35 performBlockAndWait:v34];
    if (v60[3])
    {
      if (v56[3])
      {
        if (*(*(&buf + 1) + 40))
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __103__PLJournalManager_replayFromCurrentHistoryTokenWithManagedObjectContext_updatedPayloadClassIDs_error___block_invoke_44;
          v32[3] = &unk_1E7567440;
          v32[4] = self;
          v33 = v9;
          [v15 enumerateKeysAndObjectsUsingBlock:v32];
          v16 = [*(*(&buf + 1) + 40) copy];
          currentHistoryToken = self->_currentHistoryToken;
          self->_currentHistoryToken = v16;

          v18 = *(*(&buf + 1) + 40);
          v19 = (v44 + 5);
          obj = v44[5];
          v20 = [(PLJournalManagerCore *)self saveHistoryToken:v18 error:&obj];
          objc_storeStrong(v19, obj);
          if (!v20)
          {
            v21 = PLMigrationGetLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = [(PLJournalManagerCore *)self name];
              v23 = v44[5];
              *v67 = 138543618;
              v68 = v22;
              v69 = 2112;
              v70 = v23;
              _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: history token property list could not be written after appending entries: %@", v67, 0x16u);
            }

            if (a5)
            {
              *a5 = v44[5];
            }

            *(v60 + 24) = 0;
          }
        }
      }

      else
      {
        v27 = PLMigrationGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [(PLJournalManagerCore *)self name];
          v29 = v50[5];
          *v67 = 138543618;
          v68 = v28;
          v69 = 2112;
          v70 = v29;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: Error writing to journals: %@", v67, 0x16u);
        }

        if (a5)
        {
          *a5 = v50[5];
        }

        *(v60 + 24) = 0;
      }
    }

    else
    {
      v24 = PLMigrationGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [(PLJournalManagerCore *)self name];
        v26 = v44[5];
        *v67 = 138543618;
        v68 = v25;
        v69 = 2112;
        v70 = v26;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: Error enumerating history: %@", v67, 0x16u);
      }

      if (a5)
      {
        *a5 = v44[5];
      }
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&buf, 8);

    v13 = *(v60 + 24);
  }

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

  return v13 & 1;
}

void __103__PLJournalManager_replayFromCurrentHistoryTokenWithManagedObjectContext_updatedPayloadClassIDs_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentHistoryToken];
  v4 = *(*(a1 + 64) + 8);
  v17 = *(v4 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__PLJournalManager_replayFromCurrentHistoryTokenWithManagedObjectContext_updatedPayloadClassIDs_error___block_invoke_2;
  v13[3] = &unk_1E75673F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v14 = v6;
  v15 = v7;
  v16 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__PLJournalManager_replayFromCurrentHistoryTokenWithManagedObjectContext_updatedPayloadClassIDs_error___block_invoke_3;
  v12[3] = &unk_1E7573340;
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v12[4] = v7;
  v12[5] = v8;
  v10 = *(v9 + 8);
  obj = *(v10 + 40);
  LOBYTE(v2) = [v2 _enumerateJournalEntriesFromHistoryToken:v3 latestHistoryToken:&v17 withManagedObjectContext:v5 journalEntryBlock:v13 shouldStopBlock:v12 error:&obj];
  objc_storeStrong((v4 + 40), v17);
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v2;
}

void __103__PLJournalManager_replayFromCurrentHistoryTokenWithManagedObjectContext_updatedPayloadClassIDs_error___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v10 = 0;
  v6 = [a3 finishAppendChangeEntriesWithError:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) name];
      *buf = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: error finishing append changes to payload: %{public}@, %@", buf, 0x20u);
    }
  }

  [*(a1 + 40) addObject:v5];
}

void __103__PLJournalManager_replayFromCurrentHistoryTokenWithManagedObjectContext_updatedPayloadClassIDs_error___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [objc_msgSend(v5 "payloadClass")];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v8 = [PLJournal alloc];
    v9 = [*(a1 + 40) baseURL];
    v7 = -[PLJournal initWithBaseURL:payloadClass:](v8, "initWithBaseURL:payloadClass:", v9, [v5 payloadClass]);

    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    v11 = [(PLJournal *)v7 prepareForAppendChangeEntriesWithError:&obj];
    objc_storeStrong((v10 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v11;
  }

  if (*(*(*(a1 + 48) + 8) + 24) != 1 || ([*(a1 + 32) setObject:v7 forKeyedSubscript:v6], v12 = *(*(a1 + 56) + 8), v14 = *(v12 + 40), v13 = -[PLJournal appendChangeEntryAfterPrepare:error:](v7, "appendChangeEntryAfterPrepare:error:", v5, &v14), objc_storeStrong((v12 + 40), v14), *(*(*(a1 + 48) + 8) + 24) = v13, (*(*(*(a1 + 48) + 8) + 24) & 1) == 0))
  {
    *a3 = 1;
  }
}

uint64_t __103__PLJournalManager_replayFromCurrentHistoryTokenWithManagedObjectContext_updatedPayloadClassIDs_error___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(a1 + 32) + 80));
  *(*(*(a1 + 40) + 8) + 24) = v1 & 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = PLMigrationGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) name];
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: Snapshot requested, stopping processing of change history", &v7, 0xCu);
    }

    v5 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)_enumerateJournalEntriesFromHistoryToken:(id)a3 latestHistoryToken:(id *)a4 withManagedObjectContext:(id)a5 journalEntryBlock:(id)a6 shouldStopBlock:(id)a7 error:(id *)a8
{
  v51[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v45 = 0;
  v18 = [PLPersistentHistoryTransactionIterator iteratorSinceToken:v14 withManagedObjectObjectContext:v15 error:&v45];
  v19 = v45;
  v20 = v19;
  if (v18)
  {
    v21 = v19;
LABEL_3:
    v22 = objc_alloc_init(PLPersistentHistoryTransactionModifiers);
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __145__PLJournalManager__enumerateJournalEntriesFromHistoryToken_latestHistoryToken_withManagedObjectContext_journalEntryBlock_shouldStopBlock_error___block_invoke;
    v33 = &unk_1E75673C8;
    v23 = v22;
    v34 = v23;
    v39 = &v40;
    v37 = v17;
    v35 = self;
    v36 = v15;
    v38 = v16;
    [v18 enumerateRemainingTransactionsWithBlock:&v30];
    if (a4 && (v41[3] & 1) == 0)
    {
      *a4 = [v18 lastIteratedToken];
    }

    _Block_object_dispose(&v40, 8);
    v24 = 1;
    goto LABEL_7;
  }

  if ([v19 code] == 134501)
  {
    v44 = v20;
    v18 = [PLPersistentHistoryTransactionIterator iteratorSinceToken:0 withManagedObjectObjectContext:v15 error:&v44];
    v21 = v44;

    if (!v18)
    {
      if (!a8)
      {
        v24 = 0;
        goto LABEL_8;
      }

      v26 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696AA08];
      v51[0] = v21;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
      [v26 errorWithDomain:*MEMORY[0x1E69BFF48] code:51011 userInfo:v18];
      *a8 = v24 = 0;
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  if ([v20 code] != 134301)
  {
    if (a8)
    {
      v29 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696AA08];
      v47 = v20;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v28 = [v29 errorWithDomain:*MEMORY[0x1E69BFF48] code:51010 userInfo:v18];
      goto LABEL_18;
    }

LABEL_19:
    v24 = 0;
    v21 = v20;
    goto LABEL_8;
  }

  if (!a8)
  {
    goto LABEL_19;
  }

  v27 = MEMORY[0x1E696ABC0];
  v48 = *MEMORY[0x1E696AA08];
  v49 = v20;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v28 = [v27 errorWithDomain:*MEMORY[0x1E69BFF48] code:51009 userInfo:v18];
LABEL_18:
  v24 = 0;
  *a8 = v28;
  v21 = v20;
LABEL_7:

LABEL_8:
  return v24;
}

void __145__PLJournalManager__enumerateJournalEntriesFromHistoryToken_latestHistoryToken_withManagedObjectContext_journalEntryBlock_shouldStopBlock_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [v4 author];
  [v5 updateFromTransactionAuthor:v6];

  v64 = a1;
  if ([*(a1 + 32) changeSource] != 2)
  {
    [v4 changes];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = v84 = 0u;
    v59 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (!v59)
    {
      goto LABEL_74;
    }

    v58 = *v82;
    v57 = v4;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v82 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v69 = *(*(&v81 + 1) + 8 * v7);
      v8 = objc_autoreleasePoolPush();
      v9 = v64[7];
      if (v9)
      {
        *(*(v64[9] + 8) + 24) = (*(v9 + 16))();
        if (*(*(v64[9] + 8) + 24) == 1)
        {
          break;
        }
      }

      v60 = v7;
      context = v8;
      v10 = [v69 changedObjectID];
      v11 = v64[5];
      v12 = [v10 entity];
      v13 = [v12 name];
      v14 = [v11 payloadClassesForEntityName:v13];

      v15 = v64;
      if (!v14)
      {
        if ([v69 changeType] == 1)
        {
          v16 = v64[5];
          v17 = [v10 entity];
          v18 = [v17 name];
          v14 = [v16 payloadClassesForAdditionalEntityName:v18];
        }

        else
        {
          v14 = 0;
        }
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v19 = v14;
      v68 = [v19 countByEnumeratingWithState:&v77 objects:v90 count:16];
      if (v68)
      {
        v66 = v10;
        v67 = *v78;
        v65 = v19;
        do
        {
          v20 = 0;
          do
          {
            if (*v78 != v67)
            {
              objc_enumerationMutation(v65);
            }

            v21 = *(*(&v77 + 1) + 8 * v20);
            v22 = [v69 updatedProperties];
            v23 = [v22 valueForKey:@"name"];
            v24 = [v69 changeType];
            if (v24 == 2)
            {
              v36 = [v15[6] objectWithID:v10];
              v37 = [v21 payloadAdapterForManagedObject:v36];
              v43 = [v69 tombstone];
              v39 = [v37 payloadIDForTombstone:v43];

              if (!v39)
              {
                goto LABEL_44;
              }

              v42 = [[PLJournalEntry alloc] initForDeleteWithPayloadID:v39 payloadClass:v21];
LABEL_45:
              v28 = 0;
              goto LABEL_46;
            }

            if (v24 != 1)
            {
              if (v24)
              {
                goto LABEL_30;
              }

              v25 = [v15[5] _existingObjectWithID:v10 managedObjectContext:v15[6]];
              v26 = [v21 payloadAdapterForManagedObject:v25];
              v27 = [v26 payloadID];
              if (v27)
              {
                v28 = [v26 payloadForChangedKeys:0];
                if (v28)
                {
                  v29 = [[PLJournalEntry alloc] initForInsertWithPayload:v28];
                  (*(v15[8] + 16))();
                  if ((*(*(v15[9] + 8) + 24) & 1) == 0)
                  {
                    v30 = [v26 payloadIDsByPayloadClassIDToDeleteOnInsert];
                    v74[0] = MEMORY[0x1E69E9820];
                    v74[1] = 3221225472;
                    v74[2] = __145__PLJournalManager__enumerateJournalEntriesFromHistoryToken_latestHistoryToken_withManagedObjectContext_journalEntryBlock_shouldStopBlock_error___block_invoke_2;
                    v74[3] = &unk_1E75673A0;
                    v74[4] = v15[5];
                    v31 = v15[8];
                    v32 = v15[9];
                    v75 = v31;
                    v76 = v32;
                    [v30 enumerateKeysAndObjectsUsingBlock:v74];
                  }

                  goto LABEL_37;
                }
              }

              else if (v25)
              {
                v29 = PLMigrationGetLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v44 = [v15[5] name];
                  *buf = 138543618;
                  v87 = v44;
                  v88 = 2114;
                  v89 = v66;
                  _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: Skipping payload for insert with nil payloadID for existing object: %{public}@", buf, 0x16u);
                }

                v28 = 0;
LABEL_37:
              }

              else
              {
                v28 = 0;
              }

              v42 = 0;
LABEL_49:
              v10 = v66;
              goto LABEL_50;
            }

            v33 = [v10 entity];
            v34 = [v33 name];
            v35 = [v21 shouldPersistForChangedKeys:v23 entityName:v34];

            if (!v35)
            {
LABEL_30:
              v28 = 0;
              v42 = 0;
              goto LABEL_50;
            }

            v36 = [v15[5] _existingObjectWithID:v10 managedObjectContext:v15[6]];
            v37 = [v21 payloadAdapterForManagedObject:v36];
            v38 = [v37 payloadID];
            if (!v38)
            {
              if (v36)
              {
                v45 = PLMigrationGetLog();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  v46 = [v15[5] name];
                  *buf = 138543618;
                  v87 = v46;
                  v88 = 2114;
                  v89 = v66;
                  _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: Skipping payload for insert with nil payloadID for existing object: %{public}@", buf, 0x16u);
                }
              }

              v39 = 0;
LABEL_44:
              v42 = 0;
              goto LABEL_45;
            }

            v39 = v38;
            if ([v37 validForPersistenceChangedForChangedKeys:v23])
            {
              v28 = [v37 payloadForChangedKeys:0];
              v40 = [PLJournalEntry alloc];
              if (v28)
              {
                v41 = [(PLJournalEntry *)v40 initForInsertWithPayload:v28];
              }

              else
              {
                v41 = [(PLJournalEntry *)v40 initForDeleteWithPayloadID:v39 payloadClass:v21];
              }

              goto LABEL_56;
            }

            v47 = [v37 payloadForChangedKeys:v23];
            if (v47)
            {
              v28 = v47;
              v41 = [[PLJournalEntry alloc] initForUpdateWithPayload:v47];
LABEL_56:
              v42 = v41;
              goto LABEL_46;
            }

            v48 = [v37 payloadsForChangedKeys:v23];
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v62 = v48;
            v49 = [v62 countByEnumeratingWithState:&v70 objects:v85 count:16];
            if (v49)
            {
              v50 = v49;
              v63 = *v71;
LABEL_59:
              v51 = 0;
              while (1)
              {
                if (*v71 != v63)
                {
                  objc_enumerationMutation(v62);
                }

                v52 = [[PLJournalEntry alloc] initForUpdateWithPayload:*(*(&v70 + 1) + 8 * v51)];
                (*(v64[8] + 16))();
                v53 = *(*(v64[9] + 8) + 24);

                if (v53)
                {
                  break;
                }

                if (v50 == ++v51)
                {
                  v50 = [v62 countByEnumeratingWithState:&v70 objects:v85 count:16];
                  if (v50)
                  {
                    goto LABEL_59;
                  }

                  break;
                }
              }
            }

            v42 = 0;
            v28 = 0;
            v15 = v64;
LABEL_46:

            if (!v42)
            {
              goto LABEL_49;
            }

            (*(v15[8] + 16))();
            v10 = v66;
            if (*(*(v15[9] + 8) + 24))
            {

              v19 = v65;
              goto LABEL_67;
            }

LABEL_50:

            ++v20;
          }

          while (v20 != v68);
          v19 = v65;
          v54 = [v65 countByEnumeratingWithState:&v77 objects:v90 count:16];
          v68 = v54;
        }

        while (v54);
      }

LABEL_67:

      if (*(*(v15[9] + 8) + 24) == 1)
      {
        *a3 = 1;

        v4 = v57;
        v8 = context;
        goto LABEL_73;
      }

      objc_autoreleasePoolPop(context);
      v7 = v60 + 1;
      v4 = v57;
      if (v60 + 1 == v59)
      {
        v59 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
        if (!v59)
        {
          goto LABEL_74;
        }

        goto LABEL_4;
      }
    }

    *a3 = 1;
LABEL_73:
    objc_autoreleasePoolPop(v8);
LABEL_74:
  }
}

void __145__PLJournalManager__enumerateJournalEntriesFromHistoryToken_latestHistoryToken_withManagedObjectContext_journalEntryBlock_shouldStopBlock_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [*(a1 + 32) payloadClassForPayloadClassID:{v7, v16}];
        if (v14)
        {
          v15 = [[PLJournalEntry alloc] initForDeleteWithPayloadID:v13 payloadClass:v14];
          (*(*(a1 + 40) + 16))();
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            *a4 = 1;

            goto LABEL_13;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (id)_existingObjectWithID:(id)a3 managedObjectContext:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0;
  v7 = [a4 existingObjectWithID:v6 error:&v12];
  v8 = v12;
  if (!v7 && (PLIsErrorEqualToCode() & 1) == 0)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(PLJournalManagerCore *)self name];
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: failed to fetch object with ID %{public}@: %@", buf, 0x20u);
    }
  }

  return v7;
}

- (BOOL)coalesceJournalsForPayloadClassIDs:(id)a3 withChangeJournalOverThreshold:(float)a4 error:(id *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(PLJournalManagerCore *)self baseURL];
  v10 = [(PLJournalManagerCore *)self payloadClasses];
  v45 = 0;
  v11 = [PLJournal recoverJournalsIfNecessaryForBaseURL:v9 payloadClasses:v10 error:&v45];
  v12 = v45;

  if (v11)
  {
    if (![v8 count])
    {
      v13 = [(PLJournalManagerCore *)self payloadClassIDs];

      v8 = v13;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v8;
    v14 = [v8 countByEnumeratingWithState:&v41 objects:v58 count:16];
    if (v14)
    {
      v15 = v14;
      v35 = a5;
      v16 = *v42;
      obj = v8;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [(PLJournalManagerCore *)self payloadClassForPayloadClassID:v18];
          if (v20)
          {
            v21 = v20;
            v22 = [PLJournal alloc];
            v23 = [(PLJournalManagerCore *)self baseURL];
            v24 = [(PLJournal *)v22 initWithBaseURL:v23 payloadClass:v21];

            v39 = 0;
            v40 = 0;
            v38 = v12;
            LODWORD(v23) = [(PLJournal *)v24 snapshotJournalFileSize:&v40 changeJournalFileSize:&v39 error:&v38];
            v25 = v38;

            if (!v23)
            {
              v30 = PLMigrationGetLog();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = [(PLJournalManagerCore *)self name];
                *buf = 138543874;
                v47 = v31;
                v48 = 2114;
                v49 = v18;
                v50 = 2112;
                v51 = v25;
                _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: could not determine journal file sizes for coalesce for payloadID %{public}@: %@", buf, 0x20u);
              }

              v12 = v25;
              goto LABEL_24;
            }

            if (a4 >= 0.0 && v39 > (v40 * a4))
            {
              v26 = PLMigrationGetLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [(PLJournalManagerCore *)self name];
                *buf = 138544642;
                v47 = v27;
                v48 = 2114;
                v49 = v18;
                v50 = 2048;
                v51 = v39;
                v52 = 2048;
                v53 = (v40 * a4);
                v54 = 2048;
                v55 = v40;
                v56 = 2048;
                v57 = a4;
                _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: coalescing journal %{public}@, change journal size %llu greater than %llu for snapshot size %llu with threshold: %f", buf, 0x3Eu);
              }

              v37 = v25;
              v28 = [(PLJournal *)v24 coalesceChangesToSnapshotWithError:&v37];
              v12 = v37;

              if (!v28)
              {
                v30 = PLMigrationGetLog();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v34 = [(PLJournalManagerCore *)self name];
                  *buf = 138543874;
                  v47 = v34;
                  v48 = 2114;
                  v49 = v18;
                  v50 = 2112;
                  v51 = v12;
                  _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: could not coalesce journal for payloadID %{public}@: %@", buf, 0x20u);
                }

LABEL_24:
                v8 = obj;
                a5 = v35;

                objc_autoreleasePoolPop(v19);
                goto LABEL_25;
              }

              v25 = v12;
            }

            v12 = v25;
          }

          objc_autoreleasePoolPop(v19);
        }

        v8 = obj;
        v15 = [obj countByEnumeratingWithState:&v41 objects:v58 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_25:
    if (a5)
    {
      v32 = v12;
      v29 = 0;
      *a5 = v12;
    }

    else
    {
      v29 = 0;
    }
  }

  return v29;
}

- (BOOL)performPartialSnapshotForPayloadClassIDs:(id)a3 append:(BOOL)a4 createOnlyIfNecessary:(BOOL)a5 withManagedObjectContext:(id)a6 error:(id *)a7
{
  v46 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__13012;
  v40 = __Block_byref_object_dispose__13013;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v14 = [(PLJournalManagerCore *)self baseURL];
  v15 = [(PLJournalManagerCore *)self payloadClasses];
  v16 = (v37 + 5);
  obj = v37[5];
  v17 = [PLJournal recoverJournalsIfNecessaryForBaseURL:v14 payloadClasses:v15 error:&obj];
  objc_storeStrong(v16, obj);

  v35 = v17;
  v18 = v33;
  if (*(v33 + 24) != 1)
  {
    goto LABEL_6;
  }

  v19 = PLMigrationGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(PLJournalManagerCore *)self name];
    *buf = 138543618;
    v43 = v20;
    v44 = 2114;
    v45 = v12;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: performing partial snapshot for payloadClassIDs: %{public}@", buf, 0x16u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __121__PLJournalManager_performPartialSnapshotForPayloadClassIDs_append_createOnlyIfNecessary_withManagedObjectContext_error___block_invoke;
  v23[3] = &unk_1E7567378;
  v24 = v13;
  v25 = v12;
  v26 = self;
  v29 = a4;
  v27 = &v32;
  v28 = &v36;
  v30 = a5;
  [v24 performBlockAndWait:v23];

  v18 = v33;
  if (v33[3])
  {
    v21 = 1;
  }

  else
  {
LABEL_6:
    if (a7)
    {
      *a7 = v37[5];
      v18 = v33;
    }

    v21 = *(v18 + 24);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  return v21 & 1;
}

void __121__PLJournalManager_performPartialSnapshotForPayloadClassIDs_append_createOnlyIfNecessary_withManagedObjectContext_error___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695D6E0] currentQueryGenerationToken];
  [v2 setQueryGenerationFromToken:v3 error:0];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(a1 + 48) payloadClassForPayloadClassID:v9];
        if (v11)
        {
          v12 = v11;
          v13 = [PLJournal alloc];
          v14 = [*(a1 + 48) baseURL];
          v15 = [(PLJournal *)v13 initWithBaseURL:v14 payloadClass:v12];

          v16 = *(a1 + 48);
          if (*(a1 + 72) == 1)
          {
            v17 = *(a1 + 32);
            v18 = *(*(a1 + 64) + 8);
            v20 = *(v18 + 40);
            v19 = (v18 + 40);
            v36 = v20;
            v21 = [v16 appendSnapshotWithJournal:v15 usingManagedObjectContext:v17 changedKeys:0 entryLimit:0 error:&v36];
            v22 = v36;
          }

          else
          {
            v23 = *(a1 + 73);
            v24 = *(a1 + 32);
            v25 = *(*(a1 + 64) + 8);
            v26 = *(v25 + 40);
            v19 = (v25 + 40);
            v35 = v26;
            v21 = [v16 createSnapshotWithJournal:v15 createOnlyIfNecessary:v23 usingManagedObjectContext:v24 entryLimit:0 error:&v35];
            v22 = v35;
          }

          v27 = v22;
          v28 = *v19;
          *v19 = v27;

          *(*(*(a1 + 56) + 8) + 24) = v21;
          if (*(*(*(a1 + 56) + 8) + 24) != 1)
          {
            v29 = PLMigrationGetLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = [*(a1 + 48) name];
              v31 = *(*(*(a1 + 64) + 8) + 40);
              *buf = 138543874;
              v42 = v30;
              v43 = 2114;
              v44 = v9;
              v45 = 2112;
              v46 = v31;
              _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: could not create partial snapshot of payloadID %{public}@: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v10);
            goto LABEL_18;
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  [*(a1 + 32) setQueryGenerationFromToken:0 error:0];
  v32 = PLMigrationGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [*(a1 + 48) name];
    v34 = *(a1 + 40);
    *buf = 138543618;
    v42 = v33;
    v43 = 2112;
    v44 = v34;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: finished partial snapshot for payloadClassIDs: %@{public}", buf, 0x16u);
  }
}

- (BOOL)performFullSnapshotAppend:(BOOL)a3 createOnlyIfNecessary:(BOOL)a4 withManagedObjectContext:(id)a5 entryLimitBlock:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__13012;
  v28 = __Block_byref_object_dispose__13013;
  v29 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __115__PLJournalManager_performFullSnapshotAppend_createOnlyIfNecessary_withManagedObjectContext_entryLimitBlock_error___block_invoke;
  v17[3] = &unk_1E7567350;
  v17[4] = self;
  v14 = v12;
  v22 = a3;
  v18 = v14;
  v20 = &v30;
  v15 = v13;
  v19 = v15;
  v21 = &v24;
  v23 = a4;
  [v14 performBlockAndWait:v17];
  if (v31[3])
  {
    LOBYTE(a7) = 1;
  }

  else if (a7)
  {
    *a7 = v25[5];
    LOBYTE(a7) = *(v31 + 24);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return a7 & 1;
}

void __115__PLJournalManager_performFullSnapshotAppend_createOnlyIfNecessary_withManagedObjectContext_entryLimitBlock_error___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    *buf = 138543362;
    v57 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: performing full snapshot", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [MEMORY[0x1E695D6E0] currentQueryGenerationToken];
  [v4 setQueryGenerationFromToken:v5 error:0];

  v6 = [*(a1 + 40) persistentStoreCoordinator];
  v7 = [v6 currentPersistentHistoryTokenFromStores:0];

  v8 = *(a1 + 72);
  v9 = [*(a1 + 32) baseURL];
  v10 = [*(a1 + 32) payloadClasses];
  if (v8 == 1)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __115__PLJournalManager_performFullSnapshotAppend_createOnlyIfNecessary_withManagedObjectContext_entryLimitBlock_error___block_invoke_28;
    v53[3] = &unk_1E7567300;
    v11 = v55;
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v55[0] = v12;
    v53[4] = v13;
    v15 = &v54;
    v16 = v14;
    v17 = *(a1 + 64);
    v54 = v16;
    v55[1] = v17;
    v18 = *(v17 + 8);
    v20 = *(v18 + 40);
    v19 = (v18 + 40);
    v52 = v20;
    v21 = [PLJournal appendSnapshotsForBaseURL:v9 payloadClasses:v10 snapshotJournalBlock:v53 error:&v52];
    v22 = v52;
  }

  else
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __115__PLJournalManager_performFullSnapshotAppend_createOnlyIfNecessary_withManagedObjectContext_entryLimitBlock_error___block_invoke_2;
    v48[3] = &unk_1E7567328;
    v11 = v50;
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v50[0] = v23;
    v48[4] = v24;
    v51 = *(a1 + 73);
    v15 = &v49;
    v26 = v25;
    v27 = *(a1 + 64);
    v49 = v26;
    v50[1] = v27;
    v28 = *(a1 + 73);
    v29 = *(v27 + 8);
    v30 = *(v29 + 40);
    v19 = (v29 + 40);
    v47 = v30;
    v21 = [PLJournal createSnapshotsForBaseURL:v9 payloadClasses:v10 snapshotJournalBlock:v48 createOnlyIfNecessary:v28 error:&v47];
    v22 = v47;
  }

  v31 = v22;
  v32 = *v19;
  *v19 = v31;

  *(*(*(a1 + 56) + 8) + 24) = v21;
  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v39 = PLMigrationGetLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [*(a1 + 32) name];
      v43 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v57 = v40;
      v58 = 2112;
      v59 = v43;
      v42 = "JournalManager[%{public}@]: could not create full snapshot: %@";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v33 = [v7 copy];
  v34 = *(a1 + 32);
  v35 = *(v34 + 72);
  *(v34 + 72) = v33;

  if (v7)
  {
    v36 = *(a1 + 32);
    v37 = *(*(a1 + 64) + 8);
    obj = *(v37 + 40);
    v38 = [v36 saveHistoryToken:v7 error:&obj];
    objc_storeStrong((v37 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v38;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v39 = PLMigrationGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = [*(a1 + 32) name];
        v41 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138543618;
        v57 = v40;
        v58 = 2112;
        v59 = v41;
        v42 = "JournalManager[%{public}@]: history token property list could not be written after snapshot: %@";
LABEL_13:
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, v42, buf, 0x16u);

        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  [*(a1 + 40) setQueryGenerationFromToken:0 error:0];
  v44 = PLMigrationGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = [*(a1 + 32) name];
    *buf = 138543362;
    v57 = v45;
    _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "JournalManager[%{public}@]: finished full snapshot", buf, 0xCu);
  }
}

uint64_t __115__PLJournalManager_performFullSnapshotAppend_createOnlyIfNecessary_withManagedObjectContext_entryLimitBlock_error___block_invoke_28(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  if (v4)
  {
    v5 = (*(v4 + 16))(v4, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  v9 = [v6 appendSnapshotWithJournal:v3 usingManagedObjectContext:v7 changedKeys:0 entryLimit:v5 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  return v9;
}

uint64_t __115__PLJournalManager_performFullSnapshotAppend_createOnlyIfNecessary_withManagedObjectContext_entryLimitBlock_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = (*(v4 + 16))(v4, v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [v7 createSnapshotWithJournal:v3 createOnlyIfNecessary:v6 usingManagedObjectContext:v8 entryLimit:v5 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  return v10;
}

- (BOOL)performSnapshotIfNecessaryAppend:(BOOL)a3 withManagedObjectContext:(id)a4 error:(id *)a5
{
  v6 = a3;
  v8 = a4;
  if ([(PLJournalManager *)self _needsFullSnapshot])
  {
    v9 = [(PLJournalManager *)self performFullSnapshotAppend:v6 createOnlyIfNecessary:0 withManagedObjectContext:v8 error:a5];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([(PLJournalManager *)self _needsPartialSnapshot:v10])
    {
      v9 = [(PLJournalManager *)self performPartialSnapshotForPayloadClassIDs:v10 append:v6 createOnlyIfNecessary:0 withManagedObjectContext:v8 error:a5];
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)_needsPartialSnapshot:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(PLJournalManagerCore *)self payloadClasses];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PLJournalManager__needsPartialSnapshot___block_invoke;
  v8[3] = &unk_1E756FE60;
  v8[4] = self;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __42__PLJournalManager__needsPartialSnapshot___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [PLJournal alloc];
  v8 = [*(a1 + 32) baseURL];
  v14 = [(PLJournal *)v7 initWithBaseURL:v8 payloadClass:a2];

  v9 = [(PLJournal *)v14 metadata];
  v10 = [v9 objectForKeyedSubscript:@"snapshotPayloadVersion"];
  v11 = [v10 unsignedIntValue];

  if (v11 < [a2 minimumSnapshotPayloadVersion])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = [a2 payloadClassID];
      [v12 addObject:v13];
    }

    else
    {
      *a4 = 1;
    }
  }
}

- (BOOL)_needsFullSnapshot
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(PLJournalManagerCore *)self payloadClasses];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PLJournalManager__needsFullSnapshot__block_invoke;
  v7[3] = &unk_1E756D320;
  v7[4] = self;
  v7[5] = &v8;
  [v3 enumerateObjectsUsingBlock:v7];

  v4 = [(PLJournalManager *)self currentHistoryToken];
  if (v4)
  {
    v5 = *(v9 + 24) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

void __38__PLJournalManager__needsFullSnapshot__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [PLJournal alloc];
  v8 = [*(a1 + 32) baseURL];
  v10 = [(PLJournal *)v7 initWithBaseURL:v8 payloadClass:a2];

  v9 = [(PLJournal *)v10 metadata];
  *(*(*(a1 + 40) + 8) + 24) = v9 != 0;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (BOOL)needsSnapshot
{
  v3 = [(PLJournalManager *)self currentHistoryToken];
  if (v3)
  {
    v4 = [(PLJournalManager *)self _needsPartialSnapshot:0];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)clearHistoryToken
{
  currentHistoryToken = self->_currentHistoryToken;
  self->_currentHistoryToken = 0;

  [(PLJournalManagerCore *)self removeHistoryToken];
}

- (id)currentHistoryToken
{
  [(PLJournalManager *)self _loadHistoryTokenIfNecessary];
  currentHistoryToken = self->_currentHistoryToken;

  return currentHistoryToken;
}

- (void)_loadHistoryTokenIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_currentHistoryToken)
  {
    v8 = 0;
    v3 = [(PLJournalManagerCore *)self readHistoryTokenWithError:&v8];
    v4 = v8;
    currentHistoryToken = self->_currentHistoryToken;
    self->_currentHistoryToken = v3;

    if (!self->_currentHistoryToken && (PLIsErrorFileNotFound() & 1) == 0)
    {
      v6 = PLMigrationGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [(PLJournalManagerCore *)self name];
        *buf = 138543618;
        v10 = v7;
        v11 = 2112;
        v12 = v4;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@]: could not read history token: %@", buf, 0x16u);
      }
    }
  }
}

@end