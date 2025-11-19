@interface UISceneTransitioningHostComponent
@end

@implementation UISceneTransitioningHostComponent

void __47___UISceneTransitioningHostComponent_setScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F016C5D0])
  {
    v2 = v3;
    [v2 setAllowedAsMorphTransitionSource:_UIApplicationProcessIsSpringBoard()];
  }
}

@end