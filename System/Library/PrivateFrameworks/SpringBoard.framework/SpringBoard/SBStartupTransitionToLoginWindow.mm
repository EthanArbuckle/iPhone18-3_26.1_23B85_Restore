@interface SBStartupTransitionToLoginWindow
- (id)suggestedLockAnimationForTransitionRequest:(id)a3;
@end

@implementation SBStartupTransitionToLoginWindow

- (id)suggestedLockAnimationForTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBBaseStartupTransition *)self context];
  v6 = [v5 isLogout];

  if (v6)
  {
    v7 = [SBUIStartupToLoginWindowAnimationController alloc];
    v8 = [(SBBaseStartupTransition *)self context];
    v9 = [v8 overlay];
    v10 = [(SBUIStartupToLoginWindowAnimationController *)v7 initWithTransitionContextProvider:v4 overlay:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBStartupTransitionToLoginWindow;
    v10 = [(SBStartupTransitionToLockOut *)&v12 suggestedLockAnimationForTransitionRequest:v4];
  }

  return v10;
}

@end