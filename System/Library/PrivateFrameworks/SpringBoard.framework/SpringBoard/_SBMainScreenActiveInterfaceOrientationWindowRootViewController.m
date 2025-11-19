@interface _SBMainScreenActiveInterfaceOrientationWindowRootViewController
- (UIViewController)contentViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)setSupportedInterfaceOrientations:(unint64_t)a3;
@end

@implementation _SBMainScreenActiveInterfaceOrientationWindowRootViewController

- (void)setSupportedInterfaceOrientations:(unint64_t)a3
{
  if (self->_supportedInterfaceOrientations != a3)
  {
    self->_supportedInterfaceOrientations = a3;
    [(UIViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(_SBMainScreenActiveInterfaceOrientationWindowRootViewController *)self contentViewController];
  if (v3 && (-[_SBMainScreenActiveInterfaceOrientationWindowRootViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 window], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "_roleHint"), v6 = objc_claimAutoreleasedReturnValue(), v7 = SBTraitsArbiterOrientationActuationEnabledForRole(v6), v6, v5, v4, v7))
  {
    supportedInterfaceOrientations = [v3 supportedInterfaceOrientations];
  }

  else
  {
    supportedInterfaceOrientations = self->_supportedInterfaceOrientations;
  }

  return supportedInterfaceOrientations;
}

- (UIViewController)contentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);

  return WeakRetained;
}

@end