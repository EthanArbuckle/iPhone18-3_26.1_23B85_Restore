@interface WFContextualActionRunQueue
+ (id)sharedQueue;
- (WFContextualActionRunQueue)init;
- (void)enqueueRun:(id)run;
- (void)runFinished:(id)finished;
@end

@implementation WFContextualActionRunQueue

- (void)runFinished:(id)finished
{
  finishedCopy = finished;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_runnerClients removeObject:finishedCopy];

  if ([(NSMutableArray *)self->_runnerClients count])
  {
    firstObject = [(NSMutableArray *)self->_runnerClients firstObject];
    [firstObject startFromQueue];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enqueueRun:(id)run
{
  runCopy = run;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSMutableArray *)self->_runnerClients count])
  {
    [runCopy startFromQueue];
  }

  [(NSMutableArray *)self->_runnerClients addObject:runCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (WFContextualActionRunQueue)init
{
  v7.receiver = self;
  v7.super_class = WFContextualActionRunQueue;
  v2 = [(WFContextualActionRunQueue *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    runnerClients = v2->_runnerClients;
    v2->_runnerClients = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = v2;
  }

  return v2;
}

+ (id)sharedQueue
{
  if (sharedQueue_onceToken != -1)
  {
    dispatch_once(&sharedQueue_onceToken, &__block_literal_global);
  }

  v3 = sharedQueue_queue;

  return v3;
}

uint64_t __41__WFContextualActionRunQueue_sharedQueue__block_invoke()
{
  sharedQueue_queue = objc_alloc_init(WFContextualActionRunQueue);

  return MEMORY[0x1EEE66BB8]();
}

@end