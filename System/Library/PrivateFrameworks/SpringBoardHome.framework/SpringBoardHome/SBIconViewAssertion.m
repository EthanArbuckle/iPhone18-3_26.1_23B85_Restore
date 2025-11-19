@interface SBIconViewAssertion
- (SBIconViewAssertion)initWithAssertionType:(int64_t)a3 iconView:(id)a4 extraInfo:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconViewAssertion

- (SBIconViewAssertion)initWithAssertionType:(int64_t)a3 iconView:(id)a4 extraInfo:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SBIconViewAssertion;
  v11 = [(SBIconViewAssertion *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_assertionType = a3;
    objc_storeStrong(&v11->_iconView, a4);
    v13 = [v10 copy];
    extraInfo = v12->_extraInfo;
    v12->_extraInfo = v13;
  }

  return v12;
}

- (void)dealloc
{
  if (![(SBIconViewAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_Sbiconviewasse.isa);
    [(SBIconViewAssertion *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = SBIconViewAssertion;
  [(SBIconViewAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  if (![(SBIconViewAssertion *)self isInvalidated])
  {
    v3 = [(SBIconViewAssertion *)self iconView];
    [v3 removeAssertion:self];

    [(SBIconViewAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBIconViewAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconViewAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBIconViewAssertion *)self succinctDescriptionBuilder];
  v5 = [v4 appendInteger:-[SBIconViewAssertion assertionType](self withName:{"assertionType"), @"assertionType"}];
  v6 = [(SBIconViewAssertion *)self extraInfo];
  v7 = [v4 appendObject:v6 withName:@"extraInfo"];

  v8 = [(SBIconViewAssertion *)self iconView];
  v9 = [v4 appendPointer:v8 withName:@"iconView"];

  return v4;
}

@end