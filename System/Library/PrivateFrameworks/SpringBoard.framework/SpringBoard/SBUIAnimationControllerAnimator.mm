@interface SBUIAnimationControllerAnimator
- (SBUIAnimationController)animationController;
- (SBUIAnimationControllerAnimator)init;
- (SBUIAnimationControllerAnimator)initWithAnimationController:(id)controller;
- (double)transitionDuration:(id)duration;
- (id)transitionAnimationFactory:(id)factory;
- (void)animateTransition:(id)transition;
@end

@implementation SBUIAnimationControllerAnimator

- (SBUIAnimationController)animationController
{
  WeakRetained = objc_loadWeakRetained(&self->_animationController);

  return WeakRetained;
}

- (SBUIAnimationControllerAnimator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBUIAnimationControllerAnimator.m" lineNumber:18 description:@"use the designated initializer"];

  return [(SBUIAnimationControllerAnimator *)self initWithAnimationController:0];
}

- (SBUIAnimationControllerAnimator)initWithAnimationController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SBUIAnimationControllerAnimator;
  v5 = [(SBUIAnimationControllerAnimator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_animationController, controllerCopy);
  }

  return v6;
}

- (double)transitionDuration:(id)duration
{
  animationController = [(SBUIAnimationControllerAnimator *)self animationController];
  animationSettings = [animationController animationSettings];
  [animationSettings duration];
  v6 = v5;

  return v6;
}

- (id)transitionAnimationFactory:(id)factory
{
  v3 = MEMORY[0x277CF0D38];
  animationController = [(SBUIAnimationControllerAnimator *)self animationController];
  animationSettings = [animationController animationSettings];
  v6 = [v3 factoryWithSettings:animationSettings];

  return v6;
}

- (void)animateTransition:(id)transition
{
  animationController = [(SBUIAnimationControllerAnimator *)self animationController];
  [animationController _startAnimation];
}

@end