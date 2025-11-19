@interface PKPeerPaymentMessagesMultiActionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forStyle:(unint64_t)a4;
- (PKPeerPaymentMessagesMultiActionView)init;
- (double)_heightForPrimaryButtonForAvailableSize:(CGSize)a3;
- (id)_axIdentifierForAction:(unint64_t)a3;
- (id)_buttonForAction:(unint64_t)a3;
- (id)_primaryButton;
- (id)_secondaryButton;
- (id)_titleForAction:(unint64_t)a3;
- (void)_handleActionButton:(id)a3;
- (void)_updateActionButtons;
- (void)_updateCenterActionButton;
- (void)_updateConfigurationForButton:(id)a3 withAction:(unint64_t)a4;
- (void)_updateForActiveActionWithAssociatedButton:(id)a3;
- (void)_updateLeadingActionButton;
- (void)_updateTrailingActionButton;
- (void)layoutSubviews;
- (void)resetActiveAction;
- (void)setActiveAction:(unint64_t)a3;
- (void)setButtonEnabled:(BOOL)a3 forAction:(unint64_t)a4;
- (void)setCenterAction:(unint64_t)a3;
- (void)setCenterButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setLeadingAction:(unint64_t)a3;
- (void)setRecipient:(id)a3;
- (void)setTrailingAction:(unint64_t)a3;
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
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(PKPeerPaymentMessagesMultiActionView *)v2 setBackgroundColor:v3];

    v4 = [(PKPeerPaymentMessagesMultiActionView *)v2 _secondaryButton];
    centerButton = v2->_centerButton;
    v2->_centerButton = v4;

    v6 = objc_alloc(MEMORY[0x1E6979378]);
    v7 = [v6 initWithType:*MEMORY[0x1E6979928]];
    [v7 setName:@"gaussianBlur"];
    v8 = [(UIButton *)v2->_centerButton layer];
    v29[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    [v8 setFilters:v9];

    [(PKPeerPaymentMessagesMultiActionView *)v2 addSubview:v2->_centerButton];
    v10 = [(PKPeerPaymentMessagesMultiActionView *)v2 _primaryButton];
    leadingButton = v2->_leadingButton;
    v2->_leadingButton = v10;

    [(PKPeerPaymentMessagesMultiActionView *)v2 addSubview:v2->_leadingButton];
    v12 = [(PKPeerPaymentMessagesMultiActionView *)v2 _primaryButton];
    trailingButton = v2->_trailingButton;
    v2->_trailingButton = v12;

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

- (CGSize)sizeThatFits:(CGSize)a3 forStyle:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  if (self->_leadingAction)
  {
    v7 = 1;
  }

  else
  {
    v7 = self->_trailingAction != 0;
  }

  if (a4)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKPeerPaymentMessagesMultiActionView *)self sizeThatFits:self->_style forStyle:a3.width, a3.height];
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
  v11 = [(PKPeerPaymentMessagesMultiActionView *)self _shouldReverseLayoutDirection];
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
    if (v11)
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

- (void)setLeadingAction:(unint64_t)a3
{
  self->_leadingAction = a3;
  [(PKPeerPaymentMessagesMultiActionView *)self _updateLeadingActionButton];

  [(PKPeerPaymentMessagesMultiActionView *)self setNeedsLayout];
}

- (void)setTrailingAction:(unint64_t)a3
{
  self->_trailingAction = a3;
  [(PKPeerPaymentMessagesMultiActionView *)self _updateTrailingActionButton];

  [(PKPeerPaymentMessagesMultiActionView *)self setNeedsLayout];
}

- (void)setCenterAction:(unint64_t)a3
{
  self->_centerAction = a3;
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

- (void)_updateConfigurationForButton:(id)a3 withAction:(unint64_t)a4
{
  v14 = a3;
  v6 = [v14 configuration];
  activeAction = self->_activeAction;
  [v6 setShowsActivityIndicator:activeAction == a4];
  if (activeAction == a4)
  {
    [v6 setTitle:0];
  }

  else
  {
    v8 = [(PKPeerPaymentMessagesMultiActionView *)self _titleForAction:a4];
    [v6 setTitle:v8];
  }

  centerAction = self->_centerAction;
  if (centerAction == a4)
  {
    +[PKPeerPaymentTheme secondaryButtonTextColor];
  }

  else
  {
    +[PKPeerPaymentTheme primaryTextColor];
  }
  v10 = ;
  v11 = [v14 state];
  if (v11 == 2)
  {
    v12 = +[PKPeerPaymentTheme disabledTextColor];
    goto LABEL_12;
  }

  if (v11 == 1 && centerAction == a4)
  {
    v12 = +[PKPeerPaymentTheme secondaryButtonTextPressedColor];
LABEL_12:
    v13 = v12;

    v10 = v13;
  }

  [v6 setBaseForegroundColor:v10];
  [v14 setConfiguration:v6];
}

- (id)_buttonForAction:(unint64_t)a3
{
  v4 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__centerButton;
  if (self->_centerAction == a3 || (v4 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__leadingButton, self->_leadingAction == a3) || (v4 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__trailingButton, self->_trailingAction == a3))
  {
    v5 = *(&self->super.super.super.isa + *v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateForActiveActionWithAssociatedButton:(id)a3
{
  v6 = a3;
  activeAction = self->_activeAction;
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    [v6 setNeedsUpdateConfiguration];
  }

  else
  {
    [v6 setShowsActivityIndicator:activeAction != 0];
  }

  v5 = activeAction == 0;
  [(UIButton *)self->_centerButton setEnabled:v5];
  [(UIButton *)self->_leadingButton setEnabled:v5];
  [(UIButton *)self->_trailingButton setEnabled:v5];
}

- (void)setActiveAction:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [(PKPeerPaymentMessagesMultiActionView *)self _buttonForAction:?];
  if (v5)
  {
    if (self->_activeAction)
    {
      [(PKPeerPaymentMessagesMultiActionView *)self resetActiveAction];
    }

    self->_activeAction = a3;
    [(PKPeerPaymentMessagesMultiActionView *)self _updateForActiveActionWithAssociatedButton:v5];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a3;
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

- (void)setButtonEnabled:(BOOL)a3 forAction:(unint64_t)a4
{
  v4 = a3;
  v5 = [(PKPeerPaymentMessagesMultiActionView *)self _buttonForAction:a4];
  [v5 setEnabled:v4];
}

- (void)setRecipient:(id)a3
{
  v5 = a3;
  if (self->_recipient != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_recipient, a3);
    [(PKPeerPaymentMessagesMultiActionView *)self _updateActionButtons];
    v5 = v6;
  }
}

- (id)_primaryButton
{
  if (PKIsVision())
  {
    v3 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [v3 setCornerStyle:4];
    v4 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v3 primaryAction:0];
  }

  else if (_UISolariumFeatureFlagEnabled())
  {
    v3 = [MEMORY[0x1E69DC740] _clearGlassButtonConfiguration];
    v5 = +[PKPeerPaymentTheme primaryTextColor];
    [v3 setBaseForegroundColor:v5];

    [v3 setImagePadding:5.0];
    [v3 setTitleLineBreakMode:4];
    objc_initWeak(&location, self);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __54__PKPeerPaymentMessagesMultiActionView__primaryButton__block_invoke;
    v14 = &unk_1E80181D0;
    objc_copyWeak(&v15, &location);
    [v3 setTitleTextAttributesTransformer:&v11];
    v4 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v3 primaryAction:{0, v11, v12, v13, v14}];
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

    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40], 2, 0);
    v9 = [(PKPeerPaymentMessagesRoundedRectangleButton *)v4 titleLabel];
    [v9 setFont:v3];
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
  v4 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  if (_UISolariumFeatureFlagEnabled())
  {
    v5 = +[PKPeerPaymentTheme secondaryButtonTextColor];
    [v4 setBaseForegroundColor:v5];

    [v4 setTitleTextAttributesTransformer:&__block_literal_global_446];
    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v4 primaryAction:0];
  }

  else
  {
    v7 = [PKPeerPaymentMessagesButton alloc];
    v6 = [(PKPeerPaymentMessagesButton *)v7 initWithFrame:0 usePlatterColor:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = [(PKPeerPaymentMessagesButton *)v6 titleLabel];
    [v8 setFont:v3];

    [(PKPeerPaymentMessagesButton *)v6 setConfiguration:v4];
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

- (double)_heightForPrimaryButtonForAvailableSize:(CGSize)a3
{
  v3 = _UISolariumFeatureFlagEnabled();
  result = 50.0;
  if (v3)
  {
    return 48.0;
  }

  return result;
}

- (id)_titleForAction:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 6)
  {
    if (a3 == 1)
    {
      v8 = [(PKPeerPaymentRecipient *)self->_recipient displayName];
      v6 = v8;
      if (v8)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_4.isa, &stru_1F3BD5BF0.isa, v8);
        goto LABEL_16;
      }

      v10 = @"PEER_PAYMENT_MESSAGES_ACTION_SEND";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_21;
      }

      v5 = [(PKPeerPaymentRecipient *)self->_recipient displayName];
      v6 = v5;
      if (v5)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_6.isa, &stru_1F3BD5BF0.isa, v5);
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

  if (a3 == 7)
  {
    v7 = PKLocalizedPeerPaymentRecurringString(&cfstr_PeerPaymentMes_8.isa);
  }

  else
  {
    if (a3 == 11)
    {
      v4 = @"PEER_PAYMENT_MESSAGES_ACTION_REQUEST_WITHOUT_AMOUNT";
    }

    else
    {
      if (a3 != 12)
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

- (id)_axIdentifierForAction:(unint64_t)a3
{
  if (a3 - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E8018250[a3 - 1];
  }
}

- (void)_handleActionButton:(id)a3
{
  v4 = a3;
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    v6 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__leadingAction;
    v8 = v4;
    if (self->_leadingButton == v4 || (v6 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__trailingAction, self->_trailingButton == v4) || (v6 = &OBJC_IVAR___PKPeerPaymentMessagesMultiActionView__centerAction, self->_centerButton == v4))
    {
      v7 = *(&self->super.super.super.isa + *v6);
    }

    else
    {
      v7 = 0;
    }

    actionHandler[2](actionHandler, self, v7);
    v4 = v8;
  }
}

- (void)setCenterButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(UIButton *)self->_centerButton layer];
  [v6 opacity];
  if (*&v7 != v5)
  {
    if (v4)
    {
      if (v5)
      {
        v18 = 0;
        v19 = 0;
        ContentViewVisibilityAnimations(0, &v19, &v18, 0);
        v8 = v19;
        v9 = v18;
        v10 = [v6 pkui_addAdditiveAnimation:v8];
        v11 = [v6 pkui_addAdditiveAnimation:v9];

LABEL_6:
        LODWORD(v7) = 1.0;
        [v6 setOpacity:v7];
        [v6 setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
        goto LABEL_9;
      }

      v16 = 0;
      v17 = 0;
      ContentViewVisibilityAnimations(&v17, 0, 0, &v16);
      v12 = v17;
      v13 = v16;
      v14 = [v6 pkui_addAdditiveAnimation:v13];
      v15 = [v6 pkui_addAdditiveAnimation:v12];
    }

    else if (v5)
    {
      goto LABEL_6;
    }

    [v6 setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v6 setOpacity:0.0];
  }

LABEL_9:
}

@end