@interface PKPaymentSetupDockView
- (CGSize)_layoutSubviewsInBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4 includePrivacyLink:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFitsWithoutPrivacyLink:(CGSize)a3;
- (PKLegacyButtonInterface)primaryButton;
- (PKPaymentSetupDockView)initWithFrame:(CGRect)a3 context:(int64_t)a4;
- (PKPaymentSetupFooterView)footerView;
- (UIColor)primaryButtonTintColor;
- (UITextView)buttonExplanationTextView;
- (void)_createEmptyFooterViewIfNecessary;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)a3;
- (void)setAdditionalView:(id)a3;
- (void)setButtonExplanationText:(id)a3;
- (void)setButtonsEnabled:(BOOL)a3;
- (void)setFooterView:(id)a3;
- (void)setLockUpView:(id)a3;
- (void)setPrimaryButton:(id)a3;
- (void)setPrimaryButtonTintColor:(id)a3;
- (void)setPrivacyLink:(id)a3;
@end

@implementation PKPaymentSetupDockView

- (PKPaymentSetupDockView)initWithFrame:(CGRect)a3 context:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = PKPaymentSetupDockView;
  v5 = [(PKPaymentSetupDockView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_context = a4;
    v7 = [(PKPaymentSetupDockView *)v5 traitCollection];
    v8 = [v7 userInterfaceIdiom];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
    }

    else
    {
      IsSetupAssistant = 0;
    }

    v6->_isBuddyiPad = IsSetupAssistant;
    v6->_useAdjacentLayout = 0;
    v10 = _UISolariumFeatureFlagEnabled();
    v11 = 30.0;
    if (v10)
    {
      v11 = 20.0;
    }

    v6->_additionalViewBottomPadding = v11;
    [(PKPaymentSetupDockView *)v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9710]];
  }

  return v6;
}

- (void)setPrivacyLink:(id)a3
{
  v8 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    v5 = [(OBPrivacyLinkController *)self->_privacyLink view];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_privacyLink, a3);
    privacyLink = self->_privacyLink;
    if (privacyLink)
    {
      v7 = [(OBPrivacyLinkController *)privacyLink view];
      [(PKPaymentSetupDockView *)self addSubview:v7];
    }

    [(PKPaymentSetupDockView *)self setNeedsLayout];
  }
}

- (void)setAdditionalView:(id)a3
{
  v5 = a3;
  additionalView = self->_additionalView;
  if (additionalView != v5)
  {
    v7 = v5;
    [(UIView *)additionalView removeFromSuperview];
    objc_storeStrong(&self->_additionalView, a3);
    if (self->_additionalView)
    {
      [(PKPaymentSetupDockView *)self addSubview:?];
    }

    [(PKPaymentSetupDockView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setButtonExplanationText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(PKPaymentSetupDockView *)self buttonExplanationTextView];
    [v5 setText:v8];
    [(PKPaymentSetupDockView *)self setNeedsLayout];
  }

  else
  {
    buttonExplanationTextView = self->_buttonExplanationTextView;
    if (!buttonExplanationTextView)
    {
      goto LABEL_6;
    }

    v8 = 0;
    [(UITextView *)buttonExplanationTextView removeFromSuperview];
    v7 = self->_buttonExplanationTextView;
    self->_buttonExplanationTextView = 0;

    [(PKPaymentSetupDockView *)self setNeedsLayout];
  }

  v4 = v8;
LABEL_6:
}

- (UITextView)buttonExplanationTextView
{
  buttonExplanationTextView = self->_buttonExplanationTextView;
  if (!buttonExplanationTextView)
  {
    v4 = [MEMORY[0x1E69DD168] pkui_plainInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v5 = self->_buttonExplanationTextView;
    self->_buttonExplanationTextView = v4;

    [(UITextView *)self->_buttonExplanationTextView setTextAlignment:PKOBKTextAlignment()];
    v6 = self->_buttonExplanationTextView;
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v6 setTextColor:v7];

    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC38]);
    [(UITextView *)self->_buttonExplanationTextView setFont:v8];
    [(UITextView *)self->_buttonExplanationTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_buttonExplanationTextView setEditable:0];
    [(UITextView *)self->_buttonExplanationTextView setSelectable:1];
    [(UITextView *)self->_buttonExplanationTextView setScrollingEnabled:0];
    [(UITextView *)self->_buttonExplanationTextView _setInteractiveTextSelectionDisabled:1];
    [(PKPaymentSetupDockView *)self addSubview:self->_buttonExplanationTextView];
    [(PKPaymentSetupDockView *)self setNeedsLayout];

    buttonExplanationTextView = self->_buttonExplanationTextView;
  }

  return buttonExplanationTextView;
}

- (PKLegacyButtonInterface)primaryButton
{
  [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
  footerView = self->_footerView;

  return [(PKPaymentSetupFooterView *)footerView primaryButton];
}

- (void)setPrimaryButton:(id)a3
{
  v4 = a3;
  [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
  [(PKPaymentSetupFooterView *)self->_footerView setPrimaryButton:v4];
}

- (void)setPrimaryButtonTintColor:(id)a3
{
  v4 = a3;
  [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
  [(PKPaymentSetupFooterView *)self->_footerView setPrimaryButtonTintColor:v4];
}

- (UIColor)primaryButtonTintColor
{
  [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
  footerView = self->_footerView;

  return [(PKPaymentSetupFooterView *)footerView primaryButtonTintColor];
}

- (void)setLockUpView:(id)a3
{
  v5 = a3;
  lockUpView = self->_lockUpView;
  if (lockUpView != v5)
  {
    v7 = v5;
    [(ASCLockupView *)lockUpView removeFromSuperview];
    objc_storeStrong(&self->_lockUpView, a3);
    if (self->_lockUpView)
    {
      [(PKPaymentSetupDockView *)self addSubview:?];
    }

    [(PKPaymentSetupDockView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (PKPaymentSetupFooterView)footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = [PKPaymentSetupFooterView alloc];
    v5 = [(PKPaymentSetupFooterView *)v4 initWithFrame:self->_context context:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PKPaymentSetupFooterView *)v5 setUseAdjacentLayout:self->_useAdjacentLayout];
    [(PKPaymentSetupDockView *)self setFooterView:v5];

    footerView = self->_footerView;
  }

  return footerView;
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  footerView = self->_footerView;
  if (footerView != v5)
  {
    v7 = v5;
    [(PKPaymentSetupFooterView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, a3);
    if (v7)
    {
      [(PKPaymentSetupDockView *)self addSubview:self->_footerView];
    }

    else
    {
      [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
    }

    v5 = v7;
  }
}

- (void)_createEmptyFooterViewIfNecessary
{
  if (!self->_footerView)
  {
    v3 = [(PKPaymentSetupDockView *)self footerView];
    [v3 setSetUpLaterButton:0];
    [v3 setManualEntryButton:0];
    [v3 setPrimaryButton:0];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKPaymentSetupDockView *)self _layoutSubviewsInBounds:1 isTemplateLayout:1 includePrivacyLink:0.0, 0.0, a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFitsWithoutPrivacyLink:(CGSize)a3
{
  [(PKPaymentSetupDockView *)self _layoutSubviewsInBounds:1 isTemplateLayout:0 includePrivacyLink:0.0, 0.0, a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKPaymentSetupDockView;
  [(PKPaymentSetupDockView *)&v16 layoutSubviews];
  if (self->_isBuddyiPad)
  {
    v3 = [(PKPaymentSetupDockView *)self readableContentGuide];
    [v3 layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [(PKPaymentSetupDockView *)self bounds];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  [(PKPaymentSetupDockView *)self _layoutSubviewsInBounds:0 isTemplateLayout:1 includePrivacyLink:v5, v7, v9, v11];
}

- (CGSize)_layoutSubviewsInBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4 includePrivacyLink:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = PKSetupViewConstantsViewMargin();
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v13 = CGRectGetWidth(v58) + v12 * -2.0;
  v59.origin.x = x;
  v59.origin.y = y;
  v54 = width;
  v59.size.width = width;
  v59.size.height = height;
  v14 = CGRectGetHeight(v59);
  v55 = x + v12;
  [(PKPaymentSetupFooterView *)self->_footerView sizeThatFits:v13, 1.79769313e308];
  additionalView = self->_additionalView;
  v53 = v16;
  v56 = v14;
  if (additionalView)
  {
    [(UIView *)additionalView sizeThatFits:v13, v14];
    v18 = v17;
    if (!v6)
    {
      [(UIView *)self->_additionalView setFrame:v55, 11.0, v13, v17];
    }

    v60.origin.x = v55;
    v60.origin.y = 11.0;
    v60.size.width = v13;
    v60.size.height = v18;
    v19 = CGRectGetMaxY(v60) + self->_additionalViewBottomPadding;
  }

  else
  {
    v19 = 0.0;
  }

  privacyLink = self->_privacyLink;
  if (privacyLink)
  {
    v21 = !v5;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = v55;
    v23 = v53;
  }

  else
  {
    if (v19 == 0.0)
    {
      v24 = 11.0;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = [(OBPrivacyLinkController *)privacyLink view];
    [v25 setFrame:{0.0, 0.0, v13, 0.0}];
    [v25 setNeedsLayout];
    [v25 layoutIfNeeded];
    LODWORD(v26) = 1148846080;
    LODWORD(v27) = 1112014848;
    [v25 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:v14 verticalFittingPriority:{v26, v27}];
    v29 = v28;
    v31 = v30;
    v32 = v19 + v24;
    if (v6)
    {
      v22 = v55;
    }

    else
    {
      v33 = [(OBPrivacyLinkController *)self->_privacyLink view];
      v22 = v55;
      PKRectCenteredXInRect();
      [v33 setFrame:?];
    }

    v61.origin.x = v22;
    v61.origin.y = v32;
    v61.size.width = v29;
    v61.size.height = v31;
    MaxY = CGRectGetMaxY(v61);
    v35 = 5.0;
    v23 = v53;
    if (v53 > 0.0)
    {
      v36 = _UISolariumFeatureFlagEnabled();
      v35 = 30.0;
      if (v36)
      {
        v35 = 20.0;
      }
    }

    v19 = MaxY + v35;
  }

  buttonExplanationTextView = self->_buttonExplanationTextView;
  if (buttonExplanationTextView)
  {
    if (v19 == 0.0)
    {
      v38 = 24.0;
    }

    else
    {
      v38 = v19;
    }

    [(UITextView *)buttonExplanationTextView sizeThatFits:v13, v56, *&v53];
    v40 = v39;
    if (!v6)
    {
      [(UITextView *)self->_buttonExplanationTextView setFrame:v22, v38, v13, v39];
    }

    v62.origin.x = v22;
    v62.origin.y = v38;
    v62.size.width = v13;
    v62.size.height = v40;
    v19 = CGRectGetMaxY(v62) + 25.0;
  }

  lockUpView = self->_lockUpView;
  if (lockUpView)
  {
    if (v19 == 0.0)
    {
      v42 = 5.0;
    }

    else
    {
      v42 = v19;
    }

    [(ASCLockupView *)lockUpView sizeThatFits:v13, v56, *&v53];
    v44 = v43;
    if (!v6)
    {
      [(ASCLockupView *)self->_lockUpView setFrame:v22, v42, v13, v43];
    }

    v63.origin.x = v22;
    v63.origin.y = v42;
    v63.size.width = v13;
    v63.size.height = v44;
    v19 = CGRectGetMaxY(v63) + 5.0;
  }

  if (self->_footerView && v23 > 0.0)
  {
    if (v19 == 0.0)
    {
      v45 = _os_feature_enabled_impl();
      v46 = 24.0;
      if (v45)
      {
        v47 = _UISolariumFeatureFlagEnabled();
        v46 = 32.0;
        if ((v47 & 1) == 0)
        {
          v46 = 24.0;
        }
      }

      v19 = v19 + v46;
    }

    v48 = 0.0;
    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      if (self->_requiresAdditionalPrimaryButtonPadding)
      {
        v48 = 93.5;
      }

      else
      {
        v48 = 78.0;
      }
    }

    if (v48 <= v23)
    {
      v48 = v23;
    }

    if (!v6)
    {
      [(PKPaymentSetupFooterView *)self->_footerView setFrame:v22, v19, v13, v48];
    }

    v64.origin.x = v22;
    v64.origin.y = v19;
    v64.size.width = v13;
    v64.size.height = v48;
    v19 = CGRectGetMaxY(v64);
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v49 = _UISolariumFeatureFlagEnabled();
    v50 = 38.0;
    if (!v49)
    {
      v50 = 0.0;
    }

    v19 = v19 + v50;
  }

  v51 = v54;
  v52 = v19;
  result.height = v52;
  result.width = v51;
  return result;
}

- (void)setButtonsEnabled:(BOOL)a3
{
  v3 = a3;
  [(PKPaymentSetupFooterView *)self->_footerView setButtonsEnabled:?];
  [(ASCLockupView *)self->_lockUpView setUserInteractionEnabled:v3];
  privacyLink = self->_privacyLink;

  [(OBPrivacyLinkController *)privacyLink setLinkEnabled:v3];
}

- (void)pk_applyAppearance:(id)a3
{
  v4 = a3;
  v5 = [v4 tintColor];
  [(PKPaymentSetupDockView *)self setTintColor:v5];

  v6 = [v4 continueButtonTintColor];

  [(PKPaymentSetupDockView *)self setPrimaryButtonTintColor:v6];
}

@end