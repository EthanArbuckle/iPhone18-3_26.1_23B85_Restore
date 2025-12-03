@interface SBHStyleTintButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (SBHStyleTintButton)initWithFrame:(CGRect)frame;
- (SBHStyleTintButton)initWithImage:(id)image;
- (id)_symbolConfigurationForTraitCollection:(id)collection;
- (void)_updateFilters;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)sizeToFit;
@end

@implementation SBHStyleTintButton

- (SBHStyleTintButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBHStyleTintButton;
  v3 = [(SBHStyleTintButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    SBHStyleTintButtonSharedInit(v3);
  }

  return v4;
}

- (SBHStyleTintButton)initWithImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  BSRectWithSize();
  v8.receiver = self;
  v8.super_class = SBHStyleTintButton;
  v5 = [(SBHStyleTintButton *)&v8 initWithFrame:?];
  v6 = v5;
  if (v5)
  {
    SBHStyleTintButtonSharedInit(v5);
    [(UIImageView *)v6->_tintButtonImageView setImage:imageCopy];
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

- (void)setImage:(id)image
{
  [(UIImageView *)self->_tintButtonImageView setImage:image];
  [(SBHStyleTintButton *)self invalidateIntrinsicContentSize];

  [(SBHStyleTintButton *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = SBHStyleTintButton;
  [(SBHStyleTintButton *)&v5 setHighlighted:?];
  SBHUIViewAnimateHighlight(self->_tintButtonImageView, highlightedCopy);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImageView *)self->_tintButtonImageView sizeThatFits:fits.width, fits.height];
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(UIImageView *)self->_tintButtonImageView systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_updateFilters
{
  traitCollection = [(SBHStyleTintButton *)self traitCollection];
  tintButtonImageView = self->_tintButtonImageView;
  v4 = [(SBHStyleTintButton *)self _symbolConfigurationForTraitCollection:traitCollection];
  [(UIImageView *)tintButtonImageView setSymbolConfiguration:v4];

  if (traitCollection)
  {
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v6 = MEMORY[0x1E6979CE8];
    if (userInterfaceStyle != 1)
    {
      v6 = MEMORY[0x1E6979CF8];
    }
  }

  else
  {
    v6 = MEMORY[0x1E6979CE8];
  }

  v7 = [MEMORY[0x1E6979378] filterWithType:*v6];
  layer = [(UIImageView *)self->_tintButtonImageView layer];
  [layer setCompositingFilter:v7];
}

- (id)_symbolConfigurationForTraitCollection:(id)collection
{
  v14[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v4 = collectionCopy;
  if (collectionCopy && [collectionCopy userInterfaceStyle] != 1)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] blackColor];
  }

  v6 = whiteColor;
  v7 = [whiteColor colorWithAlphaComponent:0.54];

  v8 = MEMORY[0x1E69DCAD8];
  v14[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v10 = [v8 configurationWithPaletteColors:v9];

  v11 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v12 = [v10 configurationByApplyingConfiguration:v11];

  return v12;
}

@end