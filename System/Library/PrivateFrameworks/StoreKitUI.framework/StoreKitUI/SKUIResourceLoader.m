@interface SKUIResourceLoader
- (BOOL)loadResourceWithRequest:(id)a3 reason:(int64_t)a4;
- (BOOL)trySetReason:(int64_t)a3 forRequestWithIdentifier:(unint64_t)a4;
- (NSOperationQueue)delegateQueue;
- (NSString)description;
- (SKUIResourceLoader)init;
- (SKUIResourceLoader)initWithClientContext:(id)a3;
- (SKUIResourceLoader)initWithOperationQueue:(id)a3 clientContext:(id)a4;
- (SKUIResourceLoaderDelegate)delegate;
- (id)cachedResourceForRequestIdentifier:(unint64_t)a3;
- (int64_t)_qualityOfService;
- (int64_t)_queuePriorityForLoadReason:(int64_t)a3;
- (void)_finishLoadForRequest:(id)a3 withResource:(id)a4;
- (void)_reprioritizeOperations;
- (void)_sendDidBeginLoadingIfNecessary;
- (void)_sendDidIdleIfNecessary;
- (void)_sendDidLoadAllForReason:(int64_t)a3;
- (void)_updateLoadReason:(int64_t)a3 forOperation:(id)a4;
- (void)addResource:(id)a3 forRequestIdentifier:(unint64_t)a4;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)cancelAllRequests;
- (void)cancelRequestWithIdentifier:(unint64_t)a3;
- (void)dealloc;
- (void)description;
- (void)enterBackground;
- (void)enterForeground;
@end

@implementation SKUIResourceLoader

- (SKUIResourceLoader)initWithClientContext:(id)a3
{
  v4 = a3;
  v5 = [v4 resourceLoadQueue];
  v6 = [(SKUIResourceLoader *)self initWithOperationQueue:v5 clientContext:v4];

  return v6;
}

- (SKUIResourceLoader)initWithOperationQueue:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        [(SKUIResourceLoader *)v9 initWithOperationQueue:v10 clientContext:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v28.receiver = self;
  v28.super_class = SKUIResourceLoader;
  v17 = [(SKUIResourceLoader *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientContext, a4);
    if (v7)
    {
      objc_storeStrong(&v18->_operationQueue, a3);
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x277CCABD8]);
      operationQueue = v18->_operationQueue;
      v18->_operationQueue = v19;

      [(NSOperationQueue *)v18->_operationQueue setName:@"com.apple.StoreKitUI.SKUIResourceLoader.queueFor28304306Fix"];
      [(NSOperationQueue *)v18->_operationQueue setMaxConcurrentOperationCount:8];
    }

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    operationsByRequestID = v18->_operationsByRequestID;
    v18->_operationsByRequestID = v21;

    v23 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    requestsByCacheKey = v18->_requestsByCacheKey;
    v18->_requestsByCacheKey = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEA78]);
    resourcesByRequestID = v18->_resourcesByRequestID;
    v18->_resourcesByRequestID = v25;

    [(NSCache *)v18->_resourcesByRequestID setCountLimit:750];
    [(NSCache *)v18->_resourcesByRequestID setDelegate:v18];
  }

  return v18;
}

- (SKUIResourceLoader)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKUIResourceLoader must be initialized with an operation queue"];

  return 0;
}

- (void)dealloc
{
  [(NSCache *)self->_resourcesByRequestID setDelegate:0];
  [(SKUIResourceLoader *)self cancelAllRequests];
  v3.receiver = self;
  v3.super_class = SKUIResourceLoader;
  [(SKUIResourceLoader *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SKUIResourceLoader *)self name];
  v7 = [(SKUIResourceLoader *)self operationQueue];
  inBackground = self->_inBackground;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIResourceLoader description];
  }

  if (inBackground)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = SKUIResourceLoadCountMapGet(self->_requestCountMap, 1);
  v12 = SKUIResourceLoadCountMapGet(self->_requestCountMap, 0);
  v13 = [v10 stringWithFormat:@"{onScreen: %ld, cacheAhead: %ld, cacheFarAhead: %ld}", v11, v12, SKUIResourceLoadCountMapGet(self->_requestCountMap, -1)];
  v14 = [v3 stringWithFormat:@"<%@:%p name = %@; operationQueue = %@; inBackground = %@; loadCounts = %@>", v5, self, v6, v7, v9, v13];;

  return v14;
}

- (void)addResource:(id)a3 forRequestIdentifier:(unint64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v10 = [[v6 alloc] initWithUnsignedInteger:a4];
  resourcesByRequestID = self->_resourcesByRequestID;
  v9 = [[_SKUIResourceCacheValue alloc] initWithResource:v7 requestCacheKey:0];

  [(NSCache *)resourcesByRequestID setObject:v9 forKey:v10];
}

- (id)cachedResourceForRequestIdentifier:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  v5 = [(NSCache *)self->_resourcesByRequestID objectForKey:v4];
  v6 = [v5 resource];

  return v6;
}

- (void)cancelAllRequests
{
  v3 = [(NSMutableDictionary *)self->_operationsByRequestID allValues];
  [v3 makeObjectsPerformSelector:sel_cancel];

  [(NSMutableDictionary *)self->_operationsByRequestID removeAllObjects];
  if (SKUIResourceLoadCountMapClear(self->_requestCountMap, 1))
  {
    [(SKUIResourceLoader *)self _sendDidLoadAllForReason:1];
  }

  if (SKUIResourceLoadCountMapClear(self->_requestCountMap, 0))
  {
    [(SKUIResourceLoader *)self _sendDidLoadAllForReason:0];
  }

  if (SKUIResourceLoadCountMapClear(self->_requestCountMap, -1))
  {

    [(SKUIResourceLoader *)self _sendDidLoadAllForReason:-1];
  }
}

- (void)cancelRequestWithIdentifier:(unint64_t)a3
{
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  v4 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 cancel];
    [(NSMutableDictionary *)self->_operationsByRequestID removeObjectForKey:v7];
    v6 = [v5 _loadReason];
    if (!SKUIResourceLoadCountMapDecrement(self->_requestCountMap, v6))
    {
      [(SKUIResourceLoader *)self _sendDidLoadAllForReason:v6];
    }
  }
}

- (void)enterBackground
{
  if (!self->_inBackground)
  {
    self->_inBackground = 1;
    [(SKUIResourceLoader *)self _reprioritizeOperations];
  }
}

- (void)enterForeground
{
  if (self->_inBackground)
  {
    self->_inBackground = 0;
    [(SKUIResourceLoader *)self _reprioritizeOperations];
  }
}

- (NSOperationQueue)delegateQueue
{
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    v3 = delegateQueue;
  }

  else
  {
    v3 = [MEMORY[0x277CCABD8] mainQueue];
  }

  return v3;
}

- (BOOL)loadResourceWithRequest:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v6, "requestIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v7];
  if (v8)
  {
    v9 = [(SKUIResourceLoader *)self _queuePriorityForLoadReason:a4];
    if (v9 > [v8 queuePriority])
    {
      [(SKUIResourceLoader *)self _updateLoadReason:a4 forOperation:v8];
      [v8 setQueuePriority:v9];
    }
  }

  else
  {
    v10 = [v6 newLoadOperation];
    [v10 setClientContext:self->_clientContext];
    [v10 _setLoadReason:a4];
    [v10 setQualityOfService:{-[SKUIResourceLoader _qualityOfService](self, "_qualityOfService")}];
    [v10 setQueuePriority:{-[SKUIResourceLoader _queuePriorityForLoadReason:](self, "_queuePriorityForLoadReason:", a4)}];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__SKUIResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v14[3] = &unk_2781FB798;
    objc_copyWeak(&v16, &location);
    v11 = v6;
    v15 = v11;
    [v10 setOutputBlock:v14];
    [(SKUIResourceLoader *)self _sendDidBeginLoadingIfNecessary];
    v12 = [v11 cacheKey];
    if (v12)
    {
      [(NSMapTable *)self->_requestsByCacheKey setObject:v7 forKey:v12];
    }

    [(NSMutableDictionary *)self->_operationsByRequestID setObject:v10 forKey:v7];
    [(NSOperationQueue *)self->_operationQueue addOperation:v10];
    SKUIResourceLoadCountMapIncrement(self->_requestCountMap, a4);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v8 == 0;
}

void __53__SKUIResourceLoader_loadResourceWithRequest_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained delegateQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SKUIResourceLoader_loadResourceWithRequest_reason___block_invoke_2;
  v10[3] = &unk_2781FA0C8;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = *(a1 + 32);
  v9 = v5;
  v12 = v9;
  [v8 addOperationWithBlock:v10];

  objc_destroyWeak(&v13);
}

void __53__SKUIResourceLoader_loadResourceWithRequest_reason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishLoadForRequest:*(a1 + 32) withResource:*(a1 + 40)];
}

- (BOOL)trySetReason:(int64_t)a3 forRequestWithIdentifier:(unint64_t)a4
{
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a4];
  v7 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v6];
  if (v7)
  {
    [(SKUIResourceLoader *)self _updateLoadReason:a3 forOperation:v7];
    [v7 setQueuePriority:{-[SKUIResourceLoader _queuePriorityForLoadReason:](self, "_queuePriorityForLoadReason:", a3)}];
  }

  return v7 != 0;
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v8 = a4;
  v5 = [v8 requestCacheKey];

  if (v5)
  {
    requestsByCacheKey = self->_requestsByCacheKey;
    v7 = [v8 requestCacheKey];
    [(NSMapTable *)requestsByCacheKey removeObjectForKey:v7];
  }
}

- (int64_t)_queuePriorityForLoadReason:(int64_t)a3
{
  v3 = 4;
  if ((a3 + 1) < 3)
  {
    v3 = 4 * (a3 + 1);
  }

  v4 = -8;
  if (!a3)
  {
    v4 = -4;
  }

  if (a3 == 1)
  {
    v4 = 0;
  }

  if (self->_inBackground)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (int64_t)_qualityOfService
{
  if (self->_inBackground)
  {
    return 9;
  }

  else
  {
    return 25;
  }
}

- (void)_updateLoadReason:(int64_t)a3 forOperation:(id)a4
{
  v8 = a4;
  v6 = [v8 _loadReason];
  if (v6 != a3)
  {
    v7 = v6;
    [v8 _setLoadReason:a3];
    SKUIResourceLoadCountMapIncrement(self->_requestCountMap, a3);
    if (!SKUIResourceLoadCountMapDecrement(self->_requestCountMap, v7))
    {
      [(SKUIResourceLoader *)self _sendDidLoadAllForReason:v7];
    }
  }
}

- (void)_reprioritizeOperations
{
  operationsByRequestID = self->_operationsByRequestID;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__SKUIResourceLoader__reprioritizeOperations__block_invoke;
  v3[3] = &unk_2781FB7C0;
  v3[4] = self;
  [(NSMutableDictionary *)operationsByRequestID enumerateKeysAndObjectsUsingBlock:v3];
}

void __45__SKUIResourceLoader__reprioritizeOperations__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v5 setQueuePriority:{objc_msgSend(v4, "_queuePriorityForLoadReason:", objc_msgSend(v5, "_loadReason"))}];
  [v5 setQualityOfService:{objc_msgSend(*(a1 + 32), "_qualityOfService")}];
}

- (void)_finishLoadForRequest:(id)a3 withResource:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v15, "requestIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v7];
  v9 = [v8 _loadReason];
  [(NSMutableDictionary *)self->_operationsByRequestID removeObjectForKey:v7];
  if (v6)
  {
    if ([v15 cachesInMemory])
    {
      resourcesByRequestID = self->_resourcesByRequestID;
      v11 = [_SKUIResourceCacheValue alloc];
      v12 = [v15 cacheKey];
      v13 = [(_SKUIResourceCacheValue *)v11 initWithResource:v6 requestCacheKey:v12];
      [(NSCache *)resourcesByRequestID setObject:v13 forKey:v7];
    }

    [v15 finishWithResource:v6];
  }

  else
  {
    v14 = [v15 cacheKey];
    if (v14)
    {
      [(NSMapTable *)self->_requestsByCacheKey removeObjectForKey:v14];
    }
  }

  if (!SKUIResourceLoadCountMapDecrement(self->_requestCountMap, v9))
  {
    [(SKUIResourceLoader *)self _sendDidLoadAllForReason:v9];
  }

  [(SKUIResourceLoader *)self _sendDidIdleIfNecessary];
}

- (void)_sendDidBeginLoadingIfNecessary
{
  if ([(SKUIResourceLoader *)self isIdle])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"SKUIResourceLoaderDidBeginLoadingNotification" object:self];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 resourceLoaderDidBeginLoading:self];
    }
  }
}

- (void)_sendDidIdleIfNecessary
{
  if ([(SKUIResourceLoader *)self isIdle])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"SKUIResourceLoaderDidIdleNotification" object:self];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 resourceLoaderDidIdle:self];
    }
  }
}

- (void)_sendDidLoadAllForReason:(int64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SKUIResourceLoaderLoadReasonUserInfoKey";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 postNotificationName:@"SKUIResourceLoaderDidLoadAllForReasonNotification" object:self userInfo:v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 resourceLoader:self didLoadAllForReason:a3];
  }
}

- (SKUIResourceLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)description
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "SKUIResourceLoadCountMapGetDescription";
}

@end