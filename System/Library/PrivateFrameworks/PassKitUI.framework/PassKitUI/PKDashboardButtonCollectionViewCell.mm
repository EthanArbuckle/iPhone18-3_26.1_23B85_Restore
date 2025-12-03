@interface PKDashboardButtonCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardButtonCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_resetFonts;
- (void)_updateTextColor;
- (void)createSubviews;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setShowActivity:(BOOL)activity;
- (void)setStyle:(unint64_t)style;
@end

@implementation PKDashboardButtonCollectionViewCell

- (PKDashboardButtonCollectionViewCell)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKDashboardButtonCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardButtonCollectionViewCell *)v3 createSubviews];
    [(PKDashboardCollectionViewCell *)v4 setMaskType:3];
    v4->_enabled = 1;
    [(PKDashboardButtonCollectionViewCell *)v4 _updateTextColor];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(PKDashboardButtonCollectionViewCell *)v4 registerForTraitChanges:v5 withHandler:&__block_literal_global_268];
  }

  return v4;
}

void __53__PKDashboardButtonCollectionViewCell_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _resetFonts];
  [v2 setNeedsLayout];
}

- (void)createSubviews
{
  contentView = [(PKDashboardButtonCollectionViewCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setNumberOfLines:2];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [(PKDashboardButtonCollectionViewCell *)self _resetFonts];
  [contentView addSubview:self->_titleLabel];
  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v5;

  [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
  [contentView addSubview:self->_activityIndicator];
  v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
  if (_UISolariumFeatureFlagEnabled())
  {
    PKUISmallChevronImage();
  }

  else
  {
    PKUIChevronImage();
  }
  v8 = ;
  v9 = [v7 initWithImage:v8];

  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v9 setTintColor:tertiaryLabelColor];

  disclosureView = self->_disclosureView;
  self->_disclosureView = v9;
  v12 = v9;

  [(UIImageView *)self->_disclosureView setHidden:1];
  [contentView addSubview:self->_disclosureView];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKDashboardButtonCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v4 layoutSubviews];
  contentView = [(PKDashboardButtonCollectionViewCell *)self contentView];
  [contentView bounds];
  [(PKDashboardButtonCollectionViewCell *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  [(PKDashboardCollectionViewCell *)self horizontalInset];
  [(PKDashboardButtonCollectionViewCell *)self _layoutWithBounds:1 isTemplateLayout:v6, v7, width + v8 * -2.0, height];
  v11 = fmin(height, 44.0);
  if (v10 < 44.0)
  {
    v10 = v11;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setShowActivity:(BOOL)activity
{
  if (self->_showActivity == !activity)
  {
    self->_showActivity = activity;
    activityIndicator = self->_activityIndicator;
    if (activity)
    {
      [(UIActivityIndicatorView *)activityIndicator startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)activityIndicator stopAnimating];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled == !enabled)
  {
    self->_enabled = enabled;
    [(PKDashboardButtonCollectionViewCell *)self _updateTextColor];
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style == style)
  {
    return;
  }

  v9 = v4;
  v10 = v3;
  self->_style = style;
  if (!style)
  {
    v8 = 1;
    goto LABEL_6;
  }

  if (style == 1)
  {
    v8 = 0;
LABEL_6:
    [(UIImageView *)self->_disclosureView setHidden:v8, v4, v10, v5];
  }

  [(PKDashboardButtonCollectionViewCell *)self _updateTextColor:v9];

  [(PKDashboardButtonCollectionViewCell *)self setNeedsLayout];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = bounds.size.height;
  width = bounds.size.width;
  v8 = _UISolariumFeatureFlagEnabled();
  v9 = _UISolariumFeatureFlagEnabled();
  v10 = 32.0;
  if (!v8)
  {
    v10 = 24.0;
  }

  if (v9)
  {
    v11 = 15.0;
  }

  else
  {
    v11 = 12.0;
  }

  v12 = width - v10;
  v13 = 30.0;
  if (!v9)
  {
    v13 = 24.0;
  }

  v14 = height - v13;
  if (([(UIImageView *)self->_disclosureView isHidden]& 1) == 0)
  {
    [(UIImageView *)self->_disclosureView sizeToFit];
    [(UIImageView *)self->_disclosureView frame];
    v16 = v15;
    if (!layoutCopy)
    {
      UIRectCenteredYInRect();
      [(UIImageView *)self->_disclosureView setFrame:?];
    }

    v12 = v12 - v16 + -12.0;
  }

  [(UIActivityIndicatorView *)self->_activityIndicator sizeToFit];
  [(UIActivityIndicatorView *)self->_activityIndicator frame];
  v18 = v17;
  if (!layoutCopy)
  {
    UIRectCenteredYInRect();
    v18 = v19;
    [(UIActivityIndicatorView *)self->_activityIndicator setFrame:?];
  }

  [(UILabel *)self->_titleLabel sizeThatFits:v12 - v18 + -12.0, v14];
  UIRectCenteredYInRect();
  v21 = v20;
  if (!layoutCopy)
  {
    [(UILabel *)self->_titleLabel setFrame:?];
  }

  v22 = v21 + v11 * 2.0;
  v23 = width;
  result.height = v22;
  result.width = v23;
  return result;
}

- (void)_updateTextColor
{
  style = self->_style;
  if (style == 1)
  {
    titleLabel = self->_titleLabel;
    if (self->_enabled)
    {
      [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
  }

  else
  {
    if (style)
    {
      return;
    }

    titleLabel = self->_titleLabel;
    if (self->_enabled)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] placeholderTextColor];
    }
  }
  v4 = ;
  v5 = v4;
  [(UILabel *)titleLabel setTextColor:?];
}

- (void)_resetFonts
{
  titleLabel = self->_titleLabel;
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  [(UILabel *)titleLabel setFont:v3];
}

@end