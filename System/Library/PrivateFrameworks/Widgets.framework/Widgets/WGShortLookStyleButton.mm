@interface WGShortLookStyleButton
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)_size;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_fontProvider;
- (id)fontForTitle:(id)a3;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureMaskIfNecessary;
- (void)_configureTitleLabelIfNecessary;
- (void)_layoutTitleLabel;
- (void)_updateHighlight;
- (void)_updateTitleLabelFont;
- (void)_updateTouchInsetsIfNecessary;
- (void)invalidateCachedGeometry;
- (void)layoutSubviews;
- (void)setBackgroundBlurred:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WGShortLookStyleButton

- (void)setBackgroundBlurred:(BOOL)a3
{
  if (self->_backgroundBlurred != a3)
  {
    self->_backgroundBlurred = a3;
    [(MTMaterialView *)self->_backgroundView setBlurEnabled:?];

    [(WGShortLookStyleButton *)self setNeedsLayout];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(WGShortLookStyleButton *)self isHighlighted]!= a3)
  {
    v5.receiver = self;
    v5.super_class = WGShortLookStyleButton;
    [(WGShortLookStyleButton *)&v5 setHighlighted:v3];
    if (v3)
    {
      [(WGShortLookStyleButton *)self _updateHighlight];
    }

    else
    {
      BSRunLoopPerformAfterCACommit();
    }
  }
}

- (void)_updateHighlight
{
  if ([(WGShortLookStyleButton *)self isHighlighted])
  {
    backgroundView = self->_backgroundView;

    [(MTMaterialView *)backgroundView setHighlighted:1];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __42__WGShortLookStyleButton__updateHighlight__block_invoke;
    v4[3] = &unk_279ED0948;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:6 delay:v4 options:0 animations:0.3 completion:0.0];
  }
}

- (id)_fontProvider
{
  fontProvider = self->_fontProvider;
  if (!fontProvider)
  {
    v4 = [MEMORY[0x277CF0D60] preferredFontProvider];
    v5 = self->_fontProvider;
    self->_fontProvider = v4;

    fontProvider = self->_fontProvider;
  }

  return fontProvider;
}

- (id)fontForTitle:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 0;
  v5 = *MEMORY[0x277D743F8];
  v6 = *MEMORY[0x277D740A8];
  v7 = 15.0;
  do
  {
    v8 = v4;
    v4 = [MEMORY[0x277D74300] systemFontOfSize:v7 weight:v5];

    v14 = v6;
    v15[0] = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v3 sizeWithAttributes:v9];
    v11 = v10;

    v7 = v7 + -1.0;
  }

  while (v11 > 42.6666667 && v7 >= 10.0);

  return v4;
}

- (void)_configureBackgroundViewIfNecessary
{
  if (!self->_backgroundView)
  {
    v3 = [MEMORY[0x277D26718] materialViewWithRecipe:2];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v3;

    [(MTMaterialView *)self->_backgroundView setBlurEnabled:self->_backgroundBlurred];
    [(WGShortLookStyleButton *)self addSubview:self->_backgroundView];
    v5 = self->_backgroundView;

    [(WGShortLookStyleButton *)self sendSubviewToBack:v5];
  }
}

- (void)_updateTitleLabelFont
{
  v3 = [(WGShortLookStyleButton *)self title];
  v4 = [(WGShortLookStyleButton *)self fontForTitle:v3];

  [(UILabel *)self->_titleLabel setFont:v4];
}

- (void)_configureTitleLabelIfNecessary
{
  if (!self->_titleLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v3;

    [(WGShortLookStyleButton *)self _updateTitleLabelFont];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setNumberOfLines:1];
    [(WGShortLookStyleButton *)self addSubview:self->_titleLabel];
    [(WGShortLookStyleButton *)self _configureBackgroundViewIfNecessary];
    v5 = [(MTMaterialView *)self->_backgroundView visualStylingProviderForCategory:1];
    [v5 automaticallyUpdateView:self->_titleLabel withStyle:1];
  }
}

- (void)_configureMaskIfNecessary
{
  [(WGShortLookStyleButton *)self _backgroundViewCornerRadius];
  if (fabs(v3) < 2.22044605e-16)
  {
    [(WGShortLookStyleButton *)self _size];
    if (v4 >= v5)
    {
      v4 = v5;
    }

    v6 = v4 * 0.5;

    [(WGShortLookStyleButton *)self _setBackgroundViewCornerRadius:v6];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(WGShortLookStyleButton *)self _configureTitleLabelIfNecessary];
  [(UILabel *)self->_titleLabel setText:v4];

  [(WGShortLookStyleButton *)self _updateTitleLabelFont];

  [(WGShortLookStyleButton *)self invalidateCachedGeometry];
}

- (CGSize)_size
{
  p_size = &self->_size;
  width = self->_size.width;
  height = self->_size.height;
  if (width == 0.0 && height == 0.0)
  {
    [(WGShortLookStyleButton *)self _configureTitleLabelIfNecessary];
    v6 = [(WGShortLookStyleButton *)self title];
    v7 = [(WGShortLookStyleButton *)self fontForTitle:v6];

    v8 = 464;
    [(UILabel *)self->_titleLabel setFont:v7];
    [(UILabel *)self->_titleLabel sizeToFit];
    titleLabel = self->_titleLabel;
    [(UILabel *)titleLabel bounds];
    [(UILabel *)titleLabel textRectForBounds:[(UILabel *)self->_titleLabel numberOfLines] limitedToNumberOfLines:v10, v11, v12, v13];
    v15 = ceil(v14 + 10.0 + 10.0);
    if (v15 >= 60.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 60.0;
    }

    v17 = [MEMORY[0x277CF0CA8] sharedInstance];
    v18 = [v17 deviceClass];
    if (v18)
    {
      v8 = [MEMORY[0x277CF0CA8] sharedInstance];
      v19 = 26.0;
      if ([v8 deviceClass] != 1)
      {
        goto LABEL_14;
      }
    }

    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 _referenceBounds];
    v19 = 26.0;
    if (CGRectGetHeight(v25) > 812.0)
    {
      v21 = [MEMORY[0x277CF0CA8] sharedInstance];
      if ([v21 homeButtonType] == 2)
      {
        v19 = 28.0;
      }

      else
      {
        v19 = 26.0;
      }
    }

    if (v18)
    {
LABEL_14:
    }

    p_size->width = v16;
    p_size->height = v19;
    UISizeRoundToScale();
    p_size->width = v22;
    p_size->height = v23;

    width = p_size->width;
    height = p_size->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)invalidateCachedGeometry
{
  self->_size = *MEMORY[0x277CBF3A8];
  [(WGShortLookStyleButton *)self _setBackgroundViewCornerRadius:0.0];

  [(WGShortLookStyleButton *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(WGShortLookStyleButton *)self _configureTitleLabelIfNecessary:a3.width];

  [(WGShortLookStyleButton *)self _size];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_layoutTitleLabel
{
  [(UILabel *)self->_titleLabel sizeToFit];
  [(WGShortLookStyleButton *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  titleLabel = self->_titleLabel;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = CGRectGetMidY(v12) + -0.5;

  [(UILabel *)titleLabel setCenter:MidX, v9];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WGShortLookStyleButton;
  [(WGShortLookStyleButton *)&v3 layoutSubviews];
  [(WGShortLookStyleButton *)self _configureBackgroundViewIfNecessary];
  [(WGShortLookStyleButton *)self bounds];
  [(MTMaterialView *)self->_backgroundView setFrame:?];
  [(WGShortLookStyleButton *)self _layoutTitleLabel];
  [(WGShortLookStyleButton *)self _configureMaskIfNecessary];
  [(WGShortLookStyleButton *)self _updateTouchInsetsIfNecessary];
}

- (void)_updateTouchInsetsIfNecessary
{
  [(WGShortLookStyleButton *)self bounds];
  if (v3 < 44.0)
  {

    [(WGShortLookStyleButton *)self _setTouchInsets:?];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = WGShortLookStyleButton;
  return [(WGShortLookStyleButton *)&v5 pointInside:a4 withEvent:a3.x, a3.y];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = WGShortLookStyleButton;
  v4 = a3;
  [(WGShortLookStyleButton *)&v9 traitCollectionDidChange:v4];
  v5 = [(WGShortLookStyleButton *)self traitCollection:v9.receiver];
  v6 = [v4 preferredContentSizeCategory];

  if (v6)
  {
    v7 = [v5 preferredContentSizeCategory];
    v8 = [v7 isEqualToString:v6];

    if ((v8 & 1) == 0)
    {
      [(WGShortLookStyleButton *)self _updateTitleLabelFont];
      [(WGShortLookStyleButton *)self invalidateCachedGeometry];
    }
  }
}

- (void)setMaterialGroupNameBase:(id)a3
{
  v4 = a3;
  [(WGShortLookStyleButton *)self _configureBackgroundViewIfNecessary];
  [(MTMaterialView *)self->_backgroundView setGroupNameBase:v4];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  if (v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  v6 = [v4 numberOfTapsRequired];

  if (v6 != 1)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end