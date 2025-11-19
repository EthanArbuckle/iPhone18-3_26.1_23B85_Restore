@interface SCDAAssistantPreferences
+ (id)sharedPreferences;
+ (id)sharedPreferencesWithInstanceContext:(id)a3;
- (BOOL)disableMyriadBLEActivity;
- (BOOL)disableRecencyBoost;
- (BOOL)ignoreMyriadPlatformBias;
- (BOOL)myriadCoordinationEnabled;
- (BOOL)myriadCoordinationEnabledForAccessoryLogging;
- (BOOL)myriadDuckingEnabled;
- (BOOL)myriadServerHasProvisioned;
- (BOOL)myriadServerProvisioning;
- (BOOL)myriadShouldIgnoreAdjustedBoost;
- (SCDAAssistantPreferences)initWithInstanceContext:(id)a3;
- (double)myriadDeviceDelay;
- (double)myriadDeviceSlowdown;
- (double)myriadDeviceTrumpDelay;
- (double)myriadDeviceVTEndTimeDistanceThreshold;
- (double)myriadMaxNoOperationDelay;
- (double)myriadTestDeviceDelay;
- (double)recencyBoostDecayInterval;
- (double)recencyBoostInitialInterval;
- (float)myriadDeviceAdjust;
- (id)myriadDeviceGroup;
- (id)myriadLastWin;
- (id)myriadMonitorTimeOutInterval;
- (int)myriadConstantGoodness;
- (unsigned)myriadDeviceClass;
- (void)_preferencesDidChangeExternally;
- (void)setMyriadDeviceAdjust:(float)a3;
- (void)setMyriadDeviceDelay:(double)a3;
- (void)setMyriadDeviceSlowdown:(double)a3;
- (void)setMyriadDeviceTrumpDelay:(double)a3;
- (void)setMyriadDeviceVTEndTimeDistanceThreshold:(double)a3;
- (void)setMyriadLastWin;
- (void)setMyriadMaxNoOperationDelay:(double)a3;
- (void)setMyriadTestDeviceDelay:(double)a3;
@end

@implementation SCDAAssistantPreferences

- (BOOL)disableMyriadBLEActivity
{
  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  if (SCDAIsInternalInstall_isInternal != 1)
  {
    return 0;
  }

  v3 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Disable Myriad BLE Activity", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)myriadConstantGoodness
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Constant Goodness", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)myriadDeviceGroup
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Device Group", @"com.apple.assistant", self->_instanceContext);
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_1F562E288;
  }

  return v3;
}

- (double)myriadDeviceDelay
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Device Delay", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (BOOL)myriadCoordinationEnabled
{
  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  if (SCDAIsInternalInstall_isInternal != 1)
  {
    return 1;
  }

  v3 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Allow Myriad Coordination", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)myriadServerHasProvisioned
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Server Has Provisioned Myriad", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)myriadDeviceAdjust
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Device Adjust", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)myriadDeviceTrumpDelay
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Device Trump Delay", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.75;
  }

  return v5;
}

- (double)myriadDeviceVTEndTimeDistanceThreshold
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad VTEndtimeDistanceThreshold", @"com.apple.assistant", self->_instanceContext);
  v3 = 0.5;
  if (objc_opt_respondsToSelector())
  {
    [v2 doubleValue];
    v3 = v4;
  }

  return v3;
}

- (unsigned)myriadDeviceClass
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Device Class", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)recencyBoostDecayInterval
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Recency Boost Decay Interval", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 floatValue];
    v4 = v3;
  }

  else
  {
    v4 = 180.0;
  }

  return v4;
}

- (double)recencyBoostInitialInterval
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Recency Boost Initial Interval", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  v3 = 15.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 floatValue];
    v3 = v4;
  }

  return v3;
}

- (BOOL)disableRecencyBoost
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Disable Recency Boost", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMyriadMaxNoOperationDelay:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  _SCDAAssistantPreferencesSetValueForKeyWithContext(v4, @"Myriad Max No Op Delay", @"com.apple.assistant", self->_instanceContext);
}

- (double)myriadMaxNoOperationDelay
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Max No Op Delay", @"com.apple.assistant", self->_instanceContext);
  v3 = 0.005;
  if (objc_opt_respondsToSelector())
  {
    [v2 doubleValue];
    if (v4 != 0.0)
    {
      [v2 doubleValue];
      v3 = v5;
    }
  }

  return v3;
}

- (id)myriadMonitorTimeOutInterval
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Monitor Timeout Interval", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)ignoreMyriadPlatformBias
{
  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  if (SCDAIsInternalInstall_isInternal != 1)
  {
    return 0;
  }

  v3 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Ignore Platform Bias", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)myriadShouldIgnoreAdjustedBoost
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Ignore Adjusted Boost", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMyriadDeviceVTEndTimeDistanceThreshold:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  _SCDAAssistantPreferencesSetValueForKeyWithContext(v4, @"Myriad VTEndtimeDistanceThreshold", @"com.apple.assistant", self->_instanceContext);
}

- (void)setMyriadLastWin
{
  v3 = [MEMORY[0x1E695DF00] date];
  _SCDAAssistantPreferencesSetValueForKeyWithContext(v3, @"Myriad Last Win", @"com.apple.assistant", self->_instanceContext);
}

- (id)myriadLastWin
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Last Win", @"com.apple.assistant", self->_instanceContext);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF00] distantPast];
  }

  v4 = v3;

  return v4;
}

- (void)setMyriadDeviceTrumpDelay:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  _SCDAAssistantPreferencesSetValueForKeyWithContext(v4, @"Myriad Device Trump Delay", @"com.apple.assistant", self->_instanceContext);
}

- (void)setMyriadDeviceSlowdown:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  _SCDAAssistantPreferencesSetValueForKeyWithContext(v4, @"Myriad Device Slowdown", @"com.apple.assistant", self->_instanceContext);
}

- (double)myriadDeviceSlowdown
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Device Slowdown", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setMyriadTestDeviceDelay:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  _SCDAAssistantPreferencesSetValueForKeyWithContext(v4, @"Myriad Test Device Delay", @"com.apple.assistant", self->_instanceContext);
}

- (double)myriadTestDeviceDelay
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Myriad Test Device Delay", @"com.apple.assistant", self->_instanceContext);
  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  v3 = 0.0;
  v4 = SCDAIsInternalInstall_isInternal != 1 || v2 == 0;
  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v2 doubleValue];
    v3 = v5;
  }

  return v3;
}

- (void)setMyriadDeviceDelay:(double)a3
{
  *&a3 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:a3];
  _SCDAAssistantPreferencesSetValueForKeyWithContext(v4, @"Myriad Device Delay", @"com.apple.assistant", self->_instanceContext);
}

- (void)setMyriadDeviceAdjust:(float)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  _SCDAAssistantPreferencesSetValueForKeyWithContext(v4, @"Myriad Device Adjust", @"com.apple.assistant", self->_instanceContext);
}

- (BOOL)myriadServerProvisioning
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Server Provisions Myriad", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)myriadDuckingEnabled
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Allow Myriad Ducking", @"com.apple.assistant", self->_instanceContext);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)myriadCoordinationEnabledForAccessoryLogging
{
  v2 = _SCDAAssistantPreferencesValueForKeyWithContext(@"Allow Myriad Coordination", @"com.apple.assistant", 0);
  v3 = _SCDAAssistantPreferencesBoolFromValueWithDefault(v2, @"Allow Myriad Coordination", 1);

  return v3;
}

- (void)_preferencesDidChangeExternally
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    instanceContext = self->_instanceContext;
    v7 = 136315650;
    v8 = "[SCDAAssistantPreferences _preferencesDidChangeExternally]";
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = instanceContext;
    _os_log_debug_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEBUG, "%s %p %@", &v7, 0x20u);
  }

  CFPreferencesAppSynchronize(@"com.apple.assistant.support");
  CFPreferencesAppSynchronize(@"com.apple.assistant.backedup");
  CFPreferencesAppSynchronize(@"com.apple.assistant");
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"SCDAPreferencesDidChangeNotification" object:self];

  v5 = *MEMORY[0x1E69E9840];
}

- (SCDAAssistantPreferences)initWithInstanceContext:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SCDAAssistantPreferences;
  v5 = [(SCDAAssistantPreferences *)&v16 init];
  if (v5)
  {
    if (SCDALogInitIfNeeded_once != -1)
    {
      dispatch_once(&SCDALogInitIfNeeded_once, &__block_literal_global_498);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _SCDAAssistantPreferencesDidChangeCallback, @"kSCDAPreferencesDidChangeDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("navTokenQueue", v7);
    navTokenQueue = v5->_navTokenQueue;
    v5->_navTokenQueue = v8;

    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = [MEMORY[0x1E698D168] defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v10;

    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v15 = v5->_instanceContext;
      *buf = 136315650;
      v18 = "[SCDAAssistantPreferences initWithInstanceContext:]";
      v19 = 2048;
      v20 = v5;
      v21 = 2112;
      v22 = v15;
      _os_log_debug_impl(&dword_1DA758000, v12, OS_LOG_TYPE_DEBUG, "%s %p %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)sharedPreferences
{
  if (sharedPreferences_onceToken != -1)
  {
    dispatch_once(&sharedPreferences_onceToken, &__block_literal_global_770);
  }

  v3 = sharedPreferences_sSharedPreferences;

  return v3;
}

void __45__SCDAAssistantPreferences_sharedPreferences__block_invoke()
{
  v2 = [MEMORY[0x1E698D168] currentContext];
  v0 = [SCDAAssistantPreferences sharedPreferencesWithInstanceContext:v2];
  v1 = sharedPreferences_sSharedPreferences;
  sharedPreferences_sSharedPreferences = v0;
}

+ (id)sharedPreferencesWithInstanceContext:(id)a3
{
  v3 = a3;
  v4 = [[SCDAAssistantPreferences alloc] initWithInstanceContext:v3];

  return v4;
}

@end