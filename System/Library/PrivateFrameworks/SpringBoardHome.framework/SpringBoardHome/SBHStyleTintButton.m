@interface SBHStyleTintButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (SBHStyleTintButton)initWithFrame:(CGRect)a3;
- (SBHStyleTintButton)initWithImage:(id)a3;
- (id)_symbolConfigurationForTraitCollection:(id)a3;
- (void)_updateFilters;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)sizeToFit;
@end

@implementation SBHStyleTintButton

- (SBHStyleTintButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBHStyleTintButton;
  v3 = [(SBHStyleTintButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    SBHStyleTintButtonSharedInit(v3);
  }

  return v4;
}

- (SBHStyleTintButton)initWithImage:(id)a3
{
  v4 = a3;
  [v4 size];
  BSRectWithSize();
  v8.receiver = self;
  v8.super_class = SBHStyleTintButton;
  v5 = [(SBHStyleTintButton *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    SBHStyleTintButtonSharedInit(v5);
    [(UIImageView *)v6->_tintButtonImageView setImage:v4];
  }

  return v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBHStyleTintButton;
  [(SBHStyleTintButton *)&v4 layoutSubviews];
  tintButtonImageView = self->_tintButtonImageView;
  [(SBHStyleTintButton *)self bounds];
  [(UIImageView *)tintButtonImageView setFrame:?];
}

- (void)setImage:(id)a3
{
  [(UIImageView *)self->_tintButtonImageView setImage:a3];
  [(SBHStyleTintButton *)self invalidateIntrinsicContentSize];

  [(SBHStyleTintButton *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBHStyleTintButton;
  [(SBHStyleTintButton *)&v5 setHighlighted:?];
  SBHUIViewAnimateHighlight(self->_tintButtonImageView, v3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIImageView *)self->_tintButtonImageView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)sizeToFit
{
  [(UIImageView *)self->_tintButtonImageView sizeToFit];

  [(SBHStyleTintButton *)self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  [(UIImageView *)self->_tintButtonImageView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(UIImageView *)self->_tintButtonImageView systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_updateFilters
{
  v9 = [(SBHStyleTintButton *)self traitCollection];
  tintButtonImageView = self->_tintButtonImageView;
  v4 = [(SBHStyleTintButton *)self _symbolConfigurationForTraitCollection:v9];
  [(UIImageView *)tintButtonImageView setSymbolConfiguration:v4];

  if (v9)
  {
    v5 = [v9 userInterfaceStyle];
    v6 = MEMORY[0x1E6979CE8];
    if (v5 != 1)
    {
      v6 = MEMORY[0x1E6979CF8];
    }
  }

  else
  {
    v6 = MEMORY[0x1E6979CE8];
  }

  v7 = [MEMORY[0x1E6979378] filterWithType:*v6];
  v8 = [(UIImageView *)self->_tintButtonImageView layer];
  [v8 setCompositingFilter:v7];
}

- (id)_symbolConfigurationForTraitCollection:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 userInterfaceStyle] != 1)
  {
    v5 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] blackColor];
  }

  v6 = v5;
  v7 = [v5 colorWithAlphaComponent:0.54];

  v8 = MEMORY[0x1E69DCAD8];
  v14[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v8 configurationWithPaletteColors:v9];

  v11 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v12 = [v10 configurationByApplyingConfiguration:v11];

  return v12;
}

@end