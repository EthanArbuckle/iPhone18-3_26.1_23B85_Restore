@interface NSUserDefaults(VoiceMemosSettings)
+ (id)voiceMemosUserDefaults;
+ (uint64_t)_isRunningInVoiceMemos;
- (uint64_t)rc_audioQuality;
- (uint64_t)rc_channelConfiguration;
- (uint64_t)rc_recentlyDeletedWindow;
- (uint64_t)rc_setAudioQuality:()VoiceMemosSettings;
- (uint64_t)rc_setChannelConfiguration:()VoiceMemosSettings;
- (uint64_t)rc_setRecentlyDeletedWindow:()VoiceMemosSettings;
- (uint64_t)rc_setUseLocationBasedNaming:()VoiceMemosSettings;
- (uint64_t)rc_setUseStereoRecording:()VoiceMemosSettings;
- (uint64_t)rc_useLocationBasedNaming;
- (uint64_t)rc_useStereoRecording;
- (void)settingsChangedPostNotification;
@end

@implementation NSUserDefaults(VoiceMemosSettings)

+ (id)voiceMemosUserDefaults
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NSUserDefaults_VoiceMemosSettings__voiceMemosUserDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (voiceMemosUserDefaults_onceToken != -1)
  {
    dispatch_once(&voiceMemosUserDefaults_onceToken, block);
  }

  v1 = voiceMemosUserDefaults_voiceMemosUserDefaults;

  return v1;
}

+ (uint64_t)_isRunningInVoiceMemos
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v2 = [bundleIdentifier isEqualToString:@"com.apple.VoiceMemos"];

  return v2;
}

- (uint64_t)rc_audioQuality
{
  v1 = [self objectForKey:@"RCVoiceMemosAudioQualityKey"];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (uint64_t)rc_recentlyDeletedWindow
{
  v1 = [self objectForKey:@"RCVoiceMemosRecentlyDeletedWindowKey"];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 30;
  }

  return integerValue;
}

- (uint64_t)rc_setRecentlyDeletedWindow:()VoiceMemosSettings
{
  [self setInteger:a3 forKey:@"RCVoiceMemosRecentlyDeletedWindowKey"];

  return [self settingsChangedPostNotification];
}

- (uint64_t)rc_setAudioQuality:()VoiceMemosSettings
{
  [self setInteger:a3 forKey:@"RCVoiceMemosAudioQualityKey"];

  return [self settingsChangedPostNotification];
}

- (uint64_t)rc_channelConfiguration
{
  v1 = [self objectForKey:@"RCVoiceMemosChannelConfigurationKey"];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 2;
  }

  return integerValue;
}

- (uint64_t)rc_setChannelConfiguration:()VoiceMemosSettings
{
  [self setInteger:a3 forKey:@"RCVoiceMemosChannelConfigurationKey"];

  return [self settingsChangedPostNotification];
}

- (uint64_t)rc_useLocationBasedNaming
{
  v1 = [self objectForKey:@"RCVoiceMemosUseLocationBasedNaming"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (uint64_t)rc_setUseLocationBasedNaming:()VoiceMemosSettings
{
  [self setBool:a3 forKey:@"RCVoiceMemosUseLocationBasedNaming"];

  return [self settingsChangedPostNotification];
}

- (uint64_t)rc_useStereoRecording
{
  v1 = [self objectForKey:@"RCVoiceMemosStereoRecordingKey"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)rc_setUseStereoRecording:()VoiceMemosSettings
{
  [self setBool:a3 forKey:@"RCVoiceMemosStereoRecordingKey"];

  return [self settingsChangedPostNotification];
}

- (void)settingsChangedPostNotification
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"RCVoiceMemosSettingsDidChangeNotification" object:0 userInfo:0 deliverImmediately:1];
}

@end