@interface BRCAggregateOperation
- (BRCAggregateOperation)initWithSyncContext:(id)context sessionContext:(id)sessionContext subOperations:(id)operations;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCAggregateOperation

- (BRCAggregateOperation)initWithSyncContext:(id)context sessionContext:(id)sessionContext subOperations:(id)operations
{
  operationsCopy = operations;
  v15.receiver = self;
  v15.super_class = BRCAggregateOperation;
  v9 = [(_BRCOperation *)&v15 initWithName:@"wrapperOperation" syncContext:context sessionContext:sessionContext];
  if (v9)
  {
    v10 = [operationsCopy copy];
    subOperations = v9->_subOperations;
    v9->_subOperations = v10;

    v12 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(operationsCopy, "count")}];
    resultDictionary = v9->_resultDictionary;
    v9->_resultDictionary = v12;
  }

  return v9;
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__51;
  v24[4] = __Block_byref_object_dispose__51;
  v25 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_subOperations;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * v7);
        dispatch_group_enter(v3);
        [v8 setIgnoreMissingRemoteClientProxy:1];
        finishBlock = [v8 finishBlock];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __29__BRCAggregateOperation_main__block_invoke;
        v15[3] = &unk_278506D60;
        v15[4] = self;
        v18 = v24;
        v19 = v5;
        v10 = finishBlock;
        v17 = v10;
        v16 = v3;
        [v8 setFinishBlock:v15];
        [(_BRCOperation *)self addSubOperation:v8];

        ++v5;
        ++v7;
      }

      while (v4 != v7);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v4);
  }

  callbackQueue = [(_BRCOperation *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BRCAggregateOperation_main__block_invoke_2;
  block[3] = &unk_278502208;
  block[4] = self;
  block[5] = v24;
  dispatch_group_notify(v3, callbackQueue, block);

  _Block_object_dispose(v24, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __29__BRCAggregateOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 56) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9)
  {
    if (v5)
    {
      objc_storeStrong(v8, a3);
      if (([*(a1 + 32) isCancelled] & 1) == 0)
      {
        [*(a1 + 32) cancel];
      }
    }

    else if (v13)
    {
      v11 = *(*(a1 + 32) + 528);
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
      [v11 setObject:v13 forKeyedSubscript:v12];
    }
  }

  objc_sync_exit(v6);

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v13, v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __29__BRCAggregateOperation_main__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[66];
  }

  return [v2 completedWithResult:v3 error:?];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  wrapperOperationCompletionHandler = [(BRCAggregateOperation *)self wrapperOperationCompletionHandler];
  v9 = wrapperOperationCompletionHandler;
  if (wrapperOperationCompletionHandler)
  {
    (*(wrapperOperationCompletionHandler + 16))(wrapperOperationCompletionHandler, resultCopy, errorCopy);
    [(BRCAggregateOperation *)self setWrapperOperationCompletionHandler:0];
  }

  v10.receiver = self;
  v10.super_class = BRCAggregateOperation;
  [(_BRCFrameworkOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end