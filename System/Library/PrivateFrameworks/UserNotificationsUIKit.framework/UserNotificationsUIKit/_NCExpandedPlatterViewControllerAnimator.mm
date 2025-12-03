@interface _NCExpandedPlatterViewControllerAnimator
- (void)animateTransition:(id)transition;
@end

@implementation _NCExpandedPlatterViewControllerAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62___NCExpandedPlatterViewControllerAnimator_animateTransition___block_invoke;
  aBlock[3] = &unk_27836F6A8;
  v4 = transitionCopy;
  v14 = v4;
  v5 = _Block_copy(aBlock);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62___NCExpandedPlatterViewControllerAnimator_animateTransition___block_invoke_2;
  v11 = &unk_27836F980;
  v6 = v4;
  v12 = v6;
  v7 = _Block_copy(&v8);
  if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
  {
    if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
    {
      [MEMORY[0x277D75D18] _animateByRetargetingAnimations:v5 completion:v7];
    }

    else
    {
      [MEMORY[0x277D75D18] _animateUsingSpringInteractive:0 animations:v5 completion:v7];
    }
  }

  else
  {
    v5[2](v5);
    v7[2](v7, 1, 0);
  }
}

@end