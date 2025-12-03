@interface SBMutableLockScreenPluginPresentation
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBMutableLockScreenPluginPresentation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SBLockScreenPluginPresentation);
  [(SBLockScreenPluginPresentation *)self suggestedContentInsets];
  [(SBLockScreenPluginPresentation *)v4 setSuggestedContentInsets:?];
  legibilitySettings = [(SBLockScreenPluginPresentation *)self legibilitySettings];
  [(SBLockScreenPluginPresentation *)v4 setLegibilitySettings:legibilitySettings];

  return v4;
}

@end