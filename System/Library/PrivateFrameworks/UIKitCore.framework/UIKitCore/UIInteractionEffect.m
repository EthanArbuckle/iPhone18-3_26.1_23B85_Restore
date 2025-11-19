@interface UIInteractionEffect
@end

@implementation UIInteractionEffect

void __59___UIInteractionEffect_deprecated__prepareAnimatorIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFromTransformer:v3];
}

@end