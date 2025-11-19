@interface SUInstallationConstraintMonitorForBatteryDiskAndKeybag
- (BOOL)_queue_evaluateBattery;
- (BOOL)_queue_evaluateDisk;
- (BOOL)_queue_evaluateKeybag;
- (BOOL)_queue_evaluatePasscodeLocked;
- (id)initOnQueue:(id)a3 withDownload:(id)a4 andInstallOptions:(id)a5;
- (id)initOnQueue:(id)a3 withDownload:(id)a4 installOptions:(id)a5 pollDuration:(double)a6 keybag:(id)a7;
- (unint64_t)deltaSpaceNeeded;
- (unint64_t)unsatisfiedConstraints;
- (void)_queue_pollSatisfied;
- (void)dealloc;
- (void)keybagInterface:(id)a3 hasPasscodeSetDidChange:(BOOL)a4;
- (void)keybagInterface:(id)a3 passcodeLockedStateDidChange:(BOOL)a4;
- (void)keybagInterfacePasscodeDidChange:(id)a3;
- (void)refreshConstraints;
@end

@implementation SUInstallationConstraintMonitorForBatteryDiskAndKeybag

- (id)initOnQueue:(id)a3 withDownload:(id)a4 andInstallOptions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[SUKeybagInterface sharedInstance];
  v12 = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self initOnQueue:v10 withDownload:v9 installOptions:v8 pollDuration:v11 keybag:300.0];

  return v12;
}

- (id)initOnQueue:(id)a3 withDownload:(id)a4 installOptions:(id)a5 pollDuration:(double)a6 keybag:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  BSDispatchQueueAssert();
  v43.receiver = self;
  v43.super_class = SUInstallationConstraintMonitorForBatteryDiskAndKeybag;
  v16 = [(SUInstallationConstraintMonitorBase *)&v43 initOnQueue:v12 withRepresentedInstallationConstraints:53 andDownload:v13 andInstallOptions:v14];
  v17 = v16;
  if (v16)
  {
    v18 = v16[6];
    v16[6] = 0;

    *(v17 + 64) = 0;
    *(v17 + 72) = 0;
    *(v17 + 73) = 0;
    *(v17 + 74) = 0;
    *(v17 + 75) = 0;
    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v20 = SULogInstallConstraints();
      SULogDebugForSubsystem(v20, @"No KeybagInterface instance provided to SUInstallationConstraintMonitorForBatteryDiskAndKeybag initializer", v21, v22, v23, v24, v25, v26, v39);

      v19 = +[SUKeybagInterface sharedInstance];
    }

    v27 = *(v17 + 48);
    *(v17 + 48) = v19;

    [*(v17 + 48) addObserver:v17];
    objc_initWeak(&location, v17);
    v28 = SULogInstallConstraints();
    SULogDebugForSubsystem(v28, @"%@ - timer scheduled for interval @ %f s", v29, v30, v31, v32, v33, v34, v17);

    v35 = objc_alloc(MEMORY[0x277CF0D00]);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __118__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_initOnQueue_withDownload_installOptions_pollDuration_keybag___block_invoke;
    v40[3] = &unk_279CABC30;
    objc_copyWeak(v41, &location);
    v41[1] = *&a6;
    v36 = [v35 initWithFireInterval:v12 repeatInterval:v40 leewayInterval:a6 queue:a6 handler:0.0];
    v37 = *(v17 + 56);
    *(v17 + 56) = v36;

    [*(v17 + 56) schedule];
    [v17 _queue_pollSatisfied];
    objc_destroyWeak(v41);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __118__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_initOnQueue_withDownload_installOptions_pollDuration_keybag___block_invoke(uint64_t a1)
{
  v2 = SULogInstallConstraints();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = *(a1 + 40);
  SULogDebugForSubsystem(v2, @"%@ - timer fired @ %f s", v4, v5, v6, v7, v8, v9, WeakRetained);

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 _queue_pollSatisfied];
}

- (void)dealloc
{
  [(SUKeybagInterface *)self->_queue_keybag removeObserver:self];
  queue_keybag = self->_queue_keybag;
  self->_queue_keybag = 0;

  v4 = SULogInstallConstraints();
  SULogDebugForSubsystem(v4, @"%@ - timer invalidated", v5, v6, v7, v8, v9, v10, self);

  v11 = self->_queue_timer;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_dealloc__block_invoke;
  block[3] = &unk_279CAA708;
  v18 = v11;
  v13 = v11;
  v14 = queue;
  dispatch_async(v14, block);
  queue_timer = self->_queue_timer;
  self->_queue_timer = 0;

  v16.receiver = self;
  v16.super_class = SUInstallationConstraintMonitorForBatteryDiskAndKeybag;
  [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)&v16 dealloc];
}

- (unint64_t)deltaSpaceNeeded
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->super._queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_deltaSpaceNeeded__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)unsatisfiedConstraints
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v4 = !self->_queue_batterySatisfied;
  if (!self->_queue_diskSatisfied)
  {
    v4 |= 4uLL;
  }

  if (!self->_queue_keybagSatisfied)
  {
    v4 |= 0x10uLL;
  }

  if (self->_queue_passcodeSatisfied)
  {
    return v4;
  }

  else
  {
    return v4 | 0x20;
  }
}

- (void)refreshConstraints
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_refreshConstraints__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)keybagInterface:(id)a3 hasPasscodeSetDidChange:(BOOL)a4
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_keybagInterface_hasPasscodeSetDidChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)keybagInterface:(id)a3 passcodeLockedStateDidChange:(BOOL)a4
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_keybagInterface_passcodeLockedStateDidChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)keybagInterfacePasscodeDidChange:(id)a3
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__SUInstallationConstraintMonitorForBatteryDiskAndKeybag_keybagInterfacePasscodeDidChange___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_pollSatisfied
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v4 = SULogInstallConstraints();
  SULogInfoForSubsystem(v4, @"%@ - evaluating constraints for disk/battery/passcode/keybag", v5, v6, v7, v8, v9, v10, self);

  if (!self->_queue_keybag)
  {
    v11 = +[SUKeybagInterface sharedInstance];
    queue_keybag = self->_queue_keybag;
    self->_queue_keybag = v11;

    [(SUKeybagInterface *)self->_queue_keybag addObserver:self];
  }

  v13 = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self _queue_evaluateBattery];
  v14 = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self _queue_evaluateDisk];
  v15 = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self _queue_evaluateKeybag];
  v16 = [(SUInstallationConstraintMonitorForBatteryDiskAndKeybag *)self _queue_evaluatePasscodeLocked];
  v17 = v13;
  if (v14)
  {
    v17 = v13 | 4;
  }

  if (v15)
  {
    v17 |= 0x10uLL;
  }

  if (v16)
  {
    v18 = v17 | 0x20;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    v19 = [(SUInstallationConstraintMonitorBase *)self delegate];
    [v19 installationConstraintMonitor:self constraintsDidChange:v18];
  }
}

- (BOOL)_queue_evaluateBattery
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v4 = [(SUInstallationConstraintMonitorBase *)self download];
  v5 = [v4 descriptor];
  v6 = [(SUInstallationConstraintMonitorBase *)self installOptions];
  v7 = SUHasEnoughBatteryForInstallation(v5, v6);

  queue_batterySatisfied = self->_queue_batterySatisfied;
  if (queue_batterySatisfied != v7)
  {
    self->_queue_batterySatisfied = v7;
    v9 = SULogInstallConstraints();
    self->_queue_batterySatisfied;
    SULogInfoForSubsystem(v9, @"%@ - battery constraint changed (satisfied? %@)", v10, v11, v12, v13, v14, v15, self);
  }

  return queue_batterySatisfied != v7;
}

- (BOOL)_queue_evaluateDisk
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v4 = SULogInstallConstraints();
  v5 = [(SUInstallationConstraintMonitorBase *)self download];
  SULogInfoForSubsystem(v4, @"evaluateDisk: download: (%p)", v6, v7, v8, v9, v10, v11, v5);

  v19 = [(SUInstallationConstraintMonitorBase *)self download];
  if (!v19)
  {
    v23 = @"Download instance is nil";
LABEL_9:
    SULogInfo(v23, v12, v13, v14, v15, v16, v17, v18, v40);
    v24 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = @"download not class SUDownload";
    goto LABEL_9;
  }

  v20 = [v19 descriptor];

  if (!v20)
  {
    v23 = @"descriptor instance is nil";
    goto LABEL_9;
  }

  v21 = [v19 downloadOptions];

  if (v21)
  {
    v22 = [v19 downloadOptions];
LABEL_13:
    v27 = v22;
    [v22 isAutoDownload];

    goto LABEL_14;
  }

  v26 = [v19 metadata];

  if (v26)
  {
    v22 = [v19 metadata];
    goto LABEL_13;
  }

LABEL_14:
  v28 = objc_alloc_init(SUSpacePurgeOptions);
  v29 = [v19 descriptor];
  -[SUSpacePurgeOptions setNeededBytes:](v28, "setNeededBytes:", [v29 installationSize]);

  [(SUSpacePurgeOptions *)v28 setEnableCacheDelete:1];
  [(SUSpacePurgeOptions *)v28 setEnableAppOffload:0];
  [(SUSpacePurgeOptions *)v28 setEnableMobileAssetSuspend:0];
  [(SUSpacePurgeOptions *)v28 setCacheDeleteUrgency:4];
  v30 = [SUSpace hasSufficientSpaceWithOptions:v28 error:0];
  v31 = [v30 hasSufficientFreeSpace];
  self->_queue_deltaSpaceNeeded = [v30 additionalBytesRequired];
  queue_diskSatisfied = self->_queue_diskSatisfied;
  v24 = queue_diskSatisfied != v31;
  if (queue_diskSatisfied != v31)
  {
    self->_queue_diskSatisfied = v31;
    v33 = SULogInstallConstraints();
    self->_queue_diskSatisfied;
    SULogInfoForSubsystem(v33, @"%@ - disk constraint changed (satisfied? %@)", v34, v35, v36, v37, v38, v39, self);
  }

LABEL_10:
  return v24;
}

- (BOOL)_queue_evaluatePasscodeLocked
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  if ([(SUKeybagInterface *)self->_queue_keybag isPasscodeLocked])
  {
    queue_keybagSatisfied = self->_queue_keybagSatisfied;
  }

  else
  {
    queue_keybagSatisfied = 1;
  }

  queue_passcodeSatisfied = self->_queue_passcodeSatisfied;
  v6 = queue_keybagSatisfied;
  if (queue_passcodeSatisfied != v6)
  {
    self->_queue_passcodeSatisfied = v6;
    v7 = SULogInstallConstraints();
    self->_queue_passcodeSatisfied;
    SULogInfoForSubsystem(v7, @"%@ - passcode constraint changed (satisfied? %@)", v8, v9, v10, v11, v12, v13, self);
  }

  return queue_passcodeSatisfied != v6;
}

- (BOOL)_queue_evaluateKeybag
{
  queue = self->super._queue;
  BSDispatchQueueAssert();
  queue_keybag = self->_queue_keybag;
  v5 = [(SUInstallationConstraintMonitorBase *)self download];
  v6 = [v5 descriptor];
  v7 = [(SUKeybagInterface *)queue_keybag installationKeybagStateForDescriptor:v6]!= 1;

  queue_keybagSatisfied = self->_queue_keybagSatisfied;
  if (queue_keybagSatisfied != v7)
  {
    self->_queue_keybagSatisfied = v7;
    v9 = SULogInstallConstraints();
    self->_queue_keybagSatisfied;
    SULogInfoForSubsystem(v9, @"%@ - keybag constraint changed (satisfied? %@)", v10, v11, v12, v13, v14, v15, self);
  }

  return queue_keybagSatisfied != v7;
}

@end