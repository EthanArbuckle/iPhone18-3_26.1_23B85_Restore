@interface STUIStatusBarImageView
- (BOOL)prefersBaselineAlignment;
- (CGSize)intrinsicContentSize;
- (STUIStatusBarImageView)initWithFrame:(CGRect)frame;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (void)applyStyleAttributes:(id)attributes;
- (void)setIconScale:(double)scale;
@end

@implementation STUIStatusBarImageView

- (CGSize)intrinsicContentSize
{
  v12.receiver = self;
  v12.super_class = STUIStatusBarImageView;
  [(STUIStatusBarImageView *)&v12 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  image = [(STUIStatusBarImageView *)self image];
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

- (STUIStatusBarImageView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarImageView;
  v3 = [(STUIStatusBarImageView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v3->_iconScale = 1.0;
  [(STUIStatusBarImageView *)v3 _setAnimatesContents:1];
  return v3;
}

- (BOOL)prefersBaselineAlignment
{
  image = [(STUIStatusBarImageView *)self image];
  _isSymbolImage = [image _isSymbolImage];

  return _isSymbolImage;
}

- (void)setIconScale:(double)scale
{
  if (self->_iconScale != scale)
  {
    self->_iconScale = scale;
    [(STUIStatusBarImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  imageTintColor = [attributesCopy imageTintColor];
  [(STUIStatusBarImageView *)self setTintColor:imageTintColor];

  [attributesCopy iconScale];
  [(STUIStatusBarImageView *)self setIconScale:?];
  v6 = MEMORY[0x277D755D0];
  v9 = [attributesCopy fontForStyle:self->_fontStyle];
  symbolScale = [attributesCopy symbolScale];

  v8 = [v6 configurationWithFont:v9 scale:symbolScale];
  [(STUIStatusBarImageView *)self setPreferredSymbolConfiguration:v8];
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  accessibilityHUDImage = [(STUIStatusBarImageView *)self accessibilityHUDImage];
  v4 = accessibilityHUDImage;
  if (accessibilityHUDImage)
  {
    image = accessibilityHUDImage;
  }

  else
  {
    image = [(STUIStatusBarImageView *)self image];
  }

  v6 = image;

  v7 = objc_alloc(MEMORY[0x277D750B0]);
  v8 = [v7 initWithTitle:0 image:v6 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v8 setScaleImage:1];
  [v8 setDisabledAppearance:{-[STUIStatusBarImageView useDisabledAppearanceForAccessibilityHUD](self, "useDisabledAppearanceForAccessibilityHUD")}];

  return v8;
}

@end