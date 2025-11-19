@interface TRAMutablePreferencesZOrderLevel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation TRAMutablePreferencesZOrderLevel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TRAPreferencesZOrderLevel allocWithZone:a3];

  return [(TRAPreferencesZOrderLevel *)v4 initWithZOrderLevelPreferences:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithZOrderLevelPreferences:self];
}

@end