@interface VTSiriEnabledMonitor
+ (id)sharedInstance;
- (VTSiriEnabledMonitor)init;
- (void)_didReceiveSiriSettingChanged:(BOOL)a3;
- (void)_notifyObserver:(id)a3 withEnabled:(BOOL)a4;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
@end

@implementation VTSiriEnabledMonitor

- (void)_notifyObserver:(id)a3 withEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(VTEventMonitor *)self notifyObserver:v6];
  if (objc_opt_respondsToSelector())
  {
    [v6 VTSiriEnabledMonitor:self didReceiveEnabled:v4];
  }
}

- (void)_didReceiveSiriSettingChanged:(BOOL)a3
{
  self->_isSiriEnabled = a3;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__VTSiriEnabledMonitor__didReceiveSiriSettingChanged___block_invoke;
  v3[3] = &unk_2784ECDA8;
  v3[4] = self;
  v4 = a3;
  [(VTEventMonitor *)self enumerateObserversInQueue:v3];
}

- (void)_stopMonitoring
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEF5B8], 0);
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring : Siri setting switch", v5, 2u);
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AssistantPrefsChangedNotification, *MEMORY[0x277CEF5B8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Start monitoring : Siri setting switch", v6, 2u);
  }

  self->_isSiriEnabled = AFPreferencesAssistantEnabled() != 0;
}

- (VTSiriEnabledMonitor)init
{
  v5.receiver = self;
  v5.super_class = VTSiriEnabledMonitor;
  result = [(VTEventMonitor *)&v5 init];
  if (result)
  {
    v3 = result;
    v4 = AFPreferencesAssistantEnabled();
    result = v3;
    v3->_isSiriEnabled = v4 != 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2131 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2131, &__block_literal_global_2132);
  }

  v3 = sharedInstance__sharedInstance_2133;

  return v3;
}

uint64_t __38__VTSiriEnabledMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_2133 = objc_alloc_init(VTSiriEnabledMonitor);

  return MEMORY[0x2821F96F8]();
}

@end