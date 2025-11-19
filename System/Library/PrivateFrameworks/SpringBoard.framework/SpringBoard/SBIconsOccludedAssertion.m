@interface SBIconsOccludedAssertion
- (SBIconsOccludedAssertion)initWithInvalidator:(id)a3 reason:(id)a4;
- (SBIconsOccludedAssertionInvalidating)invalidator;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconsOccludedAssertion

- (SBIconsOccludedAssertion)initWithInvalidator:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SBIconsOccludedAssertion;
  v8 = [(SBIconsOccludedAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_invalidator, v6);
    v10 = [v7 copy];
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
    v3 = [(SBIconsOccludedAssertion *)self invalidator];
    [v3 removeIconsOccludedAssertion:self];
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconsOccludedAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(SBIconsOccludedAssertion *)self reason];
  v6 = [v4 appendObject:v5 withName:@"reason"];

  v7 = [v4 appendBool:-[SBIconsOccludedAssertion isInvalidated](self withName:{"isInvalidated"), @"invalidated"}];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBIconsOccludedAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (SBIconsOccludedAssertionInvalidating)invalidator
{
  WeakRetained = objc_loadWeakRetained(&self->_invalidator);

  return WeakRetained;
}

@end