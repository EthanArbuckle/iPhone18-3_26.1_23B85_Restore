@interface SBIconViewAssertion
- (SBIconViewAssertion)initWithAssertionType:(int64_t)type iconView:(id)view extraInfo:(id)info;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBIconViewAssertion

- (SBIconViewAssertion)initWithAssertionType:(int64_t)type iconView:(id)view extraInfo:(id)info
{
  viewCopy = view;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = SBIconViewAssertion;
  v11 = [(SBIconViewAssertion *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_assertionType = type;
    objc_storeStrong(&v11->_iconView, view);
    v13 = [infoCopy copy];
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
    iconView = [(SBIconViewAssertion *)self iconView];
    [iconView removeAssertion:self];

    [(SBIconViewAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconViewAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconViewAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBIconViewAssertion *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendInteger:-[SBIconViewAssertion assertionType](self withName:{"assertionType"), @"assertionType"}];
  extraInfo = [(SBIconViewAssertion *)self extraInfo];
  v7 = [succinctDescriptionBuilder appendObject:extraInfo withName:@"extraInfo"];

  iconView = [(SBIconViewAssertion *)self iconView];
  v9 = [succinctDescriptionBuilder appendPointer:iconView withName:@"iconView"];

  return succinctDescriptionBuilder;
}

@end