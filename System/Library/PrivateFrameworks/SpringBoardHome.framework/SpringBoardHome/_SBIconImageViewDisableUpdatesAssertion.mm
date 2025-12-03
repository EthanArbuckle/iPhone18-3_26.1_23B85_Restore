@interface _SBIconImageViewDisableUpdatesAssertion
- (SBIconImageView)iconImageView;
- (_SBIconImageViewDisableUpdatesAssertion)initWithIconImageView:(id)view reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBIconImageViewDisableUpdatesAssertion

- (_SBIconImageViewDisableUpdatesAssertion)initWithIconImageView:(id)view reason:(id)reason
{
  viewCopy = view;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = _SBIconImageViewDisableUpdatesAssertion;
  v8 = [(_SBIconImageViewDisableUpdatesAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_iconImageView, viewCopy);
    v10 = [reasonCopy copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (void)invalidate
{
  if (![(_SBIconImageViewDisableUpdatesAssertion *)self isInvalidated])
  {
    [(_SBIconImageViewDisableUpdatesAssertion *)self setInvalidated:1];
    iconImageView = [(_SBIconImageViewDisableUpdatesAssertion *)self iconImageView];
    [iconImageView invalidateImageUpdatesAssertion:self];
  }
}

- (void)dealloc
{
  if (![(_SBIconImageViewDisableUpdatesAssertion *)self isInvalidated])
  {
    NSLog(&cfstr_Sbiconimagevie_1.isa);
  }

  [(_SBIconImageViewDisableUpdatesAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _SBIconImageViewDisableUpdatesAssertion;
  [(_SBIconImageViewDisableUpdatesAssertion *)&v3 dealloc];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBIconImageViewDisableUpdatesAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBIconImageViewDisableUpdatesAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBIconImageViewDisableUpdatesAssertion *)self succinctDescriptionBuilder];
  iconImageView = [(_SBIconImageViewDisableUpdatesAssertion *)self iconImageView];
  v6 = [succinctDescriptionBuilder appendPointer:iconImageView withName:@"iconImageView"];

  reason = [(_SBIconImageViewDisableUpdatesAssertion *)self reason];
  v8 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  v9 = [succinctDescriptionBuilder appendBool:-[_SBIconImageViewDisableUpdatesAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return succinctDescriptionBuilder;
}

- (SBIconImageView)iconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconImageView);

  return WeakRetained;
}

@end