@interface SBLegacyLockScreenEnvironment
- (SBControlCenterPresenting)controlCenterPresenter;
- (SBLegacyLockScreenEnvironment)initWithLockScreenViewController:(id)controller;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBLegacyLockScreenEnvironment

- (SBLegacyLockScreenEnvironment)initWithLockScreenViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBLegacyLockScreenEnvironment;
  v6 = [(SBLegacyLockScreenEnvironment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockScreenViewController, controller);
  }

  return v7;
}

- (SBControlCenterPresenting)controlCenterPresenter
{
  _sbWindowScene = [(UIViewController *)self->_lockScreenViewController _sbWindowScene];
  controlCenterController = [_sbWindowScene controlCenterController];

  return controlCenterController;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBLegacyLockScreenEnvironment *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_lockScreenViewController withName:@"lockScreenViewController"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBLegacyLockScreenEnvironment *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end