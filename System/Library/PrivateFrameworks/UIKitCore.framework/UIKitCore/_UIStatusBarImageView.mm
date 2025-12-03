@interface _UIStatusBarImageView
- (BOOL)prefersBaselineAlignment;
- (CGSize)intrinsicContentSize;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (_UIStatusBarImageView)initWithFrame:(CGRect)frame;
- (void)applyStyleAttributes:(id)attributes;
- (void)setIconScale:(double)scale;
@end

@implementation _UIStatusBarImageView

- (_UIStatusBarImageView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarImageView;
  v3 = [(UIImageView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  image = [(UIImageView *)self image];
  isFromStatusBarImageProvider = [image isFromStatusBarImageProvider];

  if (isFromStatusBarImageProvider)
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
  image = [(UIImageView *)self image];
  _isSymbolImage = [image _isSymbolImage];

  return _isSymbolImage;
}

- (void)setIconScale:(double)scale
{
  if (self->_iconScale != scale)
  {
    self->_iconScale = scale;
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  imageTintColor = [attributesCopy imageTintColor];
  [(UIView *)self setTintColor:imageTintColor];

  [attributesCopy iconScale];
  [(_UIStatusBarImageView *)self setIconScale:?];
  v8 = [attributesCopy fontForStyle:self->_fontStyle];
  symbolScale = [attributesCopy symbolScale];

  v7 = [UIImageSymbolConfiguration configurationWithFont:v8 scale:symbolScale];
  [(UIImageView *)self setPreferredSymbolConfiguration:v7];
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  accessibilityHUDImage = [(_UIStatusBarImageView *)self accessibilityHUDImage];
  v4 = accessibilityHUDImage;
  if (accessibilityHUDImage)
  {
    image = accessibilityHUDImage;
  }

  else
  {
    image = [(UIImageView *)self image];
  }

  v6 = image;

  v7 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v6 imageInsets:0.0, 0.0, 0.0, 0.0];
  [(UIAccessibilityHUDItem *)v7 setScaleImage:1];
  [(UIAccessibilityHUDItem *)v7 setDisabledAppearance:[(_UIStatusBarImageView *)self useDisabledAppearanceForAccessibilityHUD]];

  return v7;
}

@end