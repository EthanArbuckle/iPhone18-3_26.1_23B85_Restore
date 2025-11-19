@interface TUISeparatedVariantSelectorView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIEdgeInsets)stackLayoutMargins;
- (id)variantCellWithString:(id)a3 annotation:(id)a4;
- (id)widthConstraintsForVariantCell:(id)a3 previousCell:(id)a4;
- (int64_t)variantViewAlignment;
- (unint64_t)maxRows;
- (unint64_t)variantRowLimitForLayout;
- (void)layoutSubviews;
@end

@implementation TUISeparatedVariantSelectorView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TUIKeyPopupView *)self variantView];
  [(TUISeparatedVariantSelectorView *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(TUIKeyPopupView *)self variantView];
  LOBYTE(v8) = [v13 pointInside:v7 withEvent:{v10, v12}];

  return v8;
}

- (unint64_t)maxRows
{
  v3 = [(TUIKeyPopupView *)self associatedTree];
  if ([v3 variantType] == 4)
  {

    return 5;
  }

  v4 = [(TUIKeyPopupView *)self associatedTree];
  v5 = [v4 variantType];

  if (v5 == 7)
  {
    return 5;
  }

  v7.receiver = self;
  v7.super_class = TUISeparatedVariantSelectorView;
  return [(TUIKeyPopupView *)&v7 maxRows];
}

- (unint64_t)variantRowLimitForLayout
{
  v3 = [(TUIKeyPopupView *)self associatedTree];
  if ([v3 variantType] == 4)
  {

    return 10;
  }

  v4 = [(TUIKeyPopupView *)self associatedTree];
  v5 = [v4 variantType];

  if (v5 == 7)
  {
    return 10;
  }

  return 12;
}

- (int64_t)variantViewAlignment
{
  v3 = [(TUIKeyPopupView *)self associatedTree];
  if ([v3 variantType] == 4)
  {

    return 3;
  }

  v4 = [(TUIKeyPopupView *)self associatedTree];
  v5 = [v4 variantType];

  if (v5 == 7)
  {
    return 3;
  }

  return 1;
}

- (UIEdgeInsets)stackLayoutMargins
{
  v2 = 8.0;
  v3 = 8.0;
  v4 = 8.0;
  v5 = 8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)variantCellWithString:(id)a3 annotation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [TUISeparatedVariantCell alloc];
  v9 = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUISeparatedVariantCell *)v8 initWithFrame:v7 string:v6 annotation:v9 traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  v11 = [(TUIKeyPopupView *)self touchesForwardingView];
  v12 = [v11 superview];
  [(TUISeparatedVariantCell *)v10 setTouchesForwardingView:v12];

  return v10;
}

- (id)widthConstraintsForVariantCell:(id)a3 previousCell:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 widthAnchor];
  if (v5)
  {
    v7 = [v5 widthAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    [objc_opt_class() minCellDimension];
    v10 = [v6 constraintEqualToConstant:?];

    LODWORD(v11) = 1144766464;
    [v10 setPriority:v11];
    v13 = v10;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    v6 = v10;
  }

  return v9;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = TUISeparatedVariantSelectorView;
  [(TUIKeyPopupView *)&v11 layoutSubviews];
  [(TUISeparatedVariantSelectorView *)self stackLayoutMargins];
  v5 = v3 + v4;
  v6 = [(TUIKeyPopupView *)self arrangedVariantRows];
  v7 = [v6 firstObject];
  [v7 bounds];
  v8 = (v5 + CGRectGetHeight(v12)) * 0.5;
  v9 = [(TUIKeyPopupView *)self variantView];
  v10 = [v9 layer];
  [v10 setCornerRadius:v8];
}

@end