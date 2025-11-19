@interface SBCaptureApplicationLaunchAssertion
- (SBCaptureApplicationLaunchAssertion)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 reason:(id)a5 invalidationHandler:(id)a6;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)invalidate;
@end

@implementation SBCaptureApplicationLaunchAssertion

- (SBCaptureApplicationLaunchAssertion)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 reason:(id)a5 invalidationHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = SBCaptureApplicationLaunchAssertion;
  v14 = [(SBCaptureApplicationLaunchAssertion *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v17;

    v19 = [v12 copy];
    reason = v14->_reason;
    v14->_reason = v19;

    v21 = [v13 copy];
    invalidationHandler = v14->_invalidationHandler;
    v14->_invalidationHandler = v21;
  }

  return v14;
}

- (id)succinctDescription
{
  v2 = [(SBCaptureApplicationLaunchAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleIdentifier"];
  v6 = [v3 appendObject:self->_reason withName:@"reason"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBCaptureApplicationLaunchAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)invalidate
{
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, self);
    v4 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

@end