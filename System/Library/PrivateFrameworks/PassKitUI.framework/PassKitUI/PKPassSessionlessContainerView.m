@interface PKPassSessionlessContainerView
- (PKPassSessionlessContainerView)initWithPass:(id)a3 passStateProvider:(id)a4 context:(id)a5 paymentService:(id)a6;
- (double)_topMargin;
- (id)_attributedTextWithTitle:(id)a3;
- (id)_buttonForState:(int64_t)a3;
- (id)_filledButtonWithTitle:(id)a3 action:(id)a4;
- (id)_groupTileForTiles:(id)a3;
- (void)_addTransitionCompletionHandler:(id)a3;
- (void)_applyLatestContentToViews;
- (void)_applySessionlessState:(int64_t)a3 withTextOverride:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)_applyTerminalFailureState;
- (void)_calculateTerminalStateWithRangingSuspensionReasons;
- (void)_commitPendingSessionlessStateAnimated:(BOOL)a3;
- (void)_configureForPaymentWithPaymentPass:(id)a3 context:(id)a4;
- (void)_configureForStyle:(int64_t)a3 context:(id)a4;
- (void)_didInvalidate;
- (void)_endTransition:(BOOL)a3;
- (void)_executeTransitionCompletionHandlers:(BOOL)a3;
- (void)_openURL:(id)a3;
- (void)_reportPassPresentedForPayment:(id)a3;
- (void)_resetToIdleState;
- (void)_transitionToState:(int64_t)a3 withTextOverride:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (void)_transitionViewsFromSessionlessState:(int64_t)a3 animated:(BOOL)a4;
- (void)_updateContentPrimaryView;
- (void)credentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 didUpdateRangingSuspensionReasons:(unint64_t)a6;
- (void)dealloc;
- (void)didBecomeHiddenAnimated:(BOOL)a3;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)layoutSubviews;
- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4;
- (void)passTileGroupView:(id)a3 displayTileContext:(int64_t)a4 tile:(id)a5 overrideMaximumRows:(BOOL)a6;
- (void)passTileGroupView:(id)a3 executeSEActionForPass:(id)a4 tile:(id)a5 withCompletion:(id)a6;
- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5;
- (void)willBecomeHiddenAnimated:(BOOL)a3;
- (void)willBecomeVisibleAnimated:(BOOL)a3;
@end

@implementation PKPassSessionlessContainerView

- (PKPassSessionlessContainerView)initWithPass:(id)a3 passStateProvider:(id)a4 context:(id)a5 paymentService:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 secureElementPass];
  v15 = [v14 supportedRadioTechnologies];

  if (v15 != 2)
  {
    __break(1u);
  }

  v28.receiver = self;
  v28.super_class = PKPassSessionlessContainerView;
  v16 = [(PKPassFooterContentView *)&v28 initWithPass:v10 presentationContext:v12];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_passStateProvider, a4);
    [v11 addPassStateObserver:v17];
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v17;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "PKPassSessionlessContainerView (%p): initializing.", buf, 0xCu);
    }

    [(PKPassSessionlessContainerView *)v17 _reportPassPresentedForPayment:v10];
    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(v19, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v21 = dispatch_queue_create("com.apple.passkit.presentment", v20);
    presentmentQueue = v17->_presentmentQueue;
    v17->_presentmentQueue = v21;

    if (v13)
    {
      p_paymentService = &v17->_paymentService;
      v24 = v13;
    }

    else
    {
      v24 = [MEMORY[0x1E69B8DB8] paymentService];
      p_paymentService = &v17->_paymentService;
    }

    v25 = *p_paymentService;
    *p_paymentService = v24;

    [*p_paymentService registerObserver:v17];
    [(PKPassSessionlessContainerView *)v17 _calculateTerminalStateWithRangingSuspensionReasons];
    [(PKPassSessionlessContainerView *)v17 _configureForStyle:[(PKPassFooterContentView *)v17 style] context:v12];
    v26 = +[PKUIForegroundActiveArbiter sharedInstance];
    v17->_foregroundActiveState = [v26 registerObserver:v17];
  }

  return v17;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  [(PKPassDynamicStateProviding *)self->_passStateProvider removePassStateObserver:self];
  v4 = +[PKUIForegroundActiveArbiter sharedInstance];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = PKPassSessionlessContainerView;
  [(PKPassFooterContentView *)&v5 dealloc];
}

- (void)_didInvalidate
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sessionHandles;
  sessionHandles = self->_sessionHandles;
  self->_sessionHandles = 0;

  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) invalidateSession];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = PKPassSessionlessContainerView;
  [(PKPassFooterContentView *)&v10 _didInvalidate];
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = PKPassSessionlessContainerView;
  [(PKPassFooterContentView *)&v41 layoutSubviews];
  v3 = [(PKPassFooterContentView *)self bottomRule];
  v4 = [v3 superview];
  if (v4)
  {
    [v3 alpha];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  [(PKPassFooterContentView *)self style];
  [(PKPassSessionlessContainerView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PKPassSessionlessContainerView *)self _topMargin];
  v16 = v15 + v10;
  if (v6)
  {
    [v3 frame];
    v17 = CGRectGetMinY(v42) - v16;
  }

  else
  {
    v17 = v14 - (v15 + 0.0);
  }

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v8 + 0.0;
  remainder.origin.y = v16;
  remainder.size.width = v12;
  remainder.size.height = v17;
  if ([(PKPassSessionlessContainerView *)self _shouldDisplayPrimaryView])
  {
    [(UIView *)self->_displayedPrimaryView sizeThatFits:v12, 1.79769313e308];
    v19 = v18;
    displayedPrimaryView = self->_displayedPrimaryView;
    PKSizeAlignedInRect();
    [(UIView *)displayedPrimaryView setFrame:?];
    v43.origin.x = v8 + 0.0;
    v43.origin.y = v16;
    v43.size.width = v12;
    v43.size.height = v17;
    CGRectDivide(v43, &slice, &remainder, v19, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
  }

  v44.origin.x = v8 + 0.0;
  v44.origin.y = v16;
  v44.size.width = v12;
  v44.size.height = v17;
  MaxY = CGRectGetMaxY(v44);
  actionButton = self->_actionButton;
  if (actionButton)
  {
    [(UIButton *)actionButton frame];
    CGRectGetHeight(v45);
    UIRectCenteredXInRect();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(UIButton *)self->_actionButton setFrame:?];
    v46.origin.x = v24;
    v46.origin.y = v26;
    v46.size.width = v28;
    v46.size.height = v30;
    MaxY = CGRectGetMinY(v46);
  }

  [(UITextView *)self->_bottomTextView frame];
  v32 = v31;
  v34 = v33;
  [(UITextView *)self->_bottomTextView sizeThatFits:v12, 1.79769313e308];
  v36 = v35;
  v38 = v37;
  v47.origin.x = v32;
  v47.origin.y = v34;
  v47.size.width = v36;
  v47.size.height = v38;
  CGRectGetHeight(v47);
  UIRectCenteredXInRect();
  [(UITextView *)self->_bottomTextView setFrame:?];
}

- (double)_topMargin
{
  v2 = [(PKPassFooterContentView *)self style];
  v3 = 0.0;
  if ((v2 - 1) >= 3)
  {
    if (v2 == 4 || !v2)
    {
      return 10.0;
    }
  }

  else
  {
    v4 = PKUIGetMinScreenWidthType();
    if (v4 <= 0xE)
    {
      return dbl_1BE115788[v4];
    }
  }

  return v3;
}

- (void)willBecomeVisibleAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassSessionlessContainerView;
  [(PKPassFooterContentView *)&v4 willBecomeVisibleAnimated:a3];
  self->_isVisible = 1;
  if (self->_failureReason)
  {
    [(PKPassSessionlessContainerView *)self _applyTerminalFailureState];
  }

  else
  {
    if (self->_didBecomeHiddenWhileReady)
    {
      self->_didBecomeHiddenWhileReady = 0;
    }

    [(PKPassSessionlessContainerView *)self _resetToIdleState];
  }
}

- (void)willBecomeHiddenAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassSessionlessContainerView;
  [(PKPassFooterContentView *)&v4 willBecomeHiddenAnimated:a3];
  self->_didBecomeHiddenWhileReady = self->_currentSessionlessState == 1;
  self->_isVisible = 0;
}

- (void)didBecomeHiddenAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassSessionlessContainerView;
  [(PKPassFooterContentView *)&v4 didBecomeHiddenAnimated:a3];
  [(PKPassSessionlessContainerView *)self _applySessionlessState:0];
  self->_didBecomeHiddenWhileReady = 0;
}

- (void)_reportPassPresentedForPayment:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 secureElementPass];
  if (v4)
  {
    v70 = v3;
    v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v69 setObject:*MEMORY[0x1E69BA770] forKey:*MEMORY[0x1E69BA680]];
    v5 = *MEMORY[0x1E69BAC48];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = [v4 devicePaymentApplications];
    v6 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
    v72 = v4;
    if (v6)
    {
      v7 = v6;
      v8 = *v74;
      v9 = *MEMORY[0x1E69BAC50];
      while (2)
      {
        v10 = v5;
        for (i = 0; i != v7; ++i)
        {
          if (*v74 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v73 + 1) + 8 * i);
          if ([v12 supportsExpress])
          {
            v5 = *MEMORY[0x1E69BAC40];

            goto LABEL_14;
          }

          v13 = objc_alloc(MEMORY[0x1E695DEC8]);
          v14 = [v12 secureElementIdentifier];
          v15 = [v13 initWithObjects:{v14, 0}];

          v16 = PKDeviceClass();
          v17 = [MEMORY[0x1E69B8A00] fromDeviceVersion];
          v18 = [v4 eligibleExpressUpgradeRequestsForDeviceClass:v16 deviceSEIDs:v15 deviceVersion:v17 technologyTest:&__block_literal_global_119];
          v19 = [v18 count];

          if (v19)
          {
            v20 = v9;

            v10 = v20;
          }

          v4 = v72;
        }

        v7 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
        v5 = v10;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    [v69 safelySetObject:v5 forKey:*MEMORY[0x1E69BAC38]];
    v21 = v69;
    v3 = v70;
    v22 = v70;
    v23 = v22;
    if (!v22 || !v21)
    {
      goto LABEL_84;
    }

    v24 = [v22 passType];
    v25 = MEMORY[0x1E69BB3A8];
    v68 = v5;
    if ((v24 + 1) >= 3)
    {
      v26 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v26 = off_1E801A4C0[v24 + 1];
    }

    [v21 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v27 = [v23 style];
    v28 = [v23 secureElementPass];
    v29 = [v28 isIdentityPass];

    if (v29)
    {
      v30 = @"identity";
    }

    else if (v27 < 0xE && ((0x27FFu >> v27) & 1) != 0)
    {
      v30 = off_1E801A4D8[v27];
    }

    else
    {
      v30 = *v25;
    }

    [v21 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v31 = [v23 nfcPayload];
    v32 = PKAnalyticsReportSwitchToggleResultValue();
    [v21 setObject:v32 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v33 = v23;
    if ([v33 passType] == 1)
    {
      v34 = [v33 secureElementPass];
      v35 = [v34 cardType];
      if (v35 <= 4)
      {
        v29 = **(&unk_1E801A548 + v35);
      }
    }

    else
    {
      v29 = @"other";
    }

    [v21 setObject:v29 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v36 = [v33 secureElementPass];
    if ([v36 isIdentityPass])
    {
      v37 = [v36 identityType];
      if (v37 <= 2)
      {
        if (v37 == 1)
        {
          v38 = MEMORY[0x1E69BA648];
          goto LABEL_51;
        }

        if (v37 == 2)
        {
          v38 = MEMORY[0x1E69BB2C8];
          goto LABEL_51;
        }
      }

      else
      {
        switch(v37)
        {
          case 3:
            goto LABEL_35;
          case 4:
            v38 = MEMORY[0x1E69BA8E0];
            goto LABEL_51;
          case 5:
LABEL_35:
            v38 = MEMORY[0x1E69BACB0];
LABEL_51:
            v43 = *v38;
            goto LABEL_52;
        }
      }

LABEL_44:
      v43 = *v25;
LABEL_52:
      v42 = v43;
      goto LABEL_65;
    }

    if (![v36 isAccessPass])
    {
      goto LABEL_44;
    }

    v39 = [v36 accessType];
    v40 = [v36 accessReportingType];
    v41 = v40;
    if (v39 <= 2)
    {
      switch(v39)
      {
        case 0:
          v44 = @"general";
          if (v40)
          {
            v44 = v40;
          }

          goto LABEL_60;
        case 1:
          v42 = @"hospitality";
          goto LABEL_64;
        case 2:
          v42 = @"corporate";
LABEL_64:

LABEL_65:
          [v21 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          v45 = [v33 secureElementPass];
          v46 = [v45 devicePaymentApplications];
          [v46 count];

          v47 = PKAnalyticsReportSwitchToggleResultValue();

          [v21 setObject:v47 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v48 = [v33 secureElementPass];
          v49 = *v25;
          v50 = [v48 organizationName];
          if ([v50 length])
          {
            v51 = [v48 cardType];
            if (v51 <= 4 && ((1 << v51) & 0x16) != 0)
            {
              v52 = v50;

              v49 = v52;
            }
          }

          [v21 setObject:v49 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v53 = [v33 secureElementPass];
          v54 = v53;
          if (v53)
          {
            v55 = [v53 devicePaymentApplications];
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v56 = v55;
            v57 = [v56 countByEnumeratingWithState:&v77 objects:v83 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = 0;
              v60 = *v78;
              while (2)
              {
                for (j = 0; j != v58; ++j)
                {
                  if (*v78 != v60)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v62 = *(*(&v77 + 1) + 8 * j);
                  if (v59 && v59 != [*(*(&v77 + 1) + 8 * j) paymentType])
                  {

                    v63 = @"multiple";
                    goto LABEL_82;
                  }

                  v59 = [v62 paymentType];
                }

                v58 = [v56 countByEnumeratingWithState:&v77 objects:v83 count:16];
                if (v58)
                {
                  continue;
                }

                break;
              }
            }

            v63 = PKPaymentMethodTypeToString();
LABEL_82:

            [v21 setObject:v63 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
            v64 = [v54 issuerCountryCode];
            [v21 setObject:v64 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
          }

          v5 = v68;
LABEL_84:

          v65 = MEMORY[0x1E69B8540];
          v66 = *MEMORY[0x1E69BB718];
          v81[0] = *MEMORY[0x1E69BB6C0];
          v81[1] = v66;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
          [v65 subjects:v67 sendEvent:v21];

          v4 = v72;
          goto LABEL_85;
      }
    }

    else
    {
      if (v39 <= 4)
      {
        if (v39 == 3)
        {
          v42 = @"singlefamily";
        }

        else
        {
          v42 = @"cars";
        }

        goto LABEL_64;
      }

      if (v39 == 5)
      {
        v42 = @"multifamily";
        goto LABEL_64;
      }

      if (v39 == 6)
      {
        v42 = @"urbanmobility";
        goto LABEL_64;
      }
    }

    v44 = *v25;
LABEL_60:
    v42 = v44;
    goto LABEL_64;
  }

LABEL_85:
}

- (void)_updateContentPrimaryView
{
  v3 = self->_displayedPrimaryView;
  if (self->_groupTile)
  {
    tileGroupView = self->_tileGroupView;
    v5 = tileGroupView == 0;
    if (!tileGroupView)
    {
      v6 = objc_alloc_init(PKPassTileGroupView);
      v7 = self->_tileGroupView;
      self->_tileGroupView = v6;

      [(PKPassTileGroupView *)self->_tileGroupView setAlpha:0.0];
      [(PKPassTileGroupView *)self->_tileGroupView setDelegate:self];
      [(PKPassSessionlessContainerView *)self addSubview:self->_tileGroupView];
      tileGroupView = self->_tileGroupView;
    }

    objc_storeStrong(&self->_displayedPrimaryView, tileGroupView);
    v8 = [(UIView *)self->_displayedPrimaryView layer];
    v9 = [v8 presentationLayer];
    v10 = v9;
    if (!v9)
    {
      v9 = v8;
    }

    [v9 opacity];
    v13 = v12;

    v14 = v13 > 0.0 && self->_isVisible;
    v15 = self->_tileGroupView;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__PKPassSessionlessContainerView__updateContentPrimaryView__block_invoke;
    v21[3] = &unk_1E8010970;
    v21[4] = self;
    [(PKPassTileGroupView *)v15 performBatchUpdates:v21 animated:v14];
    [(PKPassSessionlessContainerView *)self setNeedsLayout];
  }

  else
  {
    displayedPrimaryView = self->_displayedPrimaryView;
    self->_displayedPrimaryView = 0;

    v5 = 0;
  }

  v16 = self->_displayedPrimaryView;
  if (v3 != v16)
  {
    if (v3)
    {
      v17 = [(UIView *)v3 layer];
      [v17 pkui_animateToOpacity:0 withCompletion:0.0];

      v16 = self->_displayedPrimaryView;
    }

    v18 = !v5;
    if (v3)
    {
      v18 = 0;
    }

    if (!v18 && v16)
    {
      v19 = [(PKPassSessionlessContainerView *)self _isPrimaryViewVisible];
      v20 = [(UIView *)self->_displayedPrimaryView layer];
      [v20 pkui_animateToOpacity:0 withCompletion:v19];
    }
  }
}

void __59__PKPassSessionlessContainerView__updateContentPrimaryView__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) style] - 1) < 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(a1 + 32);
  v4 = v3[72];
  v5 = [v3 paymentPass];
  v6 = *(a1 + 32);
  v7 = *(v6 + 584);
  v8 = [*(v6 + 568) passState];
  v9[0] = 1;
  v10 = v2;
  v11 = 0;
  [v4 setPass:v5 content:v7 passState:v8 context:v9 animated:0];
}

- (id)_attributedTextWithTitle:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC40], 20.0)}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB600]];

  v8 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v8 setLineBreakMode:4];
  [v8 setAlignment:1];
  v9 = [v8 copy];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB688]];

  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (v3)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:v4];
    [v10 appendAttributedString:v11];
  }

  v12 = [v10 copy];

  return v12;
}

- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 1)
  {
    v10 = [(PKPassFooterContentView *)self paymentPass];
    v11 = [v10 uniqueID];
    v12 = v8;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      if (!v12 || !v11)
      {

        goto LABEL_10;
      }

      v14 = [v11 isEqualToString:v12];

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v15 = [(PKPassSessionlessContainerView *)self _groupTileForTiles:v9];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__PKPassSessionlessContainerView_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
    v17[3] = &unk_1E8010A10;
    v17[4] = self;
    v18 = v15;
    v16 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }

LABEL_10:
}

uint64_t __85__PKPassSessionlessContainerView_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 584), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updateContentPrimaryView];
}

- (void)credentialIdentifier:(id)a3 paymentApplicationIdentifier:(id)a4 secureElementIdentifier:(id)a5 didUpdateRangingSuspensionReasons:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __142__PKPassSessionlessContainerView_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke;
  v15[3] = &unk_1E8011E88;
  objc_copyWeak(&v20, &location);
  v16 = v10;
  v17 = v11;
  v18 = v9;
  v19 = self;
  v12 = v9;
  v13 = v11;
  v14 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __142__PKPassSessionlessContainerView_credentialIdentifier_paymentApplicationIdentifier_secureElementIdentifier_didUpdateRangingSuspensionReasons___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_53;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = [WeakRetained paymentPass];
  v5 = [v4 devicePaymentApplications];

  v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (!v6)
  {

    goto LABEL_53;
  }

  v7 = v6;
  v35 = v3;
  v36 = 0;
  v37 = v5;
  v38 = *v44;
  do
  {
    v8 = 0;
    do
    {
      if (*v44 != v38)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v43 + 1) + 8 * v8);
      v10 = [v9 applicationIdentifier];
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = v11;
      v14 = v13;
      if (v12 == v13)
      {

LABEL_15:
        v17 = [v9 secureElementIdentifier];
        v18 = *(a1 + 40);
        v12 = v17;
        v19 = v18;
        v14 = v19;
        if (v12 == v19)
        {

LABEL_28:
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v21 = [v9 subcredentials];
          v23 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v40;
            while (2)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v40 != v25)
                {
                  objc_enumerationMutation(v21);
                }

                v27 = [*(*(&v39 + 1) + 8 * i) identifier];
                v28 = *(a1 + 48);
                v14 = v27;
                v29 = v28;
                v30 = v29;
                if (v14 == v29)
                {

                  v36 = 1;
                  v12 = v14;
                  v5 = v37;
                  goto LABEL_22;
                }

                if (v14)
                {
                  v31 = v29 == 0;
                }

                else
                {
                  v31 = 1;
                }

                if (v31)
                {
                }

                else
                {
                  v32 = [v14 isEqualToString:v29];

                  if (v32)
                  {
                    v36 = 1;
                    goto LABEL_46;
                  }
                }
              }

              v24 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }

LABEL_46:
            v5 = v37;
          }

LABEL_23:

          goto LABEL_24;
        }

        if (v12)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          goto LABEL_21;
        }

        v22 = [v12 isEqualToString:v19];

        if (v22)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      if (v12)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
LABEL_21:
        v21 = v12;
LABEL_22:

        goto LABEL_23;
      }

      v16 = [v12 isEqualToString:v13];

      if (v16)
      {
        goto LABEL_15;
      }

LABEL_24:
      ++v8;
    }

    while (v8 != v7);
    v33 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
    v7 = v33;
  }

  while (v33);

  v3 = v35;
  if (v36)
  {
    [*(a1 + 56) _calculateTerminalStateWithRangingSuspensionReasons];
    v34 = *(a1 + 56);
    if (v34[80])
    {
      [v34 _applyTerminalFailureState];
    }

    else
    {
      [v34 _resetToIdleState];
    }
  }

LABEL_53:
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  v6 = a3;
  foreground = self->_foregroundActiveState.foreground;
  self->_foregroundActiveState = a4;
  if (!foreground && a4.var0)
  {
    v8 = v6;
    [(PKPassSessionlessContainerView *)self _updateContentPrimaryView];
    v6 = v8;
  }
}

- (void)_configureForStyle:(int64_t)a3 context:(id)a4
{
  if (a3 <= 1)
  {
    v6 = a4;
    v7 = [(PKPassFooterContentView *)self paymentPass];
    [(PKPassSessionlessContainerView *)self _configureForPaymentWithPaymentPass:v7 context:v6];
  }
}

- (void)_configureForPaymentWithPaymentPass:(id)a3 context:(id)a4
{
  [(PKPassSessionlessContainerView *)self _applyLatestContentToViews:a3];
  v5 = [MEMORY[0x1E69DD168] pkui_plainInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  bottomTextView = self->_bottomTextView;
  self->_bottomTextView = v5;

  v7 = self->_bottomTextView;
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC40]);
  [(UITextView *)v7 setFont:v8];

  v9 = self->_bottomTextView;
  v10 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UITextView *)v9 setTextColor:v10];

  [(UITextView *)self->_bottomTextView setEditable:0];
  [(UITextView *)self->_bottomTextView setSelectable:1];
  [(UITextView *)self->_bottomTextView setScrollingEnabled:0];
  [(UITextView *)self->_bottomTextView _setInteractiveTextSelectionDisabled:1];
  [(UITextView *)self->_bottomTextView setAlpha:0.0];
  [(UITextView *)self->_bottomTextView setDelegate:self];
  [(PKPassSessionlessContainerView *)self addSubview:self->_bottomTextView];
  v11 = [(PKPassFooterContentView *)self bottomRule];
  [v11 setAlpha:0.0];

  [(PKPassFooterContentView *)self setInfoButtonAlpha:0.0];
  if (([(PKPassFooterContentView *)self style]- 1) >= 3)
  {
    v12 = [(PKPassFooterContentView *)self bottomRule];
    [(PKPassSessionlessContainerView *)self addSubview:v12];
  }

  [(PKPassSessionlessContainerView *)self _resetToIdleState];
}

- (void)_applySessionlessState:(int64_t)a3 withTextOverride:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v17 = a4;
  v10 = a6;
  v11 = 12;
  if (self->_transitioning)
  {
    v11 = 16;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR___PKPassSessionlessContainerView__passStateProvider[v11]) == a3)
  {
    if (a3 && [v17 length])
    {
      v12 = [(UITextView *)self->_bottomTextView layer];
      v13 = [MEMORY[0x1E6979300] pkui_shakeAnimation];
      v14 = [v12 pkui_addAdditiveAnimation:v13];

      bottomTextView = self->_bottomTextView;
      v16 = [(PKPassSessionlessContainerView *)self _attributedTextWithTitle:v17];
      [(UITextView *)bottomTextView setAttributedText:v16];

      [(PKPassSessionlessContainerView *)self setNeedsLayout];
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    [(PKPassSessionlessContainerView *)self _transitionToState:a3 withTextOverride:v17 animated:v7 completionHandler:v10];
  }
}

- (void)_transitionToState:(int64_t)a3 withTextOverride:(id)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v15 = a4;
  v10 = a6;
  v11 = v10;
  v12 = 12;
  if (self->_transitioning)
  {
    v12 = 16;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR___PKPassSessionlessContainerView__passStateProvider[v12]) == a3)
  {
    if (self->_transitioning)
    {
      [(PKPassSessionlessContainerView *)self _addTransitionCompletionHandler:v10];
    }

    else if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }

  else
  {
    [(PKPassSessionlessContainerView *)self _executeTransitionCompletionHandlers:1];
    self->_pendingSessionlessState = a3;
    self->_pendingSessionlessStateAnimated = v7;
    v13 = [v15 copy];
    pendingSessionlessStateTextOverride = self->_pendingSessionlessStateTextOverride;
    self->_pendingSessionlessStateTextOverride = v13;

    [(PKPassSessionlessContainerView *)self _addTransitionCompletionHandler:v11];
    if (!self->_transitioning)
    {
      [(PKPassSessionlessContainerView *)self _commitPendingSessionlessStateAnimated:v7];
    }
  }
}

- (void)_commitPendingSessionlessStateAnimated:(BOOL)a3
{
  currentSessionlessState = self->_currentSessionlessState;
  self->_currentSessionlessState = self->_pendingSessionlessState;
  v5 = a3 || self->_pendingSessionlessStateAnimated;
  [(PKPassSessionlessContainerView *)self _transitionViewsFromSessionlessState:currentSessionlessState animated:v5];
}

- (void)_transitionViewsFromSessionlessState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_initWeak(location, self);
  self->_transitioning = 1;
  currentSessionlessState = self->_currentSessionlessState;
  v7 = [(NSString *)self->_pendingSessionlessStateTextOverride copy];
  pendingSessionlessStateTextOverride = self->_pendingSessionlessStateTextOverride;
  self->_pendingSessionlessStateTextOverride = 0;

  v9 = [(PKPassFooterContentView *)self style];
  v10 = [(PKPassSessionlessContainerView *)self _isPrimaryViewVisible];
  if (v9 - 1) <= 2 && (PKRunningInRemoteContext())
  {
    if (PKUIGetMinScreenWidthType())
    {
      v11 = 1;
    }

    else
    {
      v11 = currentSessionlessState == 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = (self->_sessionlessStateTransitionCounter + 1);
  self->_sessionlessStateTransitionCounter = v13;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v14 = self->_actionButton;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke;
  aBlock[3] = &unk_1E801A2A0;
  objc_copyWeak(v42, location);
  v41 = v43;
  v15 = v7;
  v39 = v15;
  v24 = v14;
  v40 = v24;
  v42[1] = currentSessionlessState;
  v16 = _Block_copy(aBlock);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_2;
  v35[3] = &unk_1E80111A8;
  objc_copyWeak(&v36, location);
  v37 = v10;
  v17 = _Block_copy(v35);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_3;
  v30[3] = &unk_1E801A2C8;
  objc_copyWeak(v32, location);
  v18 = v15;
  v31 = v18;
  v32[1] = v9;
  v33 = v12;
  v34 = v10;
  v19 = _Block_copy(v30);
  if (v4)
  {
    v20 = 0.2;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = MEMORY[0x1E69DD250];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_4;
  v25[3] = &unk_1E801A368;
  objc_copyWeak(v28, location);
  v28[1] = v13;
  v22 = v16;
  v26 = v22;
  v28[2] = *&v20;
  v23 = v19;
  v27 = v23;
  v29 = v4;
  [v21 animateWithDuration:4 delay:v17 options:v25 animations:v20 completion:0.0];

  objc_destroyWeak(v28);
  objc_destroyWeak(v32);

  objc_destroyWeak(&v36);
  objc_destroyWeak(v42);

  _Block_object_dispose(v43, 8);
  objc_destroyWeak(location);
}

void __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(*(a1 + 48) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
      v4 = WeakRetained[78];
      v9 = WeakRetained;
      v5 = [WeakRetained _attributedTextWithTitle:*(a1 + 32)];
      [v4 setAttributedText:v5];

      if (v9[77] == *(a1 + 40))
      {
        v6 = [v9 _buttonForState:*(a1 + 64)];
        v7 = v6;
        if (v6)
        {
          [v6 setAlpha:0.0];
        }

        v8 = v9[77];
        if (v8 != v7)
        {
          [v8 removeFromSuperview];
          [v9 addSubview:v7];
          objc_storeStrong(v9 + 77, v7);
        }
      }

      [v9 setNeedsLayout];
      [v9 layoutIfNeeded];
      WeakRetained = v9;
    }
  }
}

void __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (*(a1 + 40) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained[74] setAlpha:0.0];
    WeakRetained = v3;
  }
}

void __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[78];
    v11 = WeakRetained;
    v4 = [*(a1 + 32) length];
    v5 = 0.0;
    if (v4)
    {
      v5 = 1.0;
    }

    [v3 setAlpha:v5];
    v6 = *(v11 + 77);
    if (v6)
    {
      [v6 setAlpha:1.0];
      if ((*(a1 + 48) - 1) >= 3)
      {
        v7 = [v11 bottomRule];
        [v7 setAlpha:1.0];
      }
    }

    if (*(a1 + 56) == 1 && ([v11 infoButtonAlpha], v8 <= 0.0))
    {
      v10 = [v11 bottomRule];
      [v10 setAlpha:1.0];

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    if (*(a1 + 57) == 1)
    {
      [*(v11 + 74) setAlpha:1.0];
    }

    WeakRetained = v11;
    if (v9)
    {
      [v11 setNeedsLayout];
      [v11 layoutIfNeeded];
      WeakRetained = v11;
    }
  }
}

void __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_5;
  v2[3] = &unk_1E801A340;
  objc_copyWeak(v5, (a1 + 48));
  v5[1] = *(a1 + 56);
  v3 = *(a1 + 32);
  v5[2] = *(a1 + 64);
  v4 = *(a1 + 40);
  v6 = *(a1 + 72);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(v5);
}

void __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 56) == *(WeakRetained + 65))
  {
    (*(*(a1 + 32) + 16))();
    v4 = MEMORY[0x1E69DD250];
    v5 = *(a1 + 64);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_6;
    v7[3] = &unk_1E801A318;
    objc_copyWeak(v8, (a1 + 48));
    v8[1] = *(a1 + 56);
    v9 = *(a1 + 72);
    [v4 animateWithDuration:4 delay:v6 options:v7 animations:v5 completion:0.0];
    objc_destroyWeak(v8);
  }
}

void __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_7;
  block[3] = &unk_1E801A2F0;
  objc_copyWeak(v3, (a1 + 32));
  v3[1] = *(a1 + 40);
  v4 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v3);
}

void __80__PKPassSessionlessContainerView__transitionViewsFromSessionlessState_animated___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == WeakRetained[65])
  {
    v3 = WeakRetained;
    [WeakRetained _endTransition:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_endTransition:(BOOL)a3
{
  self->_transitioning = 0;
  if (self->_currentSessionlessState == self->_pendingSessionlessState)
  {
    [(PKPassSessionlessContainerView *)self _executeTransitionCompletionHandlers:0];
  }

  else
  {
    [(PKPassSessionlessContainerView *)self _commitPendingSessionlessStateAnimated:a3];
  }
}

- (void)_addTransitionCompletionHandler:(id)a3
{
  if (a3)
  {
    transitionCompletionHandlers = self->_transitionCompletionHandlers;
    v5 = [a3 copy];
    v4 = _Block_copy(v5);
    [(NSMutableArray *)transitionCompletionHandlers addObject:v4];
  }
}

- (void)_executeTransitionCompletionHandlers:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_transitionCompletionHandlers count])
  {
    v4 = [(NSMutableArray *)self->_transitionCompletionHandlers copy];
    [(NSMutableArray *)self->_transitionCompletionHandlers removeAllObjects];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)_buttonForState:(int64_t)a3
{
  if (PKUIOnlyDemoModeEnabled() & 1) != 0 || (PKStoreDemoModeEnabled())
  {
    v5 = 0;
    goto LABEL_26;
  }

  objc_initWeak(&location, self);
  if (a3 == 2)
  {
    v6 = 0;
    failureAction = self->_failureAction;
    if (failureAction > 1)
    {
      if (failureAction == 2)
      {
        v8 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root="];
        if (self->_failureReason == 3)
        {
          PKLocalizedCredentialString(&cfstr_TurnOffAirplan.isa);
        }

        else
        {
          PKLocalizedIdentityString(&cfstr_PresentmentGoT.isa);
        }
        v9 = ;
        goto LABEL_21;
      }

      v8 = 0;
      if (failureAction == 3)
      {
        failureReason = self->_failureReason;
        if (failureReason == 2)
        {
          v8 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/HT208733"];
          v9 = PKLocalizedCredentialString(&cfstr_LearnMoreButto.isa);
        }

        else
        {
          if (failureReason != 1)
          {
            v6 = 0;
            v8 = 0;
            goto LABEL_22;
          }

          v8 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/HT212274"];
          v9 = PKLocalizedCredentialString(&cfstr_LearnMoreButto.isa);
        }

        goto LABEL_21;
      }

LABEL_22:
      v12 = MEMORY[0x1E69DC628];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__PKPassSessionlessContainerView__buttonForState___block_invoke;
      v15[3] = &unk_1E8012328;
      objc_copyWeak(&v17, &location);
      v13 = v8;
      v16 = v13;
      v8 = [v12 actionWithHandler:v15];

      objc_destroyWeak(&v17);
      v10 = 0;
      if (v8 && v6)
      {
        v10 = [(PKPassSessionlessContainerView *)self _filledButtonWithTitle:v6 action:v8];
      }

      goto LABEL_25;
    }

    v8 = 0;
    if (failureAction)
    {
      if (failureAction == 1)
      {
        v8 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Bluetooth"];
        v9 = PKLocalizedIdentityString(&cfstr_PresentmentTur.isa);
LABEL_21:
        v6 = v9;
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v10 = 0;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v10 = 0;
  }

LABEL_25:
  [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
  v5 = v10;

  objc_destroyWeak(&location);
LABEL_26:

  return v5;
}

void __50__PKPassSessionlessContainerView__buttonForState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openURL:*(a1 + 32)];
}

- (void)_openURL:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69636B8]);
  [v5 setSensitive:1];
  v9 = *MEMORY[0x1E699F970];
  v10[0] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setFrontBoardOptions:v6];

  if ((PKRunningInViewService() & 1) != 0 || PKRunningInLockScreenPlugin())
  {
    v7 = [(PKPassSessionlessContainerView *)self window];
    v8 = v7;
    if (v7)
    {
      PKPostOpenApplicationNotification(v7, v4, v5);
    }
  }

  else
  {
    PKOpenApplication(v4, v5);
  }
}

- (id)_filledButtonWithTitle:(id)a3 action:(id)a4
{
  v5 = a4;
  v6 = a3;
  PKFloatRoundToPixel();
  v8 = v7;
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], *MEMORY[0x1E69DDC40]);
  [v9 lineHeight];
  PKFloatRoundToPixel();
  v14 = v10;
  v15 = xmmword_1BE0B69E0;
  v16 = vdupq_n_s64(2uLL);
  v11 = [[PKContinuousButton alloc] initWithConfiguration:&v14];
  [(PKContinuousButton *)v11 setContentEdgeInsets:v8, 25.0, 16.0 - v8, 25.0];
  v12 = [(PKContinuousButton *)v11 titleLabel];
  [v12 setFont:v9];
  [v12 setMinimumScaleFactor:0.5];
  [v12 setTextAlignment:1];
  [v12 setLineBreakMode:4];
  [(PKContinuousButton *)v11 setTitle:v6 forState:0];

  [(PKContinuousButton *)v11 _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
  [(PKContinuousButton *)v11 setExclusiveTouch:1];
  [(PKContinuousButton *)v11 sizeToFit];
  [(PKContinuousButton *)v11 addAction:v5 forControlEvents:64];

  return v11;
}

- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKPassSessionlessContainerView_passStateProvider_didUpdatePassState___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)passTileGroupView:(id)a3 displayTileContext:(int64_t)a4 tile:(id)a5 overrideMaximumRows:(BOOL)a6
{
  v6 = a6;
  v25 = a5;
  v10 = a3;
  v11 = [(PKPassFooterContentView *)self paymentPass];
  v12 = [v10 pass];

  if (v12 == v11)
  {
    v13 = [v25 state];
    v14 = [v13 stateTypeGroup];
    v15 = [v14 header];

    v16 = [PKDashboardSectionDataSourcePassTiles alloc];
    v17 = [v25 metadata];
    v18 = [v17 identifier];
    v19 = [(PKDashboardSectionDataSourcePassTiles *)v16 initWithPass:v11 forContext:a4 tileGroupID:v18 passStateProvider:self->_passStateProvider overridesMaximumRows:v6];

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v20 addObject:v19];
    v21 = [[PKSectionedDashboardDataSource alloc] initWithSectionDataSources:v20];
    v22 = [[PKDashboardTileContextViewController alloc] initWithTitle:v15 dataSource:v21];
    v23 = [[PKNavigationController alloc] initWithRootViewController:v22];
    v24 = [(UIView *)self pkui_viewControllerFromResponderChain];
    [v24 presentViewController:v23 animated:1 completion:0];
  }
}

- (void)passTileGroupView:(id)a3 executeSEActionForPass:(id)a4 tile:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PKPassFooterContentView *)self paymentPass];
  v15 = v14;
  if (v14 != v11)
  {

LABEL_13:
    v13[2](v13, 0);
    goto LABEL_14;
  }

  v16 = [(PKPassSessionlessContainerView *)self _presentmentAllowed];

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = [v12 state];
  v18 = MEMORY[0x1E69B8D10];
  v19 = [v17 actions];
  v20 = [v18 effectiveActionForActions:v19];

  if (v20 && [v20 type] == 4)
  {
    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = *MEMORY[0x1E69DDBE8];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke;
    aBlock[3] = &unk_1E8011A18;
    aBlock[4] = &v75;
    v21 = _Block_copy(aBlock);
    v22 = [MEMORY[0x1E69DC668] sharedApplication];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_2;
    v72[3] = &unk_1E8010B50;
    v23 = v21;
    v73 = v23;
    v24 = [v22 beginBackgroundTaskWithExpirationHandler:v72];
    v76[3] = v24;

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_4;
    v69[3] = &unk_1E801A3B8;
    v40 = v23;
    v70 = v40;
    v71 = v13;
    v25 = _Block_copy(v69);
    objc_initWeak(&location, self);
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 1;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__28;
    v62 = __Block_byref_object_dispose__28;
    v63 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__28;
    v56 = __Block_byref_object_dispose__28;
    v57 = 0;
    v26 = MEMORY[0x1E69B8DC0];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_135;
    v44[3] = &unk_1E801A408;
    objc_copyWeak(&v51, &location);
    v27 = v25;
    v47 = v27;
    v48 = &v64;
    v49 = &v58;
    v50 = &v52;
    v45 = v11;
    v46 = v12;
    v28 = [v26 startDigitalCarKeySessionWithCompletion:v44];
    if (v28)
    {
      v29 = 496;
      os_unfair_lock_lock(&self->_lock);
      v30 = 1;
      atomic_compare_exchange_strong(v65 + 24, &v30, 0);
      if (v30 == 1)
      {
        sessionHandles = self->_sessionHandles;
        if (!sessionHandles)
        {
          v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v33 = self->_sessionHandles;
          self->_sessionHandles = v32;

          sessionHandles = self->_sessionHandles;
        }

        [(NSMutableArray *)sessionHandles addObject:v28, 496];
        objc_storeStrong(v59 + 5, v28);
        v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
        v35 = v53[5];
        v53[5] = v34;

        v36 = v53[5];
        v37 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v36, v37, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        v38 = v53[5];
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_4_140;
        handler[3] = &unk_1E801A430;
        v43 = &v58;
        v42 = v40;
        dispatch_source_set_event_handler(v38, handler);
        dispatch_resume(v53[5]);

        v29 = v39;
      }

      os_unfair_lock_unlock((self + v29));
    }

    objc_destroyWeak(&v51);
    _Block_object_dispose(&v52, 8);

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v64, 8);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v75, 8);
  }

  else
  {
    v13[2](v13, 0);
  }

LABEL_14:
}

void __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_3;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_5;
    v12[3] = &unk_1E8010B50;
    v13 = *(a1 + 32);
    [v5 invalidateSessionWithCompletion:v12];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_6;
  block[3] = &unk_1E801A390;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_6(void *a1)
{
  if (!a1[4])
  {
    (*(a1[5] + 16))();
  }

  v2 = *(a1[6] + 16);

  return v2();
}

void __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[61];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_2_136;
    block[3] = &unk_1E801A3E0;
    block[4] = WeakRetained;
    v16 = *(a1 + 56);
    v17 = *(a1 + 72);
    v11 = v5;
    v12 = v6;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    dispatch_async(v9, block);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_2_136(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = 1;
  atomic_compare_exchange_strong((*(*(a1 + 80) + 8) + 24), &v2, 0);
  if (v2 != 1)
  {
    os_unfair_lock_lock((*(a1 + 32) + 496));
    [*(*(a1 + 32) + 504) removeObjectIdenticalTo:*(*(*(a1 + 88) + 8) + 40)];
    dispatch_source_cancel(*(*(*(a1 + 96) + 8) + 40));
    os_unfair_lock_unlock((*(a1 + 32) + 496));
  }

  if (*(a1 + 40) && !*(a1 + 48) && [*(a1 + 32) _presentmentAllowed])
  {
    [MEMORY[0x1E69B8758] attachDefaultBehaviorToSession:*(a1 + 40)];
    v3 = [*(a1 + 56) deviceContactlessPaymentApplications];
    v4 = [v3 pk_arrayCopy];

    v5 = v4;
    v6 = [*(a1 + 40) activatePaymentApplications:v4 forPaymentPass:*(a1 + 56)];
    v7 = 0;
    v43 = 0;
    v44 = 0;
    if (v6)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v26 = v4;
      obj = v4;
      v29 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      v7 = 0;
      if (v29)
      {
        v28 = *v40;
LABEL_9:
        v8 = 0;
        while (1)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v39 + 1) + 8 * v8);
          v10 = [v9 applicationIdentifier];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v11 = [v9 subcredentials];
          v12 = [v11 countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v12)
          {
            v13 = v12;
            v30 = v8;
            v31 = v7;
            v14 = *v36;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v36 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(a1 + 64);
                v17 = [*(*(&v35 + 1) + 8 * i) identifier];
                [PKPassTileGroupView extractSupportedVehicleFunction:&v44 action:&v43 forTile:v16 applicationIdentifier:v10 keyIdentifier:v17];

                if (v44 && v43)
                {
                  v7 = v10;

                  goto LABEL_23;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v35 objects:v45 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }

LABEL_23:
            v8 = v30;
          }

          v18 = v43;
          v19 = v44;

          if (v19)
          {
            if (v18)
            {
              break;
            }
          }

          if (++v8 == v29)
          {
            v29 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
            if (v29)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v20 = v44;
      if (v44)
      {
        v21 = v43;
        v5 = v26;
        if (v43)
        {
          v22 = *(a1 + 40);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_3_138;
          v32[3] = &unk_1E80109C0;
          v34 = *(a1 + 72);
          v33 = *(a1 + 40);
          [v22 sendRKEFunction:v20 action:v21 withAuthorization:0 completion:v32];
          v23 = [MEMORY[0x1E69B8DB8] paymentService];
          v24 = [*(a1 + 56) uniqueID];
          [v23 recordPassTransactionActivitySummaryForPassUniqueIdentifier:v24 paymentApplicationIdentifier:v7 presentmentType:1];

LABEL_36:
          return;
        }
      }

      else
      {
        v5 = v26;
      }
    }

    (*(*(a1 + 72) + 16))();
    goto LABEL_36;
  }

  v25 = *(*(a1 + 72) + 16);

  v25();
}

void __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_4_140(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __95__PKPassSessionlessContainerView_passTileGroupView_executeSEActionForPass_tile_withCompletion___block_invoke_5_141;
  v2[3] = &unk_1E8010B50;
  v3 = *(a1 + 32);
  [v1 invalidateSessionWithCompletion:v2];
}

- (id)_groupTileForTiles:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 metadata];
    if ([v5 isGroupType])
    {
      [v3 pk_firstObjectPassingTest:&__block_literal_global_147];
    }

    else
    {
      [MEMORY[0x1E69B8A90] _createDefaultDashboardGroupTileWithChildTiles:v3];
    }
    v6 = ;
  }

  else
  {
    v6 = [v3 pk_firstObjectPassingTest:&__block_literal_global_147];
  }

  return v6;
}

BOOL __53__PKPassSessionlessContainerView__groupTileForTiles___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 prearmTiles];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_applyLatestContentToViews
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = (self->_contentUpdateCounter + 1);
  self->_contentUpdateCounter = v3;
  objc_initWeak(&location, self);
  v4 = dispatch_group_create();
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    *&buf[4] = self;
    *&buf[12] = 2050;
    *&buf[14] = v3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPassSessionlessContainerView (%{public}p - %{public}ld): fetching content...", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__28;
  v19 = __Block_byref_object_dispose__28;
  v20 = 0;
  v6 = [(PKPassFooterContentView *)self paymentPass];
  v7 = [v6 uniqueID];
  dispatch_group_enter(v4);
  paymentService = self->_paymentService;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKPassSessionlessContainerView__applyLatestContentToViews__block_invoke;
  v12[3] = &unk_1E801A478;
  v14 = buf;
  objc_copyWeak(&v15, &location);
  v9 = v4;
  v13 = v9;
  [(PKPaymentService *)paymentService tilesForPassWithUniqueIdentifier:v7 context:1 completion:v12];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKPassSessionlessContainerView__applyLatestContentToViews__block_invoke_2;
  block[3] = &unk_1E801A4A0;
  objc_copyWeak(v11, &location);
  v11[1] = v3;
  block[4] = buf;
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v11);

  objc_destroyWeak(&v15);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
}

void __60__PKPassSessionlessContainerView__applyLatestContentToViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _groupTileForTiles:v3];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  dispatch_group_leave(v8);
}

void __60__PKPassSessionlessContainerView__applyLatestContentToViews__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[75];
    if (v4 == *(a1 + 48))
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134349312;
        v7 = v3;
        v8 = 2050;
        v9 = v4;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPassPaymentContainerView (%{public}p - %{public}ld): finished fetching balances.", &v6, 0x16u);
      }

      objc_storeStrong(v3 + 73, *(*(*(a1 + 32) + 8) + 40));
      [v3 _updateContentPrimaryView];
    }
  }
}

- (void)_calculateTerminalStateWithRangingSuspensionReasons
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [(PKPassFooterContentView *)self paymentPass];
  v3 = [v2 devicePaymentApplications];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  v4 = 0;
  if (v21)
  {
    v20 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v5;
        v6 = *(*(&v28 + 1) + 8 * v5);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = [v6 subcredentials];
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              if (([v12 supportedRadioTechnologies] & 2) != 0)
              {
                paymentService = self->_paymentService;
                v14 = [v12 identifier];
                v15 = [v6 applicationIdentifier];
                v16 = [v6 secureElementIdentifier];
                v4 |= [(PKPaymentService *)paymentService rangingSuspensionReasonForAppletSubcredentialIdentifier:v14 paymentApplicationIdentifier:v15 secureElementIdentifier:v16];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

        v5 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  v17 = PKRangingSuspensionDisplayableReasonForRangingSuspensionReason();
  if (v17 <= 4)
  {
    v18 = qword_1BE115828[v17];
    self->_failureReason = qword_1BE115800[v17];
    self->_failureAction = v18;
  }
}

- (void)_applyTerminalFailureState
{
  v2 = self;
  v43 = *MEMORY[0x1E69E9840];
  v3 = 640;
  failureReason = self->_failureReason;
  if (failureReason > 2)
  {
    if (failureReason == 3)
    {
      v5 = @"TURN_OFF_AIRPLANE_MODE";
    }

    else
    {
      if (failureReason != 4)
      {
        goto LABEL_36;
      }

      v5 = @"BLUETOOTH_DISABLED_TITLE";
    }

LABEL_30:
    v22 = PKLocalizedCredentialString(&v5->isa);
    if (v22)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (failureReason == 1)
  {
    v6 = [(PKPassFooterContentView *)self paymentPass];
    v28 = [v6 isHomeKeyPass];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = [v6 devicePaymentApplications];
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v25 = v6;
      v26 = 640;
      v27 = v2;
      v10 = 0;
      v11 = *v34;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = [v13 subcredentials];
          v15 = [v14 countByEnumeratingWithState:&v29 objects:v41 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v30;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v29 + 1) + 8 * j);
                if (([v19 supportedRadioTechnologies] & 2) != 0)
                {
                  if (v28)
                  {
                    v10 = 1;
                  }

                  else
                  {
                    v20 = [v19 entitlement];
                    v10 = [v20 carKeyEntitlementType];
                  }

                  goto LABEL_25;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v29 objects:v41 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_25:
        }

        v9 = [v7 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v9);

      if (v10 > 6)
      {
        v22 = 0;
        v3 = v26;
        v2 = v27;
        v6 = v25;
LABEL_35:

        if (v22)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v21 = off_1E801A570[v10];
      v3 = v26;
      v2 = v27;
      v6 = v25;
    }

    else
    {

      v21 = @"KNOWN_PROHIBITED_LOCATION_CHECKMARK_OVERRIDE_FULL_ACCESS";
    }

    v22 = PKLocalizedCredentialString(&v21->isa);
    goto LABEL_35;
  }

  if (failureReason == 2)
  {
    v5 = @"UWB_UPDATED_FAILED_CHECKMARK_OVERRIDE";
    goto LABEL_30;
  }

LABEL_36:
  v23 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(&v2->super.super.super.super.isa + v3);
    *buf = 134218240;
    v38 = v2;
    v39 = 2048;
    v40 = v24;
    _os_log_impl(&dword_1BD026000, v23, OS_LOG_TYPE_DEFAULT, "PKPassSessionlessContainerView (%p): unexpected terminal failure: %ld", buf, 0x16u);
  }

  v22 = 0;
LABEL_39:
  [(PKPassSessionlessContainerView *)v2 _applySessionlessState:2 withTextOverride:v22];
}

- (void)_resetToIdleState
{
  if (self->_isVisible)
  {
    v2 = 1;
LABEL_3:
    [(PKPassSessionlessContainerView *)self _applySessionlessState:v2];
    return;
  }

  v3 = 12;
  if (self->_transitioning)
  {
    v3 = 16;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR___PKPassSessionlessContainerView__passStateProvider[v3]))
  {
    v2 = 0;
    goto LABEL_3;
  }
}

@end