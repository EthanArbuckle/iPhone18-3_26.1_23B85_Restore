@interface PLJournalManagerCore
- (BOOL)appendSnapshotWithJournal:(id)a3 usingManagedObjectContext:(id)a4 changedKeys:(id)a5 entryLimit:(unint64_t)a6 error:(id *)a7;
- (BOOL)createSnapshotWithJournal:(id)a3 createOnlyIfNecessary:(BOOL)a4 usingManagedObjectContext:(id)a5 entryLimit:(unint64_t)a6 error:(id *)a7;
- (BOOL)saveHistoryToken:(id)a3 error:(id *)a4;
- (PLJournalManagerCore)init;
- (PLJournalManagerCore)initWithName:(id)a3 baseURL:(id)a4 payloadClasses:(id)a5;
- (id)_nextValidPayloadWithObjectEnumerator:(id)a3 changedKeys:(id)a4 payloadClass:(Class)a5;
- (id)_objectEnumeratorForJournal:(id)a3 usingManagedObjectContext:(id)a4 error:(id *)a5;
- (id)readHistoryTokenWithError:(id *)a3;
- (void)validatePayloadClassesForManagedObjectModel:(id)a3;
@end

@implementation PLJournalManagerCore

- (id)_objectEnumeratorForJournal:(id)a3 usingManagedObjectContext:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 payloadClass];
  v12 = [v11 relationshipKeyPathsForPrefetching];
  v13 = [objc_msgSend(v9 "payloadClass")];
  if (!v13)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [objc_msgSend(v9 "payloadClass")];
    [v20 handleFailureInMethod:a2 object:self file:@"PLJournalManagerCore.m" lineNumber:218 description:{@"nil entityName for payloadClassID: %@", v21}];
  }

  v14 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v13];
  [v14 setFetchBatchSize:100];
  [v14 setReturnsObjectsAsFaults:0];
  [v14 setRelationshipKeyPathsForPrefetching:v12];
  v15 = [objc_msgSend(v9 "payloadClass")];
  [v14 setSortDescriptors:v15];

  [v14 setShouldRefreshRefetchedObjects:1];
  [v14 setIncludesSubentities:0];
  v16 = [v11 fetchPredicateInContext:v10];
  [v14 setPredicate:v16];

  v17 = [v10 executeFetchRequest:v14 error:a5];

  v18 = [v17 objectEnumerator];

  return v18;
}

- (BOOL)appendSnapshotWithJournal:(id)a3 usingManagedObjectContext:(id)a4 changedKeys:(id)a5 entryLimit:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v32 = 0;
  v15 = [(PLJournalManagerCore *)self _objectEnumeratorForJournal:v12 usingManagedObjectContext:v13 error:&v32];
  v16 = v32;
  v17 = v16;
  if (v15)
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __105__PLJournalManagerCore_appendSnapshotWithJournal_usingManagedObjectContext_changedKeys_entryLimit_error___block_invoke;
    v25[3] = &unk_1E756A138;
    v29 = v31;
    v30 = a6;
    v25[4] = self;
    v26 = v15;
    v27 = v14;
    v28 = v12;
    v24 = v17;
    v18 = [v28 appendSnapshotUsingNextEntryBlock:v25 error:&v24];
    v19 = v24;

    _Block_object_dispose(v31, 8);
    v20 = v19;
    if (v18)
    {
      v21 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v20 = v16;
  }

  if (a7)
  {
    v22 = v20;
    v21 = 0;
    *a7 = v20;
  }

  else
  {
    v21 = 0;
  }

LABEL_8:

  return v21;
}

id __105__PLJournalManagerCore_appendSnapshotWithJournal_usingManagedObjectContext_changedKeys_entryLimit_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 24);
    if (v4 >= v2)
    {
      v9 = 0;
      goto LABEL_12;
    }

    *(v3 + 24) = v4 + 1;
  }

  v5 = [*(a1 + 32) _nextValidPayloadWithObjectEnumerator:*(a1 + 40) changedKeys:*(a1 + 48) payloadClass:{objc_msgSend(*(a1 + 56), "payloadClass")}];
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = [PLJournalEntry alloc];
    if (v6)
    {
      v8 = [(PLJournalEntry *)v7 initForUpdateWithPayload:v5];
    }

    else
    {
      v8 = [(PLJournalEntry *)v7 initForInsertWithPayload:v5];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (BOOL)createSnapshotWithJournal:(id)a3 createOnlyIfNecessary:(BOOL)a4 usingManagedObjectContext:(id)a5 entryLimit:(unint64_t)a6 error:(id *)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v30 = 0;
  v14 = [(PLJournalManagerCore *)self _objectEnumeratorForJournal:v12 usingManagedObjectContext:v13 error:&v30];
  v15 = v30;
  v16 = v15;
  if (v14)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __115__PLJournalManagerCore_createSnapshotWithJournal_createOnlyIfNecessary_usingManagedObjectContext_entryLimit_error___block_invoke;
    v24[3] = &unk_1E756A110;
    v27 = v29;
    v28 = a6;
    v24[4] = self;
    v25 = v14;
    v26 = v12;
    v23 = v16;
    v17 = [v26 createSnapshotUsingNextPayloadBlock:v24 createOnlyIfNecessary:v10 error:&v23];
    v18 = v23;

    _Block_object_dispose(v29, 8);
    v19 = v18;
    if (v17)
    {
      v20 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v19 = v15;
  }

  if (a7)
  {
    v21 = v19;
    v20 = 0;
    *a7 = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_8:

  return v20;
}

id __115__PLJournalManagerCore_createSnapshotWithJournal_createOnlyIfNecessary_usingManagedObjectContext_entryLimit_error___block_invoke(uint64_t a1)
{
  v5 = *(a1 + 64);
  if (!v5)
  {
LABEL_4:
    v8 = [*(a1 + 32) _nextValidPayloadWithObjectEnumerator:*(a1 + 40) changedKeys:0 payloadClass:{objc_msgSend(*(a1 + 48), "payloadClass", v2, v1, v3)}];

    return v8;
  }

  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 24);
  if (v7 < v5)
  {
    *(v6 + 24) = v7 + 1;
    goto LABEL_4;
  }

  v8 = 0;

  return v8;
}

- (id)_nextValidPayloadWithObjectEnumerator:(id)a3 changedKeys:(id)a4 payloadClass:(Class)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 nextObject];
  if (v10)
  {
    *&v11 = 138543618;
    v21 = v11;
    do
    {
      v12 = [(objc_class *)a5 payloadAdapterForManagedObject:v10, v21];
      v13 = [v12 payloadID];
      if (v13)
      {
        v14 = [v12 payloadForChangedKeys:v9];
        if (v14)
        {
          v19 = v14;

          goto LABEL_11;
        }
      }

      else
      {
        v15 = PLMigrationGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          name = self->_name;
          v17 = [v10 objectID];
          *buf = v21;
          v23 = name;
          v24 = 2114;
          v25 = v17;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "JournalManager[%{public}@] Skipping payload for snapshot with nil payloadID for object: %{public}@", buf, 0x16u);
        }
      }

      v18 = [v8 nextObject];

      v10 = v18;
    }

    while (v18);
  }

  v19 = 0;
LABEL_11:

  return v19;
}

- (BOOL)saveHistoryToken:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLJournalManagerCore.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [(NSURL *)self->_baseURL path];
  [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];

  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v16 = @"currentHistoryToken";
  v17[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:0];
  v13 = [PLJournalFile writeData:v12 toURL:self->_historyTokenURL atomically:1 error:a4];

  return v13;
}

- (id)readHistoryTokenWithError:(id *)a3
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = [(PLJournalManagerCore *)self historyTokenURL];
  v6 = [v4 dataWithContentsOfURL:v5 options:1 error:a3];

  if (v6)
  {
    v13 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:&v13 error:a3];
    v8 = [v7 objectForKeyedSubscript:@"currentHistoryToken"];
    if (v8)
    {
      v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:a3];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 copy];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)validatePayloadClassesForManagedObjectModel:(id)a3
{
  v4 = a3;
  payloadClassesByEntityName = self->_payloadClassesByEntityName;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PLJournalManagerCore_validatePayloadClassesForManagedObjectModel___block_invoke;
  v7[3] = &unk_1E75784C8;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)payloadClassesByEntityName enumerateKeysAndObjectsUsingBlock:v7];
}

void __68__PLJournalManagerCore_validatePayloadClassesForManagedObjectModel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PLJournalManagerCore_validatePayloadClassesForManagedObjectModel___block_invoke_2;
  v4[3] = &unk_1E756A0E8;
  v5 = *(a1 + 32);
  [a3 enumerateObjectsUsingBlock:v4];
}

- (PLJournalManagerCore)initWithName:(id)a3 baseURL:(id)a4 payloadClasses:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = PLJournalManagerCore;
  v12 = [(PLJournalManagerCore *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_baseURL, a4);
    v14 = [(NSURL *)v13->_baseURL URLByAppendingPathComponent:@"HistoryToken"];
    v15 = [v14 URLByAppendingPathExtension:@"plist"];
    historyTokenURL = v13->_historyTokenURL;
    v13->_historyTokenURL = v15;

    objc_storeStrong(&v13->_payloadClasses, a5);
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    payloadClassesByPayloadClassID = v13->_payloadClassesByPayloadClassID;
    v13->_payloadClassesByPayloadClassID = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    payloadClassesByEntityName = v13->_payloadClassesByEntityName;
    v13->_payloadClassesByEntityName = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    payloadClassesByAdditionalEntityName = v13->_payloadClassesByAdditionalEntityName;
    v13->_payloadClassesByAdditionalEntityName = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    payloadClassIDs = v13->_payloadClassIDs;
    v13->_payloadClassIDs = v23;

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__PLJournalManagerCore_initWithName_baseURL_payloadClasses___block_invoke;
    v26[3] = &unk_1E756A0C0;
    v27 = v13;
    [v11 enumerateObjectsUsingBlock:v26];
  }

  return v13;
}

void __60__PLJournalManagerCore_initWithName_baseURL_payloadClasses___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 56);
  v5 = [a2 payloadClassID];
  [v4 setObject:a2 forKeyedSubscript:v5];

  v6 = *(*(a1 + 32) + 40);
  v7 = [a2 entityName];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = *(*(a1 + 32) + 40);
    v10 = [a2 entityName];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  [v8 addObject:a2];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [a2 additionalEntityNames];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v16];
        if (!v17)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [*(*(a1 + 32) + 48) setObject:v17 forKeyedSubscript:v16];
        }

        [v17 addObject:a2];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = *(*(a1 + 32) + 32);
  v19 = [a2 payloadClassID];
  [v18 addObject:v19];
}

- (PLJournalManagerCore)init
{
  v2 = _PFAssertFailHandler();
  [(PLFeatureProcessingSnapshot *)v2 .cxx_destruct];
  return result;
}

@end