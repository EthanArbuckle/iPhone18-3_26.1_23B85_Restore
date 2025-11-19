@interface UISceneHostingTraitCollectionPropagationHostComponent
@end

@implementation UISceneHostingTraitCollectionPropagationHostComponent

void __77___UISceneHostingTraitCollectionPropagationHostComponent_setTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTraitCollection:v3];
  v5 = [*(a1 + 32) _tintColor];
  [v4 setTintColor:v5];
}

@end