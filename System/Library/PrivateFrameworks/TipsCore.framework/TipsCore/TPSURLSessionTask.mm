@interface TPSURLSessionTask
+ (TPSURLSessionDelegateResponds)delegateRespondsWithDelegate:(id)delegate;
- (NSString)identifier;
- (NSURL)URL;
- (NSURLSession)underlyingSession;
- (TPSURLSessionDelegate)networkDelegate;
- (TPSURLSessionTask)initWithSessionTask:(id)task identifier:(id)identifier;
- (void)cancel;
- (void)dealloc;
- (void)didCompleteWithError:(id)error;
- (void)registerDelegate:(id)delegate;
- (void)setPriority:(float)priority;
- (void)unregisterDelegate:(id)delegate;
@end

@implementation TPSURLSessionTask

- (void)dealloc
{
  [(TPSURLSessionTask *)self cancel];
  v3.receiver = self;
  v3.super_class = TPSURLSessionTask;
  [(TPSURLSessionTask *)&v3 dealloc];
}

- (TPSURLSessionTask)initWithSessionTask:(id)task identifier:(id)identifier
{
  taskCopy = task;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = TPSURLSessionTask;
  v9 = [(TPSURLSessionTask *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_task, task);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.tipsd.urlsessionQueue", v11);
    sessionTaskDelegateQueue = v10->_sessionTaskDelegateQueue;
    v10->_sessionTaskDelegateQueue = v12;

    v14 = v10->_sessionTaskDelegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__TPSURLSessionTask_initWithSessionTask_identifier___block_invoke;
    block[3] = &unk_1E8101340;
    v17 = v10;
    dispatch_sync(v14, block);
  }

  return v10;
}

void __52__TPSURLSessionTask_initWithSessionTask_identifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
  [*(a1 + 32) setSessionTaskDelegates:v2];
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (identifier)
  {
    lastPathComponent = identifier;
  }

  else
  {
    v4 = [(TPSURLSessionTask *)self URL];
    lastPathComponent = [v4 lastPathComponent];
  }

  return lastPathComponent;
}

- (NSURL)URL
{
  originalRequest = [(NSURLSessionTask *)self->_task originalRequest];
  v3 = [originalRequest URL];

  return v3;
}

- (void)setPriority:(float)priority
{
  [(NSURLSessionTask *)self->_task priority];
  if (*&v5 != priority)
  {
    task = self->_task;
    *&v5 = priority;

    [(NSURLSessionTask *)task setPriority:v5];
  }
}

+ (TPSURLSessionDelegateResponds)delegateRespondsWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_opt_respondsToSelector();
  v5 = objc_opt_respondsToSelector();
  v6 = objc_opt_respondsToSelector();
  v7 = objc_opt_respondsToSelector();
  v8 = objc_opt_respondsToSelector();

  v9 = 0x100000000;
  if ((v4 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x1000000;
  if ((v8 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if ((v5 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 256;
  if ((v7 & 1) == 0)
  {
    v12 = 0;
  }

  return ((v11 | v9) & 0xFFFFFFFFFFFFFFFELL | v6 & 1 | v12 | v10);
}

- (void)didCompleteWithError:(id)error
{
  errorCopy = error;
  sessionTaskDelegateQueue = self->_sessionTaskDelegateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__TPSURLSessionTask_didCompleteWithError___block_invoke;
  v7[3] = &unk_1E8101390;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(sessionTaskDelegateQueue, v7);
}

void __42__TPSURLSessionTask_didCompleteWithError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) sessionTaskDelegates];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) URLSessionSessionTask:*(a1 + 32) didCompleteWithError:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) sessionTaskDelegates];
  [v7 removeAllObjects];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy && ![(NSHashTable *)self->_sessionTaskDelegates containsObject:delegateCopy])
  {
    sessionTaskDelegateQueue = self->_sessionTaskDelegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__TPSURLSessionTask_registerDelegate___block_invoke;
    v6[3] = &unk_1E8101390;
    v6[4] = self;
    v7 = delegateCopy;
    dispatch_sync(sessionTaskDelegateQueue, v6);
  }
}

void __38__TPSURLSessionTask_registerDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionTaskDelegates];
  [v2 addObject:*(a1 + 40)];
}

- (void)unregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  sessionTaskDelegateQueue = self->_sessionTaskDelegateQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __40__TPSURLSessionTask_unregisterDelegate___block_invoke;
  v10 = &unk_1E8101390;
  selfCopy = self;
  v6 = delegateCopy;
  v12 = v6;
  dispatch_sync(sessionTaskDelegateQueue, &v7);
  if (![(NSHashTable *)self->_sessionTaskDelegates count:v7])
  {
    [(TPSURLSessionTask *)self cancel];
  }
}

void __40__TPSURLSessionTask_unregisterDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionTaskDelegates];
  [v2 removeObject:*(a1 + 40)];
}

- (void)cancel
{
  [(NSURLSessionTask *)self->_task cancel];
  sessionTaskDelegateQueue = self->_sessionTaskDelegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__TPSURLSessionTask_cancel__block_invoke;
  block[3] = &unk_1E8101340;
  block[4] = self;
  dispatch_sync(sessionTaskDelegateQueue, block);
  self->_cancelled = 1;
}

void __27__TPSURLSessionTask_cancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionTaskDelegates];
  [v1 removeAllObjects];
}

- (NSURLSession)underlyingSession
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingSession);

  return WeakRetained;
}

- (TPSURLSessionDelegate)networkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_networkDelegate);

  return WeakRetained;
}

@end