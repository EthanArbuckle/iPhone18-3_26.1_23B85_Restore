@interface SUInstallationConstraintMonitorDriving
- (id)initOnQueue:(id)a3 withDownload:(id)a4;
- (unint64_t)unsatisfiedConstraints;
- (void)_handleVehicularStateChangeNotification:(id)a3;
- (void)_queue_pollSatisfied;
@end

@implementation SUInstallationConstraintMonitorDriving

- (id)initOnQueue:(id)a3 withDownload:(id)a4
{
  v6 = a4;
  v7 = a3;
  BSDispatchQueueAssert();
  v11.receiver = self;
  v11.super_class = SUInstallationConstraintMonitorDriving;
  v8 = [(SUInstallationConstraintMonitorBase *)&v11 initOnQueue:v7 withRepresentedInstallationConstraints:2048 andDownload:v6];

  if (v8)
  {
    v8[48] = 0;
    if ([MEMORY[0x277CC1D70] isAvailable])
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:v8 selector:sel__handleVehicularStateChangeNotification_ name:*MEMORY[0x277CC1DD8] object:0];

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

    v12 = [(SUInstallationConstraintMonitorBase *)self delegate];
    [v12 installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

- (void)_handleVehicularStateChangeNotification:(id)a3
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