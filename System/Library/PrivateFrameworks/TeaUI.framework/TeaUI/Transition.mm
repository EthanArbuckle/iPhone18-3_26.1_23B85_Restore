@interface Transition
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)interactionControllerForDismissal:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation Transition

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = Transition.animationController(forPresented:presenting:source:)();

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = Transition.animationController(forDismissed:)();

  return v6;
}

- (id)interactionControllerForDismissal:(id)a3
{
  v3 = Transition.interactionControllerForDismissal(using:)();

  return v3;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  Transition.presentationController(forPresented:presenting:source:)(v12, v8, a4, v10);
  v14 = v13;

  return v14;
}

@end