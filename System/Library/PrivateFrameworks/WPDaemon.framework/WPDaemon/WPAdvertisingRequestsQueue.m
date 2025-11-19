@interface WPAdvertisingRequestsQueue
- (BOOL)isAdvertisingForClientType:(unsigned __int8)a3;
- (WPAdvertisingRequestsQueue)init;
- (id)allRequests;
- (unint64_t)count;
- (void)add:(id)a3;
- (void)remove:(id)a3;
- (void)removeAll;
- (void)removeRequestsOfClientType:(unsigned __int8)a3;
@end

@implementation WPAdvertisingRequestsQueue

- (unint64_t)count
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(WPAdvertisingRequestsQueue *)v2 queue];
  v4 = [v3 count];

  objc_sync_exit(v2);
  return v4;
}

- (id)allRequests
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(WPAdvertisingRequestsQueue *)v2 queue];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (WPAdvertisingRequestsQueue)init
{
  v6.receiver = self;
  v6.super_class = WPAdvertisingRequestsQueue;
  v2 = [(WPAdvertisingRequestsQueue *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)add:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(WPAdvertisingRequestsQueue *)v4 queue];
  v6 = [v5 count];

  v7 = [(WPAdvertisingRequestsQueue *)v4 queue];
  if (v6)
  {
    v8 = [(WPAdvertisingRequestsQueue *)v4 queue];
    v9 = [v7 indexOfObject:v10 inSortedRange:0 options:objc_msgSend(v8 usingComparator:{"count"), 1024, &__block_literal_global_8}];

    v7 = [(WPAdvertisingRequestsQueue *)v4 queue];
    [v7 insertObject:v10 atIndex:v9];
  }

  else
  {
    [v7 addObject:v10];
  }

  objc_sync_exit(v4);
}

- (void)remove:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(WPAdvertisingRequestsQueue *)v4 queue];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (void)removeRequestsOfClientType:(unsigned __int8)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(WPAdvertisingRequestsQueue *)v4 queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__WPAdvertisingRequestsQueue_removeRequestsOfClientType___block_invoke;
  v6[3] = &unk_279E593A8;
  v7 = a3;
  v6[4] = v4;
  [v5 enumerateObjectsUsingBlock:v6];

  objc_sync_exit(v4);
}

void __57__WPAdvertisingRequestsQueue_removeRequestsOfClientType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 clientType] == *(a1 + 40))
  {
    v5 = [*(a1 + 32) queue];
    [v5 removeObjectAtIndex:a3];
  }
}

- (BOOL)isAdvertisingForClientType:(unsigned __int8)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(WPAdvertisingRequestsQueue *)v4 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WPAdvertisingRequestsQueue_isAdvertisingForClientType___block_invoke;
  v7[3] = &unk_279E593D0;
  v8 = a3;
  v7[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v7];

  objc_sync_exit(v4);
  LOBYTE(v4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
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
  v2 = [(WPAdvertisingRequestsQueue *)obj queue];
  [v2 removeAllObjects];

  objc_sync_exit(obj);
}

@end