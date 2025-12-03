@interface SBLockScreenPluginMutableAppearanceContext
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBLockScreenPluginMutableAppearanceContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBLockScreenPluginAppearanceContext alloc];

  return [(SBLockScreenPluginAppearanceContext *)v4 initWithAppearance:self];
}

@end