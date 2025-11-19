@interface WBSHistoryItem
+ (void)initialize;
- (BOOL)_visitsPendingWriteSetContains:(id)a3;
- (BOOL)lastVisitWasFailure;
- (BOOL)lastVisitWasHTTPNonGet;
- (NSDate)lastVisitedDate;
- (NSSet)visitsPendingWriteToDataStoreOnSynchronizationQueue;
- (NSString)stringForUserTypedDomainExpansion;
- (NSString)title;
- (NSString)userVisibleHostOrFallbackURLString;
- (NSString)userVisibleURLString;
- (NSURL)url;
- (WBSHistoryItem)endOfLastVisitRedirectChain;
- (WBSHistoryItem)initWithHistoryStreamedItem:(const _HistoryStreamedItem *)a3;
- (WBSHistoryItem)initWithURLString:(id)a3;
- (WBSHistoryItem)lastVisitRedirectDestinationItem;
- (WBSHistoryVisit)lastVisit;
- (double)lastVisitedTimeInterval;
- (id)_visitsPendingWriteSetCreatingIfNeeded:(BOOL)a3;
- (id)visitForTimeOnSynchronizationQueue:(double)a3;
- (void)_addExistingVisit:(id)a3;
- (void)_addVisit:(id)a3;
- (void)_addVisitToPendingWriteSet:(id)a3;
- (void)addExistingVisit:(id)a3;
- (void)clearVisitsPendingWriteToDataStoreFromSynchronizationQueue;
- (void)dealloc;
- (void)mergeDataFromItem:(id)a3;
- (void)removeVisits:(id)a3 candidateLastVisit:(id)a4;
- (void)removeVisitsOnSynchronizationQueue:(id)a3 candidateLastVisit:(id)a4;
- (void)setLastVisitWasFailure:(BOOL)a3;
- (void)updateLastVisitIfNil:(id)a3;
- (void)updateWithServiceItem:(id)a3;
- (void)updateWithStreamedItem:(const _HistoryStreamedItem *)a3;
- (void)visitWasModified:(id)a3;
- (void)wasRedirectedFrom:(id)a3 to:(id)a4;
- (void)wasVisited:(id)a3;
@end

@implementation WBSHistoryItem

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryItem.Synchronization", 0);
    v3 = WBSHistoryItemSynchronizationQueue;
    WBSHistoryItemSynchronizationQueue = v2;

    v4 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryItem.Cache", 0);
    v5 = WBSHistoryItemCacheQueue;
    WBSHistoryItemCacheQueue = v4;
  }
}

- (WBSHistoryItem)initWithURLString:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WBSHistoryItem;
  v5 = [(WBSHistoryItem *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    visits = v5->_visits;
    v5->_visits = v6;

    v8 = [v4 copy];
    urlString = v5->_urlString;
    v5->_urlString = v8;

    v10 = v5;
  }

  return v5;
}

- (void)dealloc
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__WBSHistoryItem_dealloc__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = self;
  dispatch_async(WBSHistoryItemSynchronizationQueue, block);
  v3.receiver = self;
  v3.super_class = WBSHistoryItem;
  [(WBSHistoryItem *)&v3 dealloc];
}

- (NSString)title
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __23__WBSHistoryItem_title__block_invoke;
  v4[3] = &unk_1E7FB8798;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(WBSHistoryItemSynchronizationQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __23__WBSHistoryItem_title__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) title];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSURL)url
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__WBSHistoryItem_url__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(WBSHistoryItemCacheQueue, block);
  return self->_url;
}

void __21__WBSHistoryItem_url__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 32))
  {
    v4 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:*(v2 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;
  }
}

- (NSString)userVisibleURLString
{
  v2 = [(NSString *)self->_urlString safari_userVisibleURL];
  v3 = [v2 safari_stringByFoldingWideCharactersAndNormalizing];

  return v3;
}

- (NSString)userVisibleHostOrFallbackURLString
{
  v2 = [(WBSHistoryItem *)self url];
  v3 = [v2 safari_userVisibleHostWithoutWWWSubdomain];
  if (![v3 length])
  {
    v4 = [v2 safari_userVisibleString];

    v3 = v4;
  }

  return v3;
}

- (WBSHistoryVisit)lastVisit
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__WBSHistoryItem_lastVisit__block_invoke;
  v4[3] = &unk_1E7FB8798;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(WBSHistoryItemSynchronizationQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (double)lastVisitedTimeInterval
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__WBSHistoryItem_lastVisitedTimeInterval__block_invoke;
  v4[3] = &unk_1E7FB8798;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(WBSHistoryItemSynchronizationQueue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __41__WBSHistoryItem_lastVisitedTimeInterval__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) visitTime];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (NSDate)lastVisitedDate
{
  v2 = MEMORY[0x1E695DF00];
  v3 = [(WBSHistoryItem *)self lastVisit];
  [v3 visitTime];
  v4 = [v2 dateWithTimeIntervalSinceReferenceDate:?];

  return v4;
}

- (BOOL)lastVisitWasFailure
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__WBSHistoryItem_lastVisitWasFailure__block_invoke;
  v4[3] = &unk_1E7FB8798;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(WBSHistoryItemSynchronizationQueue, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __37__WBSHistoryItem_lastVisitWasFailure__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) loadWasSuccessful];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  return result;
}

- (void)setLastVisitWasFailure:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__WBSHistoryItem_setLastVisitWasFailure___block_invoke;
  v3[3] = &unk_1E7FB7A40;
  v3[4] = self;
  v4 = a3;
  dispatch_sync(WBSHistoryItemSynchronizationQueue, v3);
}

uint64_t __41__WBSHistoryItem_setLastVisitWasFailure___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setLoadSuccessful:(*(a1 + 40) & 1) == 0];
  v2 = *(a1 + 32);
  v3 = v2[1];

  return [v2 _addVisitToPendingWriteSet:v3];
}

- (BOOL)lastVisitWasHTTPNonGet
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__WBSHistoryItem_lastVisitWasHTTPNonGet__block_invoke;
  v4[3] = &unk_1E7FB8798;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(WBSHistoryItemSynchronizationQueue, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__WBSHistoryItem_lastVisitWasHTTPNonGet__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) wasHTTPNonGet];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)stringForUserTypedDomainExpansion
{
  v2 = [(WBSHistoryItem *)self url];
  v3 = [v2 host];

  if (([v3 safari_hasCaseInsensitiveSuffix:@".com"] & 1) == 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (([v3 safari_hasCaseInsensitivePrefix:@"www."] & 1) == 0)
  {
    v7 = [v3 length];
    v5 = 0;
    v4 = v7 - 4;
    goto LABEL_7;
  }

  if ([v3 caseInsensitiveCompare:@"www.com"])
  {
    v4 = [v3 length] - 8;
    v5 = 4;
LABEL_7:
    v6 = [v3 substringWithRange:{v5, v4}];
    goto LABEL_8;
  }

  v6 = @"www";
LABEL_8:

  return v6;
}

- (WBSHistoryItem)lastVisitRedirectDestinationItem
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__WBSHistoryItem_lastVisitRedirectDestinationItem__block_invoke;
  v4[3] = &unk_1E7FB8798;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(WBSHistoryItemSynchronizationQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__WBSHistoryItem_lastVisitRedirectDestinationItem__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) redirectDestination];
  v2 = [v5 item];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (WBSHistoryItem)endOfLastVisitRedirectChain
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__21;
  v9 = __Block_byref_object_dispose__21;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__WBSHistoryItem_endOfLastVisitRedirectChain__block_invoke;
  v4[3] = &unk_1E7FB87C0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(WBSHistoryItemSynchronizationQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __45__WBSHistoryItem_endOfLastVisitRedirectChain__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  v4 = 0;
  v5 = v2[1];
  do
  {
    v6 = [v5 endOfRedirectChain];

    v7 = [v6 item];
    v8 = v7;
    if (v7)
    {
      v9 = v7;

      v2 = v9;
    }

    v5 = v2[1];
    if (v6 == v5)
    {
      break;
    }

    v4 = v6;
  }

  while (v3++ < 4);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v2;
  v13 = v2;
}

- (void)mergeDataFromItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = WBSHistoryItemSynchronizationQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__WBSHistoryItem_mergeDataFromItem___block_invoke;
    v7[3] = &unk_1E7FB7F10;
    v8 = v4;
    v9 = self;
    dispatch_sync(v6, v7);
  }
}

void __36__WBSHistoryItem_mergeDataFromItem___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) lastVisitOnSynchronizationQueue];
  [v2 visitTime];
  v4 = v3;
  [*(*(a1 + 40) + 8) visitTime];
  v6 = v5;

  if (v4 > v6)
  {
    v7 = [*(a1 + 32) lastVisitOnSynchronizationQueue];
    v8 = *(a1 + 40);
    v9 = *(v8 + 8);
    *(v8 + 8) = v7;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(*(a1 + 32) + 24);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v13++) setItem:{*(a1 + 40), v16}];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [*(*(a1 + 40) + 24) addObjectsFromArray:*(*(a1 + 32) + 24)];
  v14 = [*(a1 + 32) _visitsPendingWriteSetCreatingIfNeeded:0];
  if (v14)
  {
    v15 = [*(a1 + 40) _visitsPendingWriteSetCreatingIfNeeded:1];
    [v15 unionSet:v14];
  }
}

- (void)wasVisited:(id)a3
{
  v4 = a3;
  v5 = WBSHistoryItemSynchronizationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__WBSHistoryItem_wasVisited___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_addVisit:(id)a3
{
  v4 = a3;
  [(WBSHistoryItem *)self _addExistingVisit:?];
  [(WBSHistoryItem *)self _addVisitToPendingWriteSet:v4];
}

- (void)addExistingVisit:(id)a3
{
  v4 = a3;
  v5 = WBSHistoryItemSynchronizationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__WBSHistoryItem_addExistingVisit___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_addExistingVisit:(id)a3
{
  p_lastVisit = &self->_lastVisit;
  if (!self->_lastVisit || ([a3 visitTime], v7 = v6, -[WBSHistoryVisit visitTime](*p_lastVisit, "visitTime"), v7 >= v8))
  {
    objc_storeStrong(p_lastVisit, a3);
  }

  visits = self->_visits;

  [(NSMutableArray *)visits addObject:a3];
}

- (void)wasRedirectedFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WBSHistoryItemSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WBSHistoryItem_wasRedirectedFrom_to___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

uint64_t __39__WBSHistoryItem_wasRedirectedFrom_to___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRedirectSource:*(a1 + 40)];
  [*(a1 + 40) setRedirectDestination:*(a1 + 32)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 _wasVisitedOnSynchronizationQueue:v3];
}

- (void)removeVisits:(id)a3 candidateLastVisit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = WBSHistoryItemSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSHistoryItem_removeVisits_candidateLastVisit___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)removeVisitsOnSynchronizationQueue:(id)a3 candidateLastVisit:(id)a4
{
  v11 = a4;
  v7 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v8 = [(WBSHistoryItem *)self _visitsPendingWriteSetCreatingIfNeeded:0];
  [v8 minusSet:v7];
  if (![v8 count])
  {
    [(WBSHistoryItem *)self clearVisitsPendingWriteToDataStoreFromSynchronizationQueue];
  }

  lastVisit = self->_lastVisit;
  p_lastVisit = &self->_lastVisit;
  if ([v7 containsObject:lastVisit])
  {
    objc_storeStrong(p_lastVisit, a4);
  }
}

- (void)visitWasModified:(id)a3
{
  v4 = a3;
  v5 = WBSHistoryItemSynchronizationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__WBSHistoryItem_visitWasModified___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)visitForTimeOnSynchronizationQueue:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_visits;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 visitTime];
        if (v9 == a3)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_visitsPendingWriteSetCreatingIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [visitsPendingWriteTable objectForKey:self];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !v3;
  }

  if (!v6)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v7 = visitsPendingWriteTable;
    if (!visitsPendingWriteTable)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:1];
      v9 = visitsPendingWriteTable;
      visitsPendingWriteTable = v8;

      v7 = visitsPendingWriteTable;
    }

    [v7 setObject:v5 forKey:self];
  }

  return v5;
}

- (void)_addVisitToPendingWriteSet:(id)a3
{
  v5 = a3;
  v4 = [(WBSHistoryItem *)self _visitsPendingWriteSetCreatingIfNeeded:1];
  [v4 addObject:v5];
}

- (BOOL)_visitsPendingWriteSetContains:(id)a3
{
  v4 = a3;
  v5 = [(WBSHistoryItem *)self _visitsPendingWriteSetCreatingIfNeeded:0];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (NSSet)visitsPendingWriteToDataStoreOnSynchronizationQueue
{
  v2 = [(WBSHistoryItem *)self _visitsPendingWriteSetCreatingIfNeeded:0];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 copy];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  return v4;
}

- (void)clearVisitsPendingWriteToDataStoreFromSynchronizationQueue
{
  [visitsPendingWriteTable removeObjectForKey:self];
  if (![visitsPendingWriteTable count])
  {
    v2 = visitsPendingWriteTable;
    visitsPendingWriteTable = 0;
  }
}

- (void)updateWithServiceItem:(id)a3
{
  v4 = a3;
  self->_databaseID = [v4 databaseID];
  self->_statusCode = [v4 statusCode];
}

- (WBSHistoryItem)initWithHistoryStreamedItem:(const _HistoryStreamedItem *)a3
{
  v9.receiver = self;
  v9.super_class = WBSHistoryItem;
  v4 = [(WBSHistoryItem *)&v9 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->var6];
    v6 = [(WBSHistoryItem *)v4 initWithURLString:v5];
    v4 = v6;
    if (v6)
    {
      v6->_databaseID = a3->var1;
      v6->_statusCode = a3->var5;
      v7 = v6;
    }
  }

  return v4;
}

- (void)updateWithStreamedItem:(const _HistoryStreamedItem *)a3
{
  var1 = a3->var1;
  var5 = a3->var5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSHistoryItem_HistoryStreamedItem__updateWithStreamedItem___block_invoke;
  block[3] = &unk_1E7FC7028;
  block[4] = self;
  block[5] = var1;
  block[6] = var5;
  dispatch_async(WBSHistoryItemSynchronizationQueue, block);
}

void *__62__WBSHistoryItem_HistoryStreamedItem__updateWithStreamedItem___block_invoke(void *result)
{
  v1 = result[4];
  if (!*(v1 + 16))
  {
    *(v1 + 16) = result[5];
    v1 = result[4];
  }

  *(v1 + 48) = result[6];
  return result;
}

- (void)updateLastVisitIfNil:(id)a3
{
  v5 = a3;
  lastVisit = self->_lastVisit;
  p_lastVisit = &self->_lastVisit;
  if (!lastVisit)
  {
    v8 = v5;
    objc_storeStrong(p_lastVisit, a3);
    v5 = v8;
  }
}

@end