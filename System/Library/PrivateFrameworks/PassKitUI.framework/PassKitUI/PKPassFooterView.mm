@interface PKPassFooterView
- (BOOL)_isInNonSessionBasedDemoMode;
- (BOOL)isPassFooterContentViewInGroup:(id)a3;
- (PKPassFooterView)init;
- (PKPassFooterViewDelegate)delegate;
- (id)_messageContentViewFromMessage:(id)a3;
- (id)_messageForPaymentApplicationState;
- (id)_messageForPeerPaymentLockedByOwner;
- (id)_messageForPeerPaymentZeroBalance;
- (id)_messageForRestrictedState;
- (id)_messageForUnavailableState;
- (int64_t)_acquireContactlessInterfaceSessionErrorActionForError:(id)a3;
- (unint64_t)suppressedContentForContentView:(id)a3;
- (void)_acquireContactlessInterfaceSessionWithSessionToken:(unint64_t)a3 shouldForceSessionAcquisition:(BOOL)a4 handler:(id)a5;
- (void)_advanceContentViewVisibilityToState:(unsigned __int8)a3 animated:(BOOL)a4;
- (void)_advanceVisibilityToState:(unsigned __int8)a3 animated:(BOOL)a4;
- (void)_commitContentViewAnimated:(BOOL)a3;
- (void)_configureForPersonalizedPaymentApplicationWithContext:(id)a3 contentViewToken:(unsigned int)a4;
- (void)_configureForUserEducationDemoWithContext:(id)a3;
- (void)_configureForValueAddedServiceWithContext:(id)a3 contentViewToken:(unsigned int)a4;
- (void)_configureWithConfiguration:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (void)_endSession;
- (void)_endSessionStartTimer;
- (void)_lostModeButtonTapped;
- (void)_setCoachingState:(int64_t)a3;
- (void)_setContentView:(id)a3 animated:(BOOL)a4;
- (void)_setPhysicalButtonRequired:(BOOL)a3;
- (void)_startContactlessInterfaceSessionWithContext:(id)a3 shouldForceSessionAcquisition:(BOOL)a4 sessionAvailable:(id)a5 sessionUnavailable:(id)a6;
- (void)_updateForForegroundActivePresentationIfNecessaryAnimated:(BOOL)a3;
- (void)_updateForNonForegroundActivePresentationAnimated:(BOOL)a3;
- (void)configureWithConfiguration:(id)a3 context:(id)a4 options:(id)a5;
- (void)dealloc;
- (void)foregroundActiveArbiter:(id)a3 didUpdateDeactivationReasons:(unsigned int)a4;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)invalidate;
- (void)layoutSubviews;
- (void)passFooterContentView:(id)a3 didAuthorizeAndRetrieveDecryptedBarcode:(id)a4;
- (void)passFooterContentViewDidAuthenticate:(id)a3;
- (void)passFooterContentViewDidChangeCoachingState:(id)a3;
- (void)passFooterContentViewDidChangePhysicalButtonRequirement:(id)a3;
- (void)passFooterContentViewDidChangePileSuppressionRequirement:(id)a3;
- (void)passFooterContentViewDidInvalidateAuthorization:(id)a3;
- (void)passFooterContentViewDidTransact:(id)a3 success:(BOOL)a4;
- (void)passFooterContentViewRequestsSessionSuppression:(id)a3;
- (void)setBlurRadius:(double)a3;
@end

@implementation PKPassFooterView

- (PKPassFooterView)init
{
  v9.receiver = self;
  v9.super_class = PKPassFooterView;
  v2 = [(PKPassFooterView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    v2->_visibility = 0;
    v4 = dispatch_group_create();
    sessionDelayGroup = v3->_sessionDelayGroup;
    v3->_sessionDelayGroup = v4;

    v6 = +[PKUIForegroundActiveArbiter sharedInstance];
    v7 = v6;
    if (v6)
    {
      v3->_isBackgrounded = ([v6 registerObserver:v3] & 1) == 0;
      v3->_isAssistantActive = ([v7 registerDeactivationObserver:v3] & 0x10) != 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[PKUIForegroundActiveArbiter sharedInstance];
  v4 = v3;
  if (v3)
  {
    [v3 unregisterObserver:self];
    [v4 unregisterDeactivationObserver:self];
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  contentView = self->_contentView;
  if (contentView)
  {
    [(PKPassFooterContentView *)contentView setDelegate:0];
    [(PKPassFooterView *)self _advanceContentViewVisibilityToState:0 animated:0];
  }

  [(PKPassFooterView *)self invalidate];

  v7.receiver = self;
  v7.super_class = PKPassFooterView;
  [(PKPassFooterView *)&v7 dealloc];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKPassFooterView;
  [(PKPassFooterView *)&v11 layoutSubviews];
  [(PKPassFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKPassFooterContentView *)self->_contentView setFrame:?];
  [(PKPassFooterContentView *)self->_fadingContentView setFrame:v4, v6, v8, v10];
}

- (void)configureWithConfiguration:(id)a3 context:(id)a4 options:(id)a5
{
  v5 = a5;
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (PKEqualObjects())
  {
    v10 = (v5 & 2) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
    [(PKPassFooterView *)self _configureWithConfiguration:v8 context:v9 animated:v5 & 1];
    v12 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
    v13 = v12;
    if (v12)
    {
      v14 = v11 == v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || [v12 style] == 8)
    {
      goto LABEL_80;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:*MEMORY[0x1E69BA7E0] forKeyedSubscript:*MEMORY[0x1E69BA680]];
    [v15 setObject:*MEMORY[0x1E69BAC58] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
    v16 = v15;
    v17 = v13;
    v18 = v17;
    if (!v16)
    {
LABEL_79:

      v59 = MEMORY[0x1E69B8540];
      v60 = *MEMORY[0x1E69BB718];
      v69[0] = *MEMORY[0x1E69BB6C0];
      v69[1] = v60;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
      [v59 subjects:v61 sendEvent:v16];

LABEL_80:
      goto LABEL_81;
    }

    v19 = [v17 passType];
    v20 = MEMORY[0x1E69BB3A8];
    if ((v19 + 1) >= 3)
    {
      v21 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v21 = off_1E8026A30[v19 + 1];
    }

    [v16 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v22 = [v18 style];
    v23 = [v18 secureElementPass];
    v24 = [v23 isIdentityPass];

    if (v24)
    {
      v25 = @"identity";
    }

    else if (v22 < 0xE && ((0x27FFu >> v22) & 1) != 0)
    {
      v25 = off_1E8026A48[v22];
    }

    else
    {
      v25 = *v20;
    }

    [v16 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v26 = [v18 nfcPayload];
    v27 = PKAnalyticsReportSwitchToggleResultValue();
    [v16 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v28 = v18;
    if ([v28 passType] == 1)
    {
      v29 = [v28 secureElementPass];
      v30 = [v29 cardType];
      if (v30 <= 4)
      {
        v24 = **(&unk_1E8026AB8 + v30);
      }

      v20 = MEMORY[0x1E69BB3A8];
    }

    else
    {
      v24 = @"other";
    }

    [v16 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v31 = [v28 secureElementPass];
    v64 = v18;
    if ([v31 isIdentityPass])
    {
      v32 = [v31 identityType];
      if (v32 <= 2)
      {
        if (v32 == 1)
        {
          v33 = MEMORY[0x1E69BA648];
          goto LABEL_46;
        }

        if (v32 == 2)
        {
          v33 = MEMORY[0x1E69BB2C8];
          goto LABEL_46;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            goto LABEL_30;
          case 4:
            v33 = MEMORY[0x1E69BA8E0];
            goto LABEL_46;
          case 5:
LABEL_30:
            v33 = MEMORY[0x1E69BACB0];
LABEL_46:
            v38 = *v33;
            goto LABEL_47;
        }
      }

LABEL_39:
      v38 = *v20;
LABEL_47:
      v37 = v38;
      goto LABEL_60;
    }

    if (![v31 isAccessPass])
    {
      goto LABEL_39;
    }

    v34 = [v31 accessType];
    v35 = [v31 accessReportingType];
    v36 = v35;
    if (v34 <= 2)
    {
      switch(v34)
      {
        case 0:
          v39 = @"general";
          if (v35)
          {
            v39 = v35;
          }

          goto LABEL_55;
        case 1:
          v37 = @"hospitality";
          goto LABEL_59;
        case 2:
          v37 = @"corporate";
LABEL_59:

LABEL_60:
          [v16 setObject:v37 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          v40 = [v28 secureElementPass];
          v41 = [v40 devicePaymentApplications];
          [v41 count];

          v42 = PKAnalyticsReportSwitchToggleResultValue();

          [v16 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v43 = [v28 secureElementPass];
          v44 = *MEMORY[0x1E69BB3A8];
          v45 = [v43 organizationName];
          if ([v45 length])
          {
            v46 = [v43 cardType];
            if (v46 <= 4 && ((1 << v46) & 0x16) != 0)
            {
              v47 = v45;

              v44 = v47;
            }
          }

          [v16 setObject:v44 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v48 = [v28 secureElementPass];
          v49 = v48;
          if (v48)
          {
            v62 = v48;
            v63 = v16;
            [v48 devicePaymentApplications];
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v50 = v68 = 0u;
            v51 = [v50 countByEnumeratingWithState:&v65 objects:v70 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = 0;
              v54 = *v66;
              while (2)
              {
                for (i = 0; i != v52; ++i)
                {
                  if (*v66 != v54)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v56 = *(*(&v65 + 1) + 8 * i);
                  if (v53 && v53 != [*(*(&v65 + 1) + 8 * i) paymentType])
                  {

                    v57 = @"multiple";
                    goto LABEL_77;
                  }

                  v53 = [v56 paymentType];
                }

                v52 = [v50 countByEnumeratingWithState:&v65 objects:v70 count:16];
                if (v52)
                {
                  continue;
                }

                break;
              }
            }

            v57 = PKPaymentMethodTypeToString();
LABEL_77:

            v16 = v63;
            [v63 setObject:v57 forKeyedSubscript:*MEMORY[0x1E69BAD40]];

            v49 = v62;
            v58 = [v62 issuerCountryCode];
            [v63 setObject:v58 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
          }

          v18 = v64;
          goto LABEL_79;
      }
    }

    else
    {
      if (v34 <= 4)
      {
        if (v34 == 3)
        {
          v37 = @"singlefamily";
        }

        else
        {
          v37 = @"cars";
        }

        goto LABEL_59;
      }

      if (v34 == 5)
      {
        v37 = @"multifamily";
        goto LABEL_59;
      }

      if (v34 == 6)
      {
        v37 = @"urbanmobility";
        goto LABEL_59;
      }
    }

    v39 = *MEMORY[0x1E69BB3A8];
LABEL_55:
    v37 = v39;
    goto LABEL_59;
  }

LABEL_81:
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134349056;
      v5 = self;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%{public}p): invalidated.", &v4, 0xCu);
    }

    self->_invalidated = 1;
    [(PKPassFooterView *)self _endSessionStartTimer];
    [(PKPassFooterView *)self _endSession];
    if (self->_contentView || self->_fadingContentView)
    {
      [(PKPassFooterView *)self _setContentView:0 animated:0];
    }
  }
}

- (void)setBlurRadius:(double)a3
{
  if (self->_blurRadius != a3)
  {
    if (!self->_filter)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __34__PKPassFooterView_setBlurRadius___block_invoke;
      v7[3] = &unk_1E8010970;
      v7[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
    }

    self->_blurRadius = a3;
    v5 = [(PKPassFooterView *)self layer];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blurRadius];
    [v5 setValue:v6 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

void __34__PKPassFooterView_setBlurRadius___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E6979378]);
  v3 = [v2 initWithType:*MEMORY[0x1E6979928]];
  v4 = *(a1 + 32);
  v5 = *(v4 + 432);
  *(v4 + 432) = v3;

  [*(*(a1 + 32) + 432) setValue:&unk_1F3CC8078 forKeyPath:@"inputRadius"];
  [*(*(a1 + 32) + 432) setName:@"gaussianBlur"];
  v6 = [*(a1 + 32) layer];
  v8[0] = *(*(a1 + 32) + 432);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v6 setFilters:v7];
}

- (void)passFooterContentViewDidAuthenticate:(id)a3
{
  v4 = [(PKPassFooterViewConfiguration *)self->_configuration passView];
  [v4 didAuthenticate];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v7 = objc_opt_respondsToSelector();
    v6 = v8;
    if (v7)
    {
      [v8 passFooterViewDidSucceedAtAuthorization:self];
      v6 = v8;
    }
  }
}

- (void)passFooterContentViewDidTransact:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v6 = [(PKPassFooterViewConfiguration *)self->_configuration passView];
  [v6 didTransact];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v9 = objc_opt_respondsToSelector();
    v8 = v10;
    if (v9)
    {
      [v10 passFooterViewDidTransact:self success:v4];
      v8 = v10;
    }
  }
}

- (void)passFooterContentView:(id)a3 didAuthorizeAndRetrieveDecryptedBarcode:(id)a4
{
  configuration = self->_configuration;
  v6 = a4;
  v7 = [(PKPassFooterViewConfiguration *)configuration passView];
  [v7 setPaymentBarcodeData:v6];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v10 = objc_opt_respondsToSelector();
    v9 = v11;
    if (v10)
    {
      [v11 passFooterViewDidSucceedAtAuthorization:self];
      v9 = v11;
    }
  }
}

- (void)passFooterContentViewDidInvalidateAuthorization:(id)a3
{
  v4 = [(PKPassFooterViewConfiguration *)self->_configuration passView];
  [v4 setPaymentBarcodeData:0];

  v5 = [(PKPassFooterViewConfiguration *)self->_configuration passView];
  [v5 didLeaveArmedState];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 passFooterViewDidEndAuthorization:self];
      v7 = v9;
    }
  }
}

- (void)passFooterContentViewRequestsSessionSuppression:(id)a3
{
  [(PKPassFooterView *)self _endSessionStartTimer];
  [(PKPassFooterView *)self _endSession];
  v4 = self->_sessionDelayGroup;
  dispatch_group_enter(v4);
  v5 = dispatch_time(0, 1500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKPassFooterView_passFooterContentViewRequestsSessionSuppression___block_invoke;
  block[3] = &unk_1E8010970;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  [(PKPassFooterView *)self _configureWithConfiguration:self->_configuration context:0 animated:1];
}

- (void)passFooterContentViewDidChangePhysicalButtonRequirement:(id)a3
{
  if (self->_contentView == a3)
  {
    v5 = [a3 isPhysicalButtonRequired];

    [(PKPassFooterView *)self _setPhysicalButtonRequired:v5];
  }
}

- (void)passFooterContentViewDidChangeCoachingState:(id)a3
{
  if (self->_contentView == a3)
  {
    v5 = [a3 coachingState];

    [(PKPassFooterView *)self _setCoachingState:v5];
  }
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  var0 = a4.var0;
  v6 = a3;
  if (var0 != !self->_isBackgrounded)
  {
    v7 = v6;
    self->_isBackgrounded = !var0;
    if (var0)
    {
      [(PKPassFooterView *)self _updateForForegroundActivePresentationIfNecessaryAnimated:0];
    }

    else
    {
      [(PKPassFooterView *)self _updateForNonForegroundActivePresentationAnimated:0];
    }

    v6 = v7;
  }
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateDeactivationReasons:(unsigned int)a4
{
  v4 = a4;
  v6 = a3;
  v7 = !self->_isAssistantActive;
  if (v7 == (v4 & 0x10) >> 4)
  {
    v8 = v6;
    self->_isAssistantActive = v7;
    if ((v4 & 0x10) != 0)
    {
      [(PKPassFooterView *)self _updateForNonForegroundActivePresentationAnimated:1];
    }

    else
    {
      [(PKPassFooterView *)self _updateForForegroundActivePresentationIfNecessaryAnimated:1];
    }

    v6 = v8;
  }
}

- (BOOL)isPassFooterContentViewInGroup:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v3) = [WeakRetained isPassFooterViewInGroup:v3];

  return v3;
}

- (unint64_t)suppressedContentForContentView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained suppressedContentForPassFooter:self];

  return v5;
}

- (void)passFooterContentViewDidChangePileSuppressionRequirement:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained passFooterViewDidChangePileSuppressionRequirement:self];
  }
}

- (void)_updateForForegroundActivePresentationIfNecessaryAnimated:(BOOL)a3
{
  if (!self->_isBackgrounded && !self->_isAssistantActive)
  {
    [(PKPassFooterView *)self _configureWithConfiguration:self->_configuration context:0 animated:0];
  }
}

- (void)_updateForNonForegroundActivePresentationAnimated:(BOOL)a3
{
  v3 = a3;
  [(PKPassFooterView *)self _endSessionStartTimer];
  [(PKPassFooterView *)self _endSession];

  [(PKPassFooterView *)self _setContentView:0 animated:v3];
}

- (void)_configureWithConfiguration:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v24 = a3;
  v8 = a4;
  v9 = self->_contentViewToken + 1;
  self->_contentViewToken = v9;
  if (self->_invalidated)
  {
    v10 = 0;
  }

  else
  {
    v10 = v24;
  }

  objc_storeStrong(&self->_configuration, v10);
  [(PKPassFooterView *)self _endSessionStartTimer];
  [(PKPassFooterView *)self _endSession];
  v11 = [(PKPassFooterViewConfiguration *)self->_configuration passView];
  v12 = [v11 pass];
  if ([v12 passType] == 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  configuration = self->_configuration;
  if (configuration)
  {
    v16 = [(PKPassFooterViewConfiguration *)configuration state];
    v17 = 0;
    if (v16 > 3)
    {
      if (v16 > 6)
      {
        if (v16 != 7)
        {
          if (v16 != 8)
          {
            goto LABEL_36;
          }

          [(PKPassFooterView *)self _configureForUserEducationDemoWithContext:v8];
          goto LABEL_35;
        }

        v20 = [(PKPassFooterView *)self _messageForPeerPaymentLockedByOwner];
      }

      else
      {
        if (v16 == 4)
        {
          v21 = [[PKPassPaymentConfirmationView alloc] initWithPass:v14 passStateProvider:v11 context:v8];
          goto LABEL_27;
        }

        if (v16 != 6)
        {
          goto LABEL_36;
        }

        v20 = [(PKPassFooterView *)self _messageForPeerPaymentZeroBalance];
      }

LABEL_31:
      v22 = v20;
      v17 = [(PKPassFooterView *)self _messageContentViewFromMessage:v20];

      goto LABEL_36;
    }

    if (v16 <= 1)
    {
      if (v16)
      {
        if (v16 != 1)
        {
          goto LABEL_36;
        }

        if (v11)
        {
          v18 = [(PKPassFooterView *)self _messageForPaymentApplicationState];
          v17 = [(PKPassFooterView *)self _messageContentViewFromMessage:v18];

          if (v17)
          {
            goto LABEL_36;
          }

          v19 = [v14 devicePrimaryBarcodePaymentApplication];
          [v19 state];
          if (PKPaymentApplicationStateIsPersonalized())
          {

LABEL_33:
            [(PKPassFooterView *)self _setContentView:0 animated:v5];
            [(PKPassFooterView *)self _configureForPersonalizedPaymentApplicationWithContext:v8 contentViewToken:v9];
            goto LABEL_34;
          }

          [v14 effectiveContactlessPaymentApplicationState];
          IsPersonalized = PKPaymentApplicationStateIsPersonalized();

          if (IsPersonalized)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_35;
      }

      v21 = [(PKPassFooterContentView *)[PKPassBarcodeFooterView alloc] initWithPass:v12 presentationContext:0];
LABEL_27:
      v17 = v21;
      goto LABEL_36;
    }

    if (v16 != 2)
    {
      v20 = [(PKPassFooterView *)self _messageForRestrictedState];
      goto LABEL_31;
    }

    if (v11)
    {
      [(PKPassFooterView *)self _setContentView:0 animated:v5];
      [(PKPassFooterView *)self _configureForValueAddedServiceWithContext:v8 contentViewToken:v9];
LABEL_34:
      v17 = 0;
      goto LABEL_38;
    }
  }

LABEL_35:
  v17 = 0;
LABEL_36:
  if (self->_contentViewToken == v9)
  {
    [(PKPassFooterView *)self _setContentView:v17 animated:v5];
  }

LABEL_38:
}

- (void)_startContactlessInterfaceSessionWithContext:(id)a3 shouldForceSessionAcquisition:(BOOL)a4 sessionAvailable:(id)a5 sessionUnavailable:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [(PKPassFooterView *)self _endSessionStartTimer];
  [(PKPassFooterView *)self _endSession];
  v13 = [v10 backgroundSession];
  v14 = [MEMORY[0x1E69B8DB8] paymentService];
  if (*&self->_contentView == 0 && PKUserIntentIsAvailable())
  {
    v15 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
    [(PKPassFooterView *)self _setPhysicalButtonRequired:[PKPassPaymentContainerView initialPhysicalButtonRequiredAssumptionForPass:v15 context:v10 paymentService:v14]];
  }

  objc_initWeak(location, self);
  v16 = (self->_sessionToken + 1);
  self->_sessionToken = v16;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  self->_acquiringSession = 1;
  v43 = 0;
  sessionDelayGroup = self->_sessionDelayGroup;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __131__PKPassFooterView__startContactlessInterfaceSessionWithContext_shouldForceSessionAcquisition_sessionAvailable_sessionUnavailable___block_invoke;
  block[3] = &unk_1E80268D0;
  objc_copyWeak(v40, location);
  v34 = v13;
  v35 = self;
  v36 = v14;
  v37 = v11;
  v40[1] = v16;
  v39 = v42;
  v18 = v12;
  v38 = v18;
  v41 = a4;
  v19 = v14;
  v20 = v11;
  v21 = v13;
  v22 = MEMORY[0x1E69E96A0];
  dispatch_group_notify(sessionDelayGroup, MEMORY[0x1E69E96A0], block);
  v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v22);
  sessionStartTimer = self->_sessionStartTimer;
  self->_sessionStartTimer = v23;

  v25 = self->_sessionStartTimer;
  v26 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v27 = self->_sessionStartTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __131__PKPassFooterView__startContactlessInterfaceSessionWithContext_shouldForceSessionAcquisition_sessionAvailable_sessionUnavailable___block_invoke_69;
  handler[3] = &unk_1E80268F8;
  objc_copyWeak(v32, location);
  v32[1] = v16;
  v30 = v18;
  v31 = v42;
  v28 = v18;
  dispatch_source_set_event_handler(v27, handler);
  dispatch_resume(self->_sessionStartTimer);

  objc_destroyWeak(v32);
  objc_destroyWeak(v40);
  _Block_object_dispose(v42, 8);
  objc_destroyWeak(location);
}

void __131__PKPassFooterView__startContactlessInterfaceSessionWithContext_shouldForceSessionAcquisition_sessionAvailable_sessionUnavailable___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __131__PKPassFooterView__startContactlessInterfaceSessionWithContext_shouldForceSessionAcquisition_sessionAvailable_sessionUnavailable___block_invoke_2;
    aBlock[3] = &unk_1E8026880;
    objc_copyWeak(v28, (a1 + 80));
    v3 = *(a1 + 40);
    v28[1] = *(a1 + 88);
    aBlock[4] = v3;
    v26 = *(a1 + 56);
    v25 = *(a1 + 48);
    v19 = *(a1 + 64);
    v4 = v19;
    v27 = v19;
    v5 = _Block_copy(aBlock);
    v6 = *(a1 + 32);
    if (!v6)
    {
LABEL_15:
      [WeakRetained _acquireContactlessInterfaceSessionWithSessionToken:*(a1 + 88) shouldForceSessionAcquisition:*(a1 + 96) handler:{v5, v19}];
      goto LABEL_16;
    }

    v7 = [v6 pass];
    v8 = [v7 uniqueID];
    v9 = [*(*(a1 + 40) + 512) pass];
    v10 = [v9 uniqueID];
    v11 = v8;
    v12 = v10;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      if (!v11 || !v12)
      {

LABEL_12:
        v18 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v30 = WeakRetained;
          _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%p): error: background session configured for incorrect pass - unwanted transactions may have occurred.", buf, 0xCu);
        }

        [*(a1 + 32) invalidate];
        goto LABEL_15;
      }

      v14 = [v11 isEqualToString:v12];

      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v15 = *(a1 + 32);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __131__PKPassFooterView__startContactlessInterfaceSessionWithContext_shouldForceSessionAcquisition_sessionAvailable_sessionUnavailable___block_invoke_3;
    v20[3] = &unk_1E80268A8;
    objc_copyWeak(v22, (a1 + 80));
    v16 = v5;
    v17 = *(a1 + 88);
    v21 = v16;
    v22[1] = v17;
    v23 = *(a1 + 96);
    [v15 claimActiveSessionWithCompletion:v20];

    objc_destroyWeak(v22);
LABEL_16:

    objc_destroyWeak(v28);
    goto LABEL_17;
  }

  [*(a1 + 32) invalidate];
LABEL_17:
}

void __131__PKPassFooterView__startContactlessInterfaceSessionWithContext_shouldForceSessionAcquisition_sessionAvailable_sessionUnavailable___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 57) == *(a1 + 80) && (*(WeakRetained + 480) & 1) == 0)
  {
    *(WeakRetained + 450) = 0;
    [WeakRetained _endSessionStartTimer];
    if (v6 || [*(a1 + 32) _isInNonSessionBasedDemoMode])
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v5 = *(*(a1 + 64) + 8);
      if ((*(v5 + 24) & 1) == 0)
      {
        *(v5 + 24) = 1;
        (*(*(a1 + 56) + 16))();
      }
    }
  }

  else
  {
    InvalidateSession(v6);
  }
}

void __131__PKPassFooterView__startContactlessInterfaceSessionWithContext_shouldForceSessionAcquisition_sessionAvailable_sessionUnavailable___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = PKLogFacilityTypeGetObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        v7 = 134217984;
        v8 = WeakRetained;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%p): using background session.", &v7, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (v6)
      {
        v7 = 134217984;
        v8 = WeakRetained;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%p): failed to acquire background session - falling back.", &v7, 0xCu);
      }

      [WeakRetained _acquireContactlessInterfaceSessionWithSessionToken:*(a1 + 48) shouldForceSessionAcquisition:*(a1 + 56) handler:*(a1 + 32)];
    }
  }

  else
  {
    InvalidateSession(v3);
  }
}

void __131__PKPassFooterView__startContactlessInterfaceSessionWithContext_shouldForceSessionAcquisition_sessionAvailable_sessionUnavailable___block_invoke_69(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v6 = 134349312;
      v7 = WeakRetained;
      v8 = 2050;
      v9 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%{public}p): Contactless payment session acquisition timed-out for token %{public}ld.", &v6, 0x16u);
    }

    if (*(WeakRetained + 57) == *(a1 + 56) && (*(WeakRetained + 480) & 1) == 0)
    {
      v5 = *(*(a1 + 40) + 8);
      if ((*(v5 + 24) & 1) == 0)
      {
        *(v5 + 24) = 1;
        (*(*(a1 + 32) + 16))();
      }

      [WeakRetained _endSessionStartTimer];
    }
  }
}

- (int64_t)_acquireContactlessInterfaceSessionErrorActionForError:(id)a3
{
  v3 = a3;
  if (PKNearFieldRadioIsAvailable())
  {
    v4 = [v3 domain];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"nfcd"];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      v7 = [v3 code] == 50;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (void)_acquireContactlessInterfaceSessionWithSessionToken:(unint64_t)a3 shouldForceSessionAcquisition:(BOOL)a4 handler:(id)a5
{
  v5 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (v8)
  {
    if (self->_sessionToken != a3 || self->_invalidated || self->_isBackgrounded)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:

        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __110__PKPassFooterView__acquireContactlessInterfaceSessionWithSessionToken_shouldForceSessionAcquisition_handler___block_invoke_76;
        v22[3] = &unk_1E8010B50;
        v23 = v8;
        dispatch_async(MEMORY[0x1E69E96A0], v22);

        goto LABEL_9;
      }

      *buf = 134349312;
      v29 = self;
      v30 = 2050;
      v31 = a3;
      v10 = "PKPassFooterView (%{public}p): acquisition no longer allowed for token %{public}ld.";
      v11 = v9;
      v12 = 22;
LABEL_7:
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      goto LABEL_8;
    }

    v13 = [(PKPassFooterView *)self _isInNonSessionBasedDemoMode];
    v9 = PKLogFacilityTypeGetObject();
    v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_8;
      }

      *buf = 134349056;
      v29 = self;
      v10 = "PKPassFooterView (%{public}p): skippping contactless payment session aquisition due to demo mode.";
      v11 = v9;
      v12 = 12;
      goto LABEL_7;
    }

    if (v14)
    {
      *buf = 134349312;
      v29 = self;
      v30 = 2050;
      v31 = a3;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%{public}p): Acquiring contactless payment session for token %{public}ld...", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v15 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
    if ([v15 passType] == 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110__PKPassFooterView__acquireContactlessInterfaceSessionWithSessionToken_shouldForceSessionAcquisition_handler___block_invoke;
    aBlock[3] = &unk_1E8026948;
    objc_copyWeak(v26, buf);
    v26[1] = a3;
    v18 = v8;
    v27 = v5;
    aBlock[4] = self;
    v25 = v18;
    v19 = _Block_copy(aBlock);
    if (v17 && [MEMORY[0x1E69B8750] _useSTSForDevicePrimaryContactlessAccessControlForSecureElementPass:v17])
    {
      v20 = [MEMORY[0x1E69B8DC0] startSTSContactlessInterfaceSessionWithDelegate:self completion:v19];
    }

    else if ([v17 isCarKeyPass])
    {
      v20 = [MEMORY[0x1E69B8DC0] startDigitalCarKeySessionWithCompletion:v19];
    }

    else
    {
      if (v5)
      {
        [MEMORY[0x1E69B8DC0] forceContactlessInterfaceSessionWithCompletion:v19];
      }

      else
      {
        [MEMORY[0x1E69B8DC0] startContactlessInterfaceSessionWithCompletion:v19];
      }
      v20 = ;
    }

    sessionHandle = self->_sessionHandle;
    self->_sessionHandle = v20;

    objc_destroyWeak(v26);
    objc_destroyWeak(buf);
  }

LABEL_9:
}

void __110__PKPassFooterView__acquireContactlessInterfaceSessionWithSessionToken_shouldForceSessionAcquisition_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__PKPassFooterView__acquireContactlessInterfaceSessionWithSessionToken_shouldForceSessionAcquisition_handler___block_invoke_2;
  block[3] = &unk_1E8026920;
  objc_copyWeak(v16, (a1 + 48));
  v16[1] = *(a1 + 56);
  v12 = v5;
  v7 = *(a1 + 40);
  v17 = *(a1 + 64);
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v16);
}

void __110__PKPassFooterView__acquireContactlessInterfaceSessionWithSessionToken_shouldForceSessionAcquisition_handler___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained || (v4 = WeakRetained[57], v4 != *(a1 + 72)) || (WeakRetained[60] & 1) != 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 72);
      *buf = 134349312;
      v21 = v6;
      v22 = 2050;
      v23 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%{public}p): acquisition no longer allowed for token %{public}ld.", buf, 0x16u);
    }

    InvalidateSession(*(a1 + 32));
    goto LABEL_7;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 134349568;
    v21 = v3;
    v22 = 2050;
    v23 = v10;
    v24 = 2050;
    v25 = v4;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%{public}p): Acquired contactless payment session (%{public}p) for token %{public}ld.", buf, 0x20u);
  }

  v11 = v3[59];
  v3[59] = 0;

  if (*(a1 + 32))
  {
    v8 = *(*(a1 + 56) + 16);
    goto LABEL_8;
  }

  v12 = [v3 _acquireContactlessInterfaceSessionErrorActionForError:*(a1 + 40)];
  switch(v12)
  {
    case 2:
LABEL_7:
      v8 = *(*(a1 + 56) + 16);
LABEL_8:
      v8();
      break;
    case 1:
      v14 = PKCreateAlertControllerForNFCRadioDisabled();
      v15 = [v3 pkui_viewControllerFromResponderChain];
      [v15 presentViewController:v14 animated:1 completion:0];

      (*(*(a1 + 56) + 16))();
      break;
    case 0:
      v13 = dispatch_time(0, 2000000000);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __110__PKPassFooterView__acquireContactlessInterfaceSessionWithSessionToken_shouldForceSessionAcquisition_handler___block_invoke_72;
      v16[3] = &unk_1E80231E0;
      objc_copyWeak(v18, (a1 + 64));
      v18[1] = *(a1 + 72);
      v19 = *(a1 + 80);
      v17 = *(a1 + 56);
      dispatch_after(v13, MEMORY[0x1E69E96A0], v16);

      objc_destroyWeak(v18);
      break;
  }
}

void __110__PKPassFooterView__acquireContactlessInterfaceSessionWithSessionToken_shouldForceSessionAcquisition_handler___block_invoke_72(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = 134349312;
      v6 = WeakRetained;
      v7 = 2050;
      v8 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPassFooterView (%{public}p): Restarting contactless payment session acquisition for token %{public}ld...", &v5, 0x16u);
    }

    [WeakRetained _acquireContactlessInterfaceSessionWithSessionToken:*(a1 + 48) shouldForceSessionAcquisition:*(a1 + 56) handler:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_configureForPersonalizedPaymentApplicationWithContext:(id)a3 contentViewToken:(unsigned int)a4
{
  v6 = a3;
  v7 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
  if ([v7 passType] == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  objc_initWeak(&location, self);
  if ([v9 supportedRadioTechnologies] == 2)
  {
    if ([(PKPassFooterView *)self _canApplyContentViewForPersonalizedApplication])
    {
      v10 = [PKPassSessionlessContainerView alloc];
      v11 = [(PKPassFooterViewConfiguration *)self->_configuration passView];
      v12 = [MEMORY[0x1E69B8DB8] paymentService];
      v13 = [(PKPassSessionlessContainerView *)v10 initWithPass:v9 passStateProvider:v11 context:v6 paymentService:v12];

      [(PKPassFooterView *)self _setContentView:v13 animated:1];
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__PKPassFooterView__configureForPersonalizedPaymentApplicationWithContext_contentViewToken___block_invoke;
    aBlock[3] = &unk_1E8026970;
    objc_copyWeak(&v25, &location);
    v26 = a4;
    v23 = v9;
    v14 = v6;
    v24 = v14;
    v15 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __92__PKPassFooterView__configureForPersonalizedPaymentApplicationWithContext_contentViewToken___block_invoke_2;
    v19[3] = &unk_1E8016AE0;
    objc_copyWeak(&v20, &location);
    v21 = a4;
    v16 = _Block_copy(v19);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = [WeakRetained isPassFooterViewInGroup:self];

    [(PKPassFooterView *)self _startContactlessInterfaceSessionWithContext:v14 shouldForceSessionAcquisition:v18 sessionAvailable:v15 sessionUnavailable:v16];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v25);
  }

  objc_destroyWeak(&location);
}

void __92__PKPassFooterView__configureForPersonalizedPaymentApplicationWithContext_contentViewToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 121) == *(a1 + 56) && ([WeakRetained _canApplyContentViewForPersonalizedApplication] & 1) != 0)
  {
    v8 = [PKPassPaymentContainerView alloc];
    v9 = *(a1 + 32);
    v10 = [v7[64] passView];
    v11 = [(PKPassPaymentContainerView *)v8 initWithPass:v9 passStateProvider:v10 context:*(a1 + 40) paymentSession:v12 paymentService:v5];

    [v7 _setContentView:v11 animated:1];
  }

  else
  {
    InvalidateSession(v12);
  }
}

void __92__PKPassFooterView__configureForPersonalizedPaymentApplicationWithContext_contentViewToken___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[121] == *(a1 + 40))
    {
      v7 = WeakRetained;
      v4 = [WeakRetained _canApplyContentViewForPersonalizedApplication];
      v3 = v7;
      if (v4)
      {
        v5 = [v7 _messageForUnavailableState];
        v6 = [v7 _messageContentViewFromMessage:v5];
        [v7 _setContentView:v6 animated:1];

        v3 = v7;
      }
    }
  }
}

- (void)_configureForValueAddedServiceWithContext:(id)a3 contentViewToken:(unsigned int)a4
{
  v6 = a3;
  v7 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPassFooterView__configureForValueAddedServiceWithContext_contentViewToken___block_invoke;
  aBlock[3] = &unk_1E8026970;
  objc_copyWeak(&v18, &location);
  v19 = a4;
  v8 = v7;
  v16 = v8;
  v9 = v6;
  v17 = v9;
  v10 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PKPassFooterView__configureForValueAddedServiceWithContext_contentViewToken___block_invoke_2;
  v12[3] = &unk_1E8016AE0;
  objc_copyWeak(&v13, &location);
  v14 = a4;
  v11 = _Block_copy(v12);
  [(PKPassFooterView *)self _startContactlessInterfaceSessionWithContext:v9 shouldForceSessionAcquisition:0 sessionAvailable:v10 sessionUnavailable:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __79__PKPassFooterView__configureForValueAddedServiceWithContext_contentViewToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 121) == *(a1 + 56) && ([WeakRetained _canApplyContentViewForValueAddedService] & 1) != 0)
  {
    v8 = [PKPassPaymentContainerView alloc];
    v9 = *(a1 + 32);
    v10 = [v7[64] passView];
    v11 = [(PKPassPaymentContainerView *)v8 initWithPass:v9 passStateProvider:v10 context:*(a1 + 40) paymentSession:v12 paymentService:v5];

    [v7 _setContentView:v11 animated:1];
  }

  else
  {
    InvalidateSession(v12);
  }
}

void __79__PKPassFooterView__configureForValueAddedServiceWithContext_contentViewToken___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[121] == *(a1 + 40))
    {
      v7 = WeakRetained;
      v4 = [WeakRetained _canApplyContentViewForValueAddedService];
      v3 = v7;
      if (v4)
      {
        v5 = [v7 _messageForUnavailableState];
        v6 = [v7 _messageContentViewFromMessage:v5];
        [v7 _setContentView:v6 animated:1];

        v3 = v7;
      }
    }
  }
}

- (void)_configureForUserEducationDemoWithContext:(id)a3
{
  v4 = a3;
  v5 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPassFooterView__configureForUserEducationDemoWithContext___block_invoke;
  aBlock[3] = &unk_1E8026998;
  objc_copyWeak(&v19, &location);
  v6 = v5;
  v16 = v6;
  v17 = self;
  v7 = v4;
  v18 = v7;
  v8 = _Block_copy(aBlock);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __62__PKPassFooterView__configureForUserEducationDemoWithContext___block_invoke_80;
  v13 = &unk_1E8010998;
  objc_copyWeak(&v14, &location);
  v9 = _Block_copy(&v10);
  [(PKPassFooterView *)self _startContactlessInterfaceSessionWithContext:v7 shouldForceSessionAcquisition:0 sessionAvailable:v8 sessionUnavailable:v9, v10, v11, v12, v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __62__PKPassFooterView__configureForUserEducationDemoWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 enableDemoMode];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPassFooterView__configureForUserEducationDemoWithContext___block_invoke_2;
  block[3] = &unk_1E8011E88;
  objc_copyWeak(&v13, (a1 + 56));
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __62__PKPassFooterView__configureForUserEducationDemoWithContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained _canApplyContentViewForUserEducationDemo] & 1) != 0)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Session available? Yes - Configuring user education demo footer view", v6, 2u);
    }

    v5 = [[PKPassUserEducationDemoFooterView alloc] initWithPass:*(a1 + 40) userEducationDemoController:*(*(a1 + 48) + 496) context:*(a1 + 56) contactlessSession:*(a1 + 32)];
    [v3 _setContentView:v5 animated:1];
  }

  else
  {
    InvalidateSession(*(a1 + 32));
  }
}

void __62__PKPassFooterView__configureForUserEducationDemoWithContext___block_invoke_80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained _canApplyContentViewForUserEducationDemo])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Session available? No - Not configuring user education demo footer view", v4, 2u);
    }
  }
}

- (void)_setContentView:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_invalidated)
  {
    if (v6)
    {
      [(PKPassFooterContentView *)v6 setDelegate:0];
      [(PKPassFooterContentView *)v7 invalidate];

      v7 = 0;
    }
  }

  else if (a4)
  {
    p_contentView = &self->_contentView;
    contentView = self->_contentView;
    if (contentView == v7)
    {
      goto LABEL_50;
    }

    v10 = 1;
    if (!contentView)
    {
      goto LABEL_32;
    }

LABEL_14:
    [(PKPassFooterContentView *)contentView setDelegate:0];
    contentViewVisibility = self->_contentViewVisibility;
    v15 = self->_contentViewVisibility != 0;
    if (v10 && !self->_fadingContentView)
    {
      if (self->_contentViewVisibility)
      {
        [(PKPassFooterView *)self _advanceContentViewVisibilityToState:3 animated:1];
      }

      objc_storeStrong(&self->_fadingContentView, *p_contentView);
      self->_fadingContentViewNeedsDidHide = v15;
      v20 = *p_contentView;
      *p_contentView = 0;

      [(PKPassFooterContentView *)self->_fadingContentView alpha];
      OpacityAnimation = CreateOpacityAnimation(v21, 0.0);
      objc_initWeak(&location, self);
      v22 = self->_fadingContentView;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __45__PKPassFooterView__setContentView_animated___block_invoke;
      v29[3] = &unk_1E80113B0;
      objc_copyWeak(&v31, &location);
      v23 = v22;
      v30 = v23;
      [(PKPassFooterContentView *)OpacityAnimation pkui_setCompletionHandler:v29];
      v24 = [(PKPassFooterContentView *)self->_fadingContentView layer];
      v25 = [v24 pkui_addAdditiveAnimation:OpacityAnimation];

      [(PKPassFooterContentView *)self->_fadingContentView setAlpha:0.0];
      if (contentViewVisibility)
      {
        [(PKPassFooterView *)self _advanceContentViewVisibilityToState:0 animated:0];
      }

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      if (self->_contentViewVisibility)
      {
        [(PKPassFooterView *)self _advanceContentViewVisibilityToState:3 animated:0];
        [(PKPassFooterContentView *)*p_contentView removeFromSuperview];
        [(PKPassFooterView *)self _advanceContentViewVisibilityToState:0 animated:0];
      }

      else
      {
        [(PKPassFooterContentView *)*p_contentView removeFromSuperview];
      }

      [(PKPassFooterContentView *)*p_contentView invalidate];
      v16 = *p_contentView;
      *p_contentView = 0;

      if (v10)
      {
        goto LABEL_32;
      }

      fadingContentView = self->_fadingContentView;
      if (!fadingContentView)
      {
        goto LABEL_32;
      }

      OpacityAnimation = fadingContentView;
      v19 = self->_fadingContentView;
      self->_fadingContentView = 0;

      if (self->_fadingContentViewNeedsDidHide)
      {
        [(PKPassFooterContentView *)OpacityAnimation didBecomeHiddenAnimated:0];
      }

      [(PKPassFooterContentView *)OpacityAnimation removeFromSuperview];
      [(PKPassFooterContentView *)OpacityAnimation invalidate];
    }

LABEL_32:
    v26 = [(PKPassFooterContentView *)*p_contentView requestPileSuppression];
    objc_storeStrong(p_contentView, v7);
    if (*p_contentView)
    {
      [(PKPassFooterContentView *)*p_contentView setDelegate:self];
      if (((self->_fadingContentView == 0) & ~v10) == 0)
      {
        [(PKPassFooterContentView *)*p_contentView setAlpha:0.0];
      }

      if (self->_visibility - 1 <= 1)
      {
        [(PKPassFooterView *)self _advanceContentViewVisibilityToState:1 animated:v10];
      }

      [(PKPassFooterView *)self addSubview:*p_contentView];
      [(PKPassFooterView *)self setNeedsLayout];
      [(PKPassFooterView *)self layoutIfNeeded];
      if (!self->_fadingContentView)
      {
        [(PKPassFooterView *)self _commitContentViewAnimated:v10];
      }
    }

    if (v26 != [(PKPassFooterContentView *)*p_contentView requestPileSuppression])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [WeakRetained passFooterViewDidChangePileSuppressionRequirement:self];
      }
    }

    if (v7)
    {
      [(PKPassFooterView *)self _setPhysicalButtonRequired:[(PKPassFooterContentView *)v7 isPhysicalButtonRequired]];
      v28 = [(PKPassFooterContentView *)v7 coachingState];
    }

    else
    {
      if (!self->_acquiringSession)
      {
        -[PKPassFooterView _setPhysicalButtonRequired:](self, "_setPhysicalButtonRequired:", [0 isPhysicalButtonRequired]);
      }

      v28 = 0;
    }

    [(PKPassFooterView *)self _setCoachingState:v28];
    goto LABEL_50;
  }

  v11 = self->_fadingContentView;
  if (v11)
  {
    v12 = v11;
    v13 = self->_fadingContentView;
    self->_fadingContentView = 0;

    if (self->_fadingContentViewNeedsDidHide)
    {
      [(PKPassFooterContentView *)v12 didBecomeHiddenAnimated:0];
    }

    [(PKPassFooterContentView *)v12 removeFromSuperview];
    [(PKPassFooterContentView *)v12 invalidate];
  }

  p_contentView = &self->_contentView;
  contentView = self->_contentView;
  if (contentView != v7)
  {
    v10 = 0;
    if (!contentView)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

  if (self->_fadingContentView)
  {
    [(PKPassFooterView *)self _commitContentViewAnimated:0];
  }

LABEL_50:
}

void __45__PKPassFooterView__setContentView_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[52] == *(a1 + 32))
  {
    v3 = WeakRetained;
    [WeakRetained _commitContentViewAnimated:1];
    WeakRetained = v3;
  }
}

- (void)_commitContentViewAnimated:(BOOL)a3
{
  v3 = a3;
  fadingContentView = self->_fadingContentView;
  if (fadingContentView)
  {
    v6 = fadingContentView;
    v7 = self->_fadingContentView;
    self->_fadingContentView = 0;

    if (self->_fadingContentViewNeedsDidHide)
    {
      [(PKPassFooterContentView *)v6 didBecomeHiddenAnimated:0];
    }

    [(PKPassFooterContentView *)v6 removeFromSuperview];
    [(PKPassFooterContentView *)v6 invalidate];
  }

  if (v3)
  {
    contentView = self->_contentView;
    if (contentView)
    {
      [(PKPassFooterContentView *)contentView alpha];
      OpacityAnimation = CreateOpacityAnimation(v9, 1.0);
      v11 = [(PKPassFooterContentView *)self->_contentView layer];
      v12 = [v11 pkui_addAdditiveAnimation:OpacityAnimation];

      [(PKPassFooterContentView *)self->_contentView setAlpha:1.0];
    }
  }

  visibility = self->_visibility;

  [(PKPassFooterView *)self _advanceContentViewVisibilityToState:visibility animated:v3];
}

- (void)_setPhysicalButtonRequired:(BOOL)a3
{
  if (self->_physicalButtonRequired == !a3)
  {
    self->_physicalButtonRequired = a3;
    if (self->_visibility - 1 <= 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained passFooterViewDidChangePhysicalButtonRequirement:self];
    }
  }
}

- (void)_setCoachingState:(int64_t)a3
{
  if (self->_coachingState != a3)
  {
    self->_coachingState = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained passFooterViewDidChangeCoachingState:self];
  }
}

- (void)_advanceVisibilityToState:(unsigned __int8)a3 animated:(BOOL)a4
{
  v5 = MEMORY[0x1E69E9820];
  LOBYTE(v7) = a4;
  PKViewVisibilityStateAdvanceState();
  if (!self->_visibility)
  {
    [(PKPassFooterView *)self _endSession:v5];
  }
}

uint64_t __55__PKPassFooterView__advanceVisibilityToState_animated___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(result + 32) + 488) = a2;
  if (!*(*(result + 32) + 416))
  {
    return [*(result + 32) _advanceContentViewVisibilityToState:a2 animated:*(result + 40)];
  }

  return result;
}

- (void)_advanceContentViewVisibilityToState:(unsigned __int8)a3 animated:(BOOL)a4
{
  v4 = self->_contentView;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    PKViewVisibilityStateAdvanceState();
  }
}

uint64_t __66__PKPassFooterView__advanceContentViewVisibilityToState_animated___block_invoke(uint64_t result, int a2)
{
  v2 = result;
  *(*(result + 32) + 489) = a2;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v9 = *(v2 + 40);
        v10 = *(v2 + 48);

        return [v9 didBecomeVisibleAnimated:v10];
      }
    }

    else if (a2 == 3)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v5 = *(v2 + 40);
        v6 = *(v2 + 48);

        return [v5 willBecomeHiddenAnimated:v6];
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v3 = *(v2 + 40);
        v4 = *(v2 + 48);

        return [v3 willBecomeVisibleAnimated:v4];
      }
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v7 = *(v2 + 40);
      v8 = *(v2 + 48);

      return [v7 didBecomeHiddenAnimated:v8];
    }
  }

  return result;
}

- (void)_endSession
{
  self->_acquiringSession = 0;
  ++self->_sessionToken;
  sessionHandle = self->_sessionHandle;
  if (sessionHandle)
  {
    v4 = sessionHandle;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL17InvalidateSessionP22PKPaymentSessionHandle_block_invoke;
    v7[3] = &unk_1E8012370;
    v8 = v4;
    v5 = v4;
    PeformBackgroundTask(v7);

    v6 = self->_sessionHandle;
    self->_sessionHandle = 0;
  }
}

- (void)_endSessionStartTimer
{
  sessionStartTimer = self->_sessionStartTimer;
  if (sessionStartTimer)
  {
    dispatch_source_cancel(sessionStartTimer);
    v4 = self->_sessionStartTimer;
    self->_sessionStartTimer = 0;
  }
}

- (void)_lostModeButtonTapped
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Starting FMDFMIP lost mode exit.", v4, 2u);
  }

  v3 = [MEMORY[0x1E699C848] sharedInstance];
  [v3 initiateLostModeExitAuthWithCompletion:&__block_literal_global_253];
}

void __41__PKPassFooterView__lostModeButtonTapped__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [v2 localizedDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error exiting lost mode: %@", &v6, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Completed FMDFMIP lost mode exit.", &v6, 2u);
    }

    PKSetNeedsLostModeExitAuth();
  }
}

- (BOOL)_isInNonSessionBasedDemoMode
{
  if (PKStoreDemoModeEnabled())
  {
    return 1;
  }

  return PKUIOnlyDemoModeEnabled();
}

- (id)_messageContentViewFromMessage:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[PKPassMessageFooterContentView alloc] initWithPass:0 presentationContext:0];
    v5 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObject:v3];

    [(PKPassMessageFooterContentView *)v4 updateWithMessages:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_messageForUnavailableState
{
  v3 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v3 setIdentifier:@"applicationState"];
  v4 = PKLocalizedPaymentString(&cfstr_PaymentDeviceU.isa);
  [(PKDashboardPassMessage *)v3 setTitle:v4];

  v5 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
  if ([v5 passType] == 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 isAccessPass])
  {
    v7 = @"PAYMENT_DEVICE_UNAVAILABLE_WALLET_MESSAGE";
  }

  else
  {
    v7 = @"PAYMENT_DEVICE_UNAVAILABLE_MESSAGE";
  }

  v8 = PKLocalizedPaymentString(&v7->isa);
  [(PKDashboardPassMessage *)v3 setMessage:v8];

  return v3;
}

- (id)_messageForRestrictedState
{
  v2 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v2 setIdentifier:@"applicationState"];
  v3 = PKLocalizedPaymentString(&cfstr_RestrictedMode.isa);
  [(PKDashboardPassMessage *)v2 setTitle:v3];

  v4 = PKLocalizedPaymentString(&cfstr_RestrictedMode_0.isa);
  [(PKDashboardPassMessage *)v2 setMessage:v4];

  return v2;
}

- (id)_messageForPeerPaymentZeroBalance
{
  v2 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v2 setIdentifier:@"applicationState"];
  v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_16.isa);
  [(PKDashboardPassMessage *)v2 setTitle:v3];

  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_30.isa);
  [(PKDashboardPassMessage *)v2 setMessage:v4];

  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAcc_31.isa);
  [(PKDashboardPassMessage *)v2 setButtonTitle:v5];

  [(PKDashboardPassMessage *)v2 setActionOnButtonPress:&__block_literal_global_122_0];
  [(PKDashboardPassMessage *)v2 setShowDisclosure:1];
  v6 = PKPassKitUIBundle();
  v7 = [v6 URLForResource:@"MessageError" withExtension:@"pdf"];
  v8 = PKUIScreenScale();
  v9 = PKUIImageFromPDF(v7, 45.0, 45.0, v8);
  [(PKDashboardPassMessage *)v2 setImage:v9];

  return v2;
}

void __53__PKPassFooterView__messageForPeerPaymentZeroBalance__block_invoke()
{
  if (PKRunningInViewService() && ([MEMORY[0x1E69B9358] isWalletRestricted] & 1) == 0)
  {
    v2 = PKPeerPaymentGetTopUpSensitiveURL();
    v0 = [MEMORY[0x1E699FCA0] sharedService];
    v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F970]];
    if (v2)
    {
      [v1 setObject:v2 forKeyedSubscript:*MEMORY[0x1E699F960]];
    }

    [v0 openApplication:*MEMORY[0x1E69BC3D8] options:v1 withResult:0];
  }
}

- (id)_messageForPeerPaymentLockedByOwner
{
  v2 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v2 setIdentifier:@"applicationState"];
  v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_6.isa);
  [(PKDashboardPassMessage *)v2 setTitle:v3];

  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentDas_21.isa);
  [(PKDashboardPassMessage *)v2 setMessage:v4];

  v5 = PKPassKitUIBundle();
  v6 = [v5 URLForResource:@"MessageAlert" withExtension:@"pdf"];
  v7 = PKUIScreenScale();
  v8 = PKUIImageFromPDF(v6, 45.0, 45.0, v7);
  [(PKDashboardPassMessage *)v2 setImage:v8];

  return v2;
}

- (id)_messageForPaymentApplicationState
{
  v3 = [(PKPassFooterViewConfiguration *)self->_configuration pass];
  if ([v3 passType] == 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 supportsBarcodePayment];
  if (PKNeedsLostModeExitAuth())
  {
    v7 = 7;
  }

  else
  {
    v7 = [v5 effectiveContactlessPaymentApplicationState];
  }

  if (PKPaymentApplicationStateIsPersonalized())
  {
    v8 = [v5 devicePrimaryContactlessPaymentApplication];
    if (v8 || ([v5 deviceInAppPaymentApplications], v8 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v8, "count")))
    {
    }

    else
    {
      v19 = [v5 supportsBarcodePayment];

      if ((v19 & 1) == 0)
      {
        v20 = [v3 organizationName];

        if (v20)
        {
          v21 = [v3 organizationName];
          v22 = [v21 pk_uppercaseStringForPreferredLocale];
          v11 = PKLocalizedPaymentString(&cfstr_PaymentSummary_0.isa, &stru_1F3BD5BF0.isa, v22);
        }

        else
        {
          v11 = PKLocalizedPaymentString(&cfstr_PaymentSummary_1.isa);
        }

        v9 = objc_alloc_init(PKDashboardPassMessage);
        [(PKDashboardPassMessage *)v9 setIdentifier:@"applicationState"];
        [(PKDashboardPassMessage *)v9 setTitle:v11];
        v26 = [v3 localizedDescription];
        v29 = PKLocalizedPaymentString(&cfstr_PaymentAppNoCo.isa, &stru_1F3BD5BF0.isa, v26);
        [(PKDashboardPassMessage *)v9 setMessage:v29];

LABEL_36:
LABEL_37:

        goto LABEL_38;
      }
    }
  }

  v9 = 0;
  if (v7 > 6)
  {
    if (v7 == 9)
    {
      v24 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v24 setIdentifier:@"applicationState"];
      if (v6)
      {
        PKLocalizedAquamanString(&cfstr_PaymentAppErro_4.isa);
      }

      else
      {
        PKLocalizedPaymentString(&cfstr_PaymentAppErro.isa);
      }
      v27 = ;
      [(PKDashboardPassMessage *)v24 setTitle:v27];

      v28 = [v5 localizedSuspendedReason];
      if (v28)
      {
        [(PKDashboardPassMessage *)v24 setMessage:v28];
      }

      v9 = 0;
    }

    else if (v7 == 7)
    {
      v9 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v9 setIdentifier:@"applicationState"];
      v12 = PKLocalizedPaymentString(&cfstr_PaymentAppSusp.isa);
      [(PKDashboardPassMessage *)v9 setTitle:v12];

      v13 = PKLocalizedPaymentString(&cfstr_PaymentAppSusp_0.isa);
      [(PKDashboardPassMessage *)v9 setMessage:v13];

      v14 = PKLocalizedPaymentString(&cfstr_PaymentAppSusp_1.isa);
      [(PKDashboardPassMessage *)v9 setButtonTitle:v14];

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __54__PKPassFooterView__messageForPaymentApplicationState__block_invoke;
      v48[3] = &unk_1E8026A10;
      v49 = v3;
      v50 = self;
      [(PKDashboardPassMessage *)v9 setActionOnButtonPress:v48];
      [(PKDashboardPassMessage *)v9 setShowDisclosure:1];
      v15 = PKPassKitUIBundle();
      v16 = [v15 URLForResource:@"MessageAlert" withExtension:@"pdf"];
      v17 = PKUIScreenScale();
      v18 = PKUIImageFromPDF(v16, 45.0, 45.0, v17);
      [(PKDashboardPassMessage *)v9 setImage:v18];
    }
  }

  else
  {
    if (v7 == 2)
    {
      v9 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v9 setIdentifier:@"applicationState"];
      v23 = PKLocalizedPaymentString(&cfstr_ActivatingTitl.isa);
      [(PKDashboardPassMessage *)v9 setTitle:v23];

      if (v6)
      {
        PKLocalizedAquamanString(&cfstr_ActivatingAcco_0.isa);
      }

      else
      {
        PKLocalizedPaymentString(&cfstr_ActivatingMess_0.isa);
      }
      v11 = ;
      [(PKDashboardPassMessage *)v9 setMessage:v11];
      goto LABEL_37;
    }

    if (v7 == 6)
    {
      v9 = objc_alloc_init(PKDashboardPassMessage);
      [(PKDashboardPassMessage *)v9 setIdentifier:@"applicationState"];
      if (v6)
      {
        v10 = PKLocalizedAquamanString(&cfstr_PaymentAppErro_4.isa);
        [(PKDashboardPassMessage *)v9 setTitle:v10];

        v11 = [v3 organizationName];
        PKLocalizedAquamanString(&cfstr_PaymentAppSusp_3.isa, &stru_1F3BD5BF0.isa, v11);
      }

      else
      {
        v25 = PKLocalizedPaymentString(&cfstr_PaymentAppErro.isa);
        [(PKDashboardPassMessage *)v9 setTitle:v25];

        v11 = [v3 organizationName];
        PKLocalizedPaymentString(&cfstr_PaymentAppSusp_2.isa, &stru_1F3BD5BF0.isa, v11);
      }
      v26 = ;
      [(PKDashboardPassMessage *)v9 setMessage:v26];
      goto LABEL_36;
    }
  }

LABEL_38:
  v30 = [v3 secureElementPass];
  v31 = [v30 appletStateMessageOverrideOfType:1];

  if (v7 != 7 && v31)
  {
    v32 = [v31 title];
    [(PKDashboardPassMessage *)v9 setTitle:v32];

    v33 = [v31 body];
    [(PKDashboardPassMessage *)v9 setMessage:v33];

    v34 = [v31 action];
    if (!v34)
    {
LABEL_55:

      goto LABEL_56;
    }

    objc_initWeak(&location, self);
    v35 = [v34 type];
    if (v35 == 3)
    {
      v39 = [v34 title];
      v40 = v39;
      if (!v39)
      {
        v40 = PKLocalizedString(&cfstr_OpenButton.isa);
      }

      [(PKDashboardPassMessage *)v9 setButtonTitle:v40];
      if (!v39)
      {
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __54__PKPassFooterView__messageForPaymentApplicationState__block_invoke_2;
      v44[3] = &unk_1E801E120;
      v45 = v34;
      objc_copyWeak(&v46, &location);
      [(PKDashboardPassMessage *)v9 setActionOnButtonPress:v44];
      v38 = &v45;
      objc_destroyWeak(&v46);
    }

    else
    {
      if (v35 != 10)
      {
LABEL_54:
        objc_destroyWeak(&location);
        goto LABEL_55;
      }

      v36 = [v34 title];
      v37 = v36;
      if (!v36)
      {
        v37 = PKLocalizedString(&cfstr_OpenButton.isa);
      }

      [(PKDashboardPassMessage *)v9 setButtonTitle:v37];
      if (!v36)
      {
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __54__PKPassFooterView__messageForPaymentApplicationState__block_invoke_3;
      v42[3] = &unk_1E80188F0;
      v43 = v34;
      [(PKDashboardPassMessage *)v9 setActionOnButtonPress:v42];
      v38 = &v43;
    }

    goto LABEL_54;
  }

LABEL_56:

  return v9;
}

void __54__PKPassFooterView__messageForPaymentApplicationState__block_invoke(uint64_t a1)
{
  if (PKRunningInViewService() && PKDeviceUILocked())
  {
    if (([MEMORY[0x1E69B9358] isWalletRestricted] & 1) == 0)
    {
      v5 = [MEMORY[0x1E699FCA0] sharedService];
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F970]];
      v4 = [*(a1 + 32) passURL];
      [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E699F960]];

      [v5 openApplication:*MEMORY[0x1E69BC3D8] options:v3 withResult:0];
    }
  }

  else
  {
    v2 = *(a1 + 40);

    [v2 _lostModeButtonTapped];
  }
}

void __54__PKPassFooterView__messageForPaymentApplicationState__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained window];
  PKPaymentPassActionPerformOpenExternalURL(v1, v2);
}

- (PKPassFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end