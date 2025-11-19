@interface SBLockScreenPluginAppearanceContext
- (CGRect)presentationRegion;
- (SBLockScreenPluginAppearanceContext)initWithAppearance:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLockScreenPluginAppearanceContext

- (SBLockScreenPluginAppearanceContext)initWithAppearance:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBLockScreenPluginAppearanceContext;
  v5 = [(SBLockScreenPluginAppearanceContext *)&v9 init];
  if (v5)
  {
    -[SBLockScreenPluginAppearanceContext setHidden:](v5, "setHidden:", [v4 isHidden]);
    -[SBLockScreenPluginAppearanceContext setRestrictedCapabilities:](v5, "setRestrictedCapabilities:", [v4 restrictedCapabilities]);
    -[SBLockScreenPluginAppearanceContext setBackgroundStyle:](v5, "setBackgroundStyle:", [v4 backgroundStyle]);
    -[SBLockScreenPluginAppearanceContext setPresentationStyle:](v5, "setPresentationStyle:", [v4 presentationStyle]);
    -[SBLockScreenPluginAppearanceContext setNotificationBehavior:](v5, "setNotificationBehavior:", [v4 notificationBehavior]);
    v6 = [v4 legibilitySettings];
    [(SBLockScreenPluginAppearanceContext *)v5 setLegibilitySettings:v6];

    v7 = [v4 elementOverrides];
    [(SBLockScreenPluginAppearanceContext *)v5 setElementOverrides:v7];

    [v4 presentationRegion];
    [(SBLockScreenPluginAppearanceContext *)v5 setPresentationRegion:?];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBLockScreenPluginAppearanceContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLockScreenPluginAppearanceContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBLockScreenPluginAppearanceContext *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBLockScreenPluginAppearanceContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_27836AE50;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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

- (id)mutableCopyWithZone:(_NSZone *)a3
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