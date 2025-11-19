@interface NCClickInteractionPresentedView
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCClickInteractionPresentedView)initWithTitle:(id)a3;
- (NSString)preferredContentSizeCategory;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_configureTitleLabel;
- (void)_darkerSystemColorsStatusDidChange:(id)a3;
- (void)_reduceTransparencyStatusDidChange:(id)a3;
- (void)_updateTitleLabelAnchorPointAndPosition;
- (void)_updateTitleLabelTextAttributes;
- (void)_updateTitleLabelVisualStyling;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation NCClickInteractionPresentedView

- (NCClickInteractionPresentedView)initWithTitle:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NCClickInteractionPresentedView;
  v5 = [(NCClickInteractionPresentedView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(NCClickInteractionPresentedView *)v5 setUserInteractionEnabled:0];
    [(NCClickInteractionPresentedView *)v6 _configureTitleLabel];
    [(NCClickInteractionPresentedView *)v6 setTitle:v4];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__darkerSystemColorsStatusDidChange_ name:*MEMORY[0x277D76460] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v6 selector:sel__reduceTransparencyStatusDidChange_ name:*MEMORY[0x277D764C8] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76460] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D764C8] object:0];

  v5.receiver = self;
  v5.super_class = NCClickInteractionPresentedView;
  [(NCClickInteractionPresentedView *)&v5 dealloc];
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    self->_cachedSizeThatFits = *MEMORY[0x277CBF3A8];
    [(UILabel *)self->_titleLabel setText:v6];
    [(NCClickInteractionPresentedView *)self _updateTitleLabelAnchorPointAndPosition];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  p_cachedSizeThatFits = &self->_cachedSizeThatFits;
  width = self->_cachedSizeThatFits.width;
  height = self->_cachedSizeThatFits.height;
  if (width == 0.0 && height == 0.0)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v7 = v6 + 48.0;
    v9 = v8 + 24.0;
    if (v9 < 60.0)
    {
      v9 = 60.0;
    }

    p_cachedSizeThatFits->width = v7;
    p_cachedSizeThatFits->height = v9;
    _NCMainScreenScale();
    UISizeRoundToScale();
    p_cachedSizeThatFits->width = width;
    p_cachedSizeThatFits->height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = NCClickInteractionPresentedView;
  [(NCClickInteractionPresentedView *)&v20 layoutSubviews];
  [(NCClickInteractionPresentedView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NCClickInteractionPresentedView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v12 = v11;
  v14 = v13;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v15 = CGRectGetWidth(v21) / v12;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  Height = CGRectGetHeight(v22);
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, v15, Height / v14);
  titleLabel = self->_titleLabel;
  v18 = v19;
  [(UILabel *)titleLabel setTransform:&v18];
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  if (a3 == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  visualStylingProvider = a3;
  v8 = visualStylingProvider;
  if (a4 == 1)
  {
    visualStylingProvider = self->_visualStylingProvider;
    if (visualStylingProvider != v8)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self->_titleLabel];
      objc_storeStrong(&self->_visualStylingProvider, a3);
      visualStylingProvider = [(NCClickInteractionPresentedView *)self _updateTitleLabelVisualStyling];
    }
  }

  MEMORY[0x2821F96F8](visualStylingProvider);
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(NCClickInteractionPresentedView *)self adjustForContentSizeCategoryChange];
  }
}

- (NSString)preferredContentSizeCategory
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  if (!preferredContentSizeCategory)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
    preferredContentSizeCategory = self->_preferredContentSizeCategory;
  }

  return preferredContentSizeCategory;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [(NCClickInteractionPresentedView *)self preferredContentSizeCategory];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    [(NCClickInteractionPresentedView *)self setPreferredContentSizeCategory:v4];
    self->_cachedSizeThatFits = *MEMORY[0x277CBF3A8];
    [(NCClickInteractionPresentedView *)self _updateTitleLabelTextAttributes];
  }

  return v6 ^ 1;
}

- (void)_updateTitleLabelVisualStyling
{
  v3 = [(NCClickInteractionPresentedView *)self superview];

  if (v3)
  {
    [(UILabel *)self->_titleLabel mt_removeAllVisualStyling];
    visualStylingProvider = self->_visualStylingProvider;
    titleLabel = self->_titleLabel;

    [(MTVisualStylingProvider *)visualStylingProvider automaticallyUpdateView:titleLabel withStyle:1];
  }
}

- (void)_updateTitleLabelTextAttributes
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  if (preferredContentSizeCategory && (v4 = *MEMORY[0x277D76828], UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76828]) != NSOrderedDescending))
  {
    titleLabel = self->_titleLabel;
    v8 = MEMORY[0x277D74300];
    v9 = *MEMORY[0x277D76918];
    v6 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v4];
    v10 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:v6];
    [(UILabel *)titleLabel setFont:v10];
  }

  else
  {
    v5 = self->_titleLabel;
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5 setFont:v6];
  }

  [(NCClickInteractionPresentedView *)self _updateTitleLabelAnchorPointAndPosition];

  [(NCClickInteractionPresentedView *)self setNeedsLayout];
}

- (void)_updateTitleLabelAnchorPointAndPosition
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel transform];
    titleLabel = self->_titleLabel;
  }

  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v17 = *MEMORY[0x277CBF2C0];
  v18 = v4;
  v19 = *(MEMORY[0x277CBF2C0] + 32);
  [(UILabel *)titleLabel setTransform:&v17];
  v5 = [(UILabel *)self->_titleLabel layer];
  [v5 setAnchorPoint:{0.5, 0.5}];
  [v5 setPosition:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [(NCClickInteractionPresentedView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  BSRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UILabel *)self->_titleLabel setFrame:?];
  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  MinY = CGRectGetMinY(v24);
  [v5 setAnchorPoint:{0.0, 0.0}];
  [v5 setPosition:{MinX, MinY}];
  v16 = self->_titleLabel;
  v17 = v20;
  v18 = v21;
  v19 = v22;
  [(UILabel *)v16 setTransform:&v17];
  [(NCClickInteractionPresentedView *)self setNeedsLayout];
}

- (void)_configureTitleLabel
{
  if (!self->_titleLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v3;

    [(UILabel *)self->_titleLabel setNumberOfLines:0];
    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    LODWORD(v5) = 0.5;
    [(UILabel *)self->_titleLabel _setHyphenationFactor:v5];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(NCClickInteractionPresentedView *)self _updateTitleLabelVisualStyling];
    [(NCClickInteractionPresentedView *)self _updateTitleLabelTextAttributes];
    v6 = self->_titleLabel;

    [(NCClickInteractionPresentedView *)self addSubview:v6];
  }
}

- (void)_darkerSystemColorsStatusDidChange:(id)a3
{
  if (self->_titleLabel)
  {
    [(NCClickInteractionPresentedView *)self _updateTitleLabelVisualStyling];
  }
}

- (void)_reduceTransparencyStatusDidChange:(id)a3
{
  if (self->_titleLabel)
  {
    [(NCClickInteractionPresentedView *)self _updateTitleLabelVisualStyling];
  }
}

@end