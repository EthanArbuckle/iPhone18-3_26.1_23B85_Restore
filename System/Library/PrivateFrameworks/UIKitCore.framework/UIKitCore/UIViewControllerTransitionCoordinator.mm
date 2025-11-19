@interface UIViewControllerTransitionCoordinator
@end

@implementation UIViewControllerTransitionCoordinator

void __130___UIViewControllerTransitionCoordinator__animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _systemAlongsideAnimations:1];
  }

  else
  {
    [v3 _alongsideAnimations:1];
  }
  v5 = ;
  v4 = _Block_copy(*(a1 + 40));
  [v5 addObject:v4];
}

void __130___UIViewControllerTransitionCoordinator__animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v3 + 16))(v3, WeakRetained);
}

@end