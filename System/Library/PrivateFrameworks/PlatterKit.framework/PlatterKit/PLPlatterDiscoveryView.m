@interface PLPlatterDiscoveryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PLPlatterDiscoveryView)init;
- (UIView)graphicView;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_configureBodyLabelIfNeccessary;
- (void)_configureClearButtonIfNeccessary;
- (void)_configureTitleTextLabelIfNeccessary;
- (void)_layoutSubviewInBounds:(CGRect)a3 measuringOnly:(CGSize *)a4;
- (void)layoutSubviews;
- (void)setBodyText:(id)a3;
- (void)setClearAction:(id)a3;
- (void)setGraphicView:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
@end

@implementation PLPlatterDiscoveryView

- (PLPlatterDiscoveryView)init
{
  v7.receiver = self;
  v7.super_class = PLPlatterDiscoveryView;
  v2 = [(PLPlatterView *)&v7 initWithRecipe:1];
  v3 = v2;
  if (v2)
  {
    [(PLPlatterView *)v2 setUsesBackgroundView:0];
    v4 = [(PLPlatterDiscoveryView *)v3 visualStylingProviderForCategory:1];
    strokeVisualStylingProvider = v3->_strokeVisualStylingProvider;
    v3->_strokeVisualStylingProvider = v4;
  }

  return v3;
}

- (void)setTitleText:(id)a3
{
  v7 = a3;
  v4 = [(PLPlatterDiscoveryView *)self titleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      [(PLPlatterDiscoveryView *)self _configureTitleTextLabelIfNeccessary];
      [(UILabel *)self->_titleTextLabel setText:v7];
    }

    else
    {
      [(UILabel *)self->_titleTextLabel removeFromSuperview];
      titleTextLabel = self->_titleTextLabel;
      self->_titleTextLabel = 0;
    }

    [(PLPlatterDiscoveryView *)self setNeedsLayout];
  }
}

- (void)setBodyText:(id)a3
{
  v7 = a3;
  v4 = [(PLPlatterDiscoveryView *)self bodyText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (v7)
    {
      [(PLPlatterDiscoveryView *)self _configureBodyLabelIfNeccessary];
      [(UILabel *)self->_bodyTextLabel setText:v7];
    }

    else
    {
      [(UILabel *)self->_bodyTextLabel removeFromSuperview];
      bodyTextLabel = self->_bodyTextLabel;
      self->_bodyTextLabel = 0;
    }

    [(PLPlatterDiscoveryView *)self setNeedsLayout];
  }
}

- (UIView)graphicView
{
  v2 = [(UIView *)self->_graphicContainerView subviews];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setGraphicView:(id)a3
{
  v13 = a3;
  v4 = [(PLPlatterDiscoveryView *)self graphicView];

  if (v4)
  {
    v5 = [(PLPlatterDiscoveryView *)self graphicView];
    [v5 removeFromSuperview];
  }

  graphicContainerView = self->_graphicContainerView;
  v7 = v13;
  if (v13)
  {
    if (!graphicContainerView)
    {
      v8 = objc_alloc_init(MEMORY[0x277D75D18]);
      v9 = self->_graphicContainerView;
      self->_graphicContainerView = v8;

      v10 = [(PLPlatterView *)self customContentView];
      [v10 addSubview:self->_graphicContainerView];

      v11 = [(PLPlatterView *)self customContentView];
      [v11 sendSubviewToBack:self->_graphicContainerView];

      v7 = v13;
    }

    [v7 setAutoresizingMask:18];
    [(UIView *)self->_graphicContainerView addSubview:v13];
  }

  else
  {
    [(UIView *)graphicContainerView removeFromSuperview];
    v12 = self->_graphicContainerView;
    self->_graphicContainerView = 0;
  }

  [(PLPlatterDiscoveryView *)self setNeedsLayout];
}

- (void)setClearAction:(id)a3
{
  v7 = a3;
  clearButton = self->_clearButton;
  if (clearButton)
  {
    [(UIButton *)clearButton removeFromSuperview];
    v6 = self->_clearButton;
    self->_clearButton = 0;
  }

  objc_storeStrong(&self->_clearAction, a3);
  if (self->_clearAction)
  {
    [(PLPlatterDiscoveryView *)self _configureClearButtonIfNeccessary];
    [(UIButton *)self->_clearButton addAction:self->_clearAction forControlEvents:64];
  }

  [(PLPlatterDiscoveryView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v6 = *MEMORY[0x277CBF3A8];
  BSRectWithSize();
  [(PLPlatterDiscoveryView *)self _layoutSubviewInBounds:&v6 measuringOnly:?];
  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLPlatterDiscoveryView;
  [(PLPlatterView *)&v3 layoutSubviews];
  [(PLPlatterDiscoveryView *)self bounds];
  if (CGRectGetWidth(v4) > 0.0)
  {
    [(PLPlatterDiscoveryView *)self bounds];
    [(PLPlatterDiscoveryView *)self _layoutSubviewInBounds:0 measuringOnly:?];
  }
}

- (void)_configureClearButtonIfNeccessary
{
  if (!self->_clearButton)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75220]);
    clearButton = self->_clearButton;
    self->_clearButton = v3;

    v11 = [MEMORY[0x277D75230] plainButtonConfiguration];
    v5 = [MEMORY[0x277CF0D60] defaultFontProvider];
    v6 = [v5 preferredFontForTextStyle:*MEMORY[0x277D76938] hiFontStyle:4];

    v7 = [MEMORY[0x277D755D0] configurationWithFont:v6];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v7];
    [v11 setImage:v8];
    [(UIButton *)self->_clearButton setConfiguration:v11];
    [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_clearButton style:1 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
    v9 = [(PLPlatterView *)self customContentView];
    [v9 addSubview:self->_clearButton];

    v10 = [(PLPlatterView *)self customContentView];
    [v10 bringSubviewToFront:self->_clearButton];
  }
}

- (void)_configureTitleTextLabelIfNeccessary
{
  if (!self->_titleTextLabel)
  {
    v15 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76998] addingSymbolicTraits:2 options:0];
    v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A0] addingSymbolicTraits:2 options:0];
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleTextLabel = self->_titleTextLabel;
    self->_titleTextLabel = v4;

    v6 = self->_titleTextLabel;
    v7 = [(PLPlatterDiscoveryView *)self titleText];
    [(UILabel *)v6 setText:v7];

    v8 = self->_titleTextLabel;
    v9 = [MEMORY[0x277D74300] fontWithDescriptor:v15 size:0.0];
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)self->_titleTextLabel setAdjustsFontSizeToFitWidth:1];
    v10 = self->_titleTextLabel;
    [v3 pointSize];
    v12 = v11;
    [v15 pointSize];
    [(UILabel *)v10 setMinimumScaleFactor:v12 / v13];
    [(UILabel *)self->_titleTextLabel setNumberOfLines:0];
    [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_titleTextLabel style:0 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
    v14 = [(PLPlatterView *)self customContentView];
    [v14 addSubview:self->_titleTextLabel];
  }
}

- (void)_configureBodyLabelIfNeccessary
{
  if (!self->_bodyTextLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    bodyTextLabel = self->_bodyTextLabel;
    self->_bodyTextLabel = v3;

    v5 = self->_bodyTextLabel;
    v6 = [(PLPlatterDiscoveryView *)self bodyText];
    [(UILabel *)v5 setText:v6];

    v7 = self->_bodyTextLabel;
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
    [(UILabel *)v7 setFont:v8];

    [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_bodyTextLabel style:1 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
    [(UILabel *)self->_bodyTextLabel setNumberOfLines:0];
    v9 = [(PLPlatterView *)self customContentView];
    [v9 addSubview:self->_bodyTextLabel];
  }
}

- (void)_layoutSubviewInBounds:(CGRect)a3 measuringOnly:(CGSize *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(PLPlatterDiscoveryView *)self _shouldReverseLayoutDirection];
  v11 = [(PLPlatterDiscoveryView *)self traitCollection];
  [v11 displayScale];

  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v12 = CGRectGetWidth(v37);
  v13 = v12 * 0.5;
  titleTextLabel = self->_titleTextLabel;
  if (titleTextLabel)
  {
    [(UILabel *)titleTextLabel sizeThatFits:v13, 1.79769313e308];
    UIRectIntegralWithScale();
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v18;
    if (!a4)
    {
      [(UILabel *)self->_titleTextLabel setFrame:v15, v16, v17, v18];
    }

    v38.origin.x = v19;
    v38.origin.y = v20;
    v38.size.width = v21;
    v38.size.height = v22;
    CGRectGetMaxY(v38);
  }

  bodyTextLabel = self->_bodyTextLabel;
  if (bodyTextLabel)
  {
    [(UILabel *)bodyTextLabel sizeThatFits:v13, 1.79769313e308];
    UIRectIntegralWithScale();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    if (!a4)
    {
      [(UILabel *)self->_bodyTextLabel setFrame:v24, v25, v26, v27];
    }

    v39.origin.x = v28;
    v39.origin.y = v29;
    v39.size.width = v30;
    v39.size.height = v31;
    CGRectGetMaxY(v39);
  }

  if (a4)
  {
    UISizeRoundToScale();
    a4->width = v32;
    a4->height = v33;
  }

  else
  {
    UIRectIntegralWithScale();
    [(UIView *)self->_graphicContainerView setFrame:?];
    clearButton = self->_clearButton;
    v35 = v12 + -2.0 + -44.0;
    if (v10)
    {
      v35 = 2.0;
    }

    [(UIButton *)clearButton setFrame:v35];
  }
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider)
  {
    v4 = strokeVisualStylingProvider;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PLPlatterDiscoveryView;
    v4 = [(PLPlatterView *)&v6 visualStylingProviderForCategory:a3];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v15 = a3;
  v7 = [(PLPlatterDiscoveryView *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    [PLPlatterDiscoveryView setVisualStylingProvider:a2 forCategory:self];
  }

  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  v11 = v15;
  if (strokeVisualStylingProvider != v15)
  {
    v12 = v15;
    v13 = self->_strokeVisualStylingProvider;
    self->_strokeVisualStylingProvider = v12;
    v14 = strokeVisualStylingProvider;

    [(PLPlatterDiscoveryView *)self visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:a4 outgoingProvider:v14];
    v11 = v15;
  }
}

- (void)visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  titleTextLabel = self->_titleTextLabel;
  v8 = a5;
  v9 = a3;
  [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:titleTextLabel style:0 visualStylingProvider:v9 outgoingProvider:v8];
  [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_bodyTextLabel style:1 visualStylingProvider:v9 outgoingProvider:v8];
  [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_clearButton style:1 visualStylingProvider:v9 outgoingProvider:v8];
}

- (void)updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  if (a3)
  {
    v9 = a5;
    v10 = a3;
    [a6 stopAutomaticallyUpdatingView:v10];
    [v9 automaticallyUpdateView:v10 withStyle:a4];
  }
}

- (void)setVisualStylingProvider:(uint64_t)a1 forCategory:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PLPlatterDiscoveryView.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"[[self requiredVisualStyleCategories] containsObject:@(category)]"}];
}

@end