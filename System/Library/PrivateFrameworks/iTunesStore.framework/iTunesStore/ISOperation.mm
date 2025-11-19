@interface ISOperation
- (BOOL)copyAccountID:(id *)a3 credentialSource:(unint64_t *)a4 byAuthenticatingWithContext:(id)a5 returningError:(id *)a6;
- (BOOL)copyAccountID:(id *)a3 credentialSource:(unint64_t *)a4 byHandlingAuthenticateResponse:(id)a5 returningError:(id *)a6;
- (BOOL)loadSoftwareMapReturningError:(id *)a3;
- (BOOL)loadURLBagWithContext:(id)a3 returningError:(id *)a4;
- (BOOL)runSubOperation:(id)a3 onQueue:(id)a4 error:(id *)a5;
- (BOOL)runSubOperation:(id)a3 returningError:(id *)a4;
- (BOOL)shouldMessageMainThread;
- (BOOL)stopRunLoop;
- (ISOperation)init;
- (ISOperationDelegate)delegate;
- (NSArray)serializationLockIdentifiers;
- (SSOperationProgress)progress;
- (id)authenticatedAccountDSID;
- (id)copyActivePowerAssertionIdentifiers;
- (id)copySerializationLocks;
- (id)loadedURLBagWithContext:(id)a3 accountDSID:(id)a4 returningError:(id *)a5;
- (int)runRunLoopUntilStopped;
- (unint64_t)authenticatedAccountCredentialSource;
- (void)_addSubOperation:(id)a3;
- (void)_failAfterException;
- (void)_sendErrorToDelegate:(id)a3;
- (void)_sendSuccessToDelegate;
- (void)_sendWillStartToDelegate;
- (void)cancel;
- (void)delegateDispatch:(id)a3;
- (void)dispatchCompletionBlock;
- (void)main;
- (void)releasePowerAssertionsDuringBlock:(id)a3;
- (void)run;
- (void)run:(BOOL)a3;
- (void)sendDidTakeSerializationLocks;
- (void)sendProgressToDelegate;
- (void)setDelegate:(id)a3;
- (void)setSerializationLockIdentifiers:(id)a3;
- (void)setShouldMessageMainThread:(BOOL)a3;
@end

@implementation ISOperation

- (void)main
{
  v79 = *MEMORY[0x277D85DE8];
  v74 = AMSGenerateLogCorrelationKey();
  v3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v4 |= 2u;
  }

  v5 = [v3 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
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

  v9 = [(ISOperation *)self uniqueKey];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABD8] currentQueue];
    v11 = ISUniqueOperationLock(v9, self, v10);

    if (!v11 || ([v11 success] & 1) != 0 || (objc_msgSend(v11, "error"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[ISOperation shouldFailAfterUniquePredecessorError:](self, "shouldFailAfterUniquePredecessorError:", v12), v12, !v13))
    {
      v21 = 0;
      goto LABEL_27;
    }

    v14 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v15 |= 2u;
    }

    v16 = [v14 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (v15)
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

        v20 = [v11 error];
        [(ISOperation *)self setError:v20];

        v21 = 1;
LABEL_27:

        goto LABEL_29;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v75, v71}];
      free(v19);
      v68 = v16;
      SSFileLog();
    }

    goto LABEL_25;
  }

  v21 = 0;
LABEL_29:
  v22 = [(ISOperation *)self powerAssertionIdentifier];
  if (v22)
  {
    v23 = +[ISDevice sharedInstance];
    v73 = [v23 takePowerAssertion:v22];
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

  v53 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v53)
  {
    v53 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v54 = [v53 shouldLog];
  if ([v53 shouldLogToDisk])
  {
    v54 |= 2u;
  }

  v55 = [v53 OSLogObject];
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG);
  v57 = v54 & 2;
  if (v56)
  {
    v57 = v54;
  }

  if (!v57)
  {
    goto LABEL_83;
  }

  v58 = objc_opt_class();
  v59 = v55;
  v60 = v53;
  v61 = v24;
  v62 = MEMORY[0x277CCACC8];
  v72 = v58;
  v63 = v62;
  v24 = v61;
  v53 = v60;
  v64 = v59;
  v65 = [v63 currentThread];
  v75 = 138412546;
  v76 = v58;
  v77 = 2048;
  v78 = v65;
  LODWORD(v71) = 22;
  v69 = &v75;
  v66 = v65;
  v67 = _os_log_send_and_compose_impl();

  if (v67)
  {
    v55 = [MEMORY[0x277CCACA8] stringWithCString:v67 encoding:{4, &v75, v71}];
    free(v67);
    v69 = v55;
    SSFileLog();
LABEL_83:
  }

  v25 = v24 == 0;
LABEL_36:
  [(ISOperation *)self _main:v21, v69];
  if (v73)
  {
    v26 = +[ISDevice sharedInstance];
    [v26 releasePowerAssertion:v22];
  }

  if (v25)
  {
    v27 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v27)
    {
      v27 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v28 = [v27 shouldLog];
    v29 = [v27 shouldLogToDisk];
    v30 = [v27 OSLogObject];
    v31 = v30;
    if (v29)
    {
      v28 |= 2u;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v32 = v28;
    }

    else
    {
      v32 = v28 & 2;
    }

    if (v32)
    {
      v33 = objc_opt_class();
      v34 = [MEMORY[0x277CCACC8] currentThread];
      v75 = 138412546;
      v76 = v33;
      v77 = 2048;
      v78 = v34;
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
  if (v9)
  {
    v36 = [MEMORY[0x277CCABD8] currentQueue];
    ISUniqueOperationUnlock(v9, self, v36);
  }

  v37 = +[ISUniqueOperationManager sharedInstance];
  [v37 checkOutOperation:self];

  v38 = [(ISOperation *)self error];

  if (v38)
  {
    v39 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v39)
    {
      v39 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v40 = [v39 shouldLog];
    v41 = [v39 shouldLogToDisk];
    v42 = [v39 OSLogObject];
    v43 = v42;
    if (v41)
    {
      v40 |= 2u;
    }

    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v40 &= 2u;
    }

    if (!v40)
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
    v39 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v39)
    {
      v39 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v47 = [v39 shouldLog];
    v48 = [v39 shouldLogToDisk];
    v49 = [v39 OSLogObject];
    v43 = v49;
    if (v48)
    {
      v47 |= 2u;
    }

    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v47 &= 2u;
    }

    if (!v47)
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
  v3 = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __39__ISOperation__sendWillStartToDelegate__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = v3;
    v6 = self;
    [(ISOperation *)self delegateDispatch:v4];
  }
}

- (void)_sendSuccessToDelegate
{
  v3 = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__ISOperation__sendSuccessToDelegate__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = v3;
    v6 = self;
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

- (BOOL)runSubOperation:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  if (([v6 isCancelled] & 1) == 0)
  {
    [v6 setParentOperation:self];
    [(ISOperation *)self lock];
    [(ISOperation *)self _addSubOperation:v6];
    [(ISOperation *)self unlock];
    v7 = +[ISUniqueOperationManager sharedInstance];
    [v7 checkInOperation:v6];

    [v6 main];
    [v6 dispatchCompletionBlock];
    [v6 setParentOperation:0];
    [(ISOperation *)self lock];
    [(ISOperation *)self _removeSubOperation:v6];
    [(ISOperation *)self unlock];
  }

  if (a4)
  {
    *a4 = [v6 error];
  }

  v8 = [v6 success];

  return v8;
}

- (BOOL)runSubOperation:(id)a3 onQueue:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (([v8 isCancelled] & 1) == 0)
  {
    [v8 setParentOperation:self];
    [(ISOperation *)self lock];
    [(ISOperation *)self _addSubOperation:v8];
    [(ISOperation *)self unlock];
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
    [v9 addOperations:v10 waitUntilFinished:1];

    [v8 setParentOperation:0];
    [(ISOperation *)self lock];
    [(ISOperation *)self _removeSubOperation:v8];
    [(ISOperation *)self unlock];
  }

  if (a5)
  {
    *a5 = [v8 error];
  }

  v11 = [v8 success];

  return v11;
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

  v9 = [(ISOperation *)self operationRunLoop];
  v10 = v9;
  v11 = v9 != 0;
  if (v9)
  {
    v12 = [v9 getCFRunLoop];
    v13 = *MEMORY[0x277CBF058];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__ISOperation_stopRunLoop__block_invoke;
    block[3] = &unk_27A670818;
    block[4] = self;
    CFRunLoopPerformBlock(v12, v13, block);
    CFRunLoopWakeUp(v12);
    CFRunLoopStop(v12);
    v11 = 1;
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  [(ISOperation *)self lock];
  objc_storeWeak(&self->_delegate, v4);

  [(ISOperation *)self unlock];
}

- (void)setShouldMessageMainThread:(BOOL)a3
{
  [(ISOperation *)self lock];
  self->_shouldMessageMainThread = a3;

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
  v3 = [(ISOperation *)self parentOperation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 copyActivePowerAssertionIdentifiers];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v6 = v5;
  v7 = [(ISOperation *)self powerAssertionIdentifier];
  if (v7)
  {
    [v6 addObject:v7];
  }

  return v6;
}

- (id)copySerializationLocks
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(ISOperation *)self serializationLockIdentifiers];
  if ([v2 count])
  {
    v3 = +[ISUniqueOperationManager sharedInstance];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v2;
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

- (void)delegateDispatch:(id)a3
{
  v4 = a3;
  if ([(ISOperation *)self shouldMessageMainThread])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ISOperation_delegateDispatch___block_invoke;
    block[3] = &unk_27A670840;
    v6 = v4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4[2](v4);
  }
}

- (void)dispatchCompletionBlock
{
  v3 = [(ISOperation *)self completionBlock];

  if (v3)
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

- (void)releasePowerAssertionsDuringBlock:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ISOperation *)self copyActivePowerAssertionIdentifiers];
  v6 = +[ISDevice sharedInstance];
  v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v7)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
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
    v39 = [v5 count];
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
  v15 = v5;
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

  v4[2](v4);
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

- (void)run:(BOOL)a3
{
  if (!a3)
  {
    [(ISOperation *)self run];
  }
}

- (void)sendDidTakeSerializationLocks
{
  v3 = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __44__ISOperation_sendDidTakeSerializationLocks__block_invoke;
    v4[3] = &unk_27A670868;
    v5 = v3;
    v6 = self;
    [(ISOperation *)self delegateDispatch:v4];
  }
}

- (void)sendProgressToDelegate
{
  v3 = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(ISOperation *)self lock];
    v4 = [(SSOperationProgress *)self->_progress copy];
    [(ISOperation *)self unlock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__ISOperation_sendProgressToDelegate__block_invoke;
    v6[3] = &unk_27A670890;
    v7 = v3;
    v8 = self;
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

- (void)setSerializationLockIdentifiers:(id)a3
{
  v6 = a3;
  [(ISOperation *)self lock];
  if (self->_serializationLockIdentifiers != v6)
  {
    v4 = [(NSArray *)v6 copy];
    serializationLockIdentifiers = self->_serializationLockIdentifiers;
    self->_serializationLockIdentifiers = v4;
  }

  [(ISOperation *)self unlock];
}

- (void)_addSubOperation:(id)a3
{
  v4 = a3;
  subOperations = self->_subOperations;
  v8 = v4;
  if (!subOperations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subOperations;
    self->_subOperations = v6;

    v4 = v8;
    subOperations = self->_subOperations;
  }

  [(NSMutableArray *)subOperations addObject:v4];
}

- (void)_failAfterException
{
  v3 = [(ISOperation *)self error];
  if (!v3)
  {
    v4 = ISError(0, 0, 0);
    [(ISOperation *)self setError:v4];
    v3 = v4;
  }

  v5 = v3;
  [(ISOperation *)self _sendErrorToDelegate:v3];
}

- (void)_sendErrorToDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__ISOperation__sendErrorToDelegate___block_invoke;
    v6[3] = &unk_27A670890;
    v7 = v5;
    v8 = self;
    v9 = v4;
    [(ISOperation *)self delegateDispatch:v6];
  }
}

- (id)loadedURLBagWithContext:(id)a3 accountDSID:(id)a4 returningError:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[ISLoadURLBagOperation alloc] initWithBagContext:v9];

  [(ISLoadURLBagOperation *)v10 setAccountDSID:v8];
  v15 = 0;
  LODWORD(v8) = [(ISOperation *)self runSubOperation:v10 returningError:&v15];
  v11 = v15;
  v12 = 0;
  if (v8)
  {
    v12 = [(ISLoadURLBagOperation *)v10 URLBag];
  }

  if (a5 && !v12)
  {
    v13 = v11;
    *a5 = v11;
  }

  return v12;
}

- (BOOL)loadURLBagWithContext:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  v7 = [[ISLoadURLBagOperation alloc] initWithBagContext:v6];

  v13 = 0;
  v8 = [(ISOperation *)self runSubOperation:v7 returningError:&v13];
  v9 = v13;
  v10 = v9;
  if (a4)
  {
    v11 = v9;
    *a4 = v10;
  }

  return v8;
}

- (BOOL)loadSoftwareMapReturningError:(id *)a3
{
  v8 = 0;
  v5 = objc_alloc_init(ISLoadSoftwareMapOperation);
  v6 = [(ISOperation *)self runSubOperation:v5 returningError:&v8];

  if (a3)
  {
    *a3 = v8;
  }

  return v6;
}

- (unint64_t)authenticatedAccountCredentialSource
{
  v2 = [(ISOperation *)self parentOperation];

  return [(ISOperation *)v2 authenticatedAccountCredentialSource];
}

- (id)authenticatedAccountDSID
{
  v2 = [(ISOperation *)self parentOperation];

  return [(ISOperation *)v2 authenticatedAccountDSID];
}

- (BOOL)copyAccountID:(id *)a3 credentialSource:(unint64_t *)a4 byAuthenticatingWithContext:(id)a5 returningError:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v10 = [[ISStoreAuthenticateOperation alloc] initWithAuthenticationContext:a5];
  if (v10)
  {
    if ([(ISOperation *)self runSubOperation:v10 returningError:&v22])
    {
      v11 = [(ISStoreAuthenticateOperation *)v10 authenticatedAccountDSID];
      v12 = [(ISOperation *)v10 authenticatedAccountCredentialSource];
      v13 = 1;
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_ERROR))
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

    v12 = 0;
    v11 = 0;
    v13 = 0;
    v22 = ISError(4, 0, 0);
  }

  if (a3)
  {
    *a3 = v11;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a4)
  {
LABEL_18:
    *a4 = v12;
  }

LABEL_19:
  if (a6)
  {
    *a6 = v22;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)copyAccountID:(id *)a3 credentialSource:(unint64_t *)a4 byHandlingAuthenticateResponse:(id)a5 returningError:(id *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v10 = [a5 responseDictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277D69B38] sharedDaemonConfigOversize];
    if (!v11)
    {
      v11 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v26 = 138412546;
      v27 = objc_opt_class();
      v28 = 2112;
      v29 = v10;
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

  v17 = [ISStoreAuthenticateOperation _copyErrorForAuthenticateResponse:a5 error:&v25, v23];
  if (v17)
  {
    v18 = [objc_msgSend(a5 "authenticatedAccount")];
    v19 = [a5 credentialSource];
    if (a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
    if (a3)
    {
LABEL_14:
      *a3 = v18;
      if (!a4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  if (a4)
  {
LABEL_15:
    *a4 = v19;
  }

LABEL_16:
  if (a6)
  {
    v20 = v17;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    *a6 = v25;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

@end