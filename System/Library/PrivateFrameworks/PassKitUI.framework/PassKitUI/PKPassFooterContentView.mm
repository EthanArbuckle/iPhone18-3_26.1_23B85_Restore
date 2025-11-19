@interface PKPassFooterContentView
- (CGRect)infoButtonFrame;
- (PKPassFooterContentView)initWithPass:(id)a3 presentationContext:(id)a4;
- (PKPassFooterContentViewDelegate)delegate;
- (id)_buttonWithTitle:(id)a3 action:(id)a4;
- (void)_infoButtonPressed:(id)a3;
- (void)_setCoachingState:(int64_t)a3;
- (void)_setPhysicalButtonRequired:(BOOL)a3;
- (void)_setRequestPileSuppression:(BOOL)a3;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
@end

@implementation PKPassFooterContentView

- (PKPassFooterContentView)initWithPass:(id)a3 presentationContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v41.receiver = self;
  v41.super_class = PKPassFooterContentView;
  v9 = [(PKPassFooterContentView *)&v41 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_21;
  }

  objc_storeStrong(&v9->_pass, a3);
  pass = v10->_pass;
  if (!pass)
  {
    v13 = 0;
    goto LABEL_14;
  }

  if ([(PKPass *)pass passType]!= PKPassTypeSecureElement)
  {
    v13 = 2;
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_secureElementPass, v10->_pass);
  if (v8 && [v8 isFieldDetect] && objc_msgSend(v8, "terminalType") == 4)
  {
LABEL_12:
    v13 = 4;
    goto LABEL_14;
  }

  v12 = [(PKPass *)v10->_pass barcodeSettings];

  if (!v12)
  {
    v14 = [(PKSecureElementPass *)v10->_secureElementPass devicePrimaryContactlessPaymentApplication];
    v15 = [v14 requiresConsentForDataRelease];

    if ((v15 & 1) == 0)
    {
      v13 = [(PKPass *)v10->_pass style]== 7;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v13 = 3;
LABEL_14:
  v10->_style = v13;
  if (!_os_feature_enabled_impl() || PKRunningInLockScreenPlugin())
  {
    v37 = v7;
    v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
    bottomRule = v10->_bottomRule;
    v10->_bottomRule = v16;

    v18 = v10->_bottomRule;
    v19 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v18 setBackgroundColor:v19];

    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
    v21 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
    v22 = [v20 imageWithSymbolConfiguration:v21];

    v23 = MEMORY[0x1E69DC740];
    v24 = [v22 configuration];
    v25 = [MEMORY[0x1E69DC888] labelColor];
    v26 = [v23 pkui_plainConfigurationWithImage:v22 imageConfiguration:v24 foregroundColor:v25];

    objc_initWeak(&location, v10);
    v27 = MEMORY[0x1E69DC628];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__PKPassFooterContentView_initWithPass_presentationContext___block_invoke;
    v38[3] = &unk_1E8010A60;
    objc_copyWeak(&v39, &location);
    v28 = [v27 actionWithHandler:v38];
    v29 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v26 primaryAction:v28];
    infoButton = v10->_infoButton;
    v10->_infoButton = v29;

    [(UIButton *)v10->_infoButton setConfigurationUpdateHandler:&__block_literal_global_227];
    v31 = *MEMORY[0x1E69DDC70];
    [(UIButton *)v10->_infoButton setMaximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
    [(UIButton *)v10->_infoButton setMinimumContentSizeCategory:v31];
    [(UIButton *)v10->_infoButton sizeToFit];
    style = v10->_style;
    if (style && style != 3 && PKRunningInRemoteContext())
    {
      v33 = [[PKLinkedApplication alloc] initWithPass:v37];
      [(PKLinkedApplication *)v33 setUseSmallIcon:1];
      v34 = [[PKLinkedAppIconView alloc] initWithLinkedApplication:v33];
      appIconView = v10->_appIconView;
      v10->_appIconView = v34;

      [(PKLinkedAppIconView *)v10->_appIconView setAlpha:0.0];
      [(PKPassFooterContentView *)v10 addSubview:v10->_bottomRule];
      [(PKPassFooterContentView *)v10 addSubview:v10->_appIconView];
      [(PKPassFooterContentView *)v10 addSubview:v10->_infoButton];
    }

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);

    v7 = v37;
  }

LABEL_21:

  return v10;
}

void __60__PKPassFooterContentView_initWithPass_presentationContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _infoButtonPressed:v4];
}

void __60__PKPassFooterContentView_initWithPass_presentationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  [v2 _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(PKPassFooterContentView *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = PKPassFooterContentView;
  [(PKPassFooterContentView *)&v3 dealloc];
}

- (CGRect)infoButtonFrame
{
  [(UIButton *)self->_infoButton frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = PKPassFooterContentView;
  [(PKPassFooterContentView *)&v36 layoutSubviews];
  [(PKPassFooterContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = PKUIGetMinScreenWidthType();
  v12 = 4.0;
  if (!v11)
  {
    v12 = 20.0;
  }

  v13 = v4 + v12;
  v14 = v6 + 0.0;
  v15 = 40.0;
  if (v11)
  {
    v15 = 8.0;
  }

  v16 = v8 - v15;
  v17 = v10 + -27.0;
  v18 = [(PKPassFooterContentView *)self _shouldReverseLayoutDirection];
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  MaxY = CGRectGetMaxY(v37);
  v31 = PKUIPixelLength();
  v35 = PKUIPixelLength();
  [(PKLinkedAppIconView *)self->_appIconView intrinsicContentSize];
  v20 = v19;
  v34 = v21;
  v22 = v13;
  if (v18)
  {
    v38.origin.x = v13;
    v38.origin.y = v6 + 0.0;
    v38.size.width = v16;
    v38.size.height = v10 + -27.0;
    v22 = CGRectGetMaxX(v38) - v20;
  }

  v33 = v22;
  v39.origin.x = v13;
  v39.origin.y = v6 + 0.0;
  v39.size.width = v16;
  v39.size.height = v10 + -27.0;
  v23 = CGRectGetMaxY(v39);
  [(UIButton *)self->_infoButton intrinsicContentSize];
  v25 = v24;
  v30 = v26;
  v27 = v13;
  if ((v18 & 1) == 0)
  {
    v40.origin.x = v13;
    v40.origin.y = v14;
    v40.size.width = v16;
    v40.size.height = v17;
    v27 = CGRectGetMaxX(v40) - v25;
  }

  v41.origin.y = v14;
  v41.origin.x = v13;
  v41.size.width = v16;
  v41.size.height = v17;
  v28 = CGRectGetMaxY(v41);
  v42.origin.y = 0.0;
  v42.origin.x = v27;
  v42.size.width = v25;
  v42.size.height = v30;
  v29 = v28 - CGRectGetHeight(v42);
  [(UIView *)self->_bottomRule setFrame:v13, MaxY + -60.0 - v31, v16, v35];
  [(PKLinkedAppIconView *)self->_appIconView setFrame:v33, v23 - v34, v20, v34];
  [(UIButton *)self->_infoButton setFrame:v27, v29, v25, v30];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(PKPassFooterContentView *)self _didInvalidate];
  }
}

- (void)_setPhysicalButtonRequired:(BOOL)a3
{
  if (self->_physicalButtonRequired == !a3)
  {
    self->_physicalButtonRequired = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passFooterContentViewDidChangePhysicalButtonRequirement:self];
  }
}

- (void)_setCoachingState:(int64_t)a3
{
  if (self->_coachingState != a3)
  {
    self->_coachingState = a3;
    [(PKPassFooterContentView *)self coachingStateDidChange];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passFooterContentViewDidChangeCoachingState:self];
  }
}

- (void)_setRequestPileSuppression:(BOOL)a3
{
  if (self->_requestPileSuppression != a3)
  {
    self->_requestPileSuppression = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v7 = objc_opt_respondsToSelector();
      v6 = v8;
      if (v7)
      {
        [v8 passFooterContentViewDidChangePileSuppressionRequirement:self];
        v6 = v8;
      }
    }
  }
}

- (void)_infoButtonPressed:(id)a3
{
  v4 = [MEMORY[0x1E69B9020] sharedService];
  v5 = [v4 peerPaymentService];
  v6 = [v5 account];
  v7 = [v6 associatedPassUniqueID];

  v8 = [(PKPass *)self->_pass uniqueID];
  v9 = [(UIView *)self pkui_viewControllerFromResponderChain];
  if (PKStoreDemoModeEnabled())
  {
    v10 = v7;
    v11 = v8;
    v12 = v11;
    if (v10 == v11)
    {

LABEL_11:
      v15 = PKUIStoreDemoGatewayViewController();
      [v9 presentViewController:v15 animated:1 completion:0];

      goto LABEL_26;
    }

    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
    }

    else
    {
      v14 = [v10 isEqualToString:v11];

      if (v14)
      {
        goto LABEL_11;
      }
    }
  }

  if (self->_style == 2)
  {
    v16 = [[PKBarcodePassDetailViewController alloc] initWithPass:self->_pass];
    [(PKBarcodePassDetailViewController *)v16 setShowCloseButton:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v18 = [WeakRetained suppressedContentForContentView:self];
    }

    else
    {
      v22 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v22, OS_LOG_TYPE_DEFAULT, "Assuming all sensitive content is suppressed.", buf, 2u);
      }

      v18 = 275;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__PKPassFooterContentView__infoButtonPressed___block_invoke;
    aBlock[3] = &unk_1E8022AD8;
    v23 = v9;
    v36 = v23;
    v24 = _Block_copy(aBlock);
    [(PKBarcodePassDetailViewController *)v16 setSuppressedContent:v18];
    v25 = v24[2](v24);
    [(PKBarcodePassDetailViewController *)v16 setDeleteOverrider:v25];

    v26 = [[PKNavigationController alloc] initWithRootViewController:v16];
    [v23 presentViewController:v26 animated:1 completion:0];
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v20 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    objc_opt_class();
    v34 = v7;
    if (objc_opt_isKindOfClass())
    {
      v21 = [v9 groupsController];
    }

    else
    {
      v21 = 0;
    }

    v27 = [PKPaymentPassDetailViewController alloc];
    v28 = [(PKPassFooterContentView *)self paymentPass];
    v29 = [MEMORY[0x1E69B8EF8] sharedService];
    v30 = [MEMORY[0x1E69B9020] sharedService];
    v31 = [(PKPaymentPassDetailViewController *)v27 initWithPass:v28 group:0 groupsController:v21 webService:v29 peerPaymentWebService:v30 style:0 passLibraryDataProvider:v19 paymentServiceDataProvider:v20];

    [(PKPaymentPassDetailViewController *)v31 setShowDoneButton:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v9 groupStackView];
      [(PKPaymentPassDetailViewController *)v31 setDeleteOverrider:v32];
    }

    v33 = [[PKNavigationController alloc] initWithRootViewController:v31];
    [v9 presentViewController:v33 animated:1 completion:0];

    v7 = v34;
  }

LABEL_26:
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EC8], 0);
}

id __46__PKPassFooterContentView__infoButtonPressed___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) groupStackView];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (id)_buttonWithTitle:(id)a3 action:(id)a4
{
  v5 = MEMORY[0x1E69DC740];
  v6 = MEMORY[0x1E69DB878];
  v7 = *MEMORY[0x1E69DDC40];
  v8 = a4;
  v9 = a3;
  v10 = [v6 systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(v7, 18.0)}];
  v11 = [v5 pkui_plainConfigurationWithTitle:v9 font:v10];

  v12 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v11 primaryAction:v8];

  [v12 setConfigurationUpdateHandler:&__block_literal_global_48_0];
  [v12 sizeToFit];

  return v12;
}

void __51__PKPassFooterContentView__buttonWithTitle_action___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  [v2 _setTouchInsets:{-10.0, -10.0, -10.0, -10.0}];
  v3 = [v2 titleLabel];
  [v3 setTextAlignment:1];

  v4 = [v2 titleLabel];
  [v4 setLineBreakMode:4];

  v5 = [v2 titleLabel];

  [v5 setMinimumScaleFactor:0.5];
}

- (PKPassFooterContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end