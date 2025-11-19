@interface TUISeparatedFlickVariantCell
- (TUISeparatedFlickVariantCell)initWithFrame:(CGRect)a3 string:(id)a4 annotation:(id)a5 traits:(id)a6;
- (UIEdgeInsets)backgroundInsets;
- (UIEdgeInsets)labelInsets;
- (UIView)touchesForwardingView;
- (double)backgroundCornerRadius;
- (void)transitionToHighlighted:(BOOL)a3;
@end

@implementation TUISeparatedFlickVariantCell

- (UIView)touchesForwardingView
{
  WeakRetained = objc_loadWeakRetained(&self->_touchesForwardingView);

  return WeakRetained;
}

- (void)transitionToHighlighted:(BOOL)a3
{
  v3 = 0.2;
  v4[1] = 3221225472;
  v4[0] = MEMORY[0x1E69E9820];
  v4[2] = __56__TUISeparatedFlickVariantCell_transitionToHighlighted___block_invoke;
  v4[3] = &unk_1E72D85B8;
  if (a3)
  {
    v3 = 0.05;
  }

  v4[4] = self;
  v5 = a3;
  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v4 options:&__block_literal_global animations:v3 completion:0.0];
}

void __56__TUISeparatedFlickVariantCell_transitionToHighlighted___block_invoke(uint64_t a1)
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

- (double)backgroundCornerRadius
{
  v2 = [(TUIVariantCell *)self backgroundView];
  [v2 frame];
  v3 = CGRectGetHeight(v5) * 0.5;

  return v3;
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

- (TUISeparatedFlickVariantCell)initWithFrame:(CGRect)a3 string:(id)a4 annotation:(id)a5 traits:(id)a6
{
  v7.receiver = self;
  v7.super_class = TUISeparatedFlickVariantCell;
  return [(TUIVariantCell *)&v7 initWithFrame:a4 string:0 annotation:a6 traits:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end