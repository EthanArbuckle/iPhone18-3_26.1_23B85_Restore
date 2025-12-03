@interface SBFluidSwitcherAnimationController
- (SBFluidSwitcherAnimationController)initWithWorkspaceTransitionRequest:(id)request animationSettings:(id)settings animationBlock:(id)block;
- (void)animationControllerDidFinishAnimation:(id)animation;
@end

@implementation SBFluidSwitcherAnimationController

- (SBFluidSwitcherAnimationController)initWithWorkspaceTransitionRequest:(id)request animationSettings:(id)settings animationBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherAnimationController;
  v5 = [(SBUIBlockAnimationController *)&v8 initWithWorkspaceTransitionRequest:request animationSettings:settings animationBlock:block];
  v6 = v5;
  if (v5)
  {
    [(SBUIAnimationController *)v5 addObserver:v5];
  }

  return v6;
}

- (void)animationControllerDidFinishAnimation:(id)animation
{
  animationCopy = animation;
  if (animationCopy == self)
  {
    animationCompletion = self->_animationCompletion;
    if (animationCompletion)
    {
      v7 = animationCopy;
      animationCompletion[2](animationCompletion, [(SBFluidSwitcherAnimationController *)animationCopy isInterrupted]^ 1);
      v6 = self->_animationCompletion;
      self->_animationCompletion = 0;

      animationCopy = v7;
    }
  }
}

@end