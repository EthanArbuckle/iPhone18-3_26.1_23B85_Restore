@interface WFCompactPlatterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)staticContentSizeForSize:(CGSize)size;
- (UIEdgeInsets)labelInsets;
- (UIEdgeInsets)separatorInsets;
- (UILabel)primaryLabel;
- (UILabel)secondaryLabel;
- (UIView)backdropView;
- (UIView)clippingAutoLayoutContainerView;
- (UIView)clippingContentView;
- (UIView)footerViewSeparatorView;
- (UIView)insetContentBackgroundView;
- (WFCompactActionGroupView)actionGroupView;
- (WFCompactPlatterContentClippingDelegate)contentClippingDelegate;
- (WFCompactPlatterSizingDelegate)sizingDelegate;
- (WFCompactPlatterView)initWithFrame:(CGRect)frame;
- (WFCompactTitledPlatterView)platterView;
- (double)separatorHeight;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_labelContentChanged;
- (void)applyStylingWithConfiguration:(id)configuration;
- (void)layoutContentInsideClippingView;
- (void)layoutCustomContentViewForPlatterView:(id)view;
- (void)setActions:(id)actions;
- (void)setAppearanceProvider:(id)provider;
- (void)setAttribution:(id)attribution;
- (void)setClippingContent:(BOOL)content;
- (void)setContentHeightWhenClipped:(double)clipped;
- (void)setContentVerticalOffsetWhenClipped:(double)clipped;
- (void)setContentView:(id)view;
- (void)setFooterViewHeight:(double)height;
- (void)setFooterViewHidden:(BOOL)hidden;
- (void)setHidesContentViewTopSeparator:(BOOL)separator;
- (void)setNeedsLayoutAndSizeInvalidation;
- (void)setPrimaryText:(id)text;
- (void)setPrimaryTextAlignment:(int64_t)alignment;
- (void)setSashVisible:(BOOL)visible;
- (void)setSecondaryText:(id)text;
- (void)setSecondaryTextAlignment:(int64_t)alignment;
- (void)setSecondaryTextFontStyle:(id)style;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContentViewSeparatorVisibility;
- (void)updateFooterViewSeparatorVisibility;
@end

@implementation WFCompactPlatterView

- (UIView)footerViewSeparatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_footerViewSeparatorView);

  return WeakRetained;
}

- (UIView)clippingAutoLayoutContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_clippingAutoLayoutContainerView);

  return WeakRetained;
}

- (UIView)insetContentBackgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_insetContentBackgroundView);

  return WeakRetained;
}

- (UILabel)secondaryLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryLabel);

  return WeakRetained;
}

- (UILabel)primaryLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryLabel);

  return WeakRetained;
}

- (WFCompactTitledPlatterView)platterView
{
  WeakRetained = objc_loadWeakRetained(&self->_platterView);

  return WeakRetained;
}

- (WFCompactPlatterSizingDelegate)sizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizingDelegate);

  return WeakRetained;
}

- (WFCompactPlatterContentClippingDelegate)contentClippingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentClippingDelegate);

  return WeakRetained;
}

- (UIView)clippingContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_clippingContentView);

  return WeakRetained;
}

- (UIView)backdropView
{
  WeakRetained = objc_loadWeakRetained(&self->_backdropView);

  return WeakRetained;
}

- (WFCompactActionGroupView)actionGroupView
{
  WeakRetained = objc_loadWeakRetained(&self->_actionGroupView);

  return WeakRetained;
}

- (UIEdgeInsets)separatorInsets
{
  top = self->_separatorInsets.top;
  left = self->_separatorInsets.left;
  bottom = self->_separatorInsets.bottom;
  right = self->_separatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)labelInsets
{
  top = self->_labelInsets.top;
  left = self->_labelInsets.left;
  bottom = self->_labelInsets.bottom;
  right = self->_labelInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  platterView = [(WFCompactPlatterView *)self platterView];
  v5 = [platterView visualStylingProviderForCategory:category];

  return v5;
}

- (void)setAppearanceProvider:(id)provider
{
  objc_storeStrong(&self->_appearanceProvider, provider);
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_platterView);
  [WeakRetained setAppearanceProvider:providerCopy];

  v6 = objc_loadWeakRetained(&self->_actionGroupView);
  [v6 setAppearanceProvider:providerCopy];

  [providerCopy configurePlatterView:self];
}

- (void)setSashVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_sashVisible = visible;
  platterView = [(WFCompactPlatterView *)self platterView];
  [platterView setSashVisible:visibleCopy];

  [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];

  [(WFCompactPlatterView *)self layoutIfNeeded];
}

- (void)setContentVerticalOffsetWhenClipped:(double)clipped
{
  if (self->_contentVerticalOffsetWhenClipped != clipped)
  {
    self->_contentVerticalOffsetWhenClipped = clipped;
    contentClippingDelegate = [(WFCompactPlatterView *)self contentClippingDelegate];
    if (contentClippingDelegate)
    {
      v6 = contentClippingDelegate;
      isClippingContent = [(WFCompactPlatterView *)self isClippingContent];

      if (isClippingContent)
      {
        contentClippingDelegate2 = [(WFCompactPlatterView *)self contentClippingDelegate];
        [contentClippingDelegate2 platterView:self didUpdateContentVerticalOffset:clipped];
      }
    }

    [(WFCompactPlatterView *)self layoutContentInsideClippingView];
  }
}

- (void)setContentHeightWhenClipped:(double)clipped
{
  if (self->_contentHeightWhenClipped != clipped)
  {
    self->_contentHeightWhenClipped = clipped;
    [(WFCompactPlatterView *)self layoutContentInsideClippingView];
  }
}

- (void)setClippingContent:(BOOL)content
{
  if (self->_clippingContent != content)
  {
    contentCopy = content;
    self->_clippingContent = content;
    contentClippingDelegate = [(WFCompactPlatterView *)self contentClippingDelegate];

    if (contentClippingDelegate)
    {
      contentClippingDelegate2 = [(WFCompactPlatterView *)self contentClippingDelegate];
      v8 = 0.0;
      if (contentCopy)
      {
        [(WFCompactPlatterView *)self contentVerticalOffsetWhenClipped];
      }

      [contentClippingDelegate2 platterView:self didUpdateContentVerticalOffset:v8];
    }

    [(WFCompactPlatterView *)self layoutContentInsideClippingView];
  }
}

- (void)setFooterViewHidden:(BOOL)hidden
{
  if (self->_footerViewHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_footerViewHidden = hidden;
    footerView = [(WFCompactPlatterView *)self footerView];
    [footerView setHidden:hiddenCopy];

    [(WFCompactPlatterView *)self updateFooterViewSeparatorVisibility];

    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)setFooterViewHeight:(double)height
{
  if (self->_footerViewHeight != height)
  {
    self->_footerViewHeight = height;
    if (![(WFCompactPlatterView *)self footerViewHidden])
    {

      [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
    }
  }
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  WeakRetained = objc_loadWeakRetained(&self->_actionGroupView);
  [WeakRetained removeFromSuperview];

  objc_storeStrong(&self->_actions, actions);
  if (self->_actions)
  {
    v6 = objc_opt_new();
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [v6 heightAnchor];
    v8 = [heightAnchor constraintEqualToConstant:0.0];
    [v8 setActive:1];

    v9 = [WFCompactActionGroupView alloc];
    actions = self->_actions;
    appearanceProvider = [(WFCompactPlatterView *)self appearanceProvider];
    v12 = [(WFCompactActionGroupView *)v9 initWithActions:actions appearanceProvider:appearanceProvider];

    objc_storeWeak(&self->_actionGroupView, v12);
    platterView = [(WFCompactPlatterView *)self platterView];
    customContentView = [platterView customContentView];
    [customContentView addSubview:v12];

    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }

  else
  {
    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)updateFooterViewSeparatorVisibility
{
  if ([(WFCompactPlatterView *)self insetsContent])
  {
    v3 = 1;
  }

  else
  {
    v3 = ![(WFCompactPlatterView *)self showsBottomScrollingSeparator]&& [(WFCompactPlatterView *)self footerViewHidden];
  }

  footerViewSeparatorView = [(WFCompactPlatterView *)self footerViewSeparatorView];
  isHidden = [footerViewSeparatorView isHidden];

  if (v3 != isHidden)
  {
    footerViewSeparatorView2 = [(WFCompactPlatterView *)self footerViewSeparatorView];
    [footerViewSeparatorView2 setHidden:v3];

    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)updateContentViewSeparatorVisibility
{
  if ([(WFCompactPlatterView *)self insetsContent])
  {
    hidesContentViewTopSeparator = 1;
  }

  else if ([(WFCompactPlatterView *)self showsTopScrollingSeparator])
  {
    hidesContentViewTopSeparator = 0;
  }

  else
  {
    contentView = [(WFCompactPlatterView *)self contentView];
    if (contentView)
    {
      primaryText = [(WFCompactPlatterView *)self primaryText];
      if ([primaryText length])
      {
        hidesContentViewTopSeparator = [(WFCompactPlatterView *)self hidesContentViewTopSeparator];
      }

      else
      {
        secondaryText = [(WFCompactPlatterView *)self secondaryText];
        if ([secondaryText length])
        {
          hidesContentViewTopSeparator = [(WFCompactPlatterView *)self hidesContentViewTopSeparator];
        }

        else
        {
          hidesContentViewTopSeparator = 1;
        }
      }
    }

    else
    {
      hidesContentViewTopSeparator = 1;
    }
  }

  contentViewSeparatorView = [(WFCompactPlatterView *)self contentViewSeparatorView];
  isHidden = [contentViewSeparatorView isHidden];

  if (hidesContentViewTopSeparator != isHidden)
  {
    contentViewSeparatorView2 = [(WFCompactPlatterView *)self contentViewSeparatorView];
    [contentViewSeparatorView2 setHidden:hidesContentViewTopSeparator];

    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)setHidesContentViewTopSeparator:(BOOL)separator
{
  if (self->_hidesContentViewTopSeparator != separator)
  {
    self->_hidesContentViewTopSeparator = separator;
    [(WFCompactPlatterView *)self updateContentViewSeparatorVisibility];
  }
}

- (void)setContentView:(id)view
{
  v42[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    if (viewCopy)
    {
      [(UIView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      clippingAutoLayoutContainerView = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      [clippingAutoLayoutContainerView addSubview:viewCopy];

      v34 = MEMORY[0x277CCAAD0];
      topAnchor = [(UIView *)viewCopy topAnchor];
      clippingAutoLayoutContainerView2 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      topAnchor2 = [clippingAutoLayoutContainerView2 topAnchor];
      v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v42[0] = v38;
      leadingAnchor = [(UIView *)viewCopy leadingAnchor];
      clippingAutoLayoutContainerView3 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      leadingAnchor2 = [clippingAutoLayoutContainerView3 leadingAnchor];
      v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v42[1] = v33;
      trailingAnchor = [(UIView *)viewCopy trailingAnchor];
      clippingAutoLayoutContainerView4 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      trailingAnchor2 = [clippingAutoLayoutContainerView4 trailingAnchor];
      v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v42[2] = v10;
      bottomAnchor = [(UIView *)viewCopy bottomAnchor];
      clippingAutoLayoutContainerView5 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      bottomAnchor2 = [clippingAutoLayoutContainerView5 bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v42[3] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
      [v34 activateConstraints:v15];

      if ([(WFCompactPlatterView *)self insetsContent])
      {
        insetContentBackgroundView = [(WFCompactPlatterView *)self insetContentBackgroundView];

        if (!insetContentBackgroundView)
        {
          v17 = objc_alloc(MEMORY[0x277D75D18]);
          clippingAutoLayoutContainerView6 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
          [clippingAutoLayoutContainerView6 bounds];
          v19 = [v17 initWithFrame:?];

          [v19 setAutoresizingMask:18];
          layer = [v19 layer];
          whiteColor = [MEMORY[0x277D75348] whiteColor];
          v22 = [whiteColor colorWithAlphaComponent:0.12];
          [layer setBackgroundColor:{objc_msgSend(v22, "CGColor")}];

          layer2 = [v19 layer];
          [layer2 setCompositingFilter:*MEMORY[0x277CDA5E8]];

          clippingContentView = [(WFCompactPlatterView *)self clippingContentView];
          [clippingContentView insertSubview:v19 atIndex:0];

          clippingContentView2 = [(WFCompactPlatterView *)self clippingContentView];
          layer3 = [clippingContentView2 layer];
          [layer3 setAllowsGroupBlending:0];

          [(WFCompactPlatterView *)self setInsetContentBackgroundView:v19];
        }
      }
    }

    insetsContent = [(WFCompactPlatterView *)self insetsContent];
    clippingContentView3 = [(WFCompactPlatterView *)self clippingContentView];
    layer4 = [clippingContentView3 layer];
    v30 = layer4;
    v31 = 0.0;
    if (insetsContent)
    {
      v31 = 27.0;
    }

    [layer4 setCornerRadius:v31];

    [(WFCompactPlatterView *)self updateContentViewSeparatorVisibility];
    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)_labelContentChanged
{
  universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
  v4 = MEMORY[0x277D74300];
  if (universalPreviewsEnabled)
  {
    v5 = *MEMORY[0x277D76A28];
    secondaryText = [(WFCompactPlatterView *)self secondaryText];
    v7 = [secondaryText length];
    v8 = *MEMORY[0x277D74420];
    v9 = *MEMORY[0x277D74418];
    if (!v7)
    {
      v8 = *MEMORY[0x277D74418];
    }

    v10 = [v4 _preferredFontForTextStyle:v5 weight:v8];
    primaryLabel = [(WFCompactPlatterView *)self primaryLabel];
    [primaryLabel setFont:v10];

    v12 = MEMORY[0x277D74300];
    v13 = v5;
    v14 = v9;
  }

  else
  {
    v15 = *MEMORY[0x277D76918];
    v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D743F8]];
    primaryLabel2 = [(WFCompactPlatterView *)self primaryLabel];
    [primaryLabel2 setFont:v16];

    v12 = MEMORY[0x277D74300];
    v14 = *MEMORY[0x277D74418];
    v13 = v15;
  }

  v18 = [v12 _preferredFontForTextStyle:v13 weight:v14];
  secondaryLabel = [(WFCompactPlatterView *)self secondaryLabel];
  [secondaryLabel setFont:v18];

  primaryText = [(WFCompactPlatterView *)self primaryText];
  v21 = [primaryText length] == 0;
  primaryLabel3 = [(WFCompactPlatterView *)self primaryLabel];
  [primaryLabel3 setHidden:v21];

  secondaryText2 = [(WFCompactPlatterView *)self secondaryText];
  v24 = [secondaryText2 length] == 0;
  secondaryLabel2 = [(WFCompactPlatterView *)self secondaryLabel];
  [secondaryLabel2 setHidden:v24];

  [(WFCompactPlatterView *)self updateContentViewSeparatorVisibility];

  [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
}

- (void)setSecondaryTextFontStyle:(id)style
{
  styleCopy = style;
  if (self->_secondaryTextFontStyle != styleCopy)
  {
    v9 = styleCopy;
    objc_storeStrong(&self->_secondaryTextFontStyle, style);
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v9];
    v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
    secondaryLabel = [(WFCompactPlatterView *)self secondaryLabel];
    [secondaryLabel setFont:v7];

    [(WFCompactPlatterView *)self _labelContentChanged];
    styleCopy = v9;
  }
}

- (void)setSecondaryTextAlignment:(int64_t)alignment
{
  if (self->_secondaryTextAlignment != alignment)
  {
    self->_secondaryTextAlignment = alignment;
    secondaryTextAlignment = [(WFCompactPlatterView *)self secondaryTextAlignment];
    secondaryLabel = [(WFCompactPlatterView *)self secondaryLabel];
    [secondaryLabel setTextAlignment:secondaryTextAlignment];

    [(WFCompactPlatterView *)self _labelContentChanged];
  }
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = self->_secondaryText;
  if (secondaryText != textCopy)
  {
    v10 = textCopy;
    v6 = [(NSString *)secondaryText isEqualToString:textCopy];
    textCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_secondaryText;
      self->_secondaryText = v7;

      secondaryLabel = [(WFCompactPlatterView *)self secondaryLabel];
      [secondaryLabel setText:v10];

      [(WFCompactPlatterView *)self _labelContentChanged];
      textCopy = v10;
    }
  }
}

- (void)setPrimaryTextAlignment:(int64_t)alignment
{
  if (self->_primaryTextAlignment != alignment)
  {
    self->_primaryTextAlignment = alignment;
    primaryTextAlignment = [(WFCompactPlatterView *)self primaryTextAlignment];
    primaryLabel = [(WFCompactPlatterView *)self primaryLabel];
    [primaryLabel setTextAlignment:primaryTextAlignment];

    [(WFCompactPlatterView *)self _labelContentChanged];
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = self->_primaryText;
  if (primaryText != textCopy)
  {
    v10 = textCopy;
    v6 = [(NSString *)primaryText isEqualToString:textCopy];
    textCopy = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_primaryText;
      self->_primaryText = v7;

      primaryLabel = [(WFCompactPlatterView *)self primaryLabel];
      [primaryLabel setText:v10];

      [(WFCompactPlatterView *)self _labelContentChanged];
      textCopy = v10;
    }
  }
}

- (void)setAttribution:(id)attribution
{
  attributionCopy = attribution;
  objc_storeStrong(&self->_attribution, attribution);
  icon = [attributionCopy icon];
  platterView = [(WFCompactPlatterView *)self platterView];
  [platterView setIcon:icon];

  title = [attributionCopy title];
  platterView2 = [(WFCompactPlatterView *)self platterView];
  [platterView2 setTitle:title];

  appBundleIdentifier = [attributionCopy appBundleIdentifier];
  LODWORD(platterView2) = [appBundleIdentifier isEqualToString:*MEMORY[0x277D7A2A0]];

  if (platterView2)
  {
    v10 = [MEMORY[0x277D75348] colorWithRed:0.941176474 green:0.701960802 blue:0.0 alpha:1.0];
  }

  else
  {
    appBundleIdentifier2 = [attributionCopy appBundleIdentifier];
    v12 = [appBundleIdentifier2 isEqualToString:*MEMORY[0x277D7A280]];

    if (v12)
    {
      [MEMORY[0x277D75348] systemOrangeColor];
    }

    else
    {
      [MEMORY[0x277D75348] tintColor];
    }
    v10 = ;
  }

  v13 = v10;
  [(WFCompactPlatterView *)self setTintColor:v10];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v18.receiver = self;
  v18.super_class = WFCompactPlatterView;
  [(WFCompactPlatterView *)&v18 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection = [(WFCompactPlatterView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = preferredContentSizeCategory2;
  if (preferredContentSizeCategory == preferredContentSizeCategory2)
  {
  }

  else
  {
    preferredContentSizeCategory3 = [changeCopy preferredContentSizeCategory];
    traitCollection2 = [(WFCompactPlatterView *)self traitCollection];
    preferredContentSizeCategory4 = [traitCollection2 preferredContentSizeCategory];
    v12 = [preferredContentSizeCategory3 isEqualToString:preferredContentSizeCategory4];

    if ((v12 & 1) == 0)
    {
      [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
    }
  }

  [changeCopy displayScale];
  v14 = v13;
  traitCollection3 = [(WFCompactPlatterView *)self traitCollection];
  [traitCollection3 displayScale];
  v17 = v16;

  if (v14 != v17)
  {
    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)layoutContentInsideClippingView
{
  clippingContentView = [(WFCompactPlatterView *)self clippingContentView];
  clippingAutoLayoutContainerView = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
  if ([(WFCompactPlatterView *)self isClippingContent]&& ([(WFCompactPlatterView *)self contentClippingDelegate], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(WFCompactPlatterView *)self contentVerticalOffsetWhenClipped];
    [clippingContentView bounds];
    [(WFCompactPlatterView *)self contentHeightWhenClipped];
  }

  else
  {
    [clippingContentView bounds];
  }

  [clippingAutoLayoutContainerView setFrame:?];
}

- (void)layoutCustomContentViewForPlatterView:(id)view
{
  viewCopy = view;
  customContentView = [viewCopy customContentView];
  [customContentView bounds];
  width = v5;
  v8 = v7;

  [(WFCompactPlatterView *)self labelInsets];
  v10 = v9;
  v12 = v11;
  v55 = v13;
  v15 = v14;
  [(WFCompactPlatterView *)self separatorInsets];
  v57 = v16;
  v18 = v17;
  primaryLabel = [(WFCompactPlatterView *)self primaryLabel];
  secondaryLabel = [(WFCompactPlatterView *)self secondaryLabel];
  text = [primaryLabel text];
  v22 = [text length];

  text2 = [secondaryLabel text];
  v24 = [text2 length];

  if (v22 | v24)
  {
    y = v10 + 0.0;
  }

  else
  {
    y = 0.0;
  }

  if (v22)
  {
    [primaryLabel sizeThatFits:{width - v12 - v15, v8 - y}];
    v27 = v26;
    [primaryLabel setFrame:{v12, y, width - v12 - v15, v26}];
    if (v24)
    {
      y = y + v27 + 3.0;
    }

    else
    {
      y = y + v27;
    }
  }

  if (v24)
  {
    [secondaryLabel sizeThatFits:{width - v12 - v15, v8 - y}];
    v29 = v28;
    [secondaryLabel setFrame:{v12, y, width - v12 - v15, v28}];
    y = y + v29;
  }

  if (v22 | v24)
  {
    contentView = [(WFCompactPlatterView *)self contentView];

    if (contentView)
    {
      y = v55 + y;
    }
  }

  v31 = width - (v57 + v18);
  contentViewSeparatorView = [(WFCompactPlatterView *)self contentViewSeparatorView];
  if (([contentViewSeparatorView isHidden] & 1) == 0)
  {
    [(WFCompactPlatterView *)self separatorHeight];
    v34 = v33;
    [contentViewSeparatorView setFrame:{v57, y, v31, v33}];
    y = y + v34;
  }

  footerView = [(WFCompactPlatterView *)self footerView];
  [(WFCompactPlatterView *)self footerViewHeight];
  v37 = v36;
  [(WFCompactPlatterView *)self separatorHeight];
  v39 = v38;
  footerViewHidden = [(WFCompactPlatterView *)self footerViewHidden];
  actionGroupView = [(WFCompactPlatterView *)self actionGroupView];
  v43 = actionGroupView;
  if (actionGroupView)
  {
    v44 = v37 + v39;
    if (footerViewHidden)
    {
      v44 = 0.0;
    }

    LODWORD(v42) = 1112014848;
    [actionGroupView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:v8 - y - v44 verticalFittingPriority:{COERCE_DOUBLE(1148846080), v42}];
    v46 = v45;
  }

  else
  {
    v46 = *(MEMORY[0x277CBF3A8] + 8);
  }

  [v43 setFrame:{0.0, v8 - v46, width, v46}];
  footerViewSeparatorView = [(WFCompactPlatterView *)self footerViewSeparatorView];
  [footerViewSeparatorView setFrame:{0.0, v8 - v46 - v37 - v39, width, v39}];
  [footerView setFrame:{v57, v8 - v46 - v37, v31, v37}];
  clippingContentView = [(WFCompactPlatterView *)self clippingContentView];
  contentView2 = [(WFCompactPlatterView *)self contentView];
  if (contentView2)
  {
    [clippingContentView setHidden:0];
    if (![(WFCompactPlatterView *)self suppressContentViewLayout])
    {
      v50 = v8 - y - v46;
      v51 = v37 + v39;
      x = 0.0;
      if (footerViewHidden)
      {
        v51 = 0.0;
      }

      height = v50 - v51;
      if ([(WFCompactPlatterView *)self insetsContent])
      {
        v59.origin.x = 0.0;
        v59.origin.y = y;
        v59.size.width = width;
        v59.size.height = height;
        v60 = CGRectInset(v59, 15.0, 0.0);
        x = v60.origin.x;
        y = v60.origin.y;
        width = v60.size.width;
        height = v60.size.height;
        actionGroupView2 = [(WFCompactPlatterView *)self actionGroupView];

        if (!actionGroupView2)
        {
          height = height + -15.0;
        }
      }

      [clippingContentView setFrame:{x, y, width, height}];
      [(WFCompactPlatterView *)self layoutContentInsideClippingView];
    }
  }

  else
  {
    [clippingContentView setHidden:1];
  }
}

- (void)setNeedsLayoutAndSizeInvalidation
{
  platterView = [(WFCompactPlatterView *)self platterView];
  [platterView setNeedsLayout];

  if (![(WFCompactPlatterView *)self hasScheduledSizeInvalidation])
  {
    [(WFCompactPlatterView *)self setHasScheduledSizeInvalidation:1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__WFCompactPlatterView_setNeedsLayoutAndSizeInvalidation__block_invoke;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __57__WFCompactPlatterView_setNeedsLayoutAndSizeInvalidation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sizingDelegate];
  [v2 platterViewDidInvalidateSize:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 setHasScheduledSizeInvalidation:0];
}

- (double)separatorHeight
{
  traitCollection = [(WFCompactPlatterView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = 1.0;
  if (!UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    traitCollection2 = [(WFCompactPlatterView *)self traitCollection];
    [traitCollection2 displayScale];
    v5 = 1.0 / v7;
  }

  return v5;
}

- (CGSize)staticContentSizeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(WFCompactPlatterView *)self labelInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  primaryLabel = [(WFCompactPlatterView *)self primaryLabel];
  secondaryLabel = [(WFCompactPlatterView *)self secondaryLabel];
  text = [primaryLabel text];
  v17 = [text length];

  text2 = [secondaryLabel text];
  v19 = [text2 length];

  if (v17 | v19)
  {
    v20 = v7 + 0.0;
  }

  else
  {
    v20 = 0.0;
  }

  if (v17)
  {
    [primaryLabel sizeThatFits:{width - v9 - v13, height - v20}];
    v22 = v20 + v21;
    v23 = v20 + v21 + 3.0;
    if (v19)
    {
      v20 = v23;
    }

    else
    {
      v20 = v22;
    }
  }

  if (v19)
  {
    [secondaryLabel sizeThatFits:{width - v9 - v13, height - v20}];
    v20 = v20 + v24;
  }

  if (v17 | v19)
  {
    contentView = [(WFCompactPlatterView *)self contentView];

    if (contentView)
    {
      v20 = v11 + v20;
    }
  }

  if (![(WFCompactPlatterView *)self footerViewHidden])
  {
    [(WFCompactPlatterView *)self separatorHeight];
    v27 = v20 + v26;
    [(WFCompactPlatterView *)self footerViewHeight];
    v20 = v27 + v28;
  }

  if ([(WFCompactPlatterView *)self insetsContent])
  {
    actionGroupView = [(WFCompactPlatterView *)self actionGroupView];

    if (!actionGroupView)
    {
      v20 = v20 + 15.0;
    }
  }

  actionGroupView2 = [(WFCompactPlatterView *)self actionGroupView];
  v31 = actionGroupView2;
  if (actionGroupView2)
  {
    [actionGroupView2 layoutIfNeeded];
    LODWORD(v32) = 1148846080;
    LODWORD(v33) = 1112014848;
    [v31 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height - v20 verticalFittingPriority:{v32, v33}];
    v20 = v20 + v34;
  }

  v35 = width;
  v36 = v20;
  result.height = v36;
  result.width = v35;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  platterView = [(WFCompactPlatterView *)self platterView];
  [platterView sizeThatFitsContentWithSize:{width, 0.0}];
  v8 = v7;

  [(WFCompactPlatterView *)self staticContentSizeForSize:width, fmax(height - v8, 0.0)];
  v10 = v8 + v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)applyStylingWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([configurationCopy blursBackground] & 1) != 0 || (objc_msgSend(configurationCopy, "backgroundColor"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    platterView = [(WFCompactPlatterView *)self platterView];
    [platterView setMaterialRecipe:53];
  }

  else
  {
    platterView2 = [(WFCompactPlatterView *)self platterView];
    [platterView2 setUsesBackgroundView:1];

    platterView = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundColor = [configurationCopy backgroundColor];
    [platterView setBackgroundColor:backgroundColor];

    platterView3 = [(WFCompactPlatterView *)self platterView];
    [platterView3 setBackgroundView:platterView];
  }

  platterView4 = [(WFCompactPlatterView *)self platterView];
  UIRoundToViewScale();
  v11 = v10;
  platterView5 = [(WFCompactPlatterView *)self platterView];
  [platterView5 _setContinuousCornerRadius:v11];

  platterView6 = [(WFCompactPlatterView *)self platterView];
  [platterView6 setHasShadow:1];
}

- (WFCompactPlatterView)initWithFrame:(CGRect)frame
{
  v37.receiver = self;
  v37.super_class = WFCompactPlatterView;
  v3 = [(WFCompactPlatterView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_footerViewHidden = 1;
    v3->_sashVisible = 0;
    v3->_insetsContent = 0;
    v3->_suppressContentViewLayout = 0;
    [(WFCompactPlatterView *)v3 setAccessibilityIdentifier:@"junior_platter_view"];
    layer = [(WFCompactPlatterView *)v4 layer];
    [layer setAllowsGroupOpacity:0];

    v6 = objc_alloc(MEMORY[0x277D7D508]);
    [(WFCompactPlatterView *)v4 bounds];
    v36 = [v6 initWithFrame:?];
    [v36 setAutoresizingMask:18];
    [(WFCompactPlatterView *)v4 addSubview:v36];
    objc_storeWeak(&v4->_backdropView, v36);
    v7 = [WFCompactTitledPlatterView alloc];
    [(WFCompactPlatterView *)v4 bounds];
    v8 = [(PLPlatterView *)v7 initWithFrame:?];
    [(WFCompactTitledPlatterView *)v8 setDelegate:v4];
    [(WFCompactTitledPlatterView *)v8 setAutoresizingMask:18];
    [(WFCompactPlatterView *)v4 addSubview:v8];
    objc_storeWeak(&v4->_platterView, v8);
    customContentView = [(PLPlatterView *)v8 customContentView];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v10 setNumberOfLines:0];
    [v10 setAdjustsFontForContentSizeCategory:1];
    [customContentView addSubview:v10];
    objc_storeWeak(&v4->_primaryLabel, v10);
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v11 setNumberOfLines:0];
    [v11 setAdjustsFontForContentSizeCategory:1];
    [customContentView addSubview:v11];
    objc_storeWeak(&v4->_secondaryLabel, v11);
    v35 = [MEMORY[0x277D75210] effectWithStyle:1200];
    v12 = [MEMORY[0x277D75D00] effectForBlurEffect:v35 style:4];
    v13 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v12];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v15 = [blackColor colorWithAlphaComponent:0.6];
    contentView = [(UIView *)v13 contentView];
    [contentView setBackgroundColor:v15];

    [customContentView addSubview:v13];
    contentViewSeparatorView = v4->_contentViewSeparatorView;
    v4->_contentViewSeparatorView = v13;
    v34 = v13;

    [(WFCompactPlatterView *)v4 updateContentViewSeparatorVisibility];
    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIView *)v18 setHidden:[(WFCompactPlatterView *)v4 footerViewHidden]];
    [customContentView addSubview:v18];
    footerView = v4->_footerView;
    v4->_footerView = v18;
    v33 = v18;

    v20 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v12];
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    v22 = [blackColor2 colorWithAlphaComponent:0.6];
    contentView2 = [v20 contentView];
    [contentView2 setBackgroundColor:v22];

    [v20 setHidden:{-[WFCompactPlatterView footerViewHidden](v4, "footerViewHidden")}];
    [customContentView addSubview:v20];
    objc_storeWeak(&v4->_footerViewSeparatorView, v20);
    v24 = objc_opt_new();
    [v24 setClipsToBounds:1];
    [customContentView addSubview:v24];
    objc_storeWeak(&v4->_clippingContentView, v24);
    v25 = objc_opt_new();
    [v24 addSubview:v25];
    objc_storeWeak(&v4->_clippingAutoLayoutContainerView, v25);
    v26 = *(MEMORY[0x277D768C8] + 16);
    *&v4->_separatorInsets.top = *MEMORY[0x277D768C8];
    *&v4->_separatorInsets.bottom = v26;
    universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];

    v28 = 5.0;
    if (universalPreviewsEnabled)
    {
      v28 = 6.0;
    }

    v29 = 22.0;
    if (universalPreviewsEnabled)
    {
      v29 = 27.0;
    }

    v4->_labelInsets.top = v28;
    v4->_labelInsets.left = v29;
    if (universalPreviewsEnabled)
    {
      v30 = 14.0;
    }

    else
    {
      v30 = 13.0;
    }

    v4->_labelInsets.bottom = v30;
    v4->_labelInsets.right = v29;
    v31 = v4;
  }

  return v4;
}

@end