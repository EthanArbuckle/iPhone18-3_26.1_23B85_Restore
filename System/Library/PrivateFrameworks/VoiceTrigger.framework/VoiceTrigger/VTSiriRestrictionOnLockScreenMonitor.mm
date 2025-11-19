@interface VTSiriRestrictionOnLockScreenMonitor
+ (id)sharedInstance;
- (BOOL)_checkSiriRestrictedOnLockScreen;
- (VTSiriRestrictionOnLockScreenMonitor)init;
- (void)_didReceiveRestrictionChanged:(BOOL)a3;
- (void)_didReceiveRestrictionChangedInQueue:(BOOL)a3;
- (void)_notifyObserver:(id)a3 withRestricted:(BOOL)a4;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation VTSiriRestrictionOnLockScreenMonitor

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = [(VTSiriRestrictionOnLockScreenMonitor *)self _checkSiriRestrictedOnLockScreen:a3];
  self->_isRestricted = v5;

  [(VTSiriRestrictionOnLockScreenMonitor *)self _didReceiveRestrictionChanged:v5];
}

- (void)_notifyObserver:(id)a3 withRestricted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(VTEventMonitor *)self notifyObserver:v6];
  if (objc_opt_respondsToSelector())
  {
    [v6 VTSiriRestrictionOnLockScreenMonitor:self didReceiveRestrictionChanged:v4];
  }
}

- (void)_didReceiveRestrictionChanged:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__VTSiriRestrictionOnLockScreenMonitor__didReceiveRestrictionChanged___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_didReceiveRestrictionChangedInQueue:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__VTSiriRestrictionOnLockScreenMonitor__didReceiveRestrictionChangedInQueue___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObserversInQueue:v3];
}

- (BOOL)_checkSiriRestrictedOnLockScreen
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26298] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25D50]];

  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3 == 2)
    {
      v5 = @"YES";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Siri restricted on lock screen : %{public}@", &v7, 0xCu);
  }

  return v3 == 2;
}

- (void)_stopMonitoring
{
  v3 = [MEMORY[0x277D26298] sharedConnection];
  [v3 removeObserver:self];

  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring : Setting preference change", v5, 2u);
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  v4 = [MEMORY[0x277D26298] sharedConnection];
  [v4 addObserver:self];

  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Start monitoring : Setting preference change", v6, 2u);
  }

  self->_isRestricted = [(VTSiriRestrictionOnLockScreenMonitor *)self _checkSiriRestrictedOnLockScreen];
}

- (VTSiriRestrictionOnLockScreenMonitor)init
{
  v3.receiver = self;
  v3.super_class = VTSiriRestrictionOnLockScreenMonitor;
  result = [(VTEventMonitor *)&v3 init];
  if (result)
  {
    result->_isRestricted = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3352 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3352, &__block_literal_global_3353);
  }

  v3 = sharedInstance__sharedInstance_3354;

  return v3;
}

uint64_t __54__VTSiriRestrictionOnLockScreenMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_3354 = objc_alloc_init(VTSiriRestrictionOnLockScreenMonitor);

  return MEMORY[0x2821F96F8]();
}

@end