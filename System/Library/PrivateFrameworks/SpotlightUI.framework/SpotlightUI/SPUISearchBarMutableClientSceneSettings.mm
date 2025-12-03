@interface SPUISearchBarMutableClientSceneSettings
- (double)headerHeight;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setHeaderHeight:(double)height;
@end

@implementation SPUISearchBarMutableClientSceneSettings

- (void)setHeaderHeight:(double)height
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  [otherSettings setObject:v4 forSetting:1000];
}

- (double)headerHeight
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:1000];

  objc_opt_class();
  v4 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPUISearchBarClientSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end