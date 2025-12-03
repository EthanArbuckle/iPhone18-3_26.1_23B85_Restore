@interface UIViewController(UIViewController_TraitsArbiterTemp)
- (void)setNeedsUpdateOfSupportedInterfaceOrientations;
@end

@implementation UIViewController(UIViewController_TraitsArbiterTemp)

- (void)setNeedsUpdateOfSupportedInterfaceOrientations
{
  view = [self view];
  window = [view window];

  v2 = objc_opt_class();
  _sbWindowScene = [window _sbWindowScene];
  v4 = SBSafeCast(v2, _sbWindowScene);

  if (window && v4)
  {
    _supportedInterfaceOrientationsForRootViewController = [window _supportedInterfaceOrientationsForRootViewController];
    delegate = [v4 delegate];
    [delegate _windowScene:v4 window:window didUpdateSupportedInterfaceOrientations:_supportedInterfaceOrientationsForRootViewController preferredOrientation:0];
  }
}

@end