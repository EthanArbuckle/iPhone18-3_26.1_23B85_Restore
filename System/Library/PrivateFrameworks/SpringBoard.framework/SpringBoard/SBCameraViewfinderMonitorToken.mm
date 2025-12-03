@interface SBCameraViewfinderMonitorToken
- (SBCameraViewfinderMonitorToken)initWithMonitor:(id)monitor observer:(id)observer;
- (id)auditTokenForProcessWithActiveOrImminentViewfinderSession;
- (void)auditTokenForProcessWithActiveOrImminentViewfinderSession;
- (void)cancel;
@end

@implementation SBCameraViewfinderMonitorToken

- (id)auditTokenForProcessWithActiveOrImminentViewfinderSession
{
  p_monitor = &self->_monitor;
  monitor = self->_monitor;
  if (monitor && self->_observer)
  {
  }

  else
  {
    v8[1] = v2;
    v9 = v3;
    [(SBCameraViewfinderMonitorToken *)a2 auditTokenForProcessWithActiveOrImminentViewfinderSession:p_monitor];
    monitor = v8[0];
  }

  return [(SBCameraViewfinderMonitor *)monitor auditTokenForProcessWithActiveOrImminentViewfinderSession];
}

- (SBCameraViewfinderMonitorToken)initWithMonitor:(id)monitor observer:(id)observer
{
  monitorCopy = monitor;
  observerCopy = observer;
  v10 = observerCopy;
  if (monitorCopy)
  {
    if (observerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBCameraViewfinderMonitorToken initWithMonitor:a2 observer:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [SBCameraViewfinderMonitorToken initWithMonitor:a2 observer:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = SBCameraViewfinderMonitorToken;
  v11 = [(SBCameraViewfinderMonitorToken *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_monitor, monitor);
    objc_storeStrong(&v12->_observer, observer);
  }

  return v12;
}

- (void)cancel
{
  monitor = self->_monitor;
  if (!monitor || !self->_observer)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBCameraViewfinderMonitor.m" lineNumber:213 description:@"Already canceled?"];

    monitor = self->_monitor;
  }

  [(SBCameraViewfinderMonitor *)monitor _removeObserver:?];
  observer = self->_observer;
  self->_observer = 0;

  v6 = self->_monitor;
  self->_monitor = 0;
}

- (void)initWithMonitor:(uint64_t)a1 observer:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCameraViewfinderMonitor.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"monitor != nil"}];
}

- (void)initWithMonitor:(uint64_t)a1 observer:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCameraViewfinderMonitor.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"observer != nil"}];
}

- (void)auditTokenForProcessWithActiveOrImminentViewfinderSession
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBCameraViewfinderMonitor.m" lineNumber:222 description:@"Already canceled?"];

  *a4 = *a3;
}

@end