@interface MSDTestPreferences
+ (id)sharedInstance;
- (BOOL)bailOnStashedStagingRestoreFailure;
- (BOOL)disableParallelProcessing;
- (BOOL)disassociateWiFiBeforeCheckIn;
- (BOOL)enableAIModelAutoUpdate;
- (BOOL)enablePeerDemoService;
- (BOOL)fakeActivationDemoBit;
- (BOOL)mockForBetterTogetherDemo;
- (BOOL)pauseContentUpdateOnError;
- (BOOL)skipMarkAsNotDemo;
- (BOOL)skipVerifyHashBeforeStaging;
- (double)appUsagePollingInterval;
- (double)caLogsUploadInterval;
- (double)cachingHubRetryInterval;
- (id)LSMeasurementsFilePath;
- (id)contentSyncTimeoutInterval;
- (id)demoUnitServerURL;
- (id)getValueFromTestPreferencesForKey:(id)a3;
- (id)mockAccountSettingsFile;
- (id)mockOSUpdateRequestFile;
- (id)mockPeerProtocolVersion;
- (id)pressDemoTestTarget;
- (id)pressDemoXCTestProductsPath;
- (id)screenSaverIdleDelay;
- (int64_t)concurrentDownloadOperation;
- (int64_t)concurrentDownloadRequest;
- (int64_t)concurrentSession;
- (int64_t)deviceActivationFlag;
- (int64_t)findMyHubRetryDelay;
- (int64_t)storePickerUIMode;
- (unsigned)rebootDelayForStaging;
- (unsigned)systemAppPollingInterval;
- (unsigned)systemAppTimeoutInterval;
- (unsigned)timeShowingFatalError;
@end

@implementation MSDTestPreferences

+ (id)sharedInstance
{
  if (qword_1E0B8 != -1)
  {
    sub_C528();
  }

  v3 = qword_1E0B0;

  return v3;
}

- (BOOL)fakeActivationDemoBit
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"FakeActivationDemoBit"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)demoUnitServerURL
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"DemoUnitServerURL"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [NSURL URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)findMyHubRetryDelay
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"FMHRetryDelay"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)rebootDelayForStaging
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"RebootDelayForStaging"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)timeShowingFatalError
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"TimeShowingFatalError"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)disableParallelProcessing
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"DisableParallelProcessing"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)pauseContentUpdateOnError
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"PauseContentUpdateOnError"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)bailOnStashedStagingRestoreFailure
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"BailOnStashedStagingRestoreFailure"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)concurrentDownloadRequest
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ConcurrentDownloadRequest"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)concurrentDownloadOperation
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ConcurrentDownloadOperation"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)concurrentSession
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ConcurrentSession"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)cachingHubRetryInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"CachingHubRetryInterval"];
  v3 = 0.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 integerValue];
    }
  }

  return v3;
}

- (double)caLogsUploadInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"CALogsUploadInterval"];
  v3 = 0.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 integerValue];
    }
  }

  return v3;
}

- (double)appUsagePollingInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"AppUsagePollingInterval"];
  v3 = 0.0;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 integerValue];
    }
  }

  return v3;
}

- (unsigned)systemAppTimeoutInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"SystemAppTimeoutInterval"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)systemAppPollingInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"SystemAppPollingInterval"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 unsignedIntValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)deviceActivationFlag
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"DeviceActivationFlag"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (BOOL)mockForBetterTogetherDemo
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"MockForBetterTogetherDemo"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mockAccountSettingsFile
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"MockAccountSettingsFile"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mockOSUpdateRequestFile
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"MockOSUpdateRequestFile"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)screenSaverIdleDelay
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ScreenSaverIdleDelay"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mockPeerProtocolVersion
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"MockPeerProtocolVersion"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)enableAIModelAutoUpdate
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"EnableAIModelAutoUpdate"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)contentSyncTimeoutInterval
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"ContentSyncTimeoutInterval"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)storePickerUIMode
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"StorePickerUIMode"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = &dword_0 + 2;
  }

  return v3;
}

- (BOOL)skipMarkAsNotDemo
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipMarkAsNotDemo"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)enablePeerDemoService
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"EnablePeerDemoService"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pressDemoXCTestProductsPath
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"PressDemoXCTestProductsPath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pressDemoTestTarget
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"PressDemoTestTarget"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)LSMeasurementsFilePath
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"LSMeasurementsFilePath"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)disassociateWiFiBeforeCheckIn
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"DisassociateWiFiBeforeCheckIn"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)skipVerifyHashBeforeStaging
{
  v2 = [(MSDTestPreferences *)self getValueFromTestPreferencesForKey:@"SkipVerifyHashBeforeStaging"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getValueFromTestPreferencesForKey:(id)a3
{
  v3 = a3;
  if (!CFPreferencesSynchronize(@"com.apple.MobileStoreDemo.test", kCFPreferencesAnyUser, kCFPreferencesCurrentHost))
  {
    v4 = defaultLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_C53C(v4);
    }
  }

  v5 = CFPreferencesCopyValue(v3, @"com.apple.MobileStoreDemo.test", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);

  return v5;
}

@end