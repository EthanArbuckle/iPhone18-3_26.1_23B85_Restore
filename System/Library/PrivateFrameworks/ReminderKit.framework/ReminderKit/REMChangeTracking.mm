@interface REMChangeTracking
+ (id)defaultTransactionAuthorKeysToExclude;
+ (id)internalTransactionAuthorKeysToExclude;
+ (id)lastTransactionTimestampWithManagedObjectContext:(id)a3 affectedStores:(id)a4;
- (REMChangeTracking)initWithClientID:(id)a3 daemonController:(id)a4;
- (REMChangeTracking)initWithClientID:(id)a3 daemonController:(id)a4 transactionAuthorKeysToExclude:(id)a5;
- (id)currentChangeTokenForAccountTypes:(int64_t)a3 error:(id *)a4;
- (id)currentChangeTokenForAllAccountsWithError:(id *)a3;
- (id)currentChangeTokenWithError:(id *)a3;
- (id)earliestChangeTokenWithError:(id *)a3;
- (id)fetchAuxiliaryChangeInfosOfType:(Class)a3 withChangeObject:(id)a4 error:(id *)a5;
- (id)fetchHistoryAfterDate:(id)a3 error:(id *)a4;
- (id)fetchHistoryAfterToken:(id)a3 error:(id *)a4;
- (id)getTrackingStateWithError:(id *)a3;
- (id)persistenceStoreIDForAccountID:(id)a3 error:(id *)a4;
- (void)_performChangeTrackingWithReason:(id)a3 block:(id)a4 xpcErrorHandler:(id)a5;
- (void)deleteHistoryBeforeDate:(id)a3 error:(id *)a4;
- (void)deleteHistoryBeforeToken:(id)a3 error:(id *)a4;
- (void)saveTrackingState:(id)a3 error:(id *)a4;
@end

@implementation REMChangeTracking

+ (id)internalTransactionAuthorKeysToExclude
{
  if (internalTransactionAuthorKeysToExclude_onceTokenAuthorExclude != -1)
  {
    +[REMChangeTracking internalTransactionAuthorKeysToExclude];
  }

  v3 = internalTransactionAuthorKeysToExclude_defaultAuthorsToExclude;

  return v3;
}

uint64_t __59__REMChangeTracking_internalTransactionAuthorKeysToExclude__block_invoke()
{
  internalTransactionAuthorKeysToExclude_defaultAuthorsToExclude = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6993120], @"com.apple.remindd.RDStoreController.defaultValuesMigration", @"com.apple.remindd.RDStoreController.JSONPropertiesMigration", @"com.apple.remindd.RDStoreController.CKParentReminderIdentifierMigration", @"com.apple.remindd.RDStoreController.OrphanedListMigration", @"com.apple.RDStoreController.deleteAccountStore", @"com.apple.remindd.RDDisplayDateUpdater", @"com.apple.remindd.notificationConsumer.lastBannerPresentationDate", @"com.apple.remindd.todayEngine.notification.lastBannerPresentationDate", @"com.apple.remindd.urgentAlarmConsumer.lastBannerPresentationDate", @"com.apple.remindd.ICCloudContext.internal", @"com.apple.remindd.ICCloudContext.serverChangeToken", @"com.apple.remindd.RDHashtagLabelUpdater.author", @"com.apple.remindd.RDTemplateOperation.author", @"com.apple.remindd.RDGroceryOperation.author", @"com.apple.remindd.RDAutoCategorizationOperation.author", @"com.apple.remindd.RDSharedInlineTagAutoConvertEngine.author", @"com.apple.remindd.RDSyncActivityNotificationEngine.author", @"com.apple.remindd.RDStagedLightweightMigrationAuthor.author", @"RDStoreControllerUnsetCKDirtyFlagsInNonCKAccountsMigrationAuthor", @"com.apple.remindd.RDStoreController.IsPinnedByCurrentUserMigrationAuthor", @"com.apple.remindd.RDStoreController.MostRecentTargetTemplateIdentifierByCurrentUserMigrationAuthor", @"com.apple.remindd.RDStoreController.RemoveObsoleteDueDateDeltasMigrationAuthor", @"com.apple.remindd.RDStalePinnedListsEventHandler.author", @"com.apple.remindd.RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler.author", @"RDStoreController.DeduplicationActivityAuthor", @"RDStoreController.SuggestConversionToGroceryListActivityAuthor", @"com.apple.remindd.RDStoreController.UpdateAlternativeDueDatesOfCalDavRemindersMigrationAuthor", @"RDStoreController.BatchDeleteExpiredRemindersActivityAuthor", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)defaultTransactionAuthorKeysToExclude
{
  if (defaultTransactionAuthorKeysToExclude_onceTokenAuthorExclude != -1)
  {
    +[REMChangeTracking defaultTransactionAuthorKeysToExclude];
  }

  v3 = defaultTransactionAuthorKeysToExclude_defaultAuthorsToExclude;

  return v3;
}

void __58__REMChangeTracking_defaultTransactionAuthorKeysToExclude__block_invoke()
{
  v0 = +[REMChangeTracking internalTransactionAuthorKeysToExclude];
  v3 = [v0 mutableCopy];

  [v3 addObject:@"com.apple.remindd.dataaccess.REMSaveRequest.author"];
  v1 = [v3 copy];
  v2 = defaultTransactionAuthorKeysToExclude_defaultAuthorsToExclude;
  defaultTransactionAuthorKeysToExclude_defaultAuthorsToExclude = v1;
}

+ (id)lastTransactionTimestampWithManagedObjectContext:(id)a3 affectedStores:(id)a4
{
  v5 = a3;
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__REMChangeTracking_lastTransactionTimestampWithManagedObjectContext_affectedStores___block_invoke;
  v14[3] = &unk_1E7508780;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  v16 = v8;
  v17 = &v18;
  [v7 performBlockAndWait:v14];
  v9 = v19[5];
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DF00] distantPast];
    v11 = v19[5];
    v19[5] = v10;

    v9 = v19[5];
  }

  v12 = v9;

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __85__REMChangeTracking_lastTransactionTimestampWithManagedObjectContext_affectedStores___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 currentPersistentHistoryTokenFromStores:*(a1 + 40)];

  if (v3)
  {
    v4 = [MEMORY[0x1E695D698] fetchHistoryTransactionForToken:v3];
    v5 = *(a1 + 32);
    v19 = 0;
    v6 = [v5 executeRequest:v4 error:&v19];
    v7 = v19;
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = [v6 result];
      v11 = objc_opt_class();
      v12 = [v10 lastObject];
      v13 = REMCheckedDynamicCast(v11, v12);

      v14 = objc_opt_class();
      v15 = [v13 timestamp];
      v16 = REMCheckedDynamicCast(v14, v15);

      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    else
    {
      v10 = +[REMLog changeTracking];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __85__REMChangeTracking_lastTransactionTimestampWithManagedObjectContext_affectedStores___block_invoke_cold_1(v8, (a1 + 40));
      }
    }
  }

  else
  {
    v4 = +[REMLog changeTracking];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__REMChangeTracking_lastTransactionTimestampWithManagedObjectContext_affectedStores___block_invoke_cold_2((a1 + 40), v4);
    }
  }
}

- (REMChangeTracking)initWithClientID:(id)a3 daemonController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() defaultTransactionAuthorKeysToExclude];
  v9 = [(REMChangeTracking *)self initWithClientID:v7 daemonController:v6 transactionAuthorKeysToExclude:v8];

  return v9;
}

- (REMChangeTracking)initWithClientID:(id)a3 daemonController:(id)a4 transactionAuthorKeysToExclude:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = REMChangeTracking;
  v12 = [(REMChangeTracking *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_changeTrackingClientID, a3);
    objc_storeStrong(&v13->_daemonController, a4);
    objc_storeStrong(&v13->_transactionAuthorKeysToExclude, a5);
    entityNames = v13->_entityNames;
    v13->_entityNames = 0;
    v13->_transactionFetchLimit = 0;
  }

  return v13;
}

- (id)currentChangeTokenForAllAccountsWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__REMChangeTracking_currentChangeTokenForAllAccountsWithError___block_invoke;
  v7[3] = &unk_1E75087D0;
  v7[4] = &v14;
  v7[5] = &v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__REMChangeTracking_currentChangeTokenForAllAccountsWithError___block_invoke_3;
  v6[3] = &unk_1E7507AE0;
  v6[4] = &v8;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"currentChangeTokenForAllAccounts" block:v7 xpcErrorHandler:v6];
  if (a3)
  {
    *a3 = v9[5];
  }

  v4 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

uint64_t __63__REMChangeTracking_currentChangeTokenForAllAccountsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__REMChangeTracking_currentChangeTokenForAllAccountsWithError___block_invoke_2;
  v3[3] = &unk_1E75087A8;
  v4 = *(a1 + 32);
  return [a2 currentChangeToken:v3];
}

void __63__REMChangeTracking_currentChangeTokenForAllAccountsWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:11];
    v8 = *(*(a1 + 40) + 8);
    v6 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)currentChangeTokenForAccountTypes:(int64_t)a3 error:(id *)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__REMChangeTracking_currentChangeTokenForAccountTypes_error___block_invoke;
  v8[3] = &unk_1E7508820;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = &v15;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__REMChangeTracking_currentChangeTokenForAccountTypes_error___block_invoke_3;
  v7[3] = &unk_1E7507AE0;
  v7[4] = &v9;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"currentChangeTokenForAccountTypes" block:v8 xpcErrorHandler:v7];
  if (a4)
  {
    *a4 = v10[5];
  }

  v5 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

uint64_t __61__REMChangeTracking_currentChangeTokenForAccountTypes_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __61__REMChangeTracking_currentChangeTokenForAccountTypes_error___block_invoke_2;
  v7 = &unk_1E75087F8;
  v8 = *(a1 + 32);
  v9 = v2;
  return [a2 currentChangeTokenForAccountTypes:? completion:?];
}

void __61__REMChangeTracking_currentChangeTokenForAccountTypes_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (v3)
  {
    v4 = *(a1[4] + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
    v9 = [v6 description];
    v10 = [v8 stringWithFormat:@"types=%@", v9];
    v11 = [v7 errorWithREMChangeErrorCode:11 debugDescription:v10];
    v12 = *(a1[5] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (id)currentChangeTokenWithError:(id *)a3
{
  v5 = objc_opt_class();
  v6 = [(REMChangeTracking *)self changeTrackingClientID];
  v7 = REMCheckedDynamicCast(v5, v6);

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__REMChangeTracking_currentChangeTokenWithError___block_invoke;
  v12[3] = &unk_1E7508870;
  v8 = v7;
  v13 = v8;
  v14 = &v22;
  v15 = &v16;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__REMChangeTracking_currentChangeTokenWithError___block_invoke_3;
  v11[3] = &unk_1E7507AE0;
  v11[4] = &v16;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"currentChangeToken" block:v12 xpcErrorHandler:v11];
  if (a3)
  {
    *a3 = v17[5];
  }

  v9 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __49__REMChangeTracking_currentChangeTokenWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accountIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__REMChangeTracking_currentChangeTokenWithError___block_invoke_2;
  v8[3] = &unk_1E7508848;
  v10 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6 = v7;
  v9 = v7;
  [v4 currentChangeTokenForAccountID:v5 completion:v8];
}

void __49__REMChangeTracking_currentChangeTokenWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = MEMORY[0x1E696AEC0];
    v6 = [*(a1 + 32) accountIdentifier];
    v9 = [v8 stringWithFormat:@"accountIdentifier=%@", v6];
    v10 = [v7 errorWithREMChangeErrorCode:11 debugDescription:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)earliestChangeTokenWithError:(id *)a3
{
  v5 = objc_opt_class();
  v6 = [(REMChangeTracking *)self changeTrackingClientID];
  v7 = REMCheckedDynamicCast(v5, v6);

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5;
  v26 = __Block_byref_object_dispose__5;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__REMChangeTracking_earliestChangeTokenWithError___block_invoke;
  v12[3] = &unk_1E7508870;
  v8 = v7;
  v13 = v8;
  v14 = &v22;
  v15 = &v16;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__REMChangeTracking_earliestChangeTokenWithError___block_invoke_3;
  v11[3] = &unk_1E7507AE0;
  v11[4] = &v16;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"earliestChangeToken" block:v12 xpcErrorHandler:v11];
  if (a3)
  {
    *a3 = v17[5];
  }

  v9 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __50__REMChangeTracking_earliestChangeTokenWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accountIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__REMChangeTracking_earliestChangeTokenWithError___block_invoke_2;
  v8[3] = &unk_1E7508848;
  v10 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6 = v7;
  v9 = v7;
  [v4 earliestChangeTokenForAccountID:v5 completion:v8];
}

void __50__REMChangeTracking_earliestChangeTokenWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = MEMORY[0x1E696AEC0];
    v6 = [*(a1 + 32) accountIdentifier];
    v9 = [v8 stringWithFormat:@"accountIdentifier=%@", v6];
    v10 = [v7 errorWithREMChangeErrorCode:11 debugDescription:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)getTrackingStateWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__REMChangeTracking_getTrackingStateWithError___block_invoke;
  v7[3] = &unk_1E7508870;
  v7[4] = self;
  v7[5] = &v14;
  v7[6] = &v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__REMChangeTracking_getTrackingStateWithError___block_invoke_3;
  v6[3] = &unk_1E7507AE0;
  v6[4] = &v8;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"getTrackingState" block:v7 xpcErrorHandler:v6];
  if (a3)
  {
    *a3 = v9[5];
  }

  v4 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

void __47__REMChangeTracking_getTrackingStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 changeTrackingClientID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__REMChangeTracking_getTrackingStateWithError___block_invoke_2;
  v6[3] = &unk_1E7508898;
  v7 = *(a1 + 40);
  [v4 getTrackingStateWithClientID:v5 completion:v6];
}

void __47__REMChangeTracking_getTrackingStateWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)saveTrackingState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__REMChangeTracking_saveTrackingState_error___block_invoke;
  v9[3] = &unk_1E75088C0;
  v7 = v6;
  v10 = v7;
  v11 = self;
  v12 = &v13;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__REMChangeTracking_saveTrackingState_error___block_invoke_3;
  v8[3] = &unk_1E7507AE0;
  v8[4] = &v13;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"saveTrackingState" block:v9 xpcErrorHandler:v8];
  if (a4)
  {
    *a4 = v14[5];
  }

  _Block_object_dispose(&v13, 8);
}

void __45__REMChangeTracking_saveTrackingState_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 changeTrackingClientID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__REMChangeTracking_saveTrackingState_error___block_invoke_2;
  v7[3] = &unk_1E7507AE0;
  v7[4] = a1[6];
  [v5 saveTrackingState:v3 withClientID:v6 completionHandler:v7];
}

- (id)fetchHistoryAfterToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v7 = [(REMChangeTracking *)self entityNames];
  if ([v7 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(REMChangeTracking *)self transactionFetchLimit];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__REMChangeTracking_fetchHistoryAfterToken_error___block_invoke;
  v20[3] = &unk_1E7508910;
  v9 = v6;
  v21 = v9;
  v22 = self;
  v23 = &v32;
  v24 = &v26;
  v25 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__REMChangeTracking_fetchHistoryAfterToken_error___block_invoke_3;
  v19[3] = &unk_1E7507AE0;
  v19[4] = &v26;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"fetchHistoryAfterToken" block:v20 xpcErrorHandler:v19];
  v10 = v33[5];
  v11 = [(REMChangeTracking *)self transactionAuthorKeysToExclude];
  v12 = [v11 allObjects];
  [v10 consolidateAndFilterChangesWithTransactionAuthors:v12 isExclusion:1];

  if (!v33[5])
  {
    if (!v27[5])
    {
      v17 = +[REMLog changeTracking];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [REMChangeTracking fetchHistoryAfterToken:v9 error:v17];
      }

      v18 = v27[5];
    }

    v13 = [REMChangeSet errorChangeSetWithError:?];
    v14 = v33[5];
    v33[5] = v13;
  }

  if (a4)
  {
    *a4 = v27[5];
  }

  v15 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v15;
}

void __50__REMChangeTracking_fetchHistoryAfterToken_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 entityNames];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__REMChangeTracking_fetchHistoryAfterToken_error___block_invoke_2;
  v10[3] = &unk_1E75088E8;
  v11 = *(a1 + 48);
  [v5 fetchHistoryAfterToken:v3 entityNames:v8 transactionFetchLimit:v9 completionHandler:v10];
}

void __50__REMChangeTracking_fetchHistoryAfterToken_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)fetchHistoryAfterDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__5;
  v36 = __Block_byref_object_dispose__5;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v7 = [(REMChangeTracking *)self entityNames];
  if ([v7 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(REMChangeTracking *)self transactionFetchLimit];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__REMChangeTracking_fetchHistoryAfterDate_error___block_invoke;
  v20[3] = &unk_1E7508910;
  v9 = v6;
  v21 = v9;
  v22 = self;
  v23 = &v32;
  v24 = &v26;
  v25 = v8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__REMChangeTracking_fetchHistoryAfterDate_error___block_invoke_3;
  v19[3] = &unk_1E7507AE0;
  v19[4] = &v26;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"fetchHistoryAfterDate" block:v20 xpcErrorHandler:v19];
  v10 = v33[5];
  v11 = [(REMChangeTracking *)self transactionAuthorKeysToExclude];
  v12 = [v11 allObjects];
  [v10 consolidateAndFilterChangesWithTransactionAuthors:v12 isExclusion:1];

  if (!v33[5])
  {
    if (!v27[5])
    {
      v17 = +[REMLog changeTracking];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [REMChangeTracking fetchHistoryAfterDate:v9 error:v17];
      }

      v18 = v27[5];
    }

    v13 = [REMChangeSet errorChangeSetWithError:?];
    v14 = v33[5];
    v33[5] = v13;
  }

  if (a4)
  {
    *a4 = v27[5];
  }

  v15 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v15;
}

void __49__REMChangeTracking_fetchHistoryAfterDate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 entityNames];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__REMChangeTracking_fetchHistoryAfterDate_error___block_invoke_2;
  v10[3] = &unk_1E75088E8;
  v11 = *(a1 + 48);
  [v5 fetchHistoryAfterDate:v3 entityNames:v8 transactionFetchLimit:v9 completionHandler:v10];
}

void __49__REMChangeTracking_fetchHistoryAfterDate_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (void)deleteHistoryBeforeToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__REMChangeTracking_deleteHistoryBeforeToken_error___block_invoke;
  v9[3] = &unk_1E7508938;
  v7 = v6;
  v10 = v7;
  v11 = &v12;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__REMChangeTracking_deleteHistoryBeforeToken_error___block_invoke_3;
  v8[3] = &unk_1E7507AE0;
  v8[4] = &v12;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"deleteHistoryBeforeToken" block:v9 xpcErrorHandler:v8];
  if (a4)
  {
    *a4 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __52__REMChangeTracking_deleteHistoryBeforeToken_error___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__REMChangeTracking_deleteHistoryBeforeToken_error___block_invoke_2;
  v4[3] = &unk_1E7507AE0;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 deleteHistoryBeforeToken:v2 completionHandler:v4];
}

- (void)deleteHistoryBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__REMChangeTracking_deleteHistoryBeforeDate_error___block_invoke;
  v9[3] = &unk_1E7508938;
  v7 = v6;
  v10 = v7;
  v11 = &v12;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__REMChangeTracking_deleteHistoryBeforeDate_error___block_invoke_3;
  v8[3] = &unk_1E7507AE0;
  v8[4] = &v12;
  [(REMChangeTracking *)self _performChangeTrackingWithReason:@"deleteHistoryBeforeDate" block:v9 xpcErrorHandler:v8];
  if (a4)
  {
    *a4 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __51__REMChangeTracking_deleteHistoryBeforeDate_error___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__REMChangeTracking_deleteHistoryBeforeDate_error___block_invoke_2;
  v4[3] = &unk_1E7507AE0;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 deleteHistoryBeforeDate:v2 completionHandler:v4];
}

- (id)persistenceStoreIDForAccountID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v7 = [(REMChangeTracking *)self daemonController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__REMChangeTracking_persistenceStoreIDForAccountID_error___block_invoke;
  v13[3] = &unk_1E7507BF0;
  v13[4] = self;
  v13[5] = &v14;
  v8 = [v7 syncDebugPerformerWithReason:@"persistenceStoreID" errorHandler:v13];

  if (!v15[5])
  {
    if (!v8)
    {
      v11 = +[REMLog changeTracking];
      [REMChangeTracking persistenceStoreIDForAccountID:v11 error:?];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__REMChangeTracking_persistenceStoreIDForAccountID_error___block_invoke_54;
    v12[3] = &unk_1E7508960;
    v12[4] = &v20;
    [v8 persistenceStoreIDForAccountID:v6 completion:v12];
  }

  if (a4)
  {
    *a4 = v15[5];
  }

  v9 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

void __58__REMChangeTracking_persistenceStoreIDForAccountID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog changeTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__REMChangeTracking_persistenceStoreIDForAccountID_error___block_invoke_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_performChangeTrackingWithReason:(id)a3 block:(id)a4 xpcErrorHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v11 = [(REMChangeTracking *)self daemonController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__REMChangeTracking__performChangeTrackingWithReason_block_xpcErrorHandler___block_invoke;
  v15[3] = &unk_1E7508988;
  v15[4] = self;
  v12 = v10;
  v16 = v12;
  v17 = &v18;
  v13 = [v11 syncChangeTrackingPerformerWithReason:v8 errorHandler:v15];

  if (!v19[5])
  {
    if (!v13)
    {
      v14 = +[REMLog changeTracking];
      [REMChangeTracking _performChangeTrackingWithReason:v14 block:? xpcErrorHandler:?];
    }

    v9[2](v9, v13);
  }

  _Block_object_dispose(&v18, 8);
}

void __76__REMChangeTracking__performChangeTrackingWithReason_block_xpcErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog changeTracking];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__REMChangeTracking__performChangeTrackingWithReason_block_xpcErrorHandler___block_invoke_cold_1(v3, a1);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)fetchAuxiliaryChangeInfosOfType:(Class)a3 withChangeObject:(id)a4 error:(id *)a5
{
  v51 = self;
  v104 = *MEMORY[0x1E69E9840];
  v55 = a4;
  v65 = [MEMORY[0x1E695DF70] array];
  v66 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v55];
  if ([v55 isCoalesced])
  {
    v6 = [v55 coalescedChanges];
    if (!v6)
    {
      [REMChangeTracking(REMAuxiliaryChangeInfoAdditions) fetchAuxiliaryChangeInfosOfType:withChangeObject:error:];
    }

    v7 = [v5 arrayByAddingObjectsFromArray:{v6, v51}];

    v5 = v7;
  }

  v8 = [(objc_class *)a3 cdEntityName];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v5;
  v61 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
  if (v61)
  {
    v59 = *v88;
    do
    {
      v9 = 0;
      do
      {
        if (*v88 != v59)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v63 = v9;
        v11 = [*(*(&v87 + 1) + 8 * v9) transaction];
        v12 = [v11 changes];

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v83 objects:v102 count:16];
        if (v14)
        {
          v15 = *v84;
          do
          {
            v16 = 0;
            do
            {
              if (*v84 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v83 + 1) + 8 * v16);
              if (![v17 changeType])
              {
                v18 = [v17 changedObjectID];
                if (v18)
                {
                  v19 = [v17 changedObjectID];
                  v20 = [v19 entityName];
                  v21 = [v20 isEqual:v8];

                  if (v21)
                  {
                    v22 = [v17 changedObjectID];
                    [v65 addObject:v22];

                    v23 = [v17 changedObjectID];
                    [v66 setObject:v17 forKey:v23];
                  }
                }
              }

              ++v16;
            }

            while (v14 != v16);
            v24 = [v13 countByEnumeratingWithState:&v83 objects:v102 count:16];
            v14 = v24;
          }

          while (v24);
        }

        v9 = v63 + 1;
      }

      while (v63 + 1 != v61);
      v61 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
    }

    while (v61);
  }

  v25 = [REMAuxiliaryChangeInfoFetchResult auxiliaryChangeInfoFetchResultOfType:a3];
  v26 = [v65 count] == 0;
  v27 = +[REMLog changeTracking];
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v26)
  {
    if (v28)
    {
      *buf = 138412290;
      *&buf[4] = v55;
      _os_log_impl(&dword_19A0DB000, v27, OS_LOG_TYPE_INFO, "No auxiliary change info object IDs found with change object {changeObject: %@}", buf, 0xCu);
    }

    v33 = v25;
  }

  else
  {
    if (v28)
    {
      *buf = 138543618;
      *&buf[4] = v65;
      *&buf[12] = 2112;
      *&buf[14] = v55;
      _os_log_impl(&dword_19A0DB000, v27, OS_LOG_TYPE_INFO, "Auxiliary change info object IDs to fetch {objectIDs: %{public}@, changeObject: %@}", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v99 = __Block_byref_object_copy__5;
    v100 = __Block_byref_object_dispose__5;
    v101 = 0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__5;
    v81 = __Block_byref_object_dispose__5;
    v82 = 0;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __109__REMChangeTracking_REMAuxiliaryChangeInfoAdditions__fetchAuxiliaryChangeInfosOfType_withChangeObject_error___block_invoke;
    v73[3] = &unk_1E7508870;
    v29 = v65;
    v74 = v29;
    v75 = buf;
    v76 = &v77;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __109__REMChangeTracking_REMAuxiliaryChangeInfoAdditions__fetchAuxiliaryChangeInfosOfType_withChangeObject_error___block_invoke_3;
    v72[3] = &unk_1E7507AE0;
    v72[4] = &v77;
    [v52 _performChangeTrackingWithReason:@"fetchAuxiliaryChangeInfo" block:v73 xpcErrorHandler:v72];
    if (v78[5] || !*(*&buf[8] + 40))
    {
      v30 = +[REMLog changeTracking];
      v31 = v25;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v50 = [v78[5] localizedDescription];
        *v92 = 138543874;
        v93 = v50;
        v94 = 2112;
        v95 = v55;
        v96 = 2114;
        v97 = v29;
        _os_log_error_impl(&dword_19A0DB000, v30, OS_LOG_TYPE_ERROR, "Daemon returned error for auxiliary change info fetch with {error: %{public}@, changeObject: %@, auxChgInfoIds: %{public}@}", v92, 0x20u);
      }

      v32 = v31;
      v64 = 0;
    }

    else
    {
      v64 = v25;
      v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v29, "count")}];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v60 = v29;
      v34 = [v60 countByEnumeratingWithState:&v68 objects:v91 count:16];
      if (v34)
      {
        v62 = *v69;
        v53 = 138412802;
        do
        {
          v35 = v34;
          for (i = 0; i != v35; ++i)
          {
            if (*v69 != v62)
            {
              objc_enumerationMutation(v60);
            }

            v37 = *(*(&v68 + 1) + 8 * i);
            v38 = [v66 objectForKeyedSubscript:{v37, v53}];
            if (!v38)
            {
              v46 = +[REMLog changeTracking];
              [REMChangeTracking(REMAuxiliaryChangeInfoAdditions) fetchAuxiliaryChangeInfosOfType:v46 withChangeObject:? error:?];
            }

            v39 = [*(*&buf[8] + 40) objectForKeyedSubscript:v37];
            if (!v39)
            {
              v47 = +[REMLog changeTracking];
              [REMChangeTracking(REMAuxiliaryChangeInfoAdditions) fetchAuxiliaryChangeInfosOfType:v47 withChangeObject:? error:?];
            }

            v67 = 0;
            v40 = [v64 auxiliaryChangeInfoFromData:v39 withObjectID:v37 fromChangeObject:v38 error:&v67];
            v41 = v67;
            v42 = v67;
            if (v42 || !v40)
            {
              v43 = +[REMLog changeTracking];
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = [v42 localizedDescription];
                *v92 = v53;
                v93 = v38;
                v94 = 2114;
                v95 = v37;
                v96 = 2114;
                v97 = v44;
                v45 = v44;
                _os_log_error_impl(&dword_19A0DB000, v43, OS_LOG_TYPE_ERROR, "Failed to decode one of the change infos data for {changeObject: %@, objectID: %{public}@, decodeError: %{public}@}", v92, 0x20u);
              }

              objc_storeStrong(v78 + 5, v41);
            }

            else
            {
              [v57 addObject:v40];
            }
          }

          v34 = [v60 countByEnumeratingWithState:&v68 objects:v91 count:16];
        }

        while (v34);
      }

      [v64 setAuxiliaryChangeInfos:v57];
      v32 = v57;
    }

    if (a5)
    {
      *a5 = v78[5];
    }

    v33 = v64;

    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(buf, 8);
  }

  v48 = *MEMORY[0x1E69E9840];

  return v33;
}

uint64_t __109__REMChangeTracking_REMAuxiliaryChangeInfoAdditions__fetchAuxiliaryChangeInfosOfType_withChangeObject_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __109__REMChangeTracking_REMAuxiliaryChangeInfoAdditions__fetchAuxiliaryChangeInfosOfType_withChangeObject_error___block_invoke_2;
  v4[3] = &unk_1E7507FD8;
  v5 = *(a1 + 40);
  return [a2 fetchAuxiliaryChangeInfos:v2 completionHandler:v4];
}

void __109__REMChangeTracking_REMAuxiliaryChangeInfoAdditions__fetchAuxiliaryChangeInfosOfType_withChangeObject_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

void __85__REMChangeTracking_lastTransactionTimestampWithManagedObjectContext_affectedStores___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6(&dword_19A0DB000, v3, v4, "+[lastTransactionTimestampWithManagedObjectContext:affectedStores:] Failed to fetch history {error: %{public}@, affectedsStores: %@}");
  v5 = *MEMORY[0x1E69E9840];
}

void __85__REMChangeTracking_lastTransactionTimestampWithManagedObjectContext_affectedStores___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "+[lastTransactionTimestampWithManagedObjectContext:affectedStores:] Failed to obtain current PHT token {affectedsStores: %@}", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)fetchHistoryAfterToken:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!error) -- Daemon returned nil result and error for persistentHistoryFetch {token: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchHistoryAfterDate:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!error) -- Daemon returned nil result and error for persistentHistoryFetch {date: %{public}@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)persistenceStoreIDForAccountID:(NSObject *)a1 error:.cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __58__REMChangeTracking_persistenceStoreIDForAccountID_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6(&dword_19A0DB000, v3, v4, "xpc error while using debug performer {error: %{public}@, store: %@}");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_performChangeTrackingWithReason:(NSObject *)a1 block:xpcErrorHandler:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __76__REMChangeTracking__performChangeTrackingWithReason_block_xpcErrorHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6(&dword_19A0DB000, v3, v4, "xpc error while using changeTracking performer {error: %{public}@, store: %@}");
  v5 = *MEMORY[0x1E69E9840];
}

@end