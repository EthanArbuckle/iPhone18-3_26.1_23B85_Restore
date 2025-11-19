@interface _SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion
- (SBHTodayViewController)todayViewController;
- (_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion)initWithTodayViewController:(id)a3 reason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion

- (_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion)initWithTodayViewController:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion;
  v8 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_todayViewController, v6);
    v10 = [v7 copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (void)dealloc
{
  if (![(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self isInvalidated])
  {
    v3 = SBLogCommon();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      NSLog(&cfstr_AssertionRelea.isa);
    }
  }

  [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self invalidate];
  v5.receiver = self;
  v5.super_class = _SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion;
  [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)&v5 dealloc];
}

- (void)invalidate
{
  if (![(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self isInvalidated])
  {
    [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self setInvalidated:1];
    v3 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self todayViewController];
    [v3 _removeIconImageViewControllerKeepStaticAssertion:self];
  }
}

- (id)succinctDescription
{
  v2 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self succinctDescriptionBuilder];
  v5 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self todayViewController];
  v6 = [v4 appendPointer:v5 withName:@"todayViewController"];

  v7 = [(_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion *)self reason];
  v8 = [v4 appendObject:v7 withName:@"reason"];

  v9 = [v4 appendBool:-[_SBHTodayViewControllerIconImageViewControllerKeepStaticAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return v4;
}

- (SBHTodayViewController)todayViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_todayViewController);

  return WeakRetained;
}

@end