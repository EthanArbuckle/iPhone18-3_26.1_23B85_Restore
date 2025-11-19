@interface TUISeparatedVariantCell
- (CGSize)intrinsicContentSize;
- (TUISeparatedVariantCell)initWithFrame:(CGRect)a3 string:(id)a4 annotation:(id)a5 traits:(id)a6;
- (UIEdgeInsets)annotationLabelInsets;
- (UIEdgeInsets)backgroundInsets;
- (UIEdgeInsets)labelInsets;
- (UIView)touchesForwardingView;
- (double)backgroundCornerRadius;
- (void)transitionToHighlighted:(BOOL)a3;
@end

@implementation TUISeparatedVariantCell

- (UIView)touchesForwardingView
{
  WeakRetained = objc_loadWeakRetained(&self->_touchesForwardingView);

  return WeakRetained;
}

- (void)transitionToHighlighted:(BOOL)a3
{
  if (a3)
  {
    v5 = 0.05;
  }

  else
  {
    v5 = 0.2;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__TUISeparatedVariantCell_transitionToHighlighted___block_invoke;
  v8[3] = &unk_1E72D85B8;
  v8[4] = self;
  v9 = a3;
  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 options:&__block_literal_global_5988 animations:v5 completion:0.0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__TUISeparatedVariantCell_transitionToHighlighted___block_invoke_3;
  v6[3] = &unk_1E72D85B8;
  v6[4] = self;
  v7 = a3;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v6 options:&__block_literal_global_38 animations:v5 completion:0.0];
}

void __51__TUISeparatedVariantCell_transitionToHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.2;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) backgroundView];
  [v2 setAlpha:v1];
}

uint64_t __51__TUISeparatedVariantCell_transitionToHighlighted___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  }

  else
  {
    v2 = *(MEMORY[0x1E695EFD0] + 16);
    *&v6.a = *MEMORY[0x1E695EFD0];
    *&v6.c = v2;
    *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  v3 = *(a1 + 32);
  v5 = v6;
  return [v3 setTransform:&v5];
}

- (CGSize)intrinsicContentSize
{
  +[TUISeparatedVariantSelectorView minCellDimension];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)annotationLabelInsets
{
  v2 = 10.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = -10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)labelInsets
{
  v2 = 4.0;
  v3 = 4.0;
  v4 = 4.0;
  v5 = 4.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)backgroundInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)backgroundCornerRadius
{
  v2 = [(TUIVariantCell *)self backgroundView];
  [v2 frame];
  v3 = CGRectGetHeight(v5) * 0.5;

  return v3;
}

- (TUISeparatedVariantCell)initWithFrame:(CGRect)a3 string:(id)a4 annotation:(id)a5 traits:(id)a6
{
  v7.receiver = self;
  v7.super_class = TUISeparatedVariantCell;
  return [(TUIVariantCell *)&v7 initWithFrame:a4 string:a5 annotation:a6 traits:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end