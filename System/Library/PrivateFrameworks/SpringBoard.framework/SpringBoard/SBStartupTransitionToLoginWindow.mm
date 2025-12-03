@interface SBStartupTransitionToLoginWindow
- (id)suggestedLockAnimationForTransitionRequest:(id)request;
@end

@implementation SBStartupTransitionToLoginWindow

- (id)suggestedLockAnimationForTransitionRequest:(id)request
{
  requestCopy = request;
  context = [(SBBaseStartupTransition *)self context];
  isLogout = [context isLogout];

  if (isLogout)
  {
    v7 = [SBUIStartupToLoginWindowAnimationController alloc];
    context2 = [(SBBaseStartupTransition *)self context];
    overlay = [context2 overlay];
    v10 = [(SBUIStartupToLoginWindowAnimationController *)v7 initWithTransitionContextProvider:requestCopy overlay:overlay];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBStartupTransitionToLoginWindow;
    v10 = [(SBStartupTransitionToLockOut *)&v12 suggestedLockAnimationForTransitionRequest:requestCopy];
  }

  return v10;
}

@end