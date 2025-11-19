@interface _HKSPQueueBackedScheduler
- (_HKSPQueueBackedScheduler)initWithQueue:(id)a3;
- (_HKSPQueueBackedScheduler)initWithScheduler:(id)a3 queue:(id)a4;
@end

@implementation _HKSPQueueBackedScheduler

- (_HKSPQueueBackedScheduler)initWithQueue:(id)a3
{
  v4 = MEMORY[0x277D2C938];
  v5 = a3;
  v6 = [v4 schedulerWithDispatchQueue:v5];
  v7 = [(_HKSPQueueBackedScheduler *)self initWithScheduler:v6 queue:v5];

  return v7;
}

- (_HKSPQueueBackedScheduler)initWithScheduler:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _HKSPQueueBackedScheduler;
  v9 = [(_HKSPQueueBackedScheduler *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scheduler, a3);
    objc_storeStrong(&v10->_queue, a4);
    v11 = v10;
  }

  return v10;
}

@end