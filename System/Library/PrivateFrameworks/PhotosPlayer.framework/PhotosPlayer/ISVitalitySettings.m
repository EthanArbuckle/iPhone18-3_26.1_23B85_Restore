@interface ISVitalitySettings
+ (ISVitalitySettings)sharedInstance;
+ (id)settingsControllerModule;
- (double)endTimeOffset;
- (double)maxVitalityDelay;
- (double)maximumDelayBeforePlayback;
- (double)minimumPhotoTransitionDuration;
- (double)minimumVisibilityFactor;
- (double)playbackRate;
- (double)postDuration;
- (double)preDuration;
- (int64_t)behavior;
- (void)setDefaultValues;
@end

@implementation ISVitalitySettings

- (double)maxVitalityDelay
{
  v2 = [(ISVitalitySettings *)self _defaultSettings];
  [v2 maxVitalityDelay];
  v4 = v3;

  return v4;
}

- (double)maximumDelayBeforePlayback
{
  v2 = [(ISVitalitySettings *)self _defaultSettings];
  [v2 maximumDelayBeforePlayback];
  v4 = v3;

  return v4;
}

- (double)minimumVisibilityFactor
{
  v2 = [(ISVitalitySettings *)self _defaultSettings];
  [v2 minimumVisibilityFactor];
  v4 = v3;

  return v4;
}

- (double)endTimeOffset
{
  v2 = [(ISVitalitySettings *)self _defaultSettings];
  [v2 endTimeOffset];
  v4 = v3;

  return v4;
}

- (double)playbackRate
{
  v2 = [(ISVitalitySettings *)self _defaultSettings];
  [v2 playbackRate];
  v4 = v3;

  return v4;
}

- (double)minimumPhotoTransitionDuration
{
  v2 = [(ISVitalitySettings *)self _defaultSettings];
  [v2 minimumPhotoTransitionDuration];
  v4 = v3;

  return v4;
}

- (double)postDuration
{
  if ([(ISVitalitySettings *)self useLegacyBehavior])
  {
    return 1.5;
  }

  v4 = [(ISVitalitySettings *)self _defaultSettings];
  [v4 postDuration];
  v6 = v5;

  return v6;
}

- (double)preDuration
{
  if ([(ISVitalitySettings *)self useLegacyBehavior])
  {
    return 1.5;
  }

  v4 = [(ISVitalitySettings *)self _defaultSettings];
  [v4 preDuration];
  v6 = v5;

  return v6;
}

- (int64_t)behavior
{
  if ([(ISVitalitySettings *)self useLegacyBehavior])
  {
    return 0;
  }

  v4 = [(ISVitalitySettings *)self _defaultSettings];
  v5 = [v4 behavior];

  return v5;
}

- (void)setDefaultValues
{
  v7.receiver = self;
  v7.super_class = ISVitalitySettings;
  [(PTSettings *)&v7 setDefaultValues];
  [(ISVitalitySettings *)self setUseLegacyBehavior:0];
  [(ISVitalitySettings *)self setShouldPreroll:1];
  [(ISVitalitySettings *)self setVitalityTransitionScoreMinimumValueForPlayback:0.0];
  v3 = [(ISVitalitySettings *)self oneUpSettings];
  [v3 setMinimumVisibilityFactor:0.05];
  v4 = [(ISVitalitySettings *)self shareViewSettings];
  [v4 setMinimumVisibilityFactor:0.7];
  v5 = [(ISVitalitySettings *)self activityViewSettings];
  [v5 setPreDuration:0.35];
  [v5 setMinimumVisibilityFactor:0.7];
  v6 = [(ISVitalitySettings *)self orbPreviewSettings];
  [v6 setPreDuration:0.65];
  [v6 setPlaybackRate:1.0];
}

+ (id)settingsControllerModule
{
  v30[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = [MEMORY[0x277D432A0] rowWithTitle:@"Use Legacy Behavior" valueKeyPath:@"useLegacyBehavior"];
  v30[0] = v3;
  v4 = [MEMORY[0x277D432A0] rowWithTitle:@"Preroll" valueKeyPath:@"shouldPreroll"];
  v30[1] = v4;
  v5 = [MEMORY[0x277D43298] rowWithTitle:@"Min Vitality Score" valueKeyPath:@"vitalityTransitionScoreMinimumValueForPlayback"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v30[2] = v6;
  v7 = [MEMORY[0x277D432A0] rowWithTitle:@"Preroll" valueKeyPath:@"shouldPreroll"];
  v30[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  v9 = [v2 sectionWithRows:v8];

  v10 = MEMORY[0x277D43218];
  v11 = [MEMORY[0x277D431E0] rowWithTitle:@"One Up" childSettingsKeyPath:@"oneUpSettings"];
  v29[0] = v11;
  v12 = [MEMORY[0x277D431E0] rowWithTitle:@"Share View" childSettingsKeyPath:@"shareViewSettings"];
  v29[1] = v12;
  v13 = [MEMORY[0x277D431E0] rowWithTitle:@"Activity View" childSettingsKeyPath:@"activityViewSettings"];
  v29[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v15 = [v10 sectionWithRows:v14 title:@"Specific Settings" conditionFormat:@"useLegacyBehavior == 0"];

  v16 = MEMORY[0x277D43218];
  v17 = MEMORY[0x277D431A8];
  v18 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v19 = [v17 rowWithTitle:@"Restore Defaults" action:v18];
  v28 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v21 = [v16 sectionWithRows:v20];

  v22 = MEMORY[0x277D43218];
  v27[0] = v9;
  v27[1] = v15;
  v27[2] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v24 = [v22 moduleWithTitle:@"Vitality" contents:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (ISVitalitySettings)sharedInstance
{
  v2 = +[ISRootSettings sharedInstance];
  v3 = [v2 vitalitySettings];

  return v3;
}

@end