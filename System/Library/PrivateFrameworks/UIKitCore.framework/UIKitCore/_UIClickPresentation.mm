@interface _UIClickPresentation
- (BOOL)_presentsSelf;
- (_UIClickPresentation)initWithPresentedViewController:(id)controller presentationController:(id)presentationController;
@end

@implementation _UIClickPresentation

- (_UIClickPresentation)initWithPresentedViewController:(id)controller presentationController:(id)presentationController
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  v12.receiver = self;
  v12.super_class = _UIClickPresentation;
  v9 = [(_UIClickPresentation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewController, controller);
    objc_storeStrong(&v10->_presentationController, presentationController);
  }

  return v10;
}

- (BOOL)_presentsSelf
{
  if (![UIApp _isSpringBoard])
  {
    return 0;
  }

  viewController = [(_UIClickPresentation *)self viewController];
  presentationController = [(_UIClickPresentation *)self presentationController];
  presentingViewController = [presentationController presentingViewController];
  v6 = viewController == presentingViewController;

  return v6;
}

@end