@interface TPSRequestController
- (TPSRequestController)init;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)addRequest:(id)a3;
- (void)execute;
- (void)executeRequest:(id)a3;
- (void)postResponse:(id)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation TPSRequestController

- (TPSRequestController)init
{
  v17.receiver = self;
  v17.super_class = TPSRequestController;
  v2 = [(TPSRequestController *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToQueue = v2->_delegateToQueue;
    v2->_delegateToQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    requests = v2->_requests;
    v2->_requests = v5;

    v7 = MEMORY[0x277CCACA8];
    v8 = [objc_opt_class() tps_classIdentifier];
    v9 = NSStringFromSelector(sel_serialDispatchQueue);
    v10 = [v7 stringWithFormat:@"%@.%@", v8, v9];

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create([v10 UTF8String], v11);
    serialDispatchQueue = v2->_serialDispatchQueue;
    v2->_serialDispatchQueue = v12;

    v14 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_serialDispatchQueue];
    telephonyClient = v2->_telephonyClient;
    v2->_telephonyClient = v14;

    [(CoreTelephonyClient *)v2->_telephonyClient setDelegate:v2];
  }

  return v2;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TPSRequestController *)self serialDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TPSRequestController_addDelegate_queue___block_invoke;
  block[3] = &unk_2782E3888;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __42__TPSRequestController_addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequestController *)self serialDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__TPSRequestController_removeDelegate___block_invoke;
  v7[3] = &unk_2782E39D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __39__TPSRequestController_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)addRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequestController *)self serialDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__TPSRequestController_addRequest___block_invoke;
  v7[3] = &unk_2782E39D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __35__TPSRequestController_addRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requests];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 execute];
}

- (void)execute
{
  v3 = [(TPSRequestController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TPSRequestController *)self pendingRequest];
  if (!v4)
  {
    v5 = [(TPSRequestController *)self requests];
    v7 = [v5 firstObject];

    v4 = v7;
    if (v7)
    {
      [(TPSRequestController *)self setPendingRequest:v7];
      v6 = [(TPSRequestController *)self requests];
      [v6 removeObject:v7];

      [(TPSRequestController *)self executeRequest:v7];
      v4 = v7;
    }
  }
}

- (void)executeRequest:(id)a3
{
  v4 = a3;
  v5 = [(TPSRequestController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [TPSResponse alloc];
  v7 = [v4 subscriptionContext];

  v8 = [(TPSResponse *)v6 initWithSubscriptionContext:v7 error:0];
  [(TPSRequestController *)self postResponse:v8];
}

- (void)postResponse:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSRequestController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(TPSRequestController *)self delegateToQueue];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = [(TPSRequestController *)self delegateToQueue];
        v12 = [v11 objectForKey:v10];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__TPSRequestController_postResponse___block_invoke;
        block[3] = &unk_2782E3888;
        block[4] = v10;
        block[5] = self;
        v20 = v4;
        dispatch_async(v12, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v13 = [(TPSRequestController *)self pendingRequest];
  v14 = [v13 subscriptionContext];
  v15 = [v4 subscriptionContext];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
    [(TPSRequestController *)self setPendingRequest:0];
    [(TPSRequestController *)self execute];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __37__TPSRequestController_postResponse___block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 requestController:v5 didReceiveResponse:v6];
  }

  return result;
}

@end