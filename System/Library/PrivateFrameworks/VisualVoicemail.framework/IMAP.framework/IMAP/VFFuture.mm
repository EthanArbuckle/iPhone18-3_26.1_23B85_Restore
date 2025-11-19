@interface VFFuture
+ (id)_join:(id)a3 ignoreFailures:(BOOL)a4;
+ (id)futureWithError:(id)a3;
+ (id)futureWithResult:(id)a3;
+ (id)nullFuture;
- (BOOL)finishWithResult:(id)a3 error:(id)a4;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)tryCancel;
- (VFFuture)init;
- (VFFutureDelegate)delegate;
- (VFObserver)firstResultObserverAdapter;
- (VFObserver)resultsObserverAdapter;
- (id)BOOLErrorCompletionHandlerAdapter;
- (id)completionHandlerAdapter;
- (id)errorOnlyCompletionHandlerAdapter;
- (id)result:(id *)a3;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
- (id)resultIfAvailable:(id *)a3;
- (id)resultWithTimeout:(double)a3 error:(id *)a4;
- (void)_addCompletionBlock:(id)a3;
- (void)_finishWithFuture:(id)a3;
- (void)_flushCompletionBlocks;
- (void)addFailureBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
@end

@implementation VFFuture

+ (id)nullFuture
{
  v3 = [MEMORY[0x277CBEB68] null];
  v4 = [a1 futureWithResult:v3];

  return v4;
}

+ (id)futureWithResult:(id)a3
{
  v3 = a3;
  v4 = +[VFPromise promise];
  [v4 finishWithResult:v3];

  v5 = [v4 future];

  return v5;
}

+ (id)futureWithError:(id)a3
{
  v3 = a3;
  v4 = +[VFPromise promise];
  [v4 finishWithError:v3];

  v5 = [v4 future];

  return v5;
}

+ (id)_join:(id)a3 ignoreFailures:(BOOL)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = +[VFPromise promise];
    v7 = [v5 count];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [MEMORY[0x277CBEB68] null];
        [v8 setObject:v10 atIndexedSubscript:i];
      }
    }

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v12 = dispatch_group_create();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __33__VFFuture__join_ignoreFailures___block_invoke;
    v30[3] = &unk_279E358F0;
    v31 = v12;
    v13 = v11;
    v32 = v13;
    v14 = v8;
    v33 = v14;
    v35 = a4;
    v15 = v6;
    v34 = v15;
    v16 = v12;
    [v5 enumerateObjectsUsingBlock:v30];
    v17 = dispatch_get_global_queue(21, 0);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __33__VFFuture__join_ignoreFailures___block_invoke_4;
    v26 = &unk_279E34E60;
    v27 = v13;
    v28 = v15;
    v29 = v14;
    v18 = v14;
    v19 = v15;
    v20 = v13;
    dispatch_group_notify(v16, v17, &v23);

    v21 = [v19 future];
  }

  else
  {
    v21 = [VFFuture futureWithResult:MEMORY[0x277CBEBF8]];
  }

  return v21;
}

void __33__VFFuture__join_ignoreFailures___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  dispatch_group_enter(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__VFFuture__join_ignoreFailures___block_invoke_2;
  v11[3] = &unk_279E358A0;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = a3;
  v14 = *(a1 + 32);
  [v6 addSuccessBlock:v11];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__VFFuture__join_ignoreFailures___block_invoke_3;
  v7[3] = &unk_279E358C8;
  v10 = *(a1 + 64);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  [v6 addFailureBlock:v7];
}

void __33__VFFuture__join_ignoreFailures___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  [*(a1 + 40) setObject:v4 atIndexedSubscript:*(a1 + 56)];

  [*(a1 + 32) unlock];
  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __33__VFFuture__join_ignoreFailures___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) finishWithError:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t __33__VFFuture__join_ignoreFailures___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(a1 + 40) finishWithResult:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

- (VFFuture)init
{
  v8.receiver = self;
  v8.super_class = VFFuture;
  v2 = [(VFFuture *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v3;

    [(NSConditionLock *)v2->_stateLock setName:@"VFFuture state lock"];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v5;
  }

  return v2;
}

- (id)result:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [(VFFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v7 = [(VFFuture *)self resultBeforeDate:v6 error:a4];

  return v7;
}

- (id)resultIfAvailable:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [(VFFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCACC8] isMainThread];
  if (v7)
  {
    v8 = [(VFFuture *)self delegate];
    [v8 didStartBlockingMainThreadForFuture:self];

    if (![(NSConditionLock *)self->_stateLock lockWhenCondition:1 beforeDate:v6])
    {
      v9 = [(VFFuture *)self delegate];
      [v9 didFinishBlockingMainThreadForFuture:self];

      goto LABEL_10;
    }
  }

  else if (![(NSConditionLock *)self->_stateLock lockWhenCondition:1 beforeDate:v6])
  {
LABEL_10:
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"VFFutureErrorDomain" code:1000000 userInfo:0];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_13;
  }

  v10 = self->_result;
  v11 = self->_error;
  [(NSConditionLock *)self->_stateLock unlock];
  if (v7)
  {
    v12 = [(VFFuture *)self delegate];
    [v12 didFinishBlockingMainThreadForFuture:self];
  }

  if (a4)
  {
    v13 = v11;
    *a4 = v11;
  }

LABEL_13:

  return v10;
}

- (BOOL)isFinished
{
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(VFFuture *)self _nts_isFinished];
  [(NSConditionLock *)self->_stateLock unlock];
  return v3;
}

- (BOOL)isCancelled
{
  [(NSConditionLock *)self->_stateLock lock];
  if ([(VFFuture *)self _nts_isFinished])
  {
    v3 = [(NSError *)self->_error domain];
    if ([v3 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v4 = [(NSError *)self->_error code]== 3072;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [(NSConditionLock *)self->_stateLock unlock];
  return v4;
}

- (BOOL)tryCancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  v4 = [(VFFuture *)self finishWithResult:0 error:v3];

  if (v4)
  {
    [(VFFuture *)self didCancel];
  }

  return v4;
}

- (BOOL)finishWithResult:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(NSConditionLock *)self->_stateLock lock];
  v9 = [(VFFuture *)self _nts_isFinished];
  if (v9)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    objc_storeStrong(&self->_result, a3);
    v10 = [v8 copy];
    error = self->_error;
    self->_error = v10;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:1];
    [(VFFuture *)self _flushCompletionBlocks];
  }

  return !v9;
}

- (void)_finishWithFuture:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__VFFuture__finishWithFuture___block_invoke;
  v6[3] = &unk_279E35918;
  v6[4] = self;
  v4 = a3;
  [v4 addSuccessBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__VFFuture__finishWithFuture___block_invoke_2;
  v5[3] = &unk_279E33C08;
  v5[4] = self;
  [v4 addFailureBlock:v5];
}

- (id)completionHandlerAdapter
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__VFFuture_completionHandlerAdapter__block_invoke;
  v5[3] = &unk_279E35940;
  v5[4] = self;
  v2 = MEMORY[0x2743C3100](v5, a2);
  v3 = MEMORY[0x2743C3100]();

  return v3;
}

- (id)BOOLErrorCompletionHandlerAdapter
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__VFFuture_BOOLErrorCompletionHandlerAdapter__block_invoke;
  v5[3] = &unk_279E35968;
  v5[4] = self;
  v2 = MEMORY[0x2743C3100](v5, a2);
  v3 = MEMORY[0x2743C3100]();

  return v3;
}

void __45__VFFuture_BOOLErrorCompletionHandlerAdapter__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v2 finishWithResult:v4];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:?];
  }
}

- (id)errorOnlyCompletionHandlerAdapter
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__VFFuture_errorOnlyCompletionHandlerAdapter__block_invoke;
  v5[3] = &unk_279E33C08;
  v5[4] = self;
  v2 = MEMORY[0x2743C3100](v5, a2);
  v3 = MEMORY[0x2743C3100]();

  return v3;
}

void __45__VFFuture_errorOnlyCompletionHandlerAdapter__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v2 finishWithResult:v4];
  }
}

- (VFObserver)firstResultObserverAdapter
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__VFFuture_firstResultObserverAdapter__block_invoke;
  v6[3] = &unk_279E35918;
  v6[4] = self;
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__VFFuture_firstResultObserverAdapter__block_invoke_2;
  v5[3] = &unk_279E33588;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__VFFuture_firstResultObserverAdapter__block_invoke_3;
  v4[3] = &unk_279E33C08;
  v2 = [VFObserver observerWithResultBlock:v6 completionBlock:v5 failureBlock:v4];

  return v2;
}

void __38__VFFuture_firstResultObserverAdapter__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB68] null];
  [v1 finishWithResult:v2];
}

- (VFObserver)resultsObserverAdapter
{
  v3 = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__VFFuture_resultsObserverAdapter__block_invoke;
  v10[3] = &unk_279E35918;
  v11 = v3;
  v7[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__VFFuture_resultsObserverAdapter__block_invoke_2;
  v8[3] = &unk_279E346E0;
  v8[4] = self;
  v9 = v11;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__VFFuture_resultsObserverAdapter__block_invoke_3;
  v7[3] = &unk_279E33C08;
  v4 = v11;
  v5 = [VFObserver observerWithResultBlock:v10 completionBlock:v8 failureBlock:v7];

  return v5;
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__VFFuture_addSuccessBlock___block_invoke;
  v7[3] = &unk_279E35990;
  v8 = v4;
  v5 = v4;
  v6 = MEMORY[0x2743C3100](v7);
  [(VFFuture *)self _addCompletionBlock:v6];
}

uint64_t __28__VFFuture_addSuccessBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)addFailureBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__VFFuture_addFailureBlock___block_invoke;
  v7[3] = &unk_279E35990;
  v8 = v4;
  v5 = v4;
  v6 = MEMORY[0x2743C3100](v7);
  [(VFFuture *)self _addCompletionBlock:v6];
}

uint64_t __28__VFFuture_addFailureBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_addCompletionBlock:(id)a3
{
  v6 = a3;
  [(NSConditionLock *)self->_stateLock lock];
  if ([(VFFuture *)self _nts_isFinished])
  {
    [(NSConditionLock *)self->_stateLock unlock];
    v6[2](v6, self->_result, self->_error);
  }

  else
  {
    completionBlocks = self->_completionBlocks;
    v5 = MEMORY[0x2743C3100](v6);
    [(NSMutableArray *)completionBlocks addObject:v5];

    [(NSConditionLock *)self->_stateLock unlock];
  }
}

- (void)_flushCompletionBlocks
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(NSMutableArray *)self->_completionBlocks copy];
  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  [(NSConditionLock *)self->_stateLock unlock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        result = self->_result;
        error = self->_error;
        (*(*(*(&v12 + 1) + 8 * v8) + 16))(*(*(&v12 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (VFFutureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end