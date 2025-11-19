@interface UIKeyboardTaskExecutionContext
- (UIKeyboardTaskExecutionContext)init;
- (UIKeyboardTaskExecutionContext)initWithExecutionQueue:(id)a3;
- (UIKeyboardTaskExecutionContext)initWithParentContext:(id)a3 continuation:(id)a4;
- (id)childWithContinuation:(id)a3;
- (id)takeOwnershipOfPendingCompletionBlock;
- (void)returnExecutionToParentWithInfo:(id)a3;
- (void)setPendingCompletionBlock:(id)a3;
- (void)transferExecutionToMainThreadWithTask:(id)a3;
- (void)transferExecutionToMainThreadWithTask:(id)a3 breadcrumb:(id)a4;
@end

@implementation UIKeyboardTaskExecutionContext

- (UIKeyboardTaskExecutionContext)init
{
  v6.receiver = self;
  v6.super_class = UIKeyboardTaskExecutionContext;
  v3 = [(UIKeyboardTaskExecutionContext *)&v6 init];
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:v3 file:@"UIKeyboardTaskQueue.m" lineNumber:152 description:@"Only UIKeyboardTaskQueue may create UIKeyboardTaskExecutionContext instances."];

  return v3;
}

- (UIKeyboardTaskExecutionContext)initWithExecutionQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIKeyboardTaskExecutionContext;
  v6 = [(UIKeyboardTaskExecutionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executionQueue, a3);
  }

  return v7;
}

- (UIKeyboardTaskExecutionContext)initWithParentContext:(id)a3 continuation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = UIKeyboardTaskExecutionContext;
  v9 = [(UIKeyboardTaskExecutionContext *)&v15 init];
  if (v9)
  {
    v10 = [v7 executionQueue];
    executionQueue = v9->_executionQueue;
    v9->_executionQueue = v10;

    objc_storeStrong(&v9->_parentExecutionContext, a3);
    v12 = [v8 copy];
    continuation = v9->_continuation;
    v9->_continuation = v12;
  }

  return v9;
}

- (id)childWithContinuation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v6 = _UIKeyboardTaskQueueLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[UIKeyboardTaskExecutionContext childWithContinuation:]";
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s should probably only be called from the main thread.", buf, 0xCu);
    }
  }

  v7 = [(UIKeyboardTaskQueue *)self->_executionQueue executionContext];

  if (v7 != self)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:192 description:{@"Received %s when not the current execution context.", "-[UIKeyboardTaskExecutionContext childWithContinuation:]"}];
  }

  v8 = [[UIKeyboardTaskExecutionContext alloc] initWithParentContext:self continuation:v5];

  [(UIKeyboardTaskQueue *)self->_executionQueue setExecutionContext:v8];

  return v8;
}

- (void)returnExecutionToParentWithInfo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v6 = _UIKeyboardTaskQueueLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[UIKeyboardTaskExecutionContext returnExecutionToParentWithInfo:]";
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s should probably only be called from the main thread.", buf, 0xCu);
    }
  }

  v7 = [(UIKeyboardTaskQueue *)self->_executionQueue executionContext];

  if (v7 != self)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:211 description:{@"Received %s when not the current execution context.", "-[UIKeyboardTaskExecutionContext returnExecutionToParentWithInfo:]"}];
  }

  parentExecutionContext = self->_parentExecutionContext;
  if (parentExecutionContext)
  {
    v9 = self;
    [(UIKeyboardTaskExecutionContext *)parentExecutionContext setInfo:v5];
    [(UIKeyboardTaskQueue *)self->_executionQueue setExecutionContext:self->_parentExecutionContext];
    (*(v9->_continuation + 2))();
  }

  else
  {
    executionQueue = self->_executionQueue;
    v11 = self;
    [(UIKeyboardTaskQueue *)executionQueue finishExecution];
  }

  v12 = self->_executionQueue;
  self->_executionQueue = 0;
}

- (void)transferExecutionToMainThreadWithTask:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskExecutionContext *)self transferExecutionToMainThreadWithTask:v4 breadcrumb:v5];
}

- (void)transferExecutionToMainThreadWithTask:(id)a3 breadcrumb:(id)a4
{
  v10 = a3;
  v7 = a4;
  v8 = [(UIKeyboardTaskQueue *)self->_executionQueue executionContext];

  if (v8 != self)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:240 description:{@"Received %s when not the current execution context.", "-[UIKeyboardTaskExecutionContext transferExecutionToMainThreadWithTask:breadcrumb:]"}];
  }

  [(UIKeyboardTaskQueue *)self->_executionQueue performTaskOnMainThread:v10 breadcrumb:v7 waitUntilDone:0];
}

- (void)setPendingCompletionBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  pendingCompletionBlock = v4->_pendingCompletionBlock;
  v4->_pendingCompletionBlock = v5;

  objc_sync_exit(v4);
}

- (id)takeOwnershipOfPendingCompletionBlock
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _Block_copy(v2->_pendingCompletionBlock);
  pendingCompletionBlock = v2->_pendingCompletionBlock;
  v2->_pendingCompletionBlock = 0;

  objc_sync_exit(v2);
  v5 = _Block_copy(v3);

  return v5;
}

@end