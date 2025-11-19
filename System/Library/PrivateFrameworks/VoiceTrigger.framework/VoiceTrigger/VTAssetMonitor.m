@interface VTAssetMonitor
+ (id)sharedInstance;
- (VTAssetMonitor)init;
- (void)_didReceiveNewAssetAvailable;
- (void)_notifyObserver:(id)a3;
- (void)_startMonitoringWithQueue:(id)a3;
- (void)_stopMonitoring;
- (void)notifyNewAssetDownloaded;
@end

@implementation VTAssetMonitor

- (void)_notifyObserver:(id)a3
{
  v4 = a3;
  [(VTEventMonitor *)self notifyObserver:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 VTAssetMonitor:self didReceiveNewAssetAvailable:1];
  }
}

- (void)_didReceiveNewAssetAvailable
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "New asset is available", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__VTAssetMonitor__didReceiveNewAssetAvailable__block_invoke;
  v4[3] = &unk_2784ECBF8;
  v4[4] = self;
  [(VTEventMonitor *)self enumerateObservers:v4];
}

- (void)notifyNewAssetDownloaded
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__VTAssetMonitor_notifyNewAssetDownloaded__block_invoke;
  v2[3] = &unk_2784ECBF8;
  v2[4] = self;
  [(VTEventMonitor *)self enumerateObserversInQueue:v2];
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
      _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring : Asset meta update", v5, 2u);
    }
  }
}

- (void)_startMonitoringWithQueue:(id)a3
{
  if (self->_notifyToken == -1)
  {
    handler[7] = v3;
    handler[8] = v4;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __44__VTAssetMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_2784ECD80;
    handler[4] = self;
    notify_register_dispatch("com.apple.MobileAsset.VoiceTriggerAssets.ma.cached-metadata-updated", &self->_notifyToken, a3, handler);
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "Start monitoring : Asset meta update", v6, 2u);
    }
  }
}

- (VTAssetMonitor)init
{
  v3.receiver = self;
  v3.super_class = VTAssetMonitor;
  result = [(VTEventMonitor *)&v3 init];
  if (result)
  {
    result->_notifyToken = -1;
  }

  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2829 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2829, &__block_literal_global_2830);
  }

  v3 = sharedInstance__sharedInstance_2831;

  return v3;
}

uint64_t __32__VTAssetMonitor_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_2831 = objc_alloc_init(VTAssetMonitor);

  return MEMORY[0x2821F96F8]();
}

@end