@interface TROperationQueue
- (TROperationQueue)init;
- (void)addOperation:(id)operation;
- (void)addOperationWithBlock:(id)block;
- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished;
- (void)invalidate;
@end

@implementation TROperationQueue

- (TROperationQueue)init
{
  v6.receiver = self;
  v6.super_class = TROperationQueue;
  v2 = [(TROperationQueue *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TROperationQueue.cancellationQ", MEMORY[0x277D85CD8]);
    cancellationQ = v2->_cancellationQ;
    v2->_cancellationQ = v3;
  }

  return v2;
}

- (void)invalidate
{
  [(TROperationQueue *)self cancelAllOperations];
  cancellationQ = self->_cancellationQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__TROperationQueue_invalidate__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_barrier_async(cancellationQ, block);
}

uint64_t __30__TROperationQueue_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCancelled:1];
  v2 = *(a1 + 32);

  return [v2 cancelAllOperations];
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  cancellationQ = self->_cancellationQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__TROperationQueue_addOperation___block_invoke;
  v7[3] = &unk_279DCEC20;
  v7[4] = self;
  v8 = operationCopy;
  v6 = operationCopy;
  dispatch_sync(cancellationQ, v7);
}

id __33__TROperationQueue_addOperation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    [*(a1 + 40) cancel];
  }

  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = TROperationQueue;
  return objc_msgSendSuper2(&v4, sel_addOperation_, v2);
}

- (void)addOperationWithBlock:(id)block
{
  blockCopy = block;
  cancellationQ = self->_cancellationQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TROperationQueue_addOperationWithBlock___block_invoke;
  v7[3] = &unk_279DCEC48;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(cancellationQ, v7);
}

uint64_t __42__TROperationQueue_addOperationWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = TROperationQueue;
  objc_msgSendSuper2(&v4, sel_addOperationWithBlock_, v2);
  result = [*(a1 + 32) isCancelled];
  if (result)
  {
    return [*(a1 + 32) cancelAllOperations];
  }

  return result;
}

- (void)addOperations:(id)operations waitUntilFinished:(BOOL)finished
{
  operationsCopy = operations;
  cancellationQ = self->_cancellationQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__TROperationQueue_addOperations_waitUntilFinished___block_invoke;
  block[3] = &unk_279DCEC70;
  block[4] = self;
  v10 = operationsCopy;
  finishedCopy = finished;
  v8 = operationsCopy;
  dispatch_sync(cancellationQ, block);
}

id __52__TROperationQueue_addOperations_waitUntilFinished___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isCancelled])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        v6 = 0;
        do
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v12 + 1) + 8 * v6++) cancel];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11.receiver = *(a1 + 32);
  v11.super_class = TROperationQueue;
  result = objc_msgSendSuper2(&v11, sel_addOperations_waitUntilFinished_, v7, v8);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

@end