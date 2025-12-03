@interface PKPaymentSetupFooterView
- (BOOL)_setUIButton:(id)button forVariable:(id *)variable;
- (BOOL)_setUIView:(id)view forVariable:(id *)variable;
- (CGSize)_adjacentButtonSizeConstrainedToSize:(CGSize)size;
- (CGSize)_layoutSubviewsInBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)_sizeForLabel:(id)label maxText:(id)text constrainedToSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKLegacyButtonInterface)primaryButton;
- (PKPaymentSetupFooterView)initWithFrame:(CGRect)frame context:(int64_t)context;
- (UIButton)manualEntryButton;
- (UIButton)secondaryActionButton;
- (UIButton)setUpLaterButton;
- (UIButton)skipCardButton;
- (UIButton)tertiaryActionButton;
- (UIEdgeInsets)readableContentInsets;
- (UILabel)notificationText;
- (id)createAlternateActionButtonWithTitle:(id)title;
- (id)createPrimaryButton;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)appearance;
- (void)setButtonsEnabled:(BOOL)enabled;
- (void)setPrimaryButtonTintColor:(id)color;
@end

@implementation PKPaymentSetupFooterView

- (void)pk_applyAppearance:(id)appearance
{
  appearanceCopy = appearance;
  tintColor = [appearanceCopy tintColor];
  [(PKPaymentSetupFooterView *)self setTintColor:tintColor];

  continueButtonTintColor = [appearanceCopy continueButtonTintColor];

  [(PKPaymentSetupFooterView *)self setPrimaryButtonTintColor:continueButtonTintColor];
}

- (PKPaymentSetupFooterView)initWithFrame:(CGRect)frame context:(int64_t)context
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFooterView;
  v5 = [(PKPaymentSetupFooterView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    *(v5 + 59) = context;
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *(v5 + 488) = *MEMORY[0x1E69DDCE0];
    *(v5 + 504) = v7;
    v5[464] = 1;
    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];
  }

  return v6;
}

- (UILabel)notificationText
{
  notificationText = self->_notificationText;
  if (!notificationText)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_notificationText;
    self->_notificationText = v4;

    [(UILabel *)self->_notificationText setText:&stru_1F3BD7330];
    [(UILabel *)self->_notificationText setNumberOfLines:0];
    [(UILabel *)self->_notificationText setLineBreakMode:0];
    v6 = self->_notificationText;
    v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40]);
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)self->_notificationText setTextAlignment:PKOBKTextAlignment()];
    [(PKPaymentSetupFooterView *)self addSubview:self->_notificationText];
    [(PKPaymentSetupFooterView *)self setNeedsLayout];
    notificationText = self->_notificationText;
  }

  return notificationText;
}

- (void)setButtonsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_buttonsEnabled = enabled;
  [(PKLegacyButtonInterface *)self->_primaryButton setEnabled:?];
  [(UIButton *)self->_setUpLaterButton setEnabled:enabledCopy];
  [(UIButton *)self->_manualEntryButton setEnabled:enabledCopy];
  [(UIButton *)self->_secondaryActionButton setEnabled:enabledCopy];
  [(UIButton *)self->_tertiaryActionButton setEnabled:enabledCopy];
  skipCardButton = self->_skipCardButton;

  [(UIButton *)skipCardButton setEnabled:enabledCopy];
}

- (PKLegacyButtonInterface)primaryButton
{
  primaryButton = self->_primaryButton;
  if (!primaryButton)
  {
    createPrimaryButton = [(PKPaymentSetupFooterView *)self createPrimaryButton];
    [(PKPaymentSetupFooterView *)self setPrimaryButton:createPrimaryButton];

    primaryButton = self->_primaryButton;
  }

  return primaryButton;
}

- (void)setPrimaryButtonTintColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_primaryButtonTintColor, color);
  primaryButton = self->_primaryButton;
  if (primaryButton)
  {
    [(PKLegacyButtonInterface *)primaryButton setTintColor:colorCopy];
  }
}

- (UIButton)skipCardButton
{
  skipCardButton = self->_skipCardButton;
  if (!skipCardButton)
  {
    v4 = PKLocalizedPaymentString(&cfstr_AddToWalletLat_0.isa);
    v5 = [(PKPaymentSetupFooterView *)self createAlternateActionButtonWithTitle:v4];

    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
    [(PKPaymentSetupFooterView *)self setSkipCardButton:v5];

    skipCardButton = self->_skipCardButton;
  }

  return skipCardButton;
}

- (UIButton)manualEntryButton
{
  manualEntryButton = self->_manualEntryButton;
  if (!manualEntryButton)
  {
    v4 = PKLocalizedPaymentString(&cfstr_AddADifferentC.isa);
    v5 = [(PKPaymentSetupFooterView *)self createAlternateActionButtonWithTitle:v4];

    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
    [(PKPaymentSetupFooterView *)self setManualEntryButton:v5];

    manualEntryButton = self->_manualEntryButton;
  }

  return manualEntryButton;
}

- (UIButton)setUpLaterButton
{
  setUpLaterButton = self->_setUpLaterButton;
  if (!setUpLaterButton)
  {
    v4 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
    v5 = [(PKPaymentSetupFooterView *)self _createSkipActionButtonWithTitle:v4];
    [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
    [(PKPaymentSetupFooterView *)self setSetUpLaterButton:v5];

    setUpLaterButton = self->_setUpLaterButton;
  }

  return setUpLaterButton;
}

- (UIButton)secondaryActionButton
{
  secondaryActionButton = self->_secondaryActionButton;
  if (!secondaryActionButton)
  {
    v4 = [(PKPaymentSetupFooterView *)self createAlternateActionButtonWithTitle:0];
    [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
    [(PKPaymentSetupFooterView *)self setSecondaryActionButton:v4];

    secondaryActionButton = self->_secondaryActionButton;
  }

  return secondaryActionButton;
}

- (UIButton)tertiaryActionButton
{
  tertiaryActionButton = self->_tertiaryActionButton;
  if (!tertiaryActionButton)
  {
    v4 = [(PKPaymentSetupFooterView *)self createAlternateActionButtonWithTitle:0];
    [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9D10]];
    [(PKPaymentSetupFooterView *)self setTertiaryActionButton:v4];

    tertiaryActionButton = self->_tertiaryActionButton;
  }

  return tertiaryActionButton;
}

- (BOOL)_setUIButton:(id)button forVariable:(id *)variable
{
  buttonCopy = button;
  v7 = [(PKPaymentSetupFooterView *)self _setUIView:buttonCopy forVariable:variable];
  if (v7)
  {
    [buttonCopy setEnabled:self->_buttonsEnabled];
  }

  return v7;
}

- (BOOL)_setUIView:(id)view forVariable:(id *)variable
{
  viewCopy = view;
  if (!variable || *variable == viewCopy)
  {
    v8 = 0;
  }

  else
  {
    [*variable removeFromSuperview];
    objc_storeStrong(variable, view);
    if (*variable)
    {
      [(PKPaymentSetupFooterView *)self addSubview:?];
    }

    [(PKPaymentSetupFooterView *)self setNeedsLayout];
    v8 = 1;
  }

  return v8;
}

- (CGSize)_sizeForLabel:(id)label maxText:(id)text constrainedToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v25[2] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  textCopy = text;
  text = textCopy;
  v11 = MEMORY[0x1E695F060];
  if (labelCopy && !textCopy)
  {
    text = [labelCopy text];
  }

  v12 = *v11;
  v13 = v11[1];
  if (labelCopy && text)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
    v15 = [defaultParagraphStyle mutableCopy];

    [v15 setAlignment:{objc_msgSend(labelCopy, "textAlignment")}];
    v16 = objc_alloc(MEMORY[0x1E696AAB0]);
    v24[0] = *MEMORY[0x1E69DB648];
    font = [labelCopy font];
    v24[1] = *MEMORY[0x1E69DB688];
    v25[0] = font;
    v25[1] = v15;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v19 = [v16 initWithString:text attributes:v18];

    [v19 pkui_sizeThatFits:{width, height}];
    v12 = v20;
    v13 = v21;
  }

  v22 = v12;
  v23 = v13;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)_adjacentButtonSizeConstrainedToSize:(CGSize)size
{
  height = size.height;
  v5 = (size.width + -12.0) * 0.5;
  v6 = PKOBKDockButtonMinHeight();
  [(PKLegacyButtonInterface *)self->_primaryButton sizeThatFits:v5, height];
  if (v6 <= v7)
  {
    [(PKLegacyButtonInterface *)self->_primaryButton sizeThatFits:v5, height];
    v8 = v9;
  }

  else
  {
    v8 = PKOBKDockButtonMinHeight();
  }

  setUpLaterButton = self->_setUpLaterButton;
  if (setUpLaterButton)
  {
    [(UIButton *)setUpLaterButton sizeThatFits:v5, height];
    if (v8 <= v11)
    {
      [(UIButton *)self->_setUpLaterButton sizeThatFits:v5, height];
      v8 = v12;
    }
  }

  v13 = v5;
  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPaymentSetupFooterView *)self _layoutSubviewsInBounds:1 isTemplateLayout:0.0, 0.0, fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKPaymentSetupFooterView;
  [(PKPaymentSetupFooterView *)&v17 layoutSubviews];
  traitCollection = [(PKPaymentSetupFooterView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1 && (PKPaymentSetupContextIsSetupAssistant() & 1) != 0)
  {
    readableContentGuide = [(PKPaymentSetupFooterView *)self readableContentGuide];
    [readableContentGuide layoutFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    [(PKPaymentSetupFooterView *)self bounds];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  [(PKPaymentSetupFooterView *)self _layoutSubviewsInBounds:0 isTemplateLayout:v6, v8, v10, v12];
}

- (CGSize)_layoutSubviewsInBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  width = bounds.size.width;
  y = bounds.origin.y;
  v8 = [(PKPaymentSetupFooterView *)self _shouldReverseLayoutDirection:bounds.origin.x];
  if (v8)
  {
    v9 = CGRectMaxXEdge;
  }

  else
  {
    v9 = CGRectMinXEdge;
  }

  if (v8)
  {
    v10 = CGRectMinXEdge;
  }

  else
  {
    v10 = CGRectMaxXEdge;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v11 = 10.0;
  }

  else
  {
    v11 = 5.0;
  }

  v12 = PKOBKDockButtonMinHeight();
  v13 = 0.0;
  if (_os_feature_enabled_impl())
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.0;
    }
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x4010000000;
  v57 = &unk_1BE347799;
  v58 = 0u;
  v59 = 0u;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4010000000;
  v49 = &unk_1BE347799;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  top = self->_readableContentInsets.top;
  left = self->_readableContentInsets.left;
  v16 = left + 0.0;
  v17 = top + 0.0;
  v18 = width - (left + self->_readableContentInsets.right);
  v19 = 1.79769313e308 - (top + self->_readableContentInsets.bottom);
  v50 = v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  notificationText = self->_notificationText;
  if (notificationText)
  {
    [(PKPaymentSetupFooterView *)self _sizeForLabel:notificationText maxText:0 constrainedToSize:v18 + -24.0];
    CGRectDivide(v47[1], v55 + 1, v47 + 1, v21, CGRectMinYEdge);
    [(UILabel *)self->_notificationText setFrame:v55[1].origin.x, v55[1].origin.y, v55[1].size.width, v55[1].size.height];
    *(v43 + 24) = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKPaymentSetupFooterView__layoutSubviewsInBounds_isTemplateLayout___block_invoke;
  aBlock[3] = &unk_1E8025DD8;
  aBlock[4] = &v46;
  aBlock[5] = &v54;
  aBlock[6] = &v42;
  *&aBlock[7] = v11;
  layoutCopy = layout;
  v22 = _Block_copy(aBlock);
  v23 = v22;
  if (self->_useAdjacentLayout && self->_primaryButton && self->_setUpLaterButton)
  {
    (*(v22 + 2))(v22, self->_skipCardButton, v13);
    (v23)[2](v23, self->_manualEntryButton, v13);
    (v23)[2](v23, self->_secondaryActionButton, v13);
    (v23)[2](v23, self->_tertiaryActionButton, v13);
    [(PKPaymentSetupFooterView *)self _adjacentButtonSizeConstrainedToSize:v47[1].size.width, v47[1].size.height];
    v25 = v24;
    v27 = v26;
    if (*(v43 + 24))
    {
      v28 = v11;
    }

    else
    {
      v28 = 0.0;
    }

    CGRectDivide(v47[1], v55 + 1, v47 + 1, v28, CGRectMinYEdge);
    memset(&v39, 0, sizeof(v39));
    CGRectDivide(v47[1], &v39, v47 + 1, v27, CGRectMinYEdge);
    CGRectDivide(v39, v55 + 1, &v39, v25, v9);
    if (!layout)
    {
      [(PKLegacyButtonInterface *)self->_primaryButton setFrame:v55[1].origin.x, v55[1].origin.y, v55[1].size.width, v55[1].size.height];
    }

    CGRectDivide(v39, v55 + 1, &v39, v25, v10);
    if (!layout)
    {
      [(UIButton *)self->_setUpLaterButton setFrame:v55[1].origin.x, v55[1].origin.y, v55[1].size.width, v55[1].size.height];
    }
  }

  else
  {
    v29 = PKIsPad();
    v30 = 1.79769313e308;
    if (v29)
    {
      v30 = 326.0;
    }

    v31 = v47[1].size.width;
    if (v31 > v30)
    {
      v32 = (v31 - v30) * 0.5;
      x = v47[1].origin.x;
      v34 = v47[1].origin.y;
      height = v47[1].size.height;
      v61 = CGRectInset(*(&v31 - 2), v32, 0.0);
      v47[1] = v61;
    }

    (v23)[2](v23, self->_primaryButton, v12);
    (v23)[2](v23, self->_skipCardButton, v13);
    (v23)[2](v23, self->_manualEntryButton, v13);
    (v23)[2](v23, self->_secondaryActionButton, v13);
    (v23)[2](v23, self->_tertiaryActionButton, v13);
    (v23)[2](v23, self->_setUpLaterButton, v13);
  }

  v36 = CGRectGetMaxY(v55[1]) - y;

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v54, 8);
  v37 = width;
  v38 = v36;
  result.height = v38;
  result.width = v37;
  return result;
}

void __69__PKPaymentSetupFooterView__layoutSubviewsInBounds_isTemplateLayout___block_invoke(uint64_t a1, void *a2, CGFloat a3)
{
  v5 = a2;
  if (v5)
  {
    v9 = v5;
    [v5 sizeThatFits:{*(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
    if (v6 >= a3)
    {
      a3 = v6;
    }

    v7 = 0.0;
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v7 = *(a1 + 56);
    }

    CGRectDivide(*(*(*(a1 + 32) + 8) + 32), (*(*(a1 + 40) + 8) + 32), (*(*(a1 + 32) + 8) + 32), v7, CGRectMinYEdge);
    v8 = *(*(a1 + 32) + 8);
    v11.origin.x = v8[1].origin.x;
    v11.origin.y = v8[1].origin.y;
    ++v8;
    v11.size.width = v8->size.width;
    v11.size.height = v8->size.height;
    CGRectDivide(v11, (*(*(a1 + 40) + 8) + 32), v8, a3, CGRectMinYEdge);
    if ((*(a1 + 64) & 1) == 0)
    {
      [v9 pkui_setBoundsAndPositionFromFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v5 = v9;
  }
}

- (id)createPrimaryButton
{
  if (_UISolariumFeatureFlagEnabled())
  {
    pkui_tintedGlassButtonConfiguration = [MEMORY[0x1E69DC738] pkui_tintedGlassButtonConfiguration];
    [pkui_tintedGlassButtonConfiguration setButtonSize:3];
    v4 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [pkui_tintedGlassButtonConfiguration setTitle:v4];

    [pkui_tintedGlassButtonConfiguration setTitleAlignment:2];
    [pkui_tintedGlassButtonConfiguration contentInsets];
    v6 = v5;
    [pkui_tintedGlassButtonConfiguration contentInsets];
    [pkui_tintedGlassButtonConfiguration setContentInsets:{v6, 0.0}];
    v7 = [PKOBKPrimaryButton buttonWithConfiguration:pkui_tintedGlassButtonConfiguration primaryAction:0];
    [v7 setConfiguration:pkui_tintedGlassButtonConfiguration];
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB980]);
    [v7 pkui_updateTitleTextAttributesWithFont:v8];
  }

  else
  {
    if (self->_useAdjacentLayout)
    {
      PKCreateLargeSolidPillButton();
    }

    else
    {
      PKCreateLargeSolidButton();
    }
    v7 = ;
    v9 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [v7 setTitle:v9 forState:0];

    [v7 setContentEdgeInsets:{0.0, 24.0, 0.0, 24.0}];
    pkui_tintedGlassButtonConfiguration = [v7 titleLabel];
    [pkui_tintedGlassButtonConfiguration setNumberOfLines:0];
    [pkui_tintedGlassButtonConfiguration setTextAlignment:1];
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38]);
    [pkui_tintedGlassButtonConfiguration setFont:v8];
  }

  [v7 setExclusiveTouch:1];
  if (self->_primaryButtonTintColor)
  {
    [v7 setTintColor:?];
  }

  else
  {
    tintColor = [MEMORY[0x1E69DC888] tintColor];
    [v7 setTintColor:tintColor];
  }

  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];

  return v7;
}

- (id)createAlternateActionButtonWithTitle:(id)title
{
  titleCopy = title;
  if (_UISolariumFeatureFlagEnabled())
  {
    pkui_glassButtonConfiguration = [MEMORY[0x1E69DC738] pkui_glassButtonConfiguration];
    [pkui_glassButtonConfiguration setTitle:titleCopy];

    [pkui_glassButtonConfiguration setContentInsets:{15.0, 0.0, 15.0, 0.0}];
    [pkui_glassButtonConfiguration setCornerStyle:4];
    [pkui_glassButtonConfiguration setTitleAlignment:2];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [pkui_glassButtonConfiguration setBaseForegroundColor:labelColor];

    systemGray6Color = [MEMORY[0x1E69DC888] systemGray6Color];
    [pkui_glassButtonConfiguration setBaseBackgroundColor:systemGray6Color];

    v7 = [MEMORY[0x1E69DC738] buttonWithConfiguration:pkui_glassButtonConfiguration primaryAction:0];
    [v7 setConfiguration:pkui_glassButtonConfiguration];
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB980]);
    [v7 pkui_updateTitleTextAttributesWithFont:v8];
  }

  else
  {
    pkui_glassButtonConfiguration = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
    v8 = [MEMORY[0x1E69DC740] pkui_plainConfigurationWithTitle:titleCopy font:pkui_glassButtonConfiguration];

    [v8 setContentInsets:{15.0, 0.0, 15.0, 0.0}];
    v7 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v8 primaryAction:0];
    [v7 setConfiguration:v8];
    titleLabel = [v7 titleLabel];
    [titleLabel setTextAlignment:1];

    titleLabel2 = [v7 titleLabel];
    [titleLabel2 setFont:pkui_glassButtonConfiguration];
  }

  [v7 setExclusiveTouch:1];
  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];

  return v7;
}

- (UIEdgeInsets)readableContentInsets
{
  top = self->_readableContentInsets.top;
  left = self->_readableContentInsets.left;
  bottom = self->_readableContentInsets.bottom;
  right = self->_readableContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end