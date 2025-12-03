@interface PXPreloadScheduler
+ (PXPreloadScheduler)sharedScheduler;
- (BOOL)_shouldExecutePendingBlock;
- (PXPreloadScheduler)init;
- (void)_activateQueues;
- (void)_activateQueuesIfAllowed;
- (void)_didExecuteTaskWithQoS:(unint64_t)s;
- (void)_runLoopWillStartWaiting;
- (void)_setActive:(BOOL)active;
- (void)_updateIsActive;
- (void)_willScheduleTaskWithQoS:(unint64_t)s;
- (void)applicationDidFinishExtendedLaunch;
- (void)dealloc;
- (void)scheduleDeferredMainQueueTask:(id)task;
- (void)scheduleDeferredTaskWithQoS:(unint64_t)s block:(id)block;
- (void)scheduleMainQueueTask:(id)task;
- (void)scheduleMainQueueTaskAndWait:(id)wait;
- (void)scheduleTaskAfterCATransactionCommits:(id)commits;
- (void)scheduleTaskWithQoS:(unint64_t)s block:(id)block;
@end

@implementation PXPreloadScheduler

uint64_t __37__PXPreloadScheduler_sharedScheduler__block_invoke()
{
  sharedScheduler_scheduler = objc_alloc_init(PXPreloadScheduler);

  return MEMORY[0x1EEE66BB8]();
}

+ (PXPreloadScheduler)sharedScheduler
{
  if (sharedScheduler_onceToken != -1)
  {
    dispatch_once(&sharedScheduler_onceToken, &__block_literal_global_701);
  }

  v3 = sharedScheduler_scheduler;

  return v3;
}

- (PXPreloadScheduler)init
{
  v23.receiver = self;
  v23.super_class = PXPreloadScheduler;
  v2 = [(PXPreloadScheduler *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_attr_make_initially_inactive(v3);
    v5 = dispatch_queue_create("com.apple.photos.preload-default", v4);
    defaultQueue = v2->_defaultQueue;
    v2->_defaultQueue = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_attr_make_initially_inactive(v7);
    v9 = dispatch_queue_create("com.apple.photos.preload-utility", v8);
    utilityQueue = v2->_utilityQueue;
    v2->_utilityQueue = v9;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_attr_make_initially_inactive(v11);
    v13 = dispatch_queue_create("com.apple.photos.preload-background", v12);
    backgroundQueue = v2->_backgroundQueue;
    v2->_backgroundQueue = v13;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__PXPreloadScheduler_init__block_invoke;
    block[3] = &unk_1E7BB8880;
    v15 = v2;
    v22 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v16 = dispatch_group_create();
    pendingUtilityTasks = v15->_pendingUtilityTasks;
    v15->_pendingUtilityTasks = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingBlocks = v15->_pendingBlocks;
    v15->_pendingBlocks = v18;
  }

  return v2;
}

- (void)applicationDidFinishExtendedLaunch
{
  if (![(PXPreloadScheduler *)self didFinishExtendedLaunch])
  {
    [(PXPreloadScheduler *)self setDidFinishExtendedLaunch:1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PXPreloadScheduler_applicationDidFinishExtendedLaunch__block_invoke;
    block[3] = &unk_1E7BB8880;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_activateQueuesIfAllowed
{
  if ([(PXPreloadScheduler *)self waitForExtendedLaunch])
  {
    if (![(PXPreloadScheduler *)self didFinishExtendedLaunch])
    {
      v3 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__PXPreloadScheduler__activateQueuesIfAllowed__block_invoke;
      block[3] = &unk_1E7BB8880;
      block[4] = self;
      dispatch_after(v3, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {

    [(PXPreloadScheduler *)self _activateQueues];
  }
}

- (void)scheduleTaskAfterCATransactionCommits:(id)commits
{
  commitsCopy = commits;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PXPreloadScheduler_scheduleTaskAfterCATransactionCommits___block_invoke;
  v5[3] = &unk_1E7BB56D0;
  v6 = commitsCopy;
  v4 = commitsCopy;
  px_dispatch_on_main_queue(v5);
}

- (void)_setActive:(BOOL)active
{
  if (self->__isActive != active)
  {
    block[7] = v3;
    block[8] = v4;
    self->__isActive = active;
    if (active)
    {
      v6 = [PXDisplayLink alloc];
      v7 = [(PXDisplayLink *)v6 initWithWeakTarget:self selector:sel__displayLinkTick_ deferredStart:0 runloopModes:*MEMORY[0x1E695D918] preferredFramesPerSecond:0];
      displayLink = self->_displayLink;
      self->_displayLink = v7;

      [(PXDisplayLink *)self->_displayLink setFrameRateRangeType:1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __33__PXPreloadScheduler__setActive___block_invoke;
      block[3] = &unk_1E7BB56A8;
      block[4] = self;
      v9 = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 1u, 2000001, block);
      self->_runloopObserver = v9;
      if (v9)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddObserver(Main, self->_runloopObserver, *MEMORY[0x1E695E8E0]);
      }

      else
      {
        v13 = PFUIGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_impl(&dword_1B3F73000, v13, OS_LOG_TYPE_ERROR, "PXPreloadScheduler failed to create a run loop observer, deferred tasks will be dropped on the floor", v14, 2u);
        }
      }
    }

    else
    {
      [(PXDisplayLink *)self->_displayLink invalidate];
      v11 = self->_displayLink;
      self->_displayLink = 0;

      if (self->_runloopObserver)
      {
        v12 = CFRunLoopGetMain();
        CFRunLoopRemoveObserver(v12, self->_runloopObserver, *MEMORY[0x1E695E8E0]);
        CFRelease(self->_runloopObserver);
        self->_runloopObserver = 0;
      }
    }
  }
}

- (void)_updateIsActive
{
  v3 = [(NSMutableArray *)self->_pendingBlocks count]!= 0;

  [(PXPreloadScheduler *)self _setActive:v3];
}

- (void)_runLoopWillStartWaiting
{
  if ([(NSMutableArray *)self->_pendingBlocks count]&& [(PXPreloadScheduler *)self _shouldExecutePendingBlock])
  {
    firstObject = [(NSMutableArray *)self->_pendingBlocks firstObject];
    if (firstObject)
    {
      [(NSMutableArray *)self->_pendingBlocks removeObjectAtIndex:0];
      firstObject[2](firstObject);
    }
  }

  [(PXPreloadScheduler *)self _updateIsActive];
}

- (BOOL)_shouldExecutePendingBlock
{
  [(PXDisplayLink *)self->_displayLink duration];
  if (v3 <= 0.0)
  {
    return 0;
  }

  v4 = v3;
  v5 = CACurrentMediaTime();
  if (!self->_shouldIgnoreDisplayLinkTimestamps)
  {
    waitStartTime = self->_waitStartTime;
    if (waitStartTime != 0.0 && v5 > waitStartTime + 10.0)
    {
      self->_shouldIgnoreDisplayLinkTimestamps = 1;
      v8 = PFUIGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B3F73000, v8, OS_LOG_TYPE_ERROR, "PXPreloadScheduler timed out waiting for space in a frame, ignoring CADisplayLink timestamps from now on.", v13, 2u);
      }
    }
  }

  [(PXDisplayLink *)self->_displayLink targetTimestamp];
  if ((v9 - v5) / v4 > 0.8)
  {
    if (!self->_shouldIgnoreDisplayLinkTimestamps)
    {
      v5 = 0.0;
    }

LABEL_17:
    v12 = 1;
LABEL_18:
    self->_waitStartTime = v5;
    return v12;
  }

  v11 = self->_waitStartTime;
  if (self->_shouldIgnoreDisplayLinkTimestamps && v5 > v11 + 0.05)
  {
    goto LABEL_17;
  }

  v12 = 0;
  result = 0;
  if (v11 == 0.0)
  {
    goto LABEL_18;
  }

  return result;
}

- (void)_didExecuteTaskWithQoS:(unint64_t)s
{
  if (s == 1)
  {
    dispatch_group_leave(self->_pendingUtilityTasks);
  }
}

- (void)_willScheduleTaskWithQoS:(unint64_t)s
{
  if (s == 1)
  {
    dispatch_group_enter(self->_pendingUtilityTasks);
  }
}

- (void)scheduleDeferredTaskWithQoS:(unint64_t)s block:(id)block
{
  blockCopy = block;
  [(PXPreloadScheduler *)self _willScheduleTaskWithQoS:s];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXPreloadScheduler_scheduleDeferredTaskWithQoS_block___block_invoke;
  v8[3] = &unk_1E7BB5680;
  v9 = blockCopy;
  sCopy = s;
  v8[4] = self;
  v7 = blockCopy;
  [(PXPreloadScheduler *)self scheduleMainQueueTask:v8];
}

void __56__PXPreloadScheduler_scheduleDeferredTaskWithQoS_block___block_invoke(void *a1)
{
  v2 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXPreloadScheduler_scheduleDeferredTaskWithQoS_block___block_invoke_2;
  block[3] = &unk_1E7BB5680;
  v4 = a1[5];
  v3 = a1[6];
  block[4] = a1[4];
  v7 = v3;
  v6 = v4;
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

uint64_t __56__PXPreloadScheduler_scheduleDeferredTaskWithQoS_block___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) scheduleTaskWithQoS:*(a1 + 48) block:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _didExecuteTaskWithQoS:v3];
}

- (void)scheduleTaskWithQoS:(unint64_t)s block:(id)block
{
  blockCopy = block;
  if (s == 2)
  {
    v9 = self->_backgroundQueue;
    pendingUtilityTasks = self->_pendingUtilityTasks;
    v7 = pendingUtilityTasks;
    goto LABEL_8;
  }

  if (s == 1)
  {
    v7 = 0;
    pendingUtilityTasks = self->_utilityQueue;
    goto LABEL_6;
  }

  v7 = 0;
  if (!s)
  {
    pendingUtilityTasks = self->_defaultQueue;
LABEL_6:
    v9 = pendingUtilityTasks;
LABEL_8:
    v10 = pendingUtilityTasks;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:
  [(PXPreloadScheduler *)self _willScheduleTaskWithQoS:s];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PXPreloadScheduler_scheduleTaskWithQoS_block___block_invoke;
  block[3] = &unk_1E7BB5680;
  block[4] = self;
  v11 = blockCopy;
  v14 = v11;
  sCopy = s;
  v12 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
  if (v7)
  {
    dispatch_group_notify(v7, v9, v12);
  }

  else
  {
    dispatch_async(v9, v12);
  }
}

uint64_t __48__PXPreloadScheduler_scheduleTaskWithQoS_block___block_invoke(void *a1)
{
  kdebug_trace();
  (*(a1[5] + 16))();
  kdebug_trace();
  v2 = a1[4];
  v3 = a1[6];

  return [v2 _didExecuteTaskWithQoS:v3];
}

- (void)scheduleMainQueueTaskAndWait:(id)wait
{
  waitCopy = wait;
  v5 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PXPreloadScheduler_scheduleMainQueueTaskAndWait___block_invoke;
  aBlock[3] = &unk_1E7BB7A10;
  v13 = v5;
  v14 = waitCopy;
  aBlock[4] = self;
  v6 = v5;
  v7 = waitCopy;
  v8 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PXPreloadScheduler_scheduleMainQueueTaskAndWait___block_invoke_2;
  block[3] = &unk_1E7BB7DA8;
  block[4] = self;
  v11 = v8;
  v9 = v8;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

intptr_t __51__PXPreloadScheduler_scheduleMainQueueTaskAndWait___block_invoke(uint64_t a1)
{
  kdebug_trace();
  (*(*(a1 + 48) + 16))();
  kdebug_trace();
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

uint64_t __51__PXPreloadScheduler_scheduleMainQueueTaskAndWait___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) copy];
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 _updateIsActive];
}

- (void)scheduleDeferredMainQueueTask:(id)task
{
  taskCopy = task;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PXPreloadScheduler_scheduleDeferredMainQueueTask___block_invoke;
  v6[3] = &unk_1E7BB7DA8;
  v6[4] = self;
  v7 = taskCopy;
  v5 = taskCopy;
  [(PXPreloadScheduler *)self scheduleDeferredTaskWithQoS:2 block:v6];
}

- (void)scheduleMainQueueTask:(id)task
{
  taskCopy = task;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PXPreloadScheduler_scheduleMainQueueTask___block_invoke;
  v6[3] = &unk_1E7BB7DA8;
  v6[4] = self;
  v7 = taskCopy;
  v5 = taskCopy;
  [(PXPreloadScheduler *)self scheduleTaskWithQoS:1 block:v6];
}

- (void)dealloc
{
  runloopObserver = self->_runloopObserver;
  if (runloopObserver)
  {
    CFRelease(runloopObserver);
  }

  v4.receiver = self;
  v4.super_class = PXPreloadScheduler;
  [(PXPreloadScheduler *)&v4 dealloc];
}

- (void)_activateQueues
{
  dispatch_activate(self->_defaultQueue);
  dispatch_activate(self->_utilityQueue);
  backgroundQueue = self->_backgroundQueue;

  dispatch_activate(backgroundQueue);
}

@end