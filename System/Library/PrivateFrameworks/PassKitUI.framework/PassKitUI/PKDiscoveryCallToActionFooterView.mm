@interface PKDiscoveryCallToActionFooterView
- (CGSize)_buttonSizeForBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDiscoveryCallToActionFooterView)initWithCallToAction:(id)action displayType:(int64_t)type itemIdentifier:(id)identifier;
- (PKDiscoveryCardViewDelegate)delegate;
- (id)_createVisualEffectViewWithBlurEffect:(id)effect vibrancyStyle:(int64_t)style;
- (id)_subtitleLabelColor;
- (id)_subtitleLabelFont;
- (id)_subtitleLabelWithLocalizedSubtitle:(id)subtitle;
- (id)_titleLabelColor;
- (id)_titleLabelFont;
- (id)_titleLabelWithLocalizedTitle:(id)title;
- (void)_buttonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)state;
- (void)setCallToActionTappedOverride:(id)override;
- (void)setDisplayType:(int64_t)type;
- (void)setShowActivityIndicator:(BOOL)indicator;
@end

@implementation PKDiscoveryCallToActionFooterView

- (PKDiscoveryCallToActionFooterView)initWithCallToAction:(id)action displayType:(int64_t)type itemIdentifier:(id)identifier
{
  v56[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifierCopy = identifier;
  v54.receiver = self;
  v54.super_class = PKDiscoveryCallToActionFooterView;
  v10 = [(PKDiscoveryCallToActionFooterView *)&v54 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_27;
  }

  traitCollection = [(PKDiscoveryCallToActionFooterView *)v10 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v11->_useAccessibilityLayout = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(PKDiscoveryCallToActionFooterView *)v11 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
  objc_storeStrong(&v11->_callToAction, action);
  v11->_displayType = type;
  objc_storeStrong(&v11->_itemIdentifier, identifier);
  backgroundBlurStyle = [(PKDiscoveryCallToAction *)v11->_callToAction backgroundBlurStyle];
  v15 = 17;
  if (backgroundBlurStyle == 2)
  {
    v15 = 18;
  }

  if (backgroundBlurStyle == 3)
  {
    v16 = 19;
  }

  else
  {
    v16 = v15;
  }

  v17 = [MEMORY[0x1E69DC730] effectWithStyle:v16];
  if (+[PKDiscoveryCardView usesMediumCards])
  {
    v18 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v17];
    backdropView = v11->_backdropView;
    v11->_backdropView = v18;

    [(PKDiscoveryCallToActionFooterView *)v11 addSubview:v11->_backdropView];
  }

  else
  {
    v20 = MEMORY[0x1E69DC888];
    backgroundColor = [(PKDiscoveryCallToAction *)v11->_callToAction backgroundColor];
    v22 = [v20 pkui_colorWithPKColor:backgroundColor];

    [(PKDiscoveryCallToActionFooterView *)v11 setBackgroundColor:v22];
  }

  localizedTitle = [(PKDiscoveryCallToAction *)v11->_callToAction localizedTitle];
  if (localizedTitle)
  {
    v24 = [(PKDiscoveryCallToActionFooterView *)v11 _titleLabelWithLocalizedTitle:localizedTitle];
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v24;

    if (+[PKDiscoveryCardView usesMediumCards])
    {
      v26 = [(PKDiscoveryCallToActionFooterView *)v11 _createVisualEffectViewWithBlurEffect:v17 vibrancyStyle:0];
      contentView = [(UIVisualEffectView *)v11->_backdropView contentView];
      [contentView addSubview:v26];

      contentView2 = [v26 contentView];
      [contentView2 addSubview:v11->_titleLabel];
    }

    else
    {
      [(PKDiscoveryCallToActionFooterView *)v11 addSubview:v11->_titleLabel];
    }
  }

  localizedSubtitle = [(PKDiscoveryCallToAction *)v11->_callToAction localizedSubtitle];
  if (localizedSubtitle)
  {
    v30 = [(PKDiscoveryCallToActionFooterView *)v11 _subtitleLabelWithLocalizedSubtitle:localizedSubtitle];
    subtitleLabel = v11->_subtitleLabel;
    v11->_subtitleLabel = v30;

    if (+[PKDiscoveryCardView usesMediumCards])
    {
      v32 = [(PKDiscoveryCallToActionFooterView *)v11 _createVisualEffectViewWithBlurEffect:v17 vibrancyStyle:1];
      contentView3 = [(UIVisualEffectView *)v11->_backdropView contentView];
      [contentView3 addSubview:v32];

      contentView4 = [v32 contentView];
      [contentView4 addSubview:v11->_subtitleLabel];
    }

    else
    {
      [(PKDiscoveryCallToActionFooterView *)v11 addSubview:v11->_subtitleLabel];
    }
  }

  localizedButtonText = [actionCopy localizedButtonText];
  if (localizedButtonText)
  {

LABEL_21:
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setCornerStyle:4];
    localizedButtonText2 = [(PKDiscoveryCallToAction *)v11->_callToAction localizedButtonText];
    [filledButtonConfiguration setTitle:localizedButtonText2];

    [filledButtonConfiguration setActivityIndicatorColorTransformer:&__block_literal_global_66];
    objc_initWeak(&location, v11);
    v38 = MEMORY[0x1E69DC628];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __85__PKDiscoveryCallToActionFooterView_initWithCallToAction_displayType_itemIdentifier___block_invoke_2;
    v51[3] = &unk_1E8010A60;
    objc_copyWeak(&v52, &location);
    v39 = [v38 actionWithHandler:v51];
    v40 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:v39];
    button = v11->_button;
    v11->_button = v40;

    [(UIButton *)v11->_button setConfigurationUpdateHandler:&__block_literal_global_23];
    [(UIButton *)v11->_button setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
    [(PKDiscoveryCallToActionFooterView *)v11 addSubview:v11->_button];

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);

    goto LABEL_22;
  }

  if ([(PKDiscoveryCallToAction *)v11->_callToAction action]== 8)
  {
    goto LABEL_21;
  }

LABEL_22:
  if ([(PKDiscoveryCallToAction *)v11->_callToAction action]== 8)
  {
    appStoreAppIdentifier = [(PKDiscoveryCallToAction *)v11->_callToAction appStoreAppIdentifier];
    if (appStoreAppIdentifier)
    {
      v43 = [PKLinkedApplication alloc];
      v56[0] = appStoreAppIdentifier;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      v45 = [(PKLinkedApplication *)v43 initWithStoreIDs:v44 defaultLaunchURL:0];
      linkedApplication = v11->_linkedApplication;
      v11->_linkedApplication = v45;

      [(PKLinkedApplication *)v11->_linkedApplication addObserver:v11];
      [(PKDiscoveryCallToActionFooterView *)v11 setShowActivityIndicator:1];
      [(PKLinkedApplication *)v11->_linkedApplication reloadApplicationStateIfNecessary];
    }
  }

  [(PKDiscoveryCallToActionFooterView *)v11 setAccessibilityIdentifier:*MEMORY[0x1E69B9590]];
  v55 = objc_opt_class();
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
  v48 = [(PKDiscoveryCallToActionFooterView *)v11 registerForTraitChanges:v47 withHandler:&__block_literal_global_29_0];

LABEL_27:
  return v11;
}

id __85__PKDiscoveryCallToActionFooterView_initWithCallToAction_displayType_itemIdentifier___block_invoke()
{
  if (+[PKDiscoveryCardView usesMediumCards])
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v0 = ;

  return v0;
}

void __85__PKDiscoveryCallToActionFooterView_initWithCallToAction_displayType_itemIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _buttonPressed:v4];
}

void __85__PKDiscoveryCallToActionFooterView_initWithCallToAction_displayType_itemIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  v2 = [v12 configuration];
  v3 = +[PKDiscoveryCardView usesMediumCards];
  v4 = [v2 background];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 colorWithAlphaComponent:0.3];
    [v4 setBackgroundColor:v7];

    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [v4 setBackgroundColor:v5];

    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v8 = ;
  [v2 setBaseForegroundColor:v8];

  [v12 setConfiguration:v2];
  v9 = [v12 isHighlighted];
  v10 = 0.5;
  if ((v9 & 1) == 0)
  {
    v11 = [v12 isEnabled];
    v10 = 0.5;
    if (v11)
    {
      v10 = 1.0;
    }
  }

  [v12 setAlpha:v10];
  [v12 _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
}

void __85__PKDiscoveryCallToActionFooterView_initWithCallToAction_displayType_itemIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2[53];
  v8 = a2;
  v3 = [v8 _titleLabelFont];
  [v2 setFont:v3];

  v4 = v8[54];
  v5 = [v8 _subtitleLabelFont];
  [v4 setFont:v5];

  v6 = [v8 traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  *(v8 + 456) = UIContentSizeCategoryIsAccessibilityCategory(v7);

  [v8 setNeedsLayout];
}

- (void)layoutSubviews
{
  [(PKDiscoveryCallToActionFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(PKDiscoveryCallToActionFooterView *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  v12 = v4 + 16.0;
  v13 = 0.0;
  remainder.origin.x = v4 + 16.0;
  remainder.origin.y = v6 + 0.0;
  remainder.size.width = v8 + -32.0;
  remainder.size.height = v10;
  [(UIVisualEffectView *)self->_backdropView setFrame:v4, v6, v8, v10];
  if (self->_button)
  {
    if (_shouldReverseLayoutDirection)
    {
      v14 = CGRectMinXEdge;
    }

    else
    {
      v14 = CGRectMaxXEdge;
    }

    [(PKDiscoveryCallToActionFooterView *)self _buttonSizeForBounds:v4 + 16.0, v6 + 0.0, v8 + -32.0, v10];
    v16 = v15;
    v28.origin.x = v12;
    v28.origin.y = v6 + 0.0;
    v28.size.width = v8 + -32.0;
    v28.size.height = v10;
    CGRectDivide(v28, &slice, &remainder, v16, v14);
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIButton *)self->_button setFrame:?];
    CGRectDivide(remainder, &slice, &remainder, 10.0, v14);
  }

  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    if (self->_subtitleLabel)
    {
      v13 = 2.0;
    }

    else
    {
      v13 = 0.0;
    }
  }

  [(UILabel *)titleLabel sizeThatFits:remainder.size.width, remainder.size.height, *&remainder.origin.y, *&remainder.origin.x];
  CGRectDivide(remainder, &slice, &remainder, v18, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, v13, CGRectMinYEdge);
  if (+[PKDiscoveryCardView usesMediumCards])
  {
    font = [(UILabel *)self->_titleLabel font];
    [font lineHeight];
    PKFloatRoundToPixel();
    v21 = v20;

    if (v21 > 1.0)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    [(UILabel *)self->_subtitleLabel setNumberOfLines:v22];
  }

  [(UILabel *)self->_subtitleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &slice, &remainder, v23, CGRectMinYEdge);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v24 = self->_titleLabel;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)v24 setFrame:?];
  subtitleLabel = self->_subtitleLabel;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)subtitleLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [PKDiscoveryCardView usesMediumCards:fits.width];
  v5 = 90.0;
  if (!v4)
  {
    v5 = 78.0;
  }

  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)linkedApplicationDidChangeState:(id)state
{
  stateCopy = state;
  [(PKDiscoveryCallToActionFooterView *)self setShowActivityIndicator:0];
  isInstalled = [stateCopy isInstalled];

  button = self->_button;
  if (isInstalled)
  {
    localizedButtonText = [(PKDiscoveryCallToAction *)self->_callToAction localizedButtonText];
    [(UIButton *)button pkui_updateConfigurationWithTitle:localizedButtonText];
  }

  else
  {
    localizedButtonText = PKLocalizedString(&cfstr_ViewButton.isa);
    pk_uppercaseStringForPreferredLocale = [localizedButtonText pk_uppercaseStringForPreferredLocale];
    [(UIButton *)button pkui_updateConfigurationWithTitle:pk_uppercaseStringForPreferredLocale];
  }

  [(PKDiscoveryCallToActionFooterView *)self setNeedsLayout];
}

- (void)setShowActivityIndicator:(BOOL)indicator
{
  if (self->_showActivityIndicator == !indicator)
  {
    self->_showActivityIndicator = indicator;
    button = self->_button;
    if (indicator)
    {
      [(UIButton *)self->_button pkui_updateConfigurationWithTitle:0];
    }

    else
    {
      localizedButtonText = [(PKDiscoveryCallToAction *)self->_callToAction localizedButtonText];
      [(UIButton *)button pkui_updateConfigurationWithTitle:localizedButtonText];
    }

    [(UIButton *)self->_button pkui_updateConfigurationShowingActivityIndicator:self->_showActivityIndicator];
    v6 = self->_button;
    v7 = !self->_showActivityIndicator;

    [(UIButton *)v6 setEnabled:v7];
  }
}

- (void)setCallToActionTappedOverride:(id)override
{
  v4 = _Block_copy(override);
  callToActionTappedOverride = self->_callToActionTappedOverride;
  self->_callToActionTappedOverride = v4;
}

- (void)setDisplayType:(int64_t)type
{
  if (self->_displayType != type)
  {
    self->_displayType = type;
    [(PKDiscoveryCallToActionFooterView *)self setNeedsLayout];
  }
}

- (id)_titleLabelColor
{
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  if ([(PKDiscoveryCallToAction *)self->_callToAction foregroundContentMode]== 2)
  {
    systemBlackColor = [MEMORY[0x1E69DC888] systemBlackColor];

    systemWhiteColor = systemBlackColor;
  }

  return systemWhiteColor;
}

- (id)_subtitleLabelColor
{
  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  if ([(PKDiscoveryCallToAction *)self->_callToAction foregroundContentMode]== 2)
  {
    if (self->_titleLabel)
    {
      [MEMORY[0x1E69DC888] systemDarkGrayColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBlackColor];
    }
    v4 = ;

    systemWhiteColor = v4;
  }

  return systemWhiteColor;
}

- (void)_buttonPressed:(id)pressed
{
  callToActionTappedOverride = self->_callToActionTappedOverride;
  if (callToActionTappedOverride)
  {
    v5 = *(callToActionTappedOverride + 2);

    v5();
  }

  else if ([(PKDiscoveryCallToAction *)self->_callToAction action]== 8 && [(PKLinkedApplication *)self->_linkedApplication isInstalled])
  {
    linkedApplication = self->_linkedApplication;

    [(PKLinkedApplication *)linkedApplication openApplication:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained discoveryCardViewCTATapped:self callToAction:self->_callToAction itemIdentifier:self->_itemIdentifier];
  }
}

- (id)_titleLabelWithLocalizedTitle:(id)title
{
  v4 = MEMORY[0x1E69DCC10];
  titleCopy = title;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v7 setText:titleCopy];

  _titleLabelFont = [(PKDiscoveryCallToActionFooterView *)self _titleLabelFont];
  [v7 setFont:_titleLabelFont];

  if (+[PKDiscoveryCardView usesMediumCards])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setNumberOfLines:v9];
  if (!+[PKDiscoveryCardView usesMediumCards])
  {
    _titleLabelColor = [(PKDiscoveryCallToActionFooterView *)self _titleLabelColor];
    [v7 setTextColor:_titleLabelColor];
  }

  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  return v7;
}

- (id)_subtitleLabelWithLocalizedSubtitle:(id)subtitle
{
  v4 = MEMORY[0x1E69DCC10];
  subtitleCopy = subtitle;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v7 setText:subtitleCopy];

  _subtitleLabelFont = [(PKDiscoveryCallToActionFooterView *)self _subtitleLabelFont];
  [v7 setFont:_subtitleLabelFont];

  if (+[PKDiscoveryCardView usesMediumCards])
  {
    [v7 setNumberOfLines:2];
  }

  else
  {
    [v7 setNumberOfLines:0];
    _subtitleLabelColor = [(PKDiscoveryCallToActionFooterView *)self _subtitleLabelColor];
    [v7 setTextColor:_subtitleLabelColor];
  }

  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9958]];

  return v7;
}

- (id)_titleLabelFont
{
  v2 = +[PKDiscoveryCardView usesMediumCards];
  v3 = *MEMORY[0x1E69DDC58];
  if (v2)
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], v3);
  }

  else
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v3, 2, 0);
  }
  v4 = ;

  return v4;
}

- (id)_subtitleLabelFont
{
  v2 = +[PKDiscoveryCardView usesMediumCards];
  v3 = *MEMORY[0x1E69DDC58];
  if (v2)
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v3);
  }

  else
  {
    PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v3, *MEMORY[0x1E69DB978]);
  }
  v4 = ;

  return v4;
}

- (CGSize)_buttonSizeForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v6 = [(UIButton *)self->_button titleLabel:bounds.origin.x];
  button = self->_button;
  v8 = *MEMORY[0x1E69DDD80];
  v9 = *MEMORY[0x1E69DDC58];
  v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58], 2, 0);
  [(UIButton *)button pkui_updateTitleTextAttributesWithFont:v10];

  [v6 setNumberOfLines:1];
  [v6 setTextAlignment:1];
  [(UIButton *)self->_button setContentEdgeInsets:0.0, 16.0, 0.0, 16.0];
  [(PKDiscoveryCallToActionFooterView *)self _buttonWidthForLabelWidth:36.0];
  v12 = v11;
  +[PKDiscoveryCardView compressedWidth];
  PKFloatRoundToPixel();
  v14 = v13;
  [(UIButton *)self->_button sizeThatFits:width, height];
  if (v15 >= v12)
  {
    if (v15 > v14)
    {
      [(UIButton *)self->_button setContentEdgeInsets:0.0, 8.0, 0.0, 8.0];
      [(UIButton *)self->_button sizeThatFits:width, height];
    }

    v12 = v15;
  }

  if (v12 > v14)
  {
    if (self->_useAccessibilityLayout)
    {
      v16 = 13.0;
    }

    else
    {
      v16 = 9.0;
    }

    v17 = PKFontForDefaultDesign(v8, v9, 2, 0);
    v18 = [v17 fontWithSize:v16];

    [(UIButton *)self->_button pkui_updateTitleTextAttributesWithFont:v18];
    [(UIButton *)self->_button setContentEdgeInsets:4.0, 16.0, 4.0, 16.0];
    [v6 setNumberOfLines:2];
    [v6 setLineBreakMode:4];
    [v6 sizeThatFits:{v14 + -32.0, height}];
    [(PKDiscoveryCallToActionFooterView *)self _buttonWidthForLabelWidth:?];
    v12 = v19;
  }

  v20 = +[PKDiscoveryCardView usesMediumCards];
  v21 = 32.0;
  if (!v20)
  {
    v21 = 28.0;
  }

  if (self->_useAccessibilityLayout)
  {
    v22 = 34.0;
  }

  else
  {
    v22 = v21;
  }

  v23 = v12;
  v24 = v22;
  result.height = v24;
  result.width = v23;
  return result;
}

- (id)_createVisualEffectViewWithBlurEffect:(id)effect vibrancyStyle:(int64_t)style
{
  v4 = [MEMORY[0x1E69DD248] effectForBlurEffect:effect style:style];
  v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];

  return v5;
}

- (PKDiscoveryCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end