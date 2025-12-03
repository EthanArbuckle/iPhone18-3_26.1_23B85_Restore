@interface UIKeyboardTaskQueue
- (BOOL)isEmpty;
- (UIKeyboardTaskQueue)init;
- (id)addAndReturnTask:(id)task breadcrumb:(id)breadcrumb;
- (id)scheduleTask:(id)task timeInterval:(double)interval repeats:(BOOL)repeats;
- (id)scheduleTask:(id)task timeInterval:(double)interval repeats:(BOOL)repeats breadcrumb:(id)breadcrumb;
- (void)_lockWhenReadyForMainThread;
- (void)addDeferredTask:(id)task;
- (void)addDeferredTask:(id)task breadcrumb:(id)breadcrumb;
- (void)addTask:(id)task;
- (void)addTask:(id)task breadcrumb:(id)breadcrumb;
- (void)continueExecutionOnMainThread;
- (void)finishExecution;
- (void)lockWhenReadyForMainThread;
- (void)performDeferredTaskIfIdle;
- (void)performSingleTask:(id)task;
- (void)performSingleTask:(id)task breadcrumb:(id)breadcrumb;
- (void)performTask:(id)task;
- (void)performTask:(id)task breadcrumb:(id)breadcrumb;
- (void)performTaskOnMainThread:(id)thread breadcrumb:(id)breadcrumb waitUntilDone:(BOOL)done;
- (void)promoteDeferredTaskIfIdle;
- (void)unlock;
- (void)waitUntilAllTasksAreFinished;
- (void)waitUntilTaskIsFinished:(id)finished;
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
        originatingStack = [(UIKeyboardTaskEntry *)v5 originatingStack];
        [(UIKeyboardTaskQueue *)self setActiveOriginator:originatingStack];

        breadcrumb = [(UIKeyboardTaskEntry *)v5 breadcrumb];
        [(UIKeyboardTaskQueue *)self setActiveTaskBreadcrumb:breadcrumb];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:505 description:@"Received keyboard task completion but there is no current keyboard task."];
  }

  if (self->_mainThreadContinuation)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:506 description:@"Received keyboard task completion before the task's continuation executed."];
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardTaskQueueIsEmptyNotification" object:self];
}

- (void)waitUntilAllTasksAreFinished
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:659 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue waitUntilAllTasksAreFinished]"}];
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
      takeOwnershipOfPendingCompletionBlock = [(UIKeyboardTaskExecutionContext *)self->_executionContext takeOwnershipOfPendingCompletionBlock];
      if (takeOwnershipOfPendingCompletionBlock)
      {
        v8 = _UIKeyboardTaskQueueLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v17 = "[UIKeyboardTaskQueue _lockWhenReadyForMainThread]";
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%s execute pending completion block", buf, 0xCu);
        }

        takeOwnershipOfPendingCompletionBlock[2](takeOwnershipOfPendingCompletionBlock);
      }

      else if (v4 >= 1.0)
      {
        if ((v6 & 1) == 0)
        {
          v9 = _UIKeyboardTaskQueueLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            activeOriginator = [(UIKeyboardTaskQueue *)self activeOriginator];
            v13 = @"No stack!";
            if (activeOriginator)
            {
              activeOriginator2 = [(UIKeyboardTaskQueue *)self activeOriginator];
              v14 = [activeOriginator2 description];
              v13 = v14;
            }

            *buf = 136315394;
            v17 = "[UIKeyboardTaskQueue _lockWhenReadyForMainThread]";
            v18 = 2112;
            v19 = v13;
            _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%s Keyboard queue task timeout detected\n\nLast Exception Backtrace:\n%@", buf, 0x16u);
            if (activeOriginator)
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
  activeTaskBreadcrumb = [(UIKeyboardTaskQueue *)self activeTaskBreadcrumb];

  if (activeTaskBreadcrumb)
  {
    activeTaskBreadcrumb2 = [(UIKeyboardTaskQueue *)self activeTaskBreadcrumb];
    (activeTaskBreadcrumb2)[2](activeTaskBreadcrumb2, v3);
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

- (void)performTaskOnMainThread:(id)thread breadcrumb:(id)breadcrumb waitUntilDone:(BOOL)done
{
  doneCopy = done;
  threadCopy = thread;
  breadcrumbCopy = breadcrumb;
  [(UIKeyboardTaskQueue *)self lock];
  if (!self->_executionContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:535 description:{@"Received request for main thread, but there is no current keyboard task executing."}];
  }

  if (self->_mainThreadContinuation)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:536 description:@"Received more than one main-thread continuation for the current keyboard task."];
  }

  v11 = [[UIKeyboardTaskEntry alloc] initWithTask:threadCopy breadcrumb:breadcrumbCopy];
  mainThreadContinuation = self->_mainThreadContinuation;
  self->_mainThreadContinuation = v11;

  [(UIKeyboardTaskQueue *)self unlock];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  if (doneCopy)
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
  if (doneCopy)
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

- (void)addTask:(id)task
{
  taskCopy = task;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskQueue *)self addTask:taskCopy breadcrumb:v5];
}

- (void)addTask:(id)task breadcrumb:(id)breadcrumb
{
  breadcrumbCopy = breadcrumb;
  taskCopy = task;
  [(UIKeyboardTaskQueue *)self lock];
  v8 = [[UIKeyboardTaskEntry alloc] initWithTask:taskCopy breadcrumb:breadcrumbCopy];

  [(NSMutableArray *)self->_tasks addObject:v8];
  [(UIKeyboardTaskQueue *)self unlock];
  [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
}

- (id)addAndReturnTask:(id)task breadcrumb:(id)breadcrumb
{
  breadcrumbCopy = breadcrumb;
  taskCopy = task;
  [(UIKeyboardTaskQueue *)self lock];
  v8 = [[UIKeyboardTaskEntry alloc] initWithTask:taskCopy breadcrumb:breadcrumbCopy];

  [(NSMutableArray *)self->_tasks addObject:v8];
  [(UIKeyboardTaskQueue *)self unlock];
  [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
  return v8;
}

- (void)addDeferredTask:(id)task
{
  taskCopy = task;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskQueue *)self addDeferredTask:taskCopy breadcrumb:v5];
}

- (void)addDeferredTask:(id)task breadcrumb:(id)breadcrumb
{
  breadcrumbCopy = breadcrumb;
  taskCopy = task;
  [(UIKeyboardTaskQueue *)self lock];
  v8 = [[UIKeyboardTaskEntry alloc] initWithTask:taskCopy breadcrumb:breadcrumbCopy];

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

- (void)performTask:(id)task
{
  taskCopy = task;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskQueue *)self performTask:taskCopy breadcrumb:v5];
}

- (void)performTask:(id)task breadcrumb:(id)breadcrumb
{
  taskCopy = task;
  breadcrumbCopy = breadcrumb;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:696 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue performTask:breadcrumb:]"}];
  }

  if ([(UIKeyboardTaskQueue *)self isMainThreadExecutingTask])
  {
    [(UIKeyboardTaskQueue *)self performTaskOnMainThread:taskCopy breadcrumb:breadcrumbCopy waitUntilDone:1];
  }

  else
  {
    [(UIKeyboardTaskQueue *)self addTask:taskCopy];
    [(UIKeyboardTaskQueue *)self waitUntilAllTasksAreFinished];
  }
}

- (void)waitUntilTaskIsFinished:(id)finished
{
  finishedCopy = finished;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:710 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue waitUntilTaskIsFinished:]"}];
  }

  while (1)
  {
    [(UIKeyboardTaskQueue *)self lockWhenReadyForMainThread];
    if (!self->_executionContext && ![(NSMutableArray *)self->_tasks containsObject:finishedCopy])
    {
      break;
    }

    [(UIKeyboardTaskQueue *)self unlock];
    [(UIKeyboardTaskQueue *)self continueExecutionOnMainThread];
  }

  [(UIKeyboardTaskQueue *)self unlock];
}

- (void)performSingleTask:(id)task
{
  taskCopy = task;
  v5 = _UIKeyboardTaskBreadcrumbEmpty();
  [(UIKeyboardTaskQueue *)self performSingleTask:taskCopy breadcrumb:v5];
}

- (void)performSingleTask:(id)task breadcrumb:(id)breadcrumb
{
  taskCopy = task;
  breadcrumbCopy = breadcrumb;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:732 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue performSingleTask:breadcrumb:]"}];
  }

  if ([(UIKeyboardTaskQueue *)self isMainThreadExecutingTask])
  {
    [(UIKeyboardTaskQueue *)self performTaskOnMainThread:taskCopy breadcrumb:breadcrumbCopy waitUntilDone:1];
  }

  else
  {
    v8 = [(UIKeyboardTaskQueue *)self addAndReturnTask:taskCopy breadcrumb:breadcrumbCopy];
    [(UIKeyboardTaskQueue *)self waitUntilTaskIsFinished:v8];
  }
}

- (id)scheduleTask:(id)task timeInterval:(double)interval repeats:(BOOL)repeats
{
  repeatsCopy = repeats;
  taskCopy = task;
  v9 = _UIKeyboardTaskBreadcrumbEmpty();
  v10 = [(UIKeyboardTaskQueue *)self scheduleTask:taskCopy timeInterval:repeatsCopy repeats:v9 breadcrumb:interval];

  return v10;
}

- (id)scheduleTask:(id)task timeInterval:(double)interval repeats:(BOOL)repeats breadcrumb:(id)breadcrumb
{
  repeatsCopy = repeats;
  breadcrumbCopy = breadcrumb;
  taskCopy = task;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardTaskQueue.m" lineNumber:761 description:{@"%s may only be called from the main thread.", "-[UIKeyboardTaskQueue(UIKeyboardScheduledTask) scheduleTask:timeInterval:repeats:breadcrumb:]"}];
  }

  v13 = [[UIKeyboardScheduledTask alloc] initWithTaskQueue:self timeInterval:repeatsCopy repeats:taskCopy task:breadcrumbCopy breadcrumb:interval];

  return v13;
}

@end