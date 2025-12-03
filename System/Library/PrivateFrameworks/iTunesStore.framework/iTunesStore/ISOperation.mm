@interface ISOperation
- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byAuthenticatingWithContext:(id)context returningError:(id *)error;
- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byHandlingAuthenticateResponse:(id)response returningError:(id *)error;
- (BOOL)loadSoftwareMapReturningError:(id *)error;
- (BOOL)loadURLBagWithContext:(id)context returningError:(id *)error;
- (BOOL)runSubOperation:(id)operation onQueue:(id)queue error:(id *)error;
- (BOOL)runSubOperation:(id)operation returningError:(id *)error;
- (BOOL)shouldMessageMainThread;
- (BOOL)stopRunLoop;
- (ISOperation)init;
- (ISOperationDelegate)delegate;
- (NSArray)serializationLockIdentifiers;
- (SSOperationProgress)progress;
- (id)authenticatedAccountDSID;
- (id)copyActivePowerAssertionIdentifiers;
- (id)copySerializationLocks;
- (id)loadedURLBagWithContext:(id)context accountDSID:(id)d returningError:(id *)error;
- (int)runRunLoopUntilStopped;
- (unint64_t)authenticatedAccountCredentialSource;
- (void)_addSubOperation:(id)operation;
- (void)_failAfterException;
- (void)_sendErrorToDelegate:(id)delegate;
- (void)_sendSuccessToDelegate;
- (void)_sendWillStartToDelegate;
- (void)cancel;
- (void)delegateDispatch:(id)dispatch;
- (void)dispatchCompletionBlock;
- (void)main;
- (void)releasePowerAssertionsDuringBlock:(id)block;
- (void)run;
- (void)run:(BOOL)run;
- (void)sendDidTakeSerializationLocks;
- (void)sendProgressToDelegate;
- (void)setDelegate:(id)delegate;
- (void)setSerializationLockIdentifiers:(id)identifiers;
- (void)setShouldMessageMainThread:(BOOL)thread;
@end

@implementation ISOperation

- (void)main
{
  v79 = *MEMORY[0x277D85DE8];
  v74 = AMSGenerateLogCorrelationKey();
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog &= 2u;
  }

  if (shouldLog)
  {
    v75 = 138543618;
    v76 = objc_opt_class();
    v77 = 2114;
    v78 = v74;
    v6 = v76;
    LODWORD(v71) = 22;
    v68 = &v75;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v75, v71}];
      free(v7);
      v68 = v8;
      SSFileLog();
    }
  }

  else
  {
  }

  uniqueKey = [(ISOperation *)self uniqueKey];
  if (uniqueKey)
  {
    currentQueue = [MEMORY[0x277CCABD8] currentQueue];
    v11 = ISUniqueOperationLock(uniqueKey, self, currentQueue);

    if (!v11 || ([v11 success] & 1) != 0 || (objc_msgSend(v11, "error"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[ISOperation shouldFailAfterUniquePredecessorError:](self, "shouldFailAfterUniquePredecessorError:", v12), v12, !v13))
    {
      v21 = 0;
      goto LABEL_27;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v17 = objc_opt_class();
      v75 = 138412290;
      v76 = v17;
      v18 = v17;
      LODWORD(v71) = 12;
      v68 = &v75;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_25:

        error = [v11 error];
        [(ISOperation *)self setError:error];

        v21 = 1;
LABEL_27:

        goto LABEL_29;
      }

      oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v75, v71}];
      free(v19);
      v68 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_25;
  }

  v21 = 0;
LABEL_29:
  powerAssertionIdentifier = [(ISOperation *)self powerAssertionIdentifier];
  if (powerAssertionIdentifier)
  {
    v23 = +[ISDevice sharedInstance];
    v73 = [v23 takePowerAssertion:powerAssertionIdentifier];
  }

  else
  {
    v73 = 0;
  }

  if (![(ISOperation *)self shouldRunWithBackgroundPriority]|| (*__error() = 0, v24 = getpriority(3, 0), *__error()) || setpriority(3, 0, 4096))
  {
    v25 = 0;
    goto LABEL_36;
  }

  mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]3)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
  if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
  v56 = os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG);
  v57 = shouldLog3 & 2;
  if (v56)
  {
    v57 = shouldLog3;
  }

  if (!v57)
  {
    goto LABEL_83;
  }

  v58 = objc_opt_class();
  v59 = oSLogObject3;
  v60 = mEMORY[0x277D69B38]3;
  v61 = v24;
  v62 = MEMORY[0x277CCACC8];
  v72 = v58;
  v63 = v62;
  v24 = v61;
  mEMORY[0x277D69B38]3 = v60;
  v64 = v59;
  currentThread = [v63 currentThread];
  v75 = 138412546;
  v76 = v58;
  v77 = 2048;
  v78 = currentThread;
  LODWORD(v71) = 22;
  v69 = &v75;
  v66 = currentThread;
  v67 = _os_log_send_and_compose_impl();

  if (v67)
  {
    oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v67 encoding:{4, &v75, v71}];
    free(v67);
    v69 = oSLogObject3;
    SSFileLog();
LABEL_83:
  }

  v25 = v24 == 0;
LABEL_36:
  [(ISOperation *)self _main:v21, v69];
  if (v73)
  {
    v26 = +[ISDevice sharedInstance];
    [v26 releasePowerAssertion:powerAssertionIdentifier];
  }

  if (v25)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]4 shouldLogToDisk];
    oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
    v31 = oSLogObject4;
    if (shouldLogToDisk)
    {
      shouldLog4 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
    {
      v32 = shouldLog4;
    }

    else
    {
      v32 = shouldLog4 & 2;
    }

    if (v32)
    {
      v33 = objc_opt_class();
      currentThread2 = [MEMORY[0x277CCACC8] currentThread];
      v75 = 138412546;
      v76 = v33;
      v77 = 2048;
      v78 = currentThread2;
      LODWORD(v71) = 22;
      v70 = &v75;
      v35 = _os_log_send_and_compose_impl();

      if (!v35)
      {
LABEL_50:

        setpriority(3, 0, 0);
        goto LABEL_51;
      }

      v31 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:{4, &v75, v71}];
      free(v35);
      v70 = v31;
      SSFileLog();
    }

    goto LABEL_50;
  }

LABEL_51:
  if (uniqueKey)
  {
    currentQueue2 = [MEMORY[0x277CCABD8] currentQueue];
    ISUniqueOperationUnlock(uniqueKey, self, currentQueue2);
  }

  v37 = +[ISUniqueOperationManager sharedInstance];
  [v37 checkOutOperation:self];

  error2 = [(ISOperation *)self error];

  if (error2)
  {
    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]5)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
    shouldLogToDisk2 = [mEMORY[0x277D69B38]5 shouldLogToDisk];
    oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
    v43 = oSLogObject5;
    if (shouldLogToDisk2)
    {
      shouldLog5 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      shouldLog5 &= 2u;
    }

    if (!shouldLog5)
    {
      goto LABEL_72;
    }

    v44 = objc_opt_class();
    v75 = 138543618;
    v76 = v44;
    v77 = 2114;
    v78 = v74;
    v45 = v44;
    LODWORD(v71) = 22;
    v46 = _os_log_send_and_compose_impl();

    if (v46)
    {
LABEL_71:
      v43 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:{4, &v75, v71}];
      free(v46);
      SSFileLog();
LABEL_72:
    }
  }

  else
  {
    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]5)
    {
      mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog6 = [mEMORY[0x277D69B38]5 shouldLog];
    shouldLogToDisk3 = [mEMORY[0x277D69B38]5 shouldLogToDisk];
    oSLogObject6 = [mEMORY[0x277D69B38]5 OSLogObject];
    v43 = oSLogObject6;
    if (shouldLogToDisk3)
    {
      shouldLog6 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog6 &= 2u;
    }

    if (!shouldLog6)
    {
      goto LABEL_72;
    }

    v50 = objc_opt_class();
    v75 = 138543618;
    v76 = v50;
    v77 = 2114;
    v78 = v74;
    v51 = v50;
    LODWORD(v71) = 22;
    v46 = _os_log_send_and_compose_impl();

    if (v46)
    {
      goto LABEL_71;
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (ISOperationDelegate)delegate
{
  [(ISOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(ISOperation *)self unlock];

  return WeakRetained;
}

- (void)_sendWillStartToDelegate
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __39__ISOperation__sendWillStartToDelegate__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = delegate;
    selfCopy = self;
    [(ISOperation *)self delegateDispatch:v4];
  }
}

- (void)_sendSuccessToDelegate
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__ISOperation__sendSuccessToDelegate__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = delegate;
    selfCopy = self;
    [(ISOperation *)self delegateDispatch:v4];
  }
}

- (ISOperation)init
{
  __ISRecordSPIClassUsage(self);
  v7.receiver = self;
  v7.super_class = ISOperation;
  v3 = [(ISOperation *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v3->_lock;
    v3->_lock = v4;
  }

  return v3;
}

- (SSOperationProgress)progress
{
  [(ISOperation *)self lock];
  v3 = self->_progress;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  [(ISOperation *)self setError:0];

  [(ISOperation *)self setSuccess:1];
}

- (int)runRunLoopUntilStopped
{
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__keepAliveTimer_ selector:0 userInfo:0 repeats:1.79769313e308];
  self->_stopped = 0;
  v4 = *MEMORY[0x277CBF058];
  do
  {
    v5 = objc_autoreleasePoolPush();
    v6 = CFRunLoopRunInMode(v4, 10.0, 1u);
    objc_autoreleasePoolPop(v5);
  }

  while (!self->_stopped && (v6 - 1) > 1);
  [v3 invalidate];

  return v6;
}

- (BOOL)runSubOperation:(id)operation returningError:(id *)error
{
  operationCopy = operation;
  if (([operationCopy isCancelled] & 1) == 0)
  {
    [operationCopy setParentOperation:self];
    [(ISOperation *)self lock];
    [(ISOperation *)self _addSubOperation:operationCopy];
    [(ISOperation *)self unlock];
    v7 = +[ISUniqueOperationManager sharedInstance];
    [v7 checkInOperation:operationCopy];

    [operationCopy main];
    [operationCopy dispatchCompletionBlock];
    [operationCopy setParentOperation:0];
    [(ISOperation *)self lock];
    [(ISOperation *)self _removeSubOperation:operationCopy];
    [(ISOperation *)self unlock];
  }

  if (error)
  {
    *error = [operationCopy error];
  }

  success = [operationCopy success];

  return success;
}

- (BOOL)runSubOperation:(id)operation onQueue:(id)queue error:(id *)error
{
  operationCopy = operation;
  queueCopy = queue;
  if (([operationCopy isCancelled] & 1) == 0)
  {
    [operationCopy setParentOperation:self];
    [(ISOperation *)self lock];
    [(ISOperation *)self _addSubOperation:operationCopy];
    [(ISOperation *)self unlock];
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:operationCopy];
    [queueCopy addOperations:v10 waitUntilFinished:1];

    [operationCopy setParentOperation:0];
    [(ISOperation *)self lock];
    [(ISOperation *)self _removeSubOperation:operationCopy];
    [(ISOperation *)self unlock];
  }

  if (error)
  {
    *error = [operationCopy error];
  }

  success = [operationCopy success];

  return success;
}

- (BOOL)stopRunLoop
{
  v22 = *MEMORY[0x277D85DE8];
  [(ISOperation *)self lock];
  v3 = [(NSMutableArray *)self->_subOperations copy];
  [(ISOperation *)self unlock];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v17 + 1) + 8 * i) stopRunLoop])
        {
          v11 = 1;
          v10 = v4;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  operationRunLoop = [(ISOperation *)self operationRunLoop];
  v10 = operationRunLoop;
  v11 = operationRunLoop != 0;
  if (operationRunLoop)
  {
    getCFRunLoop = [operationRunLoop getCFRunLoop];
    v13 = *MEMORY[0x277CBF058];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__ISOperation_stopRunLoop__block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    CFRunLoopPerformBlock(getCFRunLoop, v13, block);
    CFRunLoopWakeUp(getCFRunLoop);
    CFRunLoopStop(getCFRunLoop);
    v11 = 1;
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(ISOperation *)self lock];
  objc_storeWeak(&self->_delegate, delegateCopy);

  [(ISOperation *)self unlock];
}

- (void)setShouldMessageMainThread:(BOOL)thread
{
  [(ISOperation *)self lock];
  self->_shouldMessageMainThread = thread;

  [(ISOperation *)self unlock];
}

- (BOOL)shouldMessageMainThread
{
  [(ISOperation *)self lock];
  shouldMessageMainThread = self->_shouldMessageMainThread;
  [(ISOperation *)self unlock];
  return shouldMessageMainThread;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = ISOperation;
  [(ISOperation *)&v4 cancel];
  [(ISOperation *)self lock];
  v3 = [(NSMutableArray *)self->_subOperations copy];
  [(ISOperation *)self unlock];
  [v3 makeObjectsPerformSelector:sel_cancel];
  [(ISOperation *)self stopRunLoop];
}

- (id)copyActivePowerAssertionIdentifiers
{
  parentOperation = [(ISOperation *)self parentOperation];
  v4 = parentOperation;
  if (parentOperation)
  {
    copyActivePowerAssertionIdentifiers = [parentOperation copyActivePowerAssertionIdentifiers];
  }

  else
  {
    copyActivePowerAssertionIdentifiers = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v6 = copyActivePowerAssertionIdentifiers;
  powerAssertionIdentifier = [(ISOperation *)self powerAssertionIdentifier];
  if (powerAssertionIdentifier)
  {
    [v6 addObject:powerAssertionIdentifier];
  }

  return v6;
}

- (id)copySerializationLocks
{
  v18 = *MEMORY[0x277D85DE8];
  serializationLockIdentifiers = [(ISOperation *)self serializationLockIdentifiers];
  if ([serializationLockIdentifiers count])
  {
    v3 = +[ISUniqueOperationManager sharedInstance];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = serializationLockIdentifiers;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v3 lockWithIdentifier:{*(*(&v13 + 1) + 8 * v9), v13}];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)delegateDispatch:(id)dispatch
{
  dispatchCopy = dispatch;
  if ([(ISOperation *)self shouldMessageMainThread])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ISOperation_delegateDispatch___block_invoke;
    block[3] = &unk_27A670840;
    v6 = dispatchCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  else
  {
    dispatchCopy[2](dispatchCopy);
  }
}

- (void)dispatchCompletionBlock
{
  completionBlock = [(ISOperation *)self completionBlock];

  if (completionBlock)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ISOperation_dispatchCompletionBlock__block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __38__ISOperation_dispatchCompletionBlock__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) completionBlock];
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

- (void)releasePowerAssertionsDuringBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  copyActivePowerAssertionIdentifiers = [(ISOperation *)self copyActivePowerAssertionIdentifiers];
  v6 = +[ISDevice sharedInstance];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v11 = objc_opt_class();
    v12 = v11;
    v36 = 138412546;
    v37 = v11;
    v38 = 2048;
    v39 = [copyActivePowerAssertionIdentifiers count];
    LODWORD(v25) = 22;
    v24 = &v36;
    v13 = _os_log_send_and_compose_impl();

    if (v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v36, v25}];
      free(v13);
      v24 = v14;
      SSFileLog();
    }
  }

  else
  {
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = copyActivePowerAssertionIdentifiers;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v16)
  {
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [v6 releasePowerAssertion:{*(*(&v30 + 1) + 8 * i), v24}];
      }

      v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v16);
  }

  blockCopy[2](blockCopy);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [v6 takePowerAssertion:{*(*(&v26 + 1) + 8 * j), v24}];
      }

      v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)run:(BOOL)run
{
  if (!run)
  {
    [(ISOperation *)self run];
  }
}

- (void)sendDidTakeSerializationLocks
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __44__ISOperation_sendDidTakeSerializationLocks__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = delegate;
    selfCopy = self;
    [(ISOperation *)self delegateDispatch:v4];
  }
}

- (void)sendProgressToDelegate
{
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(ISOperation *)self lock];
    v4 = [(SSOperationProgress *)self->_progress copy];
    [(ISOperation *)self unlock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__ISOperation_sendProgressToDelegate__block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = v4;
    v5 = v4;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (NSArray)serializationLockIdentifiers
{
  [(ISOperation *)self lock];
  v3 = self->_serializationLockIdentifiers;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)setSerializationLockIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  [(ISOperation *)self lock];
  if (self->_serializationLockIdentifiers != identifiersCopy)
  {
    v4 = [(NSArray *)identifiersCopy copy];
    serializationLockIdentifiers = self->_serializationLockIdentifiers;
    self->_serializationLockIdentifiers = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)_addSubOperation:(id)operation
{
  operationCopy = operation;
  subOperations = self->_subOperations;
  v8 = operationCopy;
  if (!subOperations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subOperations;
    self->_subOperations = v6;

    operationCopy = v8;
    subOperations = self->_subOperations;
  }

  [(NSMutableArray *)subOperations addObject:operationCopy];
}

- (void)_failAfterException
{
  error = [(ISOperation *)self error];
  if (!error)
  {
    v4 = ISError(0, 0, 0);
    [(ISOperation *)self setError:v4];
    error = v4;
  }

  v5 = error;
  [(ISOperation *)self _sendErrorToDelegate:error];
}

- (void)_sendErrorToDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__ISOperation__sendErrorToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = delegate;
    selfCopy = self;
    v9 = delegateCopy;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (id)loadedURLBagWithContext:(id)context accountDSID:(id)d returningError:(id *)error
{
  dCopy = d;
  contextCopy = context;
  v10 = [[ISLoadURLBagOperation alloc] initWithBagContext:contextCopy];

  [(ISLoadURLBagOperation *)v10 setAccountDSID:dCopy];
  v15 = 0;
  LODWORD(dCopy) = [(ISOperation *)self runSubOperation:v10 returningError:&v15];
  v11 = v15;
  uRLBag = 0;
  if (dCopy)
  {
    uRLBag = [(ISLoadURLBagOperation *)v10 URLBag];
  }

  if (error && !uRLBag)
  {
    v13 = v11;
    *error = v11;
  }

  return uRLBag;
}

- (BOOL)loadURLBagWithContext:(id)context returningError:(id *)error
{
  contextCopy = context;
  v7 = [[ISLoadURLBagOperation alloc] initWithBagContext:contextCopy];

  v13 = 0;
  v8 = [(ISOperation *)self runSubOperation:v7 returningError:&v13];
  v9 = v13;
  v10 = v9;
  if (error)
  {
    v11 = v9;
    *error = v10;
  }

  return v8;
}

- (BOOL)loadSoftwareMapReturningError:(id *)error
{
  v8 = 0;
  v5 = objc_alloc_init(ISLoadSoftwareMapOperation);
  v6 = [(ISOperation *)self runSubOperation:v5 returningError:&v8];

  if (error)
  {
    *error = v8;
  }

  return v6;
}

- (unint64_t)authenticatedAccountCredentialSource
{
  parentOperation = [(ISOperation *)self parentOperation];

  return [(ISOperation *)parentOperation authenticatedAccountCredentialSource];
}

- (id)authenticatedAccountDSID
{
  parentOperation = [(ISOperation *)self parentOperation];

  return [(ISOperation *)parentOperation authenticatedAccountDSID];
}

- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byAuthenticatingWithContext:(id)context returningError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v10 = [[ISStoreAuthenticateOperation alloc] initWithAuthenticationContext:context];
  if (v10)
  {
    if ([(ISOperation *)self runSubOperation:v10 returningError:&v22])
    {
      authenticatedAccountDSID = [(ISStoreAuthenticateOperation *)v10 authenticatedAccountDSID];
      authenticatedAccountCredentialSource = [(ISOperation *)v10 authenticatedAccountCredentialSource];
      v13 = 1;
    }

    else
    {
      authenticatedAccountCredentialSource = 0;
      authenticatedAccountDSID = 0;
      v13 = 0;
    }
  }

  else
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v23 = 138543362;
      v24 = objc_opt_class();
      LODWORD(v21) = 12;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:{4, &v23, v21}];
        free(v18);
        SSFileLog();
      }
    }

    authenticatedAccountCredentialSource = 0;
    authenticatedAccountDSID = 0;
    v13 = 0;
    v22 = ISError(4, 0, 0);
  }

  if (d)
  {
    *d = authenticatedAccountDSID;
    if (!source)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (source)
  {
LABEL_18:
    *source = authenticatedAccountCredentialSource;
  }

LABEL_19:
  if (error)
  {
    *error = v22;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)copyAccountID:(id *)d credentialSource:(unint64_t *)source byHandlingAuthenticateResponse:(id)response returningError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0;
  responseDictionary = [response responseDictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedDaemonConfigOversize];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x277D69B38] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v26 = 138412546;
      v27 = objc_opt_class();
      v28 = 2112;
      v29 = responseDictionary;
      LODWORD(v24) = 22;
      v23 = &v26;
      v14 = _os_log_send_and_compose_impl();
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v26, v24}];
        free(v15);
        v23 = v16;
        SSFileLog();
      }
    }
  }

  v17 = [ISStoreAuthenticateOperation _copyErrorForAuthenticateResponse:response error:&v25, v23];
  if (v17)
  {
    v18 = [objc_msgSend(response "authenticatedAccount")];
    credentialSource = [response credentialSource];
    if (d)
    {
      goto LABEL_14;
    }
  }

  else
  {
    credentialSource = 0;
    v18 = 0;
    if (d)
    {
LABEL_14:
      *d = v18;
      if (!source)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  if (source)
  {
LABEL_15:
    *source = credentialSource;
  }

LABEL_16:
  if (error)
  {
    v20 = v17;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    *error = v25;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

@end