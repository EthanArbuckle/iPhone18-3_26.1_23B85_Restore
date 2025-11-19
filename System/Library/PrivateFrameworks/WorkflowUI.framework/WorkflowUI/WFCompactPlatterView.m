@interface WFCompactPlatterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)staticContentSizeForSize:(CGSize)a3;
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
- (WFCompactPlatterView)initWithFrame:(CGRect)a3;
- (WFCompactTitledPlatterView)platterView;
- (double)separatorHeight;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_labelContentChanged;
- (void)applyStylingWithConfiguration:(id)a3;
- (void)layoutContentInsideClippingView;
- (void)layoutCustomContentViewForPlatterView:(id)a3;
- (void)setActions:(id)a3;
- (void)setAppearanceProvider:(id)a3;
- (void)setAttribution:(id)a3;
- (void)setClippingContent:(BOOL)a3;
- (void)setContentHeightWhenClipped:(double)a3;
- (void)setContentVerticalOffsetWhenClipped:(double)a3;
- (void)setContentView:(id)a3;
- (void)setFooterViewHeight:(double)a3;
- (void)setFooterViewHidden:(BOOL)a3;
- (void)setHidesContentViewTopSeparator:(BOOL)a3;
- (void)setNeedsLayoutAndSizeInvalidation;
- (void)setPrimaryText:(id)a3;
- (void)setPrimaryTextAlignment:(int64_t)a3;
- (void)setSashVisible:(BOOL)a3;
- (void)setSecondaryText:(id)a3;
- (void)setSecondaryTextAlignment:(int64_t)a3;
- (void)setSecondaryTextFontStyle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  v4 = [(WFCompactPlatterView *)self platterView];
  v5 = [v4 visualStylingProviderForCategory:a3];

  return v5;
}

- (void)setAppearanceProvider:(id)a3
{
  objc_storeStrong(&self->_appearanceProvider, a3);
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_platterView);
  [WeakRetained setAppearanceProvider:v7];

  v6 = objc_loadWeakRetained(&self->_actionGroupView);
  [v6 setAppearanceProvider:v7];

  [v7 configurePlatterView:self];
}

- (void)setSashVisible:(BOOL)a3
{
  v3 = a3;
  self->_sashVisible = a3;
  v5 = [(WFCompactPlatterView *)self platterView];
  [v5 setSashVisible:v3];

  [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];

  [(WFCompactPlatterView *)self layoutIfNeeded];
}

- (void)setContentVerticalOffsetWhenClipped:(double)a3
{
  if (self->_contentVerticalOffsetWhenClipped != a3)
  {
    self->_contentVerticalOffsetWhenClipped = a3;
    v5 = [(WFCompactPlatterView *)self contentClippingDelegate];
    if (v5)
    {
      v6 = v5;
      v7 = [(WFCompactPlatterView *)self isClippingContent];

      if (v7)
      {
        v8 = [(WFCompactPlatterView *)self contentClippingDelegate];
        [v8 platterView:self didUpdateContentVerticalOffset:a3];
      }
    }

    [(WFCompactPlatterView *)self layoutContentInsideClippingView];
  }
}

- (void)setContentHeightWhenClipped:(double)a3
{
  if (self->_contentHeightWhenClipped != a3)
  {
    self->_contentHeightWhenClipped = a3;
    [(WFCompactPlatterView *)self layoutContentInsideClippingView];
  }
}

- (void)setClippingContent:(BOOL)a3
{
  if (self->_clippingContent != a3)
  {
    v4 = a3;
    self->_clippingContent = a3;
    v6 = [(WFCompactPlatterView *)self contentClippingDelegate];

    if (v6)
    {
      v7 = [(WFCompactPlatterView *)self contentClippingDelegate];
      v8 = 0.0;
      if (v4)
      {
        [(WFCompactPlatterView *)self contentVerticalOffsetWhenClipped];
      }

      [v7 platterView:self didUpdateContentVerticalOffset:v8];
    }

    [(WFCompactPlatterView *)self layoutContentInsideClippingView];
  }
}

- (void)setFooterViewHidden:(BOOL)a3
{
  if (self->_footerViewHidden != a3)
  {
    v4 = a3;
    self->_footerViewHidden = a3;
    v6 = [(WFCompactPlatterView *)self footerView];
    [v6 setHidden:v4];

    [(WFCompactPlatterView *)self updateFooterViewSeparatorVisibility];

    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)setFooterViewHeight:(double)a3
{
  if (self->_footerViewHeight != a3)
  {
    self->_footerViewHeight = a3;
    if (![(WFCompactPlatterView *)self footerViewHidden])
    {

      [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
    }
  }
}

- (void)setActions:(id)a3
{
  v15 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionGroupView);
  [WeakRetained removeFromSuperview];

  objc_storeStrong(&self->_actions, a3);
  if (self->_actions)
  {
    v6 = objc_opt_new();
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v6 heightAnchor];
    v8 = [v7 constraintEqualToConstant:0.0];
    [v8 setActive:1];

    v9 = [WFCompactActionGroupView alloc];
    actions = self->_actions;
    v11 = [(WFCompactPlatterView *)self appearanceProvider];
    v12 = [(WFCompactActionGroupView *)v9 initWithActions:actions appearanceProvider:v11];

    objc_storeWeak(&self->_actionGroupView, v12);
    v13 = [(WFCompactPlatterView *)self platterView];
    v14 = [v13 customContentView];
    [v14 addSubview:v12];

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

  v4 = [(WFCompactPlatterView *)self footerViewSeparatorView];
  v5 = [v4 isHidden];

  if (v3 != v5)
  {
    v6 = [(WFCompactPlatterView *)self footerViewSeparatorView];
    [v6 setHidden:v3];

    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)updateContentViewSeparatorVisibility
{
  if ([(WFCompactPlatterView *)self insetsContent])
  {
    v3 = 1;
  }

  else if ([(WFCompactPlatterView *)self showsTopScrollingSeparator])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(WFCompactPlatterView *)self contentView];
    if (v4)
    {
      v5 = [(WFCompactPlatterView *)self primaryText];
      if ([v5 length])
      {
        v3 = [(WFCompactPlatterView *)self hidesContentViewTopSeparator];
      }

      else
      {
        v6 = [(WFCompactPlatterView *)self secondaryText];
        if ([v6 length])
        {
          v3 = [(WFCompactPlatterView *)self hidesContentViewTopSeparator];
        }

        else
        {
          v3 = 1;
        }
      }
    }

    else
    {
      v3 = 1;
    }
  }

  v7 = [(WFCompactPlatterView *)self contentViewSeparatorView];
  v8 = [v7 isHidden];

  if (v3 != v8)
  {
    v9 = [(WFCompactPlatterView *)self contentViewSeparatorView];
    [v9 setHidden:v3];

    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)setHidesContentViewTopSeparator:(BOOL)a3
{
  if (self->_hidesContentViewTopSeparator != a3)
  {
    self->_hidesContentViewTopSeparator = a3;
    [(WFCompactPlatterView *)self updateContentViewSeparatorVisibility];
  }
}

- (void)setContentView:(id)a3
{
  v42[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    if (v5)
    {
      [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      [v7 addSubview:v5];

      v34 = MEMORY[0x277CCAAD0];
      v40 = [(UIView *)v5 topAnchor];
      v41 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      v39 = [v41 topAnchor];
      v38 = [v40 constraintEqualToAnchor:v39];
      v42[0] = v38;
      v36 = [(UIView *)v5 leadingAnchor];
      v37 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      v35 = [v37 leadingAnchor];
      v33 = [v36 constraintEqualToAnchor:v35];
      v42[1] = v33;
      v32 = [(UIView *)v5 trailingAnchor];
      v8 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      v9 = [v8 trailingAnchor];
      v10 = [v32 constraintEqualToAnchor:v9];
      v42[2] = v10;
      v11 = [(UIView *)v5 bottomAnchor];
      v12 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
      v13 = [v12 bottomAnchor];
      v14 = [v11 constraintEqualToAnchor:v13];
      v42[3] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
      [v34 activateConstraints:v15];

      if ([(WFCompactPlatterView *)self insetsContent])
      {
        v16 = [(WFCompactPlatterView *)self insetContentBackgroundView];

        if (!v16)
        {
          v17 = objc_alloc(MEMORY[0x277D75D18]);
          v18 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
          [v18 bounds];
          v19 = [v17 initWithFrame:?];

          [v19 setAutoresizingMask:18];
          v20 = [v19 layer];
          v21 = [MEMORY[0x277D75348] whiteColor];
          v22 = [v21 colorWithAlphaComponent:0.12];
          [v20 setBackgroundColor:{objc_msgSend(v22, "CGColor")}];

          v23 = [v19 layer];
          [v23 setCompositingFilter:*MEMORY[0x277CDA5E8]];

          v24 = [(WFCompactPlatterView *)self clippingContentView];
          [v24 insertSubview:v19 atIndex:0];

          v25 = [(WFCompactPlatterView *)self clippingContentView];
          v26 = [v25 layer];
          [v26 setAllowsGroupBlending:0];

          [(WFCompactPlatterView *)self setInsetContentBackgroundView:v19];
        }
      }
    }

    v27 = [(WFCompactPlatterView *)self insetsContent];
    v28 = [(WFCompactPlatterView *)self clippingContentView];
    v29 = [v28 layer];
    v30 = v29;
    v31 = 0.0;
    if (v27)
    {
      v31 = 27.0;
    }

    [v29 setCornerRadius:v31];

    [(WFCompactPlatterView *)self updateContentViewSeparatorVisibility];
    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)_labelContentChanged
{
  v3 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
  v4 = MEMORY[0x277D74300];
  if (v3)
  {
    v5 = *MEMORY[0x277D76A28];
    v6 = [(WFCompactPlatterView *)self secondaryText];
    v7 = [v6 length];
    v8 = *MEMORY[0x277D74420];
    v9 = *MEMORY[0x277D74418];
    if (!v7)
    {
      v8 = *MEMORY[0x277D74418];
    }

    v10 = [v4 _preferredFontForTextStyle:v5 weight:v8];
    v11 = [(WFCompactPlatterView *)self primaryLabel];
    [v11 setFont:v10];

    v12 = MEMORY[0x277D74300];
    v13 = v5;
    v14 = v9;
  }

  else
  {
    v15 = *MEMORY[0x277D76918];
    v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D743F8]];
    v17 = [(WFCompactPlatterView *)self primaryLabel];
    [v17 setFont:v16];

    v12 = MEMORY[0x277D74300];
    v14 = *MEMORY[0x277D74418];
    v13 = v15;
  }

  v18 = [v12 _preferredFontForTextStyle:v13 weight:v14];
  v19 = [(WFCompactPlatterView *)self secondaryLabel];
  [v19 setFont:v18];

  v20 = [(WFCompactPlatterView *)self primaryText];
  v21 = [v20 length] == 0;
  v22 = [(WFCompactPlatterView *)self primaryLabel];
  [v22 setHidden:v21];

  v23 = [(WFCompactPlatterView *)self secondaryText];
  v24 = [v23 length] == 0;
  v25 = [(WFCompactPlatterView *)self secondaryLabel];
  [v25 setHidden:v24];

  [(WFCompactPlatterView *)self updateContentViewSeparatorVisibility];

  [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
}

- (void)setSecondaryTextFontStyle:(id)a3
{
  v5 = a3;
  if (self->_secondaryTextFontStyle != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_secondaryTextFontStyle, a3);
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v9];
    v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
    v8 = [(WFCompactPlatterView *)self secondaryLabel];
    [v8 setFont:v7];

    [(WFCompactPlatterView *)self _labelContentChanged];
    v5 = v9;
  }
}

- (void)setSecondaryTextAlignment:(int64_t)a3
{
  if (self->_secondaryTextAlignment != a3)
  {
    self->_secondaryTextAlignment = a3;
    v5 = [(WFCompactPlatterView *)self secondaryTextAlignment];
    v6 = [(WFCompactPlatterView *)self secondaryLabel];
    [v6 setTextAlignment:v5];

    [(WFCompactPlatterView *)self _labelContentChanged];
  }
}

- (void)setSecondaryText:(id)a3
{
  v4 = a3;
  secondaryText = self->_secondaryText;
  if (secondaryText != v4)
  {
    v10 = v4;
    v6 = [(NSString *)secondaryText isEqualToString:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_secondaryText;
      self->_secondaryText = v7;

      v9 = [(WFCompactPlatterView *)self secondaryLabel];
      [v9 setText:v10];

      [(WFCompactPlatterView *)self _labelContentChanged];
      v4 = v10;
    }
  }
}

- (void)setPrimaryTextAlignment:(int64_t)a3
{
  if (self->_primaryTextAlignment != a3)
  {
    self->_primaryTextAlignment = a3;
    v5 = [(WFCompactPlatterView *)self primaryTextAlignment];
    v6 = [(WFCompactPlatterView *)self primaryLabel];
    [v6 setTextAlignment:v5];

    [(WFCompactPlatterView *)self _labelContentChanged];
  }
}

- (void)setPrimaryText:(id)a3
{
  v4 = a3;
  primaryText = self->_primaryText;
  if (primaryText != v4)
  {
    v10 = v4;
    v6 = [(NSString *)primaryText isEqualToString:v4];
    v4 = v10;
    if (!v6)
    {
      v7 = [(NSString *)v10 copy];
      v8 = self->_primaryText;
      self->_primaryText = v7;

      v9 = [(WFCompactPlatterView *)self primaryLabel];
      [v9 setText:v10];

      [(WFCompactPlatterView *)self _labelContentChanged];
      v4 = v10;
    }
  }
}

- (void)setAttribution:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_attribution, a3);
  v5 = [v14 icon];
  v6 = [(WFCompactPlatterView *)self platterView];
  [v6 setIcon:v5];

  v7 = [v14 title];
  v8 = [(WFCompactPlatterView *)self platterView];
  [v8 setTitle:v7];

  v9 = [v14 appBundleIdentifier];
  LODWORD(v8) = [v9 isEqualToString:*MEMORY[0x277D7A2A0]];

  if (v8)
  {
    v10 = [MEMORY[0x277D75348] colorWithRed:0.941176474 green:0.701960802 blue:0.0 alpha:1.0];
  }

  else
  {
    v11 = [v14 appBundleIdentifier];
    v12 = [v11 isEqualToString:*MEMORY[0x277D7A280]];

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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFCompactPlatterView;
  [(WFCompactPlatterView *)&v18 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [(WFCompactPlatterView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = v7;
  if (v5 == v7)
  {
  }

  else
  {
    v9 = [v4 preferredContentSizeCategory];
    v10 = [(WFCompactPlatterView *)self traitCollection];
    v11 = [v10 preferredContentSizeCategory];
    v12 = [v9 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
    }
  }

  [v4 displayScale];
  v14 = v13;
  v15 = [(WFCompactPlatterView *)self traitCollection];
  [v15 displayScale];
  v17 = v16;

  if (v14 != v17)
  {
    [(WFCompactPlatterView *)self setNeedsLayoutAndSizeInvalidation];
  }
}

- (void)layoutContentInsideClippingView
{
  v5 = [(WFCompactPlatterView *)self clippingContentView];
  v3 = [(WFCompactPlatterView *)self clippingAutoLayoutContainerView];
  if ([(WFCompactPlatterView *)self isClippingContent]&& ([(WFCompactPlatterView *)self contentClippingDelegate], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(WFCompactPlatterView *)self contentVerticalOffsetWhenClipped];
    [v5 bounds];
    [(WFCompactPlatterView *)self contentHeightWhenClipped];
  }

  else
  {
    [v5 bounds];
  }

  [v3 setFrame:?];
}

- (void)layoutCustomContentViewForPlatterView:(id)a3
{
  v56 = a3;
  v4 = [v56 customContentView];
  [v4 bounds];
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
  v19 = [(WFCompactPlatterView *)self primaryLabel];
  v20 = [(WFCompactPlatterView *)self secondaryLabel];
  v21 = [v19 text];
  v22 = [v21 length];

  v23 = [v20 text];
  v24 = [v23 length];

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
    [v19 sizeThatFits:{width - v12 - v15, v8 - y}];
    v27 = v26;
    [v19 setFrame:{v12, y, width - v12 - v15, v26}];
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
    [v20 sizeThatFits:{width - v12 - v15, v8 - y}];
    v29 = v28;
    [v20 setFrame:{v12, y, width - v12 - v15, v28}];
    y = y + v29;
  }

  if (v22 | v24)
  {
    v30 = [(WFCompactPlatterView *)self contentView];

    if (v30)
    {
      y = v55 + y;
    }
  }

  v31 = width - (v57 + v18);
  v32 = [(WFCompactPlatterView *)self contentViewSeparatorView];
  if (([v32 isHidden] & 1) == 0)
  {
    [(WFCompactPlatterView *)self separatorHeight];
    v34 = v33;
    [v32 setFrame:{v57, y, v31, v33}];
    y = y + v34;
  }

  v35 = [(WFCompactPlatterView *)self footerView];
  [(WFCompactPlatterView *)self footerViewHeight];
  v37 = v36;
  [(WFCompactPlatterView *)self separatorHeight];
  v39 = v38;
  v40 = [(WFCompactPlatterView *)self footerViewHidden];
  v41 = [(WFCompactPlatterView *)self actionGroupView];
  v43 = v41;
  if (v41)
  {
    v44 = v37 + v39;
    if (v40)
    {
      v44 = 0.0;
    }

    LODWORD(v42) = 1112014848;
    [v41 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:v8 - y - v44 verticalFittingPriority:{COERCE_DOUBLE(1148846080), v42}];
    v46 = v45;
  }

  else
  {
    v46 = *(MEMORY[0x277CBF3A8] + 8);
  }

  [v43 setFrame:{0.0, v8 - v46, width, v46}];
  v47 = [(WFCompactPlatterView *)self footerViewSeparatorView];
  [v47 setFrame:{0.0, v8 - v46 - v37 - v39, width, v39}];
  [v35 setFrame:{v57, v8 - v46 - v37, v31, v37}];
  v48 = [(WFCompactPlatterView *)self clippingContentView];
  v49 = [(WFCompactPlatterView *)self contentView];
  if (v49)
  {
    [v48 setHidden:0];
    if (![(WFCompactPlatterView *)self suppressContentViewLayout])
    {
      v50 = v8 - y - v46;
      v51 = v37 + v39;
      x = 0.0;
      if (v40)
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
        v54 = [(WFCompactPlatterView *)self actionGroupView];

        if (!v54)
        {
          height = height + -15.0;
        }
      }

      [v48 setFrame:{x, y, width, height}];
      [(WFCompactPlatterView *)self layoutContentInsideClippingView];
    }
  }

  else
  {
    [v48 setHidden:1];
  }
}

- (void)setNeedsLayoutAndSizeInvalidation
{
  v3 = [(WFCompactPlatterView *)self platterView];
  [v3 setNeedsLayout];

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
  v3 = [(WFCompactPlatterView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = 1.0;
  if (!UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v6 = [(WFCompactPlatterView *)self traitCollection];
    [v6 displayScale];
    v5 = 1.0 / v7;
  }

  return v5;
}

- (CGSize)staticContentSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(WFCompactPlatterView *)self labelInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(WFCompactPlatterView *)self primaryLabel];
  v15 = [(WFCompactPlatterView *)self secondaryLabel];
  v16 = [v14 text];
  v17 = [v16 length];

  v18 = [v15 text];
  v19 = [v18 length];

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
    [v14 sizeThatFits:{width - v9 - v13, height - v20}];
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
    [v15 sizeThatFits:{width - v9 - v13, height - v20}];
    v20 = v20 + v24;
  }

  if (v17 | v19)
  {
    v25 = [(WFCompactPlatterView *)self contentView];

    if (v25)
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
    v29 = [(WFCompactPlatterView *)self actionGroupView];

    if (!v29)
    {
      v20 = v20 + 15.0;
    }
  }

  v30 = [(WFCompactPlatterView *)self actionGroupView];
  v31 = v30;
  if (v30)
  {
    [v30 layoutIfNeeded];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(WFCompactPlatterView *)self platterView];
  [v6 sizeThatFitsContentWithSize:{width, 0.0}];
  v8 = v7;

  [(WFCompactPlatterView *)self staticContentSizeForSize:width, fmax(height - v8, 0.0)];
  v10 = v8 + v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)applyStylingWithConfiguration:(id)a3
{
  v14 = a3;
  if (([v14 blursBackground] & 1) != 0 || (objc_msgSend(v14, "backgroundColor"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = [(WFCompactPlatterView *)self platterView];
    [v6 setMaterialRecipe:53];
  }

  else
  {
    v5 = [(WFCompactPlatterView *)self platterView];
    [v5 setUsesBackgroundView:1];

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    v7 = [v14 backgroundColor];
    [v6 setBackgroundColor:v7];

    v8 = [(WFCompactPlatterView *)self platterView];
    [v8 setBackgroundView:v6];
  }

  v9 = [(WFCompactPlatterView *)self platterView];
  UIRoundToViewScale();
  v11 = v10;
  v12 = [(WFCompactPlatterView *)self platterView];
  [v12 _setContinuousCornerRadius:v11];

  v13 = [(WFCompactPlatterView *)self platterView];
  [v13 setHasShadow:1];
}

- (WFCompactPlatterView)initWithFrame:(CGRect)a3
{
  v37.receiver = self;
  v37.super_class = WFCompactPlatterView;
  v3 = [(WFCompactPlatterView *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_footerViewHidden = 1;
    v3->_sashVisible = 0;
    v3->_insetsContent = 0;
    v3->_suppressContentViewLayout = 0;
    [(WFCompactPlatterView *)v3 setAccessibilityIdentifier:@"junior_platter_view"];
    v5 = [(WFCompactPlatterView *)v4 layer];
    [v5 setAllowsGroupOpacity:0];

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
    v9 = [(PLPlatterView *)v8 customContentView];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v10 setNumberOfLines:0];
    [v10 setAdjustsFontForContentSizeCategory:1];
    [v9 addSubview:v10];
    objc_storeWeak(&v4->_primaryLabel, v10);
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v11 setNumberOfLines:0];
    [v11 setAdjustsFontForContentSizeCategory:1];
    [v9 addSubview:v11];
    objc_storeWeak(&v4->_secondaryLabel, v11);
    v35 = [MEMORY[0x277D75210] effectWithStyle:1200];
    v12 = [MEMORY[0x277D75D00] effectForBlurEffect:v35 style:4];
    v13 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v12];
    v14 = [MEMORY[0x277D75348] blackColor];
    v15 = [v14 colorWithAlphaComponent:0.6];
    v16 = [(UIView *)v13 contentView];
    [v16 setBackgroundColor:v15];

    [v9 addSubview:v13];
    contentViewSeparatorView = v4->_contentViewSeparatorView;
    v4->_contentViewSeparatorView = v13;
    v34 = v13;

    [(WFCompactPlatterView *)v4 updateContentViewSeparatorVisibility];
    v18 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIView *)v18 setHidden:[(WFCompactPlatterView *)v4 footerViewHidden]];
    [v9 addSubview:v18];
    footerView = v4->_footerView;
    v4->_footerView = v18;
    v33 = v18;

    v20 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v12];
    v21 = [MEMORY[0x277D75348] blackColor];
    v22 = [v21 colorWithAlphaComponent:0.6];
    v23 = [v20 contentView];
    [v23 setBackgroundColor:v22];

    [v20 setHidden:{-[WFCompactPlatterView footerViewHidden](v4, "footerViewHidden")}];
    [v9 addSubview:v20];
    objc_storeWeak(&v4->_footerViewSeparatorView, v20);
    v24 = objc_opt_new();
    [v24 setClipsToBounds:1];
    [v9 addSubview:v24];
    objc_storeWeak(&v4->_clippingContentView, v24);
    v25 = objc_opt_new();
    [v24 addSubview:v25];
    objc_storeWeak(&v4->_clippingAutoLayoutContainerView, v25);
    v26 = *(MEMORY[0x277D768C8] + 16);
    *&v4->_separatorInsets.top = *MEMORY[0x277D768C8];
    *&v4->_separatorInsets.bottom = v26;
    v27 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];

    v28 = 5.0;
    if (v27)
    {
      v28 = 6.0;
    }

    v29 = 22.0;
    if (v27)
    {
      v29 = 27.0;
    }

    v4->_labelInsets.top = v28;
    v4->_labelInsets.left = v29;
    if (v27)
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