@interface AppStateMonitor
- (AppStateMonitor)initWithPID:(int)a3;
- (id).cxx_construct;
- (int)currentAppState;
- (void)_process:(id)a3 didUpdateState:(id)a4;
- (void)dealloc;
@end

@implementation AppStateMonitor

- (AppStateMonitor)initWithPID:(int)a3
{
  v23.receiver = self;
  v23.super_class = AppStateMonitor;
  v4 = [(AppStateMonitor *)&v23 init];
  v5 = v4;
  if (v4)
  {
    processNameInternal = v4->_processNameInternal;
    v4->_processNameInternal = 0;

    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_monitoredPID = a3;
    objc_initWeak(&location, v5);
    v7 = [MEMORY[0x277D46F50] identifierWithPid:v5->_monitoredPID];
    v21 = 0;
    v8 = [MEMORY[0x277D46F48] handleForIdentifier:v7 error:&v21];
    v9 = v21;
    processHandle = v5->_processHandle;
    v5->_processHandle = v8;

    if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_271022A00(v9);
    }

    v11 = [(RBSProcessHandle *)v5->_processHandle name];
    v12 = v5->_processNameInternal;
    v5->_processNameInternal = v11;

    [(RBSProcessHandle *)v5->_processHandle monitorForDeath:&unk_2880F8A18];
    v13 = MEMORY[0x277D46F80];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_271007770;
    v18[3] = &unk_279E2C1D8;
    v14 = v7;
    v19 = v14;
    objc_copyWeak(&v20, &location);
    v15 = [v13 monitorWithConfiguration:v18];
    processMonitor = v5->_processMonitor;
    v5->_processMonitor = v15;

    if (!v5->_processMonitor && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_271022A80();
    }

    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  [(AppStateMonitor *)self invalidate];
  v3.receiver = self;
  v3.super_class = AppStateMonitor;
  [(AppStateMonitor *)&v3 dealloc];
}

- (int)currentAppState
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_latestState.__engaged_)
  {
    appState = self->_latestState.var0.__val_.appState;
    os_unfair_lock_unlock(&self->_lock);
    return appState;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    return 0;
  }
}

- (void)_process:(id)a3 didUpdateState:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 state];
  v9 = sub_271007D48(v8);
  v11 = v10;

  v12 = [v7 previousState];
  v13 = sub_271007D48(v12);
  v15 = v14;

  v16 = [v6 pid];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v6 name];
    LODWORD(v26) = 67109891;
    HIDWORD(v26) = v15;
    v27 = 1024;
    v28 = v11;
    v29 = 2113;
    v30 = v17;
    v31 = 1024;
    v32 = v16;
    _os_log_impl(&dword_271001000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "VisionHWAServer: previousState: %d, state: %d, name: %{private}@, pid: %d", &v26, 0x1Eu);
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_processNameInternal)
  {
    v18 = [v6 name];
    processNameInternal = self->_processNameInternal;
    self->_processNameInternal = v18;
  }

  engaged = self->_latestState.__engaged_;
  v21 = v9;
  v22 = v21;
  if (engaged)
  {
    processState = self->_latestState.var0.__val_.processState;
    self->_latestState.var0.__val_.processState = v21;

    self->_latestState.var0.__val_.appState = v11;
    os_unfair_lock_unlock(&self->_lock);
    if (v11 == v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    self->_latestState.var0.__val_.processState = v21;
    self->_latestState.__engaged_ = 1;
    self->_latestState.var0.__val_.appState = v11;
    os_unfair_lock_unlock(&self->_lock);
    if (v11 == v15)
    {
      goto LABEL_13;
    }
  }

  objc_initWeak(&v26, self);
  if ((v15 - 3) <= 1 && (v11 - 5) <= 0xFFFFFFFD)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v24 = objc_loadWeakRetained(&v26);
    CMNotificationCenterPostNotification();
  }

  objc_destroyWeak(&v26);
LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 40) = 0;
  *(self + 56) = 0;
  return self;
}

@end