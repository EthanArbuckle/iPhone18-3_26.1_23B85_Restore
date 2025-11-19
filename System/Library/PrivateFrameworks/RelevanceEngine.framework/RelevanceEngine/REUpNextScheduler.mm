@interface REUpNextScheduler
+ (REUpNextScheduler)schedulerWithQueue:(id)a3 delay:(double)a4 updateBlock:(id)a5;
+ (REUpNextScheduler)schedulerWithQueue:(id)a3 updateBlock:(id)a4;
+ (REUpNextScheduler)schedulerWithTransaction:(id)a3 queue:(id)a4 delay:(double)a5 updateBlock:(id)a6;
- (BOOL)isScheduled;
- (BOOL)performImmediately;
- (REUpNextScheduler)initWithTransaction:(id)a3 queue:(id)a4 delay:(double)a5 updateBlock:(id)a6;
- (void)_queue_performUpdate;
- (void)dealloc;
- (void)schedule;
@end

@implementation REUpNextScheduler

+ (REUpNextScheduler)schedulerWithQueue:(id)a3 updateBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REUpNextScheduler alloc] initWithTransaction:0 queue:v6 delay:v5 updateBlock:0.0];

  return v7;
}

+ (REUpNextScheduler)schedulerWithQueue:(id)a3 delay:(double)a4 updateBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[REUpNextScheduler alloc] initWithTransaction:0 queue:v8 delay:v7 updateBlock:a4];

  return v9;
}

+ (REUpNextScheduler)schedulerWithTransaction:(id)a3 queue:(id)a4 delay:(double)a5 updateBlock:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[REUpNextScheduler alloc] initWithTransaction:v11 queue:v10 delay:v9 updateBlock:a5];

  return v12;
}

- (REUpNextScheduler)initWithTransaction:(id)a3 queue:(id)a4 delay:(double)a5 updateBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = REUpNextScheduler;
  v13 = [(REUpNextScheduler *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_scheduledLock._os_unfair_lock_opaque = 0;
    v13->_updateScheduled = 0;
    v15 = [v10 copy];
    transaction = v14->_transaction;
    v14->_transaction = v15;

    dispatch_queue_set_specific(v11, v14, v14, 0);
    objc_storeStrong(&v14->_originalQueue, a4);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.REScheduler", dispatch_queue_get_label(v11)];
    v18 = dispatch_queue_create_with_target_V2([v17 UTF8String], 0, v11);
    queue = v14->_queue;
    v14->_queue = v18;

    v14->_delay = a5;
    v20 = [v12 copy];
    updateBlock = v14->_updateBlock;
    v14->_updateBlock = v20;
  }

  return v14;
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->_originalQueue, self, 0, 0);
  v3.receiver = self;
  v3.super_class = REUpNextScheduler;
  [(REUpNextScheduler *)&v3 dealloc];
}

- (BOOL)isScheduled
{
  os_unfair_lock_lock(&self->_scheduledLock);
  updateScheduled = self->_updateScheduled;
  os_unfair_lock_unlock(&self->_scheduledLock);
  return updateScheduled;
}

- (BOOL)performImmediately
{
  specific = dispatch_get_specific(self);
  if (specific == self)
  {
    [(REUpNextScheduler *)self _queue_performUpdate];
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__REUpNextScheduler_performImmediately__block_invoke;
    block[3] = &unk_2785F9AB8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  return specific == self;
}

- (void)schedule
{
  os_unfair_lock_lock(&self->_scheduledLock);
  updateScheduled = self->_updateScheduled;
  self->_updateScheduled = 1;
  os_unfair_lock_unlock(&self->_scheduledLock);
  if (!updateScheduled)
  {
    objc_initWeak(&location, self);
    delay = self->_delay;
    if (delay <= 0.0)
    {
      queue = self->_queue;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __29__REUpNextScheduler_schedule__block_invoke_2;
      v9[3] = &unk_2785F9A90;
      v7 = &v10;
      objc_copyWeak(&v10, &location);
      dispatch_async(queue, v9);
    }

    else
    {
      v5 = dispatch_time(0, (delay * 1000000000.0));
      v6 = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __29__REUpNextScheduler_schedule__block_invoke;
      block[3] = &unk_2785F9A90;
      v7 = &v12;
      objc_copyWeak(&v12, &location);
      dispatch_after(v5, v6, block);
    }

    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __29__REUpNextScheduler_schedule__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_performUpdate];
}

void __29__REUpNextScheduler_schedule__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_performUpdate];
}

- (void)_queue_performUpdate
{
  if ([(REUpNextScheduler *)self isScheduled])
  {
    transaction = self->_transaction;
    if (transaction)
    {
      [(NSString *)transaction UTF8String];
    }

    os_unfair_lock_lock(&self->_scheduledLock);
    self->_updateScheduled = 0;
    os_unfair_lock_unlock(&self->_scheduledLock);
    v4 = *(self->_updateBlock + 2);

    v4();
  }
}

@end