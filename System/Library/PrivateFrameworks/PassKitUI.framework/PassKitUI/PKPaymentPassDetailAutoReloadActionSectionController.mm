@interface PKPaymentPassDetailAutoReloadActionSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (PKPaymentPassDetailAutoReloadActionSectionController)initWithPass:(id)pass paymentDataProvider:(id)provider viewStyle:(int64_t)style delegate:(id)delegate;
- (PKPaymentPassDetailAutoReloadActionSectionControllerDelegate)setupDelegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (void)autoReloadSetupController:(id)controller requestsDismissViewController:(id)viewController;
- (void)autoReloadSetupController:(id)controller requestsPopViewController:(id)viewController;
- (void)autoReloadSetupController:(id)controller requestsPresentViewController:(id)viewController;
- (void)autoReloadSetupController:(id)controller requestsPushViewController:(id)viewController;
- (void)autoReloadSetupControllerDidCancel:(id)cancel;
- (void)autoReloadSetupControllerDidCompleteWithAmount:(id)amount threshold:(id)threshold;
- (void)launchURL:(id)l;
- (void)presentAutoReloadSetupViewController;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)updateAutoReloadSection:(id)section;
@end

@implementation PKPaymentPassDetailAutoReloadActionSectionController

- (PKPaymentPassDetailAutoReloadActionSectionController)initWithPass:(id)pass paymentDataProvider:(id)provider viewStyle:(int64_t)style delegate:(id)delegate
{
  passCopy = pass;
  providerCopy = provider;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PKPaymentPassDetailAutoReloadActionSectionController;
  v14 = [(PKPaymentPassDetailSectionController *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, pass);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    autoTopUpMerchantTokenIdentifier = [passCopy autoTopUpMerchantTokenIdentifier];
    if (autoTopUpMerchantTokenIdentifier)
    {
      isAutoTopEnabled = 0;
    }

    else
    {
      isAutoTopEnabled = [passCopy isAutoTopEnabled];
    }

    v15->_isMerchantAutoTopEnabled = isAutoTopEnabled;

    autoTopUpMerchantTokenIdentifier2 = [passCopy autoTopUpMerchantTokenIdentifier];
    v19 = autoTopUpMerchantTokenIdentifier2;
    if (autoTopUpMerchantTokenIdentifier2)
    {
      LOBYTE(autoTopUpMerchantTokenIdentifier2) = [passCopy isAutoTopEnabled];
    }

    v15->_isWalletAutoTopEnabled = autoTopUpMerchantTokenIdentifier2;

    localizedDescription = [passCopy localizedDescription];
    name = v15->_name;
    v15->_name = localizedDescription;

    v15->_viewStyle = style;
    v22 = [[PKPaymentAutoReloadSetupController alloc] initWithPass:passCopy paymentDataProvider:providerCopy viewStyle:v15->_viewStyle delegate:v15];
    autoReloadSetupController = v15->_autoReloadSetupController;
    v15->_autoReloadSetupController = v22;
  }

  return v15;
}

- (void)updateAutoReloadSection:(id)section
{
  sectionCopy = section;
  objc_storeStrong(&self->_pass, section);
  autoTopUpMerchantTokenIdentifier = [sectionCopy autoTopUpMerchantTokenIdentifier];
  if (autoTopUpMerchantTokenIdentifier)
  {
    isAutoTopEnabled = 0;
  }

  else
  {
    isAutoTopEnabled = [sectionCopy isAutoTopEnabled];
  }

  self->_isMerchantAutoTopEnabled = isAutoTopEnabled;

  autoTopUpMerchantTokenIdentifier2 = [sectionCopy autoTopUpMerchantTokenIdentifier];
  v8 = autoTopUpMerchantTokenIdentifier2;
  if (autoTopUpMerchantTokenIdentifier2)
  {
    LOBYTE(autoTopUpMerchantTokenIdentifier2) = [sectionCopy isAutoTopEnabled];
  }

  self->_isWalletAutoTopEnabled = autoTopUpMerchantTokenIdentifier2;

  localizedDescription = [sectionCopy localizedDescription];
  name = self->_name;
  self->_name = localizedDescription;

  [(PKPaymentAutoReloadSetupController *)self->_autoReloadSetupController updateAutoReloadSection:self->_pass];
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"AutoReloadActionSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment])
  {
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPaymentPassDetailAutoReloadActionSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  passCopy = pass;
  if ([passCopy activationState])
  {
    isAutoTopEnabled = 0;
  }

  else
  {
    v5 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:passCopy];
    if (v5)
    {
      isAutoTopEnabled = 1;
    }

    else
    {
      isAutoTopEnabled = [passCopy isAutoTopEnabled];
    }
  }

  return isAutoTopEnabled;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  v7 = [viewCopy dequeueReusableCellWithIdentifier:@"AutoReloadCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"AutoReloadCellIdentifier"];
  }

  isMerchantAutoTopEnabled = self->_isMerchantAutoTopEnabled;
  v9 = PKLocalizedPaymentString(&cfstr_PassDetailsAut.isa);
  if (isMerchantAutoTopEnabled)
  {
    v10 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v9 detailText:self->_name cellStyle:1 forTableView:viewCopy];
  }

  else
  {
    if (self->_isWalletAutoTopEnabled)
    {
      v11 = @"STATE_ON";
    }

    else
    {
      v11 = @"STATE_OFF";
    }

    v12 = PKLocalizedPaymentString(&v11->isa);
    v10 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v9 detailText:v12 cellStyle:1 forTableView:viewCopy];

    v7 = v12;
  }

  [v10 setAccessoryType:1];

  return v10;
}

- (id)titleForFooterInSectionIdentifier:(id)identifier
{
  if (self->_isMerchantAutoTopEnabled || self->_isWalletAutoTopEnabled)
  {
    v4 = 0;
  }

  else
  {
    v4 = PKLocalizedPaymentString(&cfstr_PassDetailsSet.isa);
  }

  return v4;
}

- (void)launchURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_setupDelegate);
    [v6 launchURL:lCopy];
  }
}

- (void)presentAutoReloadSetupViewController
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_0.isa);
  v5 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_1.isa, &stru_1F3BD5BF0.isa, self->_name);
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedPaymentString(&cfstr_PassDetailsSet_0.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__PKPaymentPassDetailAutoReloadActionSectionController_presentAutoReloadSetupViewController__block_invoke;
  v14[3] = &unk_1E80112E8;
  v14[4] = self;
  v9 = [v7 actionWithTitle:v8 style:0 handler:v14];
  [v6 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedPaymentString(&cfstr_PassDetailsSet_1.isa, &stru_1F3BD5BF0.isa, self->_name);
  v12 = [v10 actionWithTitle:v11 style:1 handler:0];
  [v6 addAction:v12];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained presentViewController:v6 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  if (PKEqualObjects())
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    if (self->_isMerchantAutoTopEnabled)
    {
      v8 = [[PKPaymentPassDetailAutoReloadMerchantViewController alloc] initWithPass:self->_pass viewStyle:self->_viewStyle delegate:self];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      navigationController = [WeakRetained navigationController];

      if ([navigationController pk_settings_useStateDrivenNavigation])
      {
        [navigationController pk_settings_pushViewController:v8];
      }

      else
      {
        [navigationController pushViewController:v8 animated:1];
      }
    }

    else
    {
      [(PKPaymentAutoReloadSetupController *)self->_autoReloadSetupController presentAutoTopUpFlow];
    }
  }
}

- (void)autoReloadSetupControllerDidCompleteWithAmount:(id)amount threshold:(id)threshold
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  [WeakRetained autoReloadSetupControllerDidComplete];
}

- (void)autoReloadSetupControllerDidCancel:(id)cancel
{
  self->_isWalletAutoTopEnabled = 0;
  self->_isMerchantAutoTopEnabled = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSectionIdentifier:@"AutoReloadActionSection"];
}

- (void)autoReloadSetupController:(id)controller requestsPushViewController:(id)viewController
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

- (void)autoReloadSetupController:(id)controller requestsDismissViewController:(id)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)autoReloadSetupController:(id)controller requestsPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained presentViewController:viewControllerCopy animated:1 completion:0];
}

- (void)autoReloadSetupController:(id)controller requestsPopViewController:(id)viewController
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

- (PKPaymentPassDetailAutoReloadActionSectionControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end