@interface UIViewControllerNullAnimationTransitionCoordinator
@end

@implementation UIViewControllerNullAnimationTransitionCoordinator

void __78___UIViewControllerNullAnimationTransitionCoordinator__runAlongsideAnimations__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void __79___UIViewControllerNullAnimationTransitionCoordinator__runAlongsideCompletions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

@end