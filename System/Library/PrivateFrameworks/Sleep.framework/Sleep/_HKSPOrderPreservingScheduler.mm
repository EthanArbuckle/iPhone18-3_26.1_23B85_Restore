@interface _HKSPOrderPreservingScheduler
- (_HKSPOrderPreservingScheduler)initWithScheduler:(id)a3 mutexProvider:(id)a4;
- (id)_scheduleTask:(id)a3;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)performCancelableBlock:(id)a3;
- (void)_actuallyScheduleTask:(id)a3;
- (void)_executeTask:(id)a3;
- (void)_scheduleNextTaskIfPossible;
- (void)_taskDidFinish;
- (void)performBlock:(id)a3;
- (void)resume;
- (void)suspend;
@end

@implementation _HKSPOrderPreservingScheduler

- (void)_scheduleNextTaskIfPossible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  mutexProvider = self->_mutexProvider;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60___HKSPOrderPreservingScheduler__scheduleNextTaskIfPossible__block_invoke;
  v5[3] = &unk_279C74BB0;
  v5[4] = self;
  v5[5] = &v6;
  [(HKSPMutexProvider *)mutexProvider performBlock:v5];
  v4 = v7[5];
  if (v4)
  {
    if ([v4 isCanceled])
    {
      [(_HKSPOrderPreservingScheduler *)self _taskDidFinish];
    }

    else
    {
      [(_HKSPOrderPreservingScheduler *)self _actuallyScheduleTask:v7[5]];
    }
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_taskDidFinish
{
  mutexProvider = self->_mutexProvider;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47___HKSPOrderPreservingScheduler__taskDidFinish__block_invoke;
  v4[3] = &unk_279C74258;
  v4[4] = self;
  [(HKSPMutexProvider *)mutexProvider performBlock:v4];
  [(_HKSPOrderPreservingScheduler *)self _scheduleNextTaskIfPossible];
}

- (_HKSPOrderPreservingScheduler)initWithScheduler:(id)a3 mutexProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _HKSPOrderPreservingScheduler;
  v9 = [(_HKSPOrderPreservingScheduler *)&v14 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tasks = v9->_tasks;
    v9->_tasks = v10;

    *&v9->_taskInProgress = 0;
    objc_storeStrong(&v9->_scheduler, a3);
    objc_storeStrong(&v9->_mutexProvider, a4);
    v12 = v9;
  }

  return v9;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = [[HKSPTask alloc] initWithBlock:v6 delay:a3];

  v8 = [(_HKSPOrderPreservingScheduler *)self _scheduleTask:v7];

  return v8;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v6 = [[HKSPTask alloc] initWithBlock:v4];

  v5 = [(_HKSPOrderPreservingScheduler *)self _scheduleTask:v6];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C8C8]);
  v6 = [HKSPTask alloc];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __56___HKSPOrderPreservingScheduler_performCancelableBlock___block_invoke;
  v17 = &unk_279C73B30;
  v19 = v4;
  v7 = v5;
  v18 = v7;
  v8 = v4;
  v9 = [(HKSPTask *)v6 initWithBlock:&v14];
  v10 = [(_HKSPOrderPreservingScheduler *)self _scheduleTask:v9, v14, v15, v16, v17];
  [v7 addCancelable:v10];

  v11 = v18;
  v12 = v7;

  return v7;
}

- (void)suspend
{
  mutexProvider = self->_mutexProvider;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40___HKSPOrderPreservingScheduler_suspend__block_invoke;
  v3[3] = &unk_279C74258;
  v3[4] = self;
  [(HKSPMutexProvider *)mutexProvider performBlock:v3];
}

- (void)resume
{
  mutexProvider = self->_mutexProvider;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39___HKSPOrderPreservingScheduler_resume__block_invoke;
  v4[3] = &unk_279C74258;
  v4[4] = self;
  [(HKSPMutexProvider *)mutexProvider performBlock:v4];
  [(_HKSPOrderPreservingScheduler *)self _scheduleNextTaskIfPossible];
}

- (id)_scheduleTask:(id)a3
{
  v4 = a3;
  mutexProvider = self->_mutexProvider;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __47___HKSPOrderPreservingScheduler__scheduleTask___block_invoke;
  v13 = &unk_279C73B58;
  v14 = self;
  v6 = v4;
  v15 = v6;
  [(HKSPMutexProvider *)mutexProvider performBlock:&v10];
  [(_HKSPOrderPreservingScheduler *)self _scheduleNextTaskIfPossible:v10];
  v7 = v15;
  v8 = v6;

  return v6;
}

- (void)_actuallyScheduleTask:(id)a3
{
  v4 = a3;
  [v4 delay];
  scheduler = self->_scheduler;
  if (v6 <= 0.0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55___HKSPOrderPreservingScheduler__actuallyScheduleTask___block_invoke_2;
    v13[3] = &unk_279C73B58;
    v9 = &v14;
    v13[4] = self;
    v14 = v4;
    v12 = v4;
    [(NAScheduler *)scheduler performBlock:v13];
  }

  else
  {
    [v4 delay];
    v8 = v7;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55___HKSPOrderPreservingScheduler__actuallyScheduleTask___block_invoke;
    v15[3] = &unk_279C73B58;
    v9 = &v16;
    v15[4] = self;
    v16 = v4;
    v10 = v4;
    v11 = [(NAScheduler *)scheduler afterDelay:v15 performBlock:v8];
  }
}

- (void)_executeTask:(id)a3
{
  [a3 execute];

  [(_HKSPOrderPreservingScheduler *)self _taskDidFinish];
}

@end