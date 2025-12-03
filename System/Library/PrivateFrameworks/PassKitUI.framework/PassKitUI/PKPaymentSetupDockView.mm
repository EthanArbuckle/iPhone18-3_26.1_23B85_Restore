@interface PKPaymentSetupDockView
- (CGSize)_layoutSubviewsInBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout includePrivacyLink:(BOOL)link;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFitsWithoutPrivacyLink:(CGSize)link;
- (PKLegacyButtonInterface)primaryButton;
- (PKPaymentSetupDockView)initWithFrame:(CGRect)frame context:(int64_t)context;
- (PKPaymentSetupFooterView)footerView;
- (UIColor)primaryButtonTintColor;
- (UITextView)buttonExplanationTextView;
- (void)_createEmptyFooterViewIfNecessary;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)appearance;
- (void)setAdditionalView:(id)view;
- (void)setButtonExplanationText:(id)text;
- (void)setButtonsEnabled:(BOOL)enabled;
- (void)setFooterView:(id)view;
- (void)setLockUpView:(id)view;
- (void)setPrimaryButton:(id)button;
- (void)setPrimaryButtonTintColor:(id)color;
- (void)setPrivacyLink:(id)link;
@end

@implementation PKPaymentSetupDockView

- (PKPaymentSetupDockView)initWithFrame:(CGRect)frame context:(int64_t)context
{
  v13.receiver = self;
  v13.super_class = PKPaymentSetupDockView;
  v5 = [(PKPaymentSetupDockView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_context = context;
    traitCollection = [(PKPaymentSetupDockView *)v5 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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

- (void)setPrivacyLink:(id)link
{
  linkCopy = link;
  if ((PKEqualObjects() & 1) == 0)
  {
    view = [(OBPrivacyLinkController *)self->_privacyLink view];
    [view removeFromSuperview];

    objc_storeStrong(&self->_privacyLink, link);
    privacyLink = self->_privacyLink;
    if (privacyLink)
    {
      view2 = [(OBPrivacyLinkController *)privacyLink view];
      [(PKPaymentSetupDockView *)self addSubview:view2];
    }

    [(PKPaymentSetupDockView *)self setNeedsLayout];
  }
}

- (void)setAdditionalView:(id)view
{
  viewCopy = view;
  additionalView = self->_additionalView;
  if (additionalView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)additionalView removeFromSuperview];
    objc_storeStrong(&self->_additionalView, view);
    if (self->_additionalView)
    {
      [(PKPaymentSetupDockView *)self addSubview:?];
    }

    [(PKPaymentSetupDockView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setButtonExplanationText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    v8 = textCopy;
    buttonExplanationTextView = [(PKPaymentSetupDockView *)self buttonExplanationTextView];
    [buttonExplanationTextView setText:v8];
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

  textCopy = v8;
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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UITextView *)v6 setTextColor:secondaryLabelColor];

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

- (void)setPrimaryButton:(id)button
{
  buttonCopy = button;
  [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
  [(PKPaymentSetupFooterView *)self->_footerView setPrimaryButton:buttonCopy];
}

- (void)setPrimaryButtonTintColor:(id)color
{
  colorCopy = color;
  [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
  [(PKPaymentSetupFooterView *)self->_footerView setPrimaryButtonTintColor:colorCopy];
}

- (UIColor)primaryButtonTintColor
{
  [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
  footerView = self->_footerView;

  return [(PKPaymentSetupFooterView *)footerView primaryButtonTintColor];
}

- (void)setLockUpView:(id)view
{
  viewCopy = view;
  lockUpView = self->_lockUpView;
  if (lockUpView != viewCopy)
  {
    v7 = viewCopy;
    [(ASCLockupView *)lockUpView removeFromSuperview];
    objc_storeStrong(&self->_lockUpView, view);
    if (self->_lockUpView)
    {
      [(PKPaymentSetupDockView *)self addSubview:?];
    }

    [(PKPaymentSetupDockView *)self setNeedsLayout];
    viewCopy = v7;
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

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  if (footerView != viewCopy)
  {
    v7 = viewCopy;
    [(PKPaymentSetupFooterView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, view);
    if (v7)
    {
      [(PKPaymentSetupDockView *)self addSubview:self->_footerView];
    }

    else
    {
      [(PKPaymentSetupDockView *)self _createEmptyFooterViewIfNecessary];
    }

    viewCopy = v7;
  }
}

- (void)_createEmptyFooterViewIfNecessary
{
  if (!self->_footerView)
  {
    footerView = [(PKPaymentSetupDockView *)self footerView];
    [footerView setSetUpLaterButton:0];
    [footerView setManualEntryButton:0];
    [footerView setPrimaryButton:0];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPaymentSetupDockView *)self _layoutSubviewsInBounds:1 isTemplateLayout:1 includePrivacyLink:0.0, 0.0, fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFitsWithoutPrivacyLink:(CGSize)link
{
  [(PKPaymentSetupDockView *)self _layoutSubviewsInBounds:1 isTemplateLayout:0 includePrivacyLink:0.0, 0.0, link.width, link.height];
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
    readableContentGuide = [(PKPaymentSetupDockView *)self readableContentGuide];
    [readableContentGuide layoutFrame];
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

- (CGSize)_layoutSubviewsInBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout includePrivacyLink:(BOOL)link
{
  linkCopy = link;
  layoutCopy = layout;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
    if (!layoutCopy)
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
    v21 = !linkCopy;
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

    view = [(OBPrivacyLinkController *)privacyLink view];
    [view setFrame:{0.0, 0.0, v13, 0.0}];
    [view setNeedsLayout];
    [view layoutIfNeeded];
    LODWORD(v26) = 1148846080;
    LODWORD(v27) = 1112014848;
    [view systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:v14 verticalFittingPriority:{v26, v27}];
    v29 = v28;
    v31 = v30;
    v32 = v19 + v24;
    if (layoutCopy)
    {
      v22 = v55;
    }

    else
    {
      view2 = [(OBPrivacyLinkController *)self->_privacyLink view];
      v22 = v55;
      PKRectCenteredXInRect();
      [view2 setFrame:?];
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
    if (!layoutCopy)
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
    if (!layoutCopy)
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

    if (!layoutCopy)
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

- (void)setButtonsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(PKPaymentSetupFooterView *)self->_footerView setButtonsEnabled:?];
  [(ASCLockupView *)self->_lockUpView setUserInteractionEnabled:enabledCopy];
  privacyLink = self->_privacyLink;

  [(OBPrivacyLinkController *)privacyLink setLinkEnabled:enabledCopy];
}

- (void)pk_applyAppearance:(id)appearance
{
  appearanceCopy = appearance;
  tintColor = [appearanceCopy tintColor];
  [(PKPaymentSetupDockView *)self setTintColor:tintColor];

  continueButtonTintColor = [appearanceCopy continueButtonTintColor];

  [(PKPaymentSetupDockView *)self setPrimaryButtonTintColor:continueButtonTintColor];
}

@end