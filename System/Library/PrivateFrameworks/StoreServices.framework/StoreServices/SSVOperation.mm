@interface SSVOperation
- (SSVOperation)init;
- (void)addChildRequest:(id)request;
- (void)cancel;
- (void)removeChildRequest:(id)request;
- (void)runChildOperation:(id)operation;
@end

@implementation SSVOperation

- (SSVOperation)init
{
  v9.receiver = self;
  v9.super_class = SSVOperation;
  v2 = [(SSVOperation *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.%@.%p", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = v2->_serialQueue;
    v7 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v6, v7);
  }

  return v2;
}

- (void)addChildRequest:(id)request
{
  requestCopy = request;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__SSVOperation_addChildRequest___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(serialQueue, v7);
}

uint64_t __32__SSVOperation_addChildRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 256);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 256);
    *(v4 + 256) = v3;

    v2 = *(*(a1 + 32) + 256);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)removeChildRequest:(id)request
{
  requestCopy = request;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SSVOperation_removeChildRequest___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(serialQueue, v7);
}

- (void)runChildOperation:(id)operation
{
  operationCopy = operation;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSVOperation_runChildOperation___block_invoke;
  block[3] = &unk_1E84AC028;
  block[4] = self;
  v6 = operationCopy;
  v12 = v6;
  dispatch_async(serialQueue, block);
  [v6 main];

  v7 = self->_serialQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__SSVOperation_runChildOperation___block_invoke_2;
  v9[3] = &unk_1E84AC028;
  v9[4] = self;
  v8 = v6;
  v10 = v8;
  dispatch_async(v7, v9);
}

void __34__SSVOperation_runChildOperation___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 248);
  if (v3 == v2)
  {
    *(v1 + 248) = 0;
  }
}

- (void)cancel
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__39;
  v24 = __Block_byref_object_dispose__39;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__39;
  serialQueue = self->_serialQueue;
  v18 = __Block_byref_object_dispose__39;
  v19 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__SSVOperation_cancel__block_invoke;
  block[3] = &unk_1E84B0E10;
  block[4] = self;
  block[5] = &v20;
  block[6] = &v14;
  dispatch_sync(serialQueue, block);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v15[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v26 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v26 count:16];
    }

    while (v5);
  }

  [v21[5] cancel];
  v8.receiver = self;
  v8.super_class = SSVOperation;
  [(SSVOperation *)&v8 cancel];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __22__SSVOperation_cancel__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 248));
  v2 = [*(a1[4] + 256) copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  v6 = *(v5 + 248);
  *(v5 + 248) = 0;

  v7 = a1[4];
  v8 = *(v7 + 256);
  *(v7 + 256) = 0;
}

@end