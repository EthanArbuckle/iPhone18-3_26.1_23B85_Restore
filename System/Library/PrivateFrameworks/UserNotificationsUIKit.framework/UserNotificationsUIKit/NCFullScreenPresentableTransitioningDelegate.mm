@interface NCFullScreenPresentableTransitioningDelegate
- (id)animationControllerForDismissedController:(id)controller userInfo:(id)info;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController userInfo:(id)info;
@end

@implementation NCFullScreenPresentableTransitioningDelegate

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController userInfo:(id)info
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    v7 = controllerCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)animationControllerForDismissedController:(id)controller userInfo:(id)info
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    v5 = controllerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end