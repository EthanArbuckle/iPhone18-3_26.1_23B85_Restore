@interface WFContextualActionRunQueue
+ (id)sharedQueue;
- (WFContextualActionRunQueue)init;
- (void)enqueueRun:(id)a3;
- (void)runFinished:(id)a3;
@end

@implementation WFContextualActionRunQueue

- (void)runFinished:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_runnerClients removeObject:v4];

  if ([(NSMutableArray *)self->_runnerClients count])
  {
    v5 = [(NSMutableArray *)self->_runnerClients firstObject];
    [v5 startFromQueue];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enqueueRun:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (![(NSMutableArray *)self->_runnerClients count])
  {
    [v4 startFromQueue];
  }

  [(NSMutableArray *)self->_runnerClients addObject:v4];
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