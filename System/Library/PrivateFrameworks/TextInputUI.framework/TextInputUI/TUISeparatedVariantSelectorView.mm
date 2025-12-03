@interface TUISeparatedVariantSelectorView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)stackLayoutMargins;
- (id)variantCellWithString:(id)string annotation:(id)annotation;
- (id)widthConstraintsForVariantCell:(id)cell previousCell:(id)previousCell;
- (int64_t)variantViewAlignment;
- (unint64_t)maxRows;
- (unint64_t)variantRowLimitForLayout;
- (void)layoutSubviews;
@end

@implementation TUISeparatedVariantSelectorView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  variantView = [(TUIKeyPopupView *)self variantView];
  [(TUISeparatedVariantSelectorView *)self convertPoint:variantView toView:x, y];
  v10 = v9;
  v12 = v11;

  variantView2 = [(TUIKeyPopupView *)self variantView];
  LOBYTE(variantView) = [variantView2 pointInside:eventCopy withEvent:{v10, v12}];

  return variantView;
}

- (unint64_t)maxRows
{
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  if ([associatedTree variantType] == 4)
  {

    return 5;
  }

  associatedTree2 = [(TUIKeyPopupView *)self associatedTree];
  variantType = [associatedTree2 variantType];

  if (variantType == 7)
  {
    return 5;
  }

  v7.receiver = self;
  v7.super_class = TUISeparatedVariantSelectorView;
  return [(TUIKeyPopupView *)&v7 maxRows];
}

- (unint64_t)variantRowLimitForLayout
{
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  if ([associatedTree variantType] == 4)
  {

    return 10;
  }

  associatedTree2 = [(TUIKeyPopupView *)self associatedTree];
  variantType = [associatedTree2 variantType];

  if (variantType == 7)
  {
    return 10;
  }

  return 12;
}

- (int64_t)variantViewAlignment
{
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  if ([associatedTree variantType] == 4)
  {

    return 3;
  }

  associatedTree2 = [(TUIKeyPopupView *)self associatedTree];
  variantType = [associatedTree2 variantType];

  if (variantType == 7)
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

- (id)variantCellWithString:(id)string annotation:(id)annotation
{
  annotationCopy = annotation;
  stringCopy = string;
  v8 = [TUISeparatedVariantCell alloc];
  renderTraits = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUISeparatedVariantCell *)v8 initWithFrame:stringCopy string:annotationCopy annotation:renderTraits traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  touchesForwardingView = [(TUIKeyPopupView *)self touchesForwardingView];
  superview = [touchesForwardingView superview];
  [(TUISeparatedVariantCell *)v10 setTouchesForwardingView:superview];

  return v10;
}

- (id)widthConstraintsForVariantCell:(id)cell previousCell:(id)previousCell
{
  v14[1] = *MEMORY[0x1E69E9840];
  previousCellCopy = previousCell;
  widthAnchor = [cell widthAnchor];
  if (previousCellCopy)
  {
    widthAnchor2 = [previousCellCopy widthAnchor];
    v8 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    [objc_opt_class() minCellDimension];
    v10 = [widthAnchor constraintEqualToConstant:?];

    LODWORD(v11) = 1144766464;
    [v10 setPriority:v11];
    v13 = v10;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    widthAnchor = v10;
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
  arrangedVariantRows = [(TUIKeyPopupView *)self arrangedVariantRows];
  firstObject = [arrangedVariantRows firstObject];
  [firstObject bounds];
  v8 = (v5 + CGRectGetHeight(v12)) * 0.5;
  variantView = [(TUIKeyPopupView *)self variantView];
  layer = [variantView layer];
  [layer setCornerRadius:v8];
}

@end