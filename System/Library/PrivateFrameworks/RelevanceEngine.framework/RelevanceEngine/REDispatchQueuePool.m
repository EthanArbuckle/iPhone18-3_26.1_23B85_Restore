@interface REDispatchQueuePool
- (REDispatchQueuePool)initWithQueueCount:(unint64_t)a3 prefix:(id)a4;
- (id)nextAvailableQueue;
@end

@implementation REDispatchQueuePool

- (REDispatchQueuePool)initWithQueueCount:(unint64_t)a3 prefix:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = REDispatchQueuePool;
  v7 = [(REDispatchQueuePool *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v7->_currentIndex = 0;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    if (a3)
    {
      v10 = 0;
      do
      {
        v11 = [v6 stringByAppendingFormat:@".%ld", v10];
        v12 = [v11 UTF8String];
        v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v14 = dispatch_queue_create(v12, v13);
        [v9 addObject:v14];

        ++v10;
      }

      while (a3 != v10);
    }

    v15 = [v9 copy];
    queues = v8->_queues;
    v8->_queues = v15;

    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (id)nextAvailableQueue
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSArray *)self->_queues objectAtIndexedSubscript:self->_currentIndex];
  queues = self->_queues;
  v5 = self->_currentIndex + 1;
  self->_currentIndex = v5;
  if (v5 >= [(NSArray *)queues count])
  {
    self->_currentIndex = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end