@interface PKPeerPaymentMessagesMultiActionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forStyle:(unint64_t)style;
- (PKPeerPaymentMessagesMultiActionView)init;
- (double)_heightForPrimaryButtonForAvailableSize:(CGSize)size;
- (id)_axIdentifierForAction:(unint64_t)action;
- (id)_buttonForAction:(unint64_t)action;
- (id)_primaryButton;
- (id)_secondaryButton;
- (id)_titleForAction:(unint64_t)action;
- (void)_handleActionButton:(id)button;
- (void)_updateActionButtons;
- (void)_updateCenterActionButton;
- (void)_updateConfigurationForButton:(id)button withAction:(unint64_t)action;
- (void)_updateForActiveActionWithAssociatedButton:(id)button;
- (void)_updateLeadingActionButton;
- (void)_updateTrailingActionButton;
- (void)layoutSubviews;
- (void)resetActiveAction;
- (void)setActiveAction:(unint64_t)action;
- (void)setButtonEnabled:(BOOL)enabled forAction:(unint64_t)action;
- (void)setCenterAction:(unint64_t)action;
- (void)setCenterButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setLeadingAction:(unint64_t)action;
- (void)setRecipient:(id)recipient;
- (void)setTrailingAction:(unint64_t)action;
@end

@implementation PKPeerPaymentMessagesMultiActionView

- (PKPeerPaymentMessagesMultiActionView)init
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PKPeerPaymentMessagesMultiActionView;
  v2 = [(PKPeerPaymentMessagesMultiActionView *)&v28 init];
  if (v2)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKPeerPaymentMessagesMultiActionView *)v2 setBackgroundColor:clearColor];

    _secondaryButton = [(PKPeerPaymentMessagesMultiActionView *)v2 _secondaryButton];
    centerButton = v2->_centerButton;
    v2->_centerButton = _secondaryButton;

    v6 = objc_alloc(MEMORY[0x1E6979378]);
    v7 = [v6 initWithType:*MEMORY[0x1E6979928]];
    [v7 setName:@"gaussianBlur"];
    layer = [(UIButton *)v2->_centerButton layer];
    v29[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [layer setFilters:v9];

    [(PKPeerPaymentMessagesMultiActionView *)v2 addSubview:v2->_centerButton];
    _primaryButton = [(PKPeerPaymentMessagesMultiActionView *)v2 _primaryButton];
    leadingButton = v2->_leadingButton;
    v2->_leadingButton = _primaryButton;

    [(PKPeerPaymentMessagesMultiActionView *)v2 addSubview:v2->_leadingButton];
    _primaryButton2 = [(PKPeerPaymentMessagesMultiActionView *)v2 _primaryButton];
    trailingButton = v2->_trailingButton;
    v2->_trailingButton = _primaryButton2;

    [(PKPeerPaymentMessagesMultiActionView *)v2 addSubview:v2->_trailingButton];
    if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
    {
      objc_initWeak(&location, v2);
      v14 = v2->_leadingButton;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __44__PKPeerPaymentMessagesMultiActionView_init__block_invoke;
      v25[3] = &unk_1E8013CE8;
      objc_copyWeak(&v26, &location);
      [(UIButton *)v14 setConfigurationUpdateHandler:v25];
      v15 = v2->_trailingButton;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __44__PKPeerPaymentMessagesMultiActionView_init__block_invoke_2;
      v23[3] = &unk_1E8013CE8;
      objc_copyWeak(&v24, &location);
      [(UIButton *)v15 setConfigurationUpdateHandler:v23];
      v16 = v2->_centerButton;
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __44__PKPeerPaymentMessagesMultiActionView_init__block_invoke_3;
      v21 = &unk_1E8013CE8;
      objc_copyWeak(&v22, &location);
      [(UIButton *)v16 setConfigurationUpdateHandler:&v18];
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    [(PKPeerPaymentMessagesMultiActionView *)v2 setCenterButtonVisible:1 animated:0, v18, v19, v20, v21];
  }

  return v2;
}

void __44__PKPeerPaymentMessagesMultiActionView_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateConfigurationForButton:v5 withAction:WeakRetained[55]];
  }
}

void __44__PKPeerPaymentMessagesMultiActionView_init__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateConfigurationForButton:v5 withAction:WeakRetained[56]];
  }
}

void __44__PKPeerPaymentMessagesMultiActionView_init__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateConfigurationForButton:v5 withAction:WeakRetained[57]];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits forStyle:(unint64_t)style
{
  height = fits.height;
  width = fits.width;
  if (self->_leadingAction)
  {
    v7 = 1;
  }

  else
  {
    v7 = self->_trailingAction != 0;
  }

  if (style)
  {
    v8 = self->_centerAction == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (PKIsPad())
  {
    v10 = 178.0;
  }

  else
  {
    v10 = 168.0;
  }

  if (PKIsPad())
  {
    v11 = 163.0;
  }

  else
  {
    v11 = 153.0;
  }

  if (v10 + v11 < width)
  {
    if (PKIsPad())
    {
      v12 = 178.0;
    }

    else
    {
      v12 = 168.0;
    }

    if (PKIsPad())
    {
      v13 = 163.0;
    }

    else
    {
      v13 = 153.0;
    }

    width = v12 + v13;
  }

  [(PKPeerPaymentMessagesMultiActionView *)self _heightForPrimaryButtonForAvailableSize:width, height];
  v15 = v14;
  [(UIButton *)self->_centerButton sizeThatFits:width, height - v14];
  v17 = v16 + 0.0;
  if (!v9)
  {
    v17 = 0.0;
  }

  v18 = v15 + 0.0;
  if (!v7)
  {
    v18 = v17;
  }

  v19 = v15 + 16.0 + v16;
  if ((v7 & v9) != 1)
  {
    v19 = v18;
  }

  v20 = width;
  result.height = v19;
  result.width = v20;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPeerPaymentMessagesMultiActionView *)self sizeThatFits:self->_style forStyle:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = PKPeerPaymentMessagesMultiActionView;
  [(PKPeerPaymentMessagesMultiActionView *)&v30 layoutSubviews];
  [(PKPeerPaymentMessagesMultiActionView *)self bounds];
  memset(&slice, 0, sizeof(slice));
  UIRectCenteredXInRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  remainder.origin.x = v3;
  remainder.origin.y = v5;
  remainder.size.width = v7;
  remainder.size.height = v9;
  _shouldReverseLayoutDirection = [(PKPeerPaymentMessagesMultiActionView *)self _shouldReverseLayoutDirection];
  leadingAction = self->_leadingAction;
  trailingAction = self->_trailingAction;
  centerAction = self->_centerAction;
  if (_UISolariumFeatureFlagEnabled())
  {
    v15 = CGRectMaxYEdge;
  }

  else
  {
    v15 = CGRectMinYEdge;
  }

  [(PKPeerPaymentMessagesMultiActionView *)self _heightForPrimaryButtonForAvailableSize:v8, v10, 0, 0, 0, 0];
  v17 = v16;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  CGRectDivide(v31, &v27, &remainder, v17, v15);
  if (leadingAction)
  {
    v18 = trailingAction == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (leadingAction | trailingAction)
    {
      CGRectGetWidth(v27);
      Height = CGRectGetHeight(v27);
      v20 = 37;
      if (!leadingAction)
      {
        v20 = 38;
      }

      v21 = *(&self->super.super.super.isa + OBJC_IVAR___PKPeerPaymentMessagesButton__highlightedBackgroundColor[v20]);
      [v21 sizeThatFits:{1.79769313e308, Height}];
      _UISolariumFeatureFlagEnabled();
      UIRectCenteredRect();
      [v21 setFrame:?];
    }
  }

  else
  {
    if (_shouldReverseLayoutDirection)
    {
      v22 = CGRectMaxXEdge;
    }

    else
    {
      v22 = CGRectMinXEdge;
    }

    CGRectGetWidth(remainder);
    PKFloatRoundToPixel();
    v24 = v23 * 0.5;
    CGRectDivide(v27, &slice, &v27, v23 * 0.5, v22);
    [(UIButton *)self->_leadingButton setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    CGRectDivide(v27, &slice, &v27, 15.0, v22);
    CGRectDivide(v27, &slice, &v27, v24, v22);
    [(UIButton *)self->_trailingButton setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  if (centerAction)
  {
    CGRectDivide(remainder, &slice, &remainder, 16.0, v15);
    [(UIButton *)self->_centerButton sizeThatFits:remainder.size.width, remainder.size.height];
    CGRectDivide(remainder, &slice, &remainder, v25, v15);
    centerButton = self->_centerButton;
    PKSizeAlignedInRect();
    [(UIButton *)centerButton setFrame:?];
  }

  [(UIButton *)self->_leadingButton setHidden:leadingAction == 0];
  [(UIButton *)self->_trailingButton setHidden:trailingAction == 0];
  [(UIButton *)self->_centerButton setHidden:centerAction == 0];
}

- (void)setLeadingAction:(unint64_t)action
{
  self->_leadingAction = action;
  [(PKPeerPaymentMessagesMultiActionView *)self _updateLeadingActionButton];

  [(PKPeerPaymentMessagesMultiActionView *)self setNeedsLayout];
}

- (void)setTrailingAction:(unint64_t)action
{
  self->_trailingAction = action;
  [(PKPeerPaymentMessagesMultiActionView *)self _updateTrailingActionButton];

  [(PKPeerPaymentMessagesMultiActionView *)self setNeedsLayout];
}

- (void)setCenterAction:(unint64_t)action
{
  self->_centerAction = action;
  [(PKPeerPaymentMessagesMultiActionView *)self _updateCenterActionButton];

  [(PKPeerPaymentMessagesMultiActionView *)self setNeedsLayout];
}

- (void)_updateLeadingActionButton
{
  leadingButton = self->_leadingButton;
  v4 = [(PKPeerPaymentMessagesMultiActionView *)self _axIdentifierForAction:self->_leadingAction];
  [(UIButton *)leadingButton setAccessibilityIdentifier:v4];

  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    v5 = self->_leadingButton;

    [(UIButton *)v5 setNeedsUpdateConfiguration];
  }

  else
  {
    v6 = [(PKPeerPaymentMessagesMultiActionView *)self _titleForAction:self->_leadingAction];
    [(UIButton *)self->_leadingButton setTitle:v6 forState:0];
  }
}

- (void)_updateTrailingActionButton
{
  trailingButton = self->_trailingButton;
  v4 = [(PKPeerPaymentMessagesMultiActionView *)self _axIdentifierForAction:self->_trailingAction];
  [(UIButton *)trailingButton setAccessibilityIdentifier:v4];

  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    v5 = self->_trailingButton;

    [(UIButton *)v5 setNeedsUpdateConfiguration];
  }

  else
  {
    v6 = [(PKPeerPaymentMessagesMultiActionView *)self _titleForAction:self->_trailingAction];
    [(UIButton *)self->_trailingButton setTitle:v6 forState:0];
  }
}

- (void)_updateCenterActionButton
{
  centerButton = self->_centerButton;
  v4 = [(PKPeerPaymentMessagesMultiActionView *)self _axIdentifierForAction:self->_centerAction];
  [(UIButton *)centerButton setAccessibilityIdentifier:v4];

  if (_UISolariumFeatureFlagEnabled())
  {
    v5 = self->_centerButton;

    [(UIButton *)v5 setNeedsUpdateConfiguration];
  }

  else
  {
    v6 = [(PKPeerPaymentMessagesMultiActionView *)self _titleForAction:self->_centerAction];
    [(UIButton *)self->_centerButton setTitle:v6 forState:0];
  }
}

- (void)_updateActionButtons
{
  [(PKPeerPaymentMessagesMultiActionView *)self _updateLeadingActionButton];
  [(PKPeerPaymentMessagesMultiActionView *)self _updateTrailingActionButton];
  [(PKPeerPaymentMessagesMultiActionView *)self _updateCenterActionButton];

  [(PKPeerPaymentMessagesMultiActionView *)self setNeedsLayout];
}

- (void)_updateConfigurationForButton:(id)button withAction:(unint64_t)action
{
  buttonCopy = button;
  configuration = [buttonCopy configuration];
  activeAction = self->_activeAction;
  [configuration setShowsActivityIndicator:activeAction == action];
  if (activeAction == action)
  {
    [configuration setTitle:0];
  }

  else
  {
    v8 = [(PKPeerPaymentMessagesMultiActionView *)self _titleForAction:action];
    [configuration setTitle:v8];
  }

  centerAction = self->_centerAction;
  if (centerAction == action)
  {
    +[PKPeerPaymentTheme secondaryButtonTextColor];
  }

  else
  {
    +[PKPeerPaymentTheme primaryTextColor];
  }
  v10 = ;
  state = [buttonCopy state];
  if (state == 2)
  {
    v12 = +[PKPeerPaymentTheme disabledTextColor];
    goto LABEL_12;
  }

  if (state == 1 && centerAction == action)
  {
    v12 = +[PKPeerPaymentTheme secondaryButtonTextPressedColor];
LABEL_12:
    v13 = v12;

    v10 = v13;
  }

  [configuration setBaseForegroundColor:v10];
  [buttonCopy setConfiguration:configuration];
}

- (id)_buttonForAction:(unint64_t)action
{
  v4 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__centerButton;
  if (self->_centerAction == action || (v4 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__leadingButton, self->_leadingAction == action) || (v4 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__trailingButton, self->_trailingAction == action))
  {
    v5 = *(&self->super.super.super.isa + *v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateForActiveActionWithAssociatedButton:(id)button
{
  buttonCopy = button;
  activeAction = self->_activeAction;
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    [buttonCopy setNeedsUpdateConfiguration];
  }

  else
  {
    [buttonCopy setShowsActivityIndicator:activeAction != 0];
  }

  v5 = activeAction == 0;
  [(UIButton *)self->_centerButton setEnabled:v5];
  [(UIButton *)self->_leadingButton setEnabled:v5];
  [(UIButton *)self->_trailingButton setEnabled:v5];
}

- (void)setActiveAction:(unint64_t)action
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [(PKPeerPaymentMessagesMultiActionView *)self _buttonForAction:?];
  if (v5)
  {
    if (self->_activeAction)
    {
      [(PKPeerPaymentMessagesMultiActionView *)self resetActiveAction];
    }

    self->_activeAction = action;
    [(PKPeerPaymentMessagesMultiActionView *)self _updateForActiveActionWithAssociatedButton:v5];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      actionCopy = action;
      _os_log_error_impl(&dword_1BD026000, v6, OS_LOG_TYPE_ERROR, "PKPeerPaymentMessagesMultiActionView: view has no button associated with action %lu", &v7, 0xCu);
    }
  }
}

- (void)resetActiveAction
{
  v3 = [(PKPeerPaymentMessagesMultiActionView *)self _buttonForAction:self->_activeAction];
  self->_activeAction = 0;
  [(PKPeerPaymentMessagesMultiActionView *)self _updateForActiveActionWithAssociatedButton:v3];
}

- (void)setButtonEnabled:(BOOL)enabled forAction:(unint64_t)action
{
  enabledCopy = enabled;
  v5 = [(PKPeerPaymentMessagesMultiActionView *)self _buttonForAction:action];
  [v5 setEnabled:enabledCopy];
}

- (void)setRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (self->_recipient != recipientCopy)
  {
    v6 = recipientCopy;
    objc_storeStrong(&self->_recipient, recipient);
    [(PKPeerPaymentMessagesMultiActionView *)self _updateActionButtons];
    recipientCopy = v6;
  }
}

- (id)_primaryButton
{
  if (PKIsVision())
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setCornerStyle:4];
    v4 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
  }

  else if (_UISolariumFeatureFlagEnabled())
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] _clearGlassButtonConfiguration];
    v5 = +[PKPeerPaymentTheme primaryTextColor];
    [filledButtonConfiguration setBaseForegroundColor:v5];

    [filledButtonConfiguration setImagePadding:5.0];
    [filledButtonConfiguration setTitleLineBreakMode:4];
    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __54__PKPeerPaymentMessagesMultiActionView__primaryButton__block_invoke;
    v14 = &unk_1E80181D0;
    objc_copyWeak(&v15, &location);
    [filledButtonConfiguration setTitleTextAttributesTransformer:&v11];
    v4 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:{0, v11, v12, v13, v14}];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = objc_alloc_init(PKPeerPaymentMessagesRoundedRectangleButton);
    v6 = +[PKPeerPaymentTheme platterColor];
    [(PKPeerPaymentMessagesRoundedRectangleButton *)v4 setBackgroundColor:v6];

    v7 = +[PKPeerPaymentTheme primaryTextColor];
    [(PKPeerPaymentMessagesRoundedRectangleButton *)v4 setTitleColor:v7 forState:0];

    v8 = +[PKPeerPaymentTheme disabledTextColor];
    [(PKPeerPaymentMessagesRoundedRectangleButton *)v4 setTitleColor:v8 forState:2];

    filledButtonConfiguration = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40], 2, 0);
    titleLabel = [(PKPeerPaymentMessagesRoundedRectangleButton *)v4 titleLabel];
    [titleLabel setFont:filledButtonConfiguration];
  }

  [(PKPeerPaymentMessagesRoundedRectangleButton *)v4 addTarget:self action:sel__handleActionButton_ forControlEvents:64];

  return v4;
}

id __54__PKPeerPaymentMessagesMultiActionView__primaryButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 mutableCopy];
    v6 = [WeakRetained traitCollection];
    v7 = PKFontForDefaultDesign(v6, *MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB970]);
    [v5 setObject:v7 forKey:*MEMORY[0x1E69DB648]];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (id)_secondaryButton
{
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC40]);
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  if (_UISolariumFeatureFlagEnabled())
  {
    v5 = +[PKPeerPaymentTheme secondaryButtonTextColor];
    [plainButtonConfiguration setBaseForegroundColor:v5];

    [plainButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_446];
    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
  }

  else
  {
    v7 = [PKPeerPaymentMessagesButton alloc];
    v6 = [(PKPeerPaymentMessagesButton *)v7 initWithFrame:0 usePlatterColor:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    titleLabel = [(PKPeerPaymentMessagesButton *)v6 titleLabel];
    [titleLabel setFont:v3];

    [(PKPeerPaymentMessagesButton *)v6 setConfiguration:plainButtonConfiguration];
    v9 = +[PKPeerPaymentTheme secondaryButtonTextColor];
    [(PKPeerPaymentMessagesButton *)v6 setTitleColor:v9 forState:0];

    v10 = +[PKPeerPaymentTheme secondaryButtonTextPressedColor];
    [(PKPeerPaymentMessagesButton *)v6 setTitleColor:v10 forState:1];

    v11 = +[PKPeerPaymentTheme disabledTextColor];
    [(PKPeerPaymentMessagesButton *)v6 setTitleColor:v11 forState:2];
  }

  [(PKPeerPaymentMessagesButton *)v6 addTarget:self action:sel__handleActionButton_ forControlEvents:64];

  return v6;
}

id __56__PKPeerPaymentMessagesMultiActionView__secondaryButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40], *MEMORY[0x1E69DB970]);
  [v2 setObject:v3 forKey:*MEMORY[0x1E69DB648]];

  return v2;
}

- (double)_heightForPrimaryButtonForAvailableSize:(CGSize)size
{
  v3 = _UISolariumFeatureFlagEnabled();
  result = 50.0;
  if (v3)
  {
    return 48.0;
  }

  return result;
}

- (id)_titleForAction:(unint64_t)action
{
  v3 = 0;
  if (action <= 6)
  {
    if (action == 1)
    {
      displayName = [(PKPeerPaymentRecipient *)self->_recipient displayName];
      v6 = displayName;
      if (displayName)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_4.isa, &stru_1F3BD5BF0.isa, displayName);
        goto LABEL_16;
      }

      v10 = @"PEER_PAYMENT_MESSAGES_ACTION_SEND";
    }

    else
    {
      if (action != 2)
      {
        goto LABEL_21;
      }

      displayName2 = [(PKPeerPaymentRecipient *)self->_recipient displayName];
      v6 = displayName2;
      if (displayName2)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_6.isa, &stru_1F3BD5BF0.isa, displayName2);
        v9 = LABEL_16:;
LABEL_20:
        v3 = v9;

        goto LABEL_21;
      }

      v10 = @"PEER_PAYMENT_MESSAGES_ACTION_REQUEST";
    }

    v9 = PKLocalizedPeerPaymentString(&v10->isa);
    goto LABEL_20;
  }

  if (action == 7)
  {
    v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_8.isa);
  }

  else
  {
    if (action == 11)
    {
      v4 = @"PEER_PAYMENT_MESSAGES_ACTION_REQUEST_WITHOUT_AMOUNT";
    }

    else
    {
      if (action != 12)
      {
        goto LABEL_21;
      }

      v4 = @"PEER_PAYMENT_MESSAGES_ACTION_CONTINUE";
    }

    v7 = PKLocalizedPeerPaymentString(&v4->isa);
  }

  v3 = v7;
LABEL_21:

  return v3;
}

- (id)_axIdentifierForAction:(unint64_t)action
{
  if (action - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E8018250[action - 1];
  }
}

- (void)_handleActionButton:(id)button
{
  buttonCopy = button;
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    v6 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__leadingAction;
    v8 = buttonCopy;
    if (self->_leadingButton == buttonCopy || (v6 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__trailingAction, self->_trailingButton == buttonCopy) || (v6 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__centerAction, self->_centerButton == buttonCopy))
    {
      v7 = *(&self->super.super.super.isa + *v6);
    }

    else
    {
      v7 = 0;
    }

    actionHandler[2](actionHandler, self, v7);
    buttonCopy = v8;
  }
}

- (void)setCenterButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  layer = [(UIButton *)self->_centerButton layer];
  [layer opacity];
  if (*&v7 != visibleCopy)
  {
    if (animatedCopy)
    {
      if (visibleCopy)
      {
        v18 = 0;
        v19 = 0;
        ContentViewVisibilityAnimations(0, &v19, &v18, 0);
        v8 = v19;
        v9 = v18;
        v10 = [layer pkui_addAdditiveAnimation:v8];
        v11 = [layer pkui_addAdditiveAnimation:v9];

LABEL_6:
        LODWORD(v7) = 1.0;
        [layer setOpacity:v7];
        [layer setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
        goto LABEL_9;
      }

      v16 = 0;
      v17 = 0;
      ContentViewVisibilityAnimations(&v17, 0, 0, &v16);
      v12 = v17;
      v13 = v16;
      v14 = [layer pkui_addAdditiveAnimation:v13];
      v15 = [layer pkui_addAdditiveAnimation:v12];
    }

    else if (visibleCopy)
    {
      goto LABEL_6;
    }

    [layer setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    [layer setOpacity:0.0];
  }

LABEL_9:
}

@end