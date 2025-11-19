@interface TRAMutablePreferencesOrientation
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation TRAMutablePreferencesOrientation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TRAPreferencesOrientation allocWithZone:a3];

  return [(TRAPreferencesOrientation *)v4 initWithOrientationPreferences:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithOrientationPreferences:self];
}

@end