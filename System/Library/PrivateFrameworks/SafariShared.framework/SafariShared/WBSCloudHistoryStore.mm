@interface WBSCloudHistoryStore
- (BOOL)_shouldTryToResetRecordZoneForError:(id)a3;
- (WBSCloudHistoryStore)initWithConfiguration:(id)a3 useManateeContainer:(BOOL)a4;
- (id)_prepareRecordZoneWithoutCachingWithError:(id *)a3;
- (id)_recordDataForDictionary:(id)a3;
- (id)_recordWithCloudHistoryVisits:(id)a3 profileServerIdentifier:(id)a4;
- (id)_recordWithHistoryTombstones:(id)a3 version:(unint64_t)a4;
- (id)_recordWithType:(id)a3 version:(unint64_t)a4 dataDictionary:(id)a5;
- (id)_recordsWithCloudHistoryVisits:(id)a3;
- (void)_batchSaveRecords:(id)a3 useLongLivedOperation:(BOOL)a4 longLivedOperationPersistenceCompletion:(id)a5 completion:(id)a6;
- (void)_configureFetchChangesOperation:(id)a3;
- (void)_fetchAllRecordsWithQueryOperation:(id)a3 enumerationBlock:(id)a4 completionBlock:(id)a5;
- (void)_fetchRecordsWithServerChangeToken:(id)a3 numberOfFetchRecordsOperationsPerformedSoFar:(unint64_t)a4 result:(id)a5 completion:(id)a6;
- (void)_prepareRecordZoneWithCompletion:(id)a3;
- (void)_resetRecordZone;
- (void)_saveCloudHistoryVisits:(id)a3 tombstones:(id)a4 longLivedOperationPersistenceCompletion:(id)a5 completion:(id)a6;
- (void)_saveRecords:(id)a3 withCompletion:(id)a4;
- (void)_scheduleOperation:(id)a3;
- (void)deleteHistoryZoneWithCompletion:(id)a3;
- (void)fetchNumberOfDevicesInSyncCircleWithCompletion:(id)a3;
- (void)fetchRecordsForProfileServerIdentifier:(id)a3 completion:(id)a4;
- (void)fetchRecordsWithServerChangeTokenData:(id)a3 completion:(id)a4;
- (void)initializePushNotifications:(id)a3;
- (void)replayPersistedLongLivedSaveOperationWithID:(id)a3 completion:(id)a4;
- (void)saveCloudHistoryVisits:(id)a3 tombstones:(id)a4 longLivedOperationPersistenceCompletion:(id)a5 completion:(id)a6;
@end

@implementation WBSCloudHistoryStore

- (WBSCloudHistoryStore)initWithConfiguration:(id)a3 useManateeContainer:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v22.receiver = self;
  v22.super_class = WBSCloudHistoryStore;
  v8 = [(WBSCloudHistoryStore *)&v22 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.SafariShared.WBSCloudHistoryStore", 0);
    databaseQueue = v8->_databaseQueue;
    v8->_databaseQueue = v9;

    v11 = objc_opt_new();
    cloudKitOperationQueue = v8->_cloudKitOperationQueue;
    v8->_cloudKitOperationQueue = v11;

    [(NSOperationQueue *)v8->_cloudKitOperationQueue setQualityOfService:17];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSCloudHistoryStore.%@.%p.operationQueue", objc_opt_class(), v8];
    [(NSOperationQueue *)v8->_cloudKitOperationQueue setName:v13];

    objc_storeStrong(&v8->_configuration, a3);
    if (NSClassFromString(&cfstr_Ckdatabase.isa))
    {
      v8->_useManateeContainer = v4;
      if (v4)
      {
        [MEMORY[0x1E695B890] safari_historyManateeContainer];
      }

      else
      {
        [MEMORY[0x1E695B890] safari_historyContainer];
      }
      v14 = ;
      v15 = [v14 privateCloudDatabase];
      database = v8->_database;
      v8->_database = v15;

      v17 = objc_alloc(MEMORY[0x1E695BA98]);
      v18 = [v17 initWithZoneName:@"History" ownerName:*MEMORY[0x1E695B788]];
      recordZoneID = v8->_recordZoneID;
      v8->_recordZoneID = v18;
    }

    v20 = v8;
  }

  return v8;
}

- (void)initializePushNotifications:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WBSCloudHistoryStore_initializePushNotifications___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

void __52__WBSCloudHistoryStore_initializePushNotifications___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__WBSCloudHistoryStore_initializePushNotifications___block_invoke_2;
  v4[3] = &unk_1E7FB8358;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _prepareRecordZoneWithCompletion:v4];
}

void __52__WBSCloudHistoryStore_initializePushNotifications___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695B9E8]);
    [v5 setShouldSendContentAvailable:1];
    v6 = [objc_alloc(MEMORY[0x1E695BAA8]) initWithZoneID:*(*(a1 + 32) + 32) subscriptionID:@"ZoneSubscription"];
    [v6 setNotificationInfo:v5];
    v7 = objc_alloc(MEMORY[0x1E695B9D0]);
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [v7 initWithSubscriptionsToSave:v8 subscriptionIDsToDelete:0];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__WBSCloudHistoryStore_initializePushNotifications___block_invoke_3;
    v10[3] = &unk_1E7FB8330;
    v11 = *(a1 + 40);
    [v9 setModifySubscriptionsCompletionBlock:v10];
    [*(a1 + 32) _scheduleOperation:v9];
  }
}

- (BOOL)_shouldTryToResetRecordZoneForError:(id)a3
{
  v3 = a3;
  if ([v3 safari_hasOrContainsErrorWithCloudKitErrorCode:26] & 1) != 0 || (objc_msgSend(v3, "safari_hasOrContainsErrorWithCloudKitErrorCode:", 28))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 safari_hasOrContainsErrorWithCloudKitErrorCode:5001];
  }

  return v4;
}

- (void)saveCloudHistoryVisits:(id)a3 tombstones:(id)a4 longLivedOperationPersistenceCompletion:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__WBSCloudHistoryStore_saveCloudHistoryVisits_tombstones_longLivedOperationPersistenceCompletion_completion___block_invoke;
  block[3] = &unk_1E7FB8380;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(databaseQueue, block);
}

void __109__WBSCloudHistoryStore_saveCloudHistoryVisits_tombstones_longLivedOperationPersistenceCompletion_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __109__WBSCloudHistoryStore_saveCloudHistoryVisits_tombstones_longLivedOperationPersistenceCompletion_completion___block_invoke_2;
  v5[3] = &unk_1E7FB8208;
  v5[4] = v1;
  v6 = *(a1 + 64);
  [v1 _saveCloudHistoryVisits:v2 tombstones:v3 longLivedOperationPersistenceCompletion:v4 completion:v5];
}

void __109__WBSCloudHistoryStore_saveCloudHistoryVisits_tombstones_longLivedOperationPersistenceCompletion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldTryToResetRecordZoneForError:?])
  {
    [*(a1 + 32) _resetRecordZone];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_saveCloudHistoryVisits:(id)a3 tombstones:(id)a4 longLivedOperationPersistenceCompletion:(id)a5 completion:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v41 = [MEMORY[0x1E695DF70] array];
  if ([v10 count])
  {
    v14 = [(WBSCloudHistoryStore *)self _recordsWithCloudHistoryVisits:v10];
    if (!v14)
    {
      v36 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCloudHistoryStoreErrorDomain" code:1 userInfo:0];
      v13[2](v13, v36);

      goto LABEL_32;
    }

    v15 = v14;
    [v41 addObjectsFromArray:v14];
  }

  v37 = v13;
  v38 = v12;
  v39 = v11;
  v40 = v10;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v46;
    v20 = *MEMORY[0x1E69C8B58];
LABEL_6:
    v21 = 0;
    while (1)
    {
      if (*v46 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v45 + 1) + 8 * v21);
      v23 = [v16 objectForKeyedSubscript:v22];
      if (([v22 isEqualToString:v20] & 1) == 0)
      {
        if ([v23 count])
        {
          break;
        }
      }

      if ([v23 count])
      {
        v26 = [MEMORY[0x1E695DF70] array];
        v27 = [MEMORY[0x1E695DF70] array];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __110__WBSCloudHistoryStore__saveCloudHistoryVisits_tombstones_longLivedOperationPersistenceCompletion_completion___block_invoke;
        v42[3] = &unk_1E7FB83A8;
        v25 = v26;
        v43 = v25;
        v28 = v27;
        v44 = v28;
        [v23 enumerateObjectsUsingBlock:v42];
        if ([v25 count])
        {
          v29 = [(WBSCloudHistoryStore *)self _recordWithHistoryTombstones:v25 version:2];
          if (!v29)
          {
            goto LABEL_26;
          }

          v30 = v29;
          [v41 addObject:v29];
        }

        if ([v28 count])
        {
          v31 = [(WBSCloudHistoryStore *)self _recordWithHistoryTombstones:v28 version:1];
          if (!v31)
          {
LABEL_26:
            v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCloudHistoryStoreErrorDomain" code:1 userInfo:0];
            v13 = v37;
            v37[2](v37, v35);

LABEL_29:
            goto LABEL_31;
          }

          v32 = v31;
          [v41 addObject:v31];
        }

        goto LABEL_21;
      }

LABEL_22:

      if (v18 == ++v21)
      {
        v18 = [v16 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v18)
        {
          goto LABEL_6;
        }

        goto LABEL_24;
      }
    }

    v24 = [(WBSCloudHistoryStore *)self _recordWithHistoryTombstones:v23 version:3];
    if (!v24)
    {
      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCloudHistoryStoreErrorDomain" code:1 userInfo:0];
      v13 = v37;
      v37[2](v37, v25);
      goto LABEL_29;
    }

    v25 = v24;
    [v24 setObject:v22 forKeyedSubscript:@"ProfileUUID"];
    [v41 addObject:v25];
LABEL_21:

    goto LABEL_22;
  }

LABEL_24:

  v33 = [(WBSCloudHistoryConfiguration *)self->_configuration shouldBatchSaveRecords];
  v34 = [v41 mutableCopy];
  if (v33)
  {
    v13 = v37;
    v12 = v38;
    [(WBSCloudHistoryStore *)self _batchSaveRecords:v34 useLongLivedOperation:[(WBSCloudHistoryConfiguration *)self->_configuration shouldUseLongLivedOperationsToSaveRecords] longLivedOperationPersistenceCompletion:v38 completion:v37];

    v11 = v39;
    v10 = v40;
  }

  else
  {
    v13 = v37;
    [(WBSCloudHistoryStore *)self _saveRecords:v34 withCompletion:v37];

LABEL_31:
    v11 = v39;
    v10 = v40;
    v12 = v38;
  }

LABEL_32:
}

void __110__WBSCloudHistoryStore__saveCloudHistoryVisits_tombstones_longLivedOperationPersistenceCompletion_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 isSecure];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

- (void)_saveRecords:(id)a3 withCompletion:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 lastObject];
    [v6 removeLastObject];
    v9 = objc_alloc(MEMORY[0x1E695B9C0]);
    v15[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11 = [v9 initWithRecordsToSave:v10 recordIDsToDelete:0];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__WBSCloudHistoryStore__saveRecords_withCompletion___block_invoke;
    v12[3] = &unk_1E7FB83D0;
    v14 = v7;
    v12[4] = self;
    v13 = v6;
    [v11 setPerRecordCompletionBlock:v12];
    [(WBSCloudHistoryStore *)self _scheduleOperation:v11];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __52__WBSCloudHistoryStore__saveRecords_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_FailedToSaveRe.isa, v4);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(v7 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__WBSCloudHistoryStore__saveRecords_withCompletion___block_invoke_2;
    block[3] = &unk_1E7FB6E08;
    block[4] = v7;
    v10 = v6;
    v11 = *(a1 + 48);
    dispatch_async(v8, block);
  }
}

- (void)_batchSaveRecords:(id)a3 useLongLivedOperation:(BOOL)a4 longLivedOperationPersistenceCompletion:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x1E695B9C0];
  v13 = a3;
  v14 = [[v12 alloc] initWithRecordsToSave:v13 recordIDsToDelete:0];

  if (v10 && v7)
  {
    v15 = [v14 operationID];
    [v14 setLongLived:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __115__WBSCloudHistoryStore__batchSaveRecords_useLongLivedOperation_longLivedOperationPersistenceCompletion_completion___block_invoke;
    v20[3] = &unk_1E7FB83F8;
    v21 = v15;
    v22 = v10;
    v16 = v15;
    [v14 setLongLivedOperationWasPersistedBlock:v20];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __115__WBSCloudHistoryStore__batchSaveRecords_useLongLivedOperation_longLivedOperationPersistenceCompletion_completion___block_invoke_2;
  v18[3] = &unk_1E7FB8330;
  v19 = v11;
  v17 = v11;
  [v14 setModifyRecordsCompletionBlock:v18];
  [(WBSCloudHistoryStore *)self _scheduleOperation:v14];
}

void __115__WBSCloudHistoryStore__batchSaveRecords_useLongLivedOperation_longLivedOperationPersistenceCompletion_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __115__WBSCloudHistoryStore__batchSaveRecords_useLongLivedOperation_longLivedOperationPersistenceCompletion_completion___block_invoke_2_cold_1(v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_recordsWithCloudHistoryVisits:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = [MEMORY[0x1E695DF70] array];
  v37 = [MEMORY[0x1E695DF70] array];
  v34 = self;
  v5 = [(WBSCloudHistoryConfiguration *)self->_configuration maximumRequestCharacterCount];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v4;
  v31 = [v6 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v31)
  {
    v7 = 0;
    v28 = *MEMORY[0x1E69C8B58];
    v29 = *v43;
    v30 = v6;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v42 + 1) + 8 * v8);
        v10 = [v6 objectForKeyedSubscript:v9];
        if ([v9 isEqualToString:v28])
        {
          v11 = 0;
        }

        else
        {
          v11 = v9;
        }

        v35 = v11;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        obj = v10;
        v12 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
        v32 = v8;
        if (v12)
        {
          v13 = v12;
          v14 = *v39;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v38 + 1) + 8 * i);
              v17 = [v16 visitIdentifier];
              v18 = [v17 urlString];
              v19 = [v18 length];
              v20 = [v16 title];
              v21 = [v20 length] + v19;

              if (v21 <= v5)
              {
                if (v21 + v7 > v5)
                {
                  v24 = [(WBSCloudHistoryStore *)v34 _recordWithCloudHistoryVisits:v37 profileServerIdentifier:v35];
                  if (v24)
                  {
                    [v33 addObject:v24];
                  }

                  [v37 removeAllObjects];

                  v7 = 0;
                }

                [v37 addObject:v16];
                v7 += v21;
              }

              else
              {
                v22 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v47 = v16;
                  _os_log_error_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_ERROR, "Skipping large WBSCloudHistoryVisit: %p", buf, 0xCu);
                }

                v23 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138477827;
                  v47 = v16;
                  _os_log_debug_impl(&dword_1BB6F3000, v23, OS_LOG_TYPE_DEBUG, "Skipping large WBSCloudHistoryVisit: %{private}@", buf, 0xCu);
                }
              }
            }

            v13 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
          }

          while (v13);
        }

        v6 = v30;
        if ([v37 count])
        {
          v25 = [(WBSCloudHistoryStore *)v34 _recordWithCloudHistoryVisits:v37 profileServerIdentifier:v35];
          if (!v25)
          {

            v26 = v33;
            goto LABEL_33;
          }

          [v33 addObject:v25];
          [v37 removeAllObjects];
        }

        v8 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [v30 countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v26 = v33;
  v25 = v33;
LABEL_33:

  return v25;
}

- (id)_recordWithCloudHistoryVisits:(id)a3 profileServerIdentifier:(id)a4
{
  v29 = self;
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v30 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 dictionaryRepresentation];
        if (v13)
        {
          [v6 addObject:v13];
        }

        else
        {
          v14 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v38 = v12;
            _os_log_error_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_ERROR, "Skipping invalid WBSCloudHistoryVisit: %{private}@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  v35[0] = @"Visits";
  v35[1] = @"ClientVersion";
  v36[0] = v6;
  v36[1] = &unk_1F3A9AA90;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  if (v30)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = [(WBSCloudHistoryStore *)v29 _recordWithType:@"Visits" version:v16 dataDictionary:v15, v29];
  v18 = v17;
  if (v30)
  {
    [v17 setObject:v30 forKeyedSubscript:@"ProfileUUID"];
  }

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v20 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(WBSCloudHistoryStore *)v20 _recordWithCloudHistoryVisits:v21 profileServerIdentifier:v22, v23, v24, v25, v26, v27];
    }
  }

  return v18;
}

- (id)_recordWithHistoryTombstones:(id)a3 version:(unint64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v10);
  }

  v31[0] = @"Tombstones";
  v31[1] = @"ClientVersion";
  v32[0] = v7;
  v32[1] = &unk_1F3A9AA90;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v15 = [(WBSCloudHistoryStore *)self _recordWithType:@"Tombstones" version:a4 dataDictionary:v14];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(WBSCloudHistoryStore *)v18 _recordWithHistoryTombstones:v19 version:v20, v21, v22, v23, v24, v25];
    }
  }

  return v16;
}

- (void)replayPersistedLongLivedSaveOperationWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__WBSCloudHistoryStore_replayPersistedLongLivedSaveOperationWithID_completion___block_invoke;
  block[3] = &unk_1E7FB6E08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, block);
}

void __79__WBSCloudHistoryStore_replayPersistedLongLivedSaveOperationWithID_completion___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = [*(*(a1 + 32) + 24) container];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__WBSCloudHistoryStore_replayPersistedLongLivedSaveOperationWithID_completion___block_invoke_32;
  v9[3] = &unk_1E7FB8420;
  v11 = &v12;
  v5 = v2;
  v10 = v5;
  [v3 fetchLongLivedOperationWithID:v4 completionHandler:v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v13[5] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v13[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__WBSCloudHistoryStore_replayPersistedLongLivedSaveOperationWithID_completion___block_invoke_2;
    v7[3] = &unk_1E7FB8330;
    v8 = *(a1 + 48);
    [v6 setModifyRecordsCompletionBlock:v7];
    [*(a1 + 32) _scheduleOperation:v6];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v12, 8);
}

void __79__WBSCloudHistoryStore_replayPersistedLongLivedSaveOperationWithID_completion___block_invoke_32(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchRecordsWithServerChangeTokenData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSCloudHistoryStore_fetchRecordsWithServerChangeTokenData_completion___block_invoke;
  block[3] = &unk_1E7FB6E08;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, block);
}

void __73__WBSCloudHistoryStore_fetchRecordsWithServerChangeTokenData_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(WBSCloudHistoryFetchResult);
  if (*(a1 + 32))
  {
    v3 = objc_alloc(MEMORY[0x1E696ACD0]);
    v4 = *(a1 + 32);
    v13[0] = 0;
    v5 = [v3 initForReadingFromData:v4 error:v13];
    v6 = v13[0];
    if (v6)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXKeyedArchiver();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v6 safari_privacyPreservingDescription];
        __73__WBSCloudHistoryStore_fetchRecordsWithServerChangeTokenData_completion___block_invoke_cold_1(v8, buf, v7);
      }
    }

    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v5 finishDecoding];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__WBSCloudHistoryStore_fetchRecordsWithServerChangeTokenData_completion___block_invoke_37;
  v11[3] = &unk_1E7FB8448;
  v11[4] = v10;
  v12 = *(a1 + 48);
  [v10 _fetchRecordsWithServerChangeToken:v9 numberOfFetchRecordsOperationsPerformedSoFar:1 result:v2 completion:v11];
}

void __73__WBSCloudHistoryStore_fetchRecordsWithServerChangeTokenData_completion___block_invoke_37(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v6 = a4;
  if ([*(a1 + 32) _shouldTryToResetRecordZoneForError:v6])
  {
    [*(a1 + 32) _resetRecordZone];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_configureFetchChangesOperation:(id)a3
{
  v3 = a3;
  [v3 setFetchAllChanges:0];
  v4 = [v3 configuration];
  [v3 setConfiguration:v4];
}

- (void)_fetchRecordsWithServerChangeToken:(id)a3 numberOfFetchRecordsOperationsPerformedSoFar:(unint64_t)a4 result:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [objc_alloc(MEMORY[0x1E695B900]) initWithRecordZoneID:self->_recordZoneID previousServerChangeToken:v10];
  [(WBSCloudHistoryStore *)self _configureFetchChangesOperation:v13];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __122__WBSCloudHistoryStore__fetchRecordsWithServerChangeToken_numberOfFetchRecordsOperationsPerformedSoFar_result_completion___block_invoke;
  v26[3] = &unk_1E7FB8470;
  v14 = v11;
  v27 = v14;
  v28 = self;
  [v13 setRecordChangedBlock:v26];
  objc_initWeak(&location, v13);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __122__WBSCloudHistoryStore__fetchRecordsWithServerChangeToken_numberOfFetchRecordsOperationsPerformedSoFar_result_completion___block_invoke_2;
  v20 = &unk_1E7FB84C0;
  v15 = v12;
  v23 = v15;
  v16 = v14;
  v21 = v16;
  v24[1] = a4;
  objc_copyWeak(v24, &location);
  v22 = self;
  [v13 setFetchRecordChangesCompletionBlock:&v17];
  [(WBSCloudHistoryStore *)self _scheduleOperation:v13, v17, v18, v19, v20];
  objc_destroyWeak(v24);

  objc_destroyWeak(&location);
}

void __122__WBSCloudHistoryStore__fetchRecordsWithServerChangeToken_numberOfFetchRecordsOperationsPerformedSoFar_result_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = [WeakRetained moreComing];

    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = *(v9 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __122__WBSCloudHistoryStore__fetchRecordsWithServerChangeToken_numberOfFetchRecordsOperationsPerformedSoFar_result_completion___block_invoke_3;
      block[3] = &unk_1E7FB8498;
      block[4] = v9;
      v11 = v6;
      v12 = *(a1 + 64);
      v18 = v11;
      v21 = v12;
      v19 = *(a1 + 32);
      v20 = *(a1 + 48);
      dispatch_async(v10, block);
    }

    else
    {
      v16 = 0;
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v16];
      v14 = v16;
      if (v14)
      {
        v15 = WBS_LOG_CHANNEL_PREFIXKeyedArchiver();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __122__WBSCloudHistoryStore__fetchRecordsWithServerChangeToken_numberOfFetchRecordsOperationsPerformedSoFar_result_completion___block_invoke_2_cold_1(v15);
        }
      }

      [*(a1 + 32) _setServerChangeTokenData:v13];
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_scheduleOperation:(id)a3
{
  database = self->_database;
  v5 = a3;
  [v5 setDatabase:database];
  v6 = [v5 configuration];
  [v5 setConfiguration:v6];
  [(NSOperationQueue *)self->_cloudKitOperationQueue addOperation:v5];
}

- (id)_recordWithType:(id)a3 version:(unint64_t)a4 dataDictionary:(id)a5
{
  v8 = MEMORY[0x1E695BA58];
  v9 = a5;
  v10 = a3;
  v11 = [[v8 alloc] initWithRecordType:v10 zoneID:self->_recordZoneID];

  v12 = [(WBSCloudHistoryStore *)self _recordDataForDictionary:v9];

  if (v12)
  {
    v13 = [v11 safari_encryptedValues];
    [v13 setObject:v12 forKeyedSubscript:@"EncryptedData"];

    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [v14 UUIDString];
    [v11 setObject:v15 forKeyedSubscript:@"UUID"];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v11 setObject:v16 forKeyedSubscript:@"Version"];

    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_recordDataForDictionary:(id)a3
{
  if (a3)
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v8];
    v4 = v8;
    if (v3)
    {
      v5 = [v3 safari_dataByCompressingData];
    }

    else
    {
      v6 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [WBSCloudHistoryStore _recordDataForDictionary:v6];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_prepareRecordZoneWithoutCachingWithError:(id *)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc(MEMORY[0x1E695B930]);
  v33[0] = self->_recordZoneID;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v8 = [v6 initWithRecordZoneIDs:v7];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __66__WBSCloudHistoryStore__prepareRecordZoneWithoutCachingWithError___block_invoke;
  v16 = &unk_1E7FB8510;
  v17 = self;
  v19 = &v27;
  v20 = &v21;
  v9 = v5;
  v18 = v9;
  [v8 setFetchRecordZonesCompletionBlock:&v13];
  [(WBSCloudHistoryStore *)self _scheduleOperation:v8, v13, v14, v15, v16, v17];
  v10 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSCloudHistoryStoreErrorDomain" code:2 userInfo:0];
      *a3 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = v22[5];
    }

    v11 = v28[5];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

void __66__WBSCloudHistoryStore__prepareRecordZoneWithoutCachingWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a2 objectForKeyedSubscript:*(*(a1 + 32) + 32)];
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695BA88]) initWithZoneID:*(*(a1 + 32) + 32)];
    v9 = objc_alloc(MEMORY[0x1E695B9A8]);
    v15[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11 = [v9 initWithRecordZonesToSave:v10 recordZoneIDsToDelete:0];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__WBSCloudHistoryStore__prepareRecordZoneWithoutCachingWithError___block_invoke_2;
    v12[3] = &unk_1E7FB84E8;
    v14 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v13 = *(a1 + 40);
    [v11 setModifyRecordZonesCompletionBlock:v12];
    [*(a1 + 32) _scheduleOperation:v11];
  }
}

void __66__WBSCloudHistoryStore__prepareRecordZoneWithoutCachingWithError___block_invoke_2(uint64_t a1, void *a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v11 = obj;
  v7 = a2;
  v8 = [v7 firstObject];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_prepareRecordZoneWithCompletion:(id)a3
{
  if (self->_recordZone)
  {
    v3 = *(a3 + 2);
    v4 = a3;
    v3();
  }

  else
  {
    v10 = 0;
    v6 = a3;
    v7 = [(WBSCloudHistoryStore *)self _prepareRecordZoneWithoutCachingWithError:&v10];
    v4 = v10;
    recordZone = self->_recordZone;
    self->_recordZone = v7;
    v9 = v7;

    v6[2](v6, self->_recordZone, v4);
  }
}

- (void)_resetRecordZone
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__WBSCloudHistoryStore__resetRecordZone__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_async(databaseQueue, block);
}

uint64_t __40__WBSCloudHistoryStore__resetRecordZone__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Resetting Cloud History record zone.", v6, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  return [*(a1 + 32) _prepareRecordZoneWithCompletion:&__block_literal_global_18];
}

void __40__WBSCloudHistoryStore__resetRecordZone__block_invoke_51(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __40__WBSCloudHistoryStore__resetRecordZone__block_invoke_51_cold_1(v4);
    }
  }
}

- (void)deleteHistoryZoneWithCompletion:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WBSCloudHistoryStore_deleteHistoryZoneWithCompletion___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

void __56__WBSCloudHistoryStore_deleteHistoryZoneWithCompletion___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695B9A8]);
  v7[0] = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v3];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__WBSCloudHistoryStore_deleteHistoryZoneWithCompletion___block_invoke_2;
  v5[3] = &unk_1E7FB8330;
  v6 = *(a1 + 40);
  [v4 setModifyRecordZonesCompletionBlock:v5];
  [*(a1 + 32) _scheduleOperation:v4];
}

void __56__WBSCloudHistoryStore_deleteHistoryZoneWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v5 = [v8 safari_hasOrContainsErrorWithCloudKitErrorCode:26];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v8;
    if (v5)
    {
      v7 = 0;
    }

    (*(v6 + 16))(v6, v7);
  }
}

- (void)fetchNumberOfDevicesInSyncCircleWithCompletion:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__WBSCloudHistoryStore_fetchNumberOfDevicesInSyncCircleWithCompletion___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

void __71__WBSCloudHistoryStore_fetchNumberOfDevicesInSyncCircleWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 _prepareRecordZoneWithoutCachingWithError:&v13];
  v4 = v13;
  if (![v3 deviceCount])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71__WBSCloudHistoryStore_fetchNumberOfDevicesInSyncCircleWithCompletion___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchAllRecordsWithQueryOperation:(id)a3 enumerationBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__WBSCloudHistoryStore__fetchAllRecordsWithQueryOperation_enumerationBlock_completionBlock___block_invoke;
  v21[3] = &unk_1E7FB8558;
  v10 = v8;
  v22 = v10;
  v11 = a3;
  [v11 setRecordMatchedBlock:v21];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __92__WBSCloudHistoryStore__fetchAllRecordsWithQueryOperation_enumerationBlock_completionBlock___block_invoke_2;
  v17 = &unk_1E7FB8580;
  v18 = self;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  [v11 setQueryCompletionBlock:&v14];
  [(WBSCloudHistoryStore *)self _scheduleOperation:v11, v14, v15, v16, v17, v18];
}

uint64_t __92__WBSCloudHistoryStore__fetchAllRecordsWithQueryOperation_enumerationBlock_completionBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __92__WBSCloudHistoryStore__fetchAllRecordsWithQueryOperation_enumerationBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [objc_alloc(MEMORY[0x1E695BA50]) initWithCursor:v4];
    [v3 setZoneID:*(*(a1 + 32) + 32)];
    [*(a1 + 32) _fetchAllRecordsWithQueryOperation:v3 enumerationBlock:*(a1 + 48) completionBlock:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchRecordsForProfileServerIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(WBSCloudHistoryFetchResult);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"ProfileUUID", v6];
  v10 = dispatch_group_create();
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__4;
  v28[4] = __Block_byref_object_dispose__4;
  v29 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke;
  v22[3] = &unk_1E7FB85F8;
  v11 = v10;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  v25 = self;
  v13 = v8;
  v26 = v13;
  v27 = v28;
  v14 = MEMORY[0x1BFB13CE0](v22);
  (v14)[2](v14, @"Visits");
  (v14)[2](v14, @"Tombstones");
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke_6;
  block[3] = &unk_1E7FB8620;
  v19 = v13;
  v20 = v7;
  v21 = v28;
  v16 = v13;
  v17 = v7;
  dispatch_group_notify(v11, databaseQueue, block);

  _Block_object_dispose(v28, 8);
}

void __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = [objc_alloc(MEMORY[0x1E695BA38]) initWithRecordType:v4 predicate:*(a1 + 40)];

  v6 = [objc_alloc(MEMORY[0x1E695BA50]) initWithQuery:v5];
  [v6 setZoneID:*(*(a1 + 48) + 32)];
  v7 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke_2;
  v12[3] = &unk_1E7FB8470;
  v12[4] = v7;
  v13 = *(a1 + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke_4;
  v9[3] = &unk_1E7FB85D0;
  v8 = *(a1 + 64);
  v9[4] = *(a1 + 48);
  v11 = v8;
  v10 = *(a1 + 32);
  [v7 _fetchAllRecordsWithQueryOperation:v6 enumerationBlock:v12 completionBlock:v9];
}

void __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E7FB7258;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke_5;
  block[3] = &unk_1E7FB85A8;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __74__WBSCloudHistoryStore_fetchRecordsForProfileServerIdentifier_completion___block_invoke_5(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v2);
  }

  v3 = a1[5];

  dispatch_group_leave(v3);
}

void __115__WBSCloudHistoryStore__batchSaveRecords_useLongLivedOperation_longLivedOperationPersistenceCompletion_completion___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Failed to save Visits record: %{public}@", v6, v7, v8, v9, v10);
}

void __73__WBSCloudHistoryStore_fetchRecordsWithServerChangeTokenData_completion___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to read from server change token data: %{public}@", buf, 0xCu);
}

void __73__WBSCloudHistoryStore_fetchRecordsWithServerChangeTokenData_completion___block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to decode server change token with exception: %{public}@", buf, 0xCu);
}

void __122__WBSCloudHistoryStore__fetchRecordsWithServerChangeToken_numberOfFetchRecordsOperationsPerformedSoFar_result_completion___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Failed to archive server change token: %{public}@", v6, v7, v8, v9, v10);
}

- (void)_recordDataForDictionary:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Failed to serialize dictionary: %{public}@", v6, v7, v8, v9, v10);
}

void __40__WBSCloudHistoryStore__resetRecordZone__block_invoke_51_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_1(&dword_1BB6F3000, v4, v5, "Resetting Cloud History record zone failed: %{public}@", v6, v7, v8, v9, v10);
}

@end