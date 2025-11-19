@interface REOpportunisticTrainingScheduler
- (REOpportunisticTrainingScheduler)init;
- (void)_performAllTasks;
- (void)_queue_unschedule;
- (void)cancelPendindTasks;
- (void)dealloc;
- (void)performTask:(id)a3;
@end

@implementation REOpportunisticTrainingScheduler

- (REOpportunisticTrainingScheduler)init
{
  v11.receiver = self;
  v11.super_class = REOpportunisticTrainingScheduler;
  v2 = [(REOpportunisticTrainingScheduler *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.RelevanceEngine.REOpportunisticTrainingScheduler", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = xpc_dictionary_create(0, 0, 0);
    criteria = v2->_criteria;
    v2->_criteria = v6;

    xpc_dictionary_set_BOOL(v2->_criteria, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_BOOL(v2->_criteria, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v2->_criteria, *MEMORY[0x277D863A0], 1);
    xpc_dictionary_set_int64(v2->_criteria, *MEMORY[0x277D86270], 600);
    xpc_dictionary_set_int64(v2->_criteria, *MEMORY[0x277D86250], 300);
    xpc_dictionary_set_string(v2->_criteria, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v8 = [MEMORY[0x277CBEB18] array];
    blocks = v2->_blocks;
    v2->_blocks = v8;
  }

  return v2;
}

- (void)dealloc
{
  [(REOpportunisticTrainingScheduler *)self _queue_unschedule];
  v3.receiver = self;
  v3.super_class = REOpportunisticTrainingScheduler;
  [(REOpportunisticTrainingScheduler *)&v3 dealloc];
}

- (void)performTask:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__REOpportunisticTrainingScheduler_performTask___block_invoke;
    v7[3] = &unk_2785F9A40;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __48__REOpportunisticTrainingScheduler_performTask___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = MEMORY[0x22AABC5E0](*(a1 + 40));
  [v2 addObject:v3];

  v4 = [*(*(a1 + 32) + 24) count];
  v5 = *(a1 + 32);
  if (v4 < 0x64)
  {
    if ((v5[32] & 1) == 0)
    {
      v7 = RELogForDomain(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_INFO, "Scheduled training scheduler", buf, 2u);
      }

      objc_initWeak(buf, *(a1 + 32));
      v8 = REOpportunisticTrainingSchedulerActivityName;
      v9 = *(*(a1 + 32) + 8);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __48__REOpportunisticTrainingScheduler_performTask___block_invoke_15;
      handler[3] = &unk_2785FD940;
      objc_copyWeak(&v11, buf);
      xpc_activity_register(v8, v9, handler);
      *(*(a1 + 32) + 32) = 1;
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    [v5 _performAllTasks];
    v6 = *(a1 + 32);

    [v6 _queue_unschedule];
  }
}

void __48__REOpportunisticTrainingScheduler_performTask___block_invoke_15(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state = xpc_activity_get_state(v3);
    v6 = RELogForDomain(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v14 = state;
      _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_INFO, "Training scheduler fired with state %ld", buf, 0xCu);
    }

    if (!xpc_activity_set_state(v3, 4))
    {
      v7 = RELogForDomain(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_INFO, "Unable to continue training schedule activity", buf, 2u);
      }
    }

    v8 = WeakRetained[2];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__REOpportunisticTrainingScheduler_performTask___block_invoke_16;
    v10[3] = &unk_2785F9AE0;
    v11 = v3;
    v12 = WeakRetained;
    dispatch_async(v8, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __48__REOpportunisticTrainingScheduler_performTask___block_invoke_16(uint64_t a1)
{
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v2 = RELogForDomain(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_INFO, "Unable to finish training schedule activity", v4, 2u);
    }
  }

  [*(a1 + 40) _performAllTasks];
  return [*(a1 + 40) _queue_unschedule];
}

- (void)_performAllTasks
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_blocks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_blocks removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_unschedule
{
  if (self->_scheduled)
  {
    xpc_activity_unregister(REOpportunisticTrainingSchedulerActivityName);
    self->_scheduled = 0;
  }
}

- (void)cancelPendindTasks
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__REOpportunisticTrainingScheduler_cancelPendindTasks__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end