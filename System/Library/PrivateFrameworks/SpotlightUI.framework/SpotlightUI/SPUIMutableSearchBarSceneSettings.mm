@interface SPUIMutableSearchBarSceneSettings
- (BOOL)animated;
- (double)scrollProgress;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAnimated:(BOOL)animated;
- (void)setScrollProgress:(double)progress;
@end

@implementation SPUIMutableSearchBarSceneSettings

- (void)setScrollProgress:(double)progress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:progress];
  [otherSettings setObject:v4 forSetting:1001];
}

- (double)scrollProgress
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1001];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (void)setAnimated:(BOOL)animated
{
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setFlag:BSSettingFlagIfYes() forSetting:1002];
}

- (BOOL)animated
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:1002];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPUISearchBarSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end