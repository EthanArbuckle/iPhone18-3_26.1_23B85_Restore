@interface SPUIMutableSearchBarSceneSettings
- (BOOL)animated;
- (double)scrollProgress;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAnimated:(BOOL)a3;
- (void)setScrollProgress:(double)a3;
@end

@implementation SPUIMutableSearchBarSceneSettings

- (void)setScrollProgress:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:1001];
}

- (double)scrollProgress
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1001];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (void)setAnimated:(BOOL)a3
{
  v3 = [(FBSSettings *)self otherSettings];
  [v3 setFlag:BSSettingFlagIfYes() forSetting:1002];
}

- (BOOL)animated
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:1002];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPUISearchBarSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end