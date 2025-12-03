@interface SSObserver
+ (id)observerWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock;
- (void)_sendCompletionUsingQueue:(id)queue;
- (void)_sendFailure:(id)failure usingQueue:(id)queue;
- (void)_sendResult:(id)result usingQueue:(id)queue;
@end

@implementation SSObserver

+ (id)observerWithResultBlock:(id)block completionBlock:(id)completionBlock failureBlock:(id)failureBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  failureBlockCopy = failureBlock;
  v10 = objc_alloc_init(objc_opt_class());
  objc_sync_enter(v10);
  [v10 setCompletionBlock:completionBlockCopy];
  [v10 setFailureBlock:failureBlockCopy];
  [v10 setResultBlock:blockCopy];
  objc_sync_exit(v10);

  return v10;
}

- (void)_sendCompletionUsingQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  completionBlock = [(SSObserver *)selfCopy completionBlock];
  objc_sync_exit(selfCopy);

  if (completionBlock)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__SSObserver__sendCompletionUsingQueue___block_invoke;
    block[3] = &unk_1E84ADED0;
    v8 = completionBlock;
    dispatch_async(queueCopy, block);
  }
}

- (void)_sendFailure:(id)failure usingQueue:(id)queue
{
  failureCopy = failure;
  queueCopy = queue;
  if (!failureCopy)
  {
    [SSObserver _sendFailure:a2 usingQueue:self];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  failureBlock = [(SSObserver *)selfCopy failureBlock];
  objc_sync_exit(selfCopy);

  if (failureBlock)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__SSObserver__sendFailure_usingQueue___block_invoke;
    v11[3] = &unk_1E84AC338;
    v13 = failureBlock;
    v12 = failureCopy;
    dispatch_async(queueCopy, v11);
  }
}

- (void)_sendResult:(id)result usingQueue:(id)queue
{
  resultCopy = result;
  queueCopy = queue;
  if (!resultCopy)
  {
    [SSObserver _sendResult:a2 usingQueue:self];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  resultBlock = [(SSObserver *)selfCopy resultBlock];
  objc_sync_exit(selfCopy);

  if (resultBlock)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__SSObserver__sendResult_usingQueue___block_invoke;
    v11[3] = &unk_1E84AC338;
    v13 = resultBlock;
    v12 = resultCopy;
    dispatch_async(queueCopy, v11);
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