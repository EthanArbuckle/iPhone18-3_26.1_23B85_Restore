@interface SKUIURLBag
+ (ISOperationQueue)bagQueue;
- (id)existingBagDictionary;
- (id)storeFrontIdentifier;
- (id)valueForKey:(id)key error:(id *)error;
- (void)_enqueueOperationWithContext:(id)context completionBlock:(id)block;
- (void)_finishOperationWithURLBag:(id)bag error:(id)error;
- (void)getTrustForURL:(id)l completionBlock:(id)block;
- (void)invalidate;
- (void)loadValueForKey:(id)key completionBlock:(id)block;
- (void)loadWithCompletionBlock:(id)block;
@end

@implementation SKUIURLBag

+ (ISOperationQueue)bagQueue
{
  if (bagQueue_onceToken != -1)
  {
    +[SKUIURLBag bagQueue];
  }

  v3 = bagQueue_bagQueue;

  return v3;
}

uint64_t __22__SKUIURLBag_bagQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D7FD20]);
  v1 = bagQueue_bagQueue;
  bagQueue_bagQueue = v0;

  v2 = bagQueue_bagQueue;

  return [v2 setName:@"com.apple.storekit.bag-queue"];
}

- (void)getTrustForURL:(id)l completionBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SKUIURLBag_getTrustForURL_completionBlock___block_invoke;
  v10[3] = &unk_2781FC650;
  v10[4] = self;
  v11 = lCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = lCopy;
  [(SSURLBag *)self dispatchAsync:v10];
}

void __45__SKUIURLBag_getTrustForURL_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[9];
  if (v4)
  {
    v5 = [v4 urlIsTrusted:*(a1 + 40)];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SKUIURLBag_getTrustForURL_completionBlock___block_invoke_2;
    block[3] = &unk_2781FB5B0;
    v7 = &v13;
    v13 = *(a1 + 48);
    v14 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__SKUIURLBag_getTrustForURL_completionBlock___block_invoke_3;
    v9[3] = &unk_2781FC628;
    v7 = &v11;
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    [v3 _enqueueOperationWithContext:a2 completionBlock:v9];
    v6 = v10;
  }
}

void __45__SKUIURLBag_getTrustForURL_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  (*(v4 + 16))(v4, [a2 urlIsTrusted:v5], v6);
}

- (void)invalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __24__SKUIURLBag_invalidate__block_invoke;
  v2[3] = &unk_2781FC678;
  v2[4] = self;
  [(SSURLBag *)self dispatchAsync:v2];
}

void __24__SKUIURLBag_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  *(*(a1 + 32) + 88) = 1;
  [*(*(a1 + 32) + 96) setCompletionBlock:0];
  [*(*(a1 + 32) + 96) cancel];
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  *(v4 + 96) = 0;
}

- (void)loadValueForKey:(id)key completionBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__SKUIURLBag_loadValueForKey_completionBlock___block_invoke;
  v10[3] = &unk_2781FC650;
  v10[4] = self;
  v11 = keyCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = keyCopy;
  [(SSURLBag *)self dispatchAsync:v10];
}

void __46__SKUIURLBag_loadValueForKey_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[9];
  if (v4)
  {
    v5 = [v4 valueForKey:*(a1 + 40)];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SKUIURLBag_loadValueForKey_completionBlock___block_invoke_2;
    block[3] = &unk_2781F9B48;
    v7 = *(a1 + 48);
    v14 = v5;
    v15 = v7;
    v8 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__SKUIURLBag_loadValueForKey_completionBlock___block_invoke_3;
    v10[3] = &unk_2781FC628;
    v12 = *(a1 + 48);
    v11 = *(a1 + 40);
    [v3 _enqueueOperationWithContext:a2 completionBlock:v10];

    v8 = v12;
  }
}

void __46__SKUIURLBag_loadValueForKey_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = [a2 valueForKey:v5];
  (*(v4 + 16))(v4, v7, v6);
}

- (id)valueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__33;
  v26 = __Block_byref_object_dispose__33;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__33;
  v20 = __Block_byref_object_dispose__33;
  v21 = 0;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__SKUIURLBag_valueForKey_error___block_invoke;
  v12[3] = &unk_2781FC6A0;
  v14 = &v16;
  v15 = &v22;
  v8 = v7;
  v13 = v8;
  [(SKUIURLBag *)self loadValueForKey:keyCopy completionBlock:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v23[5];
  if (error && !v9)
  {
    *error = v17[5];
    v9 = v23[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __32__SKUIURLBag_valueForKey_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)existingBagDictionary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__33;
  v9 = __Block_byref_object_dispose__33;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__SKUIURLBag_existingBagDictionary__block_invoke;
  v4[3] = &unk_2781FC6C8;
  v4[4] = self;
  v4[5] = &v5;
  [(SSURLBag *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __35__SKUIURLBag_existingBagDictionary__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) URLBagDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)loadWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__SKUIURLBag_loadWithCompletionBlock___block_invoke;
  v6[3] = &unk_2781FC718;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SSURLBag *)self dispatchAsync:v6];
}

void __38__SKUIURLBag_loadWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[9];
  if (v4)
  {
    v5 = [v4 URLBagDictionary];
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__SKUIURLBag_loadWithCompletionBlock___block_invoke_2;
    block[3] = &unk_2781F9B48;
    v7 = *(a1 + 40);
    v13 = v5;
    v14 = v7;
    v8 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__SKUIURLBag_loadWithCompletionBlock___block_invoke_3;
    v10[3] = &unk_2781FC6F0;
    v11 = *(a1 + 40);
    [v3 _enqueueOperationWithContext:a2 completionBlock:v10];
    v8 = v11;
  }
}

void __38__SKUIURLBag_loadWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 URLBagDictionary];
  (*(v4 + 16))(v4, v6, v5);
}

- (id)storeFrontIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__33;
  v9 = __Block_byref_object_dispose__33;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SKUIURLBag_storeFrontIdentifier__block_invoke;
  v4[3] = &unk_2781FC6C8;
  v4[4] = self;
  v4[5] = &v5;
  [(SSURLBag *)self dispatchSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __34__SKUIURLBag_storeFrontIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) storeFrontIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_enqueueOperationWithContext:(id)context completionBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v8 = [blockCopy copy];
  completionBlocks = self->_completionBlocks;
  if (!completionBlocks)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_completionBlocks;
    self->_completionBlocks = v10;

    completionBlocks = self->_completionBlocks;
  }

  v12 = _Block_copy(v8);
  [(NSMutableArray *)completionBlocks addObject:v12];

  if (!self->_operation)
  {
    if (self->_forceInvalidationForNextLoad)
    {
      v13 = [contextCopy copy];
      [v13 setIgnoresCaches:1];

      self->_forceInvalidationForNextLoad = 0;
      contextCopy = v13;
    }

    v14 = [objc_alloc(MEMORY[0x277D7FCF8]) initWithBagContext:contextCopy];
    operation = self->_operation;
    self->_operation = v14;

    objc_initWeak(&location, self->_operation);
    objc_initWeak(&from, self);
    v16 = self->_operation;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __59__SKUIURLBag__enqueueOperationWithContext_completionBlock___block_invoke;
    v21 = &unk_2781F8258;
    objc_copyWeak(&v22, &from);
    objc_copyWeak(&v23, &location);
    [(ISLoadURLBagOperation *)v16 setCompletionBlock:&v18];
    bagQueue = [objc_opt_class() bagQueue];
    [bagQueue addOperation:self->_operation];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __59__SKUIURLBag__enqueueOperationWithContext_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 URLBag];
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 error];
  [WeakRetained _finishOperationWithURLBag:v4 error:v6];

  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setCompletionBlock:0];
}

- (void)_finishOperationWithURLBag:(id)bag error:(id)error
{
  bagCopy = bag;
  errorCopy = error;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SKUIURLBag__finishOperationWithURLBag_error___block_invoke;
  v10[3] = &unk_2781FC740;
  v11 = bagCopy;
  selfCopy = self;
  v13 = errorCopy;
  v8 = errorCopy;
  v9 = bagCopy;
  [(SSURLBag *)self dispatchAsync:v10];
}

void __47__SKUIURLBag__finishOperationWithURLBag_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 72), v2);
  }

  [*(*(a1 + 40) + 96) setCompletionBlock:0];
  v3 = *(a1 + 40);
  v4 = *(v3 + 96);
  *(v3 + 96) = 0;

  v5 = [*(*(a1 + 40) + 80) copy];
  v6 = *(a1 + 40);
  v7 = *(v6 + 80);
  *(v6 + 80) = 0;

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SKUIURLBag__finishOperationWithURLBag_error___block_invoke_2;
  block[3] = &unk_2781F8680;
  v11 = v5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v8, block);
}

void __47__SKUIURLBag__finishOperationWithURLBag_error___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

@end