@interface SSPurchaseRequest
- (NSArray)purchases;
- (SSPurchaseRequest)initWithPurchases:(id)purchases;
- (id)_purchaseForUniqueIdentifier:(int64_t)identifier;
- (void)_addPurchasesToManager;
- (void)_finishPurchasesWithResponses:(id)responses;
- (void)cancel;
- (void)dealloc;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithPurchaseBlock:(id)block completionBlock:(id)completionBlock;
- (void)startWithPurchaseResponseBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation SSPurchaseRequest

- (SSPurchaseRequest)initWithPurchases:(id)purchases
{
  v7.receiver = self;
  v7.super_class = SSPurchaseRequest;
  v4 = [(SSRequest *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_createsDownloads = 1;
    v4->_createsJobs = 1;
    v4->_needsAuthentication = 1;
    v4->_purchases = [purchases copy];
    v5->_shouldValidatePurchases = 1;
  }

  return v5;
}

- (void)dealloc
{
  [(SSPurchaseManager *)self->_purchaseManager setDelegate:0];

  v3.receiver = self;
  v3.super_class = SSPurchaseRequest;
  [(SSRequest *)&v3 dealloc];
}

- (NSArray)purchases
{
  v2 = self->_purchases;

  return v2;
}

- (void)startWithPurchaseBlock:(id)block completionBlock:(id)completionBlock
{
  purchaseBlock = self->_purchaseBlock;
  if (purchaseBlock != block)
  {

    self->_purchaseBlock = [block copy];
  }

  completionBlock = self->_completionBlock;
  if (completionBlock != completionBlock)
  {

    self->_completionBlock = [completionBlock copy];
  }

  [(SSPurchaseRequest *)self _addPurchasesToManager];
}

- (void)startWithPurchaseResponseBlock:(id)block completionBlock:(id)completionBlock
{
  purchaseResponseBlock = self->_purchaseResponseBlock;
  if (purchaseResponseBlock != block)
  {

    self->_purchaseResponseBlock = [block copy];
  }

  completionBlock = self->_completionBlock;
  if (completionBlock != completionBlock)
  {

    self->_completionBlock = [completionBlock copy];
  }

  [(SSPurchaseRequest *)self _addPurchasesToManager];
}

- (void)cancel
{
  [(SSPurchaseManager *)self->_purchaseManager cancelPurchases:self->_purchases withCompletionBlock:0];
  v3.receiver = self;
  v3.super_class = SSPurchaseRequest;
  [(SSRequest *)&v3 cancel];
}

- (void)startWithCompletionBlock:(id)block
{
  completionBlock = self->_completionBlock;
  if (completionBlock != block)
  {

    self->_completionBlock = [block copy];
  }

  [(SSPurchaseRequest *)self _addPurchasesToManager];
}

- (void)_addPurchasesToManager
{
  v21 = *MEMORY[0x1E69E9840];
  [(SSRequest *)self _beginBackgroundTask];
  selfCopy = self;
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (!self->_purchaseManager)
  {
    v4 = objc_alloc_init(SSPurchaseManager);
    self->_purchaseManager = v4;
    [(SSPurchaseManager *)v4 setDelegate:self];
  }

  if (!self->_openPurchaseIdentifiers)
  {
    self->_openPurchaseIdentifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_purchases;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16, 104];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v9, "uniqueIdentifier")}];
        [v9 setBackgroundPurchase:self->_isBackgroundRequest];
        [v9 setCreatesDownloads:self->_createsDownloads];
        [v9 setCreatesJobs:self->_createsJobs];
        [v9 setPlaybackRequest:self->_playbackRequest];
        [(NSMutableSet *)self->_openPurchaseIdentifiers addObject:v10];
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  purchaseManager = self->_purchaseManager;
  v12 = *(&self->super.super.isa + v13);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__SSPurchaseRequest__addPurchasesToManager__block_invoke;
  v15[3] = &unk_1E84ADC20;
  v15[4] = self;
  [(SSPurchaseManager *)purchaseManager addPurchases:v12 withCompletionBlock:v15];
}

void __43__SSPurchaseRequest__addPurchasesToManager__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(*(a1 + 32) + 104);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = objc_alloc_init(SSPurchaseResponse);
          [(SSPurchaseResponse *)v12 setError:a3];
          [(SSPurchaseResponse *)v12 setPurchase:v11];
          [v5 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [*(a1 + 32) _finishPurchasesWithResponses:v5];
  }
}

- (void)_finishPurchasesWithResponses:(id)responses
{
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__8;
  v42 = __Block_byref_object_dispose__8;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = 0;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SSPurchaseRequest__finishPurchasesWithResponses___block_invoke;
  block[3] = &unk_1E84ADC48;
  block[6] = &v38;
  block[7] = &v28;
  block[4] = self;
  block[5] = responses;
  block[8] = &v22;
  block[9] = &v34;
  dispatch_sync(dispatchQueue, block);
  if (v29[5] || v23[5])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [responses countByEnumeratingWithState:&v17 objects:v44 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(responses);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [objc_msgSend(v9 "purchase")];
          error = [v9 error];
          v12 = [(SSPurchaseRequest *)self _purchaseForUniqueIdentifier:v10];
          v13 = v29[5];
          if (v13)
          {
            (*(v13 + 16))(v13, v12, error);
          }

          if (v23[5])
          {
            [v9 setPurchase:v12];
            (*(v23[5] + 16))();
          }
        }

        v6 = [responses countByEnumeratingWithState:&v17 objects:v44 count:16];
      }

      while (v6);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__SSPurchaseRequest__finishPurchasesWithResponses___block_invoke_2;
  v16[3] = &unk_1E84AC7B0;
  v16[4] = self;
  v16[5] = responses;
  v16[6] = &v34;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
  if (*(v35 + 24) == 1)
  {
    v14 = v39[5];
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }

    [(SSRequest *)self _endBackgroundTask];
    selfCopy = self;
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

uint64_t __51__SSPurchaseRequest__finishPurchasesWithResponses___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 120) copy];
  *(*(a1[7] + 8) + 40) = [*(a1[4] + 144) copy];
  *(*(a1[8] + 8) + 40) = [*(a1[4] + 152) copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = a1[5];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * i), "purchase"), "uniqueIdentifier")}];
        [*(a1[4] + 136) removeObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(a1[4] + 136) count];
  *(*(a1[9] + 8) + 24) = result == 0;
  return result;
}

uint64_t __51__SSPurchaseRequest__finishPurchasesWithResponses___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();
  v12 = objc_opt_respondsToSelector();
  result = objc_opt_respondsToSelector();
  v13 = result;
  if (v3 & 1) != 0 || (v12 & 1) != 0 || (result)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(a1 + 40);
    result = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          v10 = [v9 error];
          v11 = [*(a1 + 32) _purchaseForUniqueIdentifier:{objc_msgSend(objc_msgSend(v9, "purchase"), "uniqueIdentifier")}];
          if (v10)
          {
            if (v3)
            {
              [v11 setTidHeaders:{objc_msgSend(v9, "tidHeaders")}];
              [v2 purchaseRequest:*(a1 + 32) purchaseDidFail:v11 withError:v10];
            }
          }

          else if (v13)
          {
            [v2 purchaseRequest:*(a1 + 32) purchaseDidSucceedWithResponse:v9];
          }

          else if (v12)
          {
            [v2 purchaseRequest:*(a1 + 32) purchaseDidSucceed:v11];
          }

          ++v8;
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      return [v2 requestDidFinish:*(a1 + 32)];
    }
  }

  return result;
}

- (id)_purchaseForUniqueIdentifier:(int64_t)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  purchases = self->_purchases;
  v5 = [(NSArray *)purchases countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(purchases);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 uniqueIdentifier] == identifier)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)purchases countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end