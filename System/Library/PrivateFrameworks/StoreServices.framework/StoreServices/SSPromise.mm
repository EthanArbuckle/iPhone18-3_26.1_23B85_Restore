@interface SSPromise
+ (BOOL)_errorIsCanceledError:(id)error;
+ (SSPromise)promiseWithAll:(id)all;
+ (SSPromise)promiseWithAny:(id)any;
+ (SSPromise)promiseWithError:(id)error;
+ (SSPromise)promiseWithResult:(id)result;
+ (id)_globalPromiseStorage;
+ (id)_globalPromiseStorageAccessQueue;
+ (void)_configureAllPromise:(id)promise withResults:(id)results promises:(id)promises currentPromiseIndex:(unint64_t)index;
+ (void)_configureAnyPromise:(id)promise withPomises:(id)pomises currentPromiseIndex:(unint64_t)index;
+ (void)_finishPromise:(id)promise withPromise:(id)withPromise;
- (BOOL)_isFinished;
- (BOOL)cancel;
- (BOOL)finishWithResult:(id)result error:(id)error;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (SSPromise)init;
- (id)BOOLCompletionHandlerAdapter;
- (id)catchWithBlock:(id)block;
- (id)completionHandlerAdapter;
- (id)errorOnlyCompletionHandlerAdapter;
- (id)nilValueCompletionHandlerAdapter;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (id)resultWithError:(id *)error;
- (id)resultWithTimeout:(double)timeout error:(id *)error;
- (id)thenWithBlock:(id)block;
- (void)_addBlock:(id)block orCallWithResult:(id)result;
- (void)addErrorBlock:(id)block;
- (void)addFinishBlock:(id)block;
- (void)addSuccessBlock:(id)block;
@end

@implementation SSPromise

- (SSPromise)init
{
  v11.receiver = self;
  v11.super_class = SSPromise;
  v2 = [(SSPromise *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(SSPromiseCompletionBlocks);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v5;

    v7 = +[SSPromise _globalPromiseStorageAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __17__SSPromise_init__block_invoke;
    block[3] = &unk_1E84AC050;
    v10 = v2;
    dispatch_sync(v7, block);
  }

  return v2;
}

+ (id)_globalPromiseStorageAccessQueue
{
  if (_globalPromiseStorageAccessQueue_onceToken_0 != -1)
  {
    +[SSPromise _globalPromiseStorageAccessQueue];
  }

  v3 = _globalPromiseStorageAccessQueue_sGlobalPromiseStorageQueue_0;

  return v3;
}

void __45__SSPromise__globalPromiseStorageAccessQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSPromise.globalPromiseStorageAccessQueue", 0);
  v1 = _globalPromiseStorageAccessQueue_sGlobalPromiseStorageQueue_0;
  _globalPromiseStorageAccessQueue_sGlobalPromiseStorageQueue_0 = v0;
}

void __34__SSPromise__globalPromiseStorage__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _globalPromiseStorage_sGlobalPromiseStorage_0;
  _globalPromiseStorage_sGlobalPromiseStorage_0 = v0;
}

+ (id)_globalPromiseStorage
{
  if (_globalPromiseStorage_onceToken_0 != -1)
  {
    +[SSPromise _globalPromiseStorage];
  }

  v3 = _globalPromiseStorage_sGlobalPromiseStorage_0;

  return v3;
}

void __17__SSPromise_init__block_invoke(uint64_t a1)
{
  v2 = +[SSPromise _globalPromiseStorage];
  [v2 addObject:*(a1 + 32)];
}

- (id)completionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __37__SSPromise_completionHandlerAdapter__block_invoke;
  v8 = &unk_1E84AD848;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x1DA6DFBB0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __37__SSPromise_completionHandlerAdapter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithResult:v6 error:v5];
}

+ (SSPromise)promiseWithError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 finishWithError:errorCopy];

  return v4;
}

+ (SSPromise)promiseWithResult:(id)result
{
  resultCopy = result;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 finishWithResult:resultCopy];

  return v4;
}

+ (SSPromise)promiseWithAll:(id)all
{
  allCopy = all;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [objc_opt_class() _configureAllPromise:v4 withResults:v5 promises:allCopy currentPromiseIndex:0];

  return v4;
}

+ (SSPromise)promiseWithAny:(id)any
{
  anyCopy = any;
  v4 = objc_alloc_init(objc_opt_class());
  [objc_opt_class() _configureAnyPromise:v4 withPomises:anyCopy currentPromiseIndex:0];

  return v4;
}

- (BOOL)isCancelled
{
  stateLock = [(SSPromise *)self stateLock];
  [stateLock lock];

  if ([(SSPromise *)self _isFinished])
  {
    v4 = objc_opt_class();
    promiseResult = [(SSPromise *)self promiseResult];
    error = [promiseResult error];
    v7 = [v4 _errorIsCanceledError:error];
  }

  else
  {
    v7 = 0;
  }

  stateLock2 = [(SSPromise *)self stateLock];
  [stateLock2 unlock];

  return v7;
}

- (BOOL)isFinished
{
  stateLock = [(SSPromise *)self stateLock];
  [stateLock lock];

  LOBYTE(stateLock) = [(SSPromise *)self _isFinished];
  stateLock2 = [(SSPromise *)self stateLock];
  [stateLock2 unlock];

  return stateLock;
}

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  completionBlocks = [(SSPromise *)self completionBlocks];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__SSPromise_addErrorBlock___block_invoke;
  v11[3] = &unk_1E84AC360;
  v12 = completionBlocks;
  v13 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27__SSPromise_addErrorBlock___block_invoke_2;
  v8[3] = &unk_1E84B2250;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(SSPromise *)self _addBlock:v11 orCallWithResult:v8];
}

- (void)addFinishBlock:(id)block
{
  blockCopy = block;
  completionBlocks = [(SSPromise *)self completionBlocks];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __28__SSPromise_addFinishBlock___block_invoke;
  v11[3] = &unk_1E84AC360;
  v12 = completionBlocks;
  v13 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__SSPromise_addFinishBlock___block_invoke_2;
  v8[3] = &unk_1E84B2250;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(SSPromise *)self _addBlock:v11 orCallWithResult:v8];
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  completionBlocks = [(SSPromise *)self completionBlocks];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __29__SSPromise_addSuccessBlock___block_invoke;
  v11[3] = &unk_1E84AC360;
  v12 = completionBlocks;
  v13 = blockCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__SSPromise_addSuccessBlock___block_invoke_2;
  v8[3] = &unk_1E84B2250;
  v9 = v12;
  v10 = v13;
  v6 = v13;
  v7 = v12;
  [(SSPromise *)self _addBlock:v11 orCallWithResult:v8];
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  stateLock = [(SSPromise *)self stateLock];
  v8 = [stateLock lockWhenCondition:1 beforeDate:dateCopy];

  if (v8)
  {
    promiseResult = [(SSPromise *)self promiseResult];
    stateLock2 = [(SSPromise *)self stateLock];
    [stateLock2 unlock];

    result = [promiseResult result];

    if (error && !result)
    {
      *error = [promiseResult error];
    }

    result2 = [promiseResult result];
  }

  else if (error)
  {
    SSError(@"SSErrorDomain", 149, 0, 0);
    *error = result2 = 0;
  }

  else
  {
    result2 = 0;
  }

  return result2;
}

- (id)resultWithError:(id *)error
{
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [(SSPromise *)self resultBeforeDate:distantFuture error:error];

  return v6;
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:timeout];
  v7 = [(SSPromise *)self resultBeforeDate:v6 error:error];

  return v7;
}

- (id)catchWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(SSPromise);
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __28__SSPromise_catchWithBlock___block_invoke;
  v11[3] = &unk_1E84B2278;
  objc_copyWeak(&v14, &location);
  v6 = blockCopy;
  v13 = v6;
  v7 = v5;
  v12 = v7;
  [(SSPromise *)self addFinishBlock:v11];
  v8 = v12;
  v9 = v7;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __28__SSPromise_catchWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [SSPromise promiseWithResult:v8];
  }
  v7 = ;
  [objc_opt_class() _finishPromise:*(a1 + 32) withPromise:v7];
}

- (id)thenWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(SSPromise);
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__SSPromise_thenWithBlock___block_invoke;
  v11[3] = &unk_1E84B2278;
  objc_copyWeak(&v14, &location);
  v6 = blockCopy;
  v13 = v6;
  v7 = v5;
  v12 = v7;
  [(SSPromise *)self addFinishBlock:v11];
  v8 = v12;
  v9 = v7;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __27__SSPromise_thenWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [SSPromise promiseWithError:v5];
  }
  v7 = ;
  [objc_opt_class() _finishPromise:*(a1 + 32) withPromise:v7];
}

- (BOOL)cancel
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  LOBYTE(self) = [(SSPromise *)self finishWithResult:0 error:v3];

  return self;
}

- (BOOL)finishWithResult:(id)result error:(id)error
{
  v55 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  v8 = errorCopy;
  if (!resultCopy || !errorCopy)
  {
    if (resultCopy | errorCopy)
    {
      goto LABEL_26;
    }

    v9 = SSPromiseLogConfig();
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v23 = shouldLog | 2;
    }

    else
    {
      v23 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      *location = 138543362;
      *&location[4] = objc_opt_class();
      v24 = *&location[4];
      LODWORD(v47) = 12;
      v46 = location;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

LABEL_24:

    goto LABEL_25;
  }

  v9 = SSPromiseLogConfig();
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog2 | 2;
  }

  else
  {
    v11 = shouldLog2;
  }

  oSLogObject = [v9 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_24;
  }

  *location = 138543874;
  *&location[4] = objc_opt_class();
  v51 = 2114;
  v52 = resultCopy;
  v53 = 2114;
  v54 = v8;
  v13 = *&location[4];
  LODWORD(v47) = 32;
  v46 = location;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
LABEL_12:
    v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, location, v47}];
    free(v14);
    SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
  }

LABEL_25:

LABEL_26:
  stateLock = [(SSPromise *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSPromise *)self stateLock];
  condition = [stateLock2 condition];

  if (condition == 1)
  {
    v32 = SSPromiseLogConfig();
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v34 = shouldLog3 | 2;
    }

    else
    {
      v34 = shouldLog3;
    }

    oSLogObject2 = [v32 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v34 &= 2u;
    }

    if (v34)
    {
      v36 = objc_opt_class();
      *location = 138543362;
      *&location[4] = v36;
      v37 = v36;
      LODWORD(v47) = 12;
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
LABEL_39:

        stateLock3 = [(SSPromise *)self stateLock];
        [(SSPromiseResult *)stateLock3 unlock];
        goto LABEL_40;
      }

      oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v38 encoding:{4, location, v47}];
      free(v38);
      SSFileLog(v32, @"%@", v39, v40, v41, v42, v43, v44, oSLogObject2);
    }

    goto LABEL_39;
  }

  stateLock3 = [[SSPromiseResult alloc] initWithResult:resultCopy error:v8];
  [(SSPromise *)self setPromiseResult:stateLock3];
  stateLock4 = [(SSPromise *)self stateLock];
  [stateLock4 unlockWithCondition:1];

  completionBlocks = [(SSPromise *)self completionBlocks];
  [completionBlocks flushCompletionBlocksWithPromiseResult:stateLock3];

  objc_initWeak(location, self);
  v31 = +[SSPromise _globalPromiseStorageAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SSPromise_finishWithResult_error___block_invoke;
  block[3] = &unk_1E84AD820;
  objc_copyWeak(&v49, location);
  dispatch_async(v31, block);

  objc_destroyWeak(&v49);
  objc_destroyWeak(location);
LABEL_40:

  return condition != 1;
}

void __36__SSPromise_finishWithResult_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[SSPromise _globalPromiseStorage];
  [v1 removeObject:WeakRetained];
}

- (id)BOOLCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __41__SSPromise_BOOLCompletionHandlerAdapter__block_invoke;
  v8 = &unk_1E84AEFF0;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x1DA6DFBB0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __41__SSPromise_BOOLCompletionHandlerAdapter__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v6 finishWithResult:v7 error:v8];
  }

  else
  {
    [WeakRetained finishWithResult:0 error:v8];
  }
}

- (id)errorOnlyCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __46__SSPromise_errorOnlyCompletionHandlerAdapter__block_invoke;
  v8 = &unk_1E84AE400;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x1DA6DFBB0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __46__SSPromise_errorOnlyCompletionHandlerAdapter__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained finishWithError:v5];
  }

  else
  {
    [WeakRetained finishWithResult:MEMORY[0x1E695E118]];
  }
}

- (id)nilValueCompletionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __45__SSPromise_nilValueCompletionHandlerAdapter__block_invoke;
  v8 = &unk_1E84AD848;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x1DA6DFBB0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __45__SSPromise_nilValueCompletionHandlerAdapter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v9 | v5)
  {
    if (v9)
    {
      [WeakRetained finishWithResult:?];
    }

    else
    {
      [WeakRetained finishWithError:v5];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    [v7 finishWithResult:v8];
  }
}

- (void)_addBlock:(id)block orCallWithResult:(id)result
{
  blockCopy = block;
  resultCopy = result;
  stateLock = [(SSPromise *)self stateLock];
  [stateLock lock];

  promiseResult = [(SSPromise *)self promiseResult];
  if (promiseResult)
  {
    stateLock2 = [(SSPromise *)self stateLock];
    [stateLock2 unlock];

    resultCopy[2](resultCopy, promiseResult);
  }

  else
  {
    blockCopy[2]();
    stateLock3 = [(SSPromise *)self stateLock];
    [stateLock3 unlock];
  }
}

+ (void)_configureAllPromise:(id)promise withResults:(id)results promises:(id)promises currentPromiseIndex:(unint64_t)index
{
  promiseCopy = promise;
  resultsCopy = results;
  promisesCopy = promises;
  v13 = [promisesCopy objectAtIndexedSubscript:index];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __75__SSPromise__configureAllPromise_withResults_promises_currentPromiseIndex___block_invoke;
  v23[3] = &unk_1E84B22A0;
  objc_copyWeak(v27, &location);
  v14 = resultsCopy;
  v24 = v14;
  v27[1] = index;
  v15 = promisesCopy;
  v25 = v15;
  v16 = promiseCopy;
  v26 = v16;
  [v13 addSuccessBlock:v23];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__SSPromise__configureAllPromise_withResults_promises_currentPromiseIndex___block_invoke_2;
  v19[3] = &unk_1E84B22C8;
  indexCopy = index;
  v17 = v15;
  v20 = v17;
  v18 = v16;
  v21 = v18;
  [v13 addErrorBlock:v19];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

void __75__SSPromise__configureAllPromise_withResults_promises_currentPromiseIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) addObject:v3];

  v4 = *(a1 + 64);
  if (v4 == [*(a1 + 40) count] - 1)
  {
    [*(a1 + 48) finishWithResult:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _configureAllPromise:*(a1 + 48) withResults:*(a1 + 32) promises:*(a1 + 40) currentPromiseIndex:*(a1 + 64) + 1];
  }
}

void __75__SSPromise__configureAllPromise_withResults_promises_currentPromiseIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  for (i = *(a1 + 48) + 1; i < [*(a1 + 32) count]; ++i)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:i];
    [v4 cancel];
  }

  [*(a1 + 40) finishWithError:v5];
}

+ (void)_configureAnyPromise:(id)promise withPomises:(id)pomises currentPromiseIndex:(unint64_t)index
{
  promiseCopy = promise;
  pomisesCopy = pomises;
  v10 = [pomisesCopy objectAtIndexedSubscript:index];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__SSPromise__configureAnyPromise_withPomises_currentPromiseIndex___block_invoke;
  v19[3] = &unk_1E84B22F0;
  indexCopy = index;
  v11 = pomisesCopy;
  v20 = v11;
  v12 = promiseCopy;
  v21 = v12;
  [v10 addSuccessBlock:v19];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__SSPromise__configureAnyPromise_withPomises_currentPromiseIndex___block_invoke_2;
  v15[3] = &unk_1E84B2318;
  objc_copyWeak(v18, &location);
  v18[1] = index;
  v13 = v11;
  v16 = v13;
  v14 = v12;
  v17 = v14;
  [v10 addErrorBlock:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __66__SSPromise__configureAnyPromise_withPomises_currentPromiseIndex___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  for (i = *(a1 + 48) + 1; i < [*(a1 + 32) count]; ++i)
  {
    v4 = [*(a1 + 32) objectAtIndexedSubscript:i];
    [v4 cancel];
  }

  [*(a1 + 40) finishWithResult:v5];
}

void __66__SSPromise__configureAnyPromise_withPomises_currentPromiseIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 56);
  if (v4 == [*(a1 + 32) count] - 1)
  {
    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    [WeakRetained _configureAnyPromise:*(a1 + 40) withPomises:*(a1 + 32) currentPromiseIndex:*(a1 + 56) + 1];
  }
}

+ (BOOL)_errorIsCanceledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [errorCopy code] == 3072;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_finishPromise:(id)promise withPromise:(id)withPromise
{
  promiseCopy = promise;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SSPromise__finishPromise_withPromise___block_invoke;
  v11[3] = &unk_1E84B2340;
  v6 = promiseCopy;
  v12 = v6;
  withPromiseCopy = withPromise;
  [withPromiseCopy addSuccessBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__SSPromise__finishPromise_withPromise___block_invoke_2;
  v9[3] = &unk_1E84AD730;
  v10 = v6;
  v8 = v6;
  [withPromiseCopy addErrorBlock:v9];
}

- (BOOL)_isFinished
{
  stateLock = [(SSPromise *)self stateLock];
  v3 = [stateLock condition] == 1;

  return v3;
}

@end