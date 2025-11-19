@interface PKPaymentSetupFooterView
- (BOOL)_setUIButton:(id)a3 forVariable:(id *)a4;
- (BOOL)_setUIView:(id)a3 forVariable:(id *)a4;
- (CGSize)_adjacentButtonSizeConstrainedToSize:(CGSize)a3;
- (CGSize)_layoutSubviewsInBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)_sizeForLabel:(id)a3 maxText:(id)a4 constrainedToSize:(CGSize)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKLegacyButtonInterface)primaryButton;
- (PKPaymentSetupFooterView)initWithFrame:(CGRect)a3 context:(int64_t)a4;
- (UIButton)manualEntryButton;
- (UIButton)secondaryActionButton;
- (UIButton)setUpLaterButton;
- (UIButton)skipCardButton;
- (UIButton)tertiaryActionButton;
- (UIEdgeInsets)readableContentInsets;
- (UILabel)notificationText;
- (id)createAlternateActionButtonWithTitle:(id)a3;
- (id)createPrimaryButton;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)a3;
- (void)setButtonsEnabled:(BOOL)a3;
- (void)setPrimaryButtonTintColor:(id)a3;
@end

@implementation PKPaymentSetupFooterView

- (void)pk_applyAppearance:(id)a3
{
  v4 = a3;
  v5 = [v4 tintColor];
  [(PKPaymentSetupFooterView *)self setTintColor:v5];

  v6 = [v4 continueButtonTintColor];

  [(PKPaymentSetupFooterView *)self setPrimaryButtonTintColor:v6];
}

- (PKPaymentSetupFooterView)initWithFrame:(CGRect)a3 context:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFooterView;
  v5 = [(PKPaymentSetupFooterView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    *(v5 + 59) = a4;
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

- (void)setButtonsEnabled:(BOOL)a3
{
  v3 = a3;
  self->_buttonsEnabled = a3;
  [(PKLegacyButtonInterface *)self->_primaryButton setEnabled:?];
  [(UIButton *)self->_setUpLaterButton setEnabled:v3];
  [(UIButton *)self->_manualEntryButton setEnabled:v3];
  [(UIButton *)self->_secondaryActionButton setEnabled:v3];
  [(UIButton *)self->_tertiaryActionButton setEnabled:v3];
  skipCardButton = self->_skipCardButton;

  [(UIButton *)skipCardButton setEnabled:v3];
}

- (PKLegacyButtonInterface)primaryButton
{
  primaryButton = self->_primaryButton;
  if (!primaryButton)
  {
    v4 = [(PKPaymentSetupFooterView *)self createPrimaryButton];
    [(PKPaymentSetupFooterView *)self setPrimaryButton:v4];

    primaryButton = self->_primaryButton;
  }

  return primaryButton;
}

- (void)setPrimaryButtonTintColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_primaryButtonTintColor, a3);
  primaryButton = self->_primaryButton;
  if (primaryButton)
  {
    [(PKLegacyButtonInterface *)primaryButton setTintColor:v6];
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

- (BOOL)_setUIButton:(id)a3 forVariable:(id *)a4
{
  v6 = a3;
  v7 = [(PKPaymentSetupFooterView *)self _setUIView:v6 forVariable:a4];
  if (v7)
  {
    [v6 setEnabled:self->_buttonsEnabled];
  }

  return v7;
}

- (BOOL)_setUIView:(id)a3 forVariable:(id *)a4
{
  v7 = a3;
  if (!a4 || *a4 == v7)
  {
    v8 = 0;
  }

  else
  {
    [*a4 removeFromSuperview];
    objc_storeStrong(a4, a3);
    if (*a4)
    {
      [(PKPaymentSetupFooterView *)self addSubview:?];
    }

    [(PKPaymentSetupFooterView *)self setNeedsLayout];
    v8 = 1;
  }

  return v8;
}

- (CGSize)_sizeForLabel:(id)a3 maxText:(id)a4 constrainedToSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v25[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = MEMORY[0x1E695F060];
  if (v8 && !v9)
  {
    v10 = [v8 text];
  }

  v12 = *v11;
  v13 = v11[1];
  if (v8 && v10)
  {
    v14 = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
    v15 = [v14 mutableCopy];

    [v15 setAlignment:{objc_msgSend(v8, "textAlignment")}];
    v16 = objc_alloc(MEMORY[0x1E696AAB0]);
    v24[0] = *MEMORY[0x1E69DB648];
    v17 = [v8 font];
    v24[1] = *MEMORY[0x1E69DB688];
    v25[0] = v17;
    v25[1] = v15;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v19 = [v16 initWithString:v10 attributes:v18];

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

- (CGSize)_adjacentButtonSizeConstrainedToSize:(CGSize)a3
{
  height = a3.height;
  v5 = (a3.width + -12.0) * 0.5;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKPaymentSetupFooterView *)self _layoutSubviewsInBounds:1 isTemplateLayout:0.0, 0.0, a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKPaymentSetupFooterView;
  [(PKPaymentSetupFooterView *)&v17 layoutSubviews];
  v3 = [(PKPaymentSetupFooterView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 1 && (PKPaymentSetupContextIsSetupAssistant() & 1) != 0)
  {
    v4 = [(PKPaymentSetupFooterView *)self readableContentGuide];
    [v4 layoutFrame];
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

- (CGSize)_layoutSubviewsInBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  y = a3.origin.y;
  v8 = [(PKPaymentSetupFooterView *)self _shouldReverseLayoutDirection:a3.origin.x];
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
  v41 = a4;
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
    if (!a4)
    {
      [(PKLegacyButtonInterface *)self->_primaryButton setFrame:v55[1].origin.x, v55[1].origin.y, v55[1].size.width, v55[1].size.height];
    }

    CGRectDivide(v39, v55 + 1, &v39, v25, v10);
    if (!a4)
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
    v3 = [MEMORY[0x1E69DC738] pkui_tintedGlassButtonConfiguration];
    [v3 setButtonSize:3];
    v4 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [v3 setTitle:v4];

    [v3 setTitleAlignment:2];
    [v3 contentInsets];
    v6 = v5;
    [v3 contentInsets];
    [v3 setContentInsets:{v6, 0.0}];
    v7 = [PKOBKPrimaryButton buttonWithConfiguration:v3 primaryAction:0];
    [v7 setConfiguration:v3];
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
    v3 = [v7 titleLabel];
    [v3 setNumberOfLines:0];
    [v3 setTextAlignment:1];
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38]);
    [v3 setFont:v8];
  }

  [v7 setExclusiveTouch:1];
  if (self->_primaryButtonTintColor)
  {
    [v7 setTintColor:?];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC888] tintColor];
    [v7 setTintColor:v10];
  }

  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];

  return v7;
}

- (id)createAlternateActionButtonWithTitle:(id)a3
{
  v3 = a3;
  if (_UISolariumFeatureFlagEnabled())
  {
    v4 = [MEMORY[0x1E69DC738] pkui_glassButtonConfiguration];
    [v4 setTitle:v3];

    [v4 setContentInsets:{15.0, 0.0, 15.0, 0.0}];
    [v4 setCornerStyle:4];
    [v4 setTitleAlignment:2];
    v5 = [MEMORY[0x1E69DC888] labelColor];
    [v4 setBaseForegroundColor:v5];

    v6 = [MEMORY[0x1E69DC888] systemGray6Color];
    [v4 setBaseBackgroundColor:v6];

    v7 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v4 primaryAction:0];
    [v7 setConfiguration:v4];
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB980]);
    [v7 pkui_updateTitleTextAttributesWithFont:v8];
  }

  else
  {
    v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
    v8 = [MEMORY[0x1E69DC740] pkui_plainConfigurationWithTitle:v3 font:v4];

    [v8 setContentInsets:{15.0, 0.0, 15.0, 0.0}];
    v7 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v8 primaryAction:0];
    [v7 setConfiguration:v8];
    v9 = [v7 titleLabel];
    [v9 setTextAlignment:1];

    v10 = [v7 titleLabel];
    [v10 setFont:v4];
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