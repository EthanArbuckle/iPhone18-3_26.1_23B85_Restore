@interface TRAMutablePreferencesZOrderLevel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TRAMutablePreferencesZOrderLevel

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TRAPreferencesZOrderLevel allocWithZone:zone];

  return [(TRAPreferencesZOrderLevel *)v4 initWithZOrderLevelPreferences:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithZOrderLevelPreferences:self];
}

@end