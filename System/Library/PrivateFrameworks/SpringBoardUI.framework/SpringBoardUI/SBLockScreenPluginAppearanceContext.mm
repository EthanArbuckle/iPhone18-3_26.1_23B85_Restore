@interface SBLockScreenPluginAppearanceContext
- (CGRect)presentationRegion;
- (SBLockScreenPluginAppearanceContext)initWithAppearance:(id)appearance;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenPluginAppearanceContext

- (SBLockScreenPluginAppearanceContext)initWithAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v9.receiver = self;
  v9.super_class = SBLockScreenPluginAppearanceContext;
  v5 = [(SBLockScreenPluginAppearanceContext *)&v9 init];
  if (v5)
  {
    -[SBLockScreenPluginAppearanceContext setHidden:](v5, "setHidden:", [appearanceCopy isHidden]);
    -[SBLockScreenPluginAppearanceContext setRestrictedCapabilities:](v5, "setRestrictedCapabilities:", [appearanceCopy restrictedCapabilities]);
    -[SBLockScreenPluginAppearanceContext setBackgroundStyle:](v5, "setBackgroundStyle:", [appearanceCopy backgroundStyle]);
    -[SBLockScreenPluginAppearanceContext setPresentationStyle:](v5, "setPresentationStyle:", [appearanceCopy presentationStyle]);
    -[SBLockScreenPluginAppearanceContext setNotificationBehavior:](v5, "setNotificationBehavior:", [appearanceCopy notificationBehavior]);
    legibilitySettings = [appearanceCopy legibilitySettings];
    [(SBLockScreenPluginAppearanceContext *)v5 setLegibilitySettings:legibilitySettings];

    elementOverrides = [appearanceCopy elementOverrides];
    [(SBLockScreenPluginAppearanceContext *)v5 setElementOverrides:elementOverrides];

    [appearanceCopy presentationRegion];
    [(SBLockScreenPluginAppearanceContext *)v5 setPresentationRegion:?];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBLockScreenPluginAppearanceContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[SBLockScreenPluginAppearanceContext isHidden](self withName:{"isHidden"), @"hidden"}];
  v5 = NSStringFromLockScreenPluginBackgroundStyle([(SBLockScreenPluginAppearanceContext *)self backgroundStyle]);
  v6 = [v3 appendObject:v5 withName:@"backgroundStyle" skipIfNil:1];

  v7 = NSStringFromLockScreenPluginPresentationStyle([(SBLockScreenPluginAppearanceContext *)self presentationStyle]);
  v8 = [v3 appendObject:v7 withName:@"presentationStyle" skipIfNil:1];

  v9 = NSStringFromLockScreenPluginNotificationBehavior([(SBLockScreenPluginAppearanceContext *)self notificationBehavior]);
  v10 = [v3 appendObject:v9 withName:@"notificationBehavior" skipIfNil:1];

  [(SBLockScreenPluginAppearanceContext *)self presentationRegion];
  v11 = NSStringFromCGRect(v15);
  v12 = [v3 appendObject:v11 withName:@"presentationRegion"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLockScreenPluginAppearanceContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBLockScreenPluginAppearanceContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBLockScreenPluginAppearanceContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_27836AE50;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __77__SBLockScreenPluginAppearanceContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromLockScreenCapabilities([*(a1 + 40) restrictedCapabilities]);
  [v2 appendString:v3 withName:@"restrictions" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) legibilitySettings];
  v6 = [v4 appendObject:v5 withName:@"legibilitySettings" skipIfNil:1];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) elementOverrides];
  [v7 appendArraySection:v8 withName:@"elementOverrides" skipIfEmpty:1];

  v9 = *(a1 + 32);
  [*(a1 + 40) presentationRegion];
  v11 = NSStringFromCGRect(v13);
  v10 = [v9 appendObject:v11 withName:@"presentationRegion"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBLockScreenPluginMutableAppearanceContext alloc];

  return [(SBLockScreenPluginAppearanceContext *)v4 initWithAppearance:self];
}

- (CGRect)presentationRegion
{
  x = self->presentationRegion.origin.x;
  y = self->presentationRegion.origin.y;
  width = self->presentationRegion.size.width;
  height = self->presentationRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end