@interface _HKSPQueueBackedScheduler
- (_HKSPQueueBackedScheduler)initWithQueue:(id)queue;
- (_HKSPQueueBackedScheduler)initWithScheduler:(id)scheduler queue:(id)queue;
@end

@implementation _HKSPQueueBackedScheduler

- (_HKSPQueueBackedScheduler)initWithQueue:(id)queue
{
  v4 = MEMORY[0x277D2C938];
  queueCopy = queue;
  v6 = [v4 schedulerWithDispatchQueue:queueCopy];
  v7 = [(_HKSPQueueBackedScheduler *)self initWithScheduler:v6 queue:queueCopy];

  return v7;
}

- (_HKSPQueueBackedScheduler)initWithScheduler:(id)scheduler queue:(id)queue
{
  schedulerCopy = scheduler;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = _HKSPQueueBackedScheduler;
  v9 = [(_HKSPQueueBackedScheduler *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scheduler, scheduler);
    objc_storeStrong(&v10->_queue, queue);
    v11 = v10;
  }

  return v10;
}

@end