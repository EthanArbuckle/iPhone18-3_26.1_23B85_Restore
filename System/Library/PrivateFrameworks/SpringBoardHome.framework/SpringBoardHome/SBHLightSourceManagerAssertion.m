@interface SBHLightSourceManagerAssertion
- (SBHLightSourceManager)lightSourceManager;
- (SBHLightSourceManagerAssertion)initWithLightSourceManager:(id)a3 type:(int64_t)a4 reason:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBHLightSourceManagerAssertion

- (SBHLightSourceManagerAssertion)initWithLightSourceManager:(id)a3 type:(int64_t)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = SBHLightSourceManagerAssertion;
  v10 = [(SBHLightSourceManagerAssertion *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_lightSourceManager, v8);
    v11->_type = a4;
    v12 = [v9 copy];
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
    v3 = [(SBHLightSourceManagerAssertion *)self lightSourceManager];
    [v3 invalidateAssertion:self];
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
  v2 = [(SBHLightSourceManagerAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHLightSourceManagerAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHLightSourceManagerAssertion *)self succinctDescriptionBuilder];
  v5 = [(SBHLightSourceManagerAssertion *)self lightSourceManager];
  v6 = [v4 appendPointer:v5 withName:@"lightSourceManager"];

  v7 = [v4 appendInteger:-[SBHLightSourceManagerAssertion type](self withName:{"type"), @"type"}];
  v8 = [(SBHLightSourceManagerAssertion *)self reason];
  v9 = [v4 appendObject:v8 withName:@"reason"];

  v10 = [v4 appendBool:-[SBHLightSourceManagerAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return v4;
}

- (SBHLightSourceManager)lightSourceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_lightSourceManager);

  return WeakRetained;
}

@end