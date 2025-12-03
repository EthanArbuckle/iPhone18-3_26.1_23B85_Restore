@interface WPAdvertisingRequestsQueue
- (BOOL)isAdvertisingForClientType:(unsigned __int8)type;
- (WPAdvertisingRequestsQueue)init;
- (id)allRequests;
- (unint64_t)count;
- (void)add:(id)add;
- (void)remove:(id)remove;
- (void)removeAll;
- (void)removeRequestsOfClientType:(unsigned __int8)type;
@end

@implementation WPAdvertisingRequestsQueue

- (unint64_t)count
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = [(WPAdvertisingRequestsQueue *)selfCopy queue];
  v4 = [queue count];

  objc_sync_exit(selfCopy);
  return v4;
}

- (id)allRequests
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = [(WPAdvertisingRequestsQueue *)selfCopy queue];
  v4 = [queue copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (WPAdvertisingRequestsQueue)init
{
  v6.receiver = self;
  v6.super_class = WPAdvertisingRequestsQueue;
  v2 = [(WPAdvertisingRequestsQueue *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    queue = v2->_queue;
    v2->_queue = array;
  }

  return v2;
}

- (void)add:(id)add
{
  addCopy = add;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = [(WPAdvertisingRequestsQueue *)selfCopy queue];
  v6 = [queue count];

  queue2 = [(WPAdvertisingRequestsQueue *)selfCopy queue];
  if (v6)
  {
    queue3 = [(WPAdvertisingRequestsQueue *)selfCopy queue];
    v9 = [queue2 indexOfObject:addCopy inSortedRange:0 options:objc_msgSend(queue3 usingComparator:{"count"), 1024, &__block_literal_global_8}];

    queue2 = [(WPAdvertisingRequestsQueue *)selfCopy queue];
    [queue2 insertObject:addCopy atIndex:v9];
  }

  else
  {
    [queue2 addObject:addCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)remove:(id)remove
{
  removeCopy = remove;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = [(WPAdvertisingRequestsQueue *)selfCopy queue];
  [queue removeObject:removeCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeRequestsOfClientType:(unsigned __int8)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = [(WPAdvertisingRequestsQueue *)selfCopy queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WPAdvertisingRequestsQueue_removeRequestsOfClientType___block_invoke;
  v6[3] = &unk_279E593A8;
  typeCopy = type;
  v6[4] = selfCopy;
  [queue enumerateObjectsUsingBlock:v6];

  objc_sync_exit(selfCopy);
}

void __57__WPAdvertisingRequestsQueue_removeRequestsOfClientType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 clientType] == *(a1 + 40))
  {
    v5 = [*(a1 + 32) queue];
    [v5 removeObjectAtIndex:a3];
  }
}

- (BOOL)isAdvertisingForClientType:(unsigned __int8)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = [(WPAdvertisingRequestsQueue *)selfCopy queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WPAdvertisingRequestsQueue_isAdvertisingForClientType___block_invoke;
  v7[3] = &unk_279E593D0;
  typeCopy = type;
  v7[4] = &v9;
  [queue enumerateObjectsUsingBlock:v7];

  objc_sync_exit(selfCopy);
  LOBYTE(selfCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return selfCopy;
}

uint64_t __57__WPAdvertisingRequestsQueue_isAdvertisingForClientType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 clientType];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)removeAll
{
  obj = self;
  objc_sync_enter(obj);
  queue = [(WPAdvertisingRequestsQueue *)obj queue];
  [queue removeAllObjects];

  objc_sync_exit(obj);
}

@end