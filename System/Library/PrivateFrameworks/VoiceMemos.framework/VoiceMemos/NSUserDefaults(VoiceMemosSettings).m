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
  block[4] = a1;
  if (voiceMemosUserDefaults_onceToken != -1)
  {
    dispatch_once(&voiceMemosUserDefaults_onceToken, block);
  }

  v1 = voiceMemosUserDefaults_voiceMemosUserDefaults;

  return v1;
}

+ (uint64_t)_isRunningInVoiceMemos
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.VoiceMemos"];

  return v2;
}

- (uint64_t)rc_audioQuality
{
  v1 = [a1 objectForKey:@"RCVoiceMemosAudioQualityKey"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)rc_recentlyDeletedWindow
{
  v1 = [a1 objectForKey:@"RCVoiceMemosRecentlyDeletedWindowKey"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 30;
  }

  return v3;
}

- (uint64_t)rc_setRecentlyDeletedWindow:()VoiceMemosSettings
{
  [a1 setInteger:a3 forKey:@"RCVoiceMemosRecentlyDeletedWindowKey"];

  return [a1 settingsChangedPostNotification];
}

- (uint64_t)rc_setAudioQuality:()VoiceMemosSettings
{
  [a1 setInteger:a3 forKey:@"RCVoiceMemosAudioQualityKey"];

  return [a1 settingsChangedPostNotification];
}

- (uint64_t)rc_channelConfiguration
{
  v1 = [a1 objectForKey:@"RCVoiceMemosChannelConfigurationKey"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (uint64_t)rc_setChannelConfiguration:()VoiceMemosSettings
{
  [a1 setInteger:a3 forKey:@"RCVoiceMemosChannelConfigurationKey"];

  return [a1 settingsChangedPostNotification];
}

- (uint64_t)rc_useLocationBasedNaming
{
  v1 = [a1 objectForKey:@"RCVoiceMemosUseLocationBasedNaming"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (uint64_t)rc_setUseLocationBasedNaming:()VoiceMemosSettings
{
  [a1 setBool:a3 forKey:@"RCVoiceMemosUseLocationBasedNaming"];

  return [a1 settingsChangedPostNotification];
}

- (uint64_t)rc_useStereoRecording
{
  v1 = [a1 objectForKey:@"RCVoiceMemosStereoRecordingKey"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)rc_setUseStereoRecording:()VoiceMemosSettings
{
  [a1 setBool:a3 forKey:@"RCVoiceMemosStereoRecordingKey"];

  return [a1 settingsChangedPostNotification];
}

- (void)settingsChangedPostNotification
{
  v0 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v0 postNotificationName:@"RCVoiceMemosSettingsDidChangeNotification" object:0 userInfo:0 deliverImmediately:1];
}

@end