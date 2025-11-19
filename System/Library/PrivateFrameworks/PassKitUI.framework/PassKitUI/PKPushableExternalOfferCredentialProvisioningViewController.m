@interface PKPushableExternalOfferCredentialProvisioningViewController
- (PKPushableCredentialProvisioningViewControllerCoordinator)coordinator;
- (PKPushableExternalOfferCredentialProvisioningViewController)initWithContext:(int64_t)a3 credential:(id)a4 reporter:(id)a5;
- (id)_provisioningErrorWithNumberOfPassesFailed:(int64_t)a3 error:(id)a4;
- (void)_loadPassThumbnail;
- (void)_setContinueButtonText;
- (void)_setTitleAndBodyText;
- (void)_showExitingLostModeUI;
- (void)_startProvisioning;
- (void)_terminateSetupFlowWithPasses:(id)a3 error:(id)a4;
- (void)cancelButtonPressed;
- (void)continueButtonPressed;
- (void)didTransitionTo:(int64_t)a3 loading:(BOOL)a4;
- (void)setPassThumbnailImage:(id)a3;
- (void)showLoadingUI;
- (void)showStartingUI;
- (void)showSuccessUI;
- (void)showWithProvisioningError:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPushableExternalOfferCredentialProvisioningViewController

- (PKPushableExternalOfferCredentialProvisioningViewController)initWithContext:(int64_t)a3 credential:(id)a4 reporter:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  v11 = [(PKPassShareRedemptionViewController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_context = a3;
    objc_storeStrong(&v11->_credential, a4);
    objc_storeStrong(&v12->_reporter, a5);
    v12->_isRunningInForeground = 1;
    v12->_autoProvision = 1;
    v13 = [(PKPaymentExternalOfferCredential *)v12->_credential cardType];
    if (v13 <= 4)
    {
      a5 = **(&unk_1E8015430 + v13);
    }

    [(PKProvisioningAnalyticsSessionUIReporter *)v12->_reporter setProductType:a5 subtype:0];
  }

  return v12;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v3 viewDidLoad];
  if (self->_autoProvision)
  {
    [(PKPushableExternalOfferCredentialProvisioningViewController *)self showLoadingUI];
  }

  else
  {
    [(PKPushableExternalOfferCredentialProvisioningViewController *)self showStartingUI];
  }

  [(PKPushableExternalOfferCredentialProvisioningViewController *)self _loadPassThumbnail];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  if (self->_autoProvision)
  {
    self->_autoProvision = 0;
    [(PKPushableExternalOfferCredentialProvisioningViewController *)self continueButtonPressed];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPushableExternalOfferCredentialProvisioningViewController *)&v4 viewDidDisappear:a3];
  if ([(PKPushableExternalOfferCredentialProvisioningViewController *)self isMovingFromParentViewController])
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter resetProductTypes];
  }
}

- (void)cancelButtonPressed
{
  v4.receiver = self;
  v4.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v4 cancelButtonPressed];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
  [(PKPushableExternalOfferCredentialProvisioningViewController *)self _terminateSetupFlowWithPasses:0 error:v3];
}

- (void)continueButtonPressed
{
  v3.receiver = self;
  v3.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v3 continueButtonPressed];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  [(PKPushableExternalOfferCredentialProvisioningViewController *)self _startProvisioning];
}

- (void)_startProvisioning
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Pushable Identity Credential VC - starting provisioning", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v7[0] = self->_credential;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [WeakRetained startProvisioningWithCredentials:v5];
}

- (void)_loadPassThumbnail
{
  v3 = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [v3 showLoadingContent];
  v4 = [(PKPaymentExternalOfferCredential *)self->_credential passThumbnailImageURL];
  v5 = PKUIImageNamed(@"PlaceholderCardArt_Large");
  if (v4)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__PKPushableExternalOfferCredentialProvisioningViewController__loadPassThumbnail__block_invoke;
    v6[3] = &unk_1E8015410;
    objc_copyWeak(&v8, &location);
    v7 = v5;
    PKCommonCachedImageFromURL(v4, v6);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKPushableExternalOfferCredentialProvisioningViewController *)self setPassThumbnailImage:v5];
  }
}

void __81__PKPushableExternalOfferCredentialProvisioningViewController__loadPassThumbnail__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = v4;
  if (!v4)
  {
    v6 = *(a1 + 32);
  }

  v7 = WeakRetained;
  [WeakRetained setPassThumbnailImage:v6];
}

- (void)setPassThumbnailImage:(id)a3
{
  objc_storeStrong(&self->_passThumbnailImage, a3);
  v5 = a3;
  v6 = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [v6 setCardImage:self->_passThumbnailImage];

  [v6 hideLoadingContent];
}

- (void)showStartingUI
{
  v3.receiver = self;
  v3.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v3 showStartingUI];
  [(PKPushableExternalOfferCredentialProvisioningViewController *)self _setTitleAndBodyText];
  [(PKPushableExternalOfferCredentialProvisioningViewController *)self _setContinueButtonText];
  [(PKPassShareRedemptionViewController *)self showDismissButton:1];
}

- (void)_setTitleAndBodyText
{
  v3 = PKLocalizedPaymentOffersString(&cfstr_ProvisionPassT.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v3];
}

- (void)_setContinueButtonText
{
  v3 = PKLocalizedIdentityString(&cfstr_AddPushableIde.isa);
  [(PKPassShareRedemptionViewController *)self setContinueButtonText:v3];
}

- (void)_showExitingLostModeUI
{
  [(PKPushableExternalOfferCredentialProvisioningViewController *)self showLoadingUI];
  v3 = PKLocalizedShareableCredentialString(&cfstr_ExitingLostMod.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v3];
}

- (void)showLoadingUI
{
  v4.receiver = self;
  v4.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v4 showLoadingUI];
  v3 = PKLocalizedPaymentOffersString(&cfstr_ProvisionAddin.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v3];

  [(PKPassShareRedemptionViewController *)self showDismissButton:0];
}

- (void)showSuccessUI
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB6E0];
  v8 = *MEMORY[0x1E69BA680];
  v9[0] = *MEMORY[0x1E69BA7B0];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v3 subject:v4 sendEvent:v5];

  [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];
  v6 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v6 setShowCheckmark:1];

  v7 = PKLocalizedPaymentOffersString(&cfstr_ProvisionCardA.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v7];
}

- (void)showWithProvisioningError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (([v4 hasLocalizedTitleAndMessage] & 1) == 0)
  {
    v6 = [v4 underlyingError];
    v5 = [(PKPushableExternalOfferCredentialProvisioningViewController *)self _provisioningErrorWithNumberOfPassesFailed:1 error:v6];
  }

  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PKPushableExternalOfferCredentialProvisioningViewController_showWithProvisioningError___block_invoke_2;
  v9[3] = &unk_1E8010970;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__PKPushableExternalOfferCredentialProvisioningViewController_showWithProvisioningError___block_invoke_3;
  v8[3] = &unk_1E8010970;
  v7 = [MEMORY[0x1E69DC650] alertForErrorWithError:v4 acknowledgeButtonText:0 exitButtonText:0 onAcknowledge:&__block_literal_global_56 onExit:v9 onTryAgain:v8];
  [(PKPushableExternalOfferCredentialProvisioningViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __89__PKPushableExternalOfferCredentialProvisioningViewController_showWithProvisioningError___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB6E0];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA7A8];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 subject:v3 sendEvent:v4];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1432));
  [WeakRetained cancel];
}

- (void)didTransitionTo:(int64_t)a3 loading:(BOOL)a4
{
  if (a4)
  {
    if (a3 == 1)
    {
      [(PKPushableExternalOfferCredentialProvisioningViewController *)self _showExitingLostModeUI];
      return;
    }

LABEL_7:
    [(PKPushableExternalOfferCredentialProvisioningViewController *)self showLoadingUI];
    return;
  }

  if (a3 == 8)
  {
    [(PKPushableExternalOfferCredentialProvisioningViewController *)self showSuccessUI];
    return;
  }

  if (self->_autoProvision)
  {
    goto LABEL_7;
  }

  [(PKPushableExternalOfferCredentialProvisioningViewController *)self showStartingUI];
}

- (void)_terminateSetupFlowWithPasses:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v17 = [v6 count];
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Pushable External Offer Credential VC - Terminating setup flow with passes: %lu error: %@", buf, 0x16u);
  }

  v9 = [(PKPassShareRedemptionViewController *)self analyticsReporter];
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 == 0;
  }

  v14 = *MEMORY[0x1E69BB5D0];
  if (v10)
  {
    v11 = MEMORY[0x1E69BA7A8];
  }

  else
  {
    v11 = MEMORY[0x1E69BA7B0];
  }

  v15 = *v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v9 sendEventForPage:2 error:v7 specifics:{v12, v14}];

  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  [WeakRetained pushableViewController:self didFailWithError:v7];
}

- (id)_provisioningErrorWithNumberOfPassesFailed:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v16 = 1;
  v7 = [(PKPushableExternalOfferCredentialProvisioningViewController *)self _accessPassType];
  v8 = PKAddSEPassDisplayableError(v6, a3, v7, &v16);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = PKAddSEPassGenericDisplayableError(a3, v7);
  }

  v11 = v10;

  if (v16)
  {
    v12 = 5;
  }

  else
  {
    v12 = 4;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v6;
  }

  v14 = [MEMORY[0x1E69B90E8] errorWithUnderlyingError:v13 defaultSeverity:v12];

  return v14;
}

- (PKPushableCredentialProvisioningViewControllerCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end