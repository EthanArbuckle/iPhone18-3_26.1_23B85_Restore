@interface TPSRequestController
- (TPSRequestController)init;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addRequest:(id)request;
- (void)execute;
- (void)executeRequest:(id)request;
- (void)postResponse:(id)response;
- (void)removeDelegate:(id)delegate;
@end

@implementation TPSRequestController

- (TPSRequestController)init
{
  v17.receiver = self;
  v17.super_class = TPSRequestController;
  v2 = [(TPSRequestController *)&v17 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegateToQueue = v2->_delegateToQueue;
    v2->_delegateToQueue = weakToStrongObjectsMapTable;

    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    requests = v2->_requests;
    v2->_requests = v5;

    v7 = MEMORY[0x277CCACA8];
    tps_classIdentifier = [objc_opt_class() tps_classIdentifier];
    v9 = NSStringFromSelector(sel_serialDispatchQueue);
    v10 = [v7 stringWithFormat:@"%@.%@", tps_classIdentifier, v9];

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

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  serialDispatchQueue = [(TPSRequestController *)self serialDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TPSRequestController_addDelegate_queue___block_invoke;
  block[3] = &unk_2782E3888;
  block[4] = self;
  v12 = queueCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(serialDispatchQueue, block);
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

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  serialDispatchQueue = [(TPSRequestController *)self serialDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__TPSRequestController_removeDelegate___block_invoke;
  v7[3] = &unk_2782E39D0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(serialDispatchQueue, v7);
}

void __39__TPSRequestController_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)addRequest:(id)request
{
  requestCopy = request;
  serialDispatchQueue = [(TPSRequestController *)self serialDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__TPSRequestController_addRequest___block_invoke;
  v7[3] = &unk_2782E39D0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(serialDispatchQueue, v7);
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
  serialDispatchQueue = [(TPSRequestController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  pendingRequest = [(TPSRequestController *)self pendingRequest];
  if (!pendingRequest)
  {
    requests = [(TPSRequestController *)self requests];
    firstObject = [requests firstObject];

    pendingRequest = firstObject;
    if (firstObject)
    {
      [(TPSRequestController *)self setPendingRequest:firstObject];
      requests2 = [(TPSRequestController *)self requests];
      [requests2 removeObject:firstObject];

      [(TPSRequestController *)self executeRequest:firstObject];
      pendingRequest = firstObject;
    }
  }
}

- (void)executeRequest:(id)request
{
  requestCopy = request;
  serialDispatchQueue = [(TPSRequestController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = [TPSResponse alloc];
  subscriptionContext = [requestCopy subscriptionContext];

  v8 = [(TPSResponse *)v6 initWithSubscriptionContext:subscriptionContext error:0];
  [(TPSRequestController *)self postResponse:v8];
}

- (void)postResponse:(id)response
{
  v26 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  serialDispatchQueue = [(TPSRequestController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

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
        delegateToQueue = [(TPSRequestController *)self delegateToQueue];
        v12 = [delegateToQueue objectForKey:v10];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__TPSRequestController_postResponse___block_invoke;
        block[3] = &unk_2782E3888;
        block[4] = v10;
        block[5] = self;
        v20 = responseCopy;
        dispatch_async(v12, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  pendingRequest = [(TPSRequestController *)self pendingRequest];
  subscriptionContext = [pendingRequest subscriptionContext];
  subscriptionContext2 = [responseCopy subscriptionContext];
  v16 = [subscriptionContext isEqual:subscriptionContext2];

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