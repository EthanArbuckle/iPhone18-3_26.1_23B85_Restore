@interface PKPassShareActivationViewController
- (PKPassShareActivationViewController)initWithPendingActivation:(id)a3;
- (void)_showError:(id)a3;
- (void)continueButtonPressed;
- (void)loadCardArt;
- (void)loadView;
@end

@implementation PKPassShareActivationViewController

- (PKPassShareActivationViewController)initWithPendingActivation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPassShareActivationViewController;
  v6 = [(PKPassShareRedemptionViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pendingActivation, a3);
  }

  return v7;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = PKPassShareActivationViewController;
  [(PKPassShareRedemptionViewController *)&v8 loadView];
  [(PKPassShareActivationViewController *)self loadCardArt];
  v3 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_5.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v3];

  v4 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_6.isa);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v4];

  v5 = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [v5 showLoadingContent];

  v6 = [(PKPassSharePendingActivation *)self->_pendingActivation originalInvitation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v6 activationOptions], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [(PKPassShareActivationViewController *)self _showError:0];
    v7 = 0;
  }

  [(PKPassShareRedemptionViewController *)self setActivationOptions:v7];
}

- (void)loadCardArt
{
  v3 = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  v4 = [(PKPassSharePendingActivation *)self->_pendingActivation originalInvitation];
  v5 = [v4 displayInformation];
  v6 = [v5 imageURL];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__PKPassShareActivationViewController_loadCardArt__block_invoke;
    v7[3] = &unk_1E8013A10;
    v8 = v3;
    PKCommonCachedImageFromURL(v6, v7);
  }

  else
  {
    [v3 hideLoadingContent];
  }
}

uint64_t __50__PKPassShareActivationViewController_loadCardArt__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCardImage:?];
  v2 = *(a1 + 32);

  return [v2 hideLoadingContent];
}

- (void)_showError:(id)a3
{
  v4 = a3;
  [(PKPassShareRedemptionViewController *)self showFailureUI];
  v19 = 0;
  v5 = PKSharingDisplayableError(v4, &v19);

  if (!v5)
  {
    v19 = 1;
    v6 = [MEMORY[0x1E696ABC0] pkSharingError:6];
    v5 = PKSharingDisplayableError(v6);
  }

  v7 = PKTitleForDisplayableError();
  v8 = MEMORY[0x1BFB42D10](v5);
  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  v10 = MEMORY[0x1E69DC648];
  if (v19)
  {
    v11 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__PKPassShareActivationViewController__showError___block_invoke;
    v18[3] = &unk_1E80112E8;
    v18[4] = self;
    v12 = v18;
    v13 = v10;
    v14 = v11;
    v15 = 1;
  }

  else
  {
    v11 = PKLocalizedPaymentString(&cfstr_TryAgainButton.isa);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__PKPassShareActivationViewController__showError___block_invoke_2;
    v17[3] = &unk_1E80112E8;
    v17[4] = self;
    v12 = v17;
    v13 = v10;
    v14 = v11;
    v15 = 0;
  }

  v16 = [v13 actionWithTitle:v14 style:v15 handler:v12];
  [v9 addAction:v16];

  [(PKPassShareActivationViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)continueButtonPressed
{
  if ([(NSString *)self->_activationCode length])
  {
    [(PKPassShareRedemptionViewController *)self showLoadingUI];
    v3 = [MEMORY[0x1E69B8DB8] paymentService];
    objc_initWeak(&location, self);
    v4 = [(PKPassSharePendingActivation *)self->_pendingActivation originalInvitation];
    activationCode = self->_activationCode;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PKPassShareActivationViewController_continueButtonPressed__block_invoke;
    v6[3] = &unk_1E8013A60;
    v6[4] = self;
    objc_copyWeak(&v7, &location);
    [v3 acceptCarKeyShareForMessage:v4 activationCode:activationCode completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __60__PKPassShareActivationViewController_continueButtonPressed__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PKPassShareActivationViewController_continueButtonPressed__block_invoke_2;
  v9[3] = &unk_1E8013A38;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v12, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], v9);
  objc_destroyWeak(&v12);
}

void __60__PKPassShareActivationViewController_continueButtonPressed__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    if (*(a1 + 40))
    {
      v4 = *(a1 + 48) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3[174] shareIdentifier];
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Successfully redeemed share %@", buf, 0xCu);
      }

      v7 = PKLocalizedShareableCredentialString(&cfstr_DoneAddingShar.isa);
      [v3 setTitleText:v7];

      [v3 showSuccessUI];
      v8 = dispatch_time(0, 2000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__PKPassShareActivationViewController_continueButtonPressed__block_invoke_37;
      block[3] = &unk_1E8010998;
      objc_copyWeak(&v10, (a1 + 56));
      dispatch_after(v8, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v10);
    }

    else
    {
      [v2 _showError:?];
    }
  }
}

void __60__PKPassShareActivationViewController_continueButtonPressed__block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

@end