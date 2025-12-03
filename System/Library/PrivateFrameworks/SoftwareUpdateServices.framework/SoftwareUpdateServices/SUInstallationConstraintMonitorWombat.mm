@interface SUInstallationConstraintMonitorWombat
- (id)initOnQueue:(id)queue withDownload:(id)download;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_pollSatisfied;
- (void)_set_queue_wombatEnabled:(BOOL)enabled;
- (void)_wombatEnabledDidChange:(id)change;
@end

@implementation SUInstallationConstraintMonitorWombat

- (id)initOnQueue:(id)queue withDownload:(id)download
{
  v18[1] = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  queueCopy = queue;
  BSDispatchQueueAssert();
  v17.receiver = self;
  v17.super_class = SUInstallationConstraintMonitorWombat;
  v8 = [(SUInstallationConstraintMonitorBase *)&v17 initOnQueue:queueCopy withRepresentedInstallationConstraints:4096 andDownload:downloadCopy];

  if (v8)
  {
    *(v8 + 56) = 0;
    v9 = *(v8 + 6);
    *(v8 + 6) = 0;

    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
    v11 = *(v8 + 6);
    *(v8 + 6) = mEMORY[0x277D26E58];

    v12 = MEMORY[0x277D26E38];
    v18[0] = *MEMORY[0x277D26E38];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [*(v8 + 6) setAttribute:v13 forKey:*MEMORY[0x277D26DD0] error:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__wombatEnabledDidChange_ name:*v12 object:*(v8 + 6)];

    [v8 _queue_pollSatisfied];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_wombatEnabledDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    v7 = [userInfo objectForKey:*MEMORY[0x277D26E48]];
    v8 = v7;
    if (v7)
    {
      bOOLValue = [v7 BOOLValue];
      queue = self->super._queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__SUInstallationConstraintMonitorWombat__wombatEnabledDidChange___block_invoke;
      block[3] = &unk_279CAAD00;
      block[4] = self;
      v25 = bOOLValue;
      dispatch_async(queue, block);
    }

    else
    {
      v17 = SULogInstallConstraints();
      SULogErrorForSubsystem(v17, @"%s: Failed to get status from %@", v18, v19, v20, v21, v22, v23, "[SUInstallationConstraintMonitorWombat _wombatEnabledDidChange:]");
    }
  }

  else
  {
    v8 = SULogInstallConstraints();
    SULogErrorForSubsystem(v8, @"%s: Failed to get userinfo from %@", v11, v12, v13, v14, v15, v16, "[SUInstallationConstraintMonitorWombat _wombatEnabledDidChange:]");
  }
}

- (void)_queue_pollSatisfied
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v4 = [(AVSystemController *)self->_avController attributeForKey:*MEMORY[0x277D26E28]];
  v5 = v4 == *MEMORY[0x277CBED28];

  [(SUInstallationConstraintMonitorWombat *)self _set_queue_wombatEnabled:v5];
}

- (void)_set_queue_wombatEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (self->_queue_wombatEnabled != enabledCopy)
  {
    self->_queue_wombatEnabled = enabledCopy;
    v6 = SULogInstallConstraints();
    self->_queue_wombatEnabled;
    SULogInfoForSubsystem(v6, @"%@ - is wombat constraint changed (satisfied? %@)", v7, v8, v9, v10, v11, v12, self);

    delegate = [(SUInstallationConstraintMonitorBase *)self delegate];
    [delegate installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (!self->_queue_wombatEnabled)
  {
    return 0;
  }

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

@end