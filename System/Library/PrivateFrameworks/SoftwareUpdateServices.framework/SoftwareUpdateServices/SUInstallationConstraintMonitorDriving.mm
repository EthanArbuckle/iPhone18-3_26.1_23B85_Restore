@interface SUInstallationConstraintMonitorDriving
- (id)initOnQueue:(id)queue withDownload:(id)download;
- (unint64_t)unsatisfiedConstraints;
- (void)_handleVehicularStateChangeNotification:(id)notification;
- (void)_queue_pollSatisfied;
@end

@implementation SUInstallationConstraintMonitorDriving

- (id)initOnQueue:(id)queue withDownload:(id)download
{
  downloadCopy = download;
  queueCopy = queue;
  BSDispatchQueueAssert();
  v11.receiver = self;
  v11.super_class = SUInstallationConstraintMonitorDriving;
  v8 = [(SUInstallationConstraintMonitorBase *)&v11 initOnQueue:queueCopy withRepresentedInstallationConstraints:2048 andDownload:downloadCopy];

  if (v8)
  {
    v8[48] = 0;
    if ([MEMORY[0x277CC1D70] isAvailable])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v8 selector:sel__handleVehicularStateChangeNotification_ name:*MEMORY[0x277CC1DD8] object:0];

      [v8 _queue_pollSatisfied];
    }
  }

  return v8;
}

- (void)_queue_pollSatisfied
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v4 = [MEMORY[0x277CC1D70] vehicularState] == 2 && objc_msgSend(MEMORY[0x277CC1D70], "vehicularOperatorState") != 1;
  if (self->_queue_isDriving != v4)
  {
    self->_queue_isDriving = v4;
    v5 = SULogInstallConstraints();
    self->_queue_isDriving;
    SULogInfoForSubsystem(v5, @"%@ - is driving constraint changed (satisfied? %@)", v6, v7, v8, v9, v10, v11, self);

    delegate = [(SUInstallationConstraintMonitorBase *)self delegate];
    [delegate installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

- (void)_handleVehicularStateChangeNotification:(id)notification
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SUInstallationConstraintMonitorDriving__handleVehicularStateChangeNotification___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (!self->_queue_isDriving)
  {
    return 0;
  }

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

@end