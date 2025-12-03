@interface UISearchField
- (CGRect)_availableTextRectExcludingButtonsForBounds:(CGRect)bounds;
- (CGRect)iconRect;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (UISearchField)initWithFrame:(CGRect)frame;
- (id)_placeholderColor;
@end

@implementation UISearchField

- (UISearchField)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = UISearchField;
  v3 = [(UITextField *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = _UIImageWithName(@"UISearchFieldIcon.png");
    [v4 size];
    v6 = v5;
    v8 = v7;
    [v4 scale];
    _UIGraphicsBeginImageContextWithOptions(0, 0, v6, v8, v9);
    [v4 drawAtPoint:17 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];
    _interactionTintColor = [(UIView *)v3 _interactionTintColor];

    if (_interactionTintColor)
    {
      _interactionTintColor2 = [(UIView *)v3 _interactionTintColor];
    }

    else
    {
      v12 = [UIColor colorWithWhite:0.0 alpha:0.2];
      _interactionTintColor2 = [(UIColor *)1.0 _composedColorFromSourceColor:v12 destinationColor:0 tintColor:0 alpha:?];
    }

    [_interactionTintColor2 set];

    [v4 size];
    v14 = v13;
    [v4 size];
    v19.size.height = v15;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = v14;
    UIRectFillUsingBlendMode(v19, kCGBlendModeSourceIn);
    v16 = _UIGraphicsGetImageFromCurrentImageContext(0);

    UIGraphicsEndImageContext();
    [(UITextField *)v3 setIcon:v16];
    [(UITextField *)v3 setBorderStyle:3];
  }

  return v3;
}

- (id)_placeholderColor
{
  v2 = _AXDarkenSystemColors();
  v3 = 0.25;
  if (!v2)
  {
    v3 = 0.5;
  }

  return [UIColor colorWithWhite:v3 alpha:1.0];
}

- (CGRect)iconRect
{
  v14.receiver = self;
  v14.super_class = UISearchField;
  [(UITextField *)&v14 iconRect];
  v4 = v3;
  v6 = v5;
  UIRoundToViewScale(self);
  v8 = v7;
  UIRoundToViewScale(self);
  v10 = v9;
  v11 = v8;
  v12 = v4;
  v13 = v6;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v11;
  return result;
}

- (CGRect)_availableTextRectExcludingButtonsForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  UIRoundToViewScale(self);

  v8 = _UICGRectInsetZeroClamped(x, y, width, height, v7, 2.0);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  v8.receiver = self;
  v8.super_class = UISearchField;
  [(UITextField *)&v8 rightViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v7 = v6 + 6.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v7;
  return result;
}

@end