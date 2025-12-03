@interface PLPlatterDiscoveryView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PLPlatterDiscoveryView)init;
- (UIView)graphicView;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_configureBodyLabelIfNeccessary;
- (void)_configureClearButtonIfNeccessary;
- (void)_configureTitleTextLabelIfNeccessary;
- (void)_layoutSubviewInBounds:(CGRect)bounds measuringOnly:(CGSize *)only;
- (void)layoutSubviews;
- (void)setBodyText:(id)text;
- (void)setClearAction:(id)action;
- (void)setGraphicView:(id)view;
- (void)setTitleText:(id)text;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider;
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

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleText = [(PLPlatterDiscoveryView *)self titleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (textCopy)
    {
      [(PLPlatterDiscoveryView *)self _configureTitleTextLabelIfNeccessary];
      [(UILabel *)self->_titleTextLabel setText:textCopy];
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

- (void)setBodyText:(id)text
{
  textCopy = text;
  bodyText = [(PLPlatterDiscoveryView *)self bodyText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    if (textCopy)
    {
      [(PLPlatterDiscoveryView *)self _configureBodyLabelIfNeccessary];
      [(UILabel *)self->_bodyTextLabel setText:textCopy];
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
  subviews = [(UIView *)self->_graphicContainerView subviews];
  firstObject = [subviews firstObject];

  return firstObject;
}

- (void)setGraphicView:(id)view
{
  viewCopy = view;
  graphicView = [(PLPlatterDiscoveryView *)self graphicView];

  if (graphicView)
  {
    graphicView2 = [(PLPlatterDiscoveryView *)self graphicView];
    [graphicView2 removeFromSuperview];
  }

  graphicContainerView = self->_graphicContainerView;
  v7 = viewCopy;
  if (viewCopy)
  {
    if (!graphicContainerView)
    {
      v8 = objc_alloc_init(MEMORY[0x277D75D18]);
      v9 = self->_graphicContainerView;
      self->_graphicContainerView = v8;

      customContentView = [(PLPlatterView *)self customContentView];
      [customContentView addSubview:self->_graphicContainerView];

      customContentView2 = [(PLPlatterView *)self customContentView];
      [customContentView2 sendSubviewToBack:self->_graphicContainerView];

      v7 = viewCopy;
    }

    [v7 setAutoresizingMask:18];
    [(UIView *)self->_graphicContainerView addSubview:viewCopy];
  }

  else
  {
    [(UIView *)graphicContainerView removeFromSuperview];
    v12 = self->_graphicContainerView;
    self->_graphicContainerView = 0;
  }

  [(PLPlatterDiscoveryView *)self setNeedsLayout];
}

- (void)setClearAction:(id)action
{
  actionCopy = action;
  clearButton = self->_clearButton;
  if (clearButton)
  {
    [(UIButton *)clearButton removeFromSuperview];
    v6 = self->_clearButton;
    self->_clearButton = 0;
  }

  objc_storeStrong(&self->_clearAction, action);
  if (self->_clearAction)
  {
    [(PLPlatterDiscoveryView *)self _configureClearButtonIfNeccessary];
    [(UIButton *)self->_clearButton addAction:self->_clearAction forControlEvents:64];
  }

  [(PLPlatterDiscoveryView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
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

    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
    v6 = [defaultFontProvider preferredFontForTextStyle:*MEMORY[0x277D76938] hiFontStyle:4];

    v7 = [MEMORY[0x277D755D0] configurationWithFont:v6];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark" withConfiguration:v7];
    [plainButtonConfiguration setImage:v8];
    [(UIButton *)self->_clearButton setConfiguration:plainButtonConfiguration];
    [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_clearButton style:1 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
    customContentView = [(PLPlatterView *)self customContentView];
    [customContentView addSubview:self->_clearButton];

    customContentView2 = [(PLPlatterView *)self customContentView];
    [customContentView2 bringSubviewToFront:self->_clearButton];
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
    titleText = [(PLPlatterDiscoveryView *)self titleText];
    [(UILabel *)v6 setText:titleText];

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
    customContentView = [(PLPlatterView *)self customContentView];
    [customContentView addSubview:self->_titleTextLabel];
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
    bodyText = [(PLPlatterDiscoveryView *)self bodyText];
    [(UILabel *)v5 setText:bodyText];

    v7 = self->_bodyTextLabel;
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
    [(UILabel *)v7 setFont:v8];

    [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_bodyTextLabel style:1 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
    [(UILabel *)self->_bodyTextLabel setNumberOfLines:0];
    customContentView = [(PLPlatterView *)self customContentView];
    [customContentView addSubview:self->_bodyTextLabel];
  }
}

- (void)_layoutSubviewInBounds:(CGRect)bounds measuringOnly:(CGSize *)only
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _shouldReverseLayoutDirection = [(PLPlatterDiscoveryView *)self _shouldReverseLayoutDirection];
  traitCollection = [(PLPlatterDiscoveryView *)self traitCollection];
  [traitCollection displayScale];

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
    if (!only)
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
    if (!only)
    {
      [(UILabel *)self->_bodyTextLabel setFrame:v24, v25, v26, v27];
    }

    v39.origin.x = v28;
    v39.origin.y = v29;
    v39.size.width = v30;
    v39.size.height = v31;
    CGRectGetMaxY(v39);
  }

  if (only)
  {
    UISizeRoundToScale();
    only->width = v32;
    only->height = v33;
  }

  else
  {
    UIRectIntegralWithScale();
    [(UIView *)self->_graphicContainerView setFrame:?];
    clearButton = self->_clearButton;
    v35 = v12 + -2.0 + -44.0;
    if (_shouldReverseLayoutDirection)
    {
      v35 = 2.0;
    }

    [(UIButton *)clearButton setFrame:v35];
  }
}

- (id)visualStylingProviderForCategory:(int64_t)category
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
    v4 = [(PLPlatterView *)&v6 visualStylingProviderForCategory:category];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(PLPlatterDiscoveryView *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v9 = [requiredVisualStyleCategories containsObject:v8];

  if ((v9 & 1) == 0)
  {
    [PLPlatterDiscoveryView setVisualStylingProvider:a2 forCategory:self];
  }

  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  v11 = providerCopy;
  if (strokeVisualStylingProvider != providerCopy)
  {
    v12 = providerCopy;
    v13 = self->_strokeVisualStylingProvider;
    self->_strokeVisualStylingProvider = v12;
    v14 = strokeVisualStylingProvider;

    [(PLPlatterDiscoveryView *)self visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:category outgoingProvider:v14];
    v11 = providerCopy;
  }
}

- (void)visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider
{
  titleTextLabel = self->_titleTextLabel;
  providerCopy = provider;
  changeCopy = change;
  [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:titleTextLabel style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_bodyTextLabel style:1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:self->_clearButton style:1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
}

- (void)updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider
{
  if (view)
  {
    providerCopy = provider;
    viewCopy = view;
    [outgoingProvider stopAutomaticallyUpdatingView:viewCopy];
    [providerCopy automaticallyUpdateView:viewCopy withStyle:style];
  }
}

- (void)setVisualStylingProvider:(uint64_t)a1 forCategory:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PLPlatterDiscoveryView.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"[[self requiredVisualStyleCategories] containsObject:@(category)]"}];
}

@end