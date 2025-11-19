@interface STUIStatusBarImageView
- (BOOL)prefersBaselineAlignment;
- (CGSize)intrinsicContentSize;
- (STUIStatusBarImageView)initWithFrame:(CGRect)a3;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (void)applyStyleAttributes:(id)a3;
- (void)setIconScale:(double)a3;
@end

@implementation STUIStatusBarImageView

- (CGSize)intrinsicContentSize
{
  v12.receiver = self;
  v12.super_class = STUIStatusBarImageView;
  [(STUIStatusBarImageView *)&v12 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(STUIStatusBarImageView *)self image];
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

- (STUIStatusBarImageView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarImageView;
  v3 = [(STUIStatusBarImageView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v3->_iconScale = 1.0;
  [(STUIStatusBarImageView *)v3 _setAnimatesContents:1];
  return v3;
}

- (BOOL)prefersBaselineAlignment
{
  v2 = [(STUIStatusBarImageView *)self image];
  v3 = [v2 _isSymbolImage];

  return v3;
}

- (void)setIconScale:(double)a3
{
  if (self->_iconScale != a3)
  {
    self->_iconScale = a3;
    [(STUIStatusBarImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)applyStyleAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 imageTintColor];
  [(STUIStatusBarImageView *)self setTintColor:v5];

  [v4 iconScale];
  [(STUIStatusBarImageView *)self setIconScale:?];
  v6 = MEMORY[0x277D755D0];
  v9 = [v4 fontForStyle:self->_fontStyle];
  v7 = [v4 symbolScale];

  v8 = [v6 configurationWithFont:v9 scale:v7];
  [(STUIStatusBarImageView *)self setPreferredSymbolConfiguration:v8];
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v3 = [(STUIStatusBarImageView *)self accessibilityHUDImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(STUIStatusBarImageView *)self image];
  }

  v6 = v5;

  v7 = objc_alloc(MEMORY[0x277D750B0]);
  v8 = [v7 initWithTitle:0 image:v6 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  [v8 setScaleImage:1];
  [v8 setDisabledAppearance:{-[STUIStatusBarImageView useDisabledAppearanceForAccessibilityHUD](self, "useDisabledAppearanceForAccessibilityHUD")}];

  return v8;
}

@end