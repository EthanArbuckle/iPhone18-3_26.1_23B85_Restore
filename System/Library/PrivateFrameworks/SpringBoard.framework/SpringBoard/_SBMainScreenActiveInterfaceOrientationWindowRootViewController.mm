@interface _SBMainScreenActiveInterfaceOrientationWindowRootViewController
- (UIViewController)contentViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)setSupportedInterfaceOrientations:(unint64_t)orientations;
@end

@implementation _SBMainScreenActiveInterfaceOrientationWindowRootViewController

- (void)setSupportedInterfaceOrientations:(unint64_t)orientations
{
  if (self->_supportedInterfaceOrientations != orientations)
  {
    self->_supportedInterfaceOrientations = orientations;
    [(UIViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  contentViewController = [(_SBMainScreenActiveInterfaceOrientationWindowRootViewController *)self contentViewController];
  if (contentViewController && (-[_SBMainScreenActiveInterfaceOrientationWindowRootViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v4 window], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "_roleHint"), v6 = objc_claimAutoreleasedReturnValue(), v7 = SBTraitsArbiterOrientationActuationEnabledForRole(v6), v6, v5, v4, v7))
  {
    supportedInterfaceOrientations = [contentViewController supportedInterfaceOrientations];
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