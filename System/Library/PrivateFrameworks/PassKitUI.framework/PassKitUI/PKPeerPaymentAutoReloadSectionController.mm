@interface PKPeerPaymentAutoReloadSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (BOOL)_sectionAvailable;
- (PKPeerPaymentAutoReloadSectionController)initWithDelegate:(id)delegate pass:(id)pass context:(int64_t)context passLibraryDataProvider:(id)provider;
- (id)allSectionIdentifiers;
- (id)presentationSceneIdentifierForTopUpController:(id)controller;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (void)_updateRecurringPaymentsWithCompletion:(id)completion;
- (void)preflight:(id)preflight;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)thresholdTopUpController:(id)controller requestsDismissViewController:(id)viewController;
- (void)thresholdTopUpController:(id)controller requestsPopViewController:(id)viewController;
- (void)thresholdTopUpController:(id)controller requestsPresentViewController:(id)viewController;
- (void)thresholdTopUpController:(id)controller requestsPushViewController:(id)viewController;
- (void)thresholdTopUpControllerCompletedSetup:(id)setup;
@end

@implementation PKPeerPaymentAutoReloadSectionController

- (PKPeerPaymentAutoReloadSectionController)initWithDelegate:(id)delegate pass:(id)pass context:(int64_t)context passLibraryDataProvider:(id)provider
{
  delegateCopy = delegate;
  passCopy = pass;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentAutoReloadSectionController;
  v13 = [(PKPaymentPassDetailSectionController *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    account = [mEMORY[0x1E69B9000] account];
    account = v14->_account;
    v14->_account = account;

    [mEMORY[0x1E69B9000] registerObserver:v14];
    v18 = [[PKPeerPaymentThresholdTopUpController alloc] initWithPeerPaymentAccount:v14->_account pass:passCopy context:context passLibraryDataProvider:providerCopy delegate:v14];
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
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPeerPaymentAutoReloadSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  passCopy = pass;
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  account = [mEMORY[0x1E69B9000] account];

  if ([passCopy hasAssociatedPeerPaymentAccount] && !objc_msgSend(passCopy, "passActivationState"))
  {
    supportsThresholdTopUp = [account supportsThresholdTopUp];
  }

  else
  {
    supportsThresholdTopUp = 0;
  }

  return supportsThresholdTopUp;
}

- (void)preflight:(id)preflight
{
  v4 = MEMORY[0x1E69B9000];
  preflightCopy = preflight;
  sharedInstance = [v4 sharedInstance];
  account = [sharedInstance account];
  account = self->_account;
  self->_account = account;

  [(PKPeerPaymentAutoReloadSectionController *)self _updateRecurringPaymentsWithCompletion:preflightCopy];
}

- (void)_updateRecurringPaymentsWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKPeerPaymentAutoReloadSectionController__updateRecurringPaymentsWithCompletion___block_invoke;
  v7[3] = &unk_1E8012940;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [mEMORY[0x1E69B9000] recurringPaymentsWithCompletion:v7];

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
    familyCollection = [WeakRetained familyCollection];
    currentUser = [familyCollection currentUser];
    if ([(PKPeerPaymentAccount *)account isEligibleForThresholdTopUpForUser:currentUser])
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  v43[2] = *MEMORY[0x1E69E9840];
  v6 = [view dequeueReusableCellWithIdentifier:{@"AutoReload", path, identifier}];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"AutoReload"];
  }

  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  if (self->_autoReloadPayment)
  {
    v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadEntr.isa);
    [cellConfiguration setText:v8];

    currency = [(PKPeerPaymentRecurringPayment *)self->_autoReloadPayment currency];
    amount = [(PKPeerPaymentRecurringPayment *)self->_autoReloadPayment amount];
    threshold = [(PKPeerPaymentRecurringPayment *)self->_autoReloadPayment threshold];
    if (threshold)
    {
      v12 = currency == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = PKCurrencyAmountMake();
      minimalFormattedStringValue = [v13 minimalFormattedStringValue];
      v15 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadEntr_0.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
      [cellConfiguration setSecondaryText:v15];
    }

    textProperties = [cellConfiguration textProperties];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textProperties setColor:labelColor];

    if (amount && currency)
    {
      v41 = PKCurrencyAmountMake();
      v18 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
      v19 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
      v42 = [v18 configurationByApplyingConfiguration:v19];

      v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v42];
      v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v20];
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [v21 setTintColor:tertiaryLabelColor];

      [v21 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v24 = v23;
      v26 = v25;
      v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v28 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC40]);
      [v27 setFont:v28];

      minimalFormattedStringValue2 = [v41 minimalFormattedStringValue];
      [v27 setText:minimalFormattedStringValue2];

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
    [cellConfiguration setText:v37];

    textProperties2 = [cellConfiguration textProperties];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [textProperties2 setColor:systemBlueColor];

    [v6 setAccessoryView:0];
    [v6 setAccessoryType:0];
  }

  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B94A8]];
  [v6 setContentConfiguration:cellConfiguration];

  return v6;
}

- (id)titleForFooterInSectionIdentifier:(id)identifier
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  pathCopy = path;
  viewCopy = view;
  [(PKPeerPaymentAutoReloadSectionController *)self presentAutoReload];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)thresholdTopUpController:(id)controller requestsDismissViewController:(id)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pkui_frontMostViewController = [WeakRetained pkui_frontMostViewController];
  [pkui_frontMostViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)thresholdTopUpController:(id)controller requestsPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pkui_frontMostViewController = [WeakRetained pkui_frontMostViewController];
  [pkui_frontMostViewController presentViewController:viewControllerCopy animated:1 completion:0];
}

- (void)thresholdTopUpController:(id)controller requestsPushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  navigationController = [WeakRetained navigationController];

  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:viewControllerCopy];
  }

  else
  {
    [navigationController pushViewController:viewControllerCopy animated:1];
  }
}

- (void)thresholdTopUpControllerCompletedSetup:(id)setup
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  navigationController = [WeakRetained navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (id)presentationSceneIdentifierForTopUpController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  view = [WeakRetained view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)thresholdTopUpController:(id)controller requestsPopViewController:(id)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  navigationController = [WeakRetained navigationController];

  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popViewController];
  }

  else
  {
    v5 = [navigationController popViewControllerAnimated:1];
  }
}

@end