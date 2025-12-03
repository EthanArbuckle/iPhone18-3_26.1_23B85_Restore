@interface SKGTaskThroughputManager
+ (id)sharedInstance;
- (SKGTaskThroughputManager)init;
- (id)getThroughputMetricForTask:(int)task metricIdentifier:(id)identifier;
- (void)registerBeginForTask:(id)task taskType:(int)type;
- (void)registerEndForTask:(id)task taskType:(int)type;
@end

@implementation SKGTaskThroughputManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SKGTaskThroughputManager sharedInstance];
  }

  v3 = manager;

  return v3;
}

void __42__SKGTaskThroughputManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SKGTaskThroughputManager);
  v1 = manager;
  manager = v0;
}

- (SKGTaskThroughputManager)init
{
  v9.receiver = self;
  v9.super_class = SKGTaskThroughputManager;
  v2 = [(SKGTaskThroughputManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SKGTaskThroughputManager.queue", v3);
    throughputQueue = v2->_throughputQueue;
    v2->_throughputQueue = v4;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    taskMetricRepository = v2->_taskMetricRepository;
    v2->_taskMetricRepository = dictionary;
  }

  return v2;
}

- (void)registerBeginForTask:(id)task taskType:(int)type
{
  taskCopy = task;
  throughputQueue = self->_throughputQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SKGTaskThroughputManager_registerBeginForTask_taskType___block_invoke;
  block[3] = &unk_27893DA10;
  typeCopy = type;
  block[4] = self;
  v10 = taskCopy;
  v8 = taskCopy;
  dispatch_sync(throughputQueue, block);
}

void __58__SKGTaskThroughputManager_registerBeginForTask_taskType___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *(*(a1 + 32) + 8);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = *(*(a1 + 32) + 8);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    [v6 setObject:v5 forKey:v7];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(a1 + 40);
        v14 = [v8 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v12)];
        v16 = 0;
        [v13 registerThroughputTrackingFor:v14 withStartTime:v2 error:&v16];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getThroughputMetricForTask:(int)task metricIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  throughputQueue = self->_throughputQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SKGTaskThroughputManager_getThroughputMetricForTask_metricIdentifier___block_invoke;
  v11[3] = &unk_27893DA38;
  taskCopy = task;
  v12 = identifierCopy;
  v13 = &v15;
  v11[4] = self;
  v8 = identifierCopy;
  dispatch_sync(throughputQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __72__SKGTaskThroughputManager_getThroughputMetricForTask_metricIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v11 = [v2 objectForKey:v3];

  if (v11)
  {
    v4 = [v11 objectForKey:*(a1 + 40)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v7 = throughputMetricForTask(*(a1 + 40));
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = [MEMORY[0x277CBEAA8] date];
      [*(*(*(a1 + 48) + 8) + 40) setStartTimestamp:v10];

      [v11 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
    }
  }
}

- (void)registerEndForTask:(id)task taskType:(int)type
{
  taskCopy = task;
  throughputQueue = self->_throughputQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SKGTaskThroughputManager_registerEndForTask_taskType___block_invoke;
  block[3] = &unk_27893DA10;
  typeCopy = type;
  block[4] = self;
  v10 = taskCopy;
  v8 = taskCopy;
  dispatch_sync(throughputQueue, block);
}

void __56__SKGTaskThroughputManager_registerEndForTask_taskType___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [v6 objectForKey:*(*(&v17 + 1) + 8 * i)];
          if (v12)
          {
            v13 = *(a1 + 40);
            v16 = v9;
            [v13 deregisterThroughputTrackingFor:v12 withEndTime:v5 error:&v16];
            v14 = v16;

            v9 = v14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end