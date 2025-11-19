@interface PKPeerPaymentAutoReloadSectionController
+ (BOOL)validForPaymentPass:(id)a3;
- (BOOL)_sectionAvailable;
- (PKPeerPaymentAutoReloadSectionController)initWithDelegate:(id)a3 pass:(id)a4 context:(int64_t)a5 passLibraryDataProvider:(id)a6;
- (id)allSectionIdentifiers;
- (id)presentationSceneIdentifierForTopUpController:(id)a3;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)titleForFooterInSectionIdentifier:(id)a3;
- (void)_updateRecurringPaymentsWithCompletion:(id)a3;
- (void)preflight:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)thresholdTopUpController:(id)a3 requestsDismissViewController:(id)a4;
- (void)thresholdTopUpController:(id)a3 requestsPopViewController:(id)a4;
- (void)thresholdTopUpController:(id)a3 requestsPresentViewController:(id)a4;
- (void)thresholdTopUpController:(id)a3 requestsPushViewController:(id)a4;
- (void)thresholdTopUpControllerCompletedSetup:(id)a3;
@end

@implementation PKPeerPaymentAutoReloadSectionController

- (PKPeerPaymentAutoReloadSectionController)initWithDelegate:(id)a3 pass:(id)a4 context:(int64_t)a5 passLibraryDataProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentAutoReloadSectionController;
  v13 = [(PKPaymentPassDetailSectionController *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v10);
    v15 = [MEMORY[0x1E69B9000] sharedInstance];
    v16 = [v15 account];
    account = v14->_account;
    v14->_account = v16;

    [v15 registerObserver:v14];
    v18 = [[PKPeerPaymentThresholdTopUpController alloc] initWithPeerPaymentAccount:v14->_account pass:v11 context:a5 passLibraryDataProvider:v12 delegate:v14];
    controller = v14->_controller;
    v14->_controller = v18;
  }

  return v14;
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"PeerPaymentAutoReloadSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment]|| ![(PKPeerPaymentAutoReloadSectionController *)self _sectionAvailable])
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPeerPaymentAutoReloadSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

+ (BOOL)validForPaymentPass:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69B9000] sharedInstance];
  v5 = [v4 account];

  if ([v3 hasAssociatedPeerPaymentAccount] && !objc_msgSend(v3, "passActivationState"))
  {
    v6 = [v5 supportsThresholdTopUp];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)preflight:(id)a3
{
  v4 = MEMORY[0x1E69B9000];
  v8 = a3;
  v5 = [v4 sharedInstance];
  v6 = [v5 account];
  account = self->_account;
  self->_account = v6;

  [(PKPeerPaymentAutoReloadSectionController *)self _updateRecurringPaymentsWithCompletion:v8];
}

- (void)_updateRecurringPaymentsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B9000] sharedInstance];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPeerPaymentAutoReloadSectionController__updateRecurringPaymentsWithCompletion___block_invoke;
  v7[3] = &unk_1E8012940;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 recurringPaymentsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __83__PKPeerPaymentAutoReloadSectionController__updateRecurringPaymentsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pk_firstObjectPassingTest:&__block_literal_global_19];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPeerPaymentAutoReloadSectionController__updateRecurringPaymentsWithCompletion___block_invoke_3;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __83__PKPeerPaymentAutoReloadSectionController__updateRecurringPaymentsWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    objc_storeStrong(WeakRetained + 8, *(a1 + 32));
    v4 = objc_loadWeakRetained(v7 + 10);
    v5 = [v7 sectionIdentifiers];
    [v4 reloadSections:v5];

    v3 = v7;
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
      v3 = v7;
    }
  }
}

- (BOOL)_sectionAvailable
{
  if ([(PKPeerPaymentAccount *)self->_account supportsThresholdTopUp])
  {
    account = self->_account;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained familyCollection];
    v6 = [v5 currentUser];
    if ([(PKPeerPaymentAccount *)account isEligibleForThresholdTopUpForUser:v6])
    {
      v7 = PKIsVision() ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v43[2] = *MEMORY[0x1E69E9840];
  v6 = [a3 dequeueReusableCellWithIdentifier:{@"AutoReload", a4, a5}];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"AutoReload"];
  }

  v7 = [MEMORY[0x1E69DCC28] cellConfiguration];
  if (self->_autoReloadPayment)
  {
    v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadEntr.isa);
    [v7 setText:v8];

    v9 = [(PKPeerPaymentRecurringPayment *)self->_autoReloadPayment currency];
    v10 = [(PKPeerPaymentRecurringPayment *)self->_autoReloadPayment amount];
    v11 = [(PKPeerPaymentRecurringPayment *)self->_autoReloadPayment threshold];
    if (v11)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = PKCurrencyAmountMake();
      v14 = [v13 minimalFormattedStringValue];
      v15 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadEntr_0.isa, &stru_1F3BD5BF0.isa, v14);
      [v7 setSecondaryText:v15];
    }

    v16 = [v7 textProperties];
    v17 = [MEMORY[0x1E69DC888] labelColor];
    [v16 setColor:v17];

    if (v10 && v9)
    {
      v41 = PKCurrencyAmountMake();
      v18 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
      v19 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
      v42 = [v18 configurationByApplyingConfiguration:v19];

      v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v42];
      v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v20];
      v22 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [v21 setTintColor:v22];

      [v21 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v24 = v23;
      v26 = v25;
      v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v28 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40]);
      [v27 setFont:v28];

      v29 = [v41 minimalFormattedStringValue];
      [v27 setText:v29];

      [v27 setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
      [v27 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v31 = v30;
      v33 = v32;
      v34 = objc_alloc(MEMORY[0x1E69DCF90]);
      v43[0] = v27;
      v43[1] = v21;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
      v36 = [v34 initWithArrangedSubviews:v35];

      [v36 setAxis:0];
      [v36 setAlignment:4];
      [v36 setSpacing:6.0];
      [v36 setFrame:{0.0, 0.0, v24 + v31 + 6.0, fmax(v33, v26)}];
      [v6 setAccessoryView:v36];
    }

    else
    {
      [v6 setAccessoryType:1];
    }
  }

  else
  {
    v37 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadSetu.isa);
    [v7 setText:v37];

    v38 = [v7 textProperties];
    v39 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v38 setColor:v39];

    [v6 setAccessoryView:0];
    [v6 setAccessoryType:0];
  }

  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B94A8]];
  [v6 setContentConfiguration:v7];

  return v6;
}

- (id)titleForFooterInSectionIdentifier:(id)a3
{
  if ([(PKPeerPaymentAutoReloadSectionController *)self _sectionAvailable])
  {
    v3 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadSetu_0.isa);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = a4;
  v8 = a3;
  [(PKPeerPaymentAutoReloadSectionController *)self presentAutoReload];
  [v8 deselectRowAtIndexPath:v7 animated:1];
}

- (void)thresholdTopUpController:(id)a3 requestsDismissViewController:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained pkui_frontMostViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)thresholdTopUpController:(id)a3 requestsPresentViewController:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained pkui_frontMostViewController];
  [v6 presentViewController:v5 animated:1 completion:0];
}

- (void)thresholdTopUpController:(id)a3 requestsPushViewController:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained navigationController];

  if ([v7 pk_settings_useStateDrivenNavigation])
  {
    [v7 pk_settings_pushViewController:v5];
  }

  else
  {
    [v7 pushViewController:v5 animated:1];
  }
}

- (void)thresholdTopUpControllerCompletedSetup:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (id)presentationSceneIdentifierForTopUpController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 _sceneIdentifier];

  return v7;
}

- (void)thresholdTopUpController:(id)a3 requestsPopViewController:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained navigationController];

  if ([v6 pk_settings_useStateDrivenNavigation])
  {
    [v6 pk_settings_popViewController];
  }

  else
  {
    v5 = [v6 popViewControllerAnimated:1];
  }
}

@end