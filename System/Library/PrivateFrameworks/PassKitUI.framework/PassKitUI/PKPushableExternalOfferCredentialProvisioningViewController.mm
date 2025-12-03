@interface PKPushableExternalOfferCredentialProvisioningViewController
- (PKPushableCredentialProvisioningViewControllerCoordinator)coordinator;
- (PKPushableExternalOfferCredentialProvisioningViewController)initWithContext:(int64_t)context credential:(id)credential reporter:(id)reporter;
- (id)_provisioningErrorWithNumberOfPassesFailed:(int64_t)failed error:(id)error;
- (void)_loadPassThumbnail;
- (void)_setContinueButtonText;
- (void)_setTitleAndBodyText;
- (void)_showExitingLostModeUI;
- (void)_startProvisioning;
- (void)_terminateSetupFlowWithPasses:(id)passes error:(id)error;
- (void)cancelButtonPressed;
- (void)continueButtonPressed;
- (void)didTransitionTo:(int64_t)to loading:(BOOL)loading;
- (void)setPassThumbnailImage:(id)image;
- (void)showLoadingUI;
- (void)showStartingUI;
- (void)showSuccessUI;
- (void)showWithProvisioningError:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PKPushableExternalOfferCredentialProvisioningViewController

- (PKPushableExternalOfferCredentialProvisioningViewController)initWithContext:(int64_t)context credential:(id)credential reporter:(id)reporter
{
  credentialCopy = credential;
  reporterCopy = reporter;
  v15.receiver = self;
  v15.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  v11 = [(PKPassShareRedemptionViewController *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_context = context;
    objc_storeStrong(&v11->_credential, credential);
    objc_storeStrong(&v12->_reporter, reporter);
    v12->_isRunningInForeground = 1;
    v12->_autoProvision = 1;
    cardType = [(PKPaymentExternalOfferCredential *)v12->_credential cardType];
    if (cardType <= 4)
    {
      reporter = **(&unk_1E8015430 + cardType);
    }

    [(PKProvisioningAnalyticsSessionUIReporter *)v12->_reporter setProductType:reporter subtype:0];
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  if (self->_autoProvision)
  {
    self->_autoProvision = 0;
    [(PKPushableExternalOfferCredentialProvisioningViewController *)self continueButtonPressed];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPushableExternalOfferCredentialProvisioningViewController;
  [(PKPushableExternalOfferCredentialProvisioningViewController *)&v4 viewDidDisappear:disappear];
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
  cardHeaderView = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [cardHeaderView showLoadingContent];
  passThumbnailImageURL = [(PKPaymentExternalOfferCredential *)self->_credential passThumbnailImageURL];
  v5 = PKUIImageNamed(@"PlaceholderCardArt_Large");
  if (passThumbnailImageURL)
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__PKPushableExternalOfferCredentialProvisioningViewController__loadPassThumbnail__block_invoke;
    v6[3] = &unk_1E8015410;
    objc_copyWeak(&v8, &location);
    v7 = v5;
    PKCommonCachedImageFromURL(passThumbnailImageURL, v6);

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

- (void)setPassThumbnailImage:(id)image
{
  objc_storeStrong(&self->_passThumbnailImage, image);
  imageCopy = image;
  cardHeaderView = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [cardHeaderView setCardImage:self->_passThumbnailImage];

  [cardHeaderView hideLoadingContent];
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
  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setShowCheckmark:1];

  v7 = PKLocalizedPaymentOffersString(&cfstr_ProvisionCardA.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v7];
}

- (void)showWithProvisioningError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (([errorCopy hasLocalizedTitleAndMessage] & 1) == 0)
  {
    underlyingError = [errorCopy underlyingError];
    v5 = [(PKPushableExternalOfferCredentialProvisioningViewController *)self _provisioningErrorWithNumberOfPassesFailed:1 error:underlyingError];
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
  v7 = [MEMORY[0x1E69DC650] alertForErrorWithError:errorCopy acknowledgeButtonText:0 exitButtonText:0 onAcknowledge:&__block_literal_global_56 onExit:v9 onTryAgain:v8];
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

- (void)didTransitionTo:(int64_t)to loading:(BOOL)loading
{
  if (loading)
  {
    if (to == 1)
    {
      [(PKPushableExternalOfferCredentialProvisioningViewController *)self _showExitingLostModeUI];
      return;
    }

LABEL_7:
    [(PKPushableExternalOfferCredentialProvisioningViewController *)self showLoadingUI];
    return;
  }

  if (to == 8)
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

- (void)_terminateSetupFlowWithPasses:(id)passes error:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  errorCopy = error;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v17 = [passesCopy count];
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Pushable External Offer Credential VC - Terminating setup flow with passes: %lu error: %@", buf, 0x16u);
  }

  analyticsReporter = [(PKPassShareRedemptionViewController *)self analyticsReporter];
  if (errorCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = passesCopy == 0;
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
  [analyticsReporter sendEventForPage:2 error:errorCopy specifics:{v12, v14}];

  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  [WeakRetained pushableViewController:self didFailWithError:errorCopy];
}

- (id)_provisioningErrorWithNumberOfPassesFailed:(int64_t)failed error:(id)error
{
  errorCopy = error;
  v16 = 1;
  _accessPassType = [(PKPushableExternalOfferCredentialProvisioningViewController *)self _accessPassType];
  v8 = PKAddSEPassDisplayableError(errorCopy, failed, _accessPassType, &v16);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = PKAddSEPassGenericDisplayableError(failed, _accessPassType);
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
    v13 = errorCopy;
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