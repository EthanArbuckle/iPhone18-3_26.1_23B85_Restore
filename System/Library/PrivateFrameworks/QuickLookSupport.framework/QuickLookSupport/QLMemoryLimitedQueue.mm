@interface QLMemoryLimitedQueue
- (QLMemoryLimitedQueue)initWithMaximumMemoryConsumption:(unint64_t)a3 maximumConcurrentTasks:(int)a4;
- (int)currentTaskCount;
- (unint64_t)currentSize;
- (void)addTask:(id)a3;
- (void)dequeueIfPossible;
- (void)executeTask:(id)a3;
@end

@implementation QLMemoryLimitedQueue

- (QLMemoryLimitedQueue)initWithMaximumMemoryConsumption:(unint64_t)a3 maximumConcurrentTasks:(int)a4
{
  v17.receiver = self;
  v17.super_class = QLMemoryLimitedQueue;
  v6 = [(QLMemoryLimitedQueue *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_maxSize = a3;
    v6->_currentTaskCount = 0;
    v6->_maxTaskCount = a4;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.quicklook.memorylimitedqueue.serial", v8);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.quicklook.memorylimitedqueue.concurrent", v11);
    concurrentQueue = v7->_concurrentQueue;
    v7->_concurrentQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tasks = v7->_tasks;
    v7->_tasks = v14;
  }

  return v7;
}

- (void)addTask:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__QLMemoryLimitedQueue_addTask___block_invoke;
  v7[3] = &unk_279ADB358;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

uint64_t __32__QLMemoryLimitedQueue_addTask___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 dequeueIfPossible];
}

- (void)executeTask:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [v4 expectedMemoryConsumption];
  currentTaskCount = self->_currentTaskCount;
  self->_currentSize += v5;
  self->_currentTaskCount = currentTaskCount + 1;
  v7 = MEMORY[0x277CDAB78];
  v8 = *(MEMORY[0x277CDAB78] + 112);
  if (!v8)
  {
    QLTInitLogging();
    v8 = *(v7 + 112);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(QLMemoryLimitedQueue *)&self->_currentTaskCount executeTask:v8];
  }

  concurrentQueue = self->_concurrentQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__QLMemoryLimitedQueue_executeTask___block_invoke;
  v11[3] = &unk_279ADB358;
  v12 = v4;
  v13 = self;
  v10 = v4;
  dispatch_async(concurrentQueue, v11);
}

void __36__QLMemoryLimitedQueue_executeTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  v2[2]();

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v4 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__QLMemoryLimitedQueue_executeTask___block_invoke_2;
  v6[3] = &unk_279ADB358;
  v6[4] = v4;
  v7 = v3;
  dispatch_async(v5, v6);
}

uint64_t __36__QLMemoryLimitedQueue_executeTask___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 16) -= [*(a1 + 40) expectedMemoryConsumption];
  --*(*(a1 + 32) + 24);
  v2 = *(a1 + 32);

  return [v2 dequeueIfPossible];
}

- (void)dequeueIfPossible
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_currentTaskCount < self->_maxTaskCount && [(NSMutableArray *)self->_tasks count])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (self->_currentTaskCount >= self->_maxTaskCount)
      {
        break;
      }

      v5 = [(NSMutableArray *)self->_tasks objectAtIndex:v3];
      currentSize = self->_currentSize;
      v7 = [v5 expectedMemoryConsumption];
      maxSize = self->_maxSize;
      v9 = [v5 expectedMemoryConsumption] > maxSize && self->_currentTaskCount == 0;
      if (v7 + currentSize >= maxSize && !v9)
      {
        ++v4;
      }

      else
      {
        [(QLMemoryLimitedQueue *)self executeTask:v5];
        [(NSMutableArray *)self->_tasks removeObjectAtIndex:v3];
      }

      v3 = v4;
    }

    while ([(NSMutableArray *)self->_tasks count]> v4);
  }
}

- (int)currentTaskCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__QLMemoryLimitedQueue_currentTaskCount__block_invoke;
  v5[3] = &unk_279ADB5A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)currentSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__QLMemoryLimitedQueue_currentSize__block_invoke;
  v5[3] = &unk_279ADB5A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)executeTask:(os_log_t)log .cold.1(int *a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 2048;
  v7 = v4;
  _os_log_debug_impl(&dword_2615AE000, log, OS_LOG_TYPE_DEBUG, "Executing task, tasks in flight: %d, budget in flight: %zu bytes", v5, 0x12u);
}

@end