@interface PKRecentsController
+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)a3 fromBackingRecentCalls:(id)a4;
- (BOOL)canLoadOlderRecentCalls;
- (BOOL)isInitializationBlockQueued;
- (BOOL)isLocalizedSubtitleUnknown:(id)a3;
- (CNContactFormatter)contactFormatter;
- (CNContactStore)contactStore;
- (CNContactStore)suggestedContactStore;
- (NSArray)recentCalls;
- (NSCache)callProviderCache;
- (NSDictionary)blockedStatusCache;
- (NSMutableDictionary)contactCache;
- (NSMutableDictionary)itemCache;
- (NSNumberFormatter)numberFormatter;
- (PKRecentsController)init;
- (PKRecentsController)initWithCallHistoryController:(id)a3 callProviderManager:(id)a4 contactStore:(id)a5 suggestedContactStore:(id)a6 metadataCache:(id)a7;
- (TUCallProviderManager)callProviderManager;
- (TUMetadataCache)metadataCache;
- (id)coalesceRecentCall:(id)a3 withRecentCall:(id)a4;
- (id)contactByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)contactForHandle:(id)a3;
- (id)contactForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)contactHandlesForHandle:(id)a3;
- (id)contactHandlesForRecentCalls:(id)a3;
- (id)contactsByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)dialRequestForRecentCall:(id)a3;
- (id)fetchCallProviderForRecentCall:(id)a3;
- (id)fetchContactForContactCardDisplay:(id)a3;
- (id)fetchContactFormatter;
- (id)fetchImageForRecentCall:(id)a3;
- (id)fetchMutableItemForRecentCall:(id)a3;
- (id)fetchMutableItemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4;
- (id)fetchNumberFormatter;
- (id)fetchRecentCalls;
- (id)fetchUnifiedContactForID:(id)a3 withDescriptors:(id)a4;
- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4;
- (id)itemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4;
- (id)itemForRecentCall:(id)a3 presentationStyle:(int64_t)a4;
- (id)localizedSubtitleForRecentCall:(id)a3;
- (id)localizedSubtitleForRecentEmergencyCall:(id)a3;
- (id)metadataItemsForRecentCall:(id)a3;
- (id)recentCallsChangedFromCachedRecentCalls:(id)a3 callHistoryControllerRecentCalls:(id)a4;
- (id)recentCallsDeletedFromCachedRecentCall:(id)a3 callHistoryControllerRecentCalls:(id)a4;
- (id)subtitleForRecentEmergencyCall:(id)a3;
- (id)unknownLabel;
- (id)updatedTitleForTempHandles:(id)a3 countOfExcludedHandles:(int64_t)a4;
- (unint64_t)callHistoryControllerCoalescingStrategy;
- (unint64_t)callHistoryControllerOptions;
- (unint64_t)unreadCallCount;
- (void)addAcceptedIntroductionsNotifier;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)cancelSearchFetchOperations;
- (void)continuousScrollingReachedIndexPath:(int64_t)a3;
- (void)dealloc;
- (void)deleteAllRecentCalls;
- (void)deleteRecentCalls:(id)a3;
- (void)fetchBlockedStatusForRecentCalls:(id)a3;
- (void)fetchContactsForHandles:(id)a3;
- (void)fetchContactsForRecentCalls:(id)a3;
- (void)fetchMetadataForRecentCalls:(id)a3;
- (void)handleBlocklistChanged:(id)a3;
- (void)handleCNContactStoreDidChangeNotification:(id)a3;
- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3;
- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)a3;
- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)a3;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3;
- (void)handleUIApplicationDidBecomeActiveNotification:(id)a3;
- (void)handleUIApplicationSignificantTimeChangeNotification:(id)a3;
- (void)handleUpdatedContacts;
- (void)loadOlderCallsIfNecessaryForRemainingRowCount:(int64_t)a3;
- (void)logRecentsScrollingEvent:(int64_t)a3;
- (void)markRecentCallsAsRead;
- (void)markRecentCallsAsReadWithPredicate:(id)a3;
- (void)notifyDelegatesRecentsController:(id)a3 didChangeCalls:(id)a4;
- (void)notifyDelegatesRecentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4;
- (void)notifyDelegatesRecentsController:(id)a3 didUpdateCalls:(id)a4;
- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)a3;
- (void)notifyDelegatesRecentsControllerDidUpdateAcceptedContacts:(id)a3;
- (void)performDialRequest:(id)a3;
- (void)performDialRequestForRecentCall:(id)a3;
- (void)performJoinRequestForRecentCall:(id)a3 overrideProvider:(id)a4;
- (void)performSynchronousBlock:(id)a3;
- (void)populateCachesForRecentCalls:(id)a3;
- (void)populateItemCacheForRecentCalls:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)queryCommTrustBlockedForCalls:(id)a3 completion:(id)a4;
- (void)recentCallsWillShow;
- (void)removeDelegate:(id)a3;
- (void)setContactFormatter:(id)a3;
- (void)setInitializationBlockQueued:(BOOL)a3;
- (void)setNumberFormatter:(id)a3;
- (void)setPreFetchingPredicate:(id)a3;
- (void)setRecentCalls:(id)a3;
- (void)setUnreadCallCount:(unint64_t)a3;
- (void)updateRecentCalls;
- (void)updateReminderUUID:(id)a3 forRecentCall:(id)a4;
@end

@implementation PKRecentsController

uint64_t __34__PKRecentsController_recentCalls__block_invoke_105(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)recentCalls
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__PKRecentsController_recentCalls__block_invoke;
  aBlock[3] = &unk_279A22918;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = v3[2]();
  if (!v10[5] && [(PKRecentsController *)self isInitializationBlockQueued])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__PKRecentsController_recentCalls__block_invoke_105;
    v6[3] = &unk_279A22940;
    v8 = &v9;
    v7 = v3;
    [(PKRecentsController *)self performSynchronousBlock:v6];
  }

  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

id __34__PKRecentsController_recentCalls__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(*(a1 + 32) + 120);
  os_unfair_lock_unlock((*(a1 + 32) + 12));

  return v2;
}

- (BOOL)isInitializationBlockQueued
{
  os_unfair_lock_lock(&self->_accessorLock);
  initializationBlockQueued = self->_initializationBlockQueued;
  os_unfair_lock_unlock(&self->_accessorLock);
  return initializationBlockQueued;
}

- (id)fetchRecentCalls
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  if (PKRecentsControllerSignpostLog_onceToken != -1)
  {
    [PKRecentsController fetchRecentCalls];
  }

  v4 = PKRecentsControllerSignpostLog_log;
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  v8 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v38) = 0;
    _os_signpost_emit_with_name_impl(&dword_25E4EC000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "FetchRecentCalls", "Starting recent calls fetch", &v38, 2u);
  }

  v9 = [(PKRecentsController *)self recentCalls];
  v10 = [(PKRecentsController *)self callHistoryController];
  v11 = [v10 recentCalls];

  if ([v9 isEqualToArray:v11])
  {
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_25E4EC000, v12, OS_LOG_TYPE_DEFAULT, "Recent calls array has not changed. Ignoring", &v38, 2u);
    }

    v13 = v7;
    v14 = v13;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v38) = 0;
      _os_signpost_emit_with_name_impl(&dword_25E4EC000, v14, OS_SIGNPOST_INTERVAL_END, v5, "FetchRecentCalls", "Completed - no changes detected", &v38, 2u);
    }

    v15 = v9;
LABEL_26:
    v31 = v15;
    goto LABEL_33;
  }

  v16 = [(PKRecentsController *)self featureFlags];
  v17 = [v16 increaseCallHistoryEnabled];

  if (!v17)
  {
    v27 = [(PKRecentsController *)self itemCache];
    [v27 removeAllObjects];

    [(PKRecentsController *)self populateCachesForRecentCalls:v11];
    v28 = v7;
    v29 = v28;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v30 = [v11 count];
      v38 = 134217984;
      v39 = v30;
      _os_signpost_emit_with_name_impl(&dword_25E4EC000, v29, OS_SIGNPOST_INTERVAL_END, v5, "FetchRecentCalls", "Completed - full cache refresh, %lu total objects", &v38, 0xCu);
    }

    v15 = v11;
    goto LABEL_26;
  }

  v18 = PHDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v38) = 0;
    _os_log_impl(&dword_25E4EC000, v18, OS_LOG_TYPE_DEFAULT, "Recent calls array has changed. Find the changed objects and only update their cache", &v38, 2u);
  }

  v19 = [(PKRecentsController *)self recentCallsChangedFromCachedRecentCalls:v9 callHistoryControllerRecentCalls:v11];
  v20 = [(PKRecentsController *)self recentCallsDeletedFromCachedRecentCall:v9 callHistoryControllerRecentCalls:v11];
  v21 = PHDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v19 count];
    v38 = 134217984;
    v39 = v22;
    _os_log_impl(&dword_25E4EC000, v21, OS_LOG_TYPE_DEFAULT, "Found %lu changed objects", &v38, 0xCu);
  }

  v23 = PHDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v20 count];
    v38 = 134217984;
    v39 = v24;
    _os_log_impl(&dword_25E4EC000, v23, OS_LOG_TYPE_DEFAULT, "Found %lu deleted objects", &v38, 0xCu);
  }

  if ([v20 count])
  {
    v25 = [(PKRecentsController *)self itemCache];
    [v25 removeAllObjects];

    v26 = v11;
  }

  else
  {
    v32 = [v19 count];
    v26 = v19;
    if (!v32)
    {
      goto LABEL_29;
    }
  }

  [(PKRecentsController *)self populateCachesForRecentCalls:v26];
LABEL_29:
  os_unfair_lock_lock(&self->_accessorLock);
  [(PKRecentsController *)self notifyDelegatesRecentsController:self didCompleteFetchingCalls:v11];
  os_unfair_lock_unlock(&self->_accessorLock);
  v33 = v7;
  v34 = v33;
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    v35 = [v19 count];
    v38 = 134217984;
    v39 = v35;
    _os_signpost_emit_with_name_impl(&dword_25E4EC000, v34, OS_SIGNPOST_INTERVAL_END, v5, "FetchRecentCalls", "Completed - incremental update, %lu changed objects", &v38, 0xCu);
  }

  v31 = v11;
LABEL_33:

  v36 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)fetchContactFormatter
{
  v2 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v2);

  v3 = objc_alloc_init(MEMORY[0x277CBDA78]);
  [v3 setStyle:0];

  return v3;
}

- (id)fetchNumberFormatter
{
  v2 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v2);

  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);

  return v3;
}

- (void)updateRecentCalls
{
  v3 = [(PKRecentsController *)self fetchRecentCalls];
  [(PKRecentsController *)self setRecentCalls:v3];
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_contactStore;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSDictionary)blockedStatusCache
{
  v3 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  blockedStatusCache = self->_blockedStatusCache;

  return blockedStatusCache;
}

- (TUMetadataCache)metadataCache
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_metadataCache;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)queryCommTrustBlockedForCalls:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  sub_25E4EEF68(0, &qword_280CEAF10, 0x277CF7D48);
  v5 = sub_25E5080D8();
  sub_25E507FE8();
  _Block_copy(v4);
  v6 = sub_25E507FD8();
  sub_25E506AA8(v5, v6, v4);
  _Block_release(v4);

  _Block_release(v4);
}

- (CNContactFormatter)contactFormatter
{
  v3 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  contactFormatter = self->_contactFormatter;

  return contactFormatter;
}

- (TUCallProviderManager)callProviderManager
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_callProviderManager;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSCache)callProviderCache
{
  v3 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  callProviderCache = self->_callProviderCache;

  return callProviderCache;
}

- (id)unknownLabel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PKRecentsController_unknownLabel__block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  if (unknownLabel_onceToken != -1)
  {
    dispatch_once(&unknownLabel_onceToken, block);
  }

  return unknownLabel_unknownLabel;
}

void __35__PKRecentsController_unknownLabel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v4 localizedStringForKey:@"UNKNOWN_LABEL" value:&stru_287038A20 table:@"PHRecents"];
  v3 = unknownLabel_unknownLabel;
  unknownLabel_unknownLabel = v2;
}

- (NSNumberFormatter)numberFormatter
{
  v3 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  numberFormatter = self->_numberFormatter;

  return numberFormatter;
}

- (void)addAcceptedIntroductionsNotifier
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBDAE0];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __55__PKRecentsController_addAcceptedIntroductionsNotifier__block_invoke;
  v9 = &unk_279A22A08;
  objc_copyWeak(&v10, &location);
  v4 = [v3 acceptedIntroductionsNotifierWithBlock:&v6];
  acceptedIntroductionsNotifier = self->_acceptedIntroductionsNotifier;
  self->_acceptedIntroductionsNotifier = v4;

  [(CNCoreRecentsChangeNotifier *)self->_acceptedIntroductionsNotifier startObserving:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (NSMutableDictionary)itemCache
{
  v3 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  itemCache = self->_itemCache;

  return itemCache;
}

- (NSMutableDictionary)contactCache
{
  v3 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  contactCache = self->_contactCache;

  return contactCache;
}

- (void)markRecentCallsAsRead
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E4EC000, v3, OS_LOG_TYPE_DEFAULT, "Mark recent calls as read", buf, 2u);
  }

  v4 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PKRecentsController_markRecentCallsAsRead__block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(v4, block);
}

void __44__PKRecentsController_markRecentCallsAsRead__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 markRecentCallsAsRead];
}

+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)a3 fromBackingRecentCalls:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = 0;
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      if (v8 >= [v5 count])
      {
        v11 = 0;
      }

      else
      {
        v11 = [v5 objectAtIndexedSubscript:v8];
      }

      if ([v11 isEqual:v10])
      {
        ++v8;
      }

      else
      {
        v12 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:0];
        [v7 addObject:v12];
      }

      ++v9;
    }

    while (v9 < [v6 count]);
  }

  if (v8 == [v5 count])
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (PKRecentsController)init
{
  [(PKRecentsController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PKRecentsController)initWithCallHistoryController:(id)a3 callProviderManager:(id)a4 contactStore:(id)a5 suggestedContactStore:(id)a6 metadataCache:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v44 = a6;
  v16 = a7;
  v47.receiver = self;
  v47.super_class = PKRecentsController;
  v17 = [(PKRecentsController *)&v47 init];
  v18 = v17;
  if (v17)
  {
    v17->_accessorLock._os_unfair_lock_opaque = 0;
    v19 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToQueue = v18->_delegateToQueue;
    v18->_delegateToQueue = v19;

    v18->_initializationBlockQueued = 1;
    v43 = v13;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.calls.queue.%@.%p", objc_opt_class(), v18];
    dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v22 = v42 = v15;
    v23 = dispatch_queue_create([v21 UTF8String], v22);
    serialQueue = v18->_serialQueue;
    v18->_serialQueue = v23;

    dispatch_queue_set_specific(v18->_serialQueue, PKRecentsControllerSerialQueueContextKey, v18, 0);
    objc_storeStrong(&v18->_completionDispatchQueue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v18->_callHistoryController, a3);
    v25 = objc_alloc_init(MEMORY[0x277CBEA78]);
    callProviderCache = v18->_callProviderCache;
    v18->_callProviderCache = v25;

    objc_storeStrong(&v18->_callProviderManager, a4);
    callProviderManager = v18->_callProviderManager;
    v28 = [(PKRecentsController *)v18 serialQueue];
    [(TUCallProviderManager *)callProviderManager addDelegate:v18 queue:v28];

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contactCache = v18->_contactCache;
    v18->_contactCache = v29;

    objc_storeStrong(&v18->_contactStore, a5);
    objc_storeStrong(&v18->_suggestedContactStore, a6);
    objc_storeStrong(&v18->_metadataCache, a7);
    v31 = [objc_alloc(MEMORY[0x277D6EF48]) initWithMetadataCache:v16 callProviderManager:v14];
    subtitleProvider = v18->_subtitleProvider;
    v18->_subtitleProvider = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    blockedStatusCache = v18->_blockedStatusCache;
    v18->_blockedStatusCache = v33;

    v35 = objc_alloc_init(MEMORY[0x277D6EED8]);
    featureFlags = v18->_featureFlags;
    v18->_featureFlags = v35;

    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    localizedSubtitleCache = v18->_localizedSubtitleCache;
    v18->_localizedSubtitleCache = v37;

    v18->_startedLoadingOlderCalls = 0;
    v39 = objc_alloc_init(MPAnalyticsLogger);
    [(PKRecentsController *)v18 setAnalyticsLogger:v39];

    v40 = v18->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke;
    block[3] = &unk_279A22800;
    v46 = v18;
    dispatch_async(v40, block);

    v15 = v42;
    v13 = v43;
  }

  return v18;
}

void __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  v5 = [*(a1 + 32) fetchNumberFormatter];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  *(v9 + 88) = v8;

  [*(a1 + 32) updateRecentCalls];
  [*(a1 + 32) setUnreadCallCount:{objc_msgSend(*(*(a1 + 32) + 24), "unreadCallCount")}];
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:*(a1 + 32) selector:sel_handleCNContactStoreDidChangeNotification_ name:*MEMORY[0x277CBD140] object:0];
  [*(a1 + 32) addAcceptedIntroductionsNotifier];
  [v11 addObserver:*(a1 + 32) selector:sel_handleIDSServiceAvailabilityDidChangeNotification_ name:*MEMORY[0x277D18688] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleNSCurrentLocaleDidChangeNotification_ name:*MEMORY[0x277CBE620] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleTUCallHistoryControllerRecentCallsDidChangeNotification_ name:*MEMORY[0x277D6F068] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleTUCallHistoryControllerUnreadCallCountDidChangeNotification_ name:*MEMORY[0x277D6F070] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleTUMetadataCacheDidFinishUpdatingNotification_ name:*MEMORY[0x277D6F130] object:*(*(a1 + 32) + 112)];
  [v11 addObserver:*(a1 + 32) selector:sel_handleUIApplicationSignificantTimeChangeNotification_ name:*MEMORY[0x277D766F0] object:0];
  [v11 addObserver:*(a1 + 32) selector:sel_handleUIApplicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
  v12 = [MEMORY[0x277D6EF20] sharedPrivacyManager];
  [v11 addObserver:*(a1 + 32) selector:sel_handleBlocklistChanged_ name:*MEMORY[0x277D6F138] object:0];
  objc_initWeak(&location, *(a1 + 32));
  if (__CUTWeakCXCallDirectoryManagerIdentificationEntriesChangedNotification__pred_CXCallDirectoryManagerIdentificationEntriesChangedNotificationCallKit != -1)
  {
    __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_cold_1();
  }

  v13 = __CUTStaticWeak_CXCallDirectoryManagerIdentificationEntriesChangedNotification;
  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2;
  handler[3] = &unk_279A228F0;
  objc_copyWeak(&v18, &location);
  v17 = *(a1 + 32);
  notify_register_dispatch(v13, (v14 + 16), v15, handler);
  [*(a1 + 32) setInitializationBlockQueued:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (__CUTWeakCXCallDirectoryManagerIdentificationEntriesChangedNotification__pred_CXCallDirectoryManagerIdentificationEntriesChangedNotificationCallKit != -1)
      {
        __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_2_cold_1();
      }

      *buf = 136315138;
      v11 = __CUTStaticWeak_CXCallDirectoryManagerIdentificationEntriesChangedNotification;
      _os_log_impl(&dword_25E4EC000, v3, OS_LOG_TYPE_DEFAULT, "Handling %s by fetching metadata for recent calls", buf, 0xCu);
    }

    v4 = [*(a1 + 32) recentCalls];
    if ([v4 count])
    {
      v5 = [*(a1 + 32) serialQueue];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __122__PKRecentsController_initWithCallHistoryController_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_99;
      v7[3] = &unk_279A228C8;
      v8 = *(a1 + 32);
      v9 = v4;
      dispatch_async(v5, v7);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  notify_cancel([(PKRecentsController *)self callDirectoryManagerIdentificationEntriesChangedNotificationToken]);
  v4.receiver = self;
  v4.super_class = PKRecentsController;
  [(PKRecentsController *)&v4 dealloc];
}

- (CNContactStore)suggestedContactStore
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_suggestedContactStore;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (unint64_t)unreadCallCount
{
  os_unfair_lock_lock(&self->_accessorLock);
  unreadCallCount = self->_unreadCallCount;
  os_unfair_lock_unlock(&self->_accessorLock);
  return unreadCallCount;
}

- (id)itemForRecentCall:(id)a3 presentationStyle:(int64_t)a4
{
  v6 = a3;
  v7 = -[PKRecentsController itemForRecentCall:numberOfOccurences:](self, "itemForRecentCall:numberOfOccurences:", v6, [v6 numberOfOccurrences]);
  v8 = [v6 serviceProvider];
  if ([v8 isEqualToString:*MEMORY[0x277CF7E08]])
  {
    v9 = [v6 remoteParticipantHandles];
    v10 = [v9 count];
    v11 = v10 != 1;

    if (!a4)
    {
      if (v10 == 1)
      {
        goto LABEL_11;
      }

LABEL_10:
      self = v7;
      goto LABEL_19;
    }
  }

  else
  {

    if (!a4)
    {
      goto LABEL_10;
    }

    v11 = 1;
  }

  v12 = [v6 imageURL];
  if (v12)
  {

    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  v13 = [v6 remoteParticipantHandles];
  v14 = [v13 anyObject];

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = [v6 name];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v6 name];
  v18 = [v17 length];

  if (!v18)
  {
    goto LABEL_17;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__PKRecentsController_itemForRecentCall_presentationStyle___block_invoke;
  v23[3] = &unk_279A22968;
  v25 = &v26;
  v23[4] = self;
  v24 = v14;
  [(PKRecentsController *)self performSynchronousBlock:v23];
  v19 = v27[5];
  if (!v19)
  {
    v20 = [v7 mutableCopy];
    v21 = [v6 name];
    [v20 setLocalizedSubtitle:v21];

    self = [v20 copy];
  }

  _Block_object_dispose(&v26, 8);
  if (v19)
  {
LABEL_17:
    self = v7;
  }

LABEL_19:

  return self;
}

uint64_t __59__PKRecentsController_itemForRecentCall_presentationStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactForHandle:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)itemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__PKRecentsController_itemForRecentCall_numberOfOccurences___block_invoke;
  v9[3] = &unk_279A22968;
  v11 = &v12;
  v9[4] = self;
  v6 = v5;
  v10 = v6;
  [(PKRecentsController *)self performSynchronousBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__PKRecentsController_itemForRecentCall_numberOfOccurences___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) itemCache];
  v2 = [*(a1 + 40) uniqueId];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)coalesceRecentCall:(id)a3 withRecentCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v8 = [(PKRecentsController *)self serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__PKRecentsController_coalesceRecentCall_withRecentCall___block_invoke;
  v13[3] = &unk_279A22990;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __57__PKRecentsController_coalesceRecentCall_withRecentCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  v3 = [v2 coalescingStrategy];

  if (v3 == 2)
  {
    v4 = MEMORY[0x277CF7DE0];
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = MEMORY[0x277CF7DE8];
  }

  v5 = *v4;
  if (v5)
  {
    v9 = v5;
    v6 = [*(a1 + 40) coalescedCallWithCall:*(a1 + 48) usingStrategy:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)deleteAllRecentCalls
{
  v3 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PKRecentsController_deleteAllRecentCalls__block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__PKRecentsController_deleteAllRecentCalls__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) callHistoryController];
  [v1 deleteAllRecentCalls];
}

- (void)deleteRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PKRecentsController_deleteRecentCalls___block_invoke;
  v7[3] = &unk_279A228C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __41__PKRecentsController_deleteRecentCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 deleteRecentCalls:*(a1 + 40)];
}

- (void)markRecentCallsAsReadWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PKRecentsController_markRecentCallsAsReadWithPredicate___block_invoke;
  v7[3] = &unk_279A228C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__PKRecentsController_markRecentCallsAsReadWithPredicate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 markUnreadRecentCallsAsReadWithPredicate:*(a1 + 40)];
}

- (void)updateReminderUUID:(id)a3 forRecentCall:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "Updating reminderUUID: %@, for recent call: %@", buf, 0x16u);
  }

  v9 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__PKRecentsController_updateReminderUUID_forRecentCall___block_invoke;
  block[3] = &unk_279A229B8;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __56__PKRecentsController_updateReminderUUID_forRecentCall___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryController];
  [v2 updateReminderUUID:*(a1 + 40) forRecentCall:*(a1 + 48)];
}

- (id)contactForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v8 = [v6 validRemoteParticipantHandles];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__PKRecentsController_contactForRecentCall_keyDescriptors___block_invoke;
    v18[3] = &unk_279A229E0;
    v18[4] = self;
    v19 = v6;
    v20 = v7;
    v21 = &v22;
    [(PKRecentsController *)self performSynchronousBlock:v18];
  }

  v10 = v23[5];
  if (!v10)
  {
    v11 = MEMORY[0x277CBDB38];
    v12 = [(PKRecentsController *)self metadataCache];
    v13 = [v11 contactForRecentCall:v6 metadataCache:v12];
    v14 = [v13 copy];
    v15 = v23[5];
    v23[5] = v14;

    v10 = v23[5];
  }

  v16 = v10;
  _Block_object_dispose(&v22, 8);

  return v16;
}

void __59__PKRecentsController_contactForRecentCall_keyDescriptors___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  v2 = [v7 allValues];
  v3 = [v2 firstObject];
  v4 = [v3 firstObject];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)contactByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __67__PKRecentsController_contactByHandleForRecentCall_keyDescriptors___block_invoke;
  v15 = &unk_279A229E0;
  v16 = self;
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  v19 = &v20;
  [(PKRecentsController *)self performSynchronousBlock:&v12];
  v10 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __67__PKRecentsController_contactByHandleForRecentCall_keyDescriptors___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) contactsByHandleForRecentCall:*(a1 + 40) keyDescriptors:*(a1 + 48)];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v2 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v2 objectForKeyedSubscript:v11];
          v13 = [v12 firstObject];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v13 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__PKRecentsController_addAcceptedIntroductionsNotifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyDelegatesRecentsControllerDidUpdateAcceptedContacts:WeakRetained];
  [WeakRetained handleUpdatedContacts];
}

- (id)dialRequestForRecentCall:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to create a dial request for recent call %@", &v11, 0xCu);
  }

  v6 = [(PKRecentsController *)self callProviderManager];
  v7 = [v6 dialRequestForRecentCall:v4];

  if (v7)
  {
    [v7 setOriginatingUIType:8];
  }

  else
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PKRecentsController *)v4 dialRequestForRecentCall:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)performDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(PKRecentsController *)self presentScreenTimeShield];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [MEMORY[0x277D6EDF8] sharedInstance];
  v8 = [v7 callFilterController];
  v9 = [v8 shouldRestrictDialRequest:v4 performSynchronously:1];

  if (v9)
  {
    v10 = [(PKRecentsController *)self presentScreenTimeShield];
    (v10)[2](v10, v4);
  }

  else
  {
LABEL_4:
    v11 = [MEMORY[0x277D6EDF8] sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__PKRecentsController_performDialRequest___block_invoke;
    v12[3] = &unk_279A22A30;
    v13 = v4;
    [v11 launchAppForDialRequest:v13 completion:v12];
  }
}

void __42__PKRecentsController_performDialRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__PKRecentsController_performDialRequest___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)performDialRequestForRecentCall:(id)a3
{
  v4 = [(PKRecentsController *)self dialRequestForRecentCall:a3];
  if (v4)
  {
    [(PKRecentsController *)self performDialRequest:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (void)performJoinRequestForRecentCall:(id)a3 overrideProvider:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v35 = a4;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E4EC000, v6, OS_LOG_TYPE_DEFAULT, "PKRecentsController -performJoinRequestForRecentCall", buf, 2u);
  }

  v7 = MEMORY[0x277CBEB58];
  v8 = [v5 validRemoteParticipantHandles];
  v9 = [v7 setWithCapacity:{objc_msgSend(v8, "count")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = v5;
  v10 = [v5 validRemoteParticipantHandles];
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v38 + 1) + 8 * i) tuHandle];
        if (v15)
        {
          v16 = objc_alloc(MEMORY[0x277D6EEA0]);
          v17 = [MEMORY[0x277CBEB98] setWithObject:v15];
          v18 = [v16 initWithHandles:v17];

          [v9 addObject:v18];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v19 = [objc_alloc(MEMORY[0x277D6EEF0]) initWithRemoteMembers:v9 originatingUIType:8];
    v20 = v36;
    -[NSObject setVideo:](v19, "setVideo:", [v36 mediaType] == 2);
    -[NSObject setVideoEnabled:](v19, "setVideoEnabled:", [v36 mediaType] == 2);
    [v19 setOriginatingUIType:8];
    v21 = v35;
    if (v35)
    {
      [v19 setProvider:v35];
    }

    v22 = [(PKRecentsController *)self callProviderManager];
    v23 = [v22 faceTimeProvider];
    v24 = [v36 outgoingLocalParticipantUUID];
    v25 = [v23 senderIdentityForAccountUUID:v24];

    if (v25)
    {
      v26 = [v25 handle];
      [v19 setCallerID:v26];
    }

    v27 = [MEMORY[0x277D6EE28] invitationPreferencesForRecentCall];
    [v19 setInvitationPreferences:v27];

    v28 = [(PKRecentsController *)self presentScreenTimeShield];
    if (!v28)
    {
      goto LABEL_20;
    }

    v29 = v28;
    v30 = [MEMORY[0x277D6EDF8] sharedInstance];
    v31 = [v30 callFilterController];
    v32 = [v31 shouldRestrictJoinConversationRequest:v19 performSynchronously:1];

    v21 = v35;
    v20 = v36;

    if (v32)
    {
      v33 = [(PKRecentsController *)self presentScreenTimeShield];
      (v33)[2](v33, v19);
    }

    else
    {
LABEL_20:
      v33 = [MEMORY[0x277D6EDF8] sharedInstance];
      [v33 launchAppForJoinRequest:v19];
    }
  }

  else
  {
    v19 = PHDefaultLog();
    v21 = v35;
    v20 = v36;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v36;
      _os_log_impl(&dword_25E4EC000, v19, OS_LOG_TYPE_DEFAULT, "Could not create join request for recent call: %@", buf, 0xCu);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v9 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v7 = [(PKRecentsController *)self delegateToQueue];
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = MEMORY[0x277D85CD0];
  }

  [v7 setObject:v8 forKey:v6];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(PKRecentsController *)self delegateToQueue];
  [v5 removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)notifyDelegatesRecentsController:(id)a3 didUpdateCalls:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = a4;
  v7 = [(PKRecentsController *)self featureFlags];
  v8 = [v7 phoneRecentsAvatarsEnabled];

  if (v8)
  {
    os_unfair_lock_assert_owner(&self->_accessorLock);
    v18 = self;
    v9 = [(PKRecentsController *)self delegateToQueue];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v26;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v9 objectForKey:v14];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __71__PKRecentsController_notifyDelegatesRecentsController_didUpdateCalls___block_invoke;
          block[3] = &unk_279A229B8;
          block[4] = v14;
          v23 = v6;
          v24 = v19;
          dispatch_async(v15, block);

          v16 = &v23;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v15 = [v9 objectForKey:v14];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __71__PKRecentsController_notifyDelegatesRecentsController_didUpdateCalls___block_invoke_2;
          v20[3] = &unk_279A229B8;
          v20[4] = v14;
          v21[0] = v6;
          v21[1] = v18;
          dispatch_async(v15, v20);
          v16 = v21;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v11)
      {
LABEL_14:

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegatesRecentsControllerDidUpdateAcceptedContacts:(id)a3
{
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__PKRecentsController_notifyDelegatesRecentsControllerDidUpdateAcceptedContacts___block_invoke;
  v7[3] = &unk_279A228C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __81__PKRecentsController_notifyDelegatesRecentsControllerDidUpdateAcceptedContacts___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegateToQueue];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [v2 objectForKey:v7];
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __81__PKRecentsController_notifyDelegatesRecentsControllerDidUpdateAcceptedContacts___block_invoke_2;
          v10[3] = &unk_279A228C8;
          v10[4] = v7;
          v11 = *(a1 + 40);
          dispatch_async(v8, v10);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegatesRecentsController:(id)a3 didChangeCalls:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v8 = [(PKRecentsController *)self delegateToQueue];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v8 objectForKey:v13];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __71__PKRecentsController_notifyDelegatesRecentsController_didChangeCalls___block_invoke;
          block[3] = &unk_279A229B8;
          block[4] = v13;
          v17 = v6;
          v18 = v7;
          dispatch_async(v14, block);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegatesRecentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v7 = [(PKRecentsController *)self delegateToQueue];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v7 objectForKey:v12];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __81__PKRecentsController_notifyDelegatesRecentsController_didChangeUnreadCallCount___block_invoke;
          block[3] = &unk_279A22A58;
          block[4] = v12;
          v16 = v6;
          v17 = a4;
          dispatch_async(v13, block);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v5 = [(PKRecentsController *)self delegateToQueue];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v5 objectForKey:v10];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __73__PKRecentsController_notifyDelegatesRecentsControllerDidChangeMessages___block_invoke;
          v13[3] = &unk_279A228C8;
          v13[4] = v10;
          v14 = v4;
          dispatch_async(v11, v13);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setContactFormatter:(id)a3
{
  v8 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  contactFormatter = self->_contactFormatter;
  p_contactFormatter = &self->_contactFormatter;
  if (contactFormatter != v8)
  {
    objc_storeStrong(p_contactFormatter, a3);
  }
}

- (void)setInitializationBlockQueued:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_initializationBlockQueued != v3)
  {
    self->_initializationBlockQueued = v3;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setNumberFormatter:(id)a3
{
  v8 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  numberFormatter = self->_numberFormatter;
  p_numberFormatter = &self->_numberFormatter;
  if (numberFormatter != v8)
  {
    objc_storeStrong(p_numberFormatter, a3);
  }
}

- (void)setRecentCalls:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  recentCalls = self->_recentCalls;
  if (recentCalls != v7 && ![(NSArray *)recentCalls isEqualToArray:v7])
  {
    v5 = [(NSArray *)v7 copy];
    v6 = self->_recentCalls;
    self->_recentCalls = v5;

    [(PKRecentsController *)self notifyDelegatesRecentsController:self didChangeCalls:self->_recentCalls];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setUnreadCallCount:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_unreadCallCount != a3)
  {
    self->_unreadCallCount = a3;
    [(PKRecentsController *)self notifyDelegatesRecentsController:self didChangeUnreadCallCount:a3];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setPreFetchingPredicate:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_preFetchingPredicate != v6)
  {
    objc_storeStrong(&self->_preFetchingPredicate, a3);
    v5 = [(PKRecentsController *)self callHistoryController];
    [v5 setPreFetchingPredicate:v6];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)contactForHandle:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  [(PKRecentsController *)self contactHandlesForHandle:v4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(PKRecentsController *)self contactCache];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 value];

        if (v14)
        {
          v15 = v6;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = PHDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_25E4EC000, v15, OS_LOG_TYPE_DEFAULT, "Handle not found in cache: %@", buf, 0xCu);
  }

  v14 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)contactsByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v55 = a4;
  v7 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v54 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v45 = v6;
  obj = [v6 validRemoteParticipantHandles];
  v48 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v48)
  {
    v56 = 0;
    v47 = *v70;
    v8 = v54;
    do
    {
      v9 = 0;
      do
      {
        if (*v70 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v9;
        v52 = *(*(&v69 + 1) + 8 * v9);
        v10 = [(PKRecentsController *)self contactHandlesForHandle:?];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v66;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v66 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v65 + 1) + 8 * i);
              v16 = [(PKRecentsController *)self contactCache];
              v17 = [v16 objectForKeyedSubscript:v15];

              if (!v17)
              {
                goto LABEL_21;
              }

              v18 = [v17 value];
              if (!v18 || (v19 = v18, [v17 value], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "areKeysAvailable:", v55), v20, v8 = v54, v19, v21))
              {
                v22 = [v17 value];
                if (v22)
                {
                  v23 = v56;
                  if (!v56)
                  {
                    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  }

                  v56 = v23;
                  v24 = [v23 objectForKeyedSubscript:v52];
                  if (!v24)
                  {
                    v24 = [MEMORY[0x277CBEB18] array];
                    [v56 setObject:v24 forKeyedSubscript:v52];
                  }

                  [v24 addObject:v22];
                }
              }

              else
              {
LABEL_21:
                [v8 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v65 objects:v75 count:16];
          }

          while (v12);
        }

        [v49 setObject:v10 forKeyedSubscript:v52];

        v9 = v50 + 1;
      }

      while (v50 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v48);
  }

  else
  {
    v56 = 0;
    v8 = v54;
  }

  if ([v8 count])
  {
    v25 = [(PKRecentsController *)self contactStore];
    v26 = [v8 array];
    v27 = [v25 contactsForHandles:v26 keyDescriptors:v55];

    if (v27)
    {
      v28 = v56;
      if (!v56)
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v56 = v28;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v51 = [v49 allKeys];
      v29 = [v51 countByEnumeratingWithState:&v61 objects:v74 count:16];
      if (v29)
      {
        v30 = v29;
        v53 = *v62;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v62 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v32 = *(*(&v61 + 1) + 8 * j);
            v33 = objc_alloc_init(MEMORY[0x277CBEB40]);
            v34 = [v49 objectForKeyedSubscript:v32];
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v35 = [v34 countByEnumeratingWithState:&v57 objects:v73 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v58;
              do
              {
                for (k = 0; k != v36; ++k)
                {
                  if (*v58 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = [v27 objectForKeyedSubscript:*(*(&v57 + 1) + 8 * k)];
                  if ([v39 count])
                  {
                    [v33 addObjectsFromArray:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v57 objects:v73 count:16];
              }

              while (v36);
            }

            v40 = [v56 objectForKeyedSubscript:v32];
            if (!v40)
            {
              v40 = [MEMORY[0x277CBEB18] array];
              [v56 setObject:v40 forKeyedSubscript:v32];
            }

            v41 = [v33 array];
            [v40 addObjectsFromArray:v41];
          }

          v30 = [v51 countByEnumeratingWithState:&v61 objects:v74 count:16];
        }

        while (v30);
      }
    }

    v8 = v54;
  }

  v42 = [v56 copy];

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)contactHandlesForHandle:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 value];
  if ([v5 length])
  {
    [v4 addObject:v5];
    v6 = [v3 normalizedValue];
    if ([v6 length])
    {
      v7 = [v3 value];
      v8 = [v6 isEqualToString:v7];

      if ((v8 & 1) == 0)
      {
        [v4 addObject:v6];
      }
    }
  }

  v9 = [v4 copy];

  return v9;
}

- (id)contactHandlesForRecentCalls:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [v10 validRemoteParticipantHandles];
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(PKRecentsController *)self contactHandlesForHandle:*(*(&v21 + 1) + 8 * j)];
              [v5 addObjectsFromArray:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v17 = [v5 array];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 2)
  {
    if (v9)
    {
      v10 = [v5 value];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v17, 0x16u);
    }

    v11 = [v5 value];
    v12 = TUFormattedPhoneNumber();

    if (!v12)
    {
LABEL_9:
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v14 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_287038A20 table:@"PHRecents"];
    }
  }

  else
  {
    if (v9)
    {
      v13 = [v5 value];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v17, 0xCu);
    }

    v12 = [v5 value];
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)fetchCallProviderForRecentCall:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 serviceProvider];
  v7 = [(PKRecentsController *)self callProviderManager];
  if (v6)
  {
    v8 = [(PKRecentsController *)self callProviderCache];
    v9 = [v8 objectForKey:v6];

    if (v9)
    {
      goto LABEL_7;
    }

    v10 = [v7 providerForRecentCall:v4];
    if (v10)
    {
      v9 = v10;
      v11 = [(PKRecentsController *)self callProviderCache];
      [v11 setObject:v9 forKey:v6];

      goto LABEL_7;
    }

    v15 = PHDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_25E4EC000, v15, OS_LOG_TYPE_DEFAULT, "Could not retrieve a call provider for the specified recent call: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Service provider is nil for the specified recent call: %@", v4];
    NSLog(&cfstr_TuassertionFai.isa, v12);

    _TUAssertShouldCrashApplication();
  }

  v9 = 0;
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)fetchContactsForRecentCalls:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PKRecentsController *)self contactHandlesForRecentCalls:v4];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = [v4 count];
    v11 = 2048;
    v12 = [v6 count];
    _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu calls using %lu handles", &v9, 0x16u);
  }

  [(PKRecentsController *)self fetchContactsForHandles:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)fetchContactForContactCardDisplay:(id)a3
{
  v4 = a3;
  if ([v4 canExceedUnifyingThreshold])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = 0;
    v5 = [(PKRecentsController *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PKRecentsController_fetchContactForContactCardDisplay___block_invoke;
    block[3] = &unk_279A22968;
    v10 = v4;
    v11 = &v12;
    block[4] = self;
    v6 = v4;
    dispatch_sync(v5, block);

    v7 = v13[5];
    if (!v7)
    {
      v7 = v6;
    }

    v4 = v7;

    _Block_object_dispose(&v12, 8);
  }

  return v4;
}

void __57__PKRecentsController_fetchContactForContactCardDisplay___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
  v10[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) identifier];
  v6 = [v4 fetchUnifiedContactForID:v5 withDescriptors:v3];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *MEMORY[0x277D85DE8];
}

- (id)fetchUnifiedContactForID:(id)a3 withDescriptors:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(PKRecentsController *)self contactStore];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v26 = v6;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_25E4EC000, v10, OS_LOG_TYPE_DEFAULT, "Fetching unified contact for handle %{sensitive}@ using contact store %@", buf, 0x16u);
  }

  v11 = v7;
  if (!v7)
  {
    if (_defaultContactsKeyDescriptors_onceToken != -1)
    {
      [PKRecentsController fetchUnifiedContactForID:withDescriptors:];
    }

    v11 = _defaultContactsKeyDescriptors_keyDescriptors;
  }

  v24 = 0;
  v12 = [v9 unifiedContactWithIdentifier:v6 keysToFetch:v11 error:&v24];
  v13 = v24;
  if (!v7)
  {
  }

  v14 = objc_alloc(MEMORY[0x277D6EF10]);
  if (v13)
  {
    v15 = [v14 initWithValue:0];
    v16 = [(PKRecentsController *)self contactCache];
    [v16 setObject:v15 forKeyedSubscript:v6];

    v17 = PHDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PKRecentsController fetchUnifiedContactForID:v6 withDescriptors:v17];
    }

    v18 = 0;
  }

  else
  {
    v19 = [v14 initWithValue:v12];
    v20 = [(PKRecentsController *)self contactCache];
    [v20 setObject:v19 forKeyedSubscript:v6];

    v21 = PHDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v26 = v12;
      v27 = 2117;
      v28 = v6;
      _os_log_impl(&dword_25E4EC000, v21, OS_LOG_TYPE_DEFAULT, "Found unified contact %{sensitive}@ for contact handle %{sensitive}@", buf, 0x16u);
    }

    v18 = v12;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)fetchContactsForHandles:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [(PKRecentsController *)self contactCache];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (!v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v15 = [(PKRecentsController *)self contactStore];
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      *buf = 134218242;
      v45 = v17;
      v46 = 2112;
      v47 = v15;
      _os_log_impl(&dword_25E4EC000, v16, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu handles using contact store %@", buf, 0x16u);
    }

    v18 = [v6 allObjects];
    v33 = v7;
    if (_defaultContactsKeyDescriptors_onceToken != -1)
    {
      [PKRecentsController fetchUnifiedContactForID:withDescriptors:];
    }

    v32 = v15;
    v19 = [v15 contactsForHandles:v18 keyDescriptors:_defaultContactsKeyDescriptors_keyDescriptors alwaysUnifyLabeledValues:0];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = v6;
    obj = v6;
    v20 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v37;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v36 + 1) + 8 * j);
          v25 = [v19 objectForKeyedSubscript:v24];
          v26 = [v25 firstObject];
          if ([v25 count] >= 2)
          {
            v27 = PHDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v25 count];
              *buf = 134218499;
              v45 = v28;
              v46 = 2117;
              v47 = v24;
              v48 = 2117;
              v49 = v26;
              _os_log_impl(&dword_25E4EC000, v27, OS_LOG_TYPE_DEFAULT, "Found %lu contacts for contact handle %{sensitive}@; caching the first contact %{sensitive}@", buf, 0x20u);
            }
          }

          v29 = [objc_alloc(MEMORY[0x277D6EF10]) initWithValue:v26];
          v30 = [(PKRecentsController *)self contactCache];
          [v30 setObject:v29 forKeyedSubscript:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
      }

      while (v21);
    }

    v7 = v33;
    v6 = v34;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)fetchImageForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 ttyType];
  if (v6 == 2)
  {
    v7 = [MEMORY[0x277D755B8] recentsTTYRelayGlyphImage];
LABEL_5:
    v8 = v7;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (v6 == 1)
  {
    v7 = [MEMORY[0x277D755B8] recentsTTYDirectGlyphImage];
    goto LABEL_5;
  }

LABEL_6:
  v9 = [v4 callStatus];
  if (v9 != *MEMORY[0x277CF7D90])
  {
    v10 = [v4 callStatus];
    if (v10 != *MEMORY[0x277CF7D80])
    {
      goto LABEL_11;
    }
  }

  v11 = [v4 mediaType];
  if (v11 == 2)
  {
    v12 = [MEMORY[0x277D755B8] recentsOutgoingVideoCallGlyphImage];
    goto LABEL_13;
  }

  if (v11 != 1)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_14;
  }

  v12 = [MEMORY[0x277D755B8] recentsOutgoingAudioCallGlyphImage];
LABEL_13:
  v8 = v12;
LABEL_14:

  return v8;
}

- (id)updatedTitleForTempHandles:(id)a3 countOfExcludedHandles:(int64_t)a4
{
  v6 = a3;
  if (![v6 length])
  {
    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
    v10 = [v7 stringWithFormat:v9, v6];

    goto LABEL_7;
  }

  if (a4 >= 2)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = TUBundle();
    v13 = [v12 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
    v14 = [(PKRecentsController *)self numberFormatter];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v16 = [v14 stringFromNumber:v15];
    v10 = [v11 stringWithFormat:v13, v6, v16];
  }

  else
  {
LABEL_6:
    v10 = v6;
  }

LABEL_7:

  return v10;
}

- (id)fetchMutableItemForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = -[PKRecentsController fetchMutableItemForRecentCall:numberOfOccurences:](self, "fetchMutableItemForRecentCall:numberOfOccurences:", v4, [v4 numberOfOccurrences]);

  return v6;
}

- (id)fetchMutableItemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4
{
  v187 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_alloc_init(PKMutableRecentsItem);
  v9 = [v6 validRemoteParticipantHandles];
  v10 = [v9 count];
  v11 = [v6 countOfExcludedHandles];
  v12 = v11;
  v174 = v9;
  if (!v10 && v11 >= 1)
  {
    if (v11 == 1)
    {
      v13 = TUBundle();
      v47 = [v13 localizedStringForKey:@"ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
    }

    else
    {
      v39 = MEMORY[0x277CCACA8];
      v40 = TUBundle();
      v41 = [v40 localizedStringForKey:@"%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
      [(PKRecentsController *)self numberFormatter];
      v42 = v6;
      v44 = v43 = a4;
      v45 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
      v46 = [v44 stringFromNumber:v45];
      v47 = [v39 stringWithFormat:v41, v46];

      a4 = v43;
      v6 = v42;
    }

    v16 = 0;
    goto LABEL_80;
  }

  v173 = a4;
  if (v10 > 1)
  {
    v168 = v11;
    v172 = v8;
    v176 = v6;
    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v24 = v9;
    v25 = [v24 countByEnumeratingWithState:&v177 objects:v185 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v178;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v178 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v177 + 1) + 8 * i);
          v30 = [(PKRecentsController *)self contactForHandle:v29];
          if (v30)
          {
            v31 = [(PKRecentsController *)self contactFormatter];
            v32 = [v31 stringFromContact:v30];

            if (v32)
            {
              [v23 addObject:v32];
            }

            else
            {
              v34 = [v176 isoCountryCode];
              v35 = [(PKRecentsController *)self formattedNameForHandle:v29 countryCode:v34];
              [v23 addObject:v35];
            }
          }

          else
          {
            v32 = [v176 isoCountryCode];
            v33 = [(PKRecentsController *)self formattedNameForHandle:v29 countryCode:v32];
            [v23 addObject:v33];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v177 objects:v185 count:16];
      }

      while (v26);
    }

    v36 = [MEMORY[0x277CCAB68] string];
    v37 = [v23 count];
    if (v37 == 3)
    {
      v161 = MEMORY[0x277CCACA8];
      v57 = TUBundle();
      v58 = v57;
      v164 = v36;
      if (v168 == 1)
      {
        [v57 localizedStringForKey:@"%@_%@_%@_AND_ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
        v100 = v99 = v36;
        v101 = [v23 objectAtIndexedSubscript:0];
        v102 = [v23 objectAtIndexedSubscript:1];
        v103 = [v23 objectAtIndexedSubscript:2];
        v104 = [v161 stringWithFormat:v100, v101, v102, v103];

        [v99 appendString:v104];
        v58 = v104;
      }

      else if (v168)
      {
        v158 = [v57 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
        v156 = [v23 objectAtIndexedSubscript:0];
        v119 = [v23 objectAtIndexedSubscript:1];
        v120 = [v23 objectAtIndexedSubscript:2];
        v121 = [(PKRecentsController *)self numberFormatter];
        v122 = [MEMORY[0x277CCABB0] numberWithInteger:v168];
        v123 = [v121 stringFromNumber:v122];
        v124 = [v161 stringWithFormat:v158, v156, v119, v120, v123];

        [v164 appendString:v124];
        v58 = v124;
      }

      else
      {
        v59 = [v57 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_287038A20 table:@"TelephonyUtilities"];
        v60 = [v23 objectAtIndexedSubscript:0];
        v61 = [v23 objectAtIndexedSubscript:1];
        v62 = [v23 objectAtIndexedSubscript:2];
        v63 = [v161 stringWithFormat:v59, v60, v61, v62];
        [v164 appendString:v63];
      }

      v6 = v176;
      v8 = v172;

      v125 = MEMORY[0x277CCACA8];
      v126 = TUBundle();
      v127 = [v126 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_287038A20 table:@"TelephonyUtilities"];
      v128 = [v23 objectAtIndexedSubscript:0];
      v129 = [v23 objectAtIndexedSubscript:1];
      v130 = [v23 objectAtIndexedSubscript:2];
      v16 = [v125 stringWithFormat:v127, v128, v129, v130];

      a4 = v173;
      v36 = v164;
    }

    else
    {
      if (v37 == 2)
      {
        v51 = MEMORY[0x277CCACA8];
        v52 = TUBundle();
        v160 = v52;
        if (v168 == 1)
        {
          v53 = [v52 localizedStringForKey:@"%@_%@_AND_ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
          v54 = [v23 objectAtIndexedSubscript:0];
          v55 = [v23 objectAtIndexedSubscript:1];
          v56 = [v51 stringWithFormat:v53, v54, v55];
          v6 = v176;
          v8 = v172;
        }

        else
        {
          v157 = v51;
          v6 = v176;
          v8 = v172;
          if (v168)
          {
            v53 = [v52 localizedStringForKey:@"%@_%@_AND_%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
            v54 = [v23 objectAtIndexedSubscript:0];
            v55 = [v23 objectAtIndexedSubscript:1];
            v155 = [(PKRecentsController *)self numberFormatter];
            v110 = [MEMORY[0x277CCABB0] numberWithInteger:v168];
            [v155 stringFromNumber:v110];
            v111 = v166 = v36;
            v56 = [v157 stringWithFormat:v53, v54, v55, v111];

            v36 = v166;
          }

          else
          {
            v53 = [v52 localizedStringForKey:@"%@_AND_%@" value:&stru_287038A20 table:@"TelephonyUtilities"];
            v54 = [v23 objectAtIndexedSubscript:0];
            v55 = [v23 objectAtIndexedSubscript:1];
            v56 = [v157 stringWithFormat:v53, v54, v55];
          }
        }

        [v36 appendString:v56];
        v112 = v36;
        v113 = MEMORY[0x277CCACA8];
        v114 = TUBundle();
        v115 = [v114 localizedStringForKey:@"%@_AND_%@" value:&stru_287038A20 table:@"TelephonyUtilities"];
        v116 = [v23 objectAtIndexedSubscript:0];
        v117 = [v23 objectAtIndexedSubscript:1];
        v118 = v113;
        v36 = v112;
        v16 = [v118 stringWithFormat:v115, v116, v117];
      }

      else
      {
        if (v37 == 1)
        {
          v6 = v176;
          v8 = v172;
          if (v168 == 1)
          {
            v105 = v36;
            v106 = MEMORY[0x277CCACA8];
            v38 = TUBundle();
            v107 = [v38 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
            v108 = [v23 objectAtIndexedSubscript:0];
            v109 = [v106 stringWithFormat:v107, v108];
            [v105 appendString:v109];

            v36 = v105;
          }

          else
          {
            if (v168)
            {
              v159 = MEMORY[0x277CCACA8];
              v163 = TUBundle();
              v131 = [v163 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_287038A20 table:@"TelephonyUtilities"];
              v132 = [v23 objectAtIndexedSubscript:0];
              v133 = [(PKRecentsController *)self numberFormatter];
              [MEMORY[0x277CCABB0] numberWithInteger:v168];
              v134 = v167 = v36;
              v135 = [v133 stringFromNumber:v134];
              v136 = v131;
              v38 = [v159 stringWithFormat:v131, v132, v135];

              v36 = v167;
            }

            else
            {
              v38 = [v23 objectAtIndexedSubscript:0];
            }

            [v36 appendString:v38];
          }

          a4 = v173;

          v16 = [v23 objectAtIndexedSubscript:0];
          goto LABEL_76;
        }

        if (v37 < 4)
        {
          v16 = 0;
        }

        else
        {
          v165 = v36;
          v64 = v168 + [v23 count] - 3;
          v65 = MEMORY[0x277CCACA8];
          v169 = TUBundle();
          v66 = [v169 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
          v67 = [v23 objectAtIndexedSubscript:0];
          v68 = [v23 objectAtIndexedSubscript:1];
          v69 = [v23 objectAtIndexedSubscript:2];
          v70 = [(PKRecentsController *)self numberFormatter];
          v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v64];
          v72 = [v70 stringFromNumber:v71];
          v73 = v65;
          v74 = v66;
          v75 = [v73 stringWithFormat:v66, v67, v68, v69, v72];
          [v165 appendString:v75];

          v162 = MEMORY[0x277CCACA8];
          v170 = TUBundle();
          v76 = [v170 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_287038A20 table:@"TelephonyUtilities"];
          v77 = [v23 objectAtIndexedSubscript:0];
          v78 = [v23 objectAtIndexedSubscript:1];
          v79 = [v23 objectAtIndexedSubscript:2];
          v80 = [(PKRecentsController *)self numberFormatter];
          v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "count") - 3}];
          v82 = [v80 stringFromNumber:v81];
          v16 = [v162 stringWithFormat:v76, v77, v78, v79, v82];

          v36 = v165;
        }

        v6 = v176;
        v8 = v172;
      }

      a4 = v173;
    }

LABEL_76:
    if ([v36 length])
    {
      v47 = [v36 copy];
    }

    else
    {
      v47 = 0;
    }

    goto LABEL_80;
  }

  v14 = [v9 anyObject];
  if (v14)
  {
    [(PKRecentsController *)self contactHandlesForHandle:v14];
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v15 = v184 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v181 objects:v186 count:16];
    if (v16)
    {
      v171 = v8;
      v175 = v6;
      v17 = *v182;
      while (2)
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v182 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v181 + 1) + 8 * j);
          v20 = [(PKRecentsController *)self contactCache];
          v21 = [v20 objectForKeyedSubscript:v19];
          v22 = [v21 value];

          if (v22)
          {
            v48 = [(PKRecentsController *)self contactFormatter];
            v49 = [v48 stringFromContact:v22];
            v47 = [(PKRecentsController *)self updatedTitleForTempHandles:v49 countOfExcludedHandles:v12];

            v50 = [(PKRecentsController *)self contactFormatter];
            v16 = [v50 stringFromContact:v22];

            goto LABEL_37;
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v181 objects:v186 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v47 = 0;
LABEL_37:
      v6 = v175;
      v8 = v171;
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v16 = 0;
    v47 = 0;
  }

  v83 = [(PKRecentsController *)self fetchCallProviderForRecentCall:v6];
  if (![v47 length] && (objc_msgSend(v83, "isTelephonyProvider") & 1) == 0)
  {
    v84 = [v6 name];
    v85 = [(PKRecentsController *)self updatedTitleForTempHandles:v84 countOfExcludedHandles:v12];

    v86 = [v6 name];

    v16 = v86;
    v47 = v85;
  }

  if (![v47 length])
  {
    v87 = [v6 callerIdForDisplay];
    v88 = [(PKRecentsController *)self updatedTitleForTempHandles:v87 countOfExcludedHandles:v12];

    v89 = [v6 callerIdForDisplay];

    v16 = v89;
    v47 = v88;
  }

  if (![v47 length])
  {
    v90 = [v6 callerIdIsBlocked];
    v91 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v92 = v91;
    if (v90)
    {
      v93 = @"NO_CALLER_ID";
    }

    else
    {
      v93 = @"UNKNOWN_CALLER";
    }

    v94 = [v91 localizedStringForKey:v93 value:&stru_287038A20 table:@"PHRecents"];
    v95 = [(PKRecentsController *)self updatedTitleForTempHandles:v94 countOfExcludedHandles:v12];

    v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if ([v6 callerIdIsBlocked])
    {
      v97 = @"NO_CALLER_ID";
    }

    else
    {
      v97 = @"UNKNOWN_CALLER";
    }

    v98 = [v96 localizedStringForKey:v97 value:&stru_287038A20 table:@"PHRecents"];

    v16 = v98;
    v47 = v95;
  }

  a4 = v173;
LABEL_80:
  v137 = [v6 date];
  [(PKRecentsItem *)v8 setDate:v137];

  v138 = [(PKRecentsItem *)v8 image];

  if (!v138)
  {
    v139 = [(PKRecentsController *)self fetchImageForRecentCall:v6];
    [(PKRecentsItem *)v8 setImage:v139];
  }

  if (a4 <= 1)
  {
    [(PKRecentsItem *)v8 setLocalizedCount:0];
  }

  else
  {
    v140 = MEMORY[0x277CCACA8];
    v141 = [(PKRecentsController *)self numberFormatter];
    v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v143 = [v141 stringFromNumber:v142];
    v144 = [v140 stringWithFormat:@"(%@)", v143];
    [(PKRecentsItem *)v8 setLocalizedCount:v144];
  }

  [(PKRecentsItem *)v8 setLocalizedTitle:v47];
  [(PKRecentsItem *)v8 setLocalizedValidHandlesTitle:v16];
  -[PKRecentsItem setVerified:](v8, "setVerified:", [v6 verificationStatus] == 1);
  if (PHDeviceSupportsDualSim())
  {
    v145 = [(PKRecentsController *)self fetchCallProviderForRecentCall:v6];
    if ([v6 ph_supportsLocalParticipantBadge])
    {
      v146 = [v145 prioritizedSenderIdentities];
      v147 = [v146 count];

      if (v147 >= 2)
      {
        v148 = [(PKRecentsController *)self callProviderManager];
        v149 = [v148 telephonyProvider];
        v150 = [v6 localParticipantUUID];
        v151 = [v149 senderIdentityForAccountUUID:v150];

        v152 = [v151 localizedShortName];
        [(PKRecentsItem *)v8 setLocalizedSenderIdentityTitle:v152];
      }
    }
  }

  v153 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)fetchMetadataForRecentCalls:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PKRecentsController *)self metadataCache];

  if (v6)
  {
    v7 = [MEMORY[0x277D6EF00] metadataDestinationIDsForCHRecentCalls:v4];
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v17 = [v4 count];
      v18 = 2048;
      v19 = [v7 count];
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu recent calls using %lu handles", buf, 0x16u);
    }

    v9 = [(PKRecentsController *)self featureFlags];
    v10 = [v9 phoneRecentsAvatarsEnabled];

    v11 = [(PKRecentsController *)self metadataCache];
    v12 = v11;
    if (v10)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__PKRecentsController_fetchMetadataForRecentCalls___block_invoke;
      v14[3] = &unk_279A228C8;
      v14[4] = self;
      v15 = v4;
      [v12 updateCacheWithDestinationIDs:v7 completion:v14];
    }

    else
    {
      [v11 updateCacheWithDestinationIDs:v7];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__PKRecentsController_fetchMetadataForRecentCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 phoneRecentsAvatarsEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) serialQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__PKRecentsController_fetchMetadataForRecentCalls___block_invoke_2;
    v7[3] = &unk_279A228C8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

void __51__PKRecentsController_fetchMetadataForRecentCalls___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          v8 = [v7 uniqueId];
          v9 = [*(a1 + 40) itemCache];
          v10 = [v9 objectForKeyedSubscript:v8];
          v11 = [v10 mutableCopy];

          if (v11)
          {
            v12 = [*(a1 + 40) localizedSubtitleForRecentCall:v7];
            [v11 setLocalizedSubtitle:v12];

            v13 = [v11 copy];
            v14 = [*(a1 + 40) itemCache];
            [v14 setObject:v13 forKeyedSubscript:v8];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v4);
    }

    os_unfair_lock_lock((*(a1 + 40) + 12));
    [*(a1 + 40) notifyDelegatesRecentsController:*(a1 + 40) didUpdateCalls:*(a1 + 32)];
    os_unfair_lock_unlock((*(a1 + 40) + 12));
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchBlockedStatusForRecentCalls:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 count])
  {
    v6 = [(PKRecentsController *)self blockedStatusCache];

    if (v6)
    {
      v7 = [(PKRecentsController *)self featureFlags];
      v8 = [v7 betterBlockingEnabled];

      if (v8)
      {
        v9 = PHDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v16 = [v4 count];
          _os_log_impl(&dword_25E4EC000, v9, OS_LOG_TYPE_DEFAULT, "Fetching blocked status for %lu recent calls", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __56__PKRecentsController_fetchBlockedStatusForRecentCalls___block_invoke;
        v11[3] = &unk_279A22AA8;
        objc_copyWeak(&v14, buf);
        v12 = v4;
        v13 = self;
        [(PKRecentsController *)self queryCommTrustBlockedForCalls:v12 completion:v11];

        objc_destroyWeak(&v14);
        objc_destroyWeak(buf);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__PKRecentsController_fetchBlockedStatusForRecentCalls___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained serialQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__PKRecentsController_fetchBlockedStatusForRecentCalls___block_invoke_2;
  v9[3] = &unk_279A22A80;
  v9[4] = WeakRetained;
  v10 = v3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = v3;
  dispatch_async(v5, v9);
}

void __56__PKRecentsController_fetchBlockedStatusForRecentCalls___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setBlockedStatusCache:*(a1 + 40)];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 48);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v29;
    v21 = *v29;
    do
    {
      v5 = 0;
      v22 = v3;
      do
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = [v6 uniqueId];
        v8 = [*(a1 + 32) itemCache];
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 mutableCopy];

        if (v10)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = [v6 remoteParticipantHandles];
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = *v25;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v24 + 1) + 8 * i);
                v16 = [*(a1 + 32) blockedStatusCache];
                v17 = [v16 objectForKeyedSubscript:v15];

                if (v17 && [v17 intValue] == 1)
                {

                  v12 = 1;
                  goto LABEL_18;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }

LABEL_18:
            v4 = v21;
            v3 = v22;
          }

          [v10 setIsBlocked:v12];
          v18 = [v10 copy];
          v19 = [*(a1 + 32) itemCache];
          [v19 setObject:v18 forKeyedSubscript:v7];
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v3);
  }

  os_unfair_lock_lock((*(a1 + 56) + 12));
  [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didUpdateCalls:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 56) + 12));
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)canLoadOlderRecentCalls
{
  v3 = [(PKRecentsController *)self featureFlags];
  if ([v3 increaseCallHistoryEnabled])
  {
    v4 = [(PKRecentsController *)self callHistoryController];
    v5 = [v4 canLoadOlderRecentCalls];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)continuousScrollingReachedIndexPath:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(PKRecentsController *)self featureFlags];
  v6 = [v5 increaseCallHistoryEnabled];

  if (v6)
  {
    v7 = [(PKRecentsController *)self recentCalls];
    v8 = [v7 count] - a3;

    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v14 = a3;
      v15 = 2048;
      v16 = v8;
      v17 = 1024;
      v18 = [(PKRecentsController *)self startedLoadingOlderCalls];
      _os_log_impl(&dword_25E4EC000, v9, OS_LOG_TYPE_DEFAULT, "_continuousScrollingReachedIndexPath %ld, remaining rows: %ld startedLoadingOlderCalls: %d", buf, 0x1Cu);
    }

    [(PKRecentsController *)self loadOlderCallsIfNecessaryForRemainingRowCount:v8];
    serialQueue = self->_serialQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__PKRecentsController_continuousScrollingReachedIndexPath___block_invoke;
    v12[3] = &unk_279A22AD0;
    v12[4] = self;
    v12[5] = a3;
    dispatch_async(serialQueue, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)loadOlderCallsIfNecessaryForRemainingRowCount:(int64_t)a3
{
  v5 = [(PKRecentsController *)self featureFlags];
  v6 = [v5 increaseCallHistoryEnabled];

  if (v6 && ![(PKRecentsController *)self startedLoadingOlderCalls])
  {
    v13 = [(PKRecentsController *)self recentCalls];
    v7 = [v13 count];
    v8 = [(PKRecentsController *)self callHistoryController];
    v9 = [v8 callHistoryControllerCallHistoryFetchLimit];
    if (a3 > 50 || v7 >= v9)
    {
    }

    else
    {
      v10 = [(PKRecentsController *)self canLoadOlderRecentCalls];

      if (v10)
      {
        v11 = PHDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25E4EC000, v11, OS_LOG_TYPE_DEFAULT, "Loading older recent calls", buf, 2u);
        }

        [(PKRecentsController *)self setStartedLoadingOlderCalls:1];
        v12 = [(PKRecentsController *)self callHistoryController];
        [v12 loadOlderRecentCalls];
      }
    }
  }
}

- (id)recentCallsChangedFromCachedRecentCalls:(id)a3 callHistoryControllerRecentCalls:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v14 uniqueId];
        [v8 setObject:v14 forKeyedSubscript:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [v21 uniqueId];
        v23 = [v8 objectForKey:v22];

        if (!v23 || ([v23 isEqual:v21] & 1) == 0)
        {
          [v7 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)recentCallsDeletedFromCachedRecentCall:(id)a3 callHistoryControllerRecentCalls:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 uniqueId];
        [v8 setObject:v14 forKeyedSubscript:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v21 uniqueId];
        v23 = [v8 objectForKey:v22];

        if (!v23)
        {
          v24 = [v21 uniqueId];
          [v7 addObject:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)populateCachesForRecentCalls:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 count];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "Requesting contacts for %lu calls", &v12, 0xCu);
  }

  [(PKRecentsController *)self fetchContactsForRecentCalls:v4];
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "Requesting metadata for %lu recent calls.", &v12, 0xCu);
  }

  [(PKRecentsController *)self fetchMetadataForRecentCalls:v4];
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25E4EC000, v9, OS_LOG_TYPE_DEFAULT, "Requesting blocked status with %lu recent calls", &v12, 0xCu);
  }

  [(PKRecentsController *)self fetchBlockedStatusForRecentCalls:v4];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v6;
    _os_log_impl(&dword_25E4EC000, v10, OS_LOG_TYPE_DEFAULT, "Populating item cache with %lu recent calls", &v12, 0xCu);
  }

  [(PKRecentsController *)self populateItemCacheForRecentCalls:v4];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)populateItemCacheForRecentCalls:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PKRecentsController *)self itemCache];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(PKRecentsController *)self fetchMutableItemForRecentCall:v12, v18];
        v14 = [(PKRecentsController *)self localizedSubtitleForRecentCall:v12];
        [v13 setLocalizedSubtitle:v14];

        v15 = [v13 copy];
        v16 = [v12 uniqueId];
        [v6 setObject:v15 forKeyedSubscript:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)recentCallsWillShow
{
  v2 = [(PKRecentsController *)self callHistoryController];
  [v2 boostQualityOfService];
}

- (id)metadataItemsForRecentCall:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277D6EF00] metadataDestinationIDsForCHRecentCall:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(PKRecentsController *)self metadataCache];
        v13 = [v12 metadataForDestinationID:v11];

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)handleUpdatedContacts
{
  v3 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PKRecentsController_handleUpdatedContacts__block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(v3, block);
}

void __44__PKRecentsController_handleUpdatedContacts__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) recentCalls];
  if ([v6 count])
  {
    v2 = [*(a1 + 32) contactCache];
    [v2 removeAllObjects];

    v3 = *(a1 + 32);
    v4 = [v3 recentCalls];
    [v3 fetchContactsForRecentCalls:v4];

    v5 = [*(a1 + 32) itemCache];
    [v5 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v6];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v6];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleCNContactStoreDidChangeNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v10 = 138412802;
    v11 = v6;
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v10, 0x20u);
  }

  [(PKRecentsController *)self handleUpdatedContacts];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PKRecentsController_handleIDSServiceAvailabilityDidChangeNotification___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PKRecentsController_handleNSCurrentLocaleDidChangeNotification___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __66__PKRecentsController_handleNSCurrentLocaleDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchContactFormatter];
  [*(a1 + 32) setContactFormatter:v2];

  v3 = [*(a1 + 32) fetchNumberFormatter];
  [*(a1 + 32) setNumberFormatter:v3];

  v8 = [*(a1 + 32) recentCalls];
  if ([v8 count])
  {
    v4 = [*(a1 + 32) itemCache];
    [v4 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v8];
    v5 = [*(a1 + 32) featureFlags];
    v6 = [v5 phoneRecentsAvatarsEnabled];

    os_unfair_lock_lock((*(a1 + 32) + 12));
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 notifyDelegatesRecentsController:v7 didUpdateCalls:v8];
    }

    else
    {
      [v7 notifyDelegatesRecentsController:v7 didChangeCalls:v8];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(PKRecentsController *)self callHistoryController];
  v7 = [v5 isEqual:v6];

  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v4 name];
      *buf = 138412802;
      v16 = v10;
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    v8 = [(PKRecentsController *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__PKRecentsController_handleTUCallHistoryControllerRecentCallsDidChangeNotification___block_invoke;
    block[3] = &unk_279A22800;
    block[4] = self;
    dispatch_async(v8, block);
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring calls change notification from different callHistoryController", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __85__PKRecentsController_handleTUCallHistoryControllerRecentCallsDidChangeNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStartedLoadingOlderCalls:0];
  v2 = *(a1 + 32);

  return [v2 updateRecentCalls];
}

- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  v6 = [(PKRecentsController *)self callHistoryController];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v4 name];
      v15 = 138412802;
      v16 = v9;
      v17 = 2048;
      v18 = self;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_25E4EC000, v8, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v15, 0x20u);
    }

    v12 = [v4 object];
    v13 = v12;
    if (v12)
    {
      -[PKRecentsController setUnreadCallCount:](self, "setUnreadCallCount:", [v12 unreadCallCount]);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self featureFlags];
  v6 = [v5 phoneRecentsAvatarsEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v4 name];
      *buf = 138412802;
      v15 = v8;
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_25E4EC000, v7, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    v11 = [(PKRecentsController *)self serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PKRecentsController_handleTUMetadataCacheDidFinishUpdatingNotification___block_invoke;
    block[3] = &unk_279A22800;
    block[4] = self;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __74__PKRecentsController_handleTUMetadataCacheDidFinishUpdatingNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recentCalls];
  if ([v2 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = [v8 uniqueId];
          v10 = [*(a1 + 32) itemCache];
          v11 = [v10 objectForKeyedSubscript:v9];
          v12 = [v11 mutableCopy];

          if (v12)
          {
            v13 = [*(a1 + 32) localizedSubtitleForRecentCall:v8];
            [v12 setLocalizedSubtitle:v13];

            v14 = [v12 copy];
            v15 = [*(a1 + 32) itemCache];
            [v15 setObject:v14 forKeyedSubscript:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }

    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
    v2 = v17;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleUIApplicationSignificantTimeChangeNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__PKRecentsController_handleUIApplicationSignificantTimeChangeNotification___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __76__PKRecentsController_handleUIApplicationSignificantTimeChangeNotification___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) recentCalls];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) itemCache];
    [v2 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v3];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (void)handleUIApplicationDidBecomeActiveNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__PKRecentsController_handleUIApplicationDidBecomeActiveNotification___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleBlocklistChanged:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PKRecentsController *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PKRecentsController_handleBlocklistChanged___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__PKRecentsController_handleBlocklistChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentCalls];
  [*(a1 + 32) fetchBlockedStatusForRecentCalls:v2];
}

- (void)performSynchronousBlock:(id)a3
{
  if (dispatch_get_specific(PKRecentsControllerSerialQueueContextKey) == self)
  {
    v6 = *(a3 + 2);
    v7 = a3;
    v6();
  }

  else
  {
    v5 = a3;
    v7 = [(PKRecentsController *)self serialQueue];
    dispatch_sync(v7, v5);
  }
}

- (void)providersChangedForProviderManager:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    v6 = v11;
    _os_log_impl(&dword_25E4EC000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling providersChangedForProviderManager %@", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PKRecentsController_providersChangedForProviderManager___block_invoke;
  block[3] = &unk_279A22800;
  block[4] = self;
  dispatch_async(serialQueue, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __58__PKRecentsController_providersChangedForProviderManager___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) recentCalls];
  if ([v4 count])
  {
    v2 = [*(a1 + 32) callProviderCache];
    [v2 removeAllObjects];

    v3 = [*(a1 + 32) itemCache];
    [v3 removeAllObjects];

    [*(a1 + 32) populateItemCacheForRecentCalls:v4];
    os_unfair_lock_lock((*(a1 + 32) + 12));
    [*(a1 + 32) notifyDelegatesRecentsController:*(a1 + 32) didChangeCalls:v4];
    os_unfair_lock_unlock((*(a1 + 32) + 12));
  }
}

- (id)subtitleForRecentEmergencyCall:(id)a3
{
  v4 = [a3 callOccurrences];
  v5 = [(PKRecentsController *)self localizedSubtitleForRecentEmergencyCall:v4];

  return v5;
}

- (id)localizedSubtitleForRecentEmergencyCall:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v4)
  {
LABEL_33:
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v16;
    v21 = @"Emergency call";
    goto LABEL_34;
  }

  v5 = v4;
  v26 = self;
  v6 = 0;
  v7 = 0;
  v8 = *v29;
  v9 = *MEMORY[0x277CF7D68];
  v10 = *MEMORY[0x277CF7D60];
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      v13 = [v12 objectForKeyedSubscript:{v9, v26}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 += [v13 integerValue];
      }

      v14 = [v12 objectForKeyedSubscript:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 += [v14 integerValue];
      }
    }

    v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v5);
  if (v7 && !v6)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v16;
    v18 = @"Shared videos coalesced";
    v19 = @"Shared video coalesced";
    v20 = v7 == 1;
    goto LABEL_18;
  }

  if (v7 || !v6)
  {
    if (v7 == 1 && v6 == 1)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v21 = @"Shared video and photo coalesced";
      goto LABEL_34;
    }

    if (v7 == 1 && v6 >= 2)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v21 = @"Shared video and photos coalesced";
      goto LABEL_34;
    }

    if (v7 >= 2 && v6 == 1)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v21 = @"Shared videos and photo coalesced";
      goto LABEL_34;
    }

    if (v7 >= 2 && v6 >= 2)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = v16;
      v21 = @"Shared videos and photos coalesced";
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = v16;
  v18 = @"Shared photos coalesced";
  v19 = @"Shared photo coalesced";
  v20 = v6 == 1;
LABEL_18:
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

LABEL_34:
  v22 = [v16 localizedStringForKey:v21 value:&stru_287038A20 table:@"PHRecents"];
  v23 = [v15 stringWithFormat:v22];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)localizedSubtitleForRecentCall:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 wasEmergencyCall])
  {
    v6 = [(PKRecentsController *)self subtitleForRecentEmergencyCall:v4];
    goto LABEL_73;
  }

  v7 = [v4 blockedByExtension];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"%@_BLOCKED_BY" value:&stru_287038A20 table:@"PHRecents"];
    v11 = [v4 localizedBlockedByExtensionName];
    v6 = [v8 stringWithFormat:v10, v11];

    goto LABEL_73;
  }

  v12 = [v4 uniqueId];
  v13 = [(PKRecentsController *)self featureFlags];
  v14 = [v13 increaseCallHistoryEnabled];

  if (!v14)
  {
    v16 = 0;
LABEL_9:
    v17 = [(PKRecentsController *)self fetchCallProviderForRecentCall:v4];
    v18 = v17;
    if (v17)
    {
      if ([v17 isFaceTimeProvider])
      {
        v19 = [v4 mediaType];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v21 = v20;
        if (v19 == 2)
        {
          v22 = @"RECENTS_FACETIME_VIDEO";
        }

        else
        {
          v22 = @"RECENTS_FACETIME_AUDIO";
        }

        v33 = [v20 localizedStringForKey:v22 value:&stru_287038A20 table:@"PHRecents"];

        v16 = v33;
        goto LABEL_66;
      }

      if ([v18 isTelephonyProvider])
      {
        v23 = [v4 remoteParticipantHandles];
        v24 = [v23 anyObject];

        if (v24)
        {
          v71 = v24;
          [(PKRecentsController *)self contactHandlesForHandle:v24];
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          obj = v76 = 0u;
          v25 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
          if (v25)
          {
            v26 = v25;
            v69 = v18;
            v70 = v12;
            v27 = *v74;
LABEL_17:
            v28 = 0;
            while (1)
            {
              if (*v74 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v73 + 1) + 8 * v28);
              v30 = [(PKRecentsController *)self contactCache];
              v31 = [v30 objectForKeyedSubscript:v29];
              v32 = [v31 value];

              if (v32)
              {
                break;
              }

              if (v26 == ++v28)
              {
                v26 = [obj countByEnumeratingWithState:&v73 objects:v77 count:16];
                if (v26)
                {
                  goto LABEL_17;
                }

                v18 = v69;
                v12 = v70;
                goto LABEL_24;
              }
            }

            v24 = v71;
            v36 = [v71 type];
            if (v36 == 3)
            {
              v37 = [v32 labeledValueForEmailAddress:v29];
              v48 = MEMORY[0x277CBDB20];
              v39 = [v37 label];
              v40 = [v48 localizedDisplayStringForLabel:v39 propertyName:*MEMORY[0x277CBCFC0]];
              v12 = v70;
            }

            else
            {
              v12 = v70;
              if (v36 == 2)
              {
                v46 = MEMORY[0x277CBDB70];
                v47 = [v4 isoCountryCode];
                v39 = [v46 phoneNumberWithDigits:v29 countryCode:v47];

                if (v39)
                {
                  v37 = [v32 labeledValueForPhoneNumber:v39];
                }

                else
                {
                  v37 = 0;
                }

                v49 = MEMORY[0x277CBDB20];
                v50 = [v37 label];
                v40 = [v49 localizedDisplayStringForLabel:v50 propertyName:*MEMORY[0x277CBD098]];

                v16 = v50;
              }

              else
              {
                if (v36 != 1)
                {
LABEL_42:

                  v18 = v69;
                  goto LABEL_43;
                }

                v37 = [v32 labeledValueForSocialProfileWithUsername:v29];
                v38 = MEMORY[0x277CBDB20];
                v39 = [v37 label];
                v40 = [v38 localizedDisplayStringForLabel:v39 propertyName:*MEMORY[0x277CBD138]];
              }
            }

            v16 = v40;
            v24 = v71;
            goto LABEL_42;
          }

LABEL_24:
          v24 = v71;
LABEL_43:
        }

        if (-[PKRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v16) && [v4 isJunk])
        {
          v51 = [v4 junkIdentificationCategory];
          if (v51)
          {
            v52 = [v4 junkIdentificationCategory];
          }

          else
          {
            v52 = @"MAYBE_JUNK";
          }

          v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v54 = [v53 localizedStringForKey:v52 value:&stru_287038A20 table:@"PHRecents"];

          v16 = v54;
        }

        if ([(PKRecentsController *)self isLocalizedSubtitleUnknown:v16])
        {
          v55 = [MEMORY[0x277D6EF00] metadataDestinationIDsForCHRecentCall:v4];
          v56 = [v55 firstObject];

          if (v56)
          {
            v57 = [(PKRecentsController *)self metadataCache];
            v58 = [v57 metadataForDestinationID:v56];

            if (v58)
            {
              if (-[PKRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v16) && ([v4 callerIdIsBlocked] & 1) == 0)
              {
                v59 = [v58 metadataForProvider:objc_opt_class()];

                v16 = v59;
              }

              if (-[PKRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v16) && ([v4 callerIdIsBlocked] & 1) == 0)
              {
                v60 = [v58 metadataForProvider:objc_opt_class()];

                v16 = v60;
              }

              if ([(PKRecentsController *)self isLocalizedSubtitleUnknown:v16])
              {
                v61 = [v58 metadataForProvider:objc_opt_class()];

                v16 = v61;
              }

              if ([(PKRecentsController *)self isLocalizedSubtitleUnknown:v16])
              {
                v62 = [v58 metadataForProvider:objc_opt_class()];

                v16 = v62;
              }
            }
          }

          else
          {
            v58 = 0;
          }
        }

        goto LABEL_66;
      }

      v34 = [v4 mediaType];
      if (v34 == 1)
      {
        v35 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_AUDIO";
        goto LABEL_35;
      }

      if (v34 == 2)
      {
        v35 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_VIDEO";
LABEL_35:
        v41 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v43 = [v42 localizedStringForKey:v35 value:&stru_287038A20 table:@"PHRecents"];
        v44 = [v18 localizedName];
        v45 = [v41 stringWithFormat:v43, v44];

        v16 = v45;
      }
    }

LABEL_66:
    if (![v16 length])
    {
      v63 = [(PKRecentsController *)self unknownLabel];

      v16 = v63;
    }

    v64 = [(PKRecentsController *)self featureFlags];
    v65 = [v64 increaseCallHistoryEnabled];

    if (v65 && v12)
    {
      v66 = [(PKRecentsController *)self localizedSubtitleCache];
      [v66 setObject:v16 forKey:v12];
    }

    v6 = v16;

    goto LABEL_72;
  }

  v15 = [(PKRecentsController *)self localizedSubtitleCache];
  v16 = [v15 objectForKey:v12];

  if ([(PKRecentsController *)self isLocalizedSubtitleUnknown:v16])
  {
    goto LABEL_9;
  }

  v6 = v16;
LABEL_72:

LABEL_73:
  v67 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isLocalizedSubtitleUnknown:(id)a3
{
  v4 = a3;
  v5 = [(PKRecentsController *)self featureFlags];
  v6 = [v5 increaseCallHistoryEnabled];

  v7 = [v4 length];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if (v6 && v7)
  {
    v9 = [(PKRecentsController *)self unknownLabel];
    v8 = [v4 isEqualToString:v9];
  }

  return v8;
}

- (void)logRecentsScrollingEvent:(int64_t)a3
{
  v5 = [(PKRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if (!(a3 % 100))
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3 / 100];
    [v9 setObject:v6 forKey:@"BucketedScrollingIndex"];

    v7 = [(PKRecentsController *)self analyticsLogger];
    v8 = [v9 copy];
    [v7 logEvent:@"com.apple.MobilePhone.RecentsScrollingIndex" withCoreAnalyticsDictionary:v8];
  }
}

- (unint64_t)callHistoryControllerOptions
{
  v2 = [(PKRecentsController *)self callHistoryController];
  v3 = [v2 options];

  return v3;
}

- (unint64_t)callHistoryControllerCoalescingStrategy
{
  v2 = [(PKRecentsController *)self callHistoryController];
  v3 = [v2 coalescingStrategy];

  return v3;
}

- (void)cancelSearchFetchOperations
{
  v2 = [(PKRecentsController *)self callHistoryController];
  [v2 cancelSearchFetchOperations];
}

- (void)dialRequestForRecentCall:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E4EC000, a2, OS_LOG_TYPE_ERROR, "Could not create a dial request for the recent call (%@).", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __42__PKRecentsController_performDialRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_25E4EC000, log, OS_LOG_TYPE_ERROR, "Error initiating dial request %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)fetchUnifiedContactForID:(uint64_t)a1 withDescriptors:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138739971;
  v4 = a1;
  _os_log_error_impl(&dword_25E4EC000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch unified contact for identifier: %{sensitive}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end