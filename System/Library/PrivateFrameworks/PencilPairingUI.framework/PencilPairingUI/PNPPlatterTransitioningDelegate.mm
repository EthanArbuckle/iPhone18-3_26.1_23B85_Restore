@interface PNPPlatterTransitioningDelegate
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation PNPPlatterTransitioningDelegate

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = objc_alloc_init(PNPPlatterAnimator);
  [(PNPPlatterAnimator *)v5 setIsPresenting:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = objc_alloc_init(PNPPlatterAnimator);
  [(PNPPlatterAnimator *)v3 setIsPresenting:0];

  return v3;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[PNPPlatterPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

@end