@interface VTLanguageCodeUpdateMonitor
+ (id)sharedInstance;
- (VTLanguageCodeUpdateMonitor)init;
- (void)_didReceiveLanguageCodeUpdate;
- (void)_notifyObserver:(id)a3 withLanguageCode:(id)a4;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation VTLanguageCodeUpdateMonitor

- (void)_notifyObserver:(id)a3 withLanguageCode:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(VTEventMonitor *)self notifyObserver:v7];
  if (objc_opt_respondsToSelector())
  {
    [v7 VTLanguageCodeUpdateMonitor:self didReceiveLanguageCodeChanged:v6];
  }
}

- (void)_didReceiveLanguageCodeUpdate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = AFPreferencesMobileUserSessionLanguage();
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Siri language changed to : %{public}@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__VTLanguageCodeUpdateMonitor__didReceiveLanguageCodeUpdate__block_invoke;
  v6[3] = &unk_2784EC438;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(VTEventMonitor *)self enumerateObserversInQueue:v6];
}

- (void)_stopMonitoring
{
  if (objc_opt_class())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEF010], 0);
    v4 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring : Siri language code", v5, 2u);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  if (objc_opt_class())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AFLanguageDidChangeCallback, *MEMORY[0x277CEF010], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Start monitoring : Siri language code", v6, 2u);
    }
  }
}

- (VTLanguageCodeUpdateMonitor)init
{
  v3.receiver = self;
  v3.super_class = VTLanguageCodeUpdateMonitor;
  result = [(VTEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_456 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_456, &__block_literal_global_457);
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __45__VTLanguageCodeUpdateMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance = objc_alloc_init(VTLanguageCodeUpdateMonitor);

  return MEMORY[0x2821F96F8]();
}

@end