@interface SUInstallationConstraintMonitorNetwork
- (id)initOnQueue:(id)a3 withDownload:(id)a4;
- (id)initOnQueue:(id)a3 withDownload:(id)a4 networkMonitor:(id)a5;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_networkDidChange;
- (void)dealloc;
- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4;
@end

@implementation SUInstallationConstraintMonitorNetwork

- (id)initOnQueue:(id)a3 withDownload:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SUNetworkMonitor sharedInstance];
  v9 = [(SUInstallationConstraintMonitorNetwork *)self initOnQueue:v7 withDownload:v6 networkMonitor:v8];

  return v9;
}

- (id)initOnQueue:(id)a3 withDownload:(id)a4 networkMonitor:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  BSDispatchQueueAssert();
  v14.receiver = self;
  v14.super_class = SUInstallationConstraintMonitorNetwork;
  v12 = [(SUInstallationConstraintMonitorBase *)&v14 initOnQueue:v11 withRepresentedInstallationConstraints:2 andDownload:v10];

  if (v12)
  {
    objc_storeStrong(v12 + 6, a5);
    [v12[6] addObserver:v12];
    [v12 _queue_networkDidChange];
  }

  return v12;
}

- (void)dealloc
{
  [(SUNetworkMonitor *)self->_queue_networkMonitor removeObserver:self];
  v3.receiver = self;
  v3.super_class = SUInstallationConstraintMonitorNetwork;
  [(SUInstallationConstraintMonitorNetwork *)&v3 dealloc];
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (self->_queue_hasNetwork)
  {
    return 0;
  }

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SUInstallationConstraintMonitorNetwork_networkChangedFromNetworkType_toNetworkType___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_networkDidChange
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v4 = [(SUNetworkMonitor *)self->_queue_networkMonitor currentNetworkType]!= 0;
  if (self->_queue_hasNetwork != v4)
  {
    self->_queue_hasNetwork = v4;
    v5 = SULogInstallConstraints();
    self->_queue_hasNetwork;
    SULogInfoForSubsystem(v5, @"%@ - network constraint changed (satisfied? %@)", v6, v7, v8, v9, v10, v11, self);

    v12 = [(SUInstallationConstraintMonitorBase *)self delegate];
    [v12 installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

@end