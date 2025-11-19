@interface SBMutableLockScreenPluginPresentation
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBMutableLockScreenPluginPresentation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBLockScreenPluginPresentation);
  [(SBLockScreenPluginPresentation *)self suggestedContentInsets];
  [(SBLockScreenPluginPresentation *)v4 setSuggestedContentInsets:?];
  v5 = [(SBLockScreenPluginPresentation *)self legibilitySettings];
  [(SBLockScreenPluginPresentation *)v4 setLegibilitySettings:v5];

  return v4;
}

@end