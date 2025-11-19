@interface UIFloatingTabBarItemView
@end

@implementation UIFloatingTabBarItemView

void __49___UIFloatingTabBarItemView__createViewHierarchy__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _wantsBackground];
  v4 = [v2 backgroundView];

  [v4 setHidden:v3 ^ 1u];
}

void __49___UIFloatingTabBarItemView__createViewHierarchy__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _currentPlatformMetrics];
  [v3 selectionHighlightScale];
  v5 = v4;

  v6 = [v2 traitCollection];
  v7 = [v6 valueForNSIntegerTrait:objc_opt_class()];

  if (v7)
  {
    CGAffineTransformMakeScale(&v11, v5, v5);
  }

  else
  {
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v11.a = *MEMORY[0x1E695EFD0];
    *&v11.c = v8;
    *&v11.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v9 = [v2 backgroundView];
  v10 = v11;
  [v9 setTransform:&v10];
}

void __49___UIFloatingTabBarItemView__updateFontAndColors__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) imageView];
  [v3 setTintColor:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) titleLabel];
  [v5 setTextColor:v4];
}

@end