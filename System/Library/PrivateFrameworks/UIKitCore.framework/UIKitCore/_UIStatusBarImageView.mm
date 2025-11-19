@interface _UIStatusBarImageView
- (BOOL)prefersBaselineAlignment;
- (CGSize)intrinsicContentSize;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (_UIStatusBarImageView)initWithFrame:(CGRect)a3;
- (void)applyStyleAttributes:(id)a3;
- (void)setIconScale:(double)a3;
@end

@implementation _UIStatusBarImageView

- (_UIStatusBarImageView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarImageView;
  v3 = [(UIImageView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v3->_iconScale = 1.0;
  [(UIImageView *)v3 _setAnimatesContents:1];
  return v3;
}

- (CGSize)intrinsicContentSize
{
  v12.receiver = self;
  v12.super_class = _UIStatusBarImageView;
  [(UIView *)&v12 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(UIImageView *)self image];
  v8 = [v7 isFromStatusBarImageProvider];

  if (v8)
  {
    iconScale = self->_iconScale;
    v4 = v4 * iconScale;
    v6 = v6 * iconScale;
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)prefersBaselineAlignment
{
  v2 = [(UIImageView *)self image];
  v3 = [v2 _isSymbolImage];

  return v3;
}

- (void)setIconScale:(double)a3
{
  if (self->_iconScale != a3)
  {
    self->_iconScale = a3;
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 imageTintColor];
  [(UIView *)self setTintColor:v5];

  [v4 iconScale];
  [(_UIStatusBarImageView *)self setIconScale:?];
  v8 = [v4 fontForStyle:self->_fontStyle];
  v6 = [v4 symbolScale];

  v7 = [UIImageSymbolConfiguration configurationWithFont:v8 scale:v6];
  [(UIImageView *)self setPreferredSymbolConfiguration:v7];
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v3 = [(_UIStatusBarImageView *)self accessibilityHUDImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIImageView *)self image];
  }

  v6 = v5;

  v7 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v6 imageInsets:0.0, 0.0, 0.0, 0.0];
  [(UIAccessibilityHUDItem *)v7 setScaleImage:1];
  [(UIAccessibilityHUDItem *)v7 setDisabledAppearance:[(_UIStatusBarImageView *)self useDisabledAppearanceForAccessibilityHUD]];

  return v7;
}

@end