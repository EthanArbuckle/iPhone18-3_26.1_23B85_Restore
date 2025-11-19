@interface UIFloatingTabBarSelectionContainerView
@end

@implementation UIFloatingTabBarSelectionContainerView

void __57___UIFloatingTabBarSelectionContainerView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  v4 = [v3 valueForNSIntegerTrait:objc_opt_class()];

  v5 = [v2 selectionView];

  [v5 setHidden:v4 != 1];
}

void __57___UIFloatingTabBarSelectionContainerView_initWithFrame___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _shouldScalePlatter];
  v5 = [v3 liquidLensView];

  if (v5)
  {
    v6 = [v3 liquidLensView];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57___UIFloatingTabBarSelectionContainerView_initWithFrame___block_invoke_3;
    v15[3] = &unk_1E70F3590;
    v16 = *(a1 + 32);
    [v6 setLifted:v4 animated:1 alongsideAnimations:v15 completion:0];

    v7 = v16;
  }

  else
  {
    v8 = [v3 traitCollection];
    v9 = _UIFloatingTabBarGetPlatformMetrics([v8 userInterfaceIdiom]);
    [v9 selectionHighlightScale];
    v11 = v10;

    if (v4)
    {
      CGAffineTransformMakeScale(&v14, v11, v11);
    }

    else
    {
      v12 = *(MEMORY[0x1E695EFD0] + 16);
      *&v14.a = *MEMORY[0x1E695EFD0];
      *&v14.c = v12;
      *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    v7 = [v3 selectionView];
    v13 = v14;
    [v7 setTransform:&v13];
  }
}

@end