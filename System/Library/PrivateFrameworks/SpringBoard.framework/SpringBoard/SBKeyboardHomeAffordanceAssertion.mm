@interface SBKeyboardHomeAffordanceAssertion
+ (id)assertionForGestureWindow:(id)window;
- (SBKeyboardHomeAffordanceAssertion)initWithGestureWindow:(id)window;
- (UIWindow)sourceWindow;
- (void)dealloc;
- (void)invalidate;
- (void)setAdditionalEdgeMargin:(double)margin;
@end

@implementation SBKeyboardHomeAffordanceAssertion

+ (id)assertionForGestureWindow:(id)window
{
  windowCopy = window;
  v5 = [[self alloc] initWithGestureWindow:windowCopy];

  return v5;
}

- (SBKeyboardHomeAffordanceAssertion)initWithGestureWindow:(id)window
{
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = SBKeyboardHomeAffordanceAssertion;
  v5 = [(SBKeyboardHomeAffordanceAssertion *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceWindow, windowCopy);
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

- (void)setAdditionalEdgeMargin:(double)margin
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_additionalEdgeMargin = margin;
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