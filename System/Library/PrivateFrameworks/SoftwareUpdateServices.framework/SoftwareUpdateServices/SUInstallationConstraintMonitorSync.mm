@interface SUInstallationConstraintMonitorSync
- (id)initOnQueue:(id)queue withDownload:(id)download;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_initilizaSyncState;
- (void)_queue_setSyncing:(BOOL)syncing;
- (void)connection:(id)connection updatedProgress:(id)progress;
- (void)connectionWasInterrupted:(id)interrupted;
@end

@implementation SUInstallationConstraintMonitorSync

- (id)initOnQueue:(id)queue withDownload:(id)download
{
  downloadCopy = download;
  queueCopy = queue;
  BSDispatchQueueAssert();
  v12.receiver = self;
  v12.super_class = SUInstallationConstraintMonitorSync;
  v8 = [(SUInstallationConstraintMonitorBase *)&v12 initOnQueue:queueCopy withRepresentedInstallationConstraints:128 andDownload:downloadCopy];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CEA440]);
    v10 = v8[7];
    v8[7] = v9;

    [v8[7] setDelegate:v8];
    [v8[7] registerForStatus];
    [v8 _queue_initilizaSyncState];
  }

  return v8;
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (!self->_queue_isSyncing)
  {
    return 0;
  }

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

- (void)connection:(id)connection updatedProgress:(id)progress
{
  progressCopy = progress;
  queue = self->super._queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SUInstallationConstraintMonitorSync_connection_updatedProgress___block_invoke;
  v8[3] = &unk_279CAA7C0;
  v9 = progressCopy;
  selfCopy = self;
  v7 = progressCopy;
  dispatch_async(queue, v8);
}

uint64_t __66__SUInstallationConstraintMonitorSync_connection_updatedProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"Enabled"];
  v3 = [v2 BOOLValue];

  v4 = *(a1 + 40);

  return [v4 _queue_setSyncing:v3];
}

- (void)connectionWasInterrupted:(id)interrupted
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SUInstallationConstraintMonitorSync_connectionWasInterrupted___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_initilizaSyncState
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v4 = 0;
  if ([(ATConnection *)self->_queue_airTrafficConnection isSyncing:&v4 automatically:0 wirelessly:0])
  {
    [(SUInstallationConstraintMonitorSync *)self _queue_setSyncing:v4];
  }
}

- (void)_queue_setSyncing:(BOOL)syncing
{
  syncingCopy = syncing;
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (self->_queue_isSyncing != syncingCopy)
  {
    self->_queue_isSyncing = syncingCopy;
    v6 = SULogInstallConstraints();
    self->_queue_isSyncing;
    SULogInfoForSubsystem(v6, @"%@ - iTunes sync constraint changed (satisfied? %@)", v7, v8, v9, v10, v11, v12, self);

    delegate = [(SUInstallationConstraintMonitorBase *)self delegate];
    [delegate installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

@end