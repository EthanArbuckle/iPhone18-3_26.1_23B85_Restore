@interface SBFluidSwitcherAnimationController
- (SBFluidSwitcherAnimationController)initWithWorkspaceTransitionRequest:(id)a3 animationSettings:(id)a4 animationBlock:(id)a5;
- (void)animationControllerDidFinishAnimation:(id)a3;
@end

@implementation SBFluidSwitcherAnimationController

- (SBFluidSwitcherAnimationController)initWithWorkspaceTransitionRequest:(id)a3 animationSettings:(id)a4 animationBlock:(id)a5
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherAnimationController;
  v5 = [(SBUIBlockAnimationController *)&v8 initWithWorkspaceTransitionRequest:a3 animationSettings:a4 animationBlock:a5];
  v6 = v5;
  if (v5)
  {
    [(SBUIAnimationController *)v5 addObserver:v5];
  }

  return v6;
}

- (void)animationControllerDidFinishAnimation:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    animationCompletion = self->_animationCompletion;
    if (animationCompletion)
    {
      v7 = v4;
      animationCompletion[2](animationCompletion, [(SBFluidSwitcherAnimationController *)v4 isInterrupted]^ 1);
      v6 = self->_animationCompletion;
      self->_animationCompletion = 0;

      v4 = v7;
    }
  }
}

@end