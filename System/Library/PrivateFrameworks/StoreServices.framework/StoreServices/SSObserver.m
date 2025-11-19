@interface SSObserver
+ (id)observerWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5;
- (void)_sendCompletionUsingQueue:(id)a3;
- (void)_sendFailure:(id)a3 usingQueue:(id)a4;
- (void)_sendResult:(id)a3 usingQueue:(id)a4;
@end

@implementation SSObserver

+ (id)observerWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(objc_opt_class());
  objc_sync_enter(v10);
  [v10 setCompletionBlock:v8];
  [v10 setFailureBlock:v9];
  [v10 setResultBlock:v7];
  objc_sync_exit(v10);

  return v10;
}

- (void)_sendCompletionUsingQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(SSObserver *)v5 completionBlock];
  objc_sync_exit(v5);

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SSObserver__sendCompletionUsingQueue___block_invoke;
    block[3] = &unk_1E84ADED0;
    v8 = v6;
    dispatch_async(v4, block);
  }
}

- (void)_sendFailure:(id)a3 usingQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SSObserver _sendFailure:a2 usingQueue:self];
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(SSObserver *)v9 failureBlock];
  objc_sync_exit(v9);

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__SSObserver__sendFailure_usingQueue___block_invoke;
    v11[3] = &unk_1E84AC338;
    v13 = v10;
    v12 = v7;
    dispatch_async(v8, v11);
  }
}

- (void)_sendResult:(id)a3 usingQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SSObserver _sendResult:a2 usingQueue:self];
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(SSObserver *)v9 resultBlock];
  objc_sync_exit(v9);

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__SSObserver__sendResult_usingQueue___block_invoke;
    v11[3] = &unk_1E84AC338;
    v13 = v10;
    v12 = v7;
    dispatch_async(v8, v11);
  }
}

- (void)_sendFailure:(uint64_t)a1 usingQueue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSObserver.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

- (void)_sendResult:(uint64_t)a1 usingQueue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SSObserver.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"result"}];
}

@end