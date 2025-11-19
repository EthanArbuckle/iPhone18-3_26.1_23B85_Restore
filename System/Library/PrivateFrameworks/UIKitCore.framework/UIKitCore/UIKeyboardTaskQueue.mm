@interface UIKeyboardTaskQueue
- (BOOL)isEmpty;
- (UIKeyboardTaskQueue)init;
- (id)addAndReturnTask:(id)a3 breadcrumb:(id)a4;
- (id)scheduleTask:(id)a3 timeInterval:(double)a4 repeats:(BOOL)a5;
- (id)scheduleTask:(id)a3 timeInterval:(double)a4 repeats:(BOOL)a5 breadcrumb:(id)a6;
- (void)_lockWhenReadyForMainThread;
- (void)addDeferredTask:(id)a3;
- (void)addDeferredTask:(id)a3 breadcrumb:(id)a4;
- (void)addTask:(id)a3;
- (void)addTask:(id)a3 breadcrumb:(id)a4;
- (void)continueExecutionOnMainThread;
- (void)finishExecution;
- (void)lockWhenReadyForMainThread;
- (void)performDeferredTaskIfIdle;
- (void)performSingleTask:(id)a3;
- (void)performSingleTask:(id)a3 breadcrumb:(id)a4;
- (void)performTask:(id)a3;
- (void)performTask:(id)a3 breadcrumb:(id)a4;
- (void)performTaskOnMainThread:(id)a3 breadcrumb:(id)a4 waitUntilDone:(BOOL)a5;
- (void)promoteDeferredTaskIfIdle;
- (void)unlock;
- (void)waitUntilAllTasksAreFinished;
- (void)waitUntilTaskIsFinished:(id)a3;
@end

@implementation UIKeyboardTaskQueue

- (void)unlock
{
  if (self->_executionContext)
  {
    v2 = self->_mainThreadContinuation == 0;
  }

  else
  {
    v2 = 0;
  }

  [(NSConditionLock *)self->_lock unlockWithCondition:v2];
}

- (void)continueExecutionOnMainThread
{
  if (pthread_main_np() == 1)
  {
    if (![(UIKeyboardTaskQueue *)self tryLockWhenReadyForMainThread])
    {
      return;
    }

    v3 = keyboardPerfLog_Staging();
    if (os_signpost_enabled(v3))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.taskqueue.execution", "", v12, 2u);
    }

    if (self->_executionContext)
    {
      mainThreadContinuation = self->_mainThreadContinuation;
      if (mainThreadContinuation)
      {
        v5 = mainThreadContinuation;
        v6 = self->_mainThreadContinuation;
        self->_mainThreadContinuation = 0;

LABEL_14:
        v8 = [(UIKeyboardTaskEntry *)v5 originatingStack];
        [(UIKeyboardTaskQueue *)self setActiveOriginator:v8];

        v9 = [(UIKeyboardTaskEntry *)v5 breadcrumb];
        [(UIKeyboardTaskQueue *)self setActiveTaskBreadcrumb:v9];

        [(UIKeyboardTaskQueue *)self unlock];
        executingOnMainThread = self->_executingOnMainThread;
        self->_executingOnMainThread = 1;
        executionContext = self->_executionContext;
        if (v5)
        {
          [(UIKeyboardTaskEntry *)v5 execute:executionContext];
        }

        else if (!executionContext)
        {
          if ([(NSMutableArray *)self->_deferredTasks count])
          {
            [(UIKeyboardTaskQueue *)self performDeferredTaskIfIdle];
          }
        }

        self->_executingOnMainThread = executingOnMainThread;

        return;
      }
    }

    else if ([(NSMutableArray *)self->_tasks count])
    {
      v7 = [[UIKeyboardTaskExecutionContext alloc] initWithExecutionQueue:self];
      [(UIKeyboardTaskQueue *)self setExecutionContext:v7];

      v5 = [(NSMutableArray *)self->_tasks objectAtIndex:0];
      [(NSMutableArray *)self->_tasks removeObjectAtIndex:0];
      goto LABEL_14;
    }

    v5 = 0;
    goto LABEL_14;
  }

  [(UIKeyboardTaskQueue *)self performSelectorOnMainThread:sel_continueExecutionOnMainThread withObject:0 waitUntilDone:0];
}

- (void)finishExecution
{
  [(UIKeyboardTaskQueue *)self lock];
  if (!self->_executionContext)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:505 description:@"Received keyboard task completion but there is no current keyboard task."];
  }

  if (self->_mainThreadContinuation)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:506 description:@"Received keyboard task completion before the task's continuation executed."];
  }

  [(UIKeyboardTaskQueue *)self setExecutionContext:0];
  [(UIKeyboardTaskQueue *)self setActiveOriginator:0];
  if ([(NSMutableArray *)self->_tasks count])
  {
    [(UIKeyboardTaskQueue *)self unlock];
LABEL_8:

    [(UIKeyboardTaskQueue *)self performSelectorOnMainThread:sel_continueExecutionOnMainThread withObject:0 waitUntilDone:0];
    return;
  }

  v4 = [(NSMutableArray *)self->_deferredTasks count];
  [(UIKeyboardTaskQueue *)self unlock];
  if (v4)
  {
    goto LABEL_8;
  }

  v5 = keyboardPerfLog_Staging();
  if (os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.taskqueue.execution", "", v9, 2u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"UIKeyboardTaskQueueIsEmptyNotification" object:self];
}

- (void)waitUntilAllTasksAreFinished
{
  if (pthread_main_np() != 1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:659 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue waitUntilAllTasksAreFinished]"}];
  }

  while (1)
  {
    [(UIKeyboardTaskQueue *)self lockWhenReadyForMainThread];
    if (!self->_executionContext && ![(NSMutableArray *)self->_tasks count]&& ![(NSMutableArray *)self->_deferredTasks count])
    {
      break;
    }

    if (![(NSMutableArray *)self->_tasks count])
    {
      [(UIKeyboardTaskQueue *)self promoteDeferredTaskIfIdle];
    }

    [(UIKeyboardTaskQueue *)self unlock];
    [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
  }

  [(UIKeyboardTaskQueue *)self unlock];
}

- (void)_lockWhenReadyForMainThread
{
  v20 = *MEMORY[0x1E69E9840];
  lock = self->_lock;
  v4 = 0.05;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.05];
  LOBYTE(lock) = [(NSConditionLock *)lock lockWhenCondition:0 beforeDate:v5];

  if ((lock & 1) == 0)
  {
    v6 = 0;
    do
    {
      v7 = [(UIKeyboardTaskExecutionContext *)self->_executionContext takeOwnershipOfPendingCompletionBlock];
      if (v7)
      {
        v8 = _UIKeyboardTaskQueueLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v17 = "[UIKeyboardTaskQueue _lockWhenReadyForMainThread]";
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%s execute pending completion block", buf, 0xCu);
        }

        v7[2](v7);
      }

      else if (v4 >= 1.0)
      {
        if ((v6 & 1) == 0)
        {
          v9 = _UIKeyboardTaskQueueLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            v12 = [(UIKeyboardTaskQueue *)self activeOriginator];
            v13 = @"No stack!";
            if (v12)
            {
              v15 = [(UIKeyboardTaskQueue *)self activeOriginator];
              v14 = [v15 description];
              v13 = v14;
            }

            *buf = 136315394;
            v17 = "[UIKeyboardTaskQueue _lockWhenReadyForMainThread]";
            v18 = 2112;
            v19 = v13;
            _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%s Keyboard queue task timeout detected\n\nLast Exception Backtrace:\n%@", buf, 0x16u);
            if (v12)
            {
            }
          }
        }

        v6 = 1;
      }

      else
      {
        v4 = 1.0;
      }

      v10 = self->_lock;
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v4];
      LODWORD(v10) = [(NSConditionLock *)v10 lockWhenCondition:0 beforeDate:v11];
    }

    while (!v10);
  }
}

- (void)lockWhenReadyForMainThread
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__UIKeyboardTaskQueue_lockWhenReadyForMainThread__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(UIKeyboardTaskQueue *)self activeTaskBreadcrumb];

  if (v4)
  {
    v5 = [(UIKeyboardTaskQueue *)self activeTaskBreadcrumb];
    (v5)[2](v5, v3);
  }

  else
  {
    v3[2](v3);
  }
}

- (UIKeyboardTaskQueue)init
{
  v10.receiver = self;
  v10.super_class = UIKeyboardTaskQueue;
  v2 = [(UIKeyboardTaskQueue *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tasks = v2->_tasks;
    v2->_tasks = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deferredTasks = v2->_deferredTasks;
    v2->_deferredTasks = v7;
  }

  return v2;
}

- (void)performDeferredTaskIfIdle
{
  [(UIKeyboardTaskQueue *)self lock];
  [(UIKeyboardTaskQueue *)self promoteDeferredTaskIfIdle];
  [(UIKeyboardTaskQueue *)self unlock];

  [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
}

- (void)promoteDeferredTaskIfIdle
{
  if (!self->_executionContext && [(NSMutableArray *)self->_deferredTasks count])
  {
    v3 = [(NSMutableArray *)self->_deferredTasks objectAtIndex:0];
    [(NSMutableArray *)self->_tasks addObject:v3];
    [(NSMutableArray *)self->_deferredTasks removeObjectAtIndex:0];
  }
}

- (void)performTaskOnMainThread:(id)a3 breadcrumb:(id)a4 waitUntilDone:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  [(UIKeyboardTaskQueue *)self lock];
  if (!self->_executionContext)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:535 description:{@"Received request for main thread, but there is no current keyboard task executing."}];
  }

  if (self->_mainThreadContinuation)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:536 description:@"Received more than one main-thread continuation for the current keyboard task."];
  }

  v11 = [[UIKeyboardTaskEntry alloc] initWithTask:v9 breadcrumb:v10];
  mainThreadContinuation = self->_mainThreadContinuation;
  self->_mainThreadContinuation = v11;

  [(UIKeyboardTaskQueue *)self unlock];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  if (v5)
  {
    executionContext = self->_executionContext;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__UIKeyboardTaskQueue_performTaskOnMainThread_breadcrumb_waitUntilDone___block_invoke;
    v17[3] = &unk_1E70FD950;
    v17[4] = &v18;
    v14 = [(UIKeyboardTaskExecutionContext *)executionContext childWithContinuation:v17];
  }

  [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
  if (v5)
  {
    while (*(v19 + 24) == 1)
    {
      [(UIKeyboardTaskQueue *)self lockWhenReadyForMainThread];
      [(UIKeyboardTaskQueue *)self unlock];
      [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
    }
  }

  _Block_object_dispose(&v18, 8);
}

- (void)addTask:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskQueue *)self addTask:v4 breadcrumb:v5];
}

- (void)addTask:(id)a3 breadcrumb:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UIKeyboardTaskQueue *)self lock];
  v8 = [[UIKeyboardTaskEntry alloc] initWithTask:v7 breadcrumb:v6];

  [(NSMutableArray *)self->_tasks addObject:v8];
  [(UIKeyboardTaskQueue *)self unlock];
  [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
}

- (id)addAndReturnTask:(id)a3 breadcrumb:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UIKeyboardTaskQueue *)self lock];
  v8 = [[UIKeyboardTaskEntry alloc] initWithTask:v7 breadcrumb:v6];

  [(NSMutableArray *)self->_tasks addObject:v8];
  [(UIKeyboardTaskQueue *)self unlock];
  [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
  return v8;
}

- (void)addDeferredTask:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskQueue *)self addDeferredTask:v4 breadcrumb:v5];
}

- (void)addDeferredTask:(id)a3 breadcrumb:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UIKeyboardTaskQueue *)self lock];
  v8 = [[UIKeyboardTaskEntry alloc] initWithTask:v7 breadcrumb:v6];

  [(NSMutableArray *)self->_deferredTasks addObject:v8];
  [(UIKeyboardTaskQueue *)self unlock];
  [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
}

- (BOOL)isEmpty
{
  [(UIKeyboardTaskQueue *)self lock];
  v3 = ![(NSMutableArray *)self->_tasks count]&& ![(NSMutableArray *)self->_deferredTasks count]&& self->_executionContext == 0;
  [(UIKeyboardTaskQueue *)self unlock];
  return v3;
}

- (void)performTask:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskQueue *)self performTask:v4 breadcrumb:v5];
}

- (void)performTask:(id)a3 breadcrumb:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (pthread_main_np() != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:696 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue performTask:breadcrumb:]"}];
  }

  if ([(UIKeyboardTaskQueue *)self isMainThreadExecutingTask])
  {
    [(UIKeyboardTaskQueue *)self performTaskOnMainThread:v9 breadcrumb:v7 waitUntilDone:1];
  }

  else
  {
    [(UIKeyboardTaskQueue *)self addTask:v9];
    [(UIKeyboardTaskQueue *)self waitUntilAllTasksAreFinished];
  }
}

- (void)waitUntilTaskIsFinished:(id)a3
{
  v6 = a3;
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:710 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue waitUntilTaskIsFinished:]"}];
  }

  while (1)
  {
    [(UIKeyboardTaskQueue *)self lockWhenReadyForMainThread];
    if (!self->_executionContext && ![(NSMutableArray *)self->_tasks containsObject:v6])
    {
      break;
    }

    [(UIKeyboardTaskQueue *)self unlock];
    [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
  }

  [(UIKeyboardTaskQueue *)self unlock];
}

- (void)performSingleTask:(id)a3
{
  v4 = a3;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskQueue *)self performSingleTask:v4 breadcrumb:v5];
}

- (void)performSingleTask:(id)a3 breadcrumb:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (pthread_main_np() != 1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:732 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue performSingleTask:breadcrumb:]"}];
  }

  if ([(UIKeyboardTaskQueue *)self isMainThreadExecutingTask])
  {
    [(UIKeyboardTaskQueue *)self performTaskOnMainThread:v10 breadcrumb:v7 waitUntilDone:1];
  }

  else
  {
    v8 = [(UIKeyboardTaskQueue *)self addAndReturnTask:v10 breadcrumb:v7];
    [(UIKeyboardTaskQueue *)self waitUntilTaskIsFinished:v8];
  }
}

- (id)scheduleTask:(id)a3 timeInterval:(double)a4 repeats:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = _UIKeyboardTaskBreadcrumbEmpty();
  v10 = [(UIKeyboardTaskQueue *)self scheduleTask:v8 timeInterval:v5 repeats:v9 breadcrumb:a4];

  return v10;
}

- (id)scheduleTask:(id)a3 timeInterval:(double)a4 repeats:(BOOL)a5 breadcrumb:(id)a6
{
  v6 = a5;
  v11 = a6;
  v12 = a3;
  if (pthread_main_np() != 1)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:761 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue(UIKeyboardScheduledTask) scheduleTask:timeInterval:repeats:breadcrumb:]"}];
  }

  v13 = [[UIKeyboardScheduledTask alloc] initWithTaskQueue:self timeInterval:v6 repeats:v12 task:v11 breadcrumb:a4];

  return v13;
}

@end