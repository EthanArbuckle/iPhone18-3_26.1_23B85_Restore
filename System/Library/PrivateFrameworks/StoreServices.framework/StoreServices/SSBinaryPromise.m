@interface SSBinaryPromise
+ (id)_globalPromiseStorage;
+ (id)_globalPromiseStorageAccessQueue;
+ (id)promiseWithError:(id)a3;
+ (id)promiseWithPromise:(id)a3;
+ (id)promiseWithSuccess;
- (BOOL)finishWithError:(id)a3;
- (BOOL)finishWithSuccess;
- (BOOL)resultWithError:(id *)a3;
- (BOOL)resultWithTimeout:(double)a3 error:(id *)a4;
- (SSBinaryPromise)init;
- (id)completionHandlerAdapter;
- (id)promiseAdapter;
- (void)_removeFromGlobalPromiseStorage;
- (void)addErrorBlock:(id)a3;
- (void)addFinishBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
- (void)waitUntilFinished;
- (void)waitUntilFinishedWithTimeout:(double)a3;
@end

@implementation SSBinaryPromise

- (SSBinaryPromise)init
{
  v9.receiver = self;
  v9.super_class = SSBinaryPromise;
  v2 = [(SSBinaryPromise *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(SSPromise);
    backingPromise = v2->_backingPromise;
    v2->_backingPromise = v3;

    v5 = +[SSBinaryPromise _globalPromiseStorageAccessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__SSBinaryPromise_init__block_invoke;
    block[3] = &unk_1E84AC050;
    v8 = v2;
    dispatch_sync(v5, block);
  }

  return v2;
}

void __23__SSBinaryPromise_init__block_invoke(uint64_t a1)
{
  v2 = +[SSBinaryPromise _globalPromiseStorage];
  [v2 addObject:*(a1 + 32)];
}

+ (id)promiseWithError:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SSBinaryPromise);
  [(SSBinaryPromise *)v4 finishWithError:v3];

  return v4;
}

+ (id)promiseWithPromise:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SSBinaryPromise);
  objc_initWeak(&location, v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SSBinaryPromise_promiseWithPromise___block_invoke;
  v8[3] = &unk_1E84AEFA0;
  objc_copyWeak(&v9, &location);
  [v3 addSuccessBlock:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SSBinaryPromise_promiseWithPromise___block_invoke_2;
  v6[3] = &unk_1E84AE400;
  objc_copyWeak(&v7, &location);
  [v3 addErrorBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v4;
}

void __38__SSBinaryPromise_promiseWithPromise___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithSuccess];
}

void __38__SSBinaryPromise_promiseWithPromise___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithError:v3];
}

+ (id)promiseWithSuccess
{
  v2 = objc_alloc_init(SSBinaryPromise);
  [(SSBinaryPromise *)v2 finishWithSuccess];

  return v2;
}

- (void)addErrorBlock:(id)a3
{
  v4 = a3;
  v5 = [(SSBinaryPromise *)self backingPromise];
  [v5 addErrorBlock:v4];
}

- (void)addFinishBlock:(id)a3
{
  v4 = a3;
  v5 = [(SSBinaryPromise *)self backingPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SSBinaryPromise_addFinishBlock___block_invoke;
  v7[3] = &unk_1E84AE9C8;
  v8 = v4;
  v6 = v4;
  [v5 addFinishBlock:v7];
}

void __34__SSBinaryPromise_addFinishBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  v5 = [(SSBinaryPromise *)self backingPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SSBinaryPromise_addSuccessBlock___block_invoke;
  v7[3] = &unk_1E84AEFC8;
  v8 = v4;
  v6 = v4;
  [v5 addSuccessBlock:v7];
}

- (BOOL)finishWithError:(id)a3
{
  v4 = a3;
  v5 = [(SSBinaryPromise *)self backingPromise];
  v6 = [v5 finishWithError:v4];

  [(SSBinaryPromise *)self _removeFromGlobalPromiseStorage];
  return v6;
}

- (BOOL)finishWithSuccess
{
  v3 = [(SSBinaryPromise *)self backingPromise];
  v4 = [v3 finishWithResult:MEMORY[0x1E695E118]];

  [(SSBinaryPromise *)self _removeFromGlobalPromiseStorage];
  return v4;
}

- (BOOL)resultWithError:(id *)a3
{
  v4 = [(SSBinaryPromise *)self backingPromise];
  v5 = [v4 resultWithError:a3];
  LOBYTE(a3) = v5 != 0;

  return a3;
}

- (BOOL)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [(SSBinaryPromise *)self backingPromise];
  v7 = [v6 resultWithTimeout:a4 error:a3];
  LOBYTE(a4) = v7 != 0;

  return a4;
}

- (void)waitUntilFinished
{
  v2 = [(SSBinaryPromise *)self backingPromise];
  [v2 waitUntilFinished];
}

- (void)waitUntilFinishedWithTimeout:(double)a3
{
  v4 = [(SSBinaryPromise *)self backingPromise];
  [v4 waitUntilFinishedWithTimeout:a3];
}

- (id)completionHandlerAdapter
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __43__SSBinaryPromise_completionHandlerAdapter__block_invoke;
  v8 = &unk_1E84AEFF0;
  objc_copyWeak(&v9, &location);
  v2 = MEMORY[0x1DA6DFBB0](&v5);
  v3 = [v2 copy];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __43__SSBinaryPromise_completionHandlerAdapter__block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (a2)
  {
    [WeakRetained finishWithSuccess];
  }

  else
  {
    [WeakRetained finishWithError:v7];
  }
}

- (id)promiseAdapter
{
  v3 = objc_alloc_init(SSPromise);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__SSBinaryPromise_promiseAdapter__block_invoke;
  v11[3] = &unk_1E84AC050;
  v4 = v3;
  v12 = v4;
  [(SSBinaryPromise *)self addSuccessBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__SSBinaryPromise_promiseAdapter__block_invoke_2;
  v9[3] = &unk_1E84AD730;
  v5 = v4;
  v10 = v5;
  [(SSBinaryPromise *)self addErrorBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

+ (id)_globalPromiseStorage
{
  if (_globalPromiseStorage_onceToken != -1)
  {
    +[SSBinaryPromise _globalPromiseStorage];
  }

  v3 = _globalPromiseStorage_sGlobalPromiseStorage;

  return v3;
}

void __40__SSBinaryPromise__globalPromiseStorage__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _globalPromiseStorage_sGlobalPromiseStorage;
  _globalPromiseStorage_sGlobalPromiseStorage = v0;
}

+ (id)_globalPromiseStorageAccessQueue
{
  if (_globalPromiseStorageAccessQueue_onceToken != -1)
  {
    +[SSBinaryPromise _globalPromiseStorageAccessQueue];
  }

  v3 = _globalPromiseStorageAccessQueue_sGlobalPromiseStorageQueue;

  return v3;
}

void __51__SSBinaryPromise__globalPromiseStorageAccessQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreServices.SSBinaryPromise.globalPromiseStorageAccessQueue", 0);
  v1 = _globalPromiseStorageAccessQueue_sGlobalPromiseStorageQueue;
  _globalPromiseStorageAccessQueue_sGlobalPromiseStorageQueue = v0;
}

- (void)_removeFromGlobalPromiseStorage
{
  objc_initWeak(&location, self);
  v2 = +[SSBinaryPromise _globalPromiseStorageAccessQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__SSBinaryPromise__removeFromGlobalPromiseStorage__block_invoke;
  v3[3] = &unk_1E84AD820;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __50__SSBinaryPromise__removeFromGlobalPromiseStorage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = +[SSBinaryPromise _globalPromiseStorage];
    [v2 removeObject:v3];

    WeakRetained = v3;
  }
}

@end