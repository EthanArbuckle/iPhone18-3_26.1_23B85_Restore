@interface WBSHistoryServiceStore
- (BOOL)_ensureItemHasID:(id)d;
- (BOOL)_ensureVisitHasID:(id)d;
- (BOOL)isUsingInMemoryDatabase;
- (WBSHistoryServiceStore)initWithDatabaseID:(id)d itemCountLimit:(unint64_t)limit historyAgeLimit:(double)ageLimit historyItemClass:(Class)class;
- (WBSHistoryServiceStore)initWithDatabaseID:(id)d itemCountLimit:(unint64_t)limit historyAgeLimit:(double)ageLimit historyItemClass:(Class)class connectionProxy:(id)proxy;
- (WBSHistoryStoreDelegate)delegate;
- (id)_connectOptions;
- (id)_databaseURLs;
- (id)_fetchVisitsOnDatabaseQueue:(unint64_t)queue predicate:(id)predicate error:(id *)error;
- (id)_loadOnDatabaseQueue:(unint64_t)queue readHandle:(id)handle;
- (int64_t)_generateTemporaryDatabaseID;
- (void)_connectWithOptions:(id)options completionHandler:(id)handler;
- (void)_createTagsForIdentifiers:(id)identifiers withTitles:(id)titles type:(unint64_t)type level:(int64_t)level completionHandler:(id)handler;
- (void)_databaseFetchWithOptions:(unint64_t)options predicate:(id)predicate completionHandler:(id)handler;
- (void)_expireOldVisits;
- (void)_fetchHistoryItemsForTopics:(id)topics fromStartDate:(id)date toEndDate:(id)endDate completionHandler:(id)handler;
- (void)_fetchTags:(unint64_t)tags fromStartDate:(id)date toEndDate:(id)endDate withIdentifiers:(id)identifiers limit:(unint64_t)limit minimumItemCount:(unint64_t)count sortOrder:(int64_t)order completionHandler:(id)self0;
- (void)_load:(id)_load;
- (void)_performMaintenance:(id)maintenance;
- (void)_scheduleMaintenance;
- (void)_setMetadataValue:(id)value forKey:(id)key group:(id)group;
- (void)_updateLastMaintenanceDate;
- (void)_waitForDatabase:(id)database;
- (void)addAutocompleteTrigger:(id)trigger forItem:(id)item;
- (void)assignHistoryItem:(id)item toTopicTags:(id)tags completionHandler:(id)handler;
- (void)checkIfLocalVisitExistsInAnyOfItems:(id)items withCompletion:(id)completion;
- (void)clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate completionHandler:(id)handler;
- (void)closeWithCompletionHandler:(id)handler;
- (void)computeFrequentlyVisitedSites:(unint64_t)sites minimalVisitCountScore:(unint64_t)score blockList:(id)list allowList:(id)allowList options:(unint64_t)options currentTime:(double)time completionHandler:(id)handler;
- (void)connectionProxyConnectionWasInterrupted:(id)interrupted;
- (void)exportHistory:(id)history completionHandler:(id)handler;
- (void)fetchTopicsFromStartDate:(id)date toEndDate:(id)endDate limit:(unint64_t)limit minimumItemCount:(unint64_t)count sortOrder:(int64_t)order completionHandler:(id)handler;
- (void)getAutocompleteTriggersForItem:(id)item completionHandler:(id)handler;
- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)date beforeDate:(id)beforeDate onlyFromThisDevice:(BOOL)device completionHandler:(id)handler;
- (void)getItemCountBeforeDate:(id)date completionHandler:(id)handler;
- (void)getVisitsCreatedAfterDate:(id)date beforeDate:(id)beforeDate completionHandler:(id)handler;
- (void)handleEvent:(id)event completionHandler:(id)handler;
- (void)initializeCloudHistoryWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)loadWithCompletionHandler:(id)handler;
- (void)performMaintenance:(id)maintenance;
- (void)releaseCloudHistory:(id)history;
- (void)removePastHistoryVisitsForItem:(id)item completionHandler:(id)handler;
- (void)reportPermanentIDsForItems:(id)items completionHandler:(id)handler;
- (void)reportPermanentIDsForVisits:(id)visits completionHandler:(id)handler;
- (void)reportSevereError:(id)error completionHandler:(id)handler;
- (void)savePendingChangesWithCompletionHandler:(id)handler;
- (void)searchForUserTypedString:(id)string options:(unint64_t)options currentTime:(double)time enumerationBlock:(id)block completionHandler:(id)handler;
- (void)setTitle:(id)title ofTag:(id)tag completionHandler:(id)handler;
- (void)tagsWithIdentifiers:(id)identifiers type:(unint64_t)type level:(int64_t)level creatingIfNecessary:(BOOL)necessary withTitles:(id)titles completionHandler:(id)handler;
- (void)vacuumHistoryWithCompletionHandler:(id)handler;
- (void)visitAttributeWasUpdated:(id)updated removeAttributes:(unint64_t)attributes addAttributes:(unint64_t)addAttributes;
- (void)visitTitleWasUpdated:(id)updated;
- (void)visitsWereAdded:(id)added;
- (void)waitForLoadingToComplete;
@end

@implementation WBSHistoryServiceStore

- (WBSHistoryServiceStore)initWithDatabaseID:(id)d itemCountLimit:(unint64_t)limit historyAgeLimit:(double)ageLimit historyItemClass:(Class)class connectionProxy:(id)proxy
{
  dCopy = d;
  proxyCopy = proxy;
  v28.receiver = self;
  v28.super_class = WBSHistoryServiceStore;
  v15 = [(WBSHistoryServiceStore *)&v28 init];
  v16 = v15;
  if (v15)
  {
    v15->_historyAgeLimit = ageLimit;
    v15->_historyItemClass = class;
    v15->_itemCountLimit = limit;
    atomic_store(0, &v15->_state);
    objc_storeStrong(&v15->_connection, proxy);
    v17 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryServiceStore", 0);
    databaseQueue = v16->_databaseQueue;
    v16->_databaseQueue = v17;

    v19 = v16->_databaseQueue;
    v20 = +[WBSHistoryItem synchronizationQueue];
    dispatch_set_target_queue(v19, v20);

    objc_storeStrong(&v16->_databaseID, d);
    v21 = objc_alloc_init(WBSHistoryObjectCache);
    cache = v16->_cache;
    v16->_cache = v21;

    v23 = objc_alloc_init(WBSHistoryCrypto);
    crypto = v16->_crypto;
    v16->_crypto = v23;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel_connectionProxyConnectionWasInterrupted_ name:@"WBSHistoryConnectionWasInterrupted" object:proxyCopy];

    v26 = v16;
  }

  return v16;
}

- (WBSHistoryServiceStore)initWithDatabaseID:(id)d itemCountLimit:(unint64_t)limit historyAgeLimit:(double)ageLimit historyItemClass:(Class)class
{
  dCopy = d;
  v11 = objc_alloc_init(WBSHistoryConnectionProxy);
  v12 = [(WBSHistoryServiceStore *)self initWithDatabaseID:dCopy itemCountLimit:limit historyAgeLimit:class historyItemClass:v11 connectionProxy:ageLimit];

  return v12;
}

- (id)_connectOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  [v3 setObject:@"Safari" forKeyedSubscript:@"WBSHistoryConnectionOptionEventListenerName"];
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-self->_historyAgeLimit];
  [v3 setObject:v4 forKeyedSubscript:@"WBSHistoryConnectionOptionLegacyDatabaseImportAfterDate"];

  databaseID = self->_databaseID;
  if (databaseID)
  {
    [v3 setObject:databaseID forKeyedSubscript:@"WBSHistoryConnectionOptionDatabaseID"];
  }

  return v3;
}

- (id)_databaseURLs
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = [WBSHistory profileDirectoryURLForProfileID:self->_databaseID];
  v3 = [v2 URLByAppendingPathComponent:@"History.db"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v3 path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v7 = [MEMORY[0x1E69C89E8] writeAheadLogURLForDatabaseURL:{v3, v3}];
    v11[1] = v7;
    v8 = [MEMORY[0x1E69C89E8] writeAheadLogSharedMemoryURLForDatabaseURL:v3];
    v11[2] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (void)_connectWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = [[WBSHistoryServiceDatabaseDelegateWeakProxy alloc] initWithDelegate:self];
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__WBSHistoryServiceStore__connectWithOptions_completionHandler___block_invoke;
  v13[3] = &unk_1E7FC7790;
  v10 = handlerCopy;
  v16 = v10;
  v13[4] = self;
  v11 = optionsCopy;
  v14 = v11;
  v15 = v8;
  v12 = v8;
  [(WBSHistoryConnectionProxy *)connection connectWithOptions:v11 delegate:v12 completionHandler:v13];
}

void __64__WBSHistoryServiceStore__connectWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  if ([v8 safari_isSQLiteCorruptionError])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v8 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __64__WBSHistoryServiceStore__connectWithOptions_completionHandler___block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
    v11 = *(a1 + 32);
    v12 = [v11 _databaseURLs];
    [WeakRetained historyStoreDidFailDatabaseIntegrityCheck:v11 error:v8 databaseURLs:v12];

    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__WBSHistoryServiceStore__connectWithOptions_completionHandler___block_invoke_18;
    v20[3] = &unk_1E7FC7790;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *&v17 = *(a1 + 40);
    *(&v17 + 1) = *(a1 + 32);
    v19 = v17;
    *&v18 = *(a1 + 48);
    *(&v18 + 1) = v16;
    v21 = v19;
    v22 = v18;
    [v14 connectWithOptions:v13 delegate:v15 completionHandler:v20];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __64__WBSHistoryServiceStore__connectWithOptions_completionHandler___block_invoke_18(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  if ([v8 safari_isSQLiteCorruptionError])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v8 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __64__WBSHistoryServiceStore__connectWithOptions_completionHandler___block_invoke_18_cold_1();
    }

    v10 = a1[4];
    if (v10)
    {
      v11 = [v10 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    v12 = v11;
    v13 = WBSHistoryInMemoryDatabaseURL();
    [v12 setObject:v13 forKeyedSubscript:@"WBSHistoryConnectionOptionDatabaseURL"];

    [*(a1[5] + 32) connectWithOptions:v12 delegate:a1[6] completionHandler:a1[7]];
  }

  else
  {
    (*(a1[7] + 16))();
  }
}

- (void)loadWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _connectOptions = [(WBSHistoryServiceStore *)self _connectOptions];
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WBSHistoryServiceStore_loadWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v10 = _connectOptions;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = _connectOptions;
  dispatch_async(databaseQueue, block);
}

void __52__WBSHistoryServiceStore_loadWithCompletionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__24;
  v23 = __Block_byref_object_dispose__24;
  v24 = 0;
  dispatch_group_enter(v2);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__24;
  v17[4] = __Block_byref_object_dispose__24;
  v18 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__WBSHistoryServiceStore_loadWithCompletionHandler___block_invoke_20;
  v13[3] = &unk_1E7FC77B8;
  v13[4] = v3;
  v15 = &v19;
  v16 = v17;
  v5 = v2;
  v14 = v5;
  [v3 _connectWithOptions:v4 completionHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__WBSHistoryServiceStore_loadWithCompletionHandler___block_invoke_22;
  v12[3] = &unk_1E7FC7280;
  v12[4] = *(a1 + 32);
  if ((waitForGroupOrStopCondition(v5, v12) & 1) == 0)
  {
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:89 userInfo:0];
    (*(v7 + 16))(v7, v8);
LABEL_8:

    goto LABEL_9;
  }

  if (!v20[5])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__WBSHistoryServiceStore_loadWithCompletionHandler___block_invoke_25;
    block[3] = &unk_1E7FB6F08;
    block[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    _os_activity_initiate(&dword_1BB6F3000, "Load history", OS_ACTIVITY_FLAG_DETACHED, v9);

    v8 = v11;
    goto LABEL_8;
  }

  v6 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [v20[5] safari_privacyPreservingDescription];
    objc_claimAutoreleasedReturnValue();
    __52__WBSHistoryServiceStore_loadWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);
}

void __52__WBSHistoryServiceStore_loadWithCompletionHandler___block_invoke_20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a5;
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  else
  {
    *(*(a1 + 32) + 56) = a3;
    *(*(a1 + 32) + 64) = a4;
    [*(a1 + 32) setDatabaseProxy:v9];
  }

  v11 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    [*(*(*(a1 + 56) + 8) + 40) timeIntervalSinceNow];
    v13 = 136446466;
    v14 = "connect_with_options_call";
    v15 = 2048;
    v16 = -v12;
    _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "#perf - %{public}s: %f", &v13, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)_loadOnDatabaseQueue:(unint64_t)queue readHandle:(id)handle
{
  handleCopy = handle;
  array = [MEMORY[0x1E695DF70] array];
  [(WBSHistoryObjectCache *)self->_cache reserveItemCapacity:queue];
  v24 = 0;
  v25 = &v24;
  v26 = 0x5812000000;
  v27 = __Block_byref_object_copy__28;
  v28 = __Block_byref_object_dispose__29;
  v29 = "";
  memset(v30, 0, sizeof(v30));
  v31 = 1065353216;
  v7 = [MEMORY[0x1E695DFA8] set];
  fileDescriptor = [handleCopy fileDescriptor];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__WBSHistoryServiceStore__loadOnDatabaseQueue_readHandle___block_invoke;
  v22[3] = &unk_1E7FC77E0;
  v22[4] = self;
  v9 = array;
  v23 = v9;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__WBSHistoryServiceStore__loadOnDatabaseQueue_readHandle___block_invoke_32;
  v19[3] = &unk_1E7FC7808;
  v19[4] = self;
  v10 = v7;
  v20 = v10;
  v21 = &v24;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__WBSHistoryServiceStore__loadOnDatabaseQueue_readHandle___block_invoke_35;
  v18[3] = &unk_1E7FC7280;
  v18[4] = self;
  SafariShared::ReadStreamedObjects(fileDescriptor, v22, v19, v18);
  [handleCopy closeFile];
  for (i = v25[8]; i; i = *i)
  {
    v12 = [(WBSHistoryObjectCache *)self->_cache visitForID:i[2]];
    v13 = i[4];
    if (i[3])
    {
      v14 = [(WBSHistoryObjectCache *)self->_cache visitForID:?];
      [v12 setRedirectSource:v14];
    }

    if (v13)
    {
      v15 = [(WBSHistoryObjectCache *)self->_cache visitForID:v13];
      [v12 setRedirectDestination:v15];
    }
  }

  _Block_object_dispose(&v24, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v30);

  return v9;
}

void __58__WBSHistoryServiceStore__loadOnDatabaseQueue_readHandle___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    v4 = [objc_alloc(*(*(a1 + 32) + 8)) initWithHistoryStreamedItem:a2];
    if (v4)
    {
      [*(*(a1 + 32) + 48) setItem:v4 forID:*(a2 + 8)];
      [*(a1 + 40) addObject:v4];
    }

    else
    {
      v6 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Failed to create WBSHistoryItem", v7, 2u);
      }
    }
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__WBSHistoryServiceStore__loadOnDatabaseQueue_readHandle___block_invoke_cold_1();
    }
  }
}

void __58__WBSHistoryServiceStore__loadOnDatabaseQueue_readHandle___block_invoke_32(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [*(*(a1 + 32) + 48) itemForID:*(a2 + 16)];
  if (v4)
  {
    v5 = [[WBSHistoryVisit alloc] initWithHistoryItem:v4 streamedVisit:a2];
    if (v5)
    {
      [v4 updateLastVisitIfNil:v5];
      [*(a1 + 40) addObject:v5];
      v6 = *(*(a1 + 48) + 8);
      *v10 = *(a2 + 8);
      *&v10[8] = *(a2 + 40);
      std::__hash_table<std::__hash_value_type<long long,VisitRedirectInformation>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,VisitRedirectInformation>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,VisitRedirectInformation>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,VisitRedirectInformation>>>::__emplace_unique_key_args<long long,std::pair<long long,VisitRedirectInformation>>((v6 + 48), v10);
      [*(*(a1 + 32) + 48) setVisit:v5 forID:*(a2 + 8)];
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Failed to create WBSHistoryVisit", v10, 2u);
      }
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a2 + 16);
      *v10 = 134217984;
      *&v10[4] = v8;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Failed to retrieve item %lli", v10, 0xCu);
    }
  }
}

- (void)_load:(id)_load
{
  v84 = *MEMORY[0x1E69E9840];
  _loadCopy = _load;
  v5 = dispatch_group_create();
  group = dispatch_group_create();
  v30 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__24;
  v77 = __Block_byref_object_dispose__24;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__24;
  v71 = __Block_byref_object_dispose__24;
  v72 = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = __Block_byref_object_copy__24;
  v65[4] = __Block_byref_object_dispose__24;
  date = [MEMORY[0x1E695DF00] date];
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__24;
  v63[4] = __Block_byref_object_dispose__24;
  date2 = [MEMORY[0x1E695DF00] date];
  dispatch_group_enter(v5);
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
  v7 = objc_opt_new();
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __32__WBSHistoryServiceStore__load___block_invoke;
  v57[3] = &unk_1E7FC7830;
  v59 = &v79;
  v60 = &v73;
  v61 = &v67;
  v62 = v63;
  v8 = v5;
  v58 = v8;
  [databaseProxy fetchWithOptions:27 predicate:v7 completionHandler:v57];

  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__24;
  v55[4] = __Block_byref_object_dispose__24;
  date3 = [MEMORY[0x1E695DF00] date];
  dispatch_group_enter(group);
  databaseProxy2 = [(WBSHistoryServiceStore *)self databaseProxy];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __32__WBSHistoryServiceStore__load___block_invoke_40;
  v51[3] = &unk_1E7FC7880;
  v10 = v30;
  v52 = v10;
  v54 = v55;
  v11 = group;
  v53 = v11;
  [databaseProxy2 fetchDomainExpansions:v51];

  dispatch_group_enter(v11);
  databaseProxy3 = [(WBSHistoryServiceStore *)self databaseProxy];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __32__WBSHistoryServiceStore__load___block_invoke_46;
  v49[3] = &unk_1E7FC78A8;
  v49[4] = self;
  v13 = v11;
  v50 = v13;
  [databaseProxy3 fetchDatabaseURL:v49];

  v14 = [MEMORY[0x1E695DFD8] setWithObjects:{@"last_maintenance_date", 0}];
  date4 = [MEMORY[0x1E695DF00] date];
  dispatch_group_enter(v13);
  databaseProxy4 = [(WBSHistoryServiceStore *)self databaseProxy];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __32__WBSHistoryServiceStore__load___block_invoke_49;
  v47[3] = &unk_1E7FC78D0;
  v47[4] = self;
  v17 = v13;
  v48 = v17;
  [databaseProxy4 fetchMetadataForKeys:v14 completionHandler:v47];

  v18 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [date4 timeIntervalSinceNow];
    [WBSHistoryServiceStore _load:v19];
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __32__WBSHistoryServiceStore__load___block_invoke_52;
  v46[3] = &unk_1E7FC7280;
  v46[4] = self;
  if (waitForGroupOrStopCondition(v8, v46))
  {
    if (v68[5])
    {
      _loadCopy[2](_loadCopy);
    }

    else
    {
      date5 = [MEMORY[0x1E695DF00] date];
      v29 = [(WBSHistoryServiceStore *)self _loadOnDatabaseQueue:v80[3] readHandle:v74[5]];
      v21 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [date5 timeIntervalSinceNow];
        [WBSHistoryServiceStore _load:v22];
      }

      v23 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        -[WBSHistoryServiceStore _load:].cold.3(v83, [v29 count]);
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __32__WBSHistoryServiceStore__load___block_invoke_54;
      v45[3] = &unk_1E7FC7280;
      v45[4] = self;
      if (waitForGroupOrStopCondition(v17, v45))
      {
        objc_initWeak(&location, self);
        v42[0] = 0;
        v42[1] = v42;
        v42[2] = 0x2020000000;
        v43 = 0;
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x3032000000;
        v40[3] = __Block_byref_object_copy__24;
        v40[4] = __Block_byref_object_dispose__24;
        date6 = [MEMORY[0x1E695DF00] date];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __32__WBSHistoryServiceStore__load___block_invoke_2;
        v32[3] = &unk_1E7FC78F8;
        v36 = v42;
        objc_copyWeak(&v39, &location);
        v35 = _loadCopy;
        v37 = v40;
        v38 = v65;
        v33 = v29;
        v34 = v10;
        v24 = MEMORY[0x1BFB13CE0](v32);
        loadCompletionBlock = self->_loadCompletionBlock;
        self->_loadCompletionBlock = v24;

        [(WBSHistoryServiceStore *)self _scheduleMaintenance];
        v26 = 0;
        atomic_compare_exchange_strong(&self->_state.__a_.__a_value, &v26, 1uLL);
        dispatch_async(MEMORY[0x1E69E96A0], self->_loadCompletionBlock);

        objc_destroyWeak(&v39);
        _Block_object_dispose(v40, 8);

        _Block_object_dispose(v42, 8);
        objc_destroyWeak(&location);
      }

      else
      {
        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:89 userInfo:0];
        (_loadCopy[2])(_loadCopy, v27);
      }
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:89 userInfo:0];
    (_loadCopy[2])(_loadCopy, v20);
  }

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v63, 8);

  _Block_object_dispose(v65, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);
}

void __32__WBSHistoryServiceStore__load___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  if (v9)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v9 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __32__WBSHistoryServiceStore__load___block_invoke_cold_1();
    }
  }

  v11 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [*(*(*(a1 + 64) + 8) + 40) timeIntervalSinceNow];
    __32__WBSHistoryServiceStore__load___block_invoke_cold_2(v12);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __32__WBSHistoryServiceStore__load___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __32__WBSHistoryServiceStore__load___block_invoke_40_cold_1();
    }
  }

  else
  {
    v8 = [v5 fileDescriptor];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __32__WBSHistoryServiceStore__load___block_invoke_41;
    v11[3] = &unk_1E7FC7858;
    v12 = *(a1 + 32);
    SafariShared::ReadStreamedDomainExpansions(v8, v11);
  }

  v9 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [*(*(*(a1 + 48) + 8) + 40) timeIntervalSinceNow];
    __32__WBSHistoryServiceStore__load___block_invoke_40_cold_2(v10);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __32__WBSHistoryServiceStore__load___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + 8)];
  if (*(a2 + 16) >= 1)
  {
    v4 = 0;
    do
    {
      [*(a1 + 32) addObject:v5];
      ++v4;
    }

    while (v4 < *(a2 + 16));
  }
}

void __32__WBSHistoryServiceStore__load___block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v7 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __32__WBSHistoryServiceStore__load___block_invoke_46_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 104), a2);
    dispatch_group_leave(*(a1 + 40));
  }
}

void __32__WBSHistoryServiceStore__load___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DF00];
  v5 = [v3 safari_numberForKey:@"last_maintenance_date"];
  [v5 doubleValue];
  v6 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = (a1 + 32);
  v7 = *(a1 + 32);
  v9 = *(v7 + 80);
  *(v7 + 80) = v6;

  [*(*(a1 + 32) + 80) timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [MEMORY[0x1E695DF00] now];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  if (v11 > v14)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __32__WBSHistoryServiceStore__load___block_invoke_49_cold_1(a1 + 32, v15);
    }

    v16 = [MEMORY[0x1E695DF00] now];
    v17 = *(*v8 + 10);
    *(*v8 + 10) = v16;

    [*v8 _updateLastMaintenanceDate];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __32__WBSHistoryServiceStore__load___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    if (WeakRetained)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69C8A40]);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __32__WBSHistoryServiceStore__load___block_invoke_56;
      v14[3] = &unk_1E7FB6F80;
      v14[4] = WeakRetained;
      [v4 setHandler:v14];
      v5 = objc_loadWeakRetained(WeakRetained + 14);
      if (v5)
      {
        v6 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [*(*(*(a1 + 64) + 8) + 40) timeIntervalSinceNow];
          __32__WBSHistoryServiceStore__load___block_invoke_2_cold_1(v7);
        }

        v8 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          [*(*(*(a1 + 72) + 8) + 40) timeIntervalSinceNow];
          *buf = 136446466;
          v16 = "load";
          v17 = 2048;
          v18 = -v9;
          _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "#perf - %{public}s: %f", buf, 0x16u);
        }

        v10 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [*(a1 + 32) count];
          *buf = 134217984;
          v16 = v11;
          _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Finished loading history. Total item count: <%zi>", buf, 0xCu);
        }

        [v5 historyLoader:WeakRetained didLoadItems:*(a1 + 32) stringsForUserTypeDomainExpansion:*(a1 + 40)];
        [v5 historyLoaderDidFinishLoading:WeakRetained];
      }

      else
      {
        v13 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          __32__WBSHistoryServiceStore__load___block_invoke_2_cold_2();
        }
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __32__WBSHistoryServiceStore__load___block_invoke_2_cold_3();
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __32__WBSHistoryServiceStore__load___block_invoke_56(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 72);
  *(v1 + 72) = 0;
}

- (void)waitForLoadingToComplete
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__59;
  v9 = __Block_byref_object_dispose__60;
  v10 = 0;
  databaseQueue = self->_databaseQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__WBSHistoryServiceStore_waitForLoadingToComplete__block_invoke;
  v4[3] = &unk_1E7FB8798;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(databaseQueue, v4);
  v3 = v6[5];
  if (v3)
  {
    (*(v3 + 16))();
  }

  _Block_object_dispose(&v5, 8);
}

void __50__WBSHistoryServiceStore_waitForLoadingToComplete__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1BFB13CE0](*(*(a1 + 32) + 72));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_databaseFetchWithOptions:(unint64_t)options predicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];

  if (databaseProxy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    databaseProxy2 = [(WBSHistoryServiceStore *)self databaseProxy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__WBSHistoryServiceStore__databaseFetchWithOptions_predicate_completionHandler___block_invoke;
    v15[3] = &unk_1E7FC7920;
    v17 = handlerCopy;
    v15[4] = self;
    v13 = WeakRetained;
    v16 = v13;
    [databaseProxy2 fetchWithOptions:options predicate:predicateCopy completionHandler:v15];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSHistoryErrorDomain" code:4 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __80__WBSHistoryServiceStore__databaseFetchWithOptions_predicate_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(*(a1 + 32) + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__WBSHistoryServiceStore__databaseFetchWithOptions_predicate_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7FC6910;
    v9 = v6;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = *(a1 + 48);
    dispatch_async(v8, v12);
  }
}

void __80__WBSHistoryServiceStore__databaseFetchWithOptions_predicate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  v20 = 0;
  v21 = &v20;
  v22 = 0x5812000000;
  v23 = __Block_byref_object_copy__28;
  v24 = __Block_byref_object_dispose__29;
  v25 = "";
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  v3 = [*(a1 + 32) fileDescriptor];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__WBSHistoryServiceStore__databaseFetchWithOptions_predicate_completionHandler___block_invoke_3;
  v18[3] = &unk_1E7FC77E0;
  v4 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v19 = v4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __80__WBSHistoryServiceStore__databaseFetchWithOptions_predicate_completionHandler___block_invoke_4;
  v14 = &unk_1E7FC7808;
  v15 = *(a1 + 40);
  v5 = v2;
  v16 = v5;
  v17 = &v20;
  SafariShared::ReadStreamedObjects(v3, v18, &v11, 0);
  for (i = v21[8]; i; i = *i)
  {
    v7 = [*(*(a1 + 40) + 48) visitForID:{i[2], v11, v12, v13, v14, v15}];
    v8 = i[4];
    if (i[3])
    {
      v9 = [*(*(a1 + 40) + 48) visitForID:?];
      [v7 setRedirectSource:v9];
    }

    if (v8)
    {
      v10 = [*(*(a1 + 40) + 48) visitForID:v8];
      [v7 setRedirectDestination:v10];
    }
  }

  (*(*(a1 + 56) + 16))();

  _Block_object_dispose(&v20, 8);
  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(v26);
}

void __80__WBSHistoryServiceStore__databaseFetchWithOptions_predicate_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 48) itemForID:*(a2 + 8)];
  if (v4)
  {
    v8 = v4;
    [v4 updateWithStreamedItem:a2];
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + 48)];
    v8 = [v5 historyStore:v6 itemForURLString:v7 createIfNeeded:1];

    if (v8)
    {
      [v8 updateWithStreamedItem:a2];
      [*(*(a1 + 32) + 48) setItem:v8 forID:*(a2 + 8)];
    }

    else
    {
      v8 = 0;
    }
  }
}

void __80__WBSHistoryServiceStore__databaseFetchWithOptions_predicate_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [*(*(a1 + 32) + 48) visitForID:*(a2 + 8)];
  if (!v4)
  {
    v6 = [*(*(a1 + 32) + 48) itemForID:*(a2 + 16)];
    if (v6)
    {
      v5 = [[WBSHistoryVisit alloc] initWithHistoryItem:v6 streamedVisit:a2];
      if (v5)
      {
        [*(a1 + 40) addObject:v5];
        v7 = *(*(a1 + 48) + 8);
        *v14 = *(a2 + 8);
        *&v14[8] = *(a2 + 40);
        std::__hash_table<std::__hash_value_type<long long,VisitRedirectInformation>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,VisitRedirectInformation>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,VisitRedirectInformation>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,VisitRedirectInformation>>>::__emplace_unique_key_args<long long,std::pair<long long,VisitRedirectInformation>>((v7 + 48), v14);
        [*(*(a1 + 32) + 48) setVisit:v5 forID:*(a2 + 8)];
LABEL_12:

        goto LABEL_13;
      }

      v13 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        v10 = "Failed to create WBSHistoryVisit";
        v11 = v13;
        v12 = 2;
        goto LABEL_10;
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a2 + 16);
        *v14 = 134217984;
        *&v14[4] = v9;
        v10 = "Failed to retrieve item %lli";
        v11 = v8;
        v12 = 12;
LABEL_10:
        _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, v10, v14, v12);
      }
    }

    v5 = 0;
    goto LABEL_12;
  }

  [*(a1 + 40) addObject:v4];
  v5 = v4;
LABEL_13:
}

- (id)_fetchVisitsOnDatabaseQueue:(unint64_t)queue predicate:(id)predicate error:(id *)error
{
  queueCopy = queue;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__24;
  v27 = __Block_byref_object_dispose__24;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__24;
  v21 = __Block_byref_object_dispose__24;
  v22 = 0;
  predicateCopy = predicate;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__WBSHistoryServiceStore__fetchVisitsOnDatabaseQueue_predicate_error___block_invoke;
  v13[3] = &unk_1E7FC7948;
  v15 = &v17;
  v16 = &v23;
  v14 = v9;
  v10 = v9;
  [(WBSHistoryServiceStore *)self _databaseFetchWithOptions:queueCopy & 0xB predicate:predicateCopy completionHandler:v13];

  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v18[5];
  }

  v11 = v24[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __70__WBSHistoryServiceStore__fetchVisitsOnDatabaseQueue_predicate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_group_leave(*(a1 + 32));
}

- (void)getVisitsCreatedAfterDate:(id)date beforeDate:(id)beforeDate completionHandler:(id)handler
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  handlerCopy = handler;
  v11 = [[WBSHistoryVisitsInTimeRangePredicate alloc] initWithStartDate:dateCopy endDate:beforeDateCopy urlString:0 urlHash:0 urlSalt:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__WBSHistoryServiceStore_getVisitsCreatedAfterDate_beforeDate_completionHandler___block_invoke;
  v13[3] = &unk_1E7FC7970;
  v12 = handlerCopy;
  v14 = v12;
  [(WBSHistoryServiceStore *)self _databaseFetchWithOptions:2 predicate:v11 completionHandler:v13];
}

void __81__WBSHistoryServiceStore_getVisitsCreatedAfterDate_beforeDate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __81__WBSHistoryServiceStore_getVisitsCreatedAfterDate_beforeDate_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)checkIfLocalVisitExistsInAnyOfItems:(id)items withCompletion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v8 = [itemsCopy safari_arrayByMappingObjectsUsingBlock:&__block_literal_global_67];
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WBSHistoryServiceStore_checkIfLocalVisitExistsInAnyOfItems_withCompletion___block_invoke_2;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v13 = v8;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  dispatch_async(databaseQueue, block);
}

id __77__WBSHistoryServiceStore_checkIfLocalVisitExistsInAnyOfItems_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "databaseID")}];

  return v3;
}

void __77__WBSHistoryServiceStore_checkIfLocalVisitExistsInAnyOfItems_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProxy];
  [v2 checkIfLocalVisitExistsForDatabaseIDs:*(a1 + 40) withCompletion:*(a1 + 48)];
}

- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)date beforeDate:(id)beforeDate onlyFromThisDevice:(BOOL)device completionHandler:(id)handler
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __120__WBSHistoryServiceStore_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke;
  v16[3] = &unk_1E7FC79B8;
  v18 = beforeDateCopy;
  v19 = handlerCopy;
  v17 = dateCopy;
  deviceCopy = device;
  v13 = beforeDateCopy;
  v14 = dateCopy;
  v15 = handlerCopy;
  [(WBSHistoryServiceStore *)self _waitForDatabase:v16];
}

void __120__WBSHistoryServiceStore_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __120__WBSHistoryServiceStore_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7FC7970;
    v8 = *(a1 + 48);
    [v3 getHighLevelHTTPFamilyDomainsVisitedAfterDate:v4 beforeDate:v5 onlyFromThisDevice:v6 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __120__WBSHistoryServiceStore_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __120__WBSHistoryServiceStore_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removePastHistoryVisitsForItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = itemCopy;
  v9 = handlerCopy;
  v10 = itemCopy;
  dispatch_async(databaseQueue, block);
}

void __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke(id *a1)
{
  v2 = [a1[4] urlString];
  if (v2)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = [[WBSHistoryServiceURLRepresentation alloc] initWithURLString:v2];
    v5 = [v3 setWithObject:v4];

    v6 = [MEMORY[0x1E695DF00] distantPast];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = MEMORY[0x1E695DF00];
    v9 = [a1[4] lastVisitOnSynchronizationQueue];
    [v9 visitTime];
    v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];

    v11 = [v7 compare:v10];
    v12 = [a1[5] databaseProxy];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_68;
    v20[3] = &unk_1E7FC79E0;
    v13 = v2;
    v21 = v13;
    v22 = a1[6];
    [v12 clearHistoryItems:v5 afterDate:v6 beforeDate:v7 tombstoneMode:1 completionHandler:v20];

    if (v11 == -1)
    {
      v14 = [a1[5] databaseProxy];
      v15 = [MEMORY[0x1E695DF00] distantFuture];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_70;
      v18[3] = &unk_1E7FB78D8;
      v19 = v13;
      [v14 clearHistoryItems:v5 afterDate:v6 beforeDate:v15 tombstoneMode:0 completionHandler:v18];
    }
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_cold_1();
    }

    v17 = a1[6];
    if (v17)
    {
      v17[2]();
    }
  }
}

void __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_68_cold_1();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_70(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_70_cold_1();
    }
  }
}

- (void)visitsWereAdded:(id)added
{
  addedCopy = added;
  v5 = [addedCopy copy];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__WBSHistoryServiceStore_visitsWereAdded___block_invoke;
  v7[3] = &unk_1E7FC7A08;
  v6 = v5;
  v8 = v6;
  [(WBSHistoryServiceStore *)self _waitForDatabase:v7];
}

void __42__WBSHistoryServiceStore_visitsWereAdded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBSHistoryItemSynchronizationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__WBSHistoryServiceStore_visitsWereAdded___block_invoke_2;
  v6[3] = &unk_1E7FB7F10;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __42__WBSHistoryServiceStore_visitsWereAdded___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v1)
  {
    v16 = *v20;
    do
    {
      v18 = v1;
      for (i = 0; i != v18; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v19 + 1) + 8 * i);
        v4 = [v3 item];
        v5 = [WBSHistoryVisitIdentifier alloc];
        v6 = [v4 urlString];
        [v3 visitTime];
        v7 = [(WBSHistoryVisitIdentifier *)v5 initWithURLString:v6 visitTime:?];

        v8 = [v3 redirectSource];
        if (v8)
        {
          v9 = [WBSHistoryVisitIdentifier alloc];
          v10 = [v8 item];
          v11 = [v10 urlString];
          [v8 visitTime];
          v12 = [(WBSHistoryVisitIdentifier *)v9 initWithURLString:v11 visitTime:?];
        }

        else
        {
          v12 = 0;
        }

        v13 = *(a1 + 40);
        v14 = [v3 title];
        [v13 recordVisitWithIdentifier:v7 sourceVisit:v12 title:v14 wasHTTPNonGet:objc_msgSend(v3 loadSuccessful:"wasHTTPNonGet") origin:objc_msgSend(v3 attributes:"loadWasSuccessful") statusCode:objc_msgSend(v3 completionHandler:{"origin"), objc_msgSend(v3, "attributes"), objc_msgSend(v4, "statusCode"), &__block_literal_global_73}];
      }

      v1 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v1);
  }
}

void __42__WBSHistoryServiceStore_visitsWereAdded___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __42__WBSHistoryServiceStore_visitsWereAdded___block_invoke_3_cold_1();
    }
  }
}

- (void)visitTitleWasUpdated:(id)updated
{
  v15[1] = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v15[0] = updatedCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(WBSHistoryServiceStore *)self visitsWereModified:v5];

  v6 = [WBSHistoryVisitIdentifier alloc];
  item = [updatedCopy item];
  urlString = [item urlString];
  [updatedCopy visitTime];
  v9 = [(WBSHistoryVisitIdentifier *)v6 initWithURLString:urlString visitTime:?];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__WBSHistoryServiceStore_visitTitleWasUpdated___block_invoke;
  v12[3] = &unk_1E7FC7A30;
  v13 = v9;
  v10 = updatedCopy;
  v14 = v10;
  v11 = v9;
  [(WBSHistoryServiceStore *)self _waitForDatabase:v12];
}

void __47__WBSHistoryServiceStore_visitTitleWasUpdated___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) title];
  [v5 updateVisitWithIdentifier:v3 title:v4 completionHandler:&__block_literal_global_75];
}

void __47__WBSHistoryServiceStore_visitTitleWasUpdated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __47__WBSHistoryServiceStore_visitTitleWasUpdated___block_invoke_2_cold_1();
    }
  }
}

- (void)visitAttributeWasUpdated:(id)updated removeAttributes:(unint64_t)attributes addAttributes:(unint64_t)addAttributes
{
  updatedCopy = updated;
  v9 = [WBSHistoryVisitIdentifier alloc];
  item = [updatedCopy item];
  urlString = [item urlString];
  [updatedCopy visitTime];
  v12 = [(WBSHistoryVisitIdentifier *)v9 initWithURLString:urlString visitTime:?];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__WBSHistoryServiceStore_visitAttributeWasUpdated_removeAttributes_addAttributes___block_invoke;
  v14[3] = &unk_1E7FC7A58;
  v15 = v12;
  attributesCopy = attributes;
  addAttributesCopy = addAttributes;
  v13 = v12;
  [(WBSHistoryServiceStore *)self _waitForDatabase:v14];
}

void __82__WBSHistoryServiceStore_visitAttributeWasUpdated_removeAttributes_addAttributes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __82__WBSHistoryServiceStore_visitAttributeWasUpdated_removeAttributes_addAttributes___block_invoke_2_cold_1();
    }
  }
}

id **__60__WBSHistoryServiceStore_clearHistoryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v5 = *(a1 + 48);
  v2 = [*(a1 + 32) databaseProxy];
  v3 = [MEMORY[0x1E695DF00] date];
  [v2 clearAllHistoryInsertingTombstoneUpToDate:v3 clearAllSpotlightHistoryForProfile:1 completionHandler:&__block_literal_global_79];

  [*(*(a1 + 32) + 48) clear];
  if (*(a1 + 40))
  {
    dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 40));
  }

  return std::unique_ptr<SafariShared::SuddenTerminationDisabler>::~unique_ptr[abi:sn200100](&v5);
}

void __60__WBSHistoryServiceStore_clearHistoryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __60__WBSHistoryServiceStore_clearHistoryWithCompletionHandler___block_invoke_2_cold_1();
    }
  }
}

- (void)vacuumHistoryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__WBSHistoryServiceStore_vacuumHistoryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

void __61__WBSHistoryServiceStore_vacuumHistoryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProxy];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__WBSHistoryServiceStore_vacuumHistoryWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7FB7E48;
  v4 = *(a1 + 40);
  [v2 vacuumHistoryWithCompletionHandler:v3];
}

void __61__WBSHistoryServiceStore_vacuumHistoryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __61__WBSHistoryServiceStore_vacuumHistoryWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate completionHandler:(id)handler
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__WBSHistoryServiceStore_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC76B8;
  v16 = dateCopy;
  v17 = beforeDateCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = beforeDateCopy;
  v14 = dateCopy;
  dispatch_async(databaseQueue, v15);
}

void __88__WBSHistoryServiceStore_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 40) && [v2 compare:?] == -1)
  {
    v5 = [*(a1 + 48) databaseProxy];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__WBSHistoryServiceStore_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke_80;
    v15[3] = &unk_1E7FC7A80;
    v16 = v6;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    [v5 clearHistoryVisitsAddedAfterDate:v16 beforeDate:v7 tombstoneMode:1 clearAllSpotlightHistoryForProfile:0 completionHandler:v15];

    v8 = [MEMORY[0x1E695DF00] distantFuture];
    v9 = [*(a1 + 48) databaseProxy];
    v10 = *v3;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__WBSHistoryServiceStore_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke_81;
    v12[3] = &unk_1E7FC7AA8;
    v13 = v10;
    v11 = v8;
    v14 = v11;
    [v9 clearHistoryVisitsAddedAfterDate:v13 beforeDate:v11 tombstoneMode:0 clearAllSpotlightHistoryForProfile:0 completionHandler:v12];
  }

  else
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__WBSHistoryServiceStore_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke_cold_1(v3, a1, v4);
    }

    if (*(a1 + 56))
    {
      dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 56));
    }
  }
}

void __88__WBSHistoryServiceStore_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke_80(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = [v3 safari_privacyPreservingDescription];
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      _os_log_fault_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_FAULT, "Failed to perform history maintenance between %@ - %@: %{public}@", &v8, 0x20u);
    }
  }

  if (*(a1 + 48))
  {
    dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 48));
  }
}

void __88__WBSHistoryServiceStore_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke_81(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = [v3 safari_privacyPreservingDescription];
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_ERROR, "Failed to perform history maintenance between %@ - %@: %{public}@", &v8, 0x20u);
    }
  }
}

- (void)exportHistory:(id)history completionHandler:(id)handler
{
  historyCopy = history;
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WBSHistoryServiceStore_exportHistory_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = historyCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = historyCopy;
  dispatch_async(databaseQueue, block);
}

void __58__WBSHistoryServiceStore_exportHistory_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProxy];
  [v2 exportHistory:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)_scheduleMaintenance
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained historyStoreShouldScheduleMaintenance:self])
  {
    objc_initWeak(&location, self);
    v4 = [WBSPeriodicActivityScheduler alloc];
    lastMaintenanceDate = self->_lastMaintenanceDate;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke;
    v10[3] = &unk_1E7FB8948;
    objc_copyWeak(&v11, &location);
    v6 = [(WBSPeriodicActivityScheduler *)v4 initWithInterval:lastMaintenanceDate minimumDelay:v10 lastFireDate:86400.0 block:30.0];
    maintenanceScheduler = self->_maintenanceScheduler;
    self->_maintenanceScheduler = v6;

    databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_4;
    v9[3] = &unk_1E7FC7AD0;
    v9[4] = self;
    [databaseProxy fetchEventsForListener:@"Safari" completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 32)))
  {
    operator new();
  }
}

uint64_t __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_3;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _performMaintenance:v3];
}

id *__46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(result);

    JUMPOUT(0x1BFB13480);
  }

  return result;
}

void __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_4_cold_1();
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 32) handleEvent:MEMORY[0x1E69E9820] completionHandler:{3221225472, __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_86, &unk_1E7FC7AA8, *(a1 + 32), *(*(&v11 + 1) + 8 * i), v11}];
        }

        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [*(a1 + 32) databaseProxy];
    v5 = -[WBSSetInt64 initWithInt64:]([WBSSetInt64 alloc], "initWithInt64:", [*(a1 + 40) eventID]);
    [v4 markEventsAsReceivedByListener:@"Safari" eventIDs:v5 completionHandler:&__block_literal_global_90];

    v3 = 0;
  }
}

void __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_2_88(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_2_88_cold_1();
    }
  }
}

- (void)_expireOldVisits
{
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
  +[WBSHistoryItem timeIntervalForDailyAndWeeklyVisitCountScores];
  [databaseProxy expireOldVisits:&__block_literal_global_93_0 completionHandler:v2 + v2];
}

void __42__WBSHistoryServiceStore__expireOldVisits__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __42__WBSHistoryServiceStore__expireOldVisits__block_invoke_cold_1();
    }
  }
}

- (void)_updateLastMaintenanceDate
{
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
  v3 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_lastMaintenanceDate timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  [databaseProxy setMetadataValue:v4 forKey:@"last_maintenance_date" completionHandler:&__block_literal_global_95];
}

void __52__WBSHistoryServiceStore__updateLastMaintenanceDate__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [v2 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __52__WBSHistoryServiceStore__updateLastMaintenanceDate__block_invoke_cold_1();
    }
  }
}

- (void)_performMaintenance:(id)maintenance
{
  maintenanceCopy = maintenance;
  v5 = atomic_load(&self->_state);
  if (v5 != 2)
  {
    databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
    [(WBSHistoryServiceStore *)self _ageLimitSinceReferenceDate];
    v8 = v7;
    itemCountLimit = self->_itemCountLimit;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__WBSHistoryServiceStore__performMaintenance___block_invoke;
    v10[3] = &unk_1E7FC7AF8;
    v10[4] = self;
    v11 = maintenanceCopy;
    [databaseProxy performMaintenanceWithAgeLimit:itemCountLimit itemCountLimit:v10 completionHandler:v8];
  }
}

void __46__WBSHistoryServiceStore__performMaintenance___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__WBSHistoryServiceStore__performMaintenance___block_invoke_2;
  v4[3] = &unk_1E7FB6F08;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __46__WBSHistoryServiceStore__performMaintenance___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  [*(a1 + 32) _updateLastMaintenanceDate];
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E69E96A0];

    dispatch_async(v6, v5);
  }
}

- (void)performMaintenance:(id)maintenance
{
  maintenanceCopy = maintenance;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__WBSHistoryServiceStore_performMaintenance___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = maintenanceCopy;
  v6 = maintenanceCopy;
  dispatch_async(databaseQueue, v7);
}

void __45__WBSHistoryServiceStore_performMaintenance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProxy];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 _performMaintenance:v4];
  }

  else if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E69E96A0];

    dispatch_async(v6, v5);
  }
}

- (void)closeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  atomic_store(2uLL, &self->_state);
  [(WBSPeriodicActivityScheduler *)self->_maintenanceScheduler invalidate];
  maintenanceScheduler = self->_maintenanceScheduler;
  self->_maintenanceScheduler = 0;

  if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (void)addAutocompleteTrigger:(id)trigger forItem:(id)item
{
  triggerCopy = trigger;
  itemCopy = item;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
  urlString = [itemCopy urlString];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__WBSHistoryServiceStore_addAutocompleteTrigger_forItem___block_invoke;
  v12[3] = &unk_1E7FC7AA8;
  v10 = triggerCopy;
  v13 = v10;
  v11 = itemCopy;
  v14 = v11;
  [databaseProxy addAutocompleteTrigger:v10 forURL:urlString completionHandler:v12];
}

void __57__WBSHistoryServiceStore_addAutocompleteTrigger_forItem___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __57__WBSHistoryServiceStore_addAutocompleteTrigger_forItem___block_invoke_cold_1();
    }

    v5 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) urlString];
      v8 = [v3 safari_privacyPreservingDescription];
      v9 = 138478339;
      v10 = v6;
      v11 = 2113;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_debug_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEBUG, "Failed to add autocomplete trigger %{private}@ for %{private}@: %{public}@", &v9, 0x20u);
    }
  }
}

- (void)getAutocompleteTriggersForItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if (handlerCopy)
  {
    databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
    urlString = [itemCopy urlString];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__WBSHistoryServiceStore_getAutocompleteTriggersForItem_completionHandler___block_invoke;
    v10[3] = &unk_1E7FC7B20;
    v11 = itemCopy;
    v12 = handlerCopy;
    [databaseProxy fetchAutocompleteTriggersForURLString:urlString completionHandler:v10];
  }
}

void __75__WBSHistoryServiceStore_getAutocompleteTriggersForItem_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __75__WBSHistoryServiceStore_getAutocompleteTriggersForItem_completionHandler___block_invoke_cold_1();
    }

    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [*(a1 + 32) urlString];
      objc_claimAutoreleasedReturnValue();
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __75__WBSHistoryServiceStore_getAutocompleteTriggersForItem_completionHandler___block_invoke_cold_2();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getItemCountBeforeDate:(id)date completionHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
  [databaseProxy getItemCountBeforeDate:dateCopy completionHandler:handlerCopy];
}

- (void)_fetchTags:(unint64_t)tags fromStartDate:(id)date toEndDate:(id)endDate withIdentifiers:(id)identifiers limit:(unint64_t)limit minimumItemCount:(unint64_t)count sortOrder:(int64_t)order completionHandler:(id)self0
{
  dateCopy = date;
  endDateCopy = endDate;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];

  if (databaseProxy)
  {
    v21 = [[WBSHistoryTagsPredicate alloc] initWithStartDate:dateCopy endDate:endDateCopy tagType:tags];
    [(WBSHistoryTagsPredicate *)v21 setLimit:limit];
    [(WBSHistoryTagsPredicate *)v21 setMinimumItemCount:count];
    [(WBSHistoryTagsPredicate *)v21 setSortOrder:order];
    if ([identifiersCopy count])
    {
      [(WBSHistoryTagsPredicate *)v21 setIdentifiers:identifiersCopy];
    }

    databaseProxy2 = [(WBSHistoryServiceStore *)self databaseProxy];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __128__WBSHistoryServiceStore__fetchTags_fromStartDate_toEndDate_withIdentifiers_limit_minimumItemCount_sortOrder_completionHandler___block_invoke;
    v23[3] = &unk_1E7FC7BD0;
    v24 = handlerCopy;
    [databaseProxy2 fetchWithOptions:32 predicate:v21 completionHandler:v23];
  }

  else
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSHistoryErrorDomain" code:4 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v21);
  }
}

void __128__WBSHistoryServiceStore__fetchTags_fromStartDate_toEndDate_withIdentifiers_limit_minimumItemCount_sortOrder_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [v6 fileDescriptor];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __128__WBSHistoryServiceStore__fetchTags_fromStartDate_toEndDate_withIdentifiers_limit_minimumItemCount_sortOrder_completionHandler___block_invoke_4;
    v11[3] = &unk_1E7FC7B88;
    v10 = v8;
    v12 = v10;
    SafariShared::ReadStreamedObjects(v9, &__block_literal_global_100, &__block_literal_global_102, v11, &__block_literal_global_107, 0);
    (*(*(a1 + 32) + 16))();
  }
}

void __128__WBSHistoryServiceStore__fetchTags_fromStartDate_toEndDate_withIdentifiers_limit_minimumItemCount_sortOrder_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + 40)];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + 32)];
  if (*(a2 + 16) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [[WBSHistoryTopicTag alloc] initWithTitle:v7 identifier:v4 databaseID:*(a2 + 8) modificationTimestamp:*(a2 + 24) level:*(a2 + 48)];
    [v5 addObject:v6];
  }
}

- (void)_createTagsForIdentifiers:(id)identifiers withTitles:(id)titles type:(unint64_t)type level:(int64_t)level completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  titlesCopy = titles;
  handlerCopy = handler;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__WBSHistoryServiceStore__createTagsForIdentifiers_withTitles_type_level_completionHandler___block_invoke;
  v19[3] = &unk_1E7FC7BF8;
  v16 = handlerCopy;
  v22 = v16;
  v17 = identifiersCopy;
  v20 = v17;
  v18 = titlesCopy;
  v21 = v18;
  typeCopy = type;
  levelCopy = level;
  [databaseProxy createTagsForIdentifiers:v17 withTitles:v18 type:type level:level completionHandler:v19];
}

void __92__WBSHistoryServiceStore__createTagsForIdentifiers_withTitles_type_level_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v15)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = v7;
    for (i = 0; i < [v15 count]; ++i)
    {
      v10 = [v15 objectAtIndexedSubscript:i];
      v11 = [v10 longLongValue];

      v12 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
      if (*(a1 + 56) == 1)
      {
        v14 = [[WBSHistoryTopicTag alloc] initWithTitle:v13 identifier:v12 databaseID:v11 modificationTimestamp:*(a1 + 64) level:v8];
        [v6 addObject:v14];
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)tagsWithIdentifiers:(id)identifiers type:(unint64_t)type level:(int64_t)level creatingIfNecessary:(BOOL)necessary withTitles:(id)titles completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  titlesCopy = titles;
  handlerCopy = handler;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v17 = [MEMORY[0x1E695DFD8] setWithArray:identifiersCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__WBSHistoryServiceStore_tagsWithIdentifiers_type_level_creatingIfNecessary_withTitles_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC7C48;
  v18 = identifiersCopy;
  v23 = v18;
  v19 = titlesCopy;
  v24 = v19;
  selfCopy = self;
  typeCopy = type;
  levelCopy = level;
  v20 = handlerCopy;
  v26 = v20;
  [(WBSHistoryServiceStore *)self _fetchTags:type fromStartDate:distantPast toEndDate:distantFuture withIdentifiers:v17 limit:0 minimumItemCount:0 sortOrder:0 completionHandler:v22];
}

void __106__WBSHistoryServiceStore_tagsWithIdentifiers_type_level_creatingIfNecessary_withTitles_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v3 = [*(a1 + 32) mutableCopy];
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 64) == 1)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v21 + 1) + 8 * v10) identifier];
        v12 = [v3 indexOfObject:v11];

        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v3 removeObjectAtIndex:v12];
          [v5 removeObjectAtIndex:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__WBSHistoryServiceStore_tagsWithIdentifiers_type_level_creatingIfNecessary_withTitles_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7FC7C20;
  v15 = *(a1 + 48);
  v20 = *(a1 + 56);
  v16 = v7;
  v19 = v16;
  [v15 _createTagsForIdentifiers:v3 withTitles:v5 type:v13 level:v14 completionHandler:v18];
}

- (void)assignHistoryItem:(id)item toTopicTags:(id)tags completionHandler:(id)handler
{
  itemCopy = item;
  tagsCopy = tags;
  handlerCopy = handler;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];

  if (databaseProxy)
  {
    databaseProxy2 = [(WBSHistoryServiceStore *)self databaseProxy];
    urlString = [itemCopy urlString];
    v13 = WBSSetOfIdentifiersFromTags(tagsCopy);
    [databaseProxy2 assignURLString:urlString toTopicTagsWithIDs:v13 completionHandler:handlerCopy];
  }

  else
  {
    databaseProxy2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSHistoryErrorDomain" code:4 userInfo:0];
    handlerCopy[2](handlerCopy, 0, databaseProxy2);
  }
}

- (void)_fetchHistoryItemsForTopics:(id)topics fromStartDate:(id)date toEndDate:(id)endDate completionHandler:(id)handler
{
  topicsCopy = topics;
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];

  if (databaseProxy)
  {
    v15 = [[WBSHistoryItemToTagPairsPredicate alloc] initWithStartDate:dateCopy endDate:endDateCopy];
    databaseProxy2 = [(WBSHistoryServiceStore *)self databaseProxy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__WBSHistoryServiceStore__fetchHistoryItemsForTopics_fromStartDate_toEndDate_completionHandler___block_invoke;
    v17[3] = &unk_1E7FC7920;
    v19 = handlerCopy;
    v17[4] = self;
    v18 = topicsCopy;
    [databaseProxy2 fetchWithOptions:64 predicate:v15 completionHandler:v17];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSHistoryErrorDomain" code:4 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

void __96__WBSHistoryServiceStore__fetchHistoryItemsForTopics_fromStartDate_toEndDate_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(*(a1 + 32) + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__WBSHistoryServiceStore__fetchHistoryItemsForTopics_fromStartDate_toEndDate_completionHandler___block_invoke_2;
    v11[3] = &unk_1E7FC6910;
    v12 = *(a1 + 40);
    v9 = v6;
    v10 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    v15 = *(a1 + 48);
    dispatch_async(v8, v11);
  }
}

uint64_t __96__WBSHistoryServiceStore__fetchHistoryItemsForTopics_fromStartDate_toEndDate_completionHandler___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x5812000000;
  v24 = __Block_byref_object_copy__109;
  v25 = __Block_byref_object_dispose__110;
  v26 = "";
  memset(v27, 0, sizeof(v27));
  v28 = 1065353216;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v3)
  {
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = v22;
        v16 = [v6 databaseID];
        v29 = &v16;
        v8 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(v7 + 6, &v16);
        if (!v8)
        {
          __break(1u);
        }

        objc_storeStrong(v8 + 3, v6);
      }

      v3 = [v2 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v3);
  }

  v9 = [*(a1 + 40) fileDescriptor];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__WBSHistoryServiceStore__fetchHistoryItemsForTopics_fromStartDate_toEndDate_completionHandler___block_invoke_4;
  v15[3] = &unk_1E7FC7C90;
  v15[4] = *(a1 + 48);
  v15[5] = &v21;
  SafariShared::ReadStreamedObjects(v9, &__block_literal_global_114, &__block_literal_global_117, &__block_literal_global_119, v15, 0);
  v10 = qos_class_self();
  v11 = dispatch_get_global_queue(v10, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__WBSHistoryServiceStore__fetchHistoryItemsForTopics_fromStartDate_toEndDate_completionHandler___block_invoke_5;
  v13[3] = &unk_1E7FB7B80;
  v14 = *(a1 + 56);
  dispatch_async(v11, v13);

  _Block_object_dispose(&v21, 8);
  return std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::~__hash_table(v27);
}

void __96__WBSHistoryServiceStore__fetchHistoryItemsForTopics_fromStartDate_toEndDate_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 48) itemForID:*(a2 + 8)];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = std::__hash_table<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,WBSHistoryItem * {__strong}>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,WBSHistoryItem * {__strong}>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((*(*(a1 + 40) + 8) + 48), (a2 + 16));
  if (v5)
  {
    [v5[3] tagHistoryItem:v4];
LABEL_4:

    return;
  }

  __break(1u);
}

- (void)fetchTopicsFromStartDate:(id)date toEndDate:(id)endDate limit:(unint64_t)limit minimumItemCount:(unint64_t)count sortOrder:(int64_t)order completionHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112__WBSHistoryServiceStore_fetchTopicsFromStartDate_toEndDate_limit_minimumItemCount_sortOrder_completionHandler___block_invoke;
  v20[3] = &unk_1E7FC7CE0;
  v20[4] = self;
  v21 = dateCopy;
  v22 = endDateCopy;
  v23 = handlerCopy;
  v17 = endDateCopy;
  v18 = dateCopy;
  v19 = handlerCopy;
  [(WBSHistoryServiceStore *)self _fetchTags:1 fromStartDate:v18 toEndDate:v17 withIdentifiers:0 limit:limit minimumItemCount:count sortOrder:order completionHandler:v20];
}

void __112__WBSHistoryServiceStore_fetchTopicsFromStartDate_toEndDate_limit_minimumItemCount_sortOrder_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __112__WBSHistoryServiceStore_fetchTopicsFromStartDate_toEndDate_limit_minimumItemCount_sortOrder_completionHandler___block_invoke_2;
    v10[3] = &unk_1E7FC7CB8;
    v9 = *(a1 + 48);
    v12 = *(a1 + 56);
    v11 = v5;
    [v7 _fetchHistoryItemsForTopics:v11 fromStartDate:v8 toEndDate:v9 completionHandler:v10];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __112__WBSHistoryServiceStore_fetchTopicsFromStartDate_toEndDate_limit_minimumItemCount_sortOrder_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    v5 = 0;
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v5);
}

- (void)setTitle:(id)title ofTag:(id)tag completionHandler:(id)handler
{
  titleCopy = title;
  tagCopy = tag;
  handlerCopy = handler;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];

  if (databaseProxy)
  {
    databaseProxy2 = [(WBSHistoryServiceStore *)self databaseProxy];
    [databaseProxy2 setTitle:titleCopy ofTagWithID:objc_msgSend(tagCopy completionHandler:{"databaseID"), handlerCopy}];
  }

  else
  {
    databaseProxy2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSHistoryErrorDomain" code:4 userInfo:0];
    handlerCopy[2](handlerCopy, 0, databaseProxy2);
  }
}

- (BOOL)isUsingInMemoryDatabase
{
  databaseURL = self->_databaseURL;
  v3 = WBSHistoryInMemoryDatabaseURL();
  LOBYTE(databaseURL) = [(NSURL *)databaseURL isEqual:v3];

  return databaseURL;
}

- (void)_setMetadataValue:(id)value forKey:(id)key group:(id)group
{
  valueCopy = value;
  keyCopy = key;
  groupCopy = group;
  dispatch_group_enter(groupCopy);
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__WBSHistoryServiceStore__setMetadataValue_forKey_group___block_invoke;
  v15[3] = &unk_1E7FC7D08;
  v12 = keyCopy;
  v16 = v12;
  v13 = valueCopy;
  v17 = v13;
  v14 = groupCopy;
  v18 = v14;
  [databaseProxy setMetadataValue:v13 forKey:v12 completionHandler:v15];
}

void __57__WBSHistoryServiceStore__setMetadataValue_forKey_group___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = [v3 safari_privacyPreservingDescription];
      v8 = 138543874;
      v9 = v6;
      v10 = 2112;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_ERROR, "failed to update metadata %{public}@ to %@: %{public}@", &v8, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (int64_t)_generateTemporaryDatabaseID
{
  nextTemporaryDatabaseID = self->_nextTemporaryDatabaseID;
  self->_nextTemporaryDatabaseID = nextTemporaryDatabaseID + 1;
  return nextTemporaryDatabaseID;
}

- (BOOL)_ensureItemHasID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ![dCopy databaseID])
  {
    [v5 setDatabaseID:{-[WBSHistoryServiceStore _generateTemporaryDatabaseID](self, "_generateTemporaryDatabaseID")}];
    -[WBSHistoryObjectCache setItem:forID:](self->_cache, "setItem:forID:", v5, [v5 databaseID]);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_ensureVisitHasID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ![dCopy databaseID])
  {
    [v5 setDatabaseID:{-[WBSHistoryServiceStore _generateTemporaryDatabaseID](self, "_generateTemporaryDatabaseID")}];
    -[WBSHistoryObjectCache setVisit:forID:](self->_cache, "setVisit:forID:", v5, [v5 databaseID]);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)reportPermanentIDsForItems:(id)items completionHandler:(id)handler
{
  itemsCopy = items;
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WBSHistoryServiceStore_reportPermanentIDsForItems_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = itemsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = itemsCopy;
  dispatch_async(databaseQueue, block);
}

uint64_t __71__WBSHistoryServiceStore_reportPermanentIDsForItems_completionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 48) changeItemIDs:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)reportPermanentIDsForVisits:(id)visits completionHandler:(id)handler
{
  visitsCopy = visits;
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WBSHistoryServiceStore_reportPermanentIDsForVisits_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = visitsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = visitsCopy;
  dispatch_async(databaseQueue, block);
}

uint64_t __72__WBSHistoryServiceStore_reportPermanentIDsForVisits_completionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 48) changeVisitIDs:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (void)reportSevereError:(id)error completionHandler:(id)handler
{
  errorCopy = error;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _databaseURLs = [(WBSHistoryServiceStore *)self _databaseURLs];
  [WeakRetained historyStoreDidFailDatabaseIntegrityCheck:self error:errorCopy databaseURLs:_databaseURLs];

  handlerCopy[2](handlerCopy);
}

- (void)handleEvent:(id)event completionHandler:(id)handler
{
  v53 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  group = dispatch_group_create();
  v7 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [eventCopy eventType];
    objc_claimAutoreleasedReturnValue();
    [eventCopy time];
    objc_claimAutoreleasedReturnValue();
    [WBSHistoryServiceStore handleEvent:completionHandler:];
  }

  value = [eventCopy value];
  v32 = [value safari_dictionaryForKey:@"disposedURLs"];

  if ([v32 count])
  {
    databaseQueue = self->_databaseQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke;
    block[3] = &unk_1E7FB7DD0;
    v50 = v32;
    selfCopy = self;
    v52 = group;
    dispatch_group_async(v52, databaseQueue, block);
  }

  value2 = [eventCopy value];
  v31 = [value2 safari_arrayForKey:@"disposedHostnames"];

  if ([v31 count])
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_3;
    v46[3] = &unk_1E7FB7F10;
    v47 = v31;
    selfCopy2 = self;
    dispatch_group_async(group, MEMORY[0x1E69E96A0], v46);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  value3 = [eventCopy value];
  v30 = [value3 safari_arrayForKey:@"disposedHighLevelDomains"];

  if ([v30 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_126;
    v42[3] = &unk_1E7FB7DD0;
    v43 = v30;
    v44 = WeakRetained;
    selfCopy3 = self;
    dispatch_group_async(group, MEMORY[0x1E69E96A0], v42);
  }

  value4 = [eventCopy value];
  v14 = [value4 safari_arrayForKey:@"disposedVisits"];

  value5 = [eventCopy value];
  v16 = [value5 safari_dictionaryForKey:@"updateLatestVisits"];

  if ([v14 count] || objc_msgSend(v16, "count"))
  {
    v17 = self->_databaseQueue;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_127;
    v36[3] = &unk_1E7FC7D58;
    v37 = v14;
    v38 = v16;
    selfCopy4 = self;
    v40 = eventCopy;
    v41 = WeakRetained;
    dispatch_group_async(group, v17, v36);
  }

  eventType = [eventCopy eventType];
  v19 = [eventType isEqualToString:@"clear"];

  if (v19)
  {
    value6 = [eventCopy value];
    v21 = [value6 safari_dateForKey:@"startDate"];

    value7 = [eventCopy value];
    v23 = [value7 safari_dateForKey:@"endDate"];

    mEMORY[0x1E6998640] = [MEMORY[0x1E6998640] sharedInstance];
    v25 = mEMORY[0x1E6998640];
    if (v21 && v23)
    {
      [mEMORY[0x1E6998640] clearCompletionsFromDate:v21 toDate:v23];
    }

    else
    {
      if (!v23)
      {
        [mEMORY[0x1E6998640] clearAllCompletions];
        [WeakRetained historyStoreWasCleared:self];
        goto LABEL_21;
      }

      distantPast = [MEMORY[0x1E695DF00] distantPast];
      [v25 clearCompletionsFromDate:distantPast toDate:v23];

      if (!v21)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    [WeakRetained historyStoreWasCleared:self afterDate:v21 beforeDate:v23];
    goto LABEL_21;
  }

LABEL_22:
  v27 = dispatch_get_global_queue(9, 0);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_130;
  v34[3] = &unk_1E7FB7B80;
  v35 = handlerCopy;
  v28 = handlerCopy;
  dispatch_group_notify(group, v27, v34);
}

void __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_cold_1(v16, [v2 count]);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_121;
  v14[3] = &unk_1E7FC7D30;
  v4 = *(a1 + 32);
  v14[4] = *(a1 + 40);
  v5 = v2;
  v15 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v14];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 112));
  LOBYTE(v4) = WeakRetained == 0;

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[WBSHistoryDeletionPlan alloc] initWithSQLiteStore:*(a1 + 40) discoveredItemsToDelete:v5];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_2;
  block[3] = &unk_1E7FB7DD0;
  v8 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v9 = v7;
  v10 = v5;
  dispatch_group_async(v8, MEMORY[0x1E69E96A0], block);
}

void __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_121(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 48) itemForID:{objc_msgSend(v5, "longLongValue")}];
  v7 = *(a1 + 40);
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
    [*(*(a1 + 32) + 48) removeItemWithID:{objc_msgSend(v5, "longLongValue")}];
  }

  else
  {
    v8 = [objc_alloc(*(*(a1 + 32) + 8)) initWithURLString:v9];
    [v7 addObject:v8];
  }
}

void __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) allObjects];
    [WeakRetained historyStore:v2 didRemoveItems:v3];

    if (*(a1 + 48))
    {
      [WeakRetained historyStore:*(a1 + 32) didPrepareToDeleteWithDeletionPlan:?];
    }
  }
}

void __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_3(uint64_t a1)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_3_cold_1(v4, [*(a1 + 32) count]);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 112));
  [WeakRetained historyStore:*(a1 + 40) didRemoveHostnames:*(a1 + 32)];
}

uint64_t __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_126(uint64_t a1)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_126_cold_1(v4, [*(a1 + 32) count]);
  }

  return [*(a1 + 40) historyStore:*(a1 + 48) didRemoveHighLevelDomains:*(a1 + 32)];
}

void __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_127(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_127_cold_1(v85, [*(a1 + 32) count]);
  }

  v3 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __56__WBSHistoryServiceStore_handleEvent_completionHandler___block_invoke_127_cold_2(v84, [*(a1 + 40) count]);
  }

  v59 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v57 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v5)
  {
    v6 = *v77;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v77 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(a1 + 48) + 48) visitForID:{objc_msgSend(*(*(&v76 + 1) + 8 * i), "longLongValue")}];
        if (v8)
        {
          [v59 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v5);
  }

  v9 = [*(a1 + 56) value];
  v10 = [v9 safari_dictionaryForKey:@"updateItems"];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v11)
  {
    v12 = *v73;
    while (2)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v73 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v72 + 1) + 8 * j);
        v15 = [*(*(a1 + 48) + 48) itemForID:{objc_msgSend(v14, "longLongValue")}];
        if (!v15)
        {
          v16 = [obj objectForKeyedSubscript:v14];
          v17 = *(a1 + 64);
          v18 = *(a1 + 48);
          v56 = v16;
          v19 = [v16 url];
          v15 = [v17 historyStore:v18 itemForURLString:v19 createIfNeeded:1];

          if (!v15)
          {
            v58 = obj;
            goto LABEL_68;
          }

          [v15 updateWithServiceItem:v56];
          [*(*(a1 + 48) + 48) setItem:v15 forID:{objc_msgSend(v14, "longLongValue")}];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v20 = [*(a1 + 56) value];
  v54 = [v20 safari_dictionaryForKey:@"updateVisits"];

  v56 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v54, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 1065353216;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v58 = v54;
  v21 = [v58 countByEnumeratingWithState:&v65 objects:v81 count:16];
  if (v21)
  {
    v22 = *v66;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v66 != v22)
        {
          objc_enumerationMutation(v58);
        }

        v24 = *(*(&v65 + 1) + 8 * k);
        v25 = [*(*(a1 + 48) + 48) visitForID:{objc_msgSend(v24, "longLongValue", v54)}];
        if (!v25)
        {
          v26 = [v58 objectForKeyedSubscript:v24];
          v27 = [*(*(a1 + 48) + 48) itemForID:{objc_msgSend(v26, "itemID")}];
          if (v27)
          {
            [v26 visitTime];
            v28 = [v27 visitForTimeOnSynchronizationQueue:?];
            if (v28)
            {
              v25 = v28;
              [v28 setDatabaseID:{objc_msgSend(v26, "databaseID")}];
            }

            else
            {
              v29 = [[WBSHistoryVisit alloc] initWithHistoryItem:v27 serviceVisit:v26];
              [v56 addObject:v29];
              v30 = [v24 longLongValue];
              v31 = [v26 redirectSource];
              v32 = [v26 redirectDestination];
              v64[0] = v30;
              v64[1] = v31;
              v64[2] = v32;
              std::__hash_table<std::__hash_value_type<long long,VisitRedirectInformation>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,VisitRedirectInformation>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,VisitRedirectInformation>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,VisitRedirectInformation>>>::__emplace_unique_key_args<long long,std::pair<long long,VisitRedirectInformation>>(&v69, v64);
              v25 = v29;
            }

            [*(*(a1 + 48) + 48) setVisit:v25 forID:{objc_msgSend(v24, "longLongValue")}];
          }

          else
          {
            v25 = 0;
          }
        }
      }

      v21 = [v58 countByEnumeratingWithState:&v65 objects:v81 count:16];
    }

    while (v21);
  }

  for (m = v70; m; m = *m)
  {
    v34 = [*(*(a1 + 48) + 48) visitForID:{m[2], v54}];
    v35 = m[4];
    if (m[3])
    {
      v36 = [*(*(a1 + 48) + 48) visitForID:?];
      [v34 setRedirectSource:v36];
    }

    if (v35)
    {
      v37 = [*(*(a1 + 48) + 48) visitForID:v35];
      [v34 setRedirectDestination:v37];
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v38 = *(a1 + 40);
  v39 = [v38 countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (v39)
  {
    v40 = *v61;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(v38);
        }

        v42 = *(*(&v60 + 1) + 8 * n);
        v43 = [*(a1 + 40) safari_numberForKey:{v42, v54}];
        if (v43)
        {
          v44 = [*(*(a1 + 48) + 48) itemForID:{objc_msgSend(v42, "longLongValue")}];
          v45 = [*(*(a1 + 48) + 48) visitForID:{objc_msgSend(v43, "longLongValue")}];
          if (v45)
          {
            v46 = v44 == 0;
          }

          else
          {
            v46 = 1;
          }

          if (!v46)
          {
            [v57 setObject:v45 forKey:v44];
          }
        }
      }

      v39 = [v38 countByEnumeratingWithState:&v60 objects:v80 count:16];
    }

    while (v39);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 112));
  if (WeakRetained)
  {
    v48 = v56;
    if ([v59 count])
    {
      v49 = *(a1 + 48);
      v50 = [v59 allObjects];
      [WeakRetained historyStore:v49 didRemoveVisits:v50];

      v51 = [[WBSHistoryDeletionPlan alloc] initWithSQLiteStore:*(a1 + 48) triggeringVisits:v59 updatedLastVisitsByItem:v57];
      if (v51)
      {
        [WeakRetained historyStore:*(a1 + 48) didPrepareToDeleteWithDeletionPlan:v51];
      }

      v48 = v56;
    }

    if ([v48 count])
    {
      v52 = *(a1 + 48);
      v53 = [v56 allObjects];
      [WeakRetained historyStore:v52 didAddVisits:v53];
    }
  }

  std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::~__hash_table(&v69);
LABEL_68:
}

- (void)_waitForDatabase:(id)database
{
  databaseCopy = database;
  databaseProxy = [(WBSHistoryServiceStore *)self databaseProxy];
  if (databaseProxy)
  {
    databaseCopy[2](databaseCopy, databaseProxy);
  }

  else
  {
    databaseQueue = self->_databaseQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__WBSHistoryServiceStore__waitForDatabase___block_invoke;
    v7[3] = &unk_1E7FB6BC0;
    v7[4] = self;
    v8 = databaseCopy;
    dispatch_async(databaseQueue, v7);
  }
}

void __43__WBSHistoryServiceStore__waitForDatabase___block_invoke(uint64_t a1)
{
  v2 = qos_class_self();
  v3 = dispatch_get_global_queue(v2, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__WBSHistoryServiceStore__waitForDatabase___block_invoke_2;
  v5[3] = &unk_1E7FB6BC0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

void __43__WBSHistoryServiceStore__waitForDatabase___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) databaseProxy];
  (*(v1 + 16))(v1);
}

- (void)searchForUserTypedString:(id)string options:(unint64_t)options currentTime:(double)time enumerationBlock:(id)block completionHandler:(id)handler
{
  stringCopy = string;
  blockCopy = block;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke;
  v18[3] = &unk_1E7FC7DF8;
  v19 = stringCopy;
  v20 = handlerCopy;
  timeCopy = time;
  v21 = blockCopy;
  optionsCopy = options;
  v15 = blockCopy;
  v16 = stringCopy;
  v17 = handlerCopy;
  [(WBSHistoryServiceStore *)self _waitForDatabase:v18];
}

void __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v29 = 0;
    v30 = 0;
    v4 = SafariShared::HistoryObjectStreamWriter::createPipeHandles(&v30, &v29);
    v5 = v30;
    v6 = v29;
    if (v4)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x3032000000;
      v27[3] = __Block_byref_object_copy__24;
      v27[4] = __Block_byref_object_dispose__24;
      v28 = 0;
      v9 = dispatch_group_create();
      dispatch_group_enter(v9);
      v10 = *(a1 + 32);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_2;
      v24[3] = &unk_1E7FC7D80;
      v26 = v27;
      v13 = v9;
      v25 = v13;
      [v3 searchForUserTypedString:v10 options:v11 currentTime:v6 writeHandle:v24 completionHandler:v12];
      [v6 closeFile];
      v14 = qos_class_self();
      v15 = dispatch_get_global_queue(v14, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_3;
      block[3] = &unk_1E7FB6F08;
      v22 = v5;
      v23 = *(a1 + 48);
      dispatch_group_async(v13, v15, block);

      v16 = qos_class_self();
      v17 = dispatch_get_global_queue(v16, 0);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_6;
      v18[3] = &unk_1E7FC4B78;
      v19 = *(a1 + 40);
      v20 = v27;
      dispatch_group_notify(v13, v17, v18);

      _Block_object_dispose(v27, 8);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

void __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [*(a1 + 32) fileDescriptor];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_4;
  v7[3] = &unk_1E7FC7DA8;
  v9 = *(a1 + 40);
  v8 = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_5;
  v5[3] = &unk_1E7FC7DD0;
  v4 = v8;
  v6 = v4;
  SafariShared::ReadStreamedMatches(v3, v7, v5);
  [*(a1 + 32) closeFile];
}

uint64_t __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = [WBSHistoryServiceURLCompletionMatchData alloc];
  v6 = [*(a1 + 32) copy];
  v7 = [(WBSHistoryServiceURLCompletionMatchData *)v5 initWithStreamData:a2 entries:v6];
  (*(v4 + 16))(v4, v7);

  v8 = *(a1 + 32);

  return [v8 removeAllObjects];
}

void __106__WBSHistoryServiceStore_searchForUserTypedString_options_currentTime_enumerationBlock_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[WBSHistoryServiceURLCompletionMatchEntry alloc] initWithStreamData:a2];
  [v2 addObject:?];
}

- (void)computeFrequentlyVisitedSites:(unint64_t)sites minimalVisitCountScore:(unint64_t)score blockList:(id)list allowList:(id)allowList options:(unint64_t)options currentTime:(double)time completionHandler:(id)handler
{
  listCopy = list;
  allowListCopy = allowList;
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __137__WBSHistoryServiceStore_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC7E20;
  v25 = handlerCopy;
  sitesCopy = sites;
  v23 = listCopy;
  v24 = allowListCopy;
  scoreCopy = score;
  optionsCopy = options;
  timeCopy = time;
  v19 = allowListCopy;
  v20 = listCopy;
  v21 = handlerCopy;
  [(WBSHistoryServiceStore *)self _waitForDatabase:v22];
}

void __137__WBSHistoryServiceStore_computeFrequentlyVisitedSites_minimalVisitCountScore_blockList_allowList_options_currentTime_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [v3 computeFrequentlyVisitedSites:*(a1 + 56) minimalVisitCountScore:*(a1 + 64) blockList:*(a1 + 32) allowList:*(a1 + 40) options:*(a1 + 72) currentTime:*(a1 + 48) completionHandler:*(a1 + 80)];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)connectionProxyConnectionWasInterrupted:(id)interrupted
{
  v3 = atomic_load(&self->_state);
  if (v3 != 2)
  {
    dispatch_suspend(self->_databaseQueue);
    _connectOptions = [(WBSHistoryServiceStore *)self _connectOptions];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__WBSHistoryServiceStore_connectionProxyConnectionWasInterrupted___block_invoke;
    v6[3] = &unk_1E7FC7E48;
    v6[4] = self;
    [(WBSHistoryServiceStore *)self _connectWithOptions:_connectOptions completionHandler:v6];
  }
}

void __66__WBSHistoryServiceStore_connectionProxyConnectionWasInterrupted___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (v10)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __66__WBSHistoryServiceStore_connectionProxyConnectionWasInterrupted___block_invoke_cold_1();
    }
  }

  else
  {
    *(*(a1 + 32) + 56) = a3;
    *(*(a1 + 32) + 64) = a4;
    [*(a1 + 32) setDatabaseProxy:v9];
  }

  dispatch_resume(*(*(a1 + 32) + 40));
}

- (void)initializeCloudHistoryWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__WBSHistoryServiceStore_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke;
  v10[3] = &unk_1E7FC7E70;
  v11 = configurationCopy;
  v12 = handlerCopy;
  v10[4] = self;
  v8 = configurationCopy;
  v9 = handlerCopy;
  [(WBSHistoryServiceStore *)self _waitForDatabase:v10];
}

void __84__WBSHistoryServiceStore_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(a1[4] + 32) initializeCloudHistoryWithConfiguration:a1[5] completionHandler:a1[6]];
  }

  else
  {
    v3 = a1[6];
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    (*(v3 + 16))(v3, 0, v4);
  }
}

- (void)releaseCloudHistory:(id)history
{
  historyCopy = history;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__WBSHistoryServiceStore_releaseCloudHistory___block_invoke;
  v6[3] = &unk_1E7FC7E98;
  v6[4] = self;
  v7 = historyCopy;
  v5 = historyCopy;
  [(WBSHistoryServiceStore *)self _waitForDatabase:v6];
}

void __46__WBSHistoryServiceStore_releaseCloudHistory___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(*(a1 + 32) + 32) releaseCloudHistory:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    (*(v3 + 16))(v3, v4);
  }
}

- (void)savePendingChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__WBSHistoryServiceStore_savePendingChangesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

void __66__WBSHistoryServiceStore_savePendingChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseProxy];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__WBSHistoryServiceStore_savePendingChangesWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7FB7B80;
  v4 = *(a1 + 40);
  [v2 flushWithCompletionHandler:v3];
}

- (WBSHistoryStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __64__WBSHistoryServiceStore__connectWithOptions_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to open History database because corruption was detected: %{public}@", v5);
}

void __64__WBSHistoryServiceStore__connectWithOptions_completionHandler___block_invoke_18_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to reset History database. It is still corrupted: %{public}@", v5);
}

void __52__WBSHistoryServiceStore_loadWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to connect to history database: %{public}@", v5);
}

- (void)_load:(double)a1 .cold.1(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "load_fetch_metadata_for_keys", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

- (void)_load:(double)a1 .cold.2(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "load_load_on_database_queue", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

void __32__WBSHistoryServiceStore__load___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to load items and visits from history database: %{public}@", v5);
}

void __32__WBSHistoryServiceStore__load___block_invoke_cold_2(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "load_fetch", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

void __32__WBSHistoryServiceStore__load___block_invoke_40_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to load domain expansions from history database: %{public}@", v5);
}

void __32__WBSHistoryServiceStore__load___block_invoke_40_cold_2(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "load_fetch_domain_expansions", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

void __32__WBSHistoryServiceStore__load___block_invoke_46_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to fetch database's URL: %{public}@", v5);
}

void __32__WBSHistoryServiceStore__load___block_invoke_49_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 80);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Last maintenance date is invalid. Future date was stored in metadata: %@. Updating last maintenance date to right now", &v3, 0xCu);
}

void __32__WBSHistoryServiceStore__load___block_invoke_2_cold_1(double a1)
{
  v1 = OUTLINED_FUNCTION_17(a1);
  *v2 = 136446466;
  OUTLINED_FUNCTION_3(v2, "load_load_completion_block", v1);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v3, v4, "#perf - %{public}s: %f", v5);
}

void __81__WBSHistoryServiceStore_getVisitsCreatedAfterDate_beforeDate_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to get visits created after date: %{public}@", v5);
}

void __120__WBSHistoryServiceStore_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to retrieve high level domains: %{public}@", v5);
}

void __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_68_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8081e-34);
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to delete url %{private}@: %{public}@", v4, 0x16u);
}

void __75__WBSHistoryServiceStore_removePastHistoryVisitsForItem_completionHandler___block_invoke_70_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3(v1, v2, v3, 5.8081e-34);
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to delete future url %{private}@: %{public}@", v4, 0x16u);
}

void __42__WBSHistoryServiceStore_visitsWereAdded___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to record visit: %{public}@", v5);
}

void __47__WBSHistoryServiceStore_visitTitleWasUpdated___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update title: %{public}@", v5);
}

void __82__WBSHistoryServiceStore_visitAttributeWasUpdated_removeAttributes_addAttributes___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update attributes: %{public}@", v5);
}

void __60__WBSHistoryServiceStore_clearHistoryWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  _os_log_fault_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_FAULT, "Failed to perform history maintenance: %{public}@", v4, 0xCu);
}

void __61__WBSHistoryServiceStore_vacuumHistoryWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to vacuum history database: %{public}@", v5);
}

void __88__WBSHistoryServiceStore_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Told to clear history between %{public}@ and %{public}@, which is not valid. Bailing.", &v5, 0x16u);
}

void __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Error fetching events from service: %{public}@", v5);
}

void __46__WBSHistoryServiceStore__scheduleMaintenance__block_invoke_2_88_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Error marking events as received by listener: %{public}@", v5);
}

void __42__WBSHistoryServiceStore__expireOldVisits__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Error while expiring old visits: %{public}@", v5);
}

void __52__WBSHistoryServiceStore__updateLastMaintenanceDate__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to update last maintenance date: %{public}@", v5);
}

void __57__WBSHistoryServiceStore_addAutocompleteTrigger_forItem___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to add autocomplete trigger: %{public}@", v5);
}

void __75__WBSHistoryServiceStore_getAutocompleteTriggersForItem_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to fetch autocomplete triggers: %{public}@", v5);
}

void __75__WBSHistoryServiceStore_getAutocompleteTriggersForItem_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_0_3(v1, v3, v4, 5.8081e-34);
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v7, v5, "Failed to fetch autocomplete triggers for %{private}@: %{public}@", v6);
}

- (void)handleEvent:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  *v3 = 138543618;
  *(v3 + 4) = v1;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_18(&dword_1BB6F3000, v6, v3, "Handling event %{public}@, issued at %@", v5);
}

void __66__WBSHistoryServiceStore_connectionProxyConnectionWasInterrupted___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Failed to reconnect to database service after interruption with error: %{public}@", v5);
}

@end