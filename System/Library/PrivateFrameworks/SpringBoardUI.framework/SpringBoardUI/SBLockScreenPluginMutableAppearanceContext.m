@interface SBLockScreenPluginMutableAppearanceContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBLockScreenPluginMutableAppearanceContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBLockScreenPluginAppearanceContext alloc];

  return [(SBLockScreenPluginAppearanceContext *)v4 initWithAppearance:self];
}

@end