@interface SPUISearchBarSceneSettings
- (BOOL)animated;
- (double)scrollProgress;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SPUISearchBarSceneSettings

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

- (BOOL)animated
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 BOOLForSetting:1002];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SPUIMutableSearchBarSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end