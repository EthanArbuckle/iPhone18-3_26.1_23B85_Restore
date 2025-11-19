@interface SPUISearchBarClientSceneSettings
- (double)headerHeight;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SPUISearchBarClientSceneSettings

- (double)headerHeight
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:1000];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SPUISearchBarMutableClientSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end