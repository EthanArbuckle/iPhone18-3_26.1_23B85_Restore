@interface RMMediaSession
+ (BOOL)_isClientModeAvailable:(int64_t)available;
- (BOOL)_start;
- (BOOL)isAXHeadTrackingSettingEnabled;
- (id)_initWithOptions:(id)options;
- (int64_t)_currentAudioListenerPose:(id *)pose;
- (int64_t)_currentAudioListenerPose:(id *)pose timestamp:(double *)timestamp;
- (void)_resetTrackingForAllClients;
- (void)_stop;
- (void)axHeadTrackingSettingChanged;
- (void)dealloc;
- (void)startMonitoringAXHeadTrackingSetting;
- (void)stopMonitoringAXHeadTrackingSetting;
@end

@implementation RMMediaSession

+ (BOOL)_isClientModeAvailable:(int64_t)available
{
  result = +[RMMediaSession isAvailable];
  if (available >= 5)
  {
    return 0;
  }

  return result;
}

- (id)_initWithOptions:(id)options
{
  v16[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = RMMediaSession;
  v5 = [(RMMediaSession *)&v14 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("RMMediaSessionQueue", v6);
    v8 = [[RMRelativeMotionManager alloc] initWithQueue:v7];
    [(RMMediaSession *)v5 setManager:v8];

    if (optionsCopy)
    {
      v15 = *MEMORY[0x277CC1DB8];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(optionsCopy, "clientMode")}];
      v16[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      manager = [(RMMediaSession *)v5 manager];
      [manager setAudioListenerPoseOptions:v10];

      -[RMMediaSession setClientMode:](v5, "setClientMode:", [optionsCopy clientMode]);
    }

    [(RMMediaSession *)v5 startMonitoringAXHeadTrackingSetting];
    [(RMMediaSession *)v5 setSessionStartTimestamp:0.0];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  [(RMMediaSession *)self stopMonitoringAXHeadTrackingSetting];
  v3.receiver = self;
  v3.super_class = RMMediaSession;
  [(RMMediaSession *)&v3 dealloc];
}

- (BOOL)_start
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isAXHeadTrackingSettingEnabled = [(RMMediaSession *)selfCopy isAXHeadTrackingSettingEnabled];
  if (onceToken_ConnectionClient_Default != -1)
  {
    [RMMediaSession _start];
  }

  v4 = logObject_ConnectionClient_Default;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67240448;
    v8[1] = [(RMMediaSession *)selfCopy clientMode];
    v9 = 1026;
    v10 = isAXHeadTrackingSettingEnabled;
    _os_log_impl(&dword_261A9A000, v4, OS_LOG_TYPE_DEFAULT, "[RMMediaSession] Starting session, clientMode: %{public}d, trackingEnabled: %{public}d", v8, 0xEu);
  }

  if (isAXHeadTrackingSettingEnabled)
  {
    manager = [(RMMediaSession *)selfCopy manager];
    [manager startReceivingAudioListenerPose];
  }

  [(RMMediaSession *)selfCopy setSessionStartedWithTracking:isAXHeadTrackingSettingEnabled];
  [(RMMediaSession *)selfCopy setSessionStartTimestamp:CFAbsoluteTimeGetCurrent()];
  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_stop
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(RMMediaSession *)selfCopy sessionStartTimestamp];
  if (v3 != 0.0)
  {
    if ([(RMMediaSession *)selfCopy sessionStartedWithTracking])
    {
      manager = [(RMMediaSession *)selfCopy manager];
      [manager stopReceivingAudioListenerPose];

      [(RMMediaSession *)selfCopy setSessionStartedWithTracking:0];
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(RMMediaSession *)selfCopy sessionStartTimestamp];
      v8 = 3221225472;
      v7 = MEMORY[0x277D85DD0];
      v9 = __23__RMMediaSession__stop__block_invoke;
      v10 = &unk_279AF51A0;
      v12 = Current - v6;
      v11 = selfCopy;
      AnalyticsSendEventLazy();
    }

    [(RMMediaSession *)selfCopy setSessionStartTimestamp:0.0, v7, v8, v9, v10, v11, *&v12];
  }

  objc_sync_exit(selfCopy);
}

id __23__RMMediaSession__stop__block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v11[0] = MEMORY[0x277CBEC28];
  v10[0] = @"trackingEnabled";
  v10[1] = @"sessionDuration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v11[1] = v2;
  v10[2] = @"trackingClientMode";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "clientMode")}];
  v11[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  if (onceToken_ConnectionClient_Default != -1)
  {
    __23__RMMediaSession__stop__block_invoke_cold_1();
  }

  v5 = logObject_ConnectionClient_Default;
  if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_INFO))
  {
    v8 = 138477827;
    v9 = v4;
    _os_log_impl(&dword_261A9A000, v5, OS_LOG_TYPE_INFO, "[RMMediaSession] Sending analytics:\n%{private}@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_resetTrackingForAllClients
{
  if (onceToken_ConnectionClient_Default != -1)
  {
    [RMMediaSession _start];
  }

  v3 = logObject_ConnectionClient_Default;
  if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261A9A000, v3, OS_LOG_TYPE_DEFAULT, "[RMMediaSession] Resetting tracking for all clients", v6, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  manager = [(RMMediaSession *)selfCopy manager];
  [manager resetAudioListenerPoseTrackingForAllClients];

  objc_sync_exit(selfCopy);
}

- (int64_t)_currentAudioListenerPose:(id *)pose timestamp:(double *)timestamp
{
  manager = [(RMMediaSession *)self manager];
  v8 = [manager getCurrentAudioListenerPose:pose timestamp:timestamp];

  if ([(RMMediaSession *)self sessionStartedWithTracking])
  {
    return v8;
  }

  else
  {
    return 4;
  }
}

- (int64_t)_currentAudioListenerPose:(id *)pose
{
  v11 = 0;
  v5 = objc_autoreleasePoolPush();
  manager = [(RMMediaSession *)self manager];
  v7 = [manager getCurrentAudioListenerPoseWithError:&v11];

  objc_autoreleasePoolPop(v5);
  v8 = v7;
  *pose = v7;
  if ([(RMMediaSession *)self sessionStartedWithTracking])
  {
    v9 = v11;
  }

  else
  {
    v9 = 4;
    v11 = 4;
  }

  return v9;
}

- (BOOL)isAXHeadTrackingSettingEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _AXSSpatialAudioHeadTracking();
  if (onceToken_ConnectionClient_Default != -1)
  {
    [RMMediaSession _start];
  }

  v4 = logObject_ConnectionClient_Default;
  if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67240192;
    v9[1] = v3;
    _os_log_impl(&dword_261A9A000, v4, OS_LOG_TYPE_DEFAULT, "[RMMediaSession] _AXSSpatialAudioHeadTracking: %{public}d", v9, 8u);
  }

  clientMode = [(RMMediaSession *)self clientMode];
  v6 = 1;
  if (clientMode != 1)
  {
    v6 = 2;
  }

  result = (v6 & v3) != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startMonitoringAXHeadTrackingSetting
{
  axNotificationCenter = [(RMMediaSession *)self axNotificationCenter];
  v4 = *MEMORY[0x277D81C20];

  CFNotificationCenterAddObserver(axNotificationCenter, self, axHeadTrackingSettingChanged, v4, 0, 0);
}

- (void)stopMonitoringAXHeadTrackingSetting
{
  axNotificationCenter = [(RMMediaSession *)self axNotificationCenter];
  v4 = *MEMORY[0x277D81C20];

  CFNotificationCenterRemoveObserver(axNotificationCenter, self, v4, 0);
}

- (void)axHeadTrackingSettingChanged
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(RMMediaSession *)selfCopy sessionStartTimestamp];
  if (v3 != 0.0)
  {
    sessionStartedWithTracking = [(RMMediaSession *)selfCopy sessionStartedWithTracking];
    if (sessionStartedWithTracking != [(RMMediaSession *)selfCopy isAXHeadTrackingSettingEnabled])
    {
      if (onceToken_ConnectionClient_Default != -1)
      {
        [RMMediaSession _start];
      }

      v5 = logObject_ConnectionClient_Default;
      if (os_log_type_enabled(logObject_ConnectionClient_Default, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_261A9A000, v5, OS_LOG_TYPE_DEFAULT, "[RMMediaSession] AX head tracking setting has changed, restarting session", v6, 2u);
      }

      [(RMMediaSession *)selfCopy _stop];
      [(RMMediaSession *)selfCopy _start];
    }
  }

  objc_sync_exit(selfCopy);
}

@end