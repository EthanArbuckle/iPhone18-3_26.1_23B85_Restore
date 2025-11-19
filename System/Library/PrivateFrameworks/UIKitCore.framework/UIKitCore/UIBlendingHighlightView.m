@interface UIBlendingHighlightView
@end

@implementation UIBlendingHighlightView

void __42___UIBlendingHighlightView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _currentScreenScale];
  UIRoundToViewScale(*(a1 + 32));
  v6 = v5;
  v7 = [v4 layer];

  [v7 setBorderWidth:v6];
}

void __44___UIBlendingHighlightView_setCornerRadius___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  [v3 setCornerRadius:*(a1 + 32)];
}

void __53___UIBlendingHighlightView_setRoundedCornerPosition___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  [v3 setMaskedCorners:*(a1 + 32)];
}

@end