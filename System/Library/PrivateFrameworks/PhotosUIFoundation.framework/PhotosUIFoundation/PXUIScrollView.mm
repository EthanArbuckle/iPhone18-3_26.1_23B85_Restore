@interface PXUIScrollView
@end

@implementation PXUIScrollView

void __48___PXUIScrollView_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 px_cancelScrollGesture];
  }
}

uint64_t __68___PXUIScrollView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isFocusFastScrolling];
  v3 = *(a1 + 32);

  return [v3 setIsFocusFastScrolling:v2];
}

uint64_t __37___PXUIScrollView_hitTest_withEvent___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 _outermostLayer];
  [v3 zPosition];
  if (v4 == 0.0)
  {
    v5 = [v16 layer];
    [v5 zPosition];
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  v9 = v16;
  if (v7 > *(*(*(a1 + 48) + 8) + 24))
  {
    v8 = [v16 isUserInteractionEnabled];
    v9 = v16;
    if (v8)
    {
      [v16 convertPoint:*(a1 + 32) fromView:{*(a1 + 64), *(a1 + 72)}];
      v11 = v10;
      v13 = v12;
      v8 = [v16 pointInside:*(a1 + 40) withEvent:?];
      v9 = v16;
      if (v8)
      {
        v14 = [v16 hitTest:*(a1 + 40) withEvent:{v11, v13}];
        if (v14)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v14);
          *(*(*(a1 + 48) + 8) + 24) = v7;
        }

        v9 = v16;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](v8, v9);
}

@end