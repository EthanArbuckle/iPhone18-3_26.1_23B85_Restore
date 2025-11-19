@interface UIFocusAnimationCoordinatorManager
@end

@implementation UIFocusAnimationCoordinatorManager

void __59___UIFocusAnimationCoordinatorManager_activeCoordinatorMap__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v1 = _MergedGlobals_1085;
  _MergedGlobals_1085 = v0;
}

uint64_t __72___UIFocusAnimationCoordinatorManager_didUpdateFocusInContext_fromItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeFocusAnimation];
  [*(a1 + 32) _prepareForFocusAnimation:1];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v4 = WeakRetained, v5 = *(a1 + 40), v6 = objc_loadWeakRetained((a1 + 48)), LODWORD(v5) = [v5 containsObject:v6], v6, v4, v5))
  {
    [*(a1 + 32) _animateFocusAnimation:1];
    v7 = *(a1 + 40);
    v8 = objc_loadWeakRetained((a1 + 48));
    [v7 removeObject:v8];
  }

  else
  {
    [*(a1 + 32) _cancelFocusAnimation:1];
  }

  v9 = *(a1 + 32);

  return [v9 _prepareForFocusAnimation:v2];
}

@end