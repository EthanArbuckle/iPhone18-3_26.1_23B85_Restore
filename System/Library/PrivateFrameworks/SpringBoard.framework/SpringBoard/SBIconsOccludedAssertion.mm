@interface SBIconsOccludedAssertion
- (SBIconsOccludedAssertion)initWithInvalidator:(id)invalidator reason:(id)reason;
- (SBIconsOccludedAssertionInvalidating)invalidator;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconsOccludedAssertion

- (SBIconsOccludedAssertion)initWithInvalidator:(id)invalidator reason:(id)reason
{
  invalidatorCopy = invalidator;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = SBIconsOccludedAssertion;
  v8 = [(SBIconsOccludedAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_invalidator, invalidatorCopy);
    v10 = [reasonCopy copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v3 = SBLogIcon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBIconsOccludedAssertion dealloc];
    }
  }

  v4.receiver = self;
  v4.super_class = SBIconsOccludedAssertion;
  [(SBIconsOccludedAssertion *)&v4 dealloc];
}

- (void)invalidate
{
  if (![(SBIconsOccludedAssertion *)self isInvalidated])
  {
    [(SBIconsOccludedAssertion *)self setInvalidated:1];
    invalidator = [(SBIconsOccludedAssertion *)self invalidator];
    [invalidator removeIconsOccludedAssertion:self];
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconsOccludedAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  reason = [(SBIconsOccludedAssertion *)self reason];
  v6 = [v4 appendObject:reason withName:@"reason"];

  v7 = [v4 appendBool:-[SBIconsOccludedAssertion isInvalidated](self withName:{"isInvalidated"), @"invalidated"}];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconsOccludedAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (SBIconsOccludedAssertionInvalidating)invalidator
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidator);

  return WeakRetained;
}

@end