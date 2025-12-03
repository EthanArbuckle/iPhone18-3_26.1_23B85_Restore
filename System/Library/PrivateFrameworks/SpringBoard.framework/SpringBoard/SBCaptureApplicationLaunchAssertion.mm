@interface SBCaptureApplicationLaunchAssertion
- (SBCaptureApplicationLaunchAssertion)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier reason:(id)reason invalidationHandler:(id)handler;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)invalidate;
@end

@implementation SBCaptureApplicationLaunchAssertion

- (SBCaptureApplicationLaunchAssertion)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier reason:(id)reason invalidationHandler:(id)handler
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  reasonCopy = reason;
  handlerCopy = handler;
  v24.receiver = self;
  v24.super_class = SBCaptureApplicationLaunchAssertion;
  v14 = [(SBCaptureApplicationLaunchAssertion *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [bundleIdentifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v17;

    v19 = [reasonCopy copy];
    reason = v14->_reason;
    v14->_reason = v19;

    v21 = [handlerCopy copy];
    invalidationHandler = v14->_invalidationHandler;
    v14->_invalidationHandler = v21;
  }

  return v14;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBCaptureApplicationLaunchAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleIdentifier"];
  v6 = [v3 appendObject:self->_reason withName:@"reason"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBCaptureApplicationLaunchAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
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