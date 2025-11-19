@interface PSExecutionDashboard
- (PSExecutionDashboard)init;
- (id)getRunningGraphs;
- (void)setRunningGraphs:(id)a3;
@end

@implementation PSExecutionDashboard

- (PSExecutionDashboard)init
{
  v6.receiver = self;
  v6.super_class = PSExecutionDashboard;
  v2 = [(PSExecutionDashboard *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    runningGraphs = v2->_runningGraphs;
    v2->_runningGraphs = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_isLocalReplaySession = 0;
  }

  return v2;
}

- (id)getRunningGraphs
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_runningGraphs;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRunningGraphs:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  runningGraphs = self->_runningGraphs;
  self->_runningGraphs = v4;

  [(PSExecutionDashboard *)self setCompletedTransitionsCount:[(PSExecutionDashboard *)self completedTransitionsCount]+ 1];
  [(PSExecutionDashboard *)self setLastTransitionCompletionTimestamp:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW)];

  os_unfair_lock_unlock(&self->_lock);
}

@end