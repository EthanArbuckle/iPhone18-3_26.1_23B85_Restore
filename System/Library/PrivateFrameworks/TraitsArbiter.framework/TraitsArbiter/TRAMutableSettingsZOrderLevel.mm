@interface TRAMutableSettingsZOrderLevel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TRAMutableSettingsZOrderLevel

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TRASettingsZOrderLevel allocWithZone:zone];

  return [(TRASettingsZOrderLevel *)v4 initWithZOrderLevelSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithZOrderLevelSettings:self];
}

@end