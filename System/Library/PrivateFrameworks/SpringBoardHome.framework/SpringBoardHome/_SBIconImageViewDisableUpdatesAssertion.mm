@interface _SBIconImageViewDisableUpdatesAssertion
- (SBIconImageView)iconImageView;
- (_SBIconImageViewDisableUpdatesAssertion)initWithIconImageView:(id)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBIconImageViewDisableUpdatesAssertion

- (_SBIconImageViewDisableUpdatesAssertion)initWithIconImageView:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _SBIconImageViewDisableUpdatesAssertion;
  v8 = [(_SBIconImageViewDisableUpdatesAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_iconImageView, v6);
    v10 = [v7 copy];
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
    v3 = [(_SBIconImageViewDisableUpdatesAssertion *)self iconImageView];
    [v3 invalidateImageUpdatesAssertion:self];
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
  v2 = [(_SBIconImageViewDisableUpdatesAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBIconImageViewDisableUpdatesAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBIconImageViewDisableUpdatesAssertion *)self succinctDescriptionBuilder];
  v5 = [(_SBIconImageViewDisableUpdatesAssertion *)self iconImageView];
  v6 = [v4 appendPointer:v5 withName:@"iconImageView"];

  v7 = [(_SBIconImageViewDisableUpdatesAssertion *)self reason];
  v8 = [v4 appendObject:v7 withName:@"reason"];

  v9 = [v4 appendBool:-[_SBIconImageViewDisableUpdatesAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return v4;
}

- (SBIconImageView)iconImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconImageView);

  return WeakRetained;
}

@end