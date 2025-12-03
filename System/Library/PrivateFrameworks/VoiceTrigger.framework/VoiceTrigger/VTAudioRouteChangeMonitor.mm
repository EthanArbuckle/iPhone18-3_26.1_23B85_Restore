@interface VTAudioRouteChangeMonitor
+ (id)sharedInstance;
- (BOOL)_hasDoAPSupport:(__CFDictionary *)support;
- (BOOL)_hasInEarDetectSupport:(__CFDictionary *)support;
- (BOOL)_isActiveRoute:(__CFDictionary *)route;
- (VTAudioRouteChangeMonitor)init;
- (id)_CMSessionDispatchQueue;
- (void)_notifyObserver:(id)observer;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)updateExternalRouteConnectionStatus;
@end

@implementation VTAudioRouteChangeMonitor

- (id)_CMSessionDispatchQueue
{
  if ([VTAudioRouteChangeMonitor _CMSessionDispatchQueue]::onceToken != -1)
  {
    dispatch_once(&[VTAudioRouteChangeMonitor _CMSessionDispatchQueue]::onceToken, &__block_literal_global_7_5098);
  }

  v3 = [VTAudioRouteChangeMonitor _CMSessionDispatchQueue]::gCMSessionQueue;

  return v3;
}

uint64_t __52__VTAudioRouteChangeMonitor__CMSessionDispatchQueue__block_invoke()
{
  [VTAudioRouteChangeMonitor _CMSessionDispatchQueue]::gCMSessionQueue = dispatch_queue_create("VT_CMSessionDispatchQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_hasDoAPSupport:(__CFDictionary *)support
{
  v4 = *MEMORY[0x277D27398];
  result = 0;
  if (CFDictionaryContainsKey(support, *MEMORY[0x277D27398]))
  {
    Value = CFDictionaryGetValue(support, v4);
    if (CFBooleanGetValue(Value))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)_isActiveRoute:(__CFDictionary *)route
{
  v4 = *MEMORY[0x277D273B8];
  result = 0;
  if (CFDictionaryContainsKey(route, *MEMORY[0x277D273B8]))
  {
    Value = CFDictionaryGetValue(route, v4);
    if (CFBooleanGetValue(Value))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)_hasInEarDetectSupport:(__CFDictionary *)support
{
  v4 = *MEMORY[0x277D273A8];
  result = 0;
  if (CFDictionaryContainsKey(support, *MEMORY[0x277D273A8]))
  {
    Value = CFDictionaryGetValue(support, v4);
    if (CFBooleanGetValue(Value))
    {
      return 1;
    }
  }

  return result;
}

- (void)updateExternalRouteConnectionStatus
{
  _CMSessionDispatchQueue = [(VTAudioRouteChangeMonitor *)self _CMSessionDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__VTAudioRouteChangeMonitor_updateExternalRouteConnectionStatus__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(_CMSessionDispatchQueue, block);
}

uint64_t __64__VTAudioRouteChangeMonitor_updateExternalRouteConnectionStatus__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 24) = [*(a1 + 32) _updateHearstConnectionStatus];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    *buf = 67240192;
    v8 = v3;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "Hearst connection status = %{public}d", buf, 8u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__VTAudioRouteChangeMonitor_updateExternalRouteConnectionStatus__block_invoke_4;
  v6[3] = &unk_2784ECBF8;
  v6[4] = v4;
  return [v4 enumerateObserversInQueue:v6];
}

- (void)_notifyObserver:(id)observer
{
  observerCopy = observer;
  [(VTEventMonitor *)self notifyObserver:?];
  if (objc_opt_respondsToSelector())
  {
    [observerCopy VTAudioRouteChangeMonitorDidChangeAudioRoute:self];
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  _CMSessionDispatchQueue = [(VTAudioRouteChangeMonitor *)self _CMSessionDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__VTAudioRouteChangeMonitor__startMonitoringWithQueue___block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(_CMSessionDispatchQueue, block);
}

uint64_t __55__VTAudioRouteChangeMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateHearstConnectionStatus];
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (VTAudioRouteChangeMonitor)init
{
  v3.receiver = self;
  v3.super_class = VTAudioRouteChangeMonitor;
  result = [(VTEventMonitor *)&v3 init];
  if (result)
  {
    result->_hearstConnection = 0;
  }

  return result;
}

+ (id)sharedInstance
{
  if (+[VTAudioRouteChangeMonitor sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[VTAudioRouteChangeMonitor sharedInstance]::onceToken, &__block_literal_global_5110);
  }

  v3 = +[VTAudioRouteChangeMonitor sharedInstance]::sharedInstance;

  return v3;
}

uint64_t __43__VTAudioRouteChangeMonitor_sharedInstance__block_invoke()
{
  +[VTAudioRouteChangeMonitor sharedInstance]::sharedInstance = objc_alloc_init(VTAudioRouteChangeMonitor);

  return MEMORY[0x2821F96F8]();
}

@end