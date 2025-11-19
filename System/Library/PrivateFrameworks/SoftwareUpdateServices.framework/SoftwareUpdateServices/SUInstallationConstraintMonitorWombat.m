@interface SUInstallationConstraintMonitorWombat
- (id)initOnQueue:(id)a3 withDownload:(id)a4;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_pollSatisfied;
- (void)_set_queue_wombatEnabled:(BOOL)a3;
- (void)_wombatEnabledDidChange:(id)a3;
@end

@implementation SUInstallationConstraintMonitorWombat

- (id)initOnQueue:(id)a3 withDownload:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  BSDispatchQueueAssert();
  v17.receiver = self;
  v17.super_class = SUInstallationConstraintMonitorWombat;
  v8 = [(SUInstallationConstraintMonitorBase *)&v17 initOnQueue:v7 withRepresentedInstallationConstraints:4096 andDownload:v6];

  if (v8)
  {
    *(v8 + 56) = 0;
    v9 = *(v8 + 6);
    *(v8 + 6) = 0;

    v10 = [MEMORY[0x277D26E58] sharedInstance];
    v11 = *(v8 + 6);
    *(v8 + 6) = v10;

    v12 = MEMORY[0x277D26E38];
    v18[0] = *MEMORY[0x277D26E38];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    [*(v8 + 6) setAttribute:v13 forKey:*MEMORY[0x277D26DD0] error:0];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v8 selector:sel__wombatEnabledDidChange_ name:*v12 object:*(v8 + 6)];

    [v8 _queue_pollSatisfied];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_wombatEnabledDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:*MEMORY[0x277D26E48]];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 BOOLValue];
      queue = self->super._queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__SUInstallationConstraintMonitorWombat__wombatEnabledDidChange___block_invoke;
      block[3] = &unk_279CAAD00;
      block[4] = self;
      v25 = v9;
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

- (void)_set_queue_wombatEnabled:(BOOL)a3
{
  v3 = a3;
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if (self->_queue_wombatEnabled != v3)
  {
    self->_queue_wombatEnabled = v3;
    v6 = SULogInstallConstraints();
    self->_queue_wombatEnabled;
    SULogInfoForSubsystem(v6, @"%@ - is wombat constraint changed (satisfied? %@)", v7, v8, v9, v10, v11, v12, self);

    v13 = [(SUInstallationConstraintMonitorBase *)self delegate];
    [v13 installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
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