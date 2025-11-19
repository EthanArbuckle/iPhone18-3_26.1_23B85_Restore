@interface PFPlaybackSettingsDefaults
+ (PFPlaybackSettingsDefaults)shared;
- (BOOL)enhanceDialogueEnabledGlobalValue;
- (PFPlaybackSettingsDefaults)init;
- (float)playbackRateGlobalValue;
- (void)setEnhanceDialogueEnabledGlobalValue:(BOOL)a3;
- (void)setPlaybackRateGlobalValue:(float)a3;
@end

@implementation PFPlaybackSettingsDefaults

+ (PFPlaybackSettingsDefaults)shared
{
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB1990;

  return v3;
}

- (float)playbackRateGlobalValue
{
  v2 = self;
  v3 = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();

  return v3;
}

- (void)setPlaybackRateGlobalValue:(float)a3
{
  v4 = self;
  PlaybackSettingsDefaults.playbackRateGlobalValue.setter(a3);
}

- (BOOL)enhanceDialogueEnabledGlobalValue
{
  v2 = self;
  v3 = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter();

  return v3 & 1;
}

- (void)setEnhanceDialogueEnabledGlobalValue:(BOOL)a3
{
  v4 = self;
  PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.setter(a3);
}

- (PFPlaybackSettingsDefaults)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PFPlaybackSettingsDefaults *)&v3 init];
}

@end