@interface SBKeyboardHomeAffordanceAssertion
+ (id)assertionForGestureWindow:(id)a3;
- (SBKeyboardHomeAffordanceAssertion)initWithGestureWindow:(id)a3;
- (UIWindow)sourceWindow;
- (void)dealloc;
- (void)invalidate;
- (void)setAdditionalEdgeMargin:(double)a3;
@end

@implementation SBKeyboardHomeAffordanceAssertion

+ (id)assertionForGestureWindow:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithGestureWindow:v4];

  return v5;
}

- (SBKeyboardHomeAffordanceAssertion)initWithGestureWindow:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBKeyboardHomeAffordanceAssertion;
  v5 = [(SBKeyboardHomeAffordanceAssertion *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceWindow, v4);
    v7 = +[SBKeyboardHomeAffordanceController sharedInstance];
    [v7 registerAssertion:v6];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[SBKeyboardHomeAffordanceController sharedInstance];
  [v3 unregisterAssertion:self];

  v4.receiver = self;
  v4.super_class = SBKeyboardHomeAffordanceAssertion;
  [(SBKeyboardHomeAffordanceAssertion *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = +[SBKeyboardHomeAffordanceController sharedInstance];
  [v3 unregisterAssertion:self];
}

- (void)setAdditionalEdgeMargin:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_additionalEdgeMargin = a3;
    v5 = +[SBKeyboardHomeAffordanceController sharedInstance];
    [v5 _didChangeAdditionalEdgeMarginForAssertion:self];
  }
}

- (UIWindow)sourceWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceWindow);

  return WeakRetained;
}

@end