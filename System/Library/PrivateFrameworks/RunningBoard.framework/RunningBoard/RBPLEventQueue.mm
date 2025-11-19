@interface RBPLEventQueue
- (RBPLEventQueue)init;
- (id)dequeueEvent;
- (void)enqueueEvent:(id)a3;
- (void)scheduleWork;
@end

@implementation RBPLEventQueue

- (void)scheduleWork
{
  if (MEMORY[0x2822275F0])
  {
    dispatchQueue = self->_dispatchQueue;
    RBSDispatchAsyncWithQoS();
  }
}

- (id)dequeueEvent
{
  if (MEMORY[0x2822275F0])
  {
    os_unfair_lock_lock(&self->_lock);
    if ([(NSMutableArray *)self->_eventQueue count])
    {
      v3 = [(NSMutableArray *)self->_eventQueue firstObject];
      [(NSMutableArray *)self->_eventQueue removeObjectAtIndex:0];
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __30__RBPLEventQueue_scheduleWork__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  *(*(a1 + 32) + 32) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v2 = [*(a1 + 32) dequeueEvent];
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = [v3 event];
      v5 = [v3 identity];
      v6 = [v3 assertionCount];
      v7 = [v3 pid];
      v8 = [v5 hostIdentifier];
      if ((v4 - 1) <= 3)
      {
        v9 = off_279B33F38[v4 - 1];
      }

      v10 = objc_opt_new();
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      [v10 setObject:v11 forKeyedSubscript:@"EventType"];

      if (v7 == -1)
      {
        [v10 setObject:0 forKeyedSubscript:@"PID"];
        if (!v8)
        {
LABEL_9:
          [v10 setObject:0 forKeyedSubscript:@"HostPID"];
          goto LABEL_10;
        }
      }

      else
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInt:v7];
        [v10 setObject:v12 forKeyedSubscript:@"PID"];

        if (!v8)
        {
          goto LABEL_9;
        }
      }

      v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "pid")}];
      [v10 setObject:v13 forKeyedSubscript:@"HostPID"];

LABEL_10:
      v14 = [v5 embeddedApplicationIdentifier];
      [v10 setObject:v14 forKeyedSubscript:@"BundleID"];

      if ((v6 & 0x80000000) != 0)
      {
        [v10 setObject:0 forKeyedSubscript:@"AssertionCount"];
      }

      else
      {
        v15 = [MEMORY[0x277CCABB0] numberWithInt:v6];
        [v10 setObject:v15 forKeyedSubscript:@"AssertionCount"];
      }

      if (MEMORY[0x2822275F0])
      {
        PLLogRegisteredEvent();
      }

      v16 = [*(a1 + 32) dequeueEvent];

      v3 = v16;
    }

    while (v16);
  }
}

- (RBPLEventQueue)init
{
  v8.receiver = self;
  v8.super_class = RBPLEventQueue;
  v2 = [(RBPLEventQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x277D47028] createBackgroundQueue:@"RBPowerlogEvent"];
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v2->_scheduled = 0;
  }

  return v2;
}

- (void)enqueueEvent:(id)a3
{
  if (MEMORY[0x2822275F0])
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_eventQueue addObject:v4];

    if (!self->_scheduled)
    {
      self->_scheduled = 1;
      [(RBPLEventQueue *)self scheduleWork];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

@end