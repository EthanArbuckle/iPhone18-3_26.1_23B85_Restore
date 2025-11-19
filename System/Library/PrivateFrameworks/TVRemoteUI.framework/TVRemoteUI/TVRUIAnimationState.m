@interface TVRUIAnimationState
@end

@implementation TVRUIAnimationState

void __85___TVRUIAnimationState_viewControllersNoLongerAnimatingForDestinationAnimationState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isParticpantViewController:?] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

@end