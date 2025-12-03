@interface SPUISearchBarSceneSettings
- (BOOL)animated;
- (double)scrollProgress;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SPUISearchBarSceneSettings

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

- (BOOL)animated
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings BOOLForSetting:1002];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SPUIMutableSearchBarSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end