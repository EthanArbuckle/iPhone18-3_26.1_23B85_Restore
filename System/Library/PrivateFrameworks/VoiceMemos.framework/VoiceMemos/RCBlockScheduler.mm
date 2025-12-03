@interface RCBlockScheduler
- (RCBlockScheduler)init;
- (void)resume;
- (void)scheduleBlock:(id)block;
- (void)suspend;
@end

@implementation RCBlockScheduler

- (RCBlockScheduler)init
{
  v12.receiver = self;
  v12.super_class = RCBlockScheduler;
  v2 = [(RCBlockScheduler *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_group_create();
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = dispatch_queue_create(0, 0);
    v8 = *(v2 + 3);
    *(v2 + 3) = v7;

    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 3));
    v10 = *(v2 + 4);
    *(v2 + 4) = v9;

    dispatch_source_set_timer(*(v2 + 4), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(*(v2 + 4), &__block_literal_global_8);
    *(v2 + 56) = 1;
  }

  return v2;
}

- (void)suspend
{
  if (!self->_suspended)
  {
    dispatch_suspend(self->_timer);
    self->_suspended = 1;
  }
}

- (void)resume
{
  if (self->_suspended)
  {
    dispatch_resume(self->_timer);
    self->_suspended = 0;
  }
}

- (void)scheduleBlock:(id)block
{
  blockCopy = block;
  schedulerQueue = self->_schedulerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__RCBlockScheduler_scheduleBlock___block_invoke;
  v7[3] = &unk_279E44640;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(schedulerQueue, v7);
}

void __34__RCBlockScheduler_scheduleBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = MEMORY[0x2743CA3B0](*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  if (!*(v4 + 48))
  {
    v5 = *(v4 + 72);
    v6 = *(*(a1 + 32) + 16);
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = __Block_byref_object_copy__4;
    v39[4] = __Block_byref_object_dispose__4;
    v40 = MEMORY[0x2743CA3B0](*(a1 + 40));
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __34__RCBlockScheduler_scheduleBlock___block_invoke_1;
    v37[3] = &unk_279E43B20;
    v7 = v6;
    v38 = v7;
    v8 = MEMORY[0x2743CA3B0](v37);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __34__RCBlockScheduler_scheduleBlock___block_invoke_2;
    v34[3] = &unk_279E445C8;
    v35 = v8;
    v36 = v39;
    v9 = v8;
    v10 = MEMORY[0x2743CA3B0](v34);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __34__RCBlockScheduler_scheduleBlock___block_invoke_3;
    v33[3] = &unk_279E43B20;
    v33[4] = *(a1 + 32);
    v11 = MEMORY[0x2743CA3B0](v33);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __34__RCBlockScheduler_scheduleBlock___block_invoke_4;
    v28[3] = &unk_279E445F0;
    v28[4] = *(a1 + 32);
    v29 = v7;
    v30 = v5;
    v31 = v10;
    v32 = v11;
    v12 = v11;
    v13 = v10;
    v14 = v5;
    v15 = v7;
    v16 = MEMORY[0x2743CA3B0](v28);
    v17 = *(a1 + 32);
    v18 = *(v17 + 32);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __34__RCBlockScheduler_scheduleBlock___block_invoke_5;
    v25[3] = &unk_279E44618;
    v26 = v16;
    v27 = v39;
    v25[4] = v17;
    v19 = v16;
    dispatch_source_set_event_handler(v18, v25);
    v20 = MEMORY[0x2743CA3B0](v12);
    v21 = *(a1 + 32);
    v22 = *(v21 + 48);
    *(v21 + 48) = v20;

    v23 = *(*(a1 + 32) + 32);
    v24 = dispatch_time(0, 0);
    dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0);

    _Block_object_dispose(v39, 8);
  }
}

void __34__RCBlockScheduler_scheduleBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = dispatch_time(*(v1 + 40), (*(v1 + 64) * 1000000000.0));

  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
}

void __34__RCBlockScheduler_scheduleBlock___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  *(*(a1 + 32) + 40) = dispatch_time(0, 0);
  dispatch_group_enter(*(a1 + 40));
  dispatch_async(*(a1 + 48), *(a1 + 56));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);

  dispatch_group_notify(v5, v6, v7);
}

void __34__RCBlockScheduler_scheduleBlock___block_invoke_5(void *a1)
{
  v2 = [*(a1[4] + 8) firstObject];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  if (*(*(a1[6] + 8) + 40))
  {
    [*(v5 + 8) removeObjectAtIndex:0];
    v6 = *(a1[5] + 16);

    v6();
  }

  else
  {
    v7 = *(v5 + 48);
    *(v5 + 48) = 0;

    v8 = *(a1[4] + 32);

    dispatch_source_set_timer(v8, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

@end