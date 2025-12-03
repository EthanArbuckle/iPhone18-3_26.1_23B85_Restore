@interface SBHLightSourceManagerAssertion
- (SBHLightSourceManager)lightSourceManager;
- (SBHLightSourceManagerAssertion)initWithLightSourceManager:(id)manager type:(int64_t)type reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBHLightSourceManagerAssertion

- (SBHLightSourceManagerAssertion)initWithLightSourceManager:(id)manager type:(int64_t)type reason:(id)reason
{
  managerCopy = manager;
  reasonCopy = reason;
  v15.receiver = self;
  v15.super_class = SBHLightSourceManagerAssertion;
  v10 = [(SBHLightSourceManagerAssertion *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_lightSourceManager, managerCopy);
    v11->_type = type;
    v12 = [reasonCopy copy];
    reason = v11->_reason;
    v11->_reason = v12;
  }

  return v11;
}

- (void)invalidate
{
  if (![(SBHLightSourceManagerAssertion *)self isInvalidated])
  {
    [(SBHLightSourceManagerAssertion *)self setInvalidated:1];
    lightSourceManager = [(SBHLightSourceManagerAssertion *)self lightSourceManager];
    [lightSourceManager invalidateAssertion:self];
  }
}

- (void)dealloc
{
  if (![(SBHLightSourceManagerAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_Sbhlightsource.isa);
  }

  [(SBHLightSourceManagerAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBHLightSourceManagerAssertion;
  [(SBHLightSourceManagerAssertion *)&v3 dealloc];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHLightSourceManagerAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHLightSourceManagerAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHLightSourceManagerAssertion *)self succinctDescriptionBuilder];
  lightSourceManager = [(SBHLightSourceManagerAssertion *)self lightSourceManager];
  v6 = [succinctDescriptionBuilder appendPointer:lightSourceManager withName:@"lightSourceManager"];

  v7 = [succinctDescriptionBuilder appendInteger:-[SBHLightSourceManagerAssertion type](self withName:{"type"), @"type"}];
  reason = [(SBHLightSourceManagerAssertion *)self reason];
  v9 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  v10 = [succinctDescriptionBuilder appendBool:-[SBHLightSourceManagerAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return succinctDescriptionBuilder;
}

- (SBHLightSourceManager)lightSourceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_lightSourceManager);

  return WeakRetained;
}

@end