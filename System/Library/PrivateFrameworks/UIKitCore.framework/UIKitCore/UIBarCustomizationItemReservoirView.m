@interface UIBarCustomizationItemReservoirView
@end

@implementation UIBarCustomizationItemReservoirView

void __54___UIBarCustomizationItemReservoirView_initWithItems___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 _minimumLineSpacing];
  v3 = v2;
  v4 = [v5 flowLayout];
  [v4 setMinimumLineSpacing:v3];

  [v5 invalidateLayoutAndForceUpdate:0];
}

void __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke(uint64_t a1)
{
  if (_UISolariumEnabled())
  {
    if (*(a1 + 40))
    {
      v2 = 0.0;
    }

    else
    {
      v2 = 10.0;
    }

    v5 = [*(a1 + 32) containerView];
    v3 = [v5 layer];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:v2];
    [v3 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

uint64_t __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke_3;
  v2[3] = &unk_1E70F35E0;
  v3 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  return [UIView _modifyAnimationsByDecomposingGeometricTypes:1 animations:v2];
}

void __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&v18.a = *MEMORY[0x1E695EFD0];
    v14 = *&v18.a;
    *&v18.c = v13;
    *&v18.tx = *(MEMORY[0x1E695EFD0] + 32);
    v12 = *&v18.tx;
    [v2 setTransform:&v18];
    v3 = [*(a1 + 32) containerView];
    *&v18.a = v14;
    *&v18.c = v13;
    *&v18.tx = v12;
    [v3 setTransform:&v18];

    [*(a1 + 32) _popoverCornerRadius];
    v5 = v4;
  }

  else
  {
    CGAffineTransformMakeScale(&v17, 0.6, 0.6);
    v6 = *(a1 + 32);
    v18 = v17;
    [v6 setTransform:&v18];
    CGAffineTransformMakeScale(&v16, 0.1, 0.2);
    v7 = [*(a1 + 32) containerView];
    v18 = v16;
    [v7 setTransform:&v18];

    v5 = *MEMORY[0x1E6979E40];
  }

  v8 = [*(a1 + 32) containerView];
  [v8 _setContinuousCornerRadius:v5];

  [*(a1 + 32) layoutIfNeeded];
  v9 = [*(a1 + 32) containerView];
  v10 = v9;
  if (v9)
  {
    [v9 transform];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  v11 = [*(a1 + 32) shadowView];
  v18 = v15;
  [v11 setTransform:&v18];
}

void __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke_4(uint64_t a1)
{
  v2 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.3];
  [UIView _animateUsingSpringBehavior:v2 tracking:0 animations:*(a1 + 32) completion:0];
}

void __61___UIBarCustomizationItemReservoirView_setExpanded_animated___block_invoke_5(uint64_t a1)
{
  v2 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.2];
  [UIView _animateUsingSpringBehavior:v2 tracking:0 animations:*(a1 + 32) completion:0];
}

@end