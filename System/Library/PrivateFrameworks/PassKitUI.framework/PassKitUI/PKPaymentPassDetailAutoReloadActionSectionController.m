@interface PKPaymentPassDetailAutoReloadActionSectionController
+ (BOOL)validForPaymentPass:(id)a3;
- (PKPaymentPassDetailAutoReloadActionSectionController)initWithPass:(id)a3 paymentDataProvider:(id)a4 viewStyle:(int64_t)a5 delegate:(id)a6;
- (PKPaymentPassDetailAutoReloadActionSectionControllerDelegate)setupDelegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (id)titleForFooterInSectionIdentifier:(id)a3;
- (void)autoReloadSetupController:(id)a3 requestsDismissViewController:(id)a4;
- (void)autoReloadSetupController:(id)a3 requestsPopViewController:(id)a4;
- (void)autoReloadSetupController:(id)a3 requestsPresentViewController:(id)a4;
- (void)autoReloadSetupController:(id)a3 requestsPushViewController:(id)a4;
- (void)autoReloadSetupControllerDidCancel:(id)a3;
- (void)autoReloadSetupControllerDidCompleteWithAmount:(id)a3 threshold:(id)a4;
- (void)launchURL:(id)a3;
- (void)presentAutoReloadSetupViewController;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)updateAutoReloadSection:(id)a3;
@end

@implementation PKPaymentPassDetailAutoReloadActionSectionController

- (PKPaymentPassDetailAutoReloadActionSectionController)initWithPass:(id)a3 paymentDataProvider:(id)a4 viewStyle:(int64_t)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = PKPaymentPassDetailAutoReloadActionSectionController;
  v14 = [(PKPaymentPassDetailSectionController *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_pass, a3);
    objc_storeWeak(&v15->_delegate, v13);
    v16 = [v11 autoTopUpMerchantTokenIdentifier];
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = [v11 isAutoTopEnabled];
    }

    v15->_isMerchantAutoTopEnabled = v17;

    v18 = [v11 autoTopUpMerchantTokenIdentifier];
    v19 = v18;
    if (v18)
    {
      LOBYTE(v18) = [v11 isAutoTopEnabled];
    }

    v15->_isWalletAutoTopEnabled = v18;

    v20 = [v11 localizedDescription];
    name = v15->_name;
    v15->_name = v20;

    v15->_viewStyle = a5;
    v22 = [[PKPaymentAutoReloadSetupController alloc] initWithPass:v11 paymentDataProvider:v12 viewStyle:v15->_viewStyle delegate:v15];
    autoReloadSetupController = v15->_autoReloadSetupController;
    v15->_autoReloadSetupController = v22;
  }

  return v15;
}

- (void)updateAutoReloadSection:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_pass, a3);
  v5 = [v11 autoTopUpMerchantTokenIdentifier];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v11 isAutoTopEnabled];
  }

  self->_isMerchantAutoTopEnabled = v6;

  v7 = [v11 autoTopUpMerchantTokenIdentifier];
  v8 = v7;
  if (v7)
  {
    LOBYTE(v7) = [v11 isAutoTopEnabled];
  }

  self->_isWalletAutoTopEnabled = v7;

  v9 = [v11 localizedDescription];
  name = self->_name;
  self->_name = v9;

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
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPaymentPassDetailAutoReloadActionSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

+ (BOOL)validForPaymentPass:(id)a3
{
  v3 = a3;
  if ([v3 activationState])
  {
    v4 = 0;
  }

  else
  {
    v5 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:v3];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isAutoTopEnabled];
    }
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v6 = a3;
  v7 = [v6 dequeueReusableCellWithIdentifier:@"AutoReloadCellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"AutoReloadCellIdentifier"];
  }

  isMerchantAutoTopEnabled = self->_isMerchantAutoTopEnabled;
  v9 = PKLocalizedPaymentString(&cfstr_PassDetailsAut.isa);
  if (isMerchantAutoTopEnabled)
  {
    v10 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v9 detailText:self->_name cellStyle:1 forTableView:v6];
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
    v10 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v9 detailText:v12 cellStyle:1 forTableView:v6];

    v7 = v12;
  }

  [v10 setAccessoryType:1];

  return v10;
}

- (id)titleForFooterInSectionIdentifier:(id)a3
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

- (void)launchURL:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_setupDelegate);
    [v6 launchURL:v7];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v11 = a3;
  v7 = a4;
  if (PKEqualObjects())
  {
    [v11 deselectRowAtIndexPath:v7 animated:1];
    if (self->_isMerchantAutoTopEnabled)
    {
      v8 = [[PKPaymentPassDetailAutoReloadMerchantViewController alloc] initWithPass:self->_pass viewStyle:self->_viewStyle delegate:self];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained navigationController];

      if ([v10 pk_settings_useStateDrivenNavigation])
      {
        [v10 pk_settings_pushViewController:v8];
      }

      else
      {
        [v10 pushViewController:v8 animated:1];
      }
    }

    else
    {
      [(PKPaymentAutoReloadSetupController *)self->_autoReloadSetupController presentAutoTopUpFlow];
    }
  }
}

- (void)autoReloadSetupControllerDidCompleteWithAmount:(id)a3 threshold:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
  [WeakRetained autoReloadSetupControllerDidComplete];
}

- (void)autoReloadSetupControllerDidCancel:(id)a3
{
  self->_isWalletAutoTopEnabled = 0;
  self->_isMerchantAutoTopEnabled = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSectionIdentifier:@"AutoReloadActionSection"];
}

- (void)autoReloadSetupController:(id)a3 requestsPushViewController:(id)a4
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

- (void)autoReloadSetupController:(id)a3 requestsDismissViewController:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)autoReloadSetupController:(id)a3 requestsPresentViewController:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained presentViewController:v5 animated:1 completion:0];
}

- (void)autoReloadSetupController:(id)a3 requestsPopViewController:(id)a4
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

- (PKPaymentPassDetailAutoReloadActionSectionControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end