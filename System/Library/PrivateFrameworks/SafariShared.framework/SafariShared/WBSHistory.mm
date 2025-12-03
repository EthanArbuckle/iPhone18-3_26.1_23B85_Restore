@interface WBSHistory
+ (id)defaultHistoryDatabaseDirectoryURL;
+ (id)historyDatabaseURL;
+ (id)historyDatabaseWriteAheadLogURL;
+ (id)profileDirectoryURLForProfileID:(id)d;
+ (void)clearExistingSharedHistory;
- (BOOL)_isStringForUserTypedDomainExpansionInHistory:(id)history;
- (BOOL)canRecordRedirectFromVisit:(id)visit to:(id)to;
- (BOOL)hasItemSince:(id)since;
- (NSArray)allItems;
- (WBSHistory)initWithDatabaseID:(id)d;
- (id)_removeItemForURLString:(id)string;
- (id)historyStore:(id)store itemForURLString:(id)string createIfNeeded:(BOOL)needed;
- (id)itemForURL:(id)l;
- (id)itemForURLString:(id)string;
- (id)itemForURLString:(id)string createIfNeeded:(BOOL)needed;
- (id)itemRedirectedFrom:(id)from to:(id)to origin:(int64_t)origin date:(id)date;
- (id)itemRedirectedFrom:(id)from to:(id)to origin:(int64_t)origin date:(id)date statusCode:(int64_t)code;
- (id)itemVisitedAtURLString:(id)string title:(id)title timeOfVisit:(double)visit wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count origin:(int64_t)origin;
- (id)itemVisitedAtURLString:(id)string title:(id)title timeOfVisit:(double)visit wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count origin:(int64_t)origin attributes:(unint64_t)self0;
- (id)itemVisitedAtURLString:(id)string title:(id)title timeOfVisit:(double)visit wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count statusCode:(int64_t)code origin:(int64_t)self0;
- (id)itemVisitedAtURLString:(id)string title:(id)title timeOfVisit:(double)visit wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count statusCode:(int64_t)code origin:(int64_t)self0 attributes:(unint64_t)self1;
- (id)itemVisitedAtURLString:(id)string title:(id)title wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count;
- (id)itemVisitedAtURLString:(id)string title:(id)title wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count statusCode:(int64_t)code;
- (id)lastVisitForHighLevelDomain:(id)domain;
- (unint64_t)numberOfHistoryItems;
- (void)_addItem:(id)item addToStringsForUserTypedDomainExpansions:(BOOL)expansions;
- (void)_addItemToStringsForUserTypedDomainExpansion:(id)expansion;
- (void)_createHistoryStoreIfNeeded;
- (void)_dispatchHistoryClearedAfterDate:(id)date beforeDate:(id)beforeDate;
- (void)_dispatchHistoryItemAdded:(id)added withVisitOrigin:(int64_t)origin;
- (void)_dispatchHistoryItemDidChange:(id)change byUserInitiatedAction:(BOOL)action;
- (void)_dispatchHistoryItemWillChange:(id)change;
- (void)_dispatchHistoryLoaded;
- (void)_dispatchHistoryVisitAdded:(id)added;
- (void)_loadHistory;
- (void)_removeItemFromStringsForUserTypedDomainExpansion:(id)expansion;
- (void)_removeItemsInResponseToUserAction:(id)action completionHandler:(id)handler;
- (void)_sendNotification:(id)notification withItems:(id)items;
- (void)_setAttributes:(unint64_t)attributes forVisit:(id)visit;
- (void)_unload;
- (void)_waitUntilHistoryHasLoadedMainThread;
- (void)addAttributes:(unint64_t)attributes toVisit:(id)visit;
- (void)addAutocompleteTrigger:(id)trigger forURLString:(id)string;
- (void)addTagWithIdentifier:(id)identifier title:(id)title toItemAtURL:(id)l level:(int64_t)level completionHandler:(id)handler;
- (void)clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate completionHandler:(id)handler;
- (void)clearHistoryWithCompletionHandler:(id)handler;
- (void)enumerateItemsAsynchronouslyUsingBlock:(id)block completionHandler:(id)handler;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)exportHistoryToFileWithURL:(id)l completionHandler:(id)handler;
- (void)fetchHistoricalHighLevelDomainsWithCompletionHandler:(id)handler;
- (void)getAllItemsWithCompletionHandler:(id)handler;
- (void)getAutocompleteTriggersForURLString:(id)string completionHandler:(id)handler;
- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)date beforeDate:(id)beforeDate onlyFromThisDevice:(BOOL)device completionHandler:(id)handler;
- (void)getVisitsCreatedAfterDate:(id)date beforeDate:(id)beforeDate completionHandler:(id)handler;
- (void)historyLoader:(id)loader didLoadItems:(id)items stringsForUserTypeDomainExpansion:(id)expansion;
- (void)historyLoaderDidFinishLoading:(id)loading;
- (void)historyStore:(id)store didAddVisits:(id)visits;
- (void)historyStore:(id)store didPrepareToDeleteWithDeletionPlan:(id)plan;
- (void)historyStore:(id)store didRemoveHighLevelDomains:(id)domains;
- (void)historyStore:(id)store didRemoveHostnames:(id)hostnames;
- (void)historyStore:(id)store didRemoveItems:(id)items;
- (void)historyStore:(id)store didRemoveVisits:(id)visits;
- (void)historyStoreDidFailDatabaseIntegrityCheck:(id)check error:(id)error databaseURLs:(id)ls;
- (void)initializeCloudHistoryWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)loadHistoryAsynchronouslyIfNeeded;
- (void)performBlockAfterHistoryHasLoaded:(id)loaded;
- (void)releaseCloudHistory:(id)history;
- (void)removeItemsInResponseToUserAction:(id)action completionHandler:(id)handler;
- (void)savePendingChangesBeforeTerminationWithCompletionHandler:(id)handler;
- (void)setHistoryAgeLimit:(double)limit;
- (void)updateTitle:(id)title forVisit:(id)visit;
- (void)vacuumHistoryWithCompletionHandler:(id)handler;
- (void)waitUntilHistoryHasLoaded;
@end

@implementation WBSHistory

- (void)_createHistoryStoreIfNeeded
{
  if (!self->_historyStore)
  {
    _createHistoryStore = [(WBSHistory *)self _createHistoryStore];
    historyStore = self->_historyStore;
    self->_historyStore = _createHistoryStore;

    v6 = self->_historyStore;

    [(WBSHistoryStore *)v6 setDelegate:self];
  }
}

- (void)waitUntilHistoryHasLoaded
{
  [(WBSHistory *)self loadHistoryAsynchronouslyIfNeeded];
  waitUntilHistoryHasLoadedQueue = self->_waitUntilHistoryHasLoadedQueue;

  dispatch_sync(waitUntilHistoryHasLoadedQueue, &__block_literal_global_82);
}

- (void)loadHistoryAsynchronouslyIfNeeded
{
  if (!self->_hasStartedLoadingHistory)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__WBSHistory_loadHistoryAsynchronouslyIfNeeded__block_invoke;
    block[3] = &unk_1E7FB6F80;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_loadHistory
{
  ct_green_tea_logger_create_static();
  v3 = getCTGreenTeaOsLogHandle();
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Read Safari history", buf, 2u);
  }

  if (!self->_hasStartedLoadingHistory)
  {
    self->_hasStartedLoadingHistory = 1;
    [(WBSHistory *)self _createHistoryStoreIfNeeded];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __26__WBSHistory__loadHistory__block_invoke;
    v5[3] = &unk_1E7FB78D8;
    v5[4] = self;
    [(WBSHistory *)self _loadHistoryWithCompletionHandler:v5];
  }
}

+ (id)historyDatabaseURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__WBSHistory_historyDatabaseURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[WBSHistory historyDatabaseURL]::onceToken != -1)
  {
    dispatch_once(&+[WBSHistory historyDatabaseURL]::onceToken, block);
  }

  v2 = +[WBSHistory historyDatabaseURL]::historyURL;

  return v2;
}

+ (id)defaultHistoryDatabaseDirectoryURL
{
  if (+[WBSHistory defaultHistoryDatabaseDirectoryURL]::onceToken != -1)
  {
    +[WBSHistory defaultHistoryDatabaseDirectoryURL];
  }

  v3 = +[WBSHistory defaultHistoryDatabaseDirectoryURL]::historyDirectoryURL;

  return v3;
}

void __48__WBSHistory_defaultHistoryDatabaseDirectoryURL__block_invoke()
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v0 = [v2 safari_nonContaineredSettingsDirectoryURL];
  v1 = +[WBSHistory defaultHistoryDatabaseDirectoryURL]::historyDirectoryURL;
  +[WBSHistory defaultHistoryDatabaseDirectoryURL]::historyDirectoryURL = v0;
}

void __32__WBSHistory_historyDatabaseURL__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) defaultHistoryDatabaseDirectoryURL];
  v1 = [v3 URLByAppendingPathComponent:@"History.db" isDirectory:0];
  v2 = +[WBSHistory historyDatabaseURL]::historyURL;
  +[WBSHistory historyDatabaseURL]::historyURL = v1;
}

+ (id)profileDirectoryURLForProfileID:(id)d
{
  dCopy = d;
  if ([dCopy length] && !objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x1E69C8B58]))
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    defaultHistoryDatabaseDirectoryURL = [defaultManager safari_profileDirectoryURLWithID:dCopy createIfNeeded:0];
  }

  else
  {
    defaultHistoryDatabaseDirectoryURL = [self defaultHistoryDatabaseDirectoryURL];
  }

  return defaultHistoryDatabaseDirectoryURL;
}

+ (id)historyDatabaseWriteAheadLogURL
{
  {
    v4 = MEMORY[0x1E69C89E8];
    historyDatabaseURL = [self historyDatabaseURL];
    +[WBSHistory historyDatabaseWriteAheadLogURL]::historyWriteAheadLogURL = [v4 writeAheadLogURLForDatabaseURL:historyDatabaseURL];
  }

  v2 = +[WBSHistory historyDatabaseWriteAheadLogURL]::historyWriteAheadLogURL;

  return v2;
}

- (WBSHistory)initWithDatabaseID:(id)d
{
  dCopy = d;
  v21.receiver = self;
  v21.super_class = WBSHistory;
  v6 = [(WBSHistory *)&v21 init];
  if (v6)
  {
    v7 = [[WBSHistoryActivityThrottler alloc] initWithLimitPerSecond:20];
    v8 = *(v6 + 9);
    *(v6 + 9) = v7;

    v9 = dispatch_queue_create("com.apple.SafariShared.WBSHistory.entriesByURLString", 0);
    v10 = *(v6 + 1);
    *(v6 + 1) = v9;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = *(v6 + 2);
    *(v6 + 2) = dictionary;

    v13 = dispatch_queue_create("com.apple.SafariShared.WBSHistory.stringsForUserTypedDomainExpansion", 0);
    v14 = *(v6 + 3);
    *(v6 + 3) = v13;

    v15 = [MEMORY[0x1E696AB50] set];
    v16 = *(v6 + 4);
    *(v6 + 4) = v15;

    v17 = dispatch_queue_create("com.apple.SafariShared.WBSHistory.waitUntilHistoryHasLoaded", 0);
    v18 = *(v6 + 7);
    *(v6 + 7) = v17;

    dispatch_suspend(*(v6 + 7));
    objc_storeStrong(v6 + 10, d);
    if (!dCopy)
    {
      objc_storeStrong(&existingSharedHistory, v6);
      objc_storeStrong(v6 + 10, *MEMORY[0x1E69C8B58]);
    }

    v19 = v6;
  }

  return v6;
}

- (id)itemForURLString:(id)string
{
  v3 = [(WBSHistory *)self itemForURLString:string createIfNeeded:0];

  return v3;
}

- (id)itemForURLString:(id)string createIfNeeded:(BOOL)needed
{
  stringCopy = string;
  v7 = stringCopy;
  if (stringCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__17;
    v19 = __Block_byref_object_dispose__17;
    v20 = 0;
    entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__WBSHistory_itemForURLString_createIfNeeded___block_invoke;
    v11[3] = &unk_1E7FC6820;
    v13 = &v15;
    v11[4] = self;
    v12 = stringCopy;
    neededCopy = needed;
    dispatch_sync(entriesByURLStringAccessQueue, v11);
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __46__WBSHistory_itemForURLString_createIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(a1 + 56) == 1 && !*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [objc_alloc(objc_msgSend(*(a1 + 32) "_historyItemClass"))];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 40);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = *(*(a1 + 32) + 16);

    [v10 setObject:v9 forKeyedSubscript:v8];
  }
}

- (id)lastVisitForHighLevelDomain:(id)domain
{
  v34 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  if (domainCopy)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__17;
    v31 = __Block_byref_object_dispose__17;
    v32 = 0;
    entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__WBSHistory_lastVisitForHighLevelDomain___block_invoke;
    block[3] = &unk_1E7FB8798;
    block[4] = self;
    block[5] = &v27;
    dispatch_sync(entriesByURLStringAccessQueue, block);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v28[5];
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v22 objects:v33 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 url];
          safari_userVisibleHostWithoutWWWSubdomain = [v12 safari_userVisibleHostWithoutWWWSubdomain];
          v14 = [safari_userVisibleHostWithoutWWWSubdomain isEqualToString:domainCopy];

          if (v14)
          {
            if (!v7 || ([v7 visitTime], v16 = v15, objc_msgSend(v11, "lastVisit"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "visitTime"), v19 = v16 > v18, v17, !v19))
            {
              lastVisit = [v11 lastVisit];

              v7 = lastVisit;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v33 count:16];
      }

      while (v8);
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __42__WBSHistory_lastVisitForHighLevelDomain___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasItemSince:(id)since
{
  sinceCopy = since;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__WBSHistory_hasItemSince___block_invoke;
  block[3] = &unk_1E7FC6870;
  block[4] = self;
  v9 = sinceCopy;
  v10 = &v11;
  v6 = sinceCopy;
  dispatch_sync(entriesByURLStringAccessQueue, block);
  LOBYTE(entriesByURLStringAccessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return entriesByURLStringAccessQueue;
}

void __27__WBSHistory_hasItemSince___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__WBSHistory_hasItemSince___block_invoke_2;
  v5[3] = &unk_1E7FC6848;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __27__WBSHistory_hasItemSince___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 lastVisitedDate];
  v7 = *(a1 + 32);

  if (v6 >= v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)removeItemsInResponseToUserAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  if ([actionCopy count])
  {
    [(WBSHistory *)self _removeItemsInResponseToUserAction:actionCopy completionHandler:handlerCopy];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Empty list of items to remove", v9, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)_removeItemsInResponseToUserAction:(id)action completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  [(WBSHistory *)self _waitUntilHistoryHasLoadedMainThread];
  v6 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = actionCopy;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    v9 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        urlString = [v11 urlString];
        v13 = [(WBSHistory *)self _removeItemForURLString:urlString];

        dispatch_group_enter(v6);
        historyStore = self->_historyStore;
        v21[0] = v9;
        v21[1] = 3221225472;
        v21[2] = __67__WBSHistory__removeItemsInResponseToUserAction_completionHandler___block_invoke;
        v21[3] = &unk_1E7FB6F80;
        v22 = v6;
        [(WBSHistoryStore *)historyStore removePastHistoryVisitsForItem:v11 completionHandler:v21];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSHistory__removeItemsInResponseToUserAction_completionHandler___block_invoke_2;
  block[3] = &unk_1E7FB7B80;
  v20 = handlerCopy;
  v15 = handlerCopy;
  dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
}

uint64_t __67__WBSHistory__removeItemsInResponseToUserAction_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)itemForURL:(id)l
{
  safari_originalDataAsString = [l safari_originalDataAsString];
  v5 = [(WBSHistory *)self itemForURLString:safari_originalDataAsString];

  return v5;
}

- (void)addAutocompleteTrigger:(id)trigger forURLString:(id)string
{
  triggerCopy = trigger;
  stringCopy = string;
  if ([stringCopy length])
  {
    v7 = [(WBSHistory *)self itemForURLString:stringCopy];
    if (v7)
    {
      [(WBSHistoryStore *)self->_historyStore addAutocompleteTrigger:triggerCopy forItem:v7];
    }
  }
}

- (void)getAutocompleteTriggersForURLString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  if ([stringCopy length])
  {
    v7 = [(WBSHistory *)self itemForURLString:stringCopy];
    if (v7)
    {
      [(WBSHistoryStore *)self->_historyStore getAutocompleteTriggersForItem:v7 completionHandler:handlerCopy];
    }
  }
}

- (void)_addItem:(id)item addToStringsForUserTypedDomainExpansions:(BOOL)expansions
{
  expansionsCopy = expansions;
  itemCopy = item;
  urlString = [itemCopy urlString];
  if (urlString)
  {
    v8 = [(WBSHistory *)self _removeItemForURLString:urlString];
    if (v8)
    {
      [itemCopy mergeDataFromItem:v8];
      [(WBSHistoryStore *)self->_historyStore itemWasReplaced:v8 byItem:itemCopy];
    }

    if (expansionsCopy)
    {
      [(WBSHistory *)self _addItemToStringsForUserTypedDomainExpansion:itemCopy];
    }

    entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__WBSHistory__addItem_addToStringsForUserTypedDomainExpansions___block_invoke;
    block[3] = &unk_1E7FB7DD0;
    block[4] = self;
    v19 = urlString;
    v20 = itemCopy;
    dispatch_sync(entriesByURLStringAccessQueue, block);
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(WBSHistory *)v10 _addItem:v11 addToStringsForUserTypedDomainExpansions:v12, v13, v14, v15, v16, v17];
    }
  }
}

- (id)_removeItemForURLString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__17;
    v33 = __Block_byref_object_dispose__17;
    v34 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __38__WBSHistory__removeItemForURLString___block_invoke;
    v20 = &unk_1E7FC6898;
    v23 = &v29;
    selfCopy = self;
    v22 = stringCopy;
    v24 = &v25;
    dispatch_sync(entriesByURLStringAccessQueue, &v17);
    if (v30[5])
    {
      [(WBSHistory *)self _removeItemFromStringsForUserTypedDomainExpansion:v17, v18, v19, v20, selfCopy];
      if (!v26[3])
      {
        [(WBSHistory *)self _removeAllVisitedLinks];
      }

      v7 = v30[5];
    }

    else
    {
      v7 = 0;
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WBSHistory *)v8 _removeItemForURLString:v9, v10, v11, v12, v13, v14, v15];
    }

    v7 = 0;
  }

  return v7;
}

uint64_t __38__WBSHistory__removeItemForURLString___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1[4] + 16) removeObjectForKey:a1[5]];
  result = [*(a1[4] + 16) count];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (BOOL)_isStringForUserTypedDomainExpansionInHistory:(id)history
{
  historyCopy = history;
  v5 = historyCopy;
  if (historyCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    stringsForUserTypedDomainExpansionAccessQueue = self->_stringsForUserTypedDomainExpansionAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSHistory__isStringForUserTypedDomainExpansionInHistory___block_invoke;
    block[3] = &unk_1E7FC4D50;
    v11 = &v12;
    block[4] = self;
    v10 = historyCopy;
    dispatch_sync(stringsForUserTypedDomainExpansionAccessQueue, block);
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __60__WBSHistory__isStringForUserTypedDomainExpansionInHistory___block_invoke(void *a1)
{
  result = [*(a1[4] + 32) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)_addItemToStringsForUserTypedDomainExpansion:(id)expansion
{
  expansionCopy = expansion;
  stringForUserTypedDomainExpansion = [expansionCopy stringForUserTypedDomainExpansion];
  v6 = stringForUserTypedDomainExpansion;
  if (stringForUserTypedDomainExpansion)
  {
    stringsForUserTypedDomainExpansionAccessQueue = self->_stringsForUserTypedDomainExpansionAccessQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__WBSHistory__addItemToStringsForUserTypedDomainExpansion___block_invoke;
    v8[3] = &unk_1E7FB7F10;
    v8[4] = self;
    v9 = stringForUserTypedDomainExpansion;
    dispatch_sync(stringsForUserTypedDomainExpansionAccessQueue, v8);
  }
}

- (void)_removeItemFromStringsForUserTypedDomainExpansion:(id)expansion
{
  expansionCopy = expansion;
  stringForUserTypedDomainExpansion = [expansionCopy stringForUserTypedDomainExpansion];
  v6 = stringForUserTypedDomainExpansion;
  if (stringForUserTypedDomainExpansion)
  {
    stringsForUserTypedDomainExpansionAccessQueue = self->_stringsForUserTypedDomainExpansionAccessQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__WBSHistory__removeItemFromStringsForUserTypedDomainExpansion___block_invoke;
    v8[3] = &unk_1E7FB7F10;
    v8[4] = self;
    v9 = stringForUserTypedDomainExpansion;
    dispatch_sync(stringsForUserTypedDomainExpansionAccessQueue, v8);
  }
}

- (NSArray)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__WBSHistory_allItems__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(entriesByURLStringAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __22__WBSHistory_allItems__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)numberOfHistoryItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__WBSHistory_numberOfHistoryItems__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(entriesByURLStringAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__WBSHistory_numberOfHistoryItems__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)enumerateItemsUsingBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__17;
  v20 = 0;
  entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WBSHistory_enumerateItemsUsingBlock___block_invoke;
  block[3] = &unk_1E7FB8798;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(entriesByURLStringAccessQueue, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = v16[5];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v15, 8);
}

void __39__WBSHistory_enumerateItemsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)enumerateItemsAsynchronouslyUsingBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WBSHistory_enumerateItemsAsynchronouslyUsingBlock_completionHandler___block_invoke;
  block[3] = &unk_1E7FC68E8;
  block[4] = self;
  v12 = blockCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = blockCopy;
  dispatch_async(entriesByURLStringAccessQueue, block);
}

void __71__WBSHistory_enumerateItemsAsynchronouslyUsingBlock_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__WBSHistory_enumerateItemsAsynchronouslyUsingBlock_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7FC68C0;
  v5 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v4];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (void)getAllItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__WBSHistory_getAllItemsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6BC0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(entriesByURLStringAccessQueue, v7);
}

void __47__WBSHistory_getAllItemsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 16) allValues];
  (*(v1 + 16))(v1);
}

- (void)setHistoryAgeLimit:(double)limit
{
  if (self->_historyAgeLimit != limit)
  {
    self->_historyAgeLimit = limit;
    [(WBSHistoryStore *)self->_historyStore setHistoryAgeLimit:?];
  }
}

- (id)itemVisitedAtURLString:(id)string title:(id)title wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count
{
  v7 = [(WBSHistory *)self itemVisitedAtURLString:string title:title wasHTTPNonGet:get wasFailure:failure increaseVisitCount:count statusCode:0];

  return v7;
}

- (id)itemVisitedAtURLString:(id)string title:(id)title wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count statusCode:(int64_t)code
{
  countCopy = count;
  failureCopy = failure;
  getCopy = get;
  stringCopy = string;
  titleCopy = title;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v16 = [(WBSHistory *)self itemVisitedAtURLString:stringCopy title:titleCopy timeOfVisit:getCopy wasHTTPNonGet:failureCopy wasFailure:countCopy increaseVisitCount:code statusCode:0 origin:?];

  return v16;
}

- (id)itemVisitedAtURLString:(id)string title:(id)title timeOfVisit:(double)visit wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count origin:(int64_t)origin
{
  v9 = [(WBSHistory *)self itemVisitedAtURLString:string title:title timeOfVisit:get wasHTTPNonGet:failure wasFailure:count increaseVisitCount:0 statusCode:visit origin:origin];

  return v9;
}

- (id)itemVisitedAtURLString:(id)string title:(id)title timeOfVisit:(double)visit wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count statusCode:(int64_t)code origin:(int64_t)self0
{
  v10 = [(WBSHistory *)self itemVisitedAtURLString:string title:title timeOfVisit:get wasHTTPNonGet:failure wasFailure:count increaseVisitCount:code statusCode:visit origin:origin attributes:0];

  return v10;
}

- (id)itemVisitedAtURLString:(id)string title:(id)title timeOfVisit:(double)visit wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count origin:(int64_t)origin attributes:(unint64_t)self0
{
  v10 = [(WBSHistory *)self itemVisitedAtURLString:string title:title timeOfVisit:get wasHTTPNonGet:failure wasFailure:count increaseVisitCount:0 statusCode:visit origin:origin attributes:attributes];

  return v10;
}

- (id)itemVisitedAtURLString:(id)string title:(id)title timeOfVisit:(double)visit wasHTTPNonGet:(BOOL)get wasFailure:(BOOL)failure increaseVisitCount:(BOOL)count statusCode:(int64_t)code origin:(int64_t)self0 attributes:(unint64_t)self1
{
  failureCopy = failure;
  getCopy = get;
  v49 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  titleCopy = title;
  if (!stringCopy)
  {
    v22 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [WBSHistory itemVisitedAtURLString:v22 title:v23 timeOfVisit:v24 wasHTTPNonGet:v25 wasFailure:v26 increaseVisitCount:v27 statusCode:v28 origin:v29 attributes:?];
    }

    goto LABEL_24;
  }

  ct_green_tea_logger_create_static();
  v18 = getCTGreenTeaOsLogHandle();
  v19 = v18;
  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v19, OS_LOG_TYPE_INFO, "Read Safari history", buf, 2u);
  }

  [(WBSHistory *)self loadHistoryAsynchronouslyIfNeeded];
  v20 = [(WBSHistory *)self itemForURLString:stringCopy];
  if (!v20)
  {
    if ([(WBSHistoryActivityThrottler *)self->_entryCreationThrottler shouldRecordHistoryVisitAtTime:visit])
    {
      v30 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 141558275;
        v46 = 1752392040;
        v47 = 2117;
        v48 = stringCopy;
        _os_log_impl(&dword_1BB6F3000, v30, OS_LOG_TYPE_INFO, "Adding new global history item for %{sensitive, mask.hash}@", buf, 0x16u);
      }

      v31 = [objc_alloc(-[WBSHistory _historyItemClass](self "_historyItemClass"))];
      queue = self->_entriesByURLStringAccessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __128__WBSHistory_itemVisitedAtURLString_title_timeOfVisit_wasHTTPNonGet_wasFailure_increaseVisitCount_statusCode_origin_attributes___block_invoke;
      block[3] = &unk_1E7FB7DD0;
      block[4] = self;
      v42 = stringCopy;
      v21 = v31;
      v43 = v21;
      dispatch_sync(queue, block);
      [(WBSHistory *)self _addItemToStringsForUserTypedDomainExpansion:v21];

      goto LABEL_13;
    }

    v37 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v46 = stringCopy;
      _os_log_impl(&dword_1BB6F3000, v37, OS_LOG_TYPE_DEFAULT, "Did not create history item for %{sensitive}@ because of excessive history activity requests", buf, 0xCu);
    }

LABEL_24:
    v33 = 0;
    goto LABEL_25;
  }

  [(WBSHistory *)self _dispatchHistoryItemWillChange:v20];
  v21 = v20;
LABEL_13:
  v32 = WBS_LOG_CHANNEL_PREFIXHistory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 141558275;
    v46 = 1752392040;
    v47 = 2117;
    v48 = stringCopy;
    _os_log_impl(&dword_1BB6F3000, v32, OS_LOG_TYPE_INFO, "Updating global history item %{sensitive, mask.hash}@", buf, 0x16u);
  }

  v33 = [[WBSHistoryVisit alloc] initWithHistoryItem:v21 visitTime:!failureCopy loadWasSuccesful:getCopy wasHTTPNonGet:origin origin:attributes attributes:visit];
  v34 = WBSHistoryTruncatePageTitle(titleCopy, 0x200uLL);
  [(WBSHistoryVisit *)v33 setTitle:v34];

  [v21 wasVisited:v33];
  if (WBSStatusCodeGroupFromStatusCode() || ([MEMORY[0x1E69C8880] isStreamlinedCompletionListEnabled] & 1) == 0)
  {
    [v21 setStatusCode:{code, queue}];
  }

  [(WBSHistory *)self _dispatchHistoryVisitAdded:v33, queue];
  if (v20)
  {
    [(WBSHistory *)self _dispatchHistoryItemDidChange:v21 byUserInitiatedAction:(origin - 4) < 0xFFFFFFFFFFFFFFFDLL];
  }

  else
  {
    [(WBSHistory *)self _dispatchHistoryItemAdded:v21 withVisitOrigin:origin];
  }

  historyStore = self->_historyStore;
  v44 = v33;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  [(WBSHistoryStore *)historyStore visitsWereAdded:v36];

LABEL_25:

  return v33;
}

- (id)itemRedirectedFrom:(id)from to:(id)to origin:(int64_t)origin date:(id)date
{
  v6 = [(WBSHistory *)self itemRedirectedFrom:from to:to origin:origin date:date statusCode:0];

  return v6;
}

- (id)itemRedirectedFrom:(id)from to:(id)to origin:(int64_t)origin date:(id)date statusCode:(int64_t)code
{
  v48[1] = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  dateCopy = date;
  ct_green_tea_logger_create_static();
  v15 = getCTGreenTeaOsLogHandle();
  v16 = v15;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_INFO, "Read Safari history", buf, 2u);
  }

  if ([(WBSHistory *)self canRecordRedirectFromVisit:fromCopy to:toCopy])
  {
    [(WBSHistory *)self loadHistoryAsynchronouslyIfNeeded];
    if (dateCopy)
    {
      [dateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    }

    v19 = v17;
    item = [(WBSHistoryVisit *)fromCopy item];
    v21 = item == 0;

    if (v21)
    {
      v18 = [(WBSHistory *)self itemVisitedAtURLString:toCopy title:0 timeOfVisit:0 wasHTTPNonGet:0 wasFailure:1 increaseVisitCount:code statusCode:v19 origin:0];
    }

    else if (toCopy)
    {
      v22 = [(WBSHistory *)self itemForURLString:toCopy];
      if (v22)
      {
        [(WBSHistory *)self _dispatchHistoryItemWillChange:v22];
        v23 = v22;
      }

      else
      {
        v25 = WBS_LOG_CHANNEL_PREFIXHistory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 141558275;
          v40 = 1752392040;
          v41 = 2117;
          v42 = toCopy;
          _os_log_impl(&dword_1BB6F3000, v25, OS_LOG_TYPE_INFO, "Synthesizing item for destination of redirect: %{sensitive, mask.hash}@", buf, 0x16u);
        }

        v26 = [objc_alloc(-[WBSHistory _historyItemClass](self "_historyItemClass"))];
        entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__WBSHistory_itemRedirectedFrom_to_origin_date_statusCode___block_invoke;
        block[3] = &unk_1E7FB7DD0;
        block[4] = self;
        v37 = toCopy;
        v23 = v26;
        v38 = v23;
        dispatch_sync(entriesByURLStringAccessQueue, block);
        [(WBSHistory *)self _addItemToStringsForUserTypedDomainExpansion:v23];
      }

      item2 = [(WBSHistoryVisit *)fromCopy item];
      [(WBSHistory *)self _dispatchHistoryItemWillChange:item2];
      v18 = [[WBSHistoryVisit alloc] initWithHistoryItem:v23 visitTime:1 loadWasSuccesful:0 wasHTTPNonGet:origin origin:0 attributes:v19];
      [v23 wasRedirectedFrom:fromCopy to:v18];
      if (WBSStatusCodeGroupFromStatusCode() || ([MEMORY[0x1E69C8880] isStreamlinedCompletionListEnabled] & 1) == 0)
      {
        [v23 setStatusCode:code];
      }

      [(WBSHistory *)self _dispatchHistoryVisitAdded:v18];
      [(WBSHistory *)self _dispatchHistoryItemDidChange:item2 byUserInitiatedAction:(origin - 4) < 0xFFFFFFFFFFFFFFFDLL];
      if (v22)
      {
        [(WBSHistory *)self _dispatchHistoryItemDidChange:v23 byUserInitiatedAction:(origin - 4) < 0xFFFFFFFFFFFFFFFDLL];
      }

      else
      {
        [(WBSHistory *)self _dispatchHistoryItemAdded:v23 withVisitOrigin:origin];
      }

      if ([(WBSHistoryVisit *)fromCopy didUserInteractWithPage])
      {
        [(WBSHistoryVisit *)fromCopy setAttributes:[(WBSHistoryVisit *)fromCopy attributes]| 0x10];
      }

      historyStore = self->_historyStore;
      v48[0] = fromCopy;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
      [(WBSHistoryStore *)historyStore visitsWereModified:v30];

      v31 = self->_historyStore;
      v47 = v18;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      [(WBSHistoryStore *)v31 visitsWereAdded:v32];

      v33 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        urlString = [item2 urlString];
        *buf = 141558787;
        v40 = 1752392040;
        v41 = 2117;
        v42 = urlString;
        v43 = 2160;
        v44 = 1752392040;
        v45 = 2117;
        v46 = toCopy;
        _os_log_impl(&dword_1BB6F3000, v33, OS_LOG_TYPE_INFO, "Recorded redirect from %{sensitive, mask.hash}@ to %{sensitive, mask.hash}@", buf, 0x2Au);
      }
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXHistory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [WBSHistory itemRedirectedFrom:v24 to:? origin:? date:? statusCode:?];
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = fromCopy;
  }

  return v18;
}

- (void)getVisitsCreatedAfterDate:(id)date beforeDate:(id)beforeDate completionHandler:(id)handler
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  handlerCopy = handler;
  ct_green_tea_logger_create_static();
  v11 = getCTGreenTeaOsLogHandle();
  v12 = v11;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Read Safari history", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__WBSHistory_getVisitsCreatedAfterDate_beforeDate_completionHandler___block_invoke;
  v16[3] = &unk_1E7FC6910;
  v16[4] = self;
  v13 = dateCopy;
  v17 = v13;
  v14 = beforeDateCopy;
  v18 = v14;
  v15 = handlerCopy;
  v19 = v15;
  [(WBSHistory *)self performBlockAfterHistoryHasLoaded:v16];
}

- (void)getHighLevelHTTPFamilyDomainsVisitedAfterDate:(id)date beforeDate:(id)beforeDate onlyFromThisDevice:(BOOL)device completionHandler:(id)handler
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__WBSHistory_getHighLevelHTTPFamilyDomainsVisitedAfterDate_beforeDate_onlyFromThisDevice_completionHandler___block_invoke;
  v16[3] = &unk_1E7FC6938;
  v16[4] = self;
  v17 = dateCopy;
  deviceCopy = device;
  v18 = beforeDateCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = beforeDateCopy;
  v15 = dateCopy;
  [(WBSHistory *)self performBlockAfterHistoryHasLoaded:v16];
}

- (BOOL)canRecordRedirectFromVisit:(id)visit to:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  visitCopy = visit;
  toCopy = to;
  item = [visitCopy item];
  urlString = [item urlString];

  if ([urlString isEqualToString:toCopy])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 141558275;
      v17 = 1752392040;
      v18 = 2117;
      v19 = toCopy;
      v10 = "Ignoring redirect from %{sensitive, mask.hash}@ to itself";
      v11 = v9;
      v12 = 22;
LABEL_7:
      _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, v10, &v16, v12);
    }
  }

  else
  {
    if ([visitCopy redirectSourceChainLength] < 0x15)
    {
      v14 = 1;
      goto LABEL_10;
    }

    v13 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 141558787;
      v17 = 1752392040;
      v18 = 2117;
      v19 = urlString;
      v20 = 2160;
      v21 = 1752392040;
      v22 = 2117;
      v23 = toCopy;
      v10 = "Ignoring redirect from %{sensitive, mask.hash}@ to %{sensitive, mask.hash}@ due to exceeding maximum redirect chain length";
      v11 = v13;
      v12 = 42;
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (void)updateTitle:(id)title forVisit:(id)visit
{
  titleCopy = title;
  visitCopy = visit;
  item = [visitCopy item];
  if (item)
  {
    v11 = WBSHistoryTruncatePageTitle(titleCopy, 0x200uLL);

    title = [visitCopy title];
    v10 = [title isEqualToString:v11];

    if ((v10 & 1) == 0)
    {
      [(WBSHistory *)self _dispatchHistoryItemWillChange:item];
      [visitCopy setTitle:?];
      [item _lastVisitTitleMayHaveChanged];
      [(WBSHistory *)self _dispatchHistoryItemDidChange:item byUserInitiatedAction:0];
      [(WBSHistoryStore *)self->_historyStore visitTitleWasUpdated:visitCopy];
    }
  }

  else
  {
    v11 = titleCopy;
  }
}

- (void)_setAttributes:(unint64_t)attributes forVisit:(id)visit
{
  visitCopy = visit;
  item = [visitCopy item];
  [(WBSHistory *)self _dispatchHistoryItemWillChange:item];
  [visitCopy setAttributes:attributes];
  [(WBSHistory *)self _dispatchHistoryItemDidChange:item byUserInitiatedAction:0];
  [(WBSHistoryStore *)self->_historyStore visitAttributeWasUpdated:visitCopy removeAttributes:0 addAttributes:attributes];
}

- (void)addAttributes:(unint64_t)attributes toVisit:(id)visit
{
  visitCopy = visit;
  if (([visitCopy hasAttributes:attributes] & 1) == 0)
  {
    -[WBSHistory _setAttributes:forVisit:](self, "_setAttributes:forVisit:", [visitCopy attributes] | attributes, visitCopy);
  }
}

- (void)addTagWithIdentifier:(id)identifier title:(id)title toItemAtURL:(id)l level:(int64_t)level completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  titleCopy = title;
  lCopy = l;
  handlerCopy = handler;
  v16 = [(WBSHistory *)self itemForURL:lCopy];
  if (v16)
  {
    historyStore = self->_historyStore;
    v26[0] = identifierCopy;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v25 = titleCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke;
    v20[3] = &unk_1E7FC6988;
    v21 = identifierCopy;
    v24 = handlerCopy;
    selfCopy = self;
    v23 = v16;
    [(WBSHistoryStore *)historyStore tagsWithIdentifiers:v18 type:1 level:level creatingIfNecessary:1 withTitles:v19 completionHandler:v20];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

void __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8)
  {
    v10 = [v7 arrayByAddingObjectsFromArray:v8];
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 40) + 64);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_73;
    v15[3] = &unk_1E7FC6960;
    v16 = v11;
    v17 = *(a1 + 32);
    v18 = *(a1 + 56);
    [v12 assignHistoryItem:v16 toTopicTags:v10 completionHandler:v15];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v9 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_cold_1();
    }

    v14 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_cold_2(a1, v14);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_73(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) databaseID];
      [v5 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_73_cold_1();
    }

    v7 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_73_cold_2(a1, v7);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate completionHandler:(id)handler
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  handlerCopy = handler;
  historyStore = self->_historyStore;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__WBSHistory_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke;
  v15[3] = &unk_1E7FC69B0;
  v15[4] = self;
  v16 = dateCopy;
  v17 = beforeDateCopy;
  v18 = handlerCopy;
  v12 = beforeDateCopy;
  v13 = dateCopy;
  v14 = handlerCopy;
  [(WBSHistoryStore *)historyStore clearHistoryVisitsAddedAfterDate:v13 beforeDate:v12 completionHandler:v15];
}

uint64_t __76__WBSHistory_clearHistoryVisitsAddedAfterDate_beforeDate_completionHandler___block_invoke(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [v3 _dispatchHistoryClearedAfterDate:v4 beforeDate:v5];
}

- (void)clearHistoryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(WBSHistory *)self _waitUntilHistoryHasLoadedMainThread];
  if (!handlerCopy)
  {
    handlerCopy = &__block_literal_global_77;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__17;
  v21 = __Block_byref_object_dispose__17;
  v22 = 0;
  entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSHistory_clearHistoryWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7FB8798;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(entriesByURLStringAccessQueue, block);
  stringsForUserTypedDomainExpansionAccessQueue = self->_stringsForUserTypedDomainExpansionAccessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__WBSHistory_clearHistoryWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_1E7FB6F80;
  v15[4] = self;
  dispatch_sync(stringsForUserTypedDomainExpansionAccessQueue, v15);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__WBSHistory_clearHistoryWithCompletionHandler___block_invoke_4;
  v12[3] = &unk_1E7FC69D8;
  v7 = handlerCopy;
  v12[4] = self;
  v13 = v7;
  v14 = &v17;
  v8 = MEMORY[0x1BFB13CE0](v12);
  if ([v18[5] count])
  {
    historyStore = self->_historyStore;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__WBSHistory_clearHistoryWithCompletionHandler___block_invoke_5;
    v10[3] = &unk_1E7FB6F08;
    v10[4] = self;
    v11 = v8;
    [(WBSHistoryStore *)historyStore clearHistoryWithCompletionHandler:v10];
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  _Block_object_dispose(&v17, 8);
}

void __48__WBSHistory_clearHistoryWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;
}

uint64_t __48__WBSHistory_clearHistoryWithCompletionHandler___block_invoke_4(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);

  return [v2 _dispatchHistoryCleared:v3];
}

uint64_t __48__WBSHistory_clearHistoryWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _removeAllVisitedLinks];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)vacuumHistoryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__WBSHistory_vacuumHistoryWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7FB6F08;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(WBSHistory *)self performBlockAfterHistoryHasLoaded:v6];
}

- (void)exportHistoryToFileWithURL:(id)l completionHandler:(id)handler
{
  v17[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v17[0] = 0;
  v8 = [objc_alloc(MEMORY[0x1E69C88A8]) initWithURL:lCopy error:v17];
  v9 = v17[0];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    historyStore = self->_historyStore;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__WBSHistory_exportHistoryToFileWithURL_completionHandler___block_invoke;
    v14[3] = &unk_1E7FC6A00;
    v16 = handlerCopy;
    v15 = v8;
    [(WBSHistoryStore *)historyStore exportHistory:v15 completionHandler:v14];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v10 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [WBSHistory exportHistoryToFileWithURL:completionHandler:];
    }

    handlerCopy[2](handlerCopy);
  }
}

void __59__WBSHistory_exportHistoryToFileWithURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __59__WBSHistory_exportHistoryToFileWithURL_completionHandler___block_invoke_cold_1();
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__WBSHistory_exportHistoryToFileWithURL_completionHandler___block_invoke_79;
    v6[3] = &unk_1E7FB7E48;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 finishWithCompletionHandler:v6];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __59__WBSHistory_exportHistoryToFileWithURL_completionHandler___block_invoke_79(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXHistory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __59__WBSHistory_exportHistoryToFileWithURL_completionHandler___block_invoke_79_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_waitUntilHistoryHasLoadedMainThread
{
  [(WBSHistory *)self _loadHistory];
  historyStore = self->_historyStore;

  [(WBSHistoryStore *)historyStore waitForLoadingToComplete];
}

- (void)performBlockAfterHistoryHasLoaded:(id)loaded
{
  block = loaded;
  [(WBSHistory *)self loadHistoryAsynchronouslyIfNeeded];
  dispatch_async(self->_waitUntilHistoryHasLoadedQueue, block);
}

- (void)savePendingChangesBeforeTerminationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  historyStore = self->_historyStore;
  v6 = handlerCopy;
  if (historyStore)
  {
    [(WBSHistoryStore *)historyStore closeWithCompletionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

- (void)historyLoader:(id)loader didLoadItems:(id)items stringsForUserTypeDomainExpansion:(id)expansion
{
  v24 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  expansionCopy = expansion;
  ct_green_tea_logger_create_static();
  v9 = getCTGreenTeaOsLogHandle();
  v10 = v9;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Read Safari history", buf, 2u);
  }

  if (expansionCopy)
  {
    stringsForUserTypedDomainExpansionAccessQueue = self->_stringsForUserTypedDomainExpansionAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__WBSHistory_historyLoader_didLoadItems_stringsForUserTypeDomainExpansion___block_invoke;
    block[3] = &unk_1E7FB7F10;
    block[4] = self;
    v21 = expansionCopy;
    dispatch_sync(stringsForUserTypedDomainExpansionAccessQueue, block);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(WBSHistory *)self _addItem:*(*(&v16 + 1) + 8 * v15++) addToStringsForUserTypedDomainExpansions:expansionCopy == 0, v16];
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v13);
  }

  [(WBSHistory *)self _dispatchHistoryItemsLoaded:v12];
}

- (void)historyLoaderDidFinishLoading:(id)loading
{
  ct_green_tea_logger_create_static();
  v4 = getCTGreenTeaOsLogHandle();
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Read Safari history", v6, 2u);
  }

  [(WBSHistory *)self _dispatchHistoryLoaded];
}

- (void)historyStore:(id)store didPrepareToDeleteWithDeletionPlan:(id)plan
{
  planCopy = plan;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__WBSHistory_historyStore_didPrepareToDeleteWithDeletionPlan___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v8 = planCopy;
  selfCopy = self;
  v6 = planCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __62__WBSHistory_historyStore_didPrepareToDeleteWithDeletionPlan___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = [*(a1 + 32) discoveredItemsToDelete];
  if ([v22 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v2 = v22;
    v3 = [v2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v3)
    {
      v4 = *v28;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v28 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(a1 + 40);
          v7 = [*(*(&v27 + 1) + 8 * i) urlString];
          v8 = [v6 _removeItemForURLString:v7];
        }

        v3 = [v2 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v3);
    }

    v9 = *(a1 + 40);
    v10 = [v2 allObjects];
    [v9 _dispatchHistoryItemsRemoved:v10];
  }

  [*(a1 + 32) allVisitsToDeleteByItemExcludingItemsBeingDeleted];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v11 = v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = *v24;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v23 + 1) + 8 * j);
        v16 = [v11 objectForKey:v15];
        v17 = [*(a1 + 32) updatedLastVisitsByItem];
        v18 = [v17 objectForKey:v15];

        if (v18)
        {
          v19 = *(a1 + 40);
          v20 = [v15 urlString];
          v21 = [v19 itemForURLString:v20];
          LOBYTE(v19) = v21 == 0;

          if ((v19 & 1) == 0)
          {
            [*(a1 + 40) _dispatchHistoryItemWillChange:v15];
            [v15 removeVisits:v16 candidateLastVisit:v18];
            [*(a1 + 40) _dispatchHistoryItemDidChange:v15 byUserInitiatedAction:0];
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }
}

- (void)_sendNotification:(id)notification withItems:(id)items
{
  v20[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v19 = @"WBSHistoryItemsKey";
    v20[0] = itemsCopy;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__WBSHistory__sendNotification_withItems___block_invoke_2;
    v12[3] = &unk_1E7FB7DD0;
    v13 = notificationCopy;
    selfCopy = self;
    v15 = v8;
    v9 = v8;
    v10 = notificationCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__WBSHistory__sendNotification_withItems___block_invoke;
    block[3] = &unk_1E7FB7F10;
    v17 = notificationCopy;
    selfCopy2 = self;
    v11 = notificationCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v9 = v17;
  }
}

void __42__WBSHistory__sendNotification_withItems___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40)];
}

void __42__WBSHistory__sendNotification_withItems___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:a1[4] object:a1[5] userInfo:a1[6]];
}

- (void)_dispatchHistoryLoaded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__WBSHistory__dispatchHistoryLoaded__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __36__WBSHistory__dispatchHistoryLoaded__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *(a1 + 32);
  v6 = @"WBSHistoryInMemoryDatabase";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(v3 + 64), "isUsingInMemoryDatabase")}];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WBSHistoryWasLoadedNotification" object:v3 userInfo:v5];
}

- (void)_dispatchHistoryItemAdded:(id)added withVisitOrigin:(int64_t)origin
{
  v11[1] = *MEMORY[0x1E69E9840];
  addedCopy = added;
  historyStore = self->_historyStore;
  v11[0] = addedCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(WBSHistoryStore *)historyStore itemsWereAdded:v8 byUserInitiatedAction:(origin - 4) < 0xFFFFFFFFFFFFFFFDLL];

  [(WBSHistory *)self _addVisitedLinkForItemIfNeeded:addedCopy withVisitOrigin:origin];
  v10 = addedCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [(WBSHistory *)self _sendNotification:@"WBSHistoryItemsWereAddedNotification" withItems:v9];
}

- (void)_dispatchHistoryItemWillChange:(id)change
{
  v6[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v6[0] = changeCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(WBSHistory *)self _sendNotification:@"WBSHistoryItemWillChangeNotification" withItems:v5];
}

- (void)_dispatchHistoryItemDidChange:(id)change byUserInitiatedAction:(BOOL)action
{
  actionCopy = action;
  v11[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  historyStore = self->_historyStore;
  v11[0] = changeCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(WBSHistoryStore *)historyStore itemsWereModified:v8 byUserInitiatedAction:actionCopy];

  v10 = changeCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [(WBSHistory *)self _sendNotification:@"WBSHistoryItemDidChangeNotification" withItems:v9];
}

- (void)_dispatchHistoryClearedAfterDate:(id)date beforeDate:(id)beforeDate
{
  v13[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  beforeDateCopy = beforeDate;
  v12[0] = @"WBSHistoryClearStartDateKey";
  v12[1] = @"WBSHistoryClearEndDateKey";
  v13[0] = dateCopy;
  v13[1] = beforeDateCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WBSHistory__dispatchHistoryClearedAfterDate_beforeDate___block_invoke;
  block[3] = &unk_1E7FB7F10;
  block[4] = self;
  v11 = v8;
  v9 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__WBSHistory__dispatchHistoryClearedAfterDate_beforeDate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WBSHistoryWasClearedWithIntervalNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)_dispatchHistoryVisitAdded:(id)added
{
  v8[1] = *MEMORY[0x1E69E9840];
  addedCopy = added;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = @"WBSHistoryVisitKey";
  v8[0] = addedCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [defaultCenter postNotificationName:@"WBSHistoryVisitWasAddedNotification" object:self userInfo:v6];
}

- (void)historyStoreDidFailDatabaseIntegrityCheck:(id)check error:(id)error databaseURLs:(id)ls
{
  v16 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = lsCopy;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [defaultManager removeItemAtURL:*(*(&v11 + 1) + 8 * v10++) error:{0, v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)historyStore:(id)store didAddVisits:(id)visits
{
  v30 = *MEMORY[0x1E69E9840];
  visitsCopy = visits;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = visitsCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        item = [*(*(&v25 + 1) + 8 * v11) item];
        v13 = item;
        if (item)
        {
          lastVisitOnSynchronizationQueue = [item lastVisitOnSynchronizationQueue];
          v15 = lastVisitOnSynchronizationQueue == 0;

          if (v15)
          {
            v16 = array2;
          }

          else
          {
            v16 = array;
          }

          [v16 addObject:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__WBSHistory_historyStore_didAddVisits___block_invoke;
  v20[3] = &unk_1E7FC5D00;
  v21 = array;
  selfCopy = self;
  v23 = v8;
  v24 = array2;
  v17 = array2;
  v18 = v8;
  v19 = array;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

uint64_t __40__WBSHistory_historyStore_didAddVisits___block_invoke(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a1[4] count])
  {
    [a1[5] _sendNotification:@"WBSHistoryItemWillChangeNotification" withItems:a1[4]];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = a1[6];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v6 item];
        v8 = v7;
        if (v7)
        {
          [v7 addExistingVisit:v6];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  if ([a1[4] count])
  {
    [a1[5] _sendNotification:@"WBSHistoryItemDidChangeNotification" withItems:a1[4]];
  }

  result = [a1[7] count];
  if (result)
  {
    return [a1[5] _sendNotification:@"WBSHistoryItemsWereAddedNotification" withItems:a1[7]];
  }

  return result;
}

- (void)historyStore:(id)store didRemoveVisits:(id)visits
{
  visitsCopy = visits;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__WBSHistory_historyStore_didRemoveVisits___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = visitsCopy;
  v6 = visitsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __43__WBSHistory_historyStore_didRemoveVisits___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"WBSHistoryVisitsKey";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WBSHistoryVisitsWereRemovedFromDatabaseNotification" object:v4 userInfo:v5];
}

- (void)historyStore:(id)store didRemoveItems:(id)items
{
  itemsCopy = items;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__WBSHistory_historyStore_didRemoveItems___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __42__WBSHistory_historyStore_didRemoveItems___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"WBSHistoryItemsKey";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WBSHistoryItemsWereRemovedFromDatabaseNotification" object:v4 userInfo:v5];
}

- (void)historyStore:(id)store didRemoveHostnames:(id)hostnames
{
  hostnamesCopy = hostnames;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WBSHistoryDidRemoveHostnamesNotification" object:hostnamesCopy];
}

- (void)historyStore:(id)store didRemoveHighLevelDomains:(id)domains
{
  domainsCopy = domains;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"WBSHistoryDidRemoveHighLevelDomainsNotification" object:domainsCopy];
}

- (id)historyStore:(id)store itemForURLString:(id)string createIfNeeded:(BOOL)needed
{
  v5 = [(WBSHistory *)self itemForURLString:string createIfNeeded:needed];

  return v5;
}

- (void)initializeCloudHistoryWithConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  waitUntilHistoryHasLoadedQueue = self->_waitUntilHistoryHasLoadedQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__WBSHistory_initializeCloudHistoryWithConfiguration_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(waitUntilHistoryHasLoadedQueue, block);
}

- (void)releaseCloudHistory:(id)history
{
  historyCopy = history;
  waitUntilHistoryHasLoadedQueue = self->_waitUntilHistoryHasLoadedQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__WBSHistory_releaseCloudHistory___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = historyCopy;
  v6 = historyCopy;
  dispatch_async(waitUntilHistoryHasLoadedQueue, v7);
}

+ (void)clearExistingSharedHistory
{
  if (existingSharedHistory)
  {
    [*(existingSharedHistory + 64) closeWithCompletionHandler:0];
    v2 = existingSharedHistory;
    existingSharedHistory = 0;
  }
}

- (void)_unload
{
  self->_hasStartedLoadingHistory = 0;
  dispatch_suspend(self->_waitUntilHistoryHasLoadedQueue);
  entriesByURLStringAccessQueue = self->_entriesByURLStringAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__WBSHistory__unload__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(entriesByURLStringAccessQueue, block);
  historyStore = self->_historyStore;
  self->_historyStore = 0;
}

- (void)fetchHistoricalHighLevelDomainsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x1E695DFA8] set];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__WBSHistory_fetchHistoricalHighLevelDomainsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FC6A28;
  v6 = v5;
  v8 = v6;
  [(WBSHistory *)self enumerateItemsUsingBlock:v7];
  handlerCopy[2](handlerCopy, v6);
}

void __67__WBSHistory_fetchHistoricalHighLevelDomainsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 url];
  v4 = [v3 host];
  v5 = [v4 safari_highLevelDomainFromHost];

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)itemRedirectedFrom:(os_log_t)log to:origin:date:statusCode:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Destination URL for redirect is nil: %@", &v1, 0xCu);
}

void __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Could not find or create a topic tag with error: %{public}@", v5);
}

void __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Identifier: %{private}@", &v3, 0xCu);
}

void __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_73_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  *v1 = 134218242;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Could not assign history item (%ld) to topic with error: %{public}@", v4, 0x16u);
}

void __77__WBSHistory_addTagWithIdentifier_title_toItemAtURL_level_completionHandler___block_invoke_73_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Identifier: %{private}@", &v3, 0xCu);
}

- (void)exportHistoryToFileWithURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Error creating history exporter: %{public}@", v5);
}

void __59__WBSHistory_exportHistoryToFileWithURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Error exporting history: %{public}@", v5);
}

void __59__WBSHistory_exportHistoryToFileWithURL_completionHandler___block_invoke_79_cold_1()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0_5(&dword_1BB6F3000, v3, v4, "Error finishing history file: %{public}@", v5);
}

@end