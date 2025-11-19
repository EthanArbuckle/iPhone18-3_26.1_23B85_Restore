@interface SBUIAnimationControllerAnimator
- (SBUIAnimationController)animationController;
- (SBUIAnimationControllerAnimator)init;
- (SBUIAnimationControllerAnimator)initWithAnimationController:(id)a3;
- (double)transitionDuration:(id)a3;
- (id)transitionAnimationFactory:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation SBUIAnimationControllerAnimator

- (SBUIAnimationController)animationController
{
  WeakRetained = objc_loadWeakRetained(&self->_animationController);

  return WeakRetained;
}

- (SBUIAnimationControllerAnimator)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBUIAnimationControllerAnimator.m" lineNumber:18 description:@"use the designated initializer"];

  return [(SBUIAnimationControllerAnimator *)self initWithAnimationController:0];
}

- (SBUIAnimationControllerAnimator)initWithAnimationController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBUIAnimationControllerAnimator;
  v5 = [(SBUIAnimationControllerAnimator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_animationController, v4);
  }

  return v6;
}

- (double)transitionDuration:(id)a3
{
  v3 = [(SBUIAnimationControllerAnimator *)self animationController];
  v4 = [v3 animationSettings];
  [v4 duration];
  v6 = v5;

  return v6;
}

- (id)transitionAnimationFactory:(id)a3
{
  v3 = MEMORY[0x277CF0D38];
  v4 = [(SBUIAnimationControllerAnimator *)self animationController];
  v5 = [v4 animationSettings];
  v6 = [v3 factoryWithSettings:v5];

  return v6;
}

- (void)animateTransition:(id)a3
{
  v3 = [(SBUIAnimationControllerAnimator *)self animationController];
  [v3 _startAnimation];
}

@end