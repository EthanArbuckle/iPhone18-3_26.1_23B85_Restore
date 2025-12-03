@interface WBSHistoryTopicTag
+ (void)initialize;
- (BOOL)containsHistoryItem:(id)item;
- (NSArray)historyItems;
- (WBSHistoryTopicTag)initWithTag:(id)tag historyItems:(id)items;
- (WBSHistoryTopicTag)initWithTitle:(id)title identifier:(id)identifier databaseID:(int64_t)d modificationTimestamp:(double)timestamp level:(int64_t)level;
- (void)_historyItemsWereRemoved:(id)removed;
- (void)dealloc;
- (void)groupHistoryItemsBySessionWithCompletionHandler:(id)handler;
- (void)removeHistoryItems:(id)items;
- (void)tagHistoryItem:(id)item;
@end

@implementation WBSHistoryTopicTag

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = dispatch_queue_create("com.apple.SafariShared.WBSHistoryTopicTag.Synchronization", 0);
    v3 = historyTopicSynchronizationQueue;
    historyTopicSynchronizationQueue = v2;
  }
}

- (WBSHistoryTopicTag)initWithTag:(id)tag historyItems:(id)items
{
  itemsCopy = items;
  tagCopy = tag;
  title = [tagCopy title];
  identifier = [tagCopy identifier];
  databaseID = [tagCopy databaseID];
  [tagCopy modificationTimestamp];
  v12 = v11;
  level = [tagCopy level];

  v14 = [(WBSHistoryTopicTag *)self initWithTitle:title identifier:identifier databaseID:databaseID modificationTimestamp:level level:v12];
  if (v14)
  {
    [(NSMutableOrderedSet *)v14->_taggedItems addObjectsFromArray:itemsCopy];
    v15 = v14;
  }

  return v14;
}

- (WBSHistoryTopicTag)initWithTitle:(id)title identifier:(id)identifier databaseID:(int64_t)d modificationTimestamp:(double)timestamp level:(int64_t)level
{
  v13.receiver = self;
  v13.super_class = WBSHistoryTopicTag;
  v7 = [(WBSHistoryTag *)&v13 initWithTitle:title identifier:identifier databaseID:d modificationTimestamp:level level:timestamp];
  if (v7)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    taggedItems = v7->_taggedItems;
    v7->_taggedItems = orderedSet;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__historyItemsWereRemoved_ name:@"WBSHistoryItemsWereRemovedNotification" object:0];

    v11 = v7;
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WBSHistoryTopicTag;
  [(WBSHistoryTopicTag *)&v4 dealloc];
}

- (void)tagHistoryItem:(id)item
{
  itemCopy = item;
  v5 = historyTopicSynchronizationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__WBSHistoryTopicTag_tagHistoryItem___block_invoke;
  v7[3] = &unk_1E7FB6E30;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  dispatch_async(v5, v7);
}

uint64_t __37__WBSHistoryTopicTag_tagHistoryItem___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);

  return [v3 safari_insertObject:v2 inSortedOrderUsingComparator:&__block_literal_global_71];
}

uint64_t __37__WBSHistoryTopicTag_tagHistoryItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastVisitedDate];
  v6 = [v4 lastVisitedDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (NSArray)historyItems
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__27;
  v9 = __Block_byref_object_dispose__27;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__WBSHistoryTopicTag_historyItems__block_invoke;
  v4[3] = &unk_1E7FB7490;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(historyTopicSynchronizationQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__WBSHistoryTopicTag_historyItems__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) array];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)groupHistoryItemsBySessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = historyTopicSynchronizationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__WBSHistoryTopicTag_groupHistoryItemsBySessionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB81B8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __70__WBSHistoryTopicTag_groupHistoryItemsBySessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(*(a1 + 32) + 48);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 lastVisitedDate];
        v10 = [v9 safari_startOfDay];

        v11 = [v2 objectForKeyedSubscript:v10];
        if (!v11)
        {
          v11 = [MEMORY[0x1E695DF70] array];
          [v2 setObject:v11 forKeyedSubscript:v10];
        }

        [v11 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__WBSHistoryTopicTag_groupHistoryItemsBySessionWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_1E7FC83A8;
  v15 = v12;
  v13 = v12;
  [v2 enumerateKeysAndObjectsUsingBlock:v14];
  [v13 sortUsingComparator:&__block_literal_global_17_0];
  (*(*(a1 + 40) + 16))();
}

void __70__WBSHistoryTopicTag_groupHistoryItemsBySessionWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v5 sortUsingComparator:&__block_literal_global_12_0];
  v7 = *(a1 + 32);
  v8 = [[WBSHistorySessionWithItems alloc] initWithSessionStartDate:v6 items:v5];

  [v7 addObject:v8];
}

uint64_t __70__WBSHistoryTopicTag_groupHistoryItemsBySessionWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 lastVisitedTimeInterval];
  v6 = v5;
  [v4 lastVisitedTimeInterval];
  v8 = v7;

  if (v6 < v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __70__WBSHistoryTopicTag_groupHistoryItemsBySessionWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  if ([v5 compare:v6] == 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)containsHistoryItem:(id)item
{
  itemCopy = item;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = historyTopicSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__WBSHistoryTopicTag_containsHistoryItem___block_invoke;
  block[3] = &unk_1E7FC83F0;
  v9 = itemCopy;
  v10 = &v11;
  block[4] = self;
  v6 = itemCopy;
  dispatch_sync(v5, block);
  LOBYTE(v5) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t __42__WBSHistoryTopicTag_containsHistoryItem___block_invoke(void *a1)
{
  result = [*(a1[4] + 48) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)removeHistoryItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = historyTopicSynchronizationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__WBSHistoryTopicTag_removeHistoryItems___block_invoke;
    v6[3] = &unk_1E7FB6E30;
    v6[4] = self;
    v7 = itemsCopy;
    dispatch_async(v5, v6);
  }
}

- (void)_historyItemsWereRemoved:(id)removed
{
  userInfo = [removed userInfo];
  v4 = [userInfo safari_arrayForKey:@"WBSHistoryItemsKey"];
  [(WBSHistoryTopicTag *)self removeHistoryItems:v4];
}

@end