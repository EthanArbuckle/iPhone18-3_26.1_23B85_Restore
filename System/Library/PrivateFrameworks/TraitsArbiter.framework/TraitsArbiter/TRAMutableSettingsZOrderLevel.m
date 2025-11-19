@interface TRAMutableSettingsZOrderLevel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation TRAMutableSettingsZOrderLevel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TRASettingsZOrderLevel allocWithZone:a3];

  return [(TRASettingsZOrderLevel *)v4 initWithZOrderLevelSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithZOrderLevelSettings:self];
}

@end