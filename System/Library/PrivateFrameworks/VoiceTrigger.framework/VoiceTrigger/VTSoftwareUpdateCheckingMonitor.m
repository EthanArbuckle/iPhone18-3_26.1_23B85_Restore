@interface VTSoftwareUpdateCheckingMonitor
+ (id)sharedInstance;
- (BOOL)_checkSoftwareUpdateCheckingState;
- (VTSoftwareUpdateCheckingMonitor)init;
- (unsigned)_softwareUpdateCheckingState;
- (void)_didReceiveSoftwareUpdateCheckingStateChanged:(BOOL)a3;
- (void)_didReceiveSoftwareUpdateCheckingStateChangedInQueue:(BOOL)a3;
- (void)_notifyObserver:(id)a3 withSoftwareUpdateCheckingRunning:(BOOL)a4;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation VTSoftwareUpdateCheckingMonitor

- (void)_notifyObserver:(id)a3 withSoftwareUpdateCheckingRunning:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(VTEventMonitor *)self notifyObserver:v6];
  if (objc_opt_respondsToSelector())
  {
    [v6 VTSoftwareUpdateCheckingMonitor:self didReceiveStateChanged:v4];
  }
}

- (void)_didReceiveSoftwareUpdateCheckingStateChanged:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__VTSoftwareUpdateCheckingMonitor__didReceiveSoftwareUpdateCheckingStateChanged___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveSoftwareUpdateCheckingStateChangedInQueue:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __88__VTSoftwareUpdateCheckingMonitor__didReceiveSoftwareUpdateCheckingStateChangedInQueue___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObserversInQueue:v3];
}

- (unsigned)_softwareUpdateCheckingState
{
  out_token = -1;
  notify_register_check("com.apple.duetscheduler.restartCheckNotification", &out_token);
  if (out_token == -1)
  {
    return 2;
  }

  v3 = 0;
  notify_get_state(out_token, &v3);
  notify_cancel(out_token);
  return v3 == 0;
}

- (BOOL)_checkSoftwareUpdateCheckingState
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(VTSoftwareUpdateCheckingMonitor *)self _softwareUpdateCheckingState];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (!v2)
    {
      v4 = @"YES";
    }

    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Software update checking running : %{public}@", &v6, 0xCu);
  }

  return v2 == 0;
}

- (void)_stopMonitoring
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring : Software update checking state", v5, 2u);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v4 = a3;
  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __61__VTSoftwareUpdateCheckingMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_2784ECD80;
    handler[4] = self;
    notify_register_dispatch("com.apple.duetscheduler.restartCheckNotification", &self->_notifyToken, v4, handler);
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      v6 = "Start monitoring : Software update checking state";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      v6 = "Cannot start monitoring software update checking state because it was already started";
LABEL_6:
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, v6, &v7, 2u);
    }
  }

  self->_isSoftwareUpdateCheckingRunning = [(VTSoftwareUpdateCheckingMonitor *)self _checkSoftwareUpdateCheckingState];
}

uint64_t __61__VTSoftwareUpdateCheckingMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 28) = [*(a1 + 32) _checkSoftwareUpdateCheckingState];
  v2 = *(a1 + 32);
  v3 = v2[28];

  return [v2 _didReceiveSoftwareUpdateCheckingStateChanged:v3];
}

- (VTSoftwareUpdateCheckingMonitor)init
{
  v3.receiver = self;
  v3.super_class = VTSoftwareUpdateCheckingMonitor;
  result = [(VTEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_isSoftwareUpdateCheckingRunning = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6287 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6287, &__block_literal_global_6288);
  }

  v3 = sharedInstance__sharedInstance_6289;

  return v3;
}

uint64_t __49__VTSoftwareUpdateCheckingMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_6289 = objc_alloc_init(VTSoftwareUpdateCheckingMonitor);

  return MEMORY[0x2821F96F8]();
}

@end