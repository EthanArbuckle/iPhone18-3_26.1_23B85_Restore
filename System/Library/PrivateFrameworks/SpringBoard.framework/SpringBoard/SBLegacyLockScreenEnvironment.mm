@interface SBLegacyLockScreenEnvironment
- (SBControlCenterPresenting)controlCenterPresenter;
- (SBLegacyLockScreenEnvironment)initWithLockScreenViewController:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLegacyLockScreenEnvironment

- (SBLegacyLockScreenEnvironment)initWithLockScreenViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBLegacyLockScreenEnvironment;
  v6 = [(SBLegacyLockScreenEnvironment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockScreenViewController, a3);
  }

  return v7;
}

- (SBControlCenterPresenting)controlCenterPresenter
{
  v2 = [(UIViewController *)self->_lockScreenViewController _sbWindowScene];
  v3 = [v2 controlCenterController];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBLegacyLockScreenEnvironment *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_lockScreenViewController withName:@"lockScreenViewController"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBLegacyLockScreenEnvironment *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end