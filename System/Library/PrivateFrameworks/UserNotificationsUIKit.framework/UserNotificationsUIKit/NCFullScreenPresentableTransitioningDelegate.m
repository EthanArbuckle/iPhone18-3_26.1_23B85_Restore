@interface NCFullScreenPresentableTransitioningDelegate
- (id)animationControllerForDismissedController:(id)a3 userInfo:(id)a4;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6;
@end

@implementation NCFullScreenPresentableTransitioningDelegate

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)animationControllerForDismissedController:(id)a3 userInfo:(id)a4
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end