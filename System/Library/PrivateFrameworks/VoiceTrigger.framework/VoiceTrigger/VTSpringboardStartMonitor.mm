@interface VTSpringboardStartMonitor
+ (id)sharedInstance;
- (BOOL)_checkSpringBoardStarted;
- (VTSpringboardStartMonitor)init;
- (void)_didReceiveSpringboardStarted:(BOOL)a3;
- (void)_didReceiveSpringboardStartedInQueue:(BOOL)a3;
- (void)_notifyObserver:(id)a3 withStarted:(BOOL)a4;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation VTSpringboardStartMonitor

- (BOOL)_checkSpringBoardStarted
{
  v8 = *MEMORY[0x277D85DE8];
  if (+[VTUtilities VTIsHorseman])
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    out_token = -1;
    notify_register_check("com.apple.springboard.finishedstartup", &out_token);
    if (out_token == -1)
    {
      v2 = 0;
    }

    else
    {
      *state64 = 0;
      notify_get_state(out_token, state64);
      notify_cancel(out_token);
      v2 = *state64 != 0;
    }

    v3 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      *state64 = 138543362;
      *&state64[4] = v4;
      _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "SpringBoard started = %{public}@", state64, 0xCu);
    }
  }

  return v2;
}

- (void)_notifyObserver:(id)a3 withStarted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(VTEventMonitor *)self notifyObserver:v6];
  if (objc_opt_respondsToSelector())
  {
    [v6 VTSpringboardStartMonitor:self didReceiveStarted:v4];
  }
}

- (void)_didReceiveSpringboardStarted:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__VTSpringboardStartMonitor__didReceiveSpringboardStarted___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObservers:v3];
}

- (void)_didReceiveSpringboardStartedInQueue:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__VTSpringboardStartMonitor__didReceiveSpringboardStartedInQueue___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObserversInQueue:v3];
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
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring : Springboard start", v5, 2u);
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
    handler[2] = __55__VTSpringboardStartMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_2784ECD80;
    handler[4] = self;
    notify_register_dispatch("com.apple.springboard.finishedstartup", &self->_notifyToken, v4, handler);
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      v6 = "Start monitoring : Springboard start";
      goto LABEL_6;
    }
  }

  else
  {
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      v6 = "Cannot start monitoring Springboard start because it was already started";
LABEL_6:
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, v6, &v7, 2u);
    }
  }

  self->_isSpringBoardStarted = [(VTSpringboardStartMonitor *)self _checkSpringBoardStarted];
}

uint64_t __55__VTSpringboardStartMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 28) = [*(a1 + 32) _checkSpringBoardStarted];
  v2 = *(a1 + 32);
  v3 = v2[28];

  return [v2 _didReceiveSpringboardStarted:v3];
}

- (VTSpringboardStartMonitor)init
{
  v3.receiver = self;
  v3.super_class = VTSpringboardStartMonitor;
  result = [(VTEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
    result->_isSpringBoardStarted = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3064 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3064, &__block_literal_global_3065);
  }

  v3 = sharedInstance__sharedInstance_3066;

  return v3;
}

uint64_t __43__VTSpringboardStartMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_3066 = objc_alloc_init(VTSpringboardStartMonitor);

  return MEMORY[0x2821F96F8]();
}

@end