@interface PFPlaybackSettingsDefaults
+ (PFPlaybackSettingsDefaults)shared;
- (BOOL)enhanceDialogueEnabledGlobalValue;
- (PFPlaybackSettingsDefaults)init;
- (float)playbackRateGlobalValue;
- (void)setEnhanceDialogueEnabledGlobalValue:(BOOL)value;
- (void)setPlaybackRateGlobalValue:(float)value;
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
  selfCopy = self;
  v3 = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();

  return v3;
}

- (void)setPlaybackRateGlobalValue:(float)value
{
  selfCopy = self;
  PlaybackSettingsDefaults.playbackRateGlobalValue.setter(value);
}

- (BOOL)enhanceDialogueEnabledGlobalValue
{
  selfCopy = self;
  v3 = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter();

  return v3 & 1;
}

- (void)setEnhanceDialogueEnabledGlobalValue:(BOOL)value
{
  selfCopy = self;
  PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.setter(value);
}

- (PFPlaybackSettingsDefaults)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PFPlaybackSettingsDefaults *)&v3 init];
}

@end