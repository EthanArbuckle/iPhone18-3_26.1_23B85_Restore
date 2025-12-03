@interface UIKeyboardTaskExecutionContext
- (UIKeyboardTaskExecutionContext)init;
- (UIKeyboardTaskExecutionContext)initWithExecutionQueue:(id)queue;
- (UIKeyboardTaskExecutionContext)initWithParentContext:(id)context continuation:(id)continuation;
- (id)childWithContinuation:(id)continuation;
- (id)takeOwnershipOfPendingCompletionBlock;
- (void)returnExecutionToParentWithInfo:(id)info;
- (void)setPendingCompletionBlock:(id)block;
- (void)transferExecutionToMainThreadWithTask:(id)task;
- (void)transferExecutionToMainThreadWithTask:(id)task breadcrumb:(id)breadcrumb;
@end

@implementation UIKeyboardTaskExecutionContext

- (UIKeyboardTaskExecutionContext)init
{
  v6.receiver = self;
  v6.super_class = UIKeyboardTaskExecutionContext;
  v3 = [(UIKeyboardTaskExecutionContext *)&v6 init];
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:v3 file:@"UIKeyboardTaskQueue.m" lineNumber:152 description:@"Only UIKeyboardTaskQueue may create UIKeyboardTaskExecutionContext instances."];

  return v3;
}

- (UIKeyboardTaskExecutionContext)initWithExecutionQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = UIKeyboardTaskExecutionContext;
  v6 = [(UIKeyboardTaskExecutionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_executionQueue, queue);
  }

  return v7;
}

- (UIKeyboardTaskExecutionContext)initWithParentContext:(id)context continuation:(id)continuation
{
  contextCopy = context;
  continuationCopy = continuation;
  v15.receiver = self;
  v15.super_class = UIKeyboardTaskExecutionContext;
  v9 = [(UIKeyboardTaskExecutionContext *)&v15 init];
  if (v9)
  {
    executionQueue = [contextCopy executionQueue];
    executionQueue = v9->_executionQueue;
    v9->_executionQueue = executionQueue;

    objc_storeStrong(&v9->_parentExecutionContext, context);
    v12 = [continuationCopy copy];
    continuation = v9->_continuation;
    v9->_continuation = v12;
  }

  return v9;
}

- (id)childWithContinuation:(id)continuation
{
  v13 = *MEMORY[0x1E69E9840];
  continuationCopy = continuation;
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

  executionContext = [(UIKeyboardTaskQueue *)self->_executionQueue executionContext];

  if (executionContext != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:192 description:{@"Received %s when not the current execution context.", "-[UIKeyboardTaskExecutionContext childWithContinuation:]"}];
  }

  v8 = [[UIKeyboardTaskExecutionContext alloc] initWithParentContext:self continuation:continuationCopy];

  [(UIKeyboardTaskQueue *)self->_executionQueue setExecutionContext:v8];

  return v8;
}

- (void)returnExecutionToParentWithInfo:(id)info
{
  v16 = *MEMORY[0x1E69E9840];
  infoCopy = info;
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

  executionContext = [(UIKeyboardTaskQueue *)self->_executionQueue executionContext];

  if (executionContext != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:211 description:{@"Received %s when not the current execution context.", "-[UIKeyboardTaskExecutionContext returnExecutionToParentWithInfo:]"}];
  }

  parentExecutionContext = self->_parentExecutionContext;
  if (parentExecutionContext)
  {
    selfCopy = self;
    [(UIKeyboardTaskExecutionContext *)parentExecutionContext setInfo:infoCopy];
    [(UIKeyboardTaskQueue *)self->_executionQueue setExecutionContext:self->_parentExecutionContext];
    (*(selfCopy->_continuation + 2))();
  }

  else
  {
    executionQueue = self->_executionQueue;
    selfCopy2 = self;
    [(UIKeyboardTaskQueue *)executionQueue finishExecution];
  }

  v12 = self->_executionQueue;
  self->_executionQueue = 0;
}

- (void)transferExecutionToMainThreadWithTask:(id)task
{
  taskCopy = task;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskExecutionContext *)self transferExecutionToMainThreadWithTask:taskCopy breadcrumb:v5];
}

- (void)transferExecutionToMainThreadWithTask:(id)task breadcrumb:(id)breadcrumb
{
  taskCopy = task;
  breadcrumbCopy = breadcrumb;
  executionContext = [(UIKeyboardTaskQueue *)self->_executionQueue executionContext];

  if (executionContext != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:240 description:{@"Received %s when not the current execution context.", "-[UIKeyboardTaskExecutionContext transferExecutionToMainThreadWithTask:breadcrumb:]"}];
  }

  [(UIKeyboardTaskQueue *)self->_executionQueue performTaskOnMainThread:taskCopy breadcrumb:breadcrumbCopy waitUntilDone:0];
}

- (void)setPendingCompletionBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [blockCopy copy];
  pendingCompletionBlock = selfCopy->_pendingCompletionBlock;
  selfCopy->_pendingCompletionBlock = v5;

  objc_sync_exit(selfCopy);
}

- (id)takeOwnershipOfPendingCompletionBlock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _Block_copy(selfCopy->_pendingCompletionBlock);
  pendingCompletionBlock = selfCopy->_pendingCompletionBlock;
  selfCopy->_pendingCompletionBlock = 0;

  objc_sync_exit(selfCopy);
  v5 = _Block_copy(v3);

  return v5;
}

@end