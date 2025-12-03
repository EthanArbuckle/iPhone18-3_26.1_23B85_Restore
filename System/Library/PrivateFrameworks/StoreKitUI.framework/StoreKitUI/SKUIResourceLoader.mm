@interface SKUIResourceLoader
- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason;
- (BOOL)trySetReason:(int64_t)reason forRequestWithIdentifier:(unint64_t)identifier;
- (NSOperationQueue)delegateQueue;
- (NSString)description;
- (SKUIResourceLoader)init;
- (SKUIResourceLoader)initWithClientContext:(id)context;
- (SKUIResourceLoader)initWithOperationQueue:(id)queue clientContext:(id)context;
- (SKUIResourceLoaderDelegate)delegate;
- (id)cachedResourceForRequestIdentifier:(unint64_t)identifier;
- (int64_t)_qualityOfService;
- (int64_t)_queuePriorityForLoadReason:(int64_t)reason;
- (void)_finishLoadForRequest:(id)request withResource:(id)resource;
- (void)_reprioritizeOperations;
- (void)_sendDidBeginLoadingIfNecessary;
- (void)_sendDidIdleIfNecessary;
- (void)_sendDidLoadAllForReason:(int64_t)reason;
- (void)_updateLoadReason:(int64_t)reason forOperation:(id)operation;
- (void)addResource:(id)resource forRequestIdentifier:(unint64_t)identifier;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)cancelAllRequests;
- (void)cancelRequestWithIdentifier:(unint64_t)identifier;
- (void)dealloc;
- (void)description;
- (void)enterBackground;
- (void)enterForeground;
@end

@implementation SKUIResourceLoader

- (SKUIResourceLoader)initWithClientContext:(id)context
{
  contextCopy = context;
  resourceLoadQueue = [contextCopy resourceLoadQueue];
  v6 = [(SKUIResourceLoader *)self initWithOperationQueue:resourceLoadQueue clientContext:contextCopy];

  return v6;
}

- (SKUIResourceLoader)initWithOperationQueue:(id)queue clientContext:(id)context
{
  queueCopy = queue;
  contextCopy = context;
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
    objc_storeStrong(&v17->_clientContext, context);
    if (queueCopy)
    {
      objc_storeStrong(&v18->_operationQueue, queue);
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
  name = [(SKUIResourceLoader *)self name];
  operationQueue = [(SKUIResourceLoader *)self operationQueue];
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
  v14 = [v3 stringWithFormat:@"<%@:%p name = %@; operationQueue = %@; inBackground = %@; loadCounts = %@>", v5, self, name, operationQueue, v9, v13];;

  return v14;
}

- (void)addResource:(id)resource forRequestIdentifier:(unint64_t)identifier
{
  v6 = MEMORY[0x277CCABB0];
  resourceCopy = resource;
  v10 = [[v6 alloc] initWithUnsignedInteger:identifier];
  resourcesByRequestID = self->_resourcesByRequestID;
  v9 = [[_SKUIResourceCacheValue alloc] initWithResource:resourceCopy requestCacheKey:0];

  [(NSCache *)resourcesByRequestID setObject:v9 forKey:v10];
}

- (id)cachedResourceForRequestIdentifier:(unint64_t)identifier
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:identifier];
  v5 = [(NSCache *)self->_resourcesByRequestID objectForKey:v4];
  resource = [v5 resource];

  return resource;
}

- (void)cancelAllRequests
{
  allValues = [(NSMutableDictionary *)self->_operationsByRequestID allValues];
  [allValues makeObjectsPerformSelector:sel_cancel];

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

- (void)cancelRequestWithIdentifier:(unint64_t)identifier
{
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:identifier];
  v4 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 cancel];
    [(NSMutableDictionary *)self->_operationsByRequestID removeObjectForKey:v7];
    _loadReason = [v5 _loadReason];
    if (!SKUIResourceLoadCountMapDecrement(self->_requestCountMap, _loadReason))
    {
      [(SKUIResourceLoader *)self _sendDidLoadAllForReason:_loadReason];
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
    mainQueue = delegateQueue;
  }

  else
  {
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  }

  return mainQueue;
}

- (BOOL)loadResourceWithRequest:(id)request reason:(int64_t)reason
{
  requestCopy = request;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(requestCopy, "requestIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v7];
  if (v8)
  {
    v9 = [(SKUIResourceLoader *)self _queuePriorityForLoadReason:reason];
    if (v9 > [v8 queuePriority])
    {
      [(SKUIResourceLoader *)self _updateLoadReason:reason forOperation:v8];
      [v8 setQueuePriority:v9];
    }
  }

  else
  {
    newLoadOperation = [requestCopy newLoadOperation];
    [newLoadOperation setClientContext:self->_clientContext];
    [newLoadOperation _setLoadReason:reason];
    [newLoadOperation setQualityOfService:{-[SKUIResourceLoader _qualityOfService](self, "_qualityOfService")}];
    [newLoadOperation setQueuePriority:{-[SKUIResourceLoader _queuePriorityForLoadReason:](self, "_queuePriorityForLoadReason:", reason)}];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__SKUIResourceLoader_loadResourceWithRequest_reason___block_invoke;
    v14[3] = &unk_2781FB798;
    objc_copyWeak(&v16, &location);
    v11 = requestCopy;
    v15 = v11;
    [newLoadOperation setOutputBlock:v14];
    [(SKUIResourceLoader *)self _sendDidBeginLoadingIfNecessary];
    cacheKey = [v11 cacheKey];
    if (cacheKey)
    {
      [(NSMapTable *)self->_requestsByCacheKey setObject:v7 forKey:cacheKey];
    }

    [(NSMutableDictionary *)self->_operationsByRequestID setObject:newLoadOperation forKey:v7];
    [(NSOperationQueue *)self->_operationQueue addOperation:newLoadOperation];
    SKUIResourceLoadCountMapIncrement(self->_requestCountMap, reason);

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

- (BOOL)trySetReason:(int64_t)reason forRequestWithIdentifier:(unint64_t)identifier
{
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:identifier];
  v7 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v6];
  if (v7)
  {
    [(SKUIResourceLoader *)self _updateLoadReason:reason forOperation:v7];
    [v7 setQueuePriority:{-[SKUIResourceLoader _queuePriorityForLoadReason:](self, "_queuePriorityForLoadReason:", reason)}];
  }

  return v7 != 0;
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  objectCopy = object;
  requestCacheKey = [objectCopy requestCacheKey];

  if (requestCacheKey)
  {
    requestsByCacheKey = self->_requestsByCacheKey;
    requestCacheKey2 = [objectCopy requestCacheKey];
    [(NSMapTable *)requestsByCacheKey removeObjectForKey:requestCacheKey2];
  }
}

- (int64_t)_queuePriorityForLoadReason:(int64_t)reason
{
  v3 = 4;
  if ((reason + 1) < 3)
  {
    v3 = 4 * (reason + 1);
  }

  v4 = -8;
  if (!reason)
  {
    v4 = -4;
  }

  if (reason == 1)
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

- (void)_updateLoadReason:(int64_t)reason forOperation:(id)operation
{
  operationCopy = operation;
  _loadReason = [operationCopy _loadReason];
  if (_loadReason != reason)
  {
    v7 = _loadReason;
    [operationCopy _setLoadReason:reason];
    SKUIResourceLoadCountMapIncrement(self->_requestCountMap, reason);
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

- (void)_finishLoadForRequest:(id)request withResource:(id)resource
{
  requestCopy = request;
  resourceCopy = resource;
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(requestCopy, "requestIdentifier")}];
  v8 = [(NSMutableDictionary *)self->_operationsByRequestID objectForKey:v7];
  _loadReason = [v8 _loadReason];
  [(NSMutableDictionary *)self->_operationsByRequestID removeObjectForKey:v7];
  if (resourceCopy)
  {
    if ([requestCopy cachesInMemory])
    {
      resourcesByRequestID = self->_resourcesByRequestID;
      v11 = [_SKUIResourceCacheValue alloc];
      cacheKey = [requestCopy cacheKey];
      v13 = [(_SKUIResourceCacheValue *)v11 initWithResource:resourceCopy requestCacheKey:cacheKey];
      [(NSCache *)resourcesByRequestID setObject:v13 forKey:v7];
    }

    [requestCopy finishWithResource:resourceCopy];
  }

  else
  {
    cacheKey2 = [requestCopy cacheKey];
    if (cacheKey2)
    {
      [(NSMapTable *)self->_requestsByCacheKey removeObjectForKey:cacheKey2];
    }
  }

  if (!SKUIResourceLoadCountMapDecrement(self->_requestCountMap, _loadReason))
  {
    [(SKUIResourceLoader *)self _sendDidLoadAllForReason:_loadReason];
  }

  [(SKUIResourceLoader *)self _sendDidIdleIfNecessary];
}

- (void)_sendDidBeginLoadingIfNecessary
{
  if ([(SKUIResourceLoader *)self isIdle])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SKUIResourceLoaderDidBeginLoadingNotification" object:self];

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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SKUIResourceLoaderDidIdleNotification" object:self];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 resourceLoaderDidIdle:self];
    }
  }
}

- (void)_sendDidLoadAllForReason:(int64_t)reason
{
  v11[1] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = @"SKUIResourceLoaderLoadReasonUserInfoKey";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:reason];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [defaultCenter postNotificationName:@"SKUIResourceLoaderDidLoadAllForReasonNotification" object:self userInfo:v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 resourceLoader:self didLoadAllForReason:reason];
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