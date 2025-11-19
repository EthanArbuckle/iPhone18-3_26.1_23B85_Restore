@interface REMStore
+ (BOOL)_shouldNotifyReminddOfInteractionWithPeople;
+ (BOOL)dataaccessDaemonStopSyncingReminders;
+ (BOOL)destroyIsolatedStoreContainerWithToken:(id)a3 error:(id *)a4;
+ (BOOL)isEventKitSyncEnabledForReminderKit;
+ (BOOL)notificationsEnabled;
+ (BOOL)siriShouldRouteIntentsToNewRemindersApp;
+ (id)createIsolatedStoreContainerWithError:(id *)a3;
+ (void)initialize;
+ (void)notifyOfInteractionWithPeople:(id)a3;
- (BOOL)_isUserInteractiveStore;
- (BOOL)containsCustomSmartListForTipKitWithError:(id *)a3;
- (BOOL)containsHashtagsForTipKitWithError:(id *)a3;
- (BOOL)containsListWithCustomBadgeForTipKitWithError:(id *)a3;
- (BOOL)deleteSharedGroceryList:(id)a3 error:(id *)a4;
- (BOOL)hasActiveCloudKitAccountForTipKitWithError:(id *)a3;
- (BOOL)saveSaveRequest:(id)a3 accountChangeItems:(id)a4 listChangeItems:(id)a5 listSectionChangeItems:(id)a6 smartListChangeItems:(id)a7 smartListSectionChangeItems:(id)a8 templateChangeItems:(id)a9 templateSectionChangeItems:(id)a10 reminderChangeItems:(id)a11 author:(id)a12 replicaManagerProvider:(id)a13 error:(id *)a14;
- (BOOL)test_revertImageAttachmentsToUnDeduped:(id)a3 error:(id *)a4;
- (REMStore)init;
- (REMStore)initWithDaemonController:(id)a3 storeContainerToken:(id)a4;
- (REMStore)initWithStoreContainerToken:(id)a3;
- (REMStore)nonUserInteractiveStore;
- (id)MCIsManagedAccountWithObjectID:(id)a3 error:(id *)a4;
- (id)_withInProgressSaveRequestContainer:(id)a3;
- (id)_xpcSyncStorePerformerWithReason:(id)a3 errorHandler:(id)a4;
- (id)compressedDistributedEvaluationDataWithOptions:(id)a3 error:(id *)a4;
- (id)createShareForListWithID:(id)a3 appIconData:(id)a4 error:(id *)a5;
- (id)createSharedGroceryListWithError:(id *)a3;
- (id)debugDescription;
- (id)debugFetchPhantomListsWithError:(id *)a3;
- (id)description;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (id)fetchAccountWithExternalIdentifier:(id)a3 error:(id *)a4;
- (id)fetchAccountWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchAccountsForDumpingWithError:(id *)a3;
- (id)fetchAccountsIncludingInactive:(BOOL)a3 error:(id *)a4;
- (id)fetchAccountsWithError:(id *)a3;
- (id)fetchAccountsWithExternalIdentifiers:(id)a3 error:(id *)a4;
- (id)fetchAccountsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchActiveCloudKitAccountObjectIDsWithFetchOption:(int64_t)a3 error:(id *)a4;
- (id)fetchAllListsWithExternalIdentifier:(id)a3 error:(id *)a4;
- (id)fetchAllRemindersWithExternalIdentifier:(id)a3 error:(id *)a4;
- (id)fetchCompletedRemindersForEventKitBridgingWithCompletionDateFrom:(id)a3 to:(id)a4 withListIDs:(id)a5 error:(id *)a6;
- (id)fetchCreatedOrCompletedRemindersCountForAppStoreFromDate:(id)a3 toDate:(id)a4 error:(id *)a5;
- (id)fetchCustomSmartListWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchCustomSmartListsWithError:(id *)a3;
- (id)fetchDefaultAccountWithError:(id *)a3;
- (id)fetchDefaultListRequiringCloudKitAccountWithAccountID:(id)a3 error:(id *)a4;
- (id)fetchDefaultListRequiringCloudKitWithError:(id *)a3;
- (id)fetchDefaultListWithError:(id *)a3;
- (id)fetchEligibleDefaultListsWithError:(id *)a3;
- (id)fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:(id)a3 error:(id *)a4;
- (id)fetchIncompleteRemindersCountForNewsRecipeCardWithBatchCreationID:(id)a3 error:(id *)a4;
- (id)fetchIncompleteRemindersForEventKitBridgingWithDueDateFrom:(id)a3 to:(id)a4 withListIDs:(id)a5 error:(id *)a6;
- (id)fetchIncompleteRemindersForNewsRecipeCardWithBatchCreationID:(id)a3 error:(id *)a4;
- (id)fetchListIncludingConcealedWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListIncludingMarkedForDeleteWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListIncludingSpecialContainerWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListRepresentationOfTemplateWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListSectionWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListSectionsCountWithListObjectID:(id)a3 error:(id *)a4;
- (id)fetchListSectionsForListSectionContext:(id)a3 error:(id *)a4;
- (id)fetchListSectionsForListSectionContextChangeItem:(id)a3 error:(id *)a4;
- (id)fetchListSectionsWithListObjectID:(id)a3 error:(id *)a4;
- (id)fetchListSectionsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchListWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchListsForEventKitBridgingWithError:(id *)a3;
- (id)fetchListsIncludingSpecialContainersInAccount:(id)a3 error:(id *)a4;
- (id)fetchListsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchMinimumSearchTermLengthByBaseLanguageWithError:(id *)a3;
- (id)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(id *)a3;
- (id)fetchPrimaryActiveCloudKitAccountWithError:(id *)a3;
- (id)fetchReminderIncludingConcealedWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchReminderWithDACalendarItemUniqueIdentifier:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)fetchReminderWithExternalIdentifier:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)fetchReminderWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchReminderWithObjectID:(id)a3 fetchOptions:(id)a4 error:(id *)a5;
- (id)fetchRemindersForEventKitBridgingWithListIDs:(id)a3 error:(id *)a4;
- (id)fetchRemindersIncludingUnsupportedWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchRemindersMatchingPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(id)a5 error:(id *)a6;
- (id)fetchRemindersMatchingTitle:(id)a3 dueAfter:(id)a4 dueBefore:(id)a5 isCompleted:(id)a6 hasLocation:(id)a7 location:(id)a8 error:(id *)a9;
- (id)fetchRemindersWithDACalendarItemUniqueIdentifiers:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)fetchRemindersWithExternalIdentifiers:(id)a3 inList:(id)a4 error:(id *)a5;
- (id)fetchRemindersWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchRemindersWithObjectIDs:(id)a3 fetchOptions:(id)a4 error:(id *)a5;
- (id)fetchRemindersWithParentReminderIDs:(id)a3 error:(id *)a4;
- (id)fetchReplicaManagerForAccountID:(id)a3 error:(id *)a4;
- (id)fetchReplicaManagersForAccountID:(id)a3 bundleID:(id)a4 error:(id *)a5;
- (id)fetchResultByExecutingFetchRequest:(id)a3 error:(id *)a4;
- (id)fetchShareForListWithID:(id)a3 error:(id *)a4;
- (id)fetchSiriFoundInAppsListWithError:(id *)a3;
- (id)fetchSmartListSectionWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchSmartListSectionsForSmartListSectionContext:(id)a3 error:(id *)a4;
- (id)fetchSmartListSectionsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchTemplateSectionWithObjectID:(id)a3 error:(id *)a4;
- (id)fetchTemplateSectionsForTemplateSectionContext:(id)a3 error:(id *)a4;
- (id)fetchTemplateSectionsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)fetchTemplateWithObjectID:(id)a3 error:(id *)a4;
- (id)initUserInteractive:(BOOL)a3;
- (id)optimisticallyMaterializeReminderChangeItem:(id)a3;
- (id)provideAnonymousChangeTrackingWithTransactionAuthorKeysToExclude:(id)a3;
- (id)provideChangeTrackingForAccountID:(id)a3 clientName:(id)a4 transactionAuthorKeysToExclude:(id)a5;
- (id)refreshAccount:(id)a3;
- (id)refreshList:(id)a3;
- (id)refreshReminder:(id)a3;
- (id)repairPhantomObjectsWithObjectIDs:(id)a3 error:(id *)a4;
- (id)replicaManagerProviderForCalDAVSync;
- (id)resultFromPerformingInvocation:(id)a3 error:(id *)a4;
- (id)resultFromPerformingSwiftInvocation:(id)a3 parametersData:(id)a4 storages:(id)a5 error:(id *)a6;
- (id)resultsIndexedByObjectIDFromExecutingFetchRequest:(id)a3 error:(id *)a4;
- (id)sharedGroceryListForFamilyChecklistWithCommonParticipants:(id)a3 error:(id *)a4;
- (id)test_immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id)test_immediatelyRevokePublicLinkOfTemplateWithTemplateObjectID:(id)a3 error:(id *)a4;
- (unint64_t)completedRemindersCountForTipKitWithError:(id *)a3;
- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4;
- (void)_addChangeItemChangedKeys:(id)a3 objectID:(id)a4 toChangedKeysMap:(id)a5;
- (void)_enumerateAllListsIncludingGroups:(BOOL)a3 withBlock:(id)a4;
- (void)_respondToCalDAVSharedList:(id)a3 withResponse:(int64_t)a4 queue:(id)a5 completion:(id)a6;
- (void)_saveAccountChangeItems:(id)a3 listChangeItems:(id)a4 listSectionChangeItems:(id)a5 smartListChangeItems:(id)a6 smartListSectionChangeItems:(id)a7 templateChangeItems:(id)a8 templateSectionChangeItems:(id)a9 reminderChangeItems:(id)a10 author:(id)a11 replicaManagerProvider:(id)a12 synchronously:(BOOL)a13 syncToCloudKit:(BOOL)a14 performer:(id)a15 completion:(id)a16;
- (void)_triggerSyncWithReason:(id)a3 skipDataAccessSync:(BOOL)a4 forcingCloudKitReload:(BOOL)a5 discretionary:(BOOL)a6 bypassThrottler:(BOOL)a7 completion:(id)a8;
- (void)acceptShareWithMetadata:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)addCKShareObserverIfNeededForAccountID:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)addParticipantsToSharedGroceryList:(id)a3 completion:(id)a4;
- (void)anchoredBubbleCloudOverridesWithCompletion:(id)a3;
- (void)enumerateAllRemindersWithBlock:(id)a3;
- (void)invalidate;
- (void)notifyOfInteractionWithPeople:(id)a3 force:(BOOL)a4 completion:(id)a5;
- (void)nukeDatabase;
- (void)postFamilyAnalyticsPayloadWithOperationId:(id)a3 operationDetail:(id)a4;
- (void)processNoOpSaveRequest:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)removeOrphanedAccountsWithCompletion:(id)a3;
- (void)requestDownloadGroceryModelAssetsFromTrial;
- (void)requestToDeleteLocalDataWithCompletion:(id)a3;
- (void)requestToDeleteSyncDataWithAccountIdentifier:(id)a3 completion:(id)a4;
- (void)requestToMergeLocalDataIntoSyncDataWithAccountIdentifier:(id)a3 completion:(id)a4;
- (void)saveSaveRequest:(id)a3 accountChangeItems:(id)a4 listChangeItems:(id)a5 listSectionChangeItems:(id)a6 smartListChangeItems:(id)a7 smartListSectionChangeItems:(id)a8 templateChangeItems:(id)a9 templateSectionChangeItems:(id)a10 reminderChangeItems:(id)a11 author:(id)a12 replicaManagerProvider:(id)a13 queue:(id)a14 completion:(id)a15;
- (void)stopShare:(id)a3 accountID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)test_handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout:(double)a3;
- (void)test_handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout:(double)a3;
- (void)test_handleIncompleteTemplateOperationQueueItemsImmediately;
- (void)test_initDummyAutoCategorizationWithCategoryByTitle:(id)a3;
- (void)test_refreshHashtagLabelsImmediately;
- (void)test_setupForManualHashtagLabelRefreshing;
- (void)triggerSyncForDataAccessAccountsWithAccountIDs:(id)a3;
- (void)updateAccountWithAccountID:(id)a3 restartDA:(BOOL)a4 completion:(id)a5;
- (void)updateAccountsAndSync:(BOOL)a3 completion:(id)a4;
- (void)updateShare:(id)a3 accountID:(id)a4 queue:(id)a5 completion:(id)a6;
@end

@implementation REMStore

- (REMStore)init
{
  v3 = +[REMXPCDaemonController weakSharedInstance];
  v4 = [(REMStore *)self initWithDaemonController:v3 storeContainerToken:0];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = _REMStoreChangedNotificationName;
    v3 = +[REMDispatchQueue storeQueue];
    notify_register_dispatch(v2, &initialize_token, v3, &__block_literal_global_2);
  }
}

- (REMStore)nonUserInteractiveStore
{
  if (self->_nonUserInteractiveStore)
  {
    self = self->_nonUserInteractiveStore;
  }

  return self;
}

- (void)requestDownloadGroceryModelAssetsFromTrial
{
  v2 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"requestDownloadGroceryModelAssetsFromTrial" errorHandler:&__block_literal_global_480];
  [v2 requestDownloadGroceryModelAssetsFromTrial];
}

- (BOOL)_isUserInteractiveStore
{
  v2 = [(REMStore *)self nonUserInteractiveStore];
  v3 = v2 != 0;

  return v3;
}

void __22__REMStore_initialize__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"REMStoreDidChangeNotification" object:0];
}

+ (id)createIsolatedStoreContainerWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v4 = +[REMXPCDaemonController weakSharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__REMStore_createIsolatedStoreContainerWithError___block_invoke;
  v9[3] = &unk_1E7507AE0;
  v9[4] = &v16;
  v5 = [v4 syncDebugPerformerWithReason:@"createIsolatedStoreContainer" errorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__REMStore_createIsolatedStoreContainerWithError___block_invoke_2;
  v8[3] = &unk_1E7507B08;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 createIsolatedStoreContainerWithCompletion:v8];
  if (a3)
  {
    *a3 = v17[5];
  }

  v6 = v11[5];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return v6;
}

void __50__REMStore_createIsolatedStoreContainerWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLog xpc];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__REMStore_createIsolatedStoreContainerWithError___block_invoke_2_cold_1();
    }

    v9 = 32;
    v10 = v6;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Did create isolated store container {token: %@}", &v15, 0xCu);
    }

    v9 = 40;
    v10 = v5;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = v10;
  v13 = *(v11 + 40);
  *(v11 + 40) = v12;

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)destroyIsolatedStoreContainerWithToken:(id)a3 error:(id *)a4
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v6 = +[REMXPCDaemonController weakSharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke;
  v11[3] = &unk_1E7507B58;
  v7 = v5;
  v12 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke_32;
  v10[3] = &unk_1E7507B80;
  v10[4] = &v13;
  v10[5] = &v17;
  [v6 asyncDebugPerformerWithReason:@"destroyIsolatedStoreContainerWithToken" loadHandler:v11 errorHandler:v10];
  v8 = *(v14 + 24);
  if (a4 && (v14[3] & 1) == 0)
  {
    *a4 = v18[5];
    v8 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v8 & 1;
}

void __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke_2;
  v4[3] = &unk_1E7507B30;
  v5 = v3;
  [a2 destroyIsolatedStoreContainerWithToken:v5 completion:v4];
}

void __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[REMLog xpc];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke_2_cold_1(v3, a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Did destroy isolated store container {token: %@}", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke_32_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (REMStore)initWithStoreContainerToken:(id)a3
{
  v4 = a3;
  v5 = [[REMXPCDaemonController alloc] initWithStoreContainerToken:v4];
  v6 = [(REMStore *)self initWithDaemonController:v5 storeContainerToken:v4];

  return v6;
}

- (id)initUserInteractive:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    +[REMXPCDaemonController userInteractiveDaemonController];
  }

  else
  {
    +[REMXPCDaemonController weakSharedInstance];
  }
  v5 = ;
  v6 = [(REMStore *)self initWithDaemonController:v5 storeContainerToken:0];
  if (v3)
  {
    v7 = objc_alloc_init(REMStore);
    nonUserInteractiveStore = v6->_nonUserInteractiveStore;
    v6->_nonUserInteractiveStore = v7;
  }

  return v6;
}

- (REMStore)initWithDaemonController:(id)a3 storeContainerToken:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = REMStore;
  v9 = [(REMStore *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemonController, a3);
    if (v10->_storeContainerToken)
    {
      v11 = +[REMLog xpc];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_INFO, "Created isolated store {store: %@}", buf, 0xCu);
      }
    }

    objc_storeStrong(&v10->_storeContainerToken, a4);
    v10->_lock._os_unfair_lock_opaque = 0;
    v12 = objc_alloc_init(_REMInProgressSaveRequestsContainer);
    l_inProgressSaveRequestsContainer = v10->_l_inProgressSaveRequestsContainer;
    v10->_l_inProgressSaveRequestsContainer = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)description
{
  v3 = [(REMStore *)self storeContainerToken];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = [(REMStore *)self storeGeneration];
    v7 = [(REMStore *)self storeContainerToken];
    v8 = [v4 stringWithFormat:@"<%@: %p[%ld] storeContainerToken: %@>", v5, self, v6, v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = REMStore;
    v8 = [(REMStore *)&v10 description];
  }

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(REMStore *)self description];
  v5 = [(REMStore *)self l_inProgressSaveRequestsContainer];
  v6 = [v3 stringWithFormat:@"<%@ inProgressSaveRequestContainer: %@>", v4, v5];

  return v6;
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(REMStore *)self storeContainerToken];

  v4 = +[REMLogStore xpc];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating REMStore {store: %@}", &v7, 0xCu);
    }

    v4 = [(REMStore *)self daemonController];
    [v4 invalidate];
  }

  else if (v5)
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_DEFAULT, "Not invalidating connection for REMStore because its not an isolated store {store: %@}", &v7, 0xCu);
  }

  [(REMStore *)self setDaemonController:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)nukeDatabase
{
  v2 = [(REMStore *)self daemonController];
  v3 = [v2 syncDebugPerformerWithReason:@"nukeDatabase" errorHandler:&__block_literal_global_48];

  [v3 nukeDatabase:&__block_literal_global_51];
}

void __24__REMStore_nukeDatabase__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

void __24__REMStore_nukeDatabase__block_invoke_49(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_DEFAULT, "Nuked database with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)fetchAccountsWithError:(id *)a3
{
  v4 = [[REMAccountsDataView alloc] initWithStore:self];
  v5 = [(REMAccountsDataView *)v4 fetchAllAccountsWithError:a3];

  return v5;
}

- (id)fetchAccountsIncludingInactive:(BOOL)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = [[REMAccountsDataView alloc] initWithStore:self];
    v6 = [(REMAccountsDataView *)v5 fetchAllAccountsForAccountManagementWithError:a4];
  }

  else
  {
    v6 = [(REMStore *)self fetchAccountsWithError:a4];
  }

  return v6;
}

- (id)fetchAccountsForDumpingWithError:(id *)a3
{
  v4 = [[REMAccountsDataView alloc] initWithStore:self];
  v5 = [(REMAccountsDataView *)v4 fetchAllAccountsForDumpingWithError:a3];

  return v5;
}

- (id)fetchSiriFoundInAppsListWithError:(id *)a3
{
  v5 = +[REMList siriFoundInAppsListID];
  v6 = [(REMStore *)self fetchListWithObjectID:v5 error:a3];

  return v6;
}

- (id)refreshAccount:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__REMStore_refreshAccount___block_invoke;
  v11[3] = &unk_1E7507BC8;
  v12 = v4;
  v5 = v4;
  v6 = [(REMStore *)self _withInProgressSaveRequestContainer:v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

- (id)refreshList:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __24__REMStore_refreshList___block_invoke;
  v11[3] = &unk_1E7507BC8;
  v12 = v4;
  v5 = v4;
  v6 = [(REMStore *)self _withInProgressSaveRequestContainer:v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

- (id)refreshReminder:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __28__REMStore_refreshReminder___block_invoke;
  v11[3] = &unk_1E7507BC8;
  v12 = v4;
  v5 = v4;
  v6 = [(REMStore *)self _withInProgressSaveRequestContainer:v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

- (id)optimisticallyMaterializeReminderChangeItem:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__REMStore_optimisticallyMaterializeReminderChangeItem___block_invoke;
  v8[3] = &unk_1E7507BC8;
  v9 = v4;
  v5 = v4;
  v6 = [(REMStore *)self _withInProgressSaveRequestContainer:v8];

  return v6;
}

- (id)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(id *)a3
{
  v4 = [[REMAccountsDataView alloc] initWithStore:self];
  v5 = [(REMAccountsDataView *)v4 fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:a3];

  return v5;
}

- (id)fetchPrimaryActiveCloudKitAccountWithError:(id *)a3
{
  v4 = [[REMAccountsDataView alloc] initWithStore:self];
  v5 = [(REMAccountsDataView *)v4 fetchPrimaryActiveCloudKitAccountWithError:a3];

  return v5;
}

- (id)fetchActiveCloudKitAccountObjectIDsWithFetchOption:(int64_t)a3 error:(id *)a4
{
  v6 = [[REMAccountsDataView alloc] initWithStore:self];
  v7 = [(REMAccountsDataView *)v6 fetchActiveCloudKitAccountObjectIDsWithFetchOption:a3 error:a4];

  return v7;
}

- (id)fetchAccountWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "accountObjectID");
  }

  v7 = [[REMAccountsDataView alloc] initWithStore:self];
  v8 = [(REMAccountsDataView *)v7 fetchAccountWithObjectID:v6 error:a4];

  return v8;
}

- (id)fetchAccountsWithObjectIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "accountObjectIDs");
  }

  v7 = [[REMAccountsDataView alloc] initWithStore:self];
  v8 = [(REMAccountsDataView *)v7 fetchAccountsWithObjectIDs:v6 error:a4];

  return v8;
}

- (id)fetchListWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  }

  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchListWithObjectID:v6 error:a4];

  return v8;
}

- (id)fetchListsWithObjectIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listIDs");
  }

  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchListsWithObjectIDs:v6 error:a4];

  return v8;
}

- (id)fetchCustomSmartListWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMSmartListsDataView alloc] initWithStore:self];
  v8 = [(REMSmartListsDataView *)v7 fetchCustomSmartListWithObjectID:v6 error:a4];

  return v8;
}

- (id)fetchCustomSmartListsWithError:(id *)a3
{
  v4 = [[REMSmartListsDataView alloc] initWithStore:self];
  v5 = [(REMSmartListsDataView *)v4 fetchCustomSmartListsWithError:a3];

  return v5;
}

- (id)fetchRemindersWithObjectIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[REMReminderFetchOptions defaultFetchOptions];
  v8 = [(REMStore *)self fetchRemindersWithObjectIDs:v6 fetchOptions:v7 error:a4];

  return v8;
}

- (id)fetchRemindersWithObjectIDs:(id)a3 fetchOptions:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[REMRemindersDataView alloc] initWithStore:self];
  v11 = [(REMRemindersDataView *)v10 fetchRemindersWithObjectIDs:v9 fetchOptions:v8 error:a5];

  return v11;
}

- (id)fetchRemindersMatchingPredicateDescriptor:(id)a3 sortDescriptors:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[REMRemindersDataView alloc] initWithStore:self];
  v14 = [(REMRemindersDataView *)v13 fetchRemindersMatchingPredicateDescriptor:v12 sortDescriptors:v11 options:v10 error:a6];

  return v14;
}

- (id)fetchRemindersWithParentReminderIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMRemindersDataView alloc] initWithStore:self];
  v8 = [(REMRemindersDataView *)v7 fetchRemindersWithParentReminderIDs:v6 error:a4];

  return v8;
}

- (id)fetchReminderWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  }

  v7 = +[REMReminderFetchOptions defaultFetchOptions];
  v8 = [(REMStore *)self fetchReminderWithObjectID:v6 fetchOptions:v7 error:a4];

  return v8;
}

- (id)fetchReminderWithObjectID:(id)a3 fetchOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  }

  v10 = [[REMRemindersDataView alloc] initWithStore:self];
  v11 = [(REMRemindersDataView *)v10 fetchReminderWithObjectID:v8 fetchOptions:v9 error:a5];

  return v11;
}

- (id)fetchReplicaManagerForAccountID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "accountID");
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke;
  v16[3] = &unk_1E7507BF0;
  v7 = v6;
  v17 = v7;
  v18 = &v25;
  v8 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"fetchReplicaManagerForAccountID:" errorHandler:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke_70;
  v12[3] = &unk_1E7507C18;
  v9 = v7;
  v13 = v9;
  v14 = &v19;
  v15 = &v25;
  [v8 fetchReplicaManagerForAccountID:v9 completion:v12];
  if (a4)
  {
    *a4 = v26[5];
  }

  v10 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v10;
}

void __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLogStore read];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke_70_cold_1(v6, a1);
    }

    v9 = 48;
    v10 = v6;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Store replica manager fetch successful {account: %@, fetchSerializedData: %@}", &v13, 0x16u);
  }

  if (v5)
  {
    v9 = 40;
    v10 = v5;
LABEL_9:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)fetchReplicaManagersForAccountID:(id)a3 bundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__REMStore_fetchReplicaManagersForAccountID_bundleID_error___block_invoke;
  v21[3] = &unk_1E7507BF0;
  v10 = v8;
  v22 = v10;
  v23 = &v30;
  v11 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"fetchReplicaManagersForAccountID" errorHandler:v21];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__REMStore_fetchReplicaManagersForAccountID_bundleID_error___block_invoke_75;
  v16[3] = &unk_1E7507C40;
  v12 = v10;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v19 = &v24;
  v20 = &v30;
  [v11 fetchReplicaManagersForAccountID:v12 bundleID:v13 completion:v16];
  if (a5)
  {
    *a5 = v31[5];
  }

  v14 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void __60__REMStore_fetchReplicaManagersForAccountID_bundleID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __60__REMStore_fetchReplicaManagersForAccountID_bundleID_error___block_invoke_75(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLogStore read];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __60__REMStore_fetchReplicaManagersForAccountID_bundleID_error___block_invoke_75_cold_1(v6, a1);
    }

    v9 = 56;
    v10 = v6;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = 138412802;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2048;
    v19 = [v5 count];
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Store replica manager fetch successful {account: %@, bundleID: %@, managerByID.count: %lu}", &v14, 0x20u);
  }

  if (v5)
  {
    v9 = 48;
    v10 = v5;
LABEL_9:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveSaveRequest:(id)a3 accountChangeItems:(id)a4 listChangeItems:(id)a5 listSectionChangeItems:(id)a6 smartListChangeItems:(id)a7 smartListSectionChangeItems:(id)a8 templateChangeItems:(id)a9 templateSectionChangeItems:(id)a10 reminderChangeItems:(id)a11 author:(id)a12 replicaManagerProvider:(id)a13 error:(id *)a14
{
  v35 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v36 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__1;
  v54 = __Block_byref_object_dispose__1;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  [(REMStore *)self _incrementStoreGeneration];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke;
  v44[3] = &unk_1E7507BC8;
  v26 = v35;
  v45 = v26;
  v27 = [(REMStore *)self _withInProgressSaveRequestContainer:v44];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke_2;
  v43[3] = &unk_1E7507C68;
  v43[4] = self;
  v43[5] = &v50;
  v43[6] = &v46;
  v28 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"saveRequest" errorHandler:v43];
  v29 = [v26 syncToCloudKit];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke_80;
  v42[3] = &unk_1E7507B80;
  v42[4] = &v50;
  v42[5] = &v46;
  BYTE1(v34) = v29;
  LOBYTE(v34) = 1;
  [(REMStore *)self _saveAccountChangeItems:v39 listChangeItems:v38 listSectionChangeItems:v37 smartListChangeItems:v36 smartListSectionChangeItems:v20 templateChangeItems:v21 templateSectionChangeItems:v22 reminderChangeItems:v23 author:v24 replicaManagerProvider:v25 synchronously:v34 syncToCloudKit:v28 performer:v42 completion:?];
  if (a14)
  {
    *a14 = v51[5];
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke_2_81;
  v40[3] = &unk_1E7507BC8;
  v30 = v26;
  v41 = v30;
  v31 = [(REMStore *)self _withInProgressSaveRequestContainer:v40];
  v32 = *(v47 + 24);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  return v32;
}

void __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke_2_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

void __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke_80(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;
}

- (void)saveSaveRequest:(id)a3 accountChangeItems:(id)a4 listChangeItems:(id)a5 listSectionChangeItems:(id)a6 smartListChangeItems:(id)a7 smartListSectionChangeItems:(id)a8 templateChangeItems:(id)a9 templateSectionChangeItems:(id)a10 reminderChangeItems:(id)a11 author:(id)a12 replicaManagerProvider:(id)a13 queue:(id)a14 completion:(id)a15
{
  v50 = a3;
  v53 = a4;
  v52 = a5;
  v21 = a6;
  v22 = a7;
  v39 = a8;
  v23 = a9;
  v40 = a10;
  v24 = a11;
  v43 = a12;
  v45 = a13;
  v25 = a14;
  v26 = a15;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke;
  v71[3] = &unk_1E7507CB8;
  v72 = v25;
  v73 = self;
  v27 = v50;
  v74 = v27;
  v75 = v26;
  v51 = v26;
  v49 = v25;
  v47 = MEMORY[0x19A8FD720](v71);
  [(REMStore *)self _incrementStoreGeneration];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_4;
  v69[3] = &unk_1E7507BC8;
  v28 = v27;
  v70 = v28;
  v29 = [(REMStore *)self _withInProgressSaveRequestContainer:v69];
  v38 = [(REMStore *)self daemonController];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_5;
  v56[3] = &unk_1E7507D08;
  v56[4] = self;
  v57 = v53;
  v58 = v52;
  v59 = v21;
  v30 = v21;
  v60 = v22;
  v61 = v39;
  v62 = v23;
  v63 = v40;
  v64 = v24;
  v65 = v43;
  v66 = v45;
  v67 = v28;
  v68 = v47;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_7;
  v54[3] = &unk_1E7507D30;
  v54[4] = self;
  v55 = v68;
  v31 = v68;
  v48 = v28;
  v46 = v45;
  v44 = v43;
  v42 = v24;
  v32 = v40;
  v41 = v23;
  v33 = v39;
  v34 = v22;
  v35 = v30;
  v36 = v52;
  v37 = v53;
  [v38 asyncStorePerformerWithReason:@"saveRequest" loadHandler:v56 errorHandler:v54];
}

void __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_2;
  v8[3] = &unk_1E7507C90;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v5;
  v6 = *(a1 + 56);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

void __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_3;
  v5[3] = &unk_1E7507BC8;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [v2 _withInProgressSaveRequestContainer:v5];
  v4 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

void __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v3 = *(a1 + 56);
  v13 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v12 = *(a1 + 88);
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  v9 = *(a1 + 120);
  v10 = a2;
  LOBYTE(v9) = [v9 syncToCloudKit];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_6;
  v16[3] = &unk_1E7507CE0;
  v17 = *(a1 + 128);
  BYTE1(v11) = v9;
  LOBYTE(v11) = 0;
  [v15 _saveAccountChangeItems:v14 listChangeItems:v13 listSectionChangeItems:v3 smartListChangeItems:v4 smartListSectionChangeItems:v5 templateChangeItems:v6 templateSectionChangeItems:v12 reminderChangeItems:v7 author:v8 replicaManagerProvider:v11 synchronously:v10 syncToCloudKit:v16 performer:? completion:?];
}

void __249__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_queue_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke_2_cold_1(v3, a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)processNoOpSaveRequest:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__REMStore_processNoOpSaveRequest_queue_completion___block_invoke;
  v18[3] = &unk_1E7507BC8;
  v10 = v8;
  v19 = v10;
  v11 = a4;
  v12 = [(REMStore *)self _withInProgressSaveRequestContainer:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__REMStore_processNoOpSaveRequest_queue_completion___block_invoke_2;
  v15[3] = &unk_1E7507D58;
  v15[4] = self;
  v16 = v10;
  v17 = v9;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __52__REMStore_processNoOpSaveRequest_queue_completion___block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__REMStore_processNoOpSaveRequest_queue_completion___block_invoke_3;
  v4[3] = &unk_1E7507BC8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _withInProgressSaveRequestContainer:v4];
  (*(*(a1 + 48) + 16))();
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(REMStore *)self fetchResultByExecutingFetchRequest:v6 error:a4];
  if (v7)
  {
    v8 = [v6 fetchExecutor];
    v15 = 0;
    v9 = [v8 resultsFromFetchResult:v7 inStore:self error:&v15];
    v10 = v15;

    if (!v9)
    {
      v11 = +[REMLogStore read];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v6;
        _os_log_error_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_ERROR, "Failed to get results from fetchResult {error: %@, fetchResult: %@, fetchRequest: %@}", buf, 0x20u);
      }

      if (a4)
      {
        v12 = v10;
        *a4 = v10;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)resultsIndexedByObjectIDFromExecutingFetchRequest:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMSignpost database];
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "REMStore.fetchByObjectID", &unk_19A233B9D, buf, 2u);
  }

  v12 = [(REMStore *)self executeFetchRequest:v6 error:a4];
  if (v12)
  {
    v25 = v8;
    v26 = v6;
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [v19 remObjectID];
          [v13 setObject:v19 forKeyedSubscript:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v16);
    }

    v8 = v25;
    v6 = v26;
  }

  else
  {
    v13 = 0;
  }

  v21 = v10;
  v22 = v21;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v22, OS_SIGNPOST_INTERVAL_END, v8, "REMStore.fetchByObjectID", &unk_19A233B9D, buf, 2u);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = [a3 copy];
  v7 = [(REMStore *)self fetchResultByExecutingFetchRequest:v6 error:a4];
  v8 = [v7 count];

  return v8;
}

- (id)fetchResultByExecutingFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke;
  v17[3] = &unk_1E7507BF0;
  v7 = v6;
  v18 = v7;
  v19 = &v26;
  v8 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"fetchRequest" errorHandler:v17];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke_88;
  v12[3] = &unk_1E7507D80;
  v9 = v7;
  v13 = v9;
  v14 = self;
  v15 = &v20;
  v16 = &v26;
  [v8 executeFetchRequest:v9 completion:v12];
  if (a4)
  {
    *a4 = v27[5];
  }

  v10 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

void __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke_88(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLogStore read];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke_88_cold_1(v6, a1);
    }

    v9 = *(a1[7] + 8);
    v10 = v6;
LABEL_11:
    v13 = *(v9 + 40);
    *(v9 + 40) = v10;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    v22 = 138412546;
    v23 = v11;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Store fetch successful {fetchRequest: %@, fetchResult: %@}", &v22, 0x16u);
  }

  v12 = +[REMLogStore read];
  v13 = v12;
  if (v5)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_INFO, "Successfully executed fetch {fetchResult: %@}", &v22, 0xCu);
    }

    v9 = *(a1[6] + 8);
    v10 = v5;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke_88_cold_2(v13, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

- (id)resultFromPerformingInvocation:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(REMStore *)self assertOnMainThreadFetches])
  {
    dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  }

  [(REMStore *)self _incrementStoreGeneration];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  v42 = 0;
  v7 = _os_activity_create(&dword_19A0DB000, "REMStore Invocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [(REMStore *)self _isUserInteractiveStore];
  v9 = +[REMSignpost database];
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = [v6 name];
    v14 = v13;
    v15 = [v13 cStringUsingEncoding:1];
    *buf = 136446466;
    v50 = v15;
    v51 = 1026;
    v52 = v8;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "REMStore.invocation", " enableTelemetry=YES Name=%{public, signpost.telemetry:string1, Name=InvocationName}s UserInteractive=%{public, signpost.telemetry:number1, Name=UserInteractive}d", buf, 0x12u);
  }

  v16 = +[REMLogStore read];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v6 name];
    *buf = 138543362;
    v50 = v17;
    _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_DEFAULT, "FETCH START {name: %{public}@}", buf, 0xCu);
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = [v6 name];
  v20 = [v18 stringWithFormat:@"inv_%@", v19];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __49__REMStore_resultFromPerformingInvocation_error___block_invoke;
  v33[3] = &unk_1E7507BF0;
  v21 = v6;
  v34 = v21;
  v35 = &v43;
  v22 = [(REMStore *)self _xpcSyncStorePerformerWithReason:v20 errorHandler:v33];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __49__REMStore_resultFromPerformingInvocation_error___block_invoke_93;
  v29[3] = &unk_1E7507DA8;
  v23 = v21;
  v30 = v23;
  v31 = &v37;
  v32 = &v43;
  [v22 performInvocation:v23 completion:v29];
  if (a4)
  {
    *a4 = v44[5];
  }

  v24 = v12;
  v25 = v24;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v25, OS_SIGNPOST_INTERVAL_END, v10, "REMStore.invocation", " enableTelemetry=YES ", buf, 2u);
  }

  v26 = v38[5];
  os_activity_scope_leave(&state);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

void __49__REMStore_resultFromPerformingInvocation_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__REMStore_resultFromPerformingInvocation_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __49__REMStore_resultFromPerformingInvocation_error___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLogStore read];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__REMStore_resultFromPerformingInvocation_error___block_invoke_93_cold_1();
    }

    v9 = 48;
    v10 = v6;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) name];
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "FETCH END {name: %{public}@}", &v16, 0xCu);
    }

    v9 = 40;
    v10 = v5;
  }

  v12 = *(*(a1 + v9) + 8);
  v13 = v10;
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)resultFromPerformingSwiftInvocation:(id)a3 parametersData:(id)a4 storages:(id)a5 error:(id *)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v41 = a4;
  v42 = a5;
  if ([(REMStore *)self assertOnMainThreadFetches])
  {
    dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  }

  [(REMStore *)self _incrementStoreGeneration];
  v11 = resultFromPerformingSwiftInvocation_parametersData_storages_error__globalInvocationCounter++;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__1;
  v63 = __Block_byref_object_dispose__1;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__1;
  v57 = __Block_byref_object_dispose__1;
  v58 = 0;
  v12 = _os_activity_create(&dword_19A0DB000, "REMStore swiftInvocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  v13 = [(REMStore *)self _isUserInteractiveStore];
  v40 = v12;
  v14 = +[REMSignpost database];
  v15 = os_signpost_id_generate(v14);
  v16 = v14;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [v10 name];
    v19 = v18;
    v20 = [v18 cStringUsingEncoding:1];
    *buf = 136446466;
    v66 = v20;
    v67 = 1026;
    LODWORD(v68) = v13;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "REMStore.invocation", " enableTelemetry=YES Name=%{public, signpost.telemetry:string1, Name=InvocationName}s UserInteractive=%{public, signpost.telemetry:number1, Name=UserInteractive}d", buf, 0x12u);
  }

  v21 = +[REMLogStore read];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v10 name];
    v23 = [v41 length];
    v24 = [v42 count];
    *buf = 134218754;
    v66 = v11;
    v67 = 2114;
    v68 = v22;
    v69 = 2048;
    v70 = v23;
    v71 = 2048;
    v72 = v24;
    _os_log_impl(&dword_19A0DB000, v21, OS_LOG_TYPE_DEFAULT, "FETCH START {invocationCounter: %ld, name: %{public}@, parametersData.length %ld, storages.count: %ld}", buf, 0x2Au);
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = [v10 name];
  v27 = [v25 stringWithFormat:@"swInv_%@", v26];

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __78__REMStore_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke;
  v48[3] = &unk_1E7507DD0;
  v51 = v11;
  v28 = v10;
  v49 = v28;
  v50 = &v59;
  v29 = [(REMStore *)self _xpcSyncStorePerformerWithReason:v27 errorHandler:v48];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __78__REMStore_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_98;
  v43[3] = &unk_1E7507DF8;
  v47 = v11;
  v30 = v28;
  v44 = v30;
  v45 = &v53;
  v46 = &v59;
  [v29 performSwiftInvocation:v30 withParametersData:v41 storages:v42 completion:v43];
  if (a6)
  {
    *a6 = v60[5];
  }

  v31 = v17;
  v32 = v31;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    v33 = [v54[5] resultStorages];
    v34 = [v33 count];
    v35 = [v54[5] resultData];
    v36 = [v35 length];
    *buf = 134349312;
    v66 = v34;
    v67 = 2050;
    v68 = v36;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v32, OS_SIGNPOST_INTERVAL_END, v15, "REMStore.invocation", " enableTelemetry=YES ResultCount=%{public, signpost.telemetry:number1, Name:ResultCount}ld DataSize=%{public, signpost.telemetry:number2, Name:DataSize}ld", buf, 0x16u);
  }

  v37 = v54[5];
  os_activity_scope_leave(&state);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

void __78__REMStore_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__REMStore_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __78__REMStore_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_98(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLogStore read];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__REMStore_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_98_cold_1();
    }

    v9 = 48;
    v10 = v6;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 56);
      v12 = [*(a1 + 32) name];
      v13 = [v5 resultData];
      v14 = [v13 length];
      v15 = [v5 resultStorages];
      v20 = 134218754;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      v24 = 2048;
      v25 = v14;
      v26 = 2048;
      v27 = [v15 count];
      _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "FETCH END {invocationCounter: %ld, name: %{public}@, result.data.length: %ld, result.storages.count: %ld}", &v20, 0x2Au);
    }

    v9 = 40;
    v10 = v5;
  }

  v16 = *(*(a1 + v9) + 8);
  v17 = v10;
  v18 = *(v16 + 40);
  *(v16 + 40) = v17;

  v19 = *MEMORY[0x1E69E9840];
}

- (void)enumerateAllRemindersWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__REMStore_enumerateAllRemindersWithBlock___block_invoke;
    v6[3] = &unk_1E7507E20;
    v7 = v4;
    [(REMStore *)self enumerateAllListsWithBlock:v6];
  }
}

void __43__REMStore_enumerateAllRemindersWithBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v22 = 0;
  v21 = 0;
  v6 = [v5 fetchRemindersWithError:&v21];
  v7 = v21;
  if (v7)
  {
    v8 = +[REMLogStore read];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __43__REMStore_enumerateAllRemindersWithBlock___block_invoke_cold_1(v5, v7);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (v22 == 1)
        {
          *a3 = v22;
          objc_autoreleasePoolPop(v15);
          goto LABEL_15;
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateAllListsIncludingGroups:(BOOL)a3 withBlock:(id)a4
{
  v4 = a3;
  v69 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v61 = 0;
    v60 = 0;
    v7 = [(REMStore *)self fetchAccountsWithError:&v60];
    v8 = v60;
    v9 = 0x1E7506000uLL;
    if (v8)
    {
      v10 = +[REMLogStore read];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [REMStore _enumerateAllListsIncludingGroups:v8 withBlock:?];
      }
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v12)
    {
      v14 = *v57;
      *&v13 = 138412546;
      v35 = v13;
      v37 = v4;
      v42 = v11;
      v36 = *v57;
      do
      {
        v15 = 0;
        v39 = v12;
        do
        {
          if (*v57 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v40 = v15;
          v16 = *(*(&v56 + 1) + 8 * v15);
          context = objc_autoreleasePoolPush();
          v55 = v8;
          v17 = [v16 fetchListsWithError:&v55];
          v18 = v55;

          if (v18)
          {
            v19 = [*(v9 + 3368) read];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v33 = [v18 localizedDescription];
              *buf = v35;
              v65 = v16;
              v66 = 2112;
              v67 = v33;
              _os_log_error_impl(&dword_19A0DB000, v19, OS_LOG_TYPE_ERROR, "Unexpected error when fetching all lists from account {account: %@, error: %@}", buf, 0x16u);
            }
          }

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v20 = v17;
          v45 = [v20 countByEnumeratingWithState:&v51 objects:v63 count:16];
          if (v45)
          {
            v21 = *v52;
            v8 = v18;
            v41 = v20;
            v38 = *v52;
            while (2)
            {
              for (i = 0; i != v45; ++i)
              {
                if (*v52 != v21)
                {
                  objc_enumerationMutation(v20);
                }

                v23 = *(*(&v51 + 1) + 8 * i);
                v24 = objc_autoreleasePoolPush();
                if ([v23 isGroup])
                {
                  if (v4)
                  {
                    v6[2](v6, v23, &v61);
                    if (v61)
                    {
LABEL_41:
                      objc_autoreleasePoolPop(v24);

                      objc_autoreleasePoolPop(context);
                      v11 = v42;
                      goto LABEL_42;
                    }
                  }

                  v49 = 0u;
                  v50 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v25 = [v23 sublistContext];
                  v46 = v8;
                  v26 = [v25 fetchListsWithError:&v46];
                  v43 = v46;

                  v27 = [v26 countByEnumeratingWithState:&v47 objects:v62 count:16];
                  if (v27)
                  {
                    v28 = v27;
                    v29 = *v48;
                    while (2)
                    {
                      for (j = 0; j != v28; ++j)
                      {
                        if (*v48 != v29)
                        {
                          objc_enumerationMutation(v26);
                        }

                        v31 = *(*(&v47 + 1) + 8 * j);
                        v32 = objc_autoreleasePoolPush();
                        v6[2](v6, v31, &v61);
                        LOBYTE(v31) = v61;
                        objc_autoreleasePoolPop(v32);
                        if (v31)
                        {

                          v8 = v43;
                          v20 = v41;
                          goto LABEL_41;
                        }
                      }

                      v28 = [v26 countByEnumeratingWithState:&v47 objects:v62 count:16];
                      if (v28)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v8 = v43;
                  v4 = v37;
                  v14 = v36;
                  v20 = v41;
                  v21 = v38;
                }

                else
                {
                  v6[2](v6, v23, &v61);
                  if (v61)
                  {
                    goto LABEL_41;
                  }
                }

                objc_autoreleasePoolPop(v24);
              }

              v9 = 0x1E7506000;
              v45 = [v20 countByEnumeratingWithState:&v51 objects:v63 count:16];
              if (v45)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v8 = v18;
          }

          objc_autoreleasePoolPop(context);
          v15 = v40 + 1;
          v11 = v42;
        }

        while (v40 + 1 != v39);
        v12 = [v42 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v12);
    }

LABEL_42:
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)_xpcSyncStorePerformerWithReason:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMStore *)self daemonController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__REMStore__xpcSyncStorePerformerWithReason_errorHandler___block_invoke;
  v12[3] = &unk_1E7507D30;
  v12[4] = self;
  v13 = v6;
  v9 = v6;
  v10 = [v8 syncStorePerformerWithReason:v7 errorHandler:v12];

  return v10;
}

void __58__REMStore__xpcSyncStorePerformerWithReason_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__REMStore__xpcSyncStorePerformerWithReason_errorHandler___block_invoke_cold_1(v3, a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)_addChangeItemChangedKeys:(id)a3 objectID:(id)a4 toChangedKeysMap:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMStore _addChangeItemChangedKeys:objectID:toChangedKeysMap:];
    }
  }

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)_saveAccountChangeItems:(id)a3 listChangeItems:(id)a4 listSectionChangeItems:(id)a5 smartListChangeItems:(id)a6 smartListSectionChangeItems:(id)a7 templateChangeItems:(id)a8 templateSectionChangeItems:(id)a9 reminderChangeItems:(id)a10 author:(id)a11 replicaManagerProvider:(id)a12 synchronously:(BOOL)a13 syncToCloudKit:(BOOL)a14 performer:(id)a15 completion:(id)a16
{
  v232 = *MEMORY[0x1E69E9840];
  obj = a3;
  v22 = a4;
  v164 = a5;
  v162 = a6;
  v160 = a7;
  v158 = a8;
  v156 = a9;
  v148 = a10;
  v23 = a11;
  v144 = a12;
  v143 = a15;
  v141 = a16;
  v24 = +[REMSignpost database];
  v25 = os_signpost_id_generate(v24);
  v26 = v24;
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "REMStore.save", &unk_19A233B9D, buf, 2u);
  }

  v140 = v27;

  v28 = +[REMLogStore write];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [obj count];
    v30 = [v22 count];
    v31 = [v162 count];
    v32 = [v148 count];
    *buf = 138544386;
    v223 = v23;
    v224 = 2048;
    v225 = v29;
    v226 = 2048;
    v227 = v30;
    v228 = 2048;
    v229 = v31;
    v230 = 2048;
    v231 = v32;
    _os_log_impl(&dword_19A0DB000, v28, OS_LOG_TYPE_DEFAULT, "(client) SAVE START {author: %{public}@, accountChangeItems.count: %lu, listChangeItems.count: %lu, smartListChangeItems: %lu, reminderChangeItems.count: %lu}", buf, 0x34u);
  }

  v145 = v23;

  v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v22, "count") + objc_msgSend(obj, "count") + objc_msgSend(v162, "count") + objc_msgSend(v148, "count")}];
  v167 = [MEMORY[0x1E695DFA8] set];
  v166 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v34 = obj;
  v35 = [v34 countByEnumeratingWithState:&v209 objects:v221 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v210;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v210 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v209 + 1) + 8 * i);
        v40 = [v39 storage];
        [v166 addObject:v40];

        v41 = [v39 objectID];
        v42 = [v39 changedKeys];
        [(REMStore *)self _addChangeItemChangedKeys:v42 objectID:v41 toChangedKeysMap:v33];

        [v167 addObject:v41];
      }

      v36 = [v34 countByEnumeratingWithState:&v209 objects:v221 count:16];
    }

    while (v36);
  }

  v138 = v34;
  v139 = v25;

  v150 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  obja = v22;
  v43 = [obja countByEnumeratingWithState:&v205 objects:v220 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v206;
    do
    {
      v46 = 0;
      do
      {
        if (*v206 != v45)
        {
          objc_enumerationMutation(obja);
        }

        v47 = *(*(&v205 + 1) + 8 * v46);
        v48 = [v47 objectID];
        v49 = [v48 entityName];
        v50 = +[REMList cdEntityName];
        v51 = [v49 isEqualToString:v50];

        if (v51)
        {
          v52 = [v47 storage];
          [v150 addObject:v52];

          v53 = [v47 changedKeys];
          [(REMStore *)self _addChangeItemChangedKeys:v53 objectID:v48 toChangedKeysMap:v33];

          v54 = [v47 accountID];
          [v167 addObject:v54];
LABEL_20:

          goto LABEL_23;
        }

        v55 = [v48 entityName];
        v56 = +[REMTemplate cdEntityName];
        v57 = [v55 isEqualToString:v56];

        if (v57)
        {
          v58 = [v47 changedKeys];
          v59 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F0D99898];
          v60 = [v58 isSubsetOfSet:v59];

          if ((v60 & 1) == 0)
          {
            v54 = +[REMLogStore write];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
            {
              [REMStore _saveAccountChangeItems:v204 listChangeItems:v54 listSectionChangeItems:? smartListChangeItems:? smartListSectionChangeItems:? templateChangeItems:? templateSectionChangeItems:? reminderChangeItems:? author:? replicaManagerProvider:? synchronously:? syncToCloudKit:? performer:? completion:?];
            }

            goto LABEL_20;
          }
        }

LABEL_23:

        ++v46;
      }

      while (v44 != v46);
      v61 = [obja countByEnumeratingWithState:&v205 objects:v220 count:16];
      v44 = v61;
    }

    while (v61);
  }

  v62 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v164, "count")}];
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v63 = v164;
  v64 = [v63 countByEnumeratingWithState:&v199 objects:v219 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v200;
    do
    {
      for (j = 0; j != v65; ++j)
      {
        if (*v200 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v199 + 1) + 8 * j);
        v69 = [v68 storage];
        [v62 addObject:v69];

        v70 = [v68 changedKeys];
        v71 = [v68 objectID];
        [(REMStore *)self _addChangeItemChangedKeys:v70 objectID:v71 toChangedKeysMap:v33];
      }

      v65 = [v63 countByEnumeratingWithState:&v199 objects:v219 count:16];
    }

    while (v65);
  }

  v136 = v62;

  v165 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v162, "count")}];
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v153 = v162;
  v72 = [v153 countByEnumeratingWithState:&v195 objects:v218 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v196;
    do
    {
      for (k = 0; k != v73; ++k)
      {
        if (*v196 != v74)
        {
          objc_enumerationMutation(v153);
        }

        v76 = *(*(&v195 + 1) + 8 * k);
        v77 = [v76 storage];
        [v165 addObject:v77];

        v78 = [v76 changedKeys];
        v79 = [v76 objectID];
        [(REMStore *)self _addChangeItemChangedKeys:v78 objectID:v79 toChangedKeysMap:v33];
      }

      v73 = [v153 countByEnumeratingWithState:&v195 objects:v218 count:16];
    }

    while (v73);
  }

  v163 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v160, "count")}];
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v152 = v160;
  v80 = [v152 countByEnumeratingWithState:&v191 objects:v217 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v192;
    do
    {
      for (m = 0; m != v81; ++m)
      {
        if (*v192 != v82)
        {
          objc_enumerationMutation(v152);
        }

        v84 = *(*(&v191 + 1) + 8 * m);
        v85 = [v84 storage];
        [v163 addObject:v85];

        v86 = [v84 changedKeys];
        v87 = [v84 objectID];
        [(REMStore *)self _addChangeItemChangedKeys:v86 objectID:v87 toChangedKeysMap:v33];
      }

      v81 = [v152 countByEnumeratingWithState:&v191 objects:v217 count:16];
    }

    while (v81);
  }

  v137 = v63;

  v161 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v158, "count")}];
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v151 = v158;
  v88 = [v151 countByEnumeratingWithState:&v187 objects:v216 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v188;
    do
    {
      for (n = 0; n != v89; ++n)
      {
        if (*v188 != v90)
        {
          objc_enumerationMutation(v151);
        }

        v92 = *(*(&v187 + 1) + 8 * n);
        v93 = [v92 storage];
        [v161 addObject:v93];

        v94 = [v92 changedKeys];
        v95 = [v92 objectID];
        [(REMStore *)self _addChangeItemChangedKeys:v94 objectID:v95 toChangedKeysMap:v33];

        v96 = [v92 accountID];
        [v167 addObject:v96];
      }

      v89 = [v151 countByEnumeratingWithState:&v187 objects:v216 count:16];
    }

    while (v89);
  }

  v159 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v156, "count")}];
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v97 = v156;
  v98 = [v97 countByEnumeratingWithState:&v183 objects:v215 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = *v184;
    do
    {
      for (ii = 0; ii != v99; ++ii)
      {
        if (*v184 != v100)
        {
          objc_enumerationMutation(v97);
        }

        v102 = *(*(&v183 + 1) + 8 * ii);
        v103 = [v102 storage];
        [v159 addObject:v103];

        v104 = [v102 changedKeys];
        v105 = [v102 objectID];
        [(REMStore *)self _addChangeItemChangedKeys:v104 objectID:v105 toChangedKeysMap:v33];
      }

      v99 = [v97 countByEnumeratingWithState:&v183 objects:v215 count:16];
    }

    while (v99);
  }

  v135 = v97;

  v157 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v148, "count")}];
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v106 = v148;
  v107 = [v106 countByEnumeratingWithState:&v179 objects:v214 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v180;
    do
    {
      for (jj = 0; jj != v108; ++jj)
      {
        if (*v180 != v109)
        {
          objc_enumerationMutation(v106);
        }

        v111 = *(*(&v179 + 1) + 8 * jj);
        v112 = [v111 storage];
        [v157 addObject:v112];

        v113 = [v111 changedKeys];
        v114 = [v111 objectID];
        [(REMStore *)self _addChangeItemChangedKeys:v113 objectID:v114 toChangedKeysMap:v33];

        v115 = [v111 accountID];
        [v167 addObject:v115];
      }

      v108 = [v106 countByEnumeratingWithState:&v179 objects:v214 count:16];
    }

    while (v108);
  }

  v134 = v106;

  v116 = [v144 unsavedReplicaManagersForAccountIDs:v167];
  v149 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v116, "count")}];
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v117 = v116;
  v118 = [v117 countByEnumeratingWithState:&v175 objects:v213 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v176;
    do
    {
      for (kk = 0; kk != v119; ++kk)
      {
        if (*v176 != v120)
        {
          objc_enumerationMutation(v117);
        }

        v122 = *(*(&v175 + 1) + 8 * kk);
        v123 = [v117 objectForKeyedSubscript:v122];
        v174 = 0;
        v124 = [v123 serializedDataCappedAtMaxSize:1 error:&v174];
        v125 = v174;

        v126 = +[REMLogStore write];
        v127 = v126;
        if (v124)
        {
          v128 = v125 == 0;
        }

        else
        {
          v128 = 0;
        }

        if (v128)
        {
          if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
          {
            v129 = [v124 version];
            *buf = 134218242;
            v223 = v129;
            v224 = 2112;
            v225 = v122;
            _os_log_impl(&dword_19A0DB000, v127, OS_LOG_TYPE_INFO, "Will save REMReplicaManager {version: %llu, accountID: %@}", buf, 0x16u);
          }

          [v149 setObject:v124 forKeyedSubscript:v122];
        }

        else
        {
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v223 = v125;
            _os_log_error_impl(&dword_19A0DB000, v127, OS_LOG_TYPE_ERROR, "Failed to serialize REMReplicaManager {error: %{public}@}", buf, 0xCu);
          }
        }
      }

      v119 = [v117 countByEnumeratingWithState:&v175 objects:v213 count:16];
    }

    while (v119);
  }

  v130 = [(REMStore *)self mode];
  v168[0] = MEMORY[0x1E69E9820];
  v168[1] = 3221225472;
  v168[2] = __271__REMStore__saveAccountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_synchronously_syncToCloudKit_performer_completion___block_invoke;
  v168[3] = &unk_1E7507E48;
  v169 = v149;
  v170 = v117;
  v171 = v140;
  v172 = v141;
  v173 = v139;
  v147 = v141;
  v146 = v140;
  v142 = v117;
  v131 = v149;
  LOWORD(v133) = __PAIR16__(a14, a13);
  [v143 saveAccountStorages:v166 listStorages:v150 listSectionStorages:v136 smartListStorages:v165 smartListSectionStorages:v163 templateStorages:v161 templateSectionStorages:v159 reminderStorages:v157 changedKeys:v33 replicaManagers:v131 author:v145 mode:v130 synchronously:v133 syncToCloudKit:v168 completion:?];

  v132 = *MEMORY[0x1E69E9840];
}

void __271__REMStore__saveAccountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_synchronously_syncToCloudKit_performer_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[REMLogStore write];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __271__REMStore__saveAccountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_synchronously_syncToCloudKit_performer_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "(client) SAVE END", buf, 2u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
          v12 = [v11 version];

          v13 = +[REMLogStore write];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v24 = v12;
            v25 = 2112;
            v26 = v10;
            _os_log_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_INFO, "Marking REMReplicaManager as saved {version: %llu, accountID: %@}", buf, 0x16u);
          }

          v14 = [*(a1 + 40) objectForKeyedSubscript:v10];
          [v14 didSaveVersion:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v7);
      v3 = 0;
    }
  }

  v15 = *(a1 + 48);
  v16 = v15;
  v17 = *(a1 + 64);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v16, OS_SIGNPOST_INTERVAL_END, v17, "REMStore.save", &unk_19A233B9D, buf, 2u);
  }

  (*(*(a1 + 56) + 16))();
  v18 = *MEMORY[0x1E69E9840];
}

- (id)fetchShareForListWithID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listID");
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__REMStore_fetchShareForListWithID_error___block_invoke;
  v16[3] = &unk_1E7507BF0;
  v7 = v6;
  v17 = v7;
  v18 = &v25;
  v8 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"fetchShareForList" errorHandler:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__REMStore_fetchShareForListWithID_error___block_invoke_115;
  v12[3] = &unk_1E7507E70;
  v9 = v7;
  v13 = v9;
  v14 = &v25;
  v15 = &v19;
  [v8 fetchShareForObjectWithID:v9 completion:v12];
  if (a4)
  {
    *a4 = v26[5];
  }

  v10 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v10;
}

void __42__REMStore_fetchShareForListWithID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__REMStore_fetchShareForListWithID_error___block_invoke_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __42__REMStore_fetchShareForListWithID_error___block_invoke_115(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[REMLogStore read];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __42__REMStore_fetchShareForListWithID_error___block_invoke_115_cold_1(v6, a1);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  v8 = +[REMLogStore read];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = a1[4];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Store fetch share successful {list: %@, share: %@}", &v13, 0x16u);
  }

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (id)createShareForListWithID:(id)a3 appIconData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listID");
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__REMStore_createShareForListWithID_appIconData_error___block_invoke;
  v19[3] = &unk_1E7507BF0;
  v10 = v8;
  v20 = v10;
  v21 = &v28;
  v11 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"createShareForList" errorHandler:v19];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__REMStore_createShareForListWithID_appIconData_error___block_invoke_120;
  v15[3] = &unk_1E7507E70;
  v12 = v10;
  v16 = v12;
  v17 = &v28;
  v18 = &v22;
  [v11 createShareForObjectWithID:v12 appIconData:v9 completion:v15];
  if (a5)
  {
    *a5 = v29[5];
  }

  v13 = v23[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

void __55__REMStore_createShareForListWithID_appIconData_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__REMStore_createShareForListWithID_appIconData_error___block_invoke_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __55__REMStore_createShareForListWithID_appIconData_error___block_invoke_120(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__REMStore_createShareForListWithID_appIconData_error___block_invoke_120_cold_1(v6, a1);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = a1[4];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Store create share successful {list: %@, share: %@}", &v13, 0x16u);
  }

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateShare:(id)a3 accountID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __51__REMStore_updateShare_accountID_queue_completion___block_invoke;
  v29[3] = &unk_1E7507D30;
  v30 = v12;
  v31 = v13;
  v14 = v13;
  v15 = v12;
  v16 = MEMORY[0x19A8FD720](v29);
  v17 = [(REMStore *)self daemonController];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __51__REMStore_updateShare_accountID_queue_completion___block_invoke_3;
  v25[3] = &unk_1E7507EC0;
  v26 = v10;
  v27 = v11;
  v28 = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__REMStore_updateShare_accountID_queue_completion___block_invoke_5;
  v21[3] = &unk_1E7507EE8;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v18 = v28;
  v19 = v27;
  v20 = v26;
  [v17 asyncStorePerformerWithReason:@"updateShare" loadHandler:v25 errorHandler:v21];
}

void __51__REMStore_updateShare_accountID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__REMStore_updateShare_accountID_queue_completion___block_invoke_2;
  v7[3] = &unk_1E7507E98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __51__REMStore_updateShare_accountID_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__REMStore_updateShare_accountID_queue_completion___block_invoke_4;
  v5[3] = &unk_1E7507CE0;
  v6 = *(a1 + 48);
  [a2 updateShare:v3 accountID:v4 completion:v5];
}

void __51__REMStore_updateShare_accountID_queue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__REMStore_updateShare_accountID_queue_completion___block_invoke_5_cold_1(v3, a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)stopShare:(id)a3 accountID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __49__REMStore_stopShare_accountID_queue_completion___block_invoke;
  v29[3] = &unk_1E7507D30;
  v30 = v12;
  v31 = v13;
  v14 = v13;
  v15 = v12;
  v16 = MEMORY[0x19A8FD720](v29);
  v17 = [(REMStore *)self daemonController];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __49__REMStore_stopShare_accountID_queue_completion___block_invoke_3;
  v25[3] = &unk_1E7507EC0;
  v26 = v10;
  v27 = v11;
  v28 = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __49__REMStore_stopShare_accountID_queue_completion___block_invoke_5;
  v21[3] = &unk_1E7507EE8;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v18 = v28;
  v19 = v27;
  v20 = v26;
  [v17 asyncStorePerformerWithReason:@"stopShare" loadHandler:v25 errorHandler:v21];
}

void __49__REMStore_stopShare_accountID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__REMStore_stopShare_accountID_queue_completion___block_invoke_2;
  v7[3] = &unk_1E7507E98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __49__REMStore_stopShare_accountID_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__REMStore_stopShare_accountID_queue_completion___block_invoke_4;
  v5[3] = &unk_1E7507CE0;
  v6 = *(a1 + 48);
  [a2 stopShare:v3 accountID:v4 completion:v5];
}

void __49__REMStore_stopShare_accountID_queue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__REMStore_stopShare_accountID_queue_completion___block_invoke_5_cold_1(v3, a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)acceptShareWithMetadata:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke;
  v23[3] = &unk_1E7507D30;
  v24 = v9;
  v25 = v10;
  v11 = v10;
  v12 = v9;
  v13 = MEMORY[0x19A8FD720](v23);
  v14 = [(REMStore *)self daemonController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke_3;
  v20[3] = &unk_1E7507F38;
  v21 = v8;
  v22 = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke_5;
  v17[3] = &unk_1E7507D30;
  v18 = v21;
  v19 = v22;
  v15 = v22;
  v16 = v21;
  [v14 asyncStorePerformerWithReason:@"acceptShare" loadHandler:v20 errorHandler:v17];
}

void __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke_2;
  v7[3] = &unk_1E7507E98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke_4;
  v4[3] = &unk_1E7507F10;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 acceptShareWithMetadata:v3 completion:v4];
}

void __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke_5_cold_1(v3, a1);
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)siriShouldRouteIntentsToNewRemindersApp
{
  v2 = +[REMUserDefaults daemonUserDefaults];
  v3 = [v2 siriShouldRouteIntentsToNewRemindersApp];

  return v3;
}

- (id)compressedDistributedEvaluationDataWithOptions:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMLogStore read];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "(client) DistributedEvaluation Export START {options: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke;
  v16[3] = &unk_1E7507AE0;
  v16[4] = &buf;
  v8 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"distributedEvaluation" errorHandler:v16];
  v9 = v8;
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke_135;
    v15[3] = &unk_1E7507F60;
    v15[4] = &v17;
    v15[5] = &buf;
    [v8 compressedDistributedEvaluationDataWithOptions:v6 completion:v15];
  }

  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "(client) DistributedEvaluation Export END", v14, 2u);
  }

  if (a4)
  {
    *a4 = *(*(&buf + 1) + 40);
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v8 = +[REMLogStore read];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke_135_cold_1();
    }
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v9 = +[REMLogStore read];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke_135_cold_2();
    }

    v10 = [REMError internalErrorWithDebugDescription:@"DistributedEvaluation Export produced no result and no error"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)fetchEligibleDefaultListsWithError:(id *)a3
{
  v4 = [[REMListsDataView alloc] initWithStore:self];
  v5 = [(REMListsDataView *)v4 fetchEligibleDefaultListsWithError:a3];

  return v5;
}

- (id)fetchDefaultListWithError:(id *)a3
{
  v4 = [[REMListsDataView alloc] initWithStore:self];
  v5 = [(REMListsDataView *)v4 fetchDefaultListWithError:a3];

  return v5;
}

- (id)fetchDefaultListRequiringCloudKitWithError:(id *)a3
{
  v4 = [[REMListsDataView alloc] initWithStore:self];
  v5 = [(REMListsDataView *)v4 fetchDefaultListRequiringCloudKitWithAccountID:0 error:a3];

  return v5;
}

- (id)fetchDefaultListRequiringCloudKitAccountWithAccountID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchDefaultListRequiringCloudKitWithAccountID:v6 error:a4];

  return v8;
}

- (id)fetchDefaultAccountWithError:(id *)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = [(REMStore *)self fetchDefaultListWithError:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 account];
    goto LABEL_30;
  }

  [(REMStore *)self fetchAccountsWithError:a3];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v43 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v40 + 1) + 8 * v12);
      v14 = [v13 accountTypeHost];
      v15 = [v14 isPrimaryCloudKit];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
LABEL_13:
      v20 = 0;
      while (1)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v13 = *(*(&v36 + 1) + 8 * v20);
        v21 = [v13 accountTypeHost];
        v22 = [v21 isCloudBased];

        if (v22)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v18)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v23 = v16;
      v24 = [v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (!v24)
      {
        v7 = 0;
        goto LABEL_29;
      }

      v25 = v24;
      v26 = *v33;
LABEL_21:
      v27 = 0;
      while (1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v13 = *(*(&v32 + 1) + 8 * v27);
        v28 = [v13 accountTypeHost];
        v29 = [v28 isLocal];

        if (v29)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
          v7 = 0;
          if (v25)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }
      }
    }
  }

  v7 = v13;
LABEL_29:

LABEL_30:
  v30 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_withInProgressSaveRequestContainer:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  os_unfair_lock_lock(&self->_lock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__REMStore__withInProgressSaveRequestContainer___block_invoke;
  v8[3] = &unk_1E7507F88;
  v10 = &v11;
  v5 = v4;
  v8[4] = self;
  v9 = v5;
  __48__REMStore__withInProgressSaveRequestContainer___block_invoke(v8);
  os_unfair_lock_unlock(&self->_lock);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __48__REMStore__withInProgressSaveRequestContainer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) l_inProgressSaveRequestsContainer];
  v3 = (*(v2 + 16))(v2, v6);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)anchoredBubbleCloudOverridesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"queryAnchoredBubbleCloudOverrides" errorHandler:&__block_literal_global_145];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__REMStore_anchoredBubbleCloudOverridesWithCompletion___block_invoke_146;
  v7[3] = &unk_1E7507FB0;
  v8 = v4;
  v6 = v4;
  [v5 anchoredBubbleEnabledWithCompletion:v7];
}

void __55__REMStore_anchoredBubbleCloudOverridesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__REMStore_anchoredBubbleCloudOverridesWithCompletion___block_invoke_cold_1();
  }
}

- (id)fetchMinimumSearchTermLengthByBaseLanguageWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v4 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"fetchMinimumSearchTermLengthByBaseLanguage" errorHandler:&__block_literal_global_152];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__REMStore_fetchMinimumSearchTermLengthByBaseLanguageWithError___block_invoke_153;
  v7[3] = &unk_1E7507FD8;
  v7[4] = &v8;
  v7[5] = &v14;
  [v4 fetchMinimumSearchTermLengthByBaseLanguageWithCompletion:v7];
  if (a3)
  {
    *a3 = v15[5];
  }

  v5 = v9[5];

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);

  return v5;
}

void __64__REMStore_fetchMinimumSearchTermLengthByBaseLanguageWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __64__REMStore_fetchMinimumSearchTermLengthByBaseLanguageWithError___block_invoke_cold_1();
  }
}

void __64__REMStore_fetchMinimumSearchTermLengthByBaseLanguageWithError___block_invoke_153(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLogStore read];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64__REMStore_fetchMinimumSearchTermLengthByBaseLanguageWithError___block_invoke_153_cold_1();
    }

    v9 = 40;
    v10 = v6;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Fetch minimumSearchTermLengthByBaseLanguage successful {result: %@}", &v12, 0xCu);
  }

  if (v5)
  {
    v9 = 32;
    v10 = v5;
LABEL_9:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_respondToCalDAVSharedList:(id)a3 withResponse:(int64_t)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke;
  v26[3] = &unk_1E7507D30;
  v27 = v11;
  v28 = v12;
  v13 = v12;
  v14 = v11;
  v15 = MEMORY[0x19A8FD720](v26);
  v16 = [(REMStore *)self daemonController];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3;
  v22[3] = &unk_1E7508000;
  v23 = v10;
  v24 = v15;
  v25 = a4;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_323;
  v19[3] = &unk_1E7507D30;
  v20 = v23;
  v21 = v24;
  v17 = v24;
  v18 = v23;
  [v16 asyncStorePerformerWithReason:@"respondToCalDAVSharedList" loadHandler:v22 errorHandler:v19];
}

void __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_2;
  v7[3] = &unk_1E7507E98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) account];
  v6 = [v5 accountTypeHost];
  v7 = [v6 isCalDav];

  v8 = [*(a1 + 32) sharingStatus];
  if (v7)
  {
    if (v8 == 3)
    {
      v9 = [*v4 externalIdentifier];
      v10 = [*v4 account];
      v11 = [v10 externalIdentifier];

      if (v9)
      {
        if (v11)
        {
          v12 = *(a1 + 48);
          if (v12 == 2)
          {
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_2_318;
            v23[3] = &unk_1E7507CE0;
            v24 = *(a1 + 40);
            [v3 rejectCalDAVShareWithCalendarURL:v9 acAccountID:v11 completion:v23];
            v13 = v24;
          }

          else
          {
            if (v12 != 1)
            {
              [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Implementation error to use unknown CalDAV share response."];
              goto LABEL_25;
            }

            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_317;
            v25[3] = &unk_1E7507CE0;
            v26 = *(a1 + 40);
            [v3 acceptCalDAVShareWithCalendarURL:v9 acAccountID:v11 completion:v25];
            v13 = v26;
          }

LABEL_25:
          goto LABEL_26;
        }

        v21 = +[REMLogStore write];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_cold_3();
        }

        v19 = *(a1 + 40);
        v20 = @"Could not find the external identifier from the given invitation list.";
      }

      else
      {
        v18 = +[REMLogStore write];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_cold_4();
        }

        v19 = *(a1 + 40);
        v20 = @"Given invitation list has no external identifier.";
      }

      v22 = [REMError invalidParameterErrorWithDescription:v20];
      (*(v19 + 16))(v19, v22);

      goto LABEL_25;
    }

    v17 = +[REMLogStore write];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_cold_2();
    }

    v15 = *(a1 + 40);
    v16 = @"Given invitation list isn't a sharing invitation.";
  }

  else
  {
    v14 = +[REMLogStore write];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_cold_1();
    }

    v15 = *(a1 + 40);
    v16 = @"Given invitation list isn't a CalDAV list.";
  }

  v9 = [REMError invalidParameterErrorWithDescription:v16];
  (*(v15 + 16))(v15, v9);
LABEL_26:
}

void __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_323(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_323_cold_1(v3, a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)provideChangeTrackingForAccountID:(id)a3 clientName:(id)a4 transactionAuthorKeysToExclude:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "accountID");
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_12:
    NSLog(&cfstr_SIsUnexpectedl.isa, "clientName");
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_3:
  v11 = [v8 uuid];
  v12 = [v11 UUIDString];

  v13 = [(REMStore *)self daemonController];
  v14 = v13;
  if (v9 && v12 && v13)
  {
    v15 = [[_REMChangeTrackingClientID alloc] initWithClientName:v9 accountIdentifier:v12];
    v16 = [REMChangeTracking alloc];
    if (v10)
    {
      v17 = [(REMChangeTracking *)v16 initWithClientID:v15 daemonController:v14 transactionAuthorKeysToExclude:v10];
    }

    else
    {
      v17 = [(REMChangeTracking *)v16 initWithClientID:v15 daemonController:v14];
    }

    v19 = v17;
  }

  else
  {
    v18 = +[REMLogStore read];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [REMStore(ChangeTrackingSupport) provideChangeTrackingForAccountID:clientName:transactionAuthorKeysToExclude:];
    }

    v19 = 0;
  }

  return v19;
}

- (id)fetchListIncludingMarkedForDeleteWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listObjectID");
  }

  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchListIncludingConcealedWithObjectID:v6 includeMarkedForDeletionOnly:1 error:a4];

  return v8;
}

- (id)fetchListIncludingConcealedWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listObjectID");
  }

  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchListIncludingConcealedWithObjectID:v6 includeMarkedForDeletionOnly:0 error:a4];

  return v8;
}

- (id)fetchReminderIncludingConcealedWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "reminderObjectID");
  }

  v7 = [[REMRemindersDataView alloc] initWithStore:self];
  v8 = +[REMReminderFetchOptions fetchOptionsIncludingConcealed];
  v9 = [(REMRemindersDataView *)v7 fetchReminderWithObjectID:v6 fetchOptions:v8 error:a4];

  return v9;
}

- (id)fetchRemindersIncludingUnsupportedWithObjectIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMRemindersDataView alloc] initWithStore:self];
  v8 = [(REMRemindersDataView *)v7 fetchRemindersIncludingUnsupportedWithObjectIDs:v6 error:a4];

  return v8;
}

- (id)provideAnonymousChangeTrackingWithTransactionAuthorKeysToExclude:(id)a3
{
  v4 = a3;
  v5 = [[_REMChangeTrackingClientID alloc] initWithClientName:@"___dummy-client-identifier" accountIdentifier:@"___dummy-account-identifier"];
  v6 = [(REMStore *)self daemonController];
  if (v6)
  {
    v7 = [REMChangeTracking alloc];
    if (v4)
    {
      v8 = [(REMChangeTracking *)v7 initWithClientID:v5 daemonController:v6 transactionAuthorKeysToExclude:v4];
    }

    else
    {
      v8 = [(REMChangeTracking *)v7 initWithClientID:v5 daemonController:v6];
    }

    v10 = v8;
  }

  else
  {
    v9 = +[REMLogStore read];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [REMStore(ChangeTrackingProvider_IntegrationTestsOnlyAPIsSupport) provideAnonymousChangeTrackingWithTransactionAuthorKeysToExclude:];
    }

    v10 = 0;
  }

  return v10;
}

+ (void)notifyOfInteractionWithPeople:(id)a3
{
  v3 = a3;
  v4 = +[REMDispatchQueue storeQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople___block_invoke;
  block[3] = &unk_1E7508028;
  v8 = v3;
  v5 = v3;
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v4, v6);
}

void __66__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(REMStore);
  [(REMStore *)v2 notifyOfInteractionWithPeople:*(a1 + 32) force:0 completion:&__block_literal_global_356];
}

- (void)notifyOfInteractionWithPeople:(id)a3 force:(BOOL)a4 completion:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4 || +[REMStore _shouldNotifyReminddOfInteractionWithPeople])
  {
    v10 = +[REMLog alarmEngine];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "_shouldNotifyReminddOfInteractionWithPeople returned YES. Notifying people interaction {people: %@}", buf, 0xCu);
    }

    v11 = [(REMStore *)self daemonController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke;
    v17[3] = &unk_1E7507F38;
    v18 = v8;
    v19 = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke_360;
    v14[3] = &unk_1E7507D30;
    v15 = v18;
    v16 = v19;
    [v11 asyncStorePerformerWithReason:@"notifyOfInteractionWithPeople" loadHandler:v17 errorHandler:v14];
  }

  else
  {
    v12 = +[REMLog alarmEngine];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "_shouldNotifyReminddOfInteractionWithPeople returned NO. Skipping notification {people: %@}", buf, 0xCu);
    }

    (*(v9 + 2))(v9, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke_2;
  v5[3] = &unk_1E7507D30;
  v6 = v4;
  v7 = *(a1 + 40);
  [a2 notifyOfInteractionWithPeople:v6 completion:v5];
}

void __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[REMLog alarmEngine];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke_2_cold_1(v3, a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke_360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke_360_cold_1(v3, a1);
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)_shouldNotifyReminddOfInteractionWithPeople
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = +[REMDispatchQueue storeQueue];
  dispatch_assert_queue_V2(v2);

  v3 = _shouldNotifyReminddOfInteractionWithPeople___sNotifyToken;
  if (_shouldNotifyReminddOfInteractionWithPeople___sNotifyToken == -1)
  {
    *buf = -1;
    v6 = notify_register_check(_REMStoreShouldNotifyOfInteractionWithPeopleNotificationName, buf);
    if (v6)
    {
      v7 = v6;
      v4 = +[REMLog alarmEngine];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        +[(REMStore(iMessageInteractionSPI) *)v7];
      }

      goto LABEL_11;
    }

    v3 = *buf;
    _shouldNotifyReminddOfInteractionWithPeople___sNotifyToken = *buf;
  }

  if (!notify_is_valid_token(v3))
  {
    v5 = +[REMLog alarmEngine];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = _shouldNotifyReminddOfInteractionWithPeople___sNotifyToken;
      _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "Failed to register shouldNotifyOfInteractionWithPeople with notify. Returning YES to _shouldNotifyReminddOfInteractionWithPeople {token: %d}", buf, 8u);
    }

    goto LABEL_18;
  }

  check = 0;
  if (notify_check(_shouldNotifyReminddOfInteractionWithPeople___sNotifyToken, &check))
  {
    v4 = +[REMLog alarmEngine];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[REMStore(iMessageInteractionSPI) _shouldNotifyReminddOfInteractionWithPeople];
    }

LABEL_11:

LABEL_19:
    result = 1;
    goto LABEL_20;
  }

  v8 = check;
  v9 = +[REMLog alarmEngine];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "shouldNotifyOfInteractionWithPeople did change. Updating cache", buf, 2u);
    }

    v15 = 0;
    state = notify_get_state(_shouldNotifyReminddOfInteractionWithPeople___sNotifyToken, &v15);
    v12 = +[REMLog alarmEngine];
    v5 = v12;
    if (state)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[REMStore(iMessageInteractionSPI) _shouldNotifyReminddOfInteractionWithPeople];
      }

LABEL_18:

      goto LABEL_19;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = v15;
      _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "Successfully notify_get_state updating cache {state: %llu}", buf, 0xCu);
    }

    result = v15 != 0;
    _shouldNotifyReminddOfInteractionWithPeople___sShouldNotifyRemindd = v15 != 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v18) = _shouldNotifyReminddOfInteractionWithPeople___sShouldNotifyRemindd;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_INFO, "shouldNotifyOfInteractionWithPeople did not change. Returning cached value {__sShouldNotifyRemindd: %d}", buf, 8u);
    }

    result = _shouldNotifyReminddOfInteractionWithPeople___sShouldNotifyRemindd;
  }

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasActiveCloudKitAccountForTipKitWithError:(id *)a3
{
  v4 = [[REMAccountsDataView alloc] initWithStore:self];
  v5 = [(REMAccountsDataView *)v4 fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:a3];
  v6 = v5;
  if (a3 && !v5)
  {
    v7 = *a3;
    v8 = [v7 domain];
    if ([@"com.apple.reminderkit" isEqual:v8])
    {
      v9 = [v7 code];

      if (v9 == -3007)
      {
        *a3 = 0;
      }
    }

    else
    {
    }
  }

  return v6 != 0;
}

- (BOOL)containsListWithCustomBadgeForTipKitWithError:(id *)a3
{
  v4 = [[REMTipKitDataView alloc] initWithStore:self];
  v5 = [(REMTipKitDataView *)v4 fetchListsWithCustomBadgeCountWithError:a3];
  v6 = [v5 integerValue] > 0;

  return v6;
}

- (unint64_t)completedRemindersCountForTipKitWithError:(id *)a3
{
  v4 = [[REMTipKitDataView alloc] initWithStore:self];
  v5 = [(REMTipKitDataView *)v4 fetchCompletedRemindersCountWithError:a3];
  v6 = [v5 integerValue];

  return v6;
}

- (BOOL)containsCustomSmartListForTipKitWithError:(id *)a3
{
  v4 = [[REMTipKitDataView alloc] initWithStore:self];
  v5 = [(REMTipKitDataView *)v4 fetchCustomSmartListsCountWithError:a3];
  v6 = [v5 integerValue] > 0;

  return v6;
}

- (BOOL)containsHashtagsForTipKitWithError:(id *)a3
{
  v4 = [[REMTipKitDataView alloc] initWithStore:self];
  v5 = [(REMTipKitDataView *)v4 fetchHashtagsCountWithError:a3];
  v6 = [v5 integerValue] > 0;

  return v6;
}

- (id)fetchIncompleteRemindersCountForNewsRecipeCardWithBatchCreationID:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMLogStore read];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "NewsRecipeCardSPI START fetch incomplete reminders count {batchCreationID:%{public}@}", buf, 0xCu);
  }

  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "batchCreationID");
  }

  v8 = [[REMRemindersDataView alloc] initWithStore:self];
  v9 = [(REMRemindersDataView *)v8 fetchRemindersCountWithBatchCreationID:v6 includingCompleted:0 error:a4];
  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "NewsRecipeCardSPI END fetch incomplete reminders count {batchCreationID:%{public}@, remindersCount:%{public}@}", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)fetchIncompleteRemindersForNewsRecipeCardWithBatchCreationID:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMLogStore read];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "NewsRecipeCardSPI START fetch incomplete reminders {batchCreationID:%{public}@}", buf, 0xCu);
  }

  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "batchCreationID");
  }

  v8 = [[REMRemindersDataView alloc] initWithStore:self];
  v9 = [(REMRemindersDataView *)v8 fetchRemindersWithBatchCreationID:v6 includingCompleted:0 error:a4];
  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    *buf = 138543618;
    v15 = v6;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "NewsRecipeCardSPI END fetch incomplete reminders {batchCreationID:%{public}@, remindersCount:%{public}@}", buf, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMLogStore read];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localeIdentifier];
    v17 = 138477827;
    v18 = v8;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI START shared grocery lists eligibility for locale {eligibility:%{private}@}", &v17, 0xCu);
  }

  v9 = [[REMFamilyChecklistDataView alloc] initWithStore:self];
  v10 = [(REMFamilyChecklistDataView *)v9 fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:v6 error:a4];
  if (a4 && *a4)
  {
    v11 = +[REMLogStore read];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [REMStore(FamilyChecklist) fetchFamilyGroceryListEligibilityForFamilyChecklistWithLocale:a4 error:?];
    }
  }

  v12 = +[REMLogStore read];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI END shared grocery lists eligibility {eligibility:%{public}@}", &v17, 0xCu);
  }

  if ([v10 isEligible])
  {
    v13 = @"isEligible";
  }

  else
  {
    v14 = [v10 ineligibilityReasons];
    if (v14 != 256)
    {
      if (v14 != 16)
      {
        if (v14 != 4)
        {
          goto LABEL_19;
        }

        [(REMStore *)self postFamilyAnalyticsPayloadWithOperationId:@"eligibleForSharedGroceryList" operationDetail:@"ineligibleCloudKitAccount"];
      }

      [(REMStore *)self postFamilyAnalyticsPayloadWithOperationId:@"eligibleForSharedGroceryList" operationDetail:@"ineligibleGroceryLocale"];
    }

    v13 = @"ineligibleCloudKitAccountNotMigrated";
  }

  [(REMStore *)self postFamilyAnalyticsPayloadWithOperationId:@"eligibleForSharedGroceryList" operationDetail:v13];
LABEL_19:

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)sharedGroceryListForFamilyChecklistWithCommonParticipants:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMLogStore read];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v6;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI START existing shared grocery lists {commonParticipants: %{public}@}", buf, 0xCu);
  }

  v8 = [[REMFamilyChecklistDataView alloc] initWithStore:self];
  v9 = [(REMFamilyChecklistDataView *)v8 fetchSharedGroceryListsWithCommonSharees:v6 error:a4];
  if (a4 && *a4)
  {
    v10 = +[REMLogStore read];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [REMStore(FamilyChecklist) sharedGroceryListForFamilyChecklistWithCommonParticipants:a4 error:?];
    }
  }

  v11 = +[REMLogStore read];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI END existing shared grocery lists {sharedGroceryLists: %{public}@}", buf, 0xCu);
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"existingSharedGroceryLists%lu", objc_msgSend(v9, "count")];
  [(REMStore *)self postFamilyAnalyticsPayloadWithOperationId:@"existingSharedGroceryList" operationDetail:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)createSharedGroceryListWithError:(id *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI START create shared grocery list", buf, 2u);
  }

  v6 = [[REMAccountsDataView alloc] initWithStore:self];
  v7 = [(REMAccountsDataView *)v6 fetchPrimaryActiveCloudKitAccountWithError:a3];
  if (a3 && *a3)
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
    {
      [REMStore(FamilyChecklist) createSharedGroceryListWithError:a3];
    }

    v9 = 0;
  }

  else
  {
    v8 = [[REMSaveRequest alloc] initWithStore:self];
    v10 = [(REMSaveRequest *)v8 updateAccount:v7];
    v11 = _REMGetLocalizedString(79);
    v40 = v10;
    v12 = [(REMSaveRequest *)v8 addListWithName:v11 toAccountChangeItem:v10];

    v13 = [[REMColor alloc] initWithCKSymbolicColorName:@"green" hexString:0];
    [v12 setColor:v13];

    [v12 setBadgeEmblem:@"nature2"];
    v14 = [v12 groceryContextChangeItem];
    [v14 setShouldCategorizeGroceryItems:1];
    v15 = [MEMORY[0x1E695DF58] currentLocale];
    v16 = [v15 localeIdentifier];
    [v14 setGroceryLocaleID:v16];

    [v12 setIsPinned:1];
    [(REMSaveRequest *)v8 saveSynchronouslyWithError:a3];
    if (a3 && *a3)
    {
      v17 = +[REMLogStore write];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [REMStore(FamilyChecklist) createSharedGroceryListWithError:a3];
      }

      v9 = 0;
    }

    else
    {
      v18 = [v12 objectID];
      v17 = [(REMStore *)self createShareForListWithID:v18 appIconData:0 error:a3];

      if (a3 && *a3)
      {
        v19 = +[REMLogStore write];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [REMStore(FamilyChecklist) createSharedGroceryListWithError:a3];
        }

        v9 = 0;
      }

      else
      {
        v35 = v14;
        v38 = v6;
        v20 = objc_alloc_init(MEMORY[0x1E695DFD8]);
        v21 = [REMFamilyChecklistSharedGroceryList alloc];
        [v12 objectID];
        v22 = v39 = v7;
        v23 = v21;
        v19 = v20;
        v9 = [(REMFamilyChecklistSharedGroceryList *)v23 initWithListID:v22 participants:v20];

        v24 = [v17 URL];
        [(REMFamilyChecklistSharedGroceryList *)v9 setURL:v24];

        v25 = objc_alloc_init(MEMORY[0x1E696ACA0]);
        v26 = [REMCloudContainer newCloudContainerForAccount:v39];
        v27 = v17;
        v36 = v17;
        v37 = v26;
        if (v26)
        {
          v28 = v26;
          v29 = [MEMORY[0x1E695B868] rem_remindersAllowedSharingOptions];
          [v25 registerCKShare:v27 container:v28 allowedSharingOptions:v29];

          [(REMFamilyChecklistSharedGroceryList *)v9 setItemProvider:v25];
        }

        else
        {
          v30 = v19;
          *a3 = [REMError invalidParameterErrorWithDescription:@"Unable to create CKContainer for created shared grocery list."];
          v31 = +[REMLogStore write];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [REMStore(FamilyChecklist) createSharedGroceryListWithError:a3];
          }

          v19 = v30;
        }

        v14 = v35;
        v32 = +[REMLogStore write];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v9;
          _os_log_impl(&dword_19A0DB000, v32, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI END create shared grocery list {sharedGroceryList: %{public}@}", buf, 0xCu);
        }

        [(REMStore *)self postFamilyAnalyticsPayloadWithOperationId:@"createdSharedGroceryList" operationDetail:0];
        v6 = v38;
        v7 = v39;
        v17 = v36;
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)addParticipantsToSharedGroceryList:(id)a3 completion:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v37 = a4;
  v6 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v5;
    _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI START add participants to shared grocery list {sharedGroceryList: %{public}@}", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = [v5 participants];
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        v14 = [v13 phones];
        v15 = [v14 firstObject];

        v16 = [v13 emails];
        v17 = [v16 firstObject];

        if ([v15 length])
        {
          v18 = [objc_alloc(MEMORY[0x1E695BAE8]) initWithPhoneNumber:v15];
        }

        else
        {
          if (![v17 length])
          {
            goto LABEL_13;
          }

          v18 = [objc_alloc(MEMORY[0x1E695BAE8]) initWithEmailAddress:v17];
        }

        v19 = v18;
        [v7 addObject:v18];

LABEL_13:
      }

      v10 = [v8 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v20 = [v5 listID];
    v47 = 0;
    v21 = [(REMStore *)self fetchShareForListWithID:v20 error:&v47];
    v22 = v47;

    v23 = v37;
    if (v22)
    {
      v24 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [REMStore(FamilyChecklist) addParticipantsToSharedGroceryList:completion:];
      }

      (*(v37 + 2))(v37, 0, v22);
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E695B950]) initWithUserIdentityLookupInfos:v7];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke;
      v45[3] = &unk_1E7508050;
      v27 = v21;
      v46 = v27;
      [v26 setShareParticipantFetchedBlock:v45];
      v28 = [[REMAccountsDataView alloc] initWithStore:self];
      v44 = 0;
      v29 = [(REMAccountsDataView *)v28 fetchPrimaryActiveCloudKitAccountWithError:&v44];
      v22 = v44;
      if (v22)
      {
        v30 = +[REMLog cloudkitCollaboration];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [REMStore(FamilyChecklist) addParticipantsToSharedGroceryList:completion:];
        }

        (*(v37 + 2))(v37, 0, v22);
      }

      else
      {
        v35 = v29;
        v31 = [REMCloudContainer newCloudContainerForAccount:v29];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_421;
        v38[3] = &unk_1E75080C8;
        v43 = v37;
        v39 = v5;
        v40 = v27;
        v41 = self;
        v42 = v31;
        v32 = v31;
        v29 = v35;
        v33 = v32;
        [v26 setFetchShareParticipantsCompletionBlock:v38];
        [v33 addOperation:v26];
      }
    }
  }

  else
  {
    v22 = [REMError invalidParameterErrorWithDescription:@"No valid participants found for adding to shared grocery list."];
    v25 = +[REMLog cloudkitCollaboration];
    v23 = v37;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [REMStore(FamilyChecklist) addParticipantsToSharedGroceryList:completion:];
    }

    (*(v37 + 2))(v37, 0, v22);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPermission:3];
  [*(a1 + 32) addParticipant:v3];
}

void __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_421(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[REMLog cloudkitCollaboration];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_421_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI CloudKit add participants to shared grocery list fetchParticipants succeeded {sharedGroceryList: %{public}@}", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x1E695B9B8]);
    v18 = *(a1 + 40);
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v9 = [v7 initWithRecordsToSave:v8 recordIDsToDelete:0];

    [v9 setSavePolicy:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_424;
    v14[3] = &unk_1E75080A0;
    v15 = *(a1 + 32);
    v17 = *(a1 + 64);
    v13 = *(a1 + 40);
    v10 = v13.i64[0];
    v16 = vextq_s8(v13, v13, 8uLL);
    [v9 setModifyRecordsCompletionBlock:v14];
    v11 = [*(a1 + 56) privateCloudDatabase];
    [v11 addOperation:v9];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_424(uint64_t a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[REMLog cloudkitCollaboration];
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      *buf = 138543362;
      v49 = v31;
      _os_log_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI CloudKit add participants to shared grocery list modifyRecords succeeded {sharedGroceryList: %{public}@}", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_424_cold_1();
  }

  v12 = [v9 domain];
  v13 = *MEMORY[0x1E695B740];
  if (![v12 isEqual:*MEMORY[0x1E695B740]] || objc_msgSend(v9, "code") != 2)
  {

    goto LABEL_23;
  }

  v14 = [v9 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"CKErrorDescription"];
  v16 = [v15 isEqual:@"Failed to modify some records"];

  if (!v16)
  {
LABEL_23:
    (*(*(a1 + 56) + 16))();
    goto LABEL_27;
  }

  v17 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    *buf = 138543362;
    v49 = v18;
    _os_log_impl(&dword_19A0DB000, v17, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI CloudKit checking 'Partial Failure' modifyRecords error for add participants to shared grocery list {sharedGroceryList: %{public}@}", buf, 0xCu);
  }

  v19 = [v9 userInfo];
  v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v20;
  v21 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  v38 = *v44;
  v37 = v7;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v44 != v38)
      {
        objc_enumerationMutation(v11);
      }

      v24 = *(*(&v43 + 1) + 8 * i);
      v25 = [MEMORY[0x1E695DFB0] null];

      if (v24 == v25)
      {
        (*(*(a1 + 56) + 16))();
        goto LABEL_31;
      }

      v26 = [v11 objectForKeyedSubscript:v24];
      v27 = [v26 domain];
      if (![v27 isEqual:v13])
      {

LABEL_30:
        (*(*(a1 + 56) + 16))();

LABEL_31:
        v7 = v37;
        goto LABEL_27;
      }

      v28 = [v26 code];

      if (v28 != 14)
      {
        goto LABEL_30;
      }

      v29 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        *buf = 138543362;
        v49 = v30;
        _os_log_impl(&dword_19A0DB000, v29, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI CloudKit hiding 'Server Record Change' error for add participants to shared grocery list {sharedGroceryList: %{public}@}", buf, 0xCu);
      }
    }

    v22 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
    v7 = v37;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_21:

LABEL_26:
  v32 = *(a1 + 40);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_432;
  v40[3] = &unk_1E7508078;
  v33 = *(a1 + 56);
  *&v34 = *(a1 + 32);
  *(&v34 + 1) = *(a1 + 40);
  v39 = v34;
  *&v35 = *(a1 + 48);
  *(&v35 + 1) = v33;
  v41 = v39;
  v42 = v35;
  [v32 triggerCloudKitOnlySyncWithReason:@"FamilyChecklist(CloudKitSync)" discretionary:0 completion:v40];

LABEL_27:
  v36 = *MEMORY[0x1E69E9840];
}

void __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_432(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[REMLog cloudkitCollaboration];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_432_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI END add participants to shared grocery list {sharedGroceryList: %{public}@}", buf, 0xCu);
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [*(a1 + 32) participants];
    v9 = [v7 stringWithFormat:@"invitedParticipants%lu", objc_msgSend(v8, "count")];

    [*(a1 + 40) postFamilyAnalyticsPayloadWithOperationId:@"addedParticipantsToSharedGroceryList" operationDetail:v9];
    v10 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)deleteSharedGroceryList:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMLogStore write];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = v6;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI START delete shared grocery list {sharedGroceryList: %{public}@}", &v20, 0xCu);
  }

  v8 = [[REMListsDataView alloc] initWithStore:self];
  v9 = [v6 listID];
  v10 = [(REMListsDataView *)v8 fetchListWithObjectID:v9 error:a4];

  if (!a4 || !*a4)
  {
    v11 = [[REMSaveRequest alloc] initWithStore:self];
    v13 = [(REMSaveRequest *)v11 updateList:v10];
    v14 = [v13 groceryContextChangeItem];
    if ([v14 shouldCategorizeGroceryItems])
    {
      [v13 removeFromParent];
      v12 = [(REMSaveRequest *)v11 saveSynchronouslyWithError:a4];
      if (!a4 || !*a4)
      {
        v17 = +[REMLogStore write];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543618;
          v21 = v6;
          v22 = 1024;
          v23 = v12;
          _os_log_impl(&dword_19A0DB000, v17, OS_LOG_TYPE_DEFAULT, "FamilyChecklistSPI END delete shared grocery list {sharedGroceryList: %{public}@, didSave: %i}", &v20, 0x12u);
        }

        [(REMStore *)self postFamilyAnalyticsPayloadWithOperationId:@"cancelledSharedGroceryList" operationDetail:0];
        goto LABEL_20;
      }

      v15 = +[REMLogStore write];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [REMStore(FamilyChecklist) deleteSharedGroceryList:a4 error:?];
      }
    }

    else
    {
      v15 = [REMError invalidParameterErrorWithDescription:@"Shared grocery list is not grocery list type."];
      *a4 = v15;
      v16 = +[REMLogStore write];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [REMStore(FamilyChecklist) deleteSharedGroceryList:error:];
      }
    }

    LOBYTE(v12) = 0;
LABEL_20:

    goto LABEL_21;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
  {
    [REMStore(FamilyChecklist) deleteSharedGroceryList:a4 error:?];
  }

  LOBYTE(v12) = 0;
LABEL_21:

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)postFamilyAnalyticsPayloadWithOperationId:(id)a3 operationDetail:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setObject:v6 forKeyedSubscript:@"operationId"];

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:@"operationDetail"];
  }

  v8 = +[REMLog analytics];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = @"com.apple.reminderkit.familyChecklist";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "Posting analytics {name: (%@, privacy: .public), payload: (%@, privacy: .public)", &v10, 0x16u);
  }

  AnalyticsSendEvent();
  v9 = *MEMORY[0x1E69E9840];
}

void __123__REMStore_IntelligentFeatures__isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature_isInternalInstall___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == 1)
  {
    v5 = +[REMLogStore xpc];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __123__REMStore_IntelligentFeatures__isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature_isInternalInstall___block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  if (!v4)
  {
    v5 = +[REMLogStore xpc];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __123__REMStore_IntelligentFeatures__isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature_isInternalInstall___block_invoke_cold_2();
    }

LABEL_7:
  }
}

void __67__REMStore_TrialClient__requestDownloadGroceryModelAssetsFromTrial__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__REMStore_TrialClient__requestDownloadGroceryModelAssetsFromTrial__block_invoke_cold_1();
  }
}

- (id)fetchCreatedOrCompletedRemindersCountForAppStoreFromDate:(id)a3 toDate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "fromDate");
    if (v10)
    {
      goto LABEL_3;
    }
  }

  NSLog(&cfstr_SIsUnexpectedl.isa, "toDate");
LABEL_3:
  v11 = [[REMAppStoreDataView alloc] initWithStore:self];
  v12 = [(REMAppStoreDataView *)v11 fetchCreatedOrCompletedRemindersCountFromDate:v8 toDate:v10 error:a5];

  return v12;
}

- (id)fetchListsForEventKitBridgingWithError:(id *)a3
{
  v4 = [[REMEventKitBridgingDataView alloc] initWithStore:self];
  v5 = [(REMEventKitBridgingDataView *)v4 fetchListsWithError:a3];

  return v5;
}

- (id)fetchRemindersForEventKitBridgingWithListIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMEventKitBridgingDataView alloc] initWithStore:self];
  v8 = [(REMEventKitBridgingDataView *)v7 fetchRemindersWithListIDs:v6 error:a4];

  return v8;
}

- (id)fetchIncompleteRemindersForEventKitBridgingWithDueDateFrom:(id)a3 to:(id)a4 withListIDs:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[REMEventKitBridgingDataView alloc] initWithStore:self];
  v14 = [(REMEventKitBridgingDataView *)v13 fetchIncompleteRemindersWithDueDateFrom:v12 to:v11 withListIDs:v10 error:a6];

  return v14;
}

- (id)fetchCompletedRemindersForEventKitBridgingWithCompletionDateFrom:(id)a3 to:(id)a4 withListIDs:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[REMEventKitBridgingDataView alloc] initWithStore:self];
  v14 = [(REMEventKitBridgingDataView *)v13 fetchCompletedRemindersWithCompletionDateFrom:v12 to:v11 withListIDs:v10 error:a6];

  return v14;
}

- (id)fetchAllRemindersWithExternalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "externalIdentifier");
  }

  v7 = [[REMRemindersDataView alloc] initWithStore:self];
  v8 = [(REMRemindersDataView *)v7 fetchAllRemindersWithExternalIdentifier:v6 error:a4];

  return v8;
}

- (id)fetchRemindersMatchingTitle:(id)a3 dueAfter:(id)a4 dueBefore:(id)a5 isCompleted:(id)a6 hasLocation:(id)a7 location:(id)a8 error:(id *)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[REMSiriSearchLimitedDataView alloc] initWithStore:self];
  v22 = [(REMSiriSearchLimitedDataView *)v21 fetchRemindersMatchingTitle:v20 dueAfter:v19 dueBefore:v18 isCompleted:v17 hasLocation:v16 location:v15 error:a9];

  return v22;
}

- (id)fetchAccountWithExternalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "externalIdentifier");
  }

  v7 = [[REMAccountsDataView alloc] initWithStore:self];
  v8 = [(REMAccountsDataView *)v7 fetchAccountWithExternalIdentifier:v6 error:a4];

  return v8;
}

- (id)fetchAccountsWithExternalIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "externalIdentifiers");
  }

  v7 = [[REMAccountsDataView alloc] initWithStore:self];
  v8 = [(REMAccountsDataView *)v7 fetchAccountsWithExternalIdentifiers:v6 error:a4];

  return v8;
}

- (id)fetchListsIncludingSpecialContainersInAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "account");
  }

  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchListsIncludingSpecialContainersInAccount:v6 error:a4];

  return v8;
}

- (id)fetchListIncludingSpecialContainerWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listObjectID");
  }

  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchListIncludingSpecialContainerWithObjectID:v6 error:a4];

  return v8;
}

- (id)fetchReminderWithExternalIdentifier:(id)a3 inList:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = [v9 fetchReminderWithExternalIdentifier:v8 error:a5];
    }

    else
    {
      v12 = +[REMLogStore read];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [REMStore(CalendarDataAccess) fetchReminderWithExternalIdentifier:inList:error:];
      }

      v13 = [[REMRemindersDataView alloc] initWithStore:self];
      v11 = [(REMRemindersDataView *)v13 fetchReminderWithExternalIdentifier:v8 inList:0 error:a5];
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "externalIdentifier");
    v11 = 0;
  }

  return v11;
}

- (id)fetchRemindersWithExternalIdentifiers:(id)a3 inList:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
LABEL_3:
      v11 = [v10 fetchRemindersWithExternalIdentifiers:v8 error:a5];
      goto LABEL_8;
    }
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "externalIdentifiers");
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v12 = +[REMLogStore read];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [REMStore(CalendarDataAccess) fetchRemindersWithExternalIdentifiers:inList:error:];
  }

  v13 = [[REMRemindersDataView alloc] initWithStore:self];
  v11 = [(REMRemindersDataView *)v13 fetchRemindersWithExternalIdentifiers:v8 inList:0 error:a5];

LABEL_8:

  return v11;
}

- (id)fetchReminderWithDACalendarItemUniqueIdentifier:(id)a3 inList:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "daCalendarItemUniqueIdentifier");
  }

  v10 = [[REMRemindersDataView alloc] initWithStore:self];
  v11 = [(REMRemindersDataView *)v10 fetchReminderWithDACalendarItemUniqueIdentifier:v8 inList:v9 error:a5];

  return v11;
}

- (id)fetchRemindersWithDACalendarItemUniqueIdentifiers:(id)a3 inList:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "daCalendarItemUniqueIdentifiers");
  }

  v10 = [[REMRemindersDataView alloc] initWithStore:self];
  v11 = [(REMRemindersDataView *)v10 fetchRemindersWithDACalendarItemUniqueIdentifiers:v8 inList:v9 error:a5];

  return v11;
}

- (id)MCIsManagedAccountWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "accountObjectID");
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__REMStore_EventKitCompatibility__MCIsManagedAccountWithObjectID_error___block_invoke;
  v16[3] = &unk_1E7507BF0;
  v7 = v6;
  v17 = v7;
  v18 = &v25;
  v8 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"MCIsManagedAccountWithObjectID:" errorHandler:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__REMStore_EventKitCompatibility__MCIsManagedAccountWithObjectID_error___block_invoke_516;
  v12[3] = &unk_1E7508138;
  v9 = v7;
  v13 = v9;
  v14 = &v19;
  v15 = &v25;
  [v8 MCIsManagedAccountWithObjectID:v9 completion:v12];
  if (a4)
  {
    *a4 = v26[5];
  }

  v10 = v20[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v10;
}

void __72__REMStore_EventKitCompatibility__MCIsManagedAccountWithObjectID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__REMStore_EventKitCompatibility__MCIsManagedAccountWithObjectID_error___block_invoke_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __72__REMStore_EventKitCompatibility__MCIsManagedAccountWithObjectID_error___block_invoke_516(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLogStore read];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__REMStore_EventKitCompatibility__MCIsManagedAccountWithObjectID_error___block_invoke_516_cold_1(v6, a1);
    }

    v9 = 48;
    v10 = v6;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "Store perform MCIsManagedAccountWithObjectID successful {account: %@, MCIsManaged: %@}", &v13, 0x16u);
  }

  if (v5)
  {
    v9 = 40;
    v10 = v5;
LABEL_9:
    objc_storeStrong((*(*(a1 + v9) + 8) + 40), v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (BOOL)notificationsEnabled
{
  v2 = +[REMUserDefaults daemonUserDefaults];
  v3 = [v2 newAppShouldTakeoverEKReminderNotifications];

  return v3;
}

+ (BOOL)dataaccessDaemonStopSyncingReminders
{
  v2 = +[REMUserDefaults daemonUserDefaults];
  v3 = [v2 dataaccessDaemonStopSyncingReminders];

  return v3;
}

+ (BOOL)isEventKitSyncEnabledForReminderKit
{
  v2 = +[REMLogStore utility];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_INFO, "EventKitSync: enabled on iOS", v4, 2u);
  }

  return 1;
}

- (id)fetchAllListsWithExternalIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "externalIdentifier");
  }

  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchAllListsWithExternalIdentifier:v6 inAccount:0 error:a4];

  return v8;
}

- (void)triggerSyncForDataAccessAccountsWithAccountIDs:(id)a3
{
  v4 = a3;
  v5 = [(REMStore *)self daemonController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__REMStore_AccountManagement_PrivateSPIs__triggerSyncForDataAccessAccountsWithAccountIDs___block_invoke;
  v7[3] = &unk_1E7508160;
  v8 = v4;
  v6 = v4;
  [v5 asyncSyncInterfacePerformerWithReason:@"triggerSyncForDataAccessAccountsWithAccountIDs" loadHandler:v7 errorHandler:&__block_literal_global_543];
}

void __90__REMStore_AccountManagement_PrivateSPIs__triggerSyncForDataAccessAccountsWithAccountIDs___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_19A0DB000, v4, OS_LOG_TYPE_DEFAULT, "Triggering sync for dataAccess accounts {accountIDs: %{public}@}", &v7, 0xCu);
  }

  [v3 syncDataAccessAccountsWithAccountIDs:*(a1 + 32) bypassThrottler:1 completion:&__block_literal_global_540];
  v6 = *MEMORY[0x1E69E9840];
}

void __90__REMStore_AccountManagement_PrivateSPIs__triggerSyncForDataAccessAccountsWithAccountIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __90__REMStore_AccountManagement_PrivateSPIs__triggerSyncForDataAccessAccountsWithAccountIDs___block_invoke_2_cold_1();
  }
}

void __96__REMStore_AccountManagement_Internal__triggerThrottledSyncWithReason_discretionary_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 domain];
  if (([v5 isEqual:@"com.apple.reminderkit"] & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [v4 code];

  if (v6 != -1002)
  {
LABEL_8:
    v8 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  v7 = +[REMLogStore xpc];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "Sync throttled", v9, 2u);
  }

  v8 = *(*(a1 + 32) + 16);
LABEL_9:
  v8();
}

- (void)updateAccountsAndSync:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(REMStore *)self daemonController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke;
  v11[3] = &unk_1E75081D8;
  v13 = a3;
  v11[4] = self;
  v12 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_2_552;
  v9[3] = &unk_1E7507CE0;
  v10 = v12;
  v8 = v12;
  [v7 asyncStorePerformerWithReason:@"updateAccountsAndSync" loadHandler:v11 errorHandler:v9];
}

void __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_2;
  v5[3] = &unk_1E75081B0;
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 updateAccountsAndFetchMigrationState:1 completion:v5];
}

void __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_2(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_2_cold_1();
    }

    v9 = *(*(a1 + 40) + 16);
    goto LABEL_8;
  }

  if (*(a1 + 48) != 1)
  {
    v9 = *(*(a1 + 40) + 16);
LABEL_8:
    v9();
    goto LABEL_9;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_550;
  v11[3] = &unk_1E7508188;
  v10 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = a2;
  v14 = a3;
  [v10 _triggerSyncWithReason:@"UpdateAccounts" skipDataAccessSync:0 forcingCloudKitReload:a2 discretionary:0 bypassThrottler:1 completion:v11];

LABEL_9:
}

void __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_2_552(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_2_552_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updateAccountWithAccountID:(id)a3 restartDA:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(REMStore *)self daemonController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__REMStore_AccountManagement_Internal__updateAccountWithAccountID_restartDA_completion___block_invoke;
  v15[3] = &unk_1E7508228;
  v18 = a4;
  v16 = v8;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__REMStore_AccountManagement_Internal__updateAccountWithAccountID_restartDA_completion___block_invoke_3;
  v13[3] = &unk_1E7507B30;
  v14 = v16;
  v11 = v16;
  v12 = v9;
  [v10 asyncStorePerformerWithReason:@"updateAccountWithAccountID" loadHandler:v15 errorHandler:v13];
}

void __88__REMStore_AccountManagement_Internal__updateAccountWithAccountID_restartDA_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__REMStore_AccountManagement_Internal__updateAccountWithAccountID_restartDA_completion___block_invoke_2;
  v5[3] = &unk_1E7508200;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 updateAccountWithACAccountID:v4 restartDA:v3 completion:v5];
}

void __88__REMStore_AccountManagement_Internal__updateAccountWithAccountID_restartDA_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __88__REMStore_AccountManagement_Internal__updateAccountWithAccountID_restartDA_completion___block_invoke_3_cold_1(v3, a1);
  }
}

- (void)removeOrphanedAccountsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(REMStore *)self daemonController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__REMStore_AccountManagement_Internal__removeOrphanedAccountsWithCompletion___block_invoke;
  v7[3] = &unk_1E7508250;
  v8 = v4;
  v6 = v4;
  [v5 asyncStorePerformerWithReason:@"removeOrphanedAccountsWithCompletion" loadHandler:v7 errorHandler:&__block_literal_global_560];
}

void __77__REMStore_AccountManagement_Internal__removeOrphanedAccountsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__REMStore_AccountManagement_Internal__removeOrphanedAccountsWithCompletion___block_invoke_2;
  v3[3] = &unk_1E7507FB0;
  v4 = *(a1 + 32);
  [a2 removeOrphanedAccountWithCompletion:v3];
}

void __77__REMStore_AccountManagement_Internal__removeOrphanedAccountsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __77__REMStore_AccountManagement_Internal__removeOrphanedAccountsWithCompletion___block_invoke_3_cold_1();
  }
}

- (void)_triggerSyncWithReason:(id)a3 skipDataAccessSync:(BOOL)a4 forcingCloudKitReload:(BOOL)a5 discretionary:(BOOL)a6 bypassThrottler:(BOOL)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a3;
  v16 = [(REMStore *)self daemonController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke;
  v20[3] = &unk_1E75082C8;
  v22 = a5;
  v20[4] = v15;
  v23 = a7;
  v24 = a6;
  v25 = a4;
  v21 = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_6;
  v18[3] = &unk_1E7507CE0;
  v19 = v21;
  v17 = v21;
  [v16 asyncSyncInterfacePerformerWithReason:v15 loadHandler:v20 errorHandler:v18];
}

void __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__1;
  v22[4] = __Block_byref_object_dispose__1;
  v23 = 0;
  v4 = dispatch_group_create();
  v5 = *(a1 + 48);
  dispatch_group_enter(v4);
  v6 = *(a1 + 32);
  if (v5 == 1)
  {
    v7 = *(a1 + 49);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_2;
    v20[3] = &unk_1E7508278;
    v21[1] = v22;
    v21[0] = v4;
    [v3 restartCloudKitSyncWithReason:v6 bypassThrottler:v7 completion:v20];
    v8 = v21;
  }

  else
  {
    v9 = *(a1 + 50);
    v10 = *(a1 + 49);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_3;
    v18[3] = &unk_1E7508278;
    v19[1] = v22;
    v19[0] = v4;
    [v3 syncCloudKitWithReason:v6 discretionary:v9 bypassThrottler:v10 completion:v18];
    v8 = v19;
  }

  if ((*(a1 + 51) & 1) == 0)
  {
    dispatch_group_enter(v4);
    v11 = *(a1 + 49);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_4;
    v15[3] = &unk_1E7508278;
    v17 = v22;
    v16 = v4;
    [v3 syncDataAccessAccountsWithAccountIDs:MEMORY[0x1E695E0F0] bypassThrottler:v11 completion:v15];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_5;
  v12[3] = &unk_1E75082A0;
  v13 = *(a1 + 40);
  v14 = v22;
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], v12);

  _Block_object_dispose(v22, 8);
}

void __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_6_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestToMergeLocalDataIntoSyncDataWithAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(REMStore *)self daemonController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__REMStore_AccountManagement_Internal__requestToMergeLocalDataIntoSyncDataWithAccountIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7507F38;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__REMStore_AccountManagement_Internal__requestToMergeLocalDataIntoSyncDataWithAccountIdentifier_completion___block_invoke_3;
  v11[3] = &unk_1E7507B30;
  v12 = v14;
  v9 = v14;
  v10 = v7;
  [v8 asyncStorePerformerWithReason:@"requestToMergeLocalDataIntoSyncData" loadHandler:v13 errorHandler:v11];
}

void __108__REMStore_AccountManagement_Internal__requestToMergeLocalDataIntoSyncDataWithAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __108__REMStore_AccountManagement_Internal__requestToMergeLocalDataIntoSyncDataWithAccountIdentifier_completion___block_invoke_2;
  v4[3] = &unk_1E7507CE0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 requestToMergeLocalDataIntoSyncDataWithAccountIdentifier:v3 completion:v4];
}

void __108__REMStore_AccountManagement_Internal__requestToMergeLocalDataIntoSyncDataWithAccountIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __108__REMStore_AccountManagement_Internal__requestToMergeLocalDataIntoSyncDataWithAccountIdentifier_completion___block_invoke_3_cold_1(a1);
  }
}

- (void)requestToDeleteSyncDataWithAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(REMStore *)self daemonController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__REMStore_AccountManagement_Internal__requestToDeleteSyncDataWithAccountIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7507F38;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__REMStore_AccountManagement_Internal__requestToDeleteSyncDataWithAccountIdentifier_completion___block_invoke_3;
  v11[3] = &unk_1E7507B30;
  v12 = v14;
  v9 = v14;
  v10 = v7;
  [v8 asyncStorePerformerWithReason:@"requestToDeleteSyncData" loadHandler:v13 errorHandler:v11];
}

void __96__REMStore_AccountManagement_Internal__requestToDeleteSyncDataWithAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __96__REMStore_AccountManagement_Internal__requestToDeleteSyncDataWithAccountIdentifier_completion___block_invoke_2;
  v4[3] = &unk_1E7507CE0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 requestToDeleteSyncDataWithAccountIdentifier:v3 completion:v4];
}

void __96__REMStore_AccountManagement_Internal__requestToDeleteSyncDataWithAccountIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __96__REMStore_AccountManagement_Internal__requestToDeleteSyncDataWithAccountIdentifier_completion___block_invoke_3_cold_1(a1);
  }
}

- (void)requestToDeleteLocalDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(REMStore *)self daemonController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__REMStore_AccountManagement_Internal__requestToDeleteLocalDataWithCompletion___block_invoke;
  v7[3] = &unk_1E7508250;
  v8 = v4;
  v6 = v4;
  [v5 asyncStorePerformerWithReason:@"requestToDeleteLocalData" loadHandler:v7 errorHandler:&__block_literal_global_571];
}

void __79__REMStore_AccountManagement_Internal__requestToDeleteLocalDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__REMStore_AccountManagement_Internal__requestToDeleteLocalDataWithCompletion___block_invoke_2;
  v3[3] = &unk_1E7507CE0;
  v4 = *(a1 + 32);
  [a2 requestToDeleteLocalDataWithCompletion:v3];
}

void __79__REMStore_AccountManagement_Internal__requestToDeleteLocalDataWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __79__REMStore_AccountManagement_Internal__requestToDeleteLocalDataWithCompletion___block_invoke_3_cold_1();
  }
}

- (id)fetchTemplateWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMTemplatesDataView alloc] initWithStore:self];
  v8 = [(REMTemplatesDataView *)v7 fetchTemplateWithObjectID:v6 error:a4];

  return v8;
}

- (id)fetchListRepresentationOfTemplateWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[REMListsDataView alloc] initWithStore:self];
  v8 = [(REMListsDataView *)v7 fetchListRepresentationOfTemplateWithObjectID:v6 error:a4];

  return v8;
}

- (void)addCKShareObserverIfNeededForAccountID:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke;
  v23[3] = &unk_1E7507D30;
  v24 = v9;
  v25 = v10;
  v11 = v10;
  v12 = v9;
  v13 = MEMORY[0x19A8FD720](v23);
  v14 = [(REMStore *)self daemonController];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke_3;
  v20[3] = &unk_1E7507F38;
  v21 = v8;
  v22 = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke_5;
  v17[3] = &unk_1E7507D30;
  v18 = v21;
  v19 = v22;
  v15 = v22;
  v16 = v21;
  [v14 asyncStorePerformerWithReason:@"addCKShareObserverIfNeededForAccountID" loadHandler:v20 errorHandler:v17];
}

void __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke_2;
  v7[3] = &unk_1E7507E98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke_4;
  v4[3] = &unk_1E7507CE0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 addCKShareObserverIfNeededForAccountID:v3 completion:v4];
}

void __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke_5_cold_1(v3, a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)replicaManagerProviderForCalDAVSync
{
  v2 = [[_REMDACalDAVSyncReplicaManagerProvider alloc] initWithStore:self];

  return v2;
}

uint64_t __105__REMStore_ClientConnections__requestToUpdateClientConnectionsAsynchronously_shouldKeepAlive_completion___block_invoke(uint64_t a1, void *a2)
{
  [a2 requestToUpdateClientConnectionsWithShouldKeepAlive:*(a1 + 40)];
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __105__REMStore_ClientConnections__requestToUpdateClientConnectionsAsynchronously_shouldKeepAlive_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __105__REMStore_ClientConnections__requestToUpdateClientConnectionsAsynchronously_shouldKeepAlive_completion___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __105__REMStore_ClientConnections__requestToUpdateClientConnectionsAsynchronously_shouldKeepAlive_completion___block_invoke_655(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __105__REMStore_ClientConnections__requestToUpdateClientConnectionsAsynchronously_shouldKeepAlive_completion___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (id)repairPhantomObjectsWithObjectIDs:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[REMLogStore write];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "repairPhantomObjectsWithObjectIDs: Invoked with {objectIDs: %{public}@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__REMStore_PhantomObjectRepairing__repairPhantomObjectsWithObjectIDs_error___block_invoke;
  v14[3] = &unk_1E7507BF0;
  v8 = v6;
  v15 = v8;
  p_buf = &buf;
  v9 = [(REMStore *)self _xpcSyncStorePerformerWithReason:@"repairPhantomObjectsWithObjectIDs" errorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__REMStore_PhantomObjectRepairing__repairPhantomObjectsWithObjectIDs_error___block_invoke_664;
  v13[3] = &unk_1E7508368;
  v13[4] = &buf;
  v13[5] = &v17;
  [v9 validatePhantomObjectsWith:v8 shouldRepair:1 completion:v13];
  if (a4)
  {
    *a4 = *(*(&buf + 1) + 40);
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __76__REMStore_PhantomObjectRepairing__repairPhantomObjectsWithObjectIDs_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__REMStore_PhantomObjectRepairing__repairPhantomObjectsWithObjectIDs_error___block_invoke_cold_1(v3, a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __76__REMStore_PhantomObjectRepairing__repairPhantomObjectsWithObjectIDs_error___block_invoke_664(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__REMStore_PhantomObjectRepairing__repairPhantomObjectsWithObjectIDs_error___block_invoke_664_cold_1();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, "repairPhantomObjectsWithObjectIDs successful {result: %{public}@}", &v12, 0xCu);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;

  v11 = *MEMORY[0x1E69E9840];
}

- (id)debugFetchPhantomListsWithError:(id *)a3
{
  v4 = [[REMListsDataView alloc] initWithStore:self];
  v5 = [(REMListsDataView *)v4 debugFetchPhantomListsWithError:a3];

  return v5;
}

- (void)test_setupForManualHashtagLabelRefreshing
{
  v2 = [(REMStore *)self daemonController];
  v3 = [v2 syncDebugPerformerWithReason:@"test_setupForManualHashtagLabelRefreshing" errorHandler:&__block_literal_global_674];

  [v3 setupManualHashtagLabelUpdater];
}

void __63__REMStore_UnitTest__test_setupForManualHashtagLabelRefreshing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

- (void)test_refreshHashtagLabelsImmediately
{
  v2 = [(REMStore *)self daemonController];
  v3 = [v2 syncDebugPerformerWithReason:@"test_refreshHashtagLabelsImmediately" errorHandler:&__block_literal_global_679];

  [v3 refreshHashtagLabelsImmediately];
}

void __58__REMStore_UnitTest__test_refreshHashtagLabelsImmediately__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

- (void)test_handleIncompleteTemplateOperationQueueItemsImmediately
{
  v2 = [(REMStore *)self daemonController];
  v3 = [v2 syncDebugPerformerWithReason:@"test_handleIncompleteTemplateOperationQueueItemsImmediately" errorHandler:&__block_literal_global_684];

  [v3 handleIncompleteTemplateOperationQueueItemsImmediately];
}

void __81__REMStore_UnitTest__test_handleIncompleteTemplateOperationQueueItemsImmediately__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

- (void)test_handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout:(double)a3
{
  v4 = [(REMStore *)self daemonController];
  v5 = [v4 syncDebugPerformerWithReason:@"test_handleIncompleteGroceryOperationQueueItemsImmediately" errorHandler:&__block_literal_global_689];

  [v5 handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout:a3];
}

void __92__REMStore_UnitTest__test_handleIncompleteGroceryOperationQueueItemsImmediatelyWithTimeout___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

- (void)test_handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout:(double)a3
{
  v4 = [(REMStore *)self daemonController];
  v5 = [v4 syncDebugPerformerWithReason:@"test_handleIncompleteAutoCategorizationOperationQueueItemsImmediately" errorHandler:&__block_literal_global_694];

  [v5 handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout:a3];
}

void __103__REMStore_UnitTest__test_handleIncompleteAutoCategorizationOperationQueueItemsImmediatelyWithTimeout___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

- (void)test_initDummyAutoCategorizationWithCategoryByTitle:(id)a3
{
  v4 = a3;
  v5 = [(REMStore *)self daemonController];
  v6 = [v5 syncDebugPerformerWithReason:@"test_initDummyAutoCategorizationWithCategoryByTitle" errorHandler:&__block_literal_global_699];

  [v6 initDummyAutoCategorizationWithCategoryByTitle:v4];
}

void __74__REMStore_UnitTest__test_initDummyAutoCategorizationWithCategoryByTitle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

- (id)test_immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(REMStore *)self daemonController];
  v11 = [v10 syncDebugPerformerWithReason:@"test_immediatelyCreateOrUpdatePublicLinkOfTemplate" errorHandler:&__block_literal_global_704];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113__REMStore_UnitTest__test_immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID_configuration_error___block_invoke_705;
  v15[3] = &unk_1E7508390;
  v15[4] = &v22;
  v15[5] = &v16;
  [v11 immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID:v8 configuration:v9 completion:v15];
  if (a5)
  {
    v12 = v17[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void __113__REMStore_UnitTest__test_immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID_configuration_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

void __113__REMStore_UnitTest__test_immediatelyCreateOrUpdatePublicLinkOfTemplateWithTemplateObjectID_configuration_error___block_invoke_705(uint64_t a1, void *a2, void *a3)
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

- (id)test_immediatelyRevokePublicLinkOfTemplateWithTemplateObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(REMStore *)self daemonController];
  v8 = [v7 syncDebugPerformerWithReason:@"test_immediatelyRevokePublicLinkOfTemplate" errorHandler:&__block_literal_global_711];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__REMStore_UnitTest__test_immediatelyRevokePublicLinkOfTemplateWithTemplateObjectID_error___block_invoke_712;
  v12[3] = &unk_1E75083B8;
  v12[4] = &v19;
  v12[5] = &v13;
  [v8 immediatelyRevokePublicLinkOfTemplateWithTemplateObjectID:v6 completion:v12];
  if (a4)
  {
    v9 = v14[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __91__REMStore_UnitTest__test_immediatelyRevokePublicLinkOfTemplateWithTemplateObjectID_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__REMStore_nukeDatabase__block_invoke_cold_1();
  }
}

void __91__REMStore_UnitTest__test_immediatelyRevokePublicLinkOfTemplateWithTemplateObjectID_error___block_invoke_712(uint64_t a1, void *a2, void *a3)
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

- (BOOL)test_revertImageAttachmentsToUnDeduped:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(REMStore *)self daemonController];
  v8 = [v7 syncDebugPerformerWithReason:@"test_revertImageAttachmentsToUnDeduped" errorHandler:&__block_literal_global_718];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__REMStore_UnitTest__test_revertImageAttachmentsToUnDeduped_error___block_invoke_719;
  v13[3] = &unk_1E7507AE0;
  v13[4] = &v14;
  [v8 synchronous_revertImageAttachmentsToUnDeduped:v6 completion:v13];
  v9 = v15;
  if (a4)
  {
    v10 = v15[5];
    if (v10)
    {
      *a4 = v10;
      v9 = v15;
    }
  }

  v11 = v9[5] == 0;
  _Block_object_dispose(&v14, 8);

  return v11;
}

void __67__REMStore_UnitTest__test_revertImageAttachmentsToUnDeduped_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[REMLogStore xpc];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__REMStore_UnitTest__test_revertImageAttachmentsToUnDeduped_error___block_invoke_cold_1();
  }
}

- (id)fetchListSectionsWithObjectIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "sectionObjectIDs");
  }

  v7 = [[REMListSectionsDataView alloc] initWithStore:self];
  v8 = [(REMListSectionsDataView *)v7 fetchListSectionsWithObjectIDs:v6 error:a4];

  return v8;
}

- (id)fetchListSectionWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  }

  v7 = [[REMListSectionsDataView alloc] initWithStore:self];
  v8 = [(REMListSectionsDataView *)v7 fetchListSectionWithObjectID:v6 error:a4];

  return v8;
}

- (id)fetchListSectionsForListSectionContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listSectionContext");
  }

  v7 = [v6 list];

  if (!v7)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listSectionContext.list");
  }

  v8 = [[REMListSectionsDataView alloc] initWithStore:self];
  v9 = [v6 list];
  v10 = [(REMListSectionsDataView *)v8 fetchListSectionsInList:v9 error:a4];

  return v10;
}

- (id)fetchListSectionsForListSectionContextChangeItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 listChangeItem];
  v8 = [v7 objectID];

  if (!v8)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listSectionContextChangeItem.listChangeItem.objectID");
  }

  v9 = [[REMListSectionsDataView alloc] initWithStore:self];
  v10 = [v6 listChangeItem];

  v11 = [v10 objectID];
  v12 = [(REMListSectionsDataView *)v9 fetchListSectionsWithListObjectID:v11 error:a4];

  return v12;
}

- (id)fetchListSectionsWithListObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listObjectID");
  }

  v7 = [[REMListSectionsDataView alloc] initWithStore:self];
  v8 = [(REMListSectionsDataView *)v7 fetchListSectionsWithListObjectID:v6 error:a4];

  return v8;
}

- (id)fetchListSectionsCountWithListObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listObjectID");
  }

  v7 = [[REMListSectionsDataView alloc] initWithStore:self];
  v8 = [(REMListSectionsDataView *)v7 fetchListSectionsCountWithListObjectID:v6 error:a4];

  return v8;
}

- (id)fetchSmartListSectionsWithObjectIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "sectionObjectIDs");
  }

  v7 = [[REMSmartListSectionsDataView alloc] initWithStore:self];
  v8 = [(REMSmartListSectionsDataView *)v7 fetchSmartListSectionsWithObjectIDs:v6 error:a4];

  return v8;
}

- (id)fetchSmartListSectionWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  }

  v7 = [[REMSmartListSectionsDataView alloc] initWithStore:self];
  v8 = [(REMSmartListSectionsDataView *)v7 fetchSmartListSectionWithObjectID:v6 error:a4];

  return v8;
}

- (id)fetchSmartListSectionsForSmartListSectionContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "smartListSectionContext");
  }

  v7 = [v6 smartList];

  if (!v7)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "smartListSectionContext.smartList");
  }

  v8 = [[REMSmartListSectionsDataView alloc] initWithStore:self];
  v9 = [v6 smartList];
  v10 = [(REMSmartListSectionsDataView *)v8 fetchSmartListSectionsInSmartList:v9 error:a4];

  return v10;
}

- (id)fetchTemplateSectionsWithObjectIDs:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "sectionObjectIDs");
  }

  v7 = [[REMTemplateSectionsDataView alloc] initWithStore:self];
  v8 = [(REMTemplateSectionsDataView *)v7 fetchTemplateSectionsWithObjectIDs:v6 error:a4];

  return v8;
}

- (id)fetchTemplateSectionWithObjectID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "objectID");
  }

  v7 = [[REMTemplateSectionsDataView alloc] initWithStore:self];
  v8 = [(REMTemplateSectionsDataView *)v7 fetchTemplateSectionWithObjectID:v6 error:a4];

  return v8;
}

- (id)fetchTemplateSectionsForTemplateSectionContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "templateSectionContext");
  }

  v7 = [v6 parentTemplate];

  if (!v7)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "templateSectionContext.parentTemplate");
  }

  v8 = [[REMTemplateSectionsDataView alloc] initWithStore:self];
  v9 = [v6 parentTemplate];
  v10 = [(REMTemplateSectionsDataView *)v8 fetchTemplateSectionsInTemplate:v9 error:a4];

  return v10;
}

void __50__REMStore_createIsolatedStoreContainerWithError___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Failed to create isolated store container {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __57__REMStore_destroyIsolatedStoreContainerWithToken_error___block_invoke_32_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error trying to call destroyIsolatedStoreContainerWithToken {xpcError: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __24__REMStore_nukeDatabase__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "xpc error while using debug performer {error :%@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __50__REMStore_fetchReplicaManagerForAccountID_error___block_invoke_70_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __60__REMStore_fetchReplicaManagersForAccountID_bundleID_error___block_invoke_75_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __238__REMStore_saveSaveRequest_accountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_error___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke_88_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __53__REMStore_fetchResultByExecutingFetchRequest_error___block_invoke_88_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_19A0DB000, a1, a3, "Failed to get fetchResult or error from fetchRequest {fetchRequest: %@}", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __49__REMStore_resultFromPerformingInvocation_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 32) name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __49__REMStore_resultFromPerformingInvocation_error___block_invoke_93_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 32) name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __78__REMStore_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  v2 = [*(v0 + 32) name];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __78__REMStore_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_98_cold_1()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);
  v2 = [*(v0 + 32) name];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void __43__REMStore_enumerateAllRemindersWithBlock___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateAllListsIncludingGroups:(void *)a1 withBlock:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __58__REMStore__xpcSyncStorePerformerWithReason_errorHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_addChangeItemChangedKeys:objectID:toChangedKeysMap:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "(client) Unexpected duplicate change item on objects with the same objectID {objectID: %{public}@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_saveAccountChangeItems:(os_log_t)log listChangeItems:listSectionChangeItems:smartListChangeItems:smartListSectionChangeItems:templateChangeItems:templateSectionChangeItems:reminderChangeItems:author:replicaManagerProvider:synchronously:syncToCloudKit:performer:completion:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_19A0DB000, log, OS_LOG_TYPE_FAULT, "A template should be modified using 'REMTemplateChangeItem' instead of 'REMListChangeItem'", buf, 2u);
}

void __271__REMStore__saveAccountChangeItems_listChangeItems_listSectionChangeItems_smartListChangeItems_smartListSectionChangeItems_templateChangeItems_templateSectionChangeItems_reminderChangeItems_author_replicaManagerProvider_synchronously_syncToCloudKit_performer_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "(client) SAVE FAIL {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__REMStore_fetchShareForListWithID_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __42__REMStore_fetchShareForListWithID_error___block_invoke_115_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __55__REMStore_createShareForListWithID_appIconData_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __55__REMStore_createShareForListWithID_appIconData_error___block_invoke_120_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __51__REMStore_updateShare_accountID_queue_completion___block_invoke_5_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __49__REMStore_stopShare_accountID_queue_completion___block_invoke_5_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void __53__REMStore_acceptShareWithMetadata_queue_completion___block_invoke_5_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while fetching store performer {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__REMStore_compressedDistributedEvaluationDataWithOptions_error___block_invoke_135_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "DistributedEvaluation Export ERROR {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__REMStore_anchoredBubbleCloudOverridesWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while querying iCloud configuration for Suggested Attributes harvesting parameters {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__REMStore_fetchMinimumSearchTermLengthByBaseLanguageWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while querying iCloud configuration for minimumSearchTermLengthByBaseLanguage {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__REMStore_fetchMinimumSearchTermLengthByBaseLanguageWithError___block_invoke_153_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Fetch minimumSearchTermLengthByBaseLanguage failed {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_17();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_16(v2) objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_15() account];
  v4 = [v3 objectID];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_17();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_16(v2) objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_15() account];
  v4 = [v3 objectID];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_cold_3()
{
  OUTLINED_FUNCTION_17();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_16(v2) objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_15() account];
  v4 = [v3 objectID];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_cold_4()
{
  OUTLINED_FUNCTION_17();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_16(v2) objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_15() account];
  v4 = [v3 objectID];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __84__REMStore_CalDAVSharing___respondToCalDAVSharedList_withResponse_queue_completion___block_invoke_3_323_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a2 + 32) objectID];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __83__REMStore_iMessageInteractionSPI__notifyOfInteractionWithPeople_force_completion___block_invoke_360_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_421_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI CloudKit error fetching participants for shared grocery list %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_424_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI CloudKit error modifying record to add participants to shared grocery list %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__REMStore_FamilyChecklist__addParticipantsToSharedGroceryList_completion___block_invoke_432_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "FamilyChecklistSPI error syncing shared grocery list participants %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __123__REMStore_IntelligentFeatures__isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature_isInternalInstall___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while request to fetch Suggested Reminders minimum supported version {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __123__REMStore_IntelligentFeatures__isIntelligentFeaturesSupportedInCurrentAppVersionWithIntelligentFeature_isInternalInstall___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while request to fetch Auto Categorization minimum supported version {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67__REMStore_TrialClient__requestDownloadGroceryModelAssetsFromTrial__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while request downloading grocery model assets from trial {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__REMStore_EventKitCompatibility__MCIsManagedAccountWithObjectID_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __72__REMStore_EventKitCompatibility__MCIsManagedAccountWithObjectID_error___block_invoke_516_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __90__REMStore_AccountManagement_PrivateSPIs__triggerSyncForDataAccessAccountsWithAccountIDs___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while syncing {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Error updating account. Not Triggering sync {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__REMStore_AccountManagement_Internal__updateAccountsAndSync_completion___block_invoke_2_552_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while updating accounts {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __88__REMStore_AccountManagement_Internal__updateAccountWithAccountID_restartDA_completion___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __77__REMStore_AccountManagement_Internal__removeOrphanedAccountsWithCompletion___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while removing orphaned accounts {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __145__REMStore_AccountManagement_Internal___triggerSyncWithReason_skipDataAccessSync_forcingCloudKitReload_discretionary_bypassThrottler_completion___block_invoke_6_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while syncing {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __108__REMStore_AccountManagement_Internal__requestToMergeLocalDataIntoSyncDataWithAccountIdentifier_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __96__REMStore_AccountManagement_Internal__requestToDeleteSyncDataWithAccountIdentifier_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __79__REMStore_AccountManagement_Internal__requestToDeleteLocalDataWithCompletion___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "XPC error while requesting to delete local data {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__REMStore_Sharing__addCKShareObserverIfNeededForAccountID_queue_completion___block_invoke_5_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __105__REMStore_ClientConnections__requestToUpdateClientConnectionsAsynchronously_shouldKeepAlive_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = *MEMORY[0x1E69E9840];
  v4 = [OUTLINED_FUNCTION_21() numberWithBool:?];
  v5 = [*(v0 + 3480) numberWithBool:*(v2 + 41)];
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

void __76__REMStore_PhantomObjectRepairing__repairPhantomObjectsWithObjectIDs_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7(a2, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __76__REMStore_PhantomObjectRepairing__repairPhantomObjectsWithObjectIDs_error___block_invoke_664_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __67__REMStore_UnitTest__test_revertImageAttachmentsToUnDeduped_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "xpc error while using debug performer {error: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end