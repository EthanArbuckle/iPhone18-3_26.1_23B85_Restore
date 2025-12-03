@interface _UINavigationBarBridgingPalette
- (BOOL)isAttached;
- (BOOL)paletteIsHidden;
- (UIEdgeInsets)preferredContentInsets;
- (UIView)_backgroundView;
- (void)setFrame:(CGRect)frame isAnimating:(BOOL)animating;
@end

@implementation _UINavigationBarBridgingPalette

- (void)setFrame:(CGRect)frame isAnimating:(BOOL)animating
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self setFrame:animating];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v9 = CGRectGetHeight(v11);

  [(_UINavigationBarPalette *)self setPreferredHeight:v9];
}

- (UIView)_backgroundView
{
  temporaryBackgroundView = self->_temporaryBackgroundView;
  if (!temporaryBackgroundView)
  {
    v4 = objc_opt_new();
    v5 = self->_temporaryBackgroundView;
    self->_temporaryBackgroundView = v4;

    temporaryBackgroundView = self->_temporaryBackgroundView;
  }

  return temporaryBackgroundView;
}

- (UIEdgeInsets)preferredContentInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)isAttached
{
  window = [(UIView *)self window];
  v3 = window != 0;

  return v3;
}

- (BOOL)paletteIsHidden
{
  window = [(UIView *)self window];
  v3 = window == 0;

  return v3;
}

@end