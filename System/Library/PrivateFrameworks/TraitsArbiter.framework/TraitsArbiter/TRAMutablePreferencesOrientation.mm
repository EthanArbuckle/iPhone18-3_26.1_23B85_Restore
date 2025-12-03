@interface TRAMutablePreferencesOrientation
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TRAMutablePreferencesOrientation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TRAPreferencesOrientation allocWithZone:zone];

  return [(TRAPreferencesOrientation *)v4 initWithOrientationPreferences:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithOrientationPreferences:self];
}

@end