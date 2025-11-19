@interface PKPushableIdentityCredentialProvisioningViewController
- (PKPushableCredentialProvisioningViewControllerCoordinator)coordinator;
- (PKPushableIdentityCredentialProvisioningViewController)initWithContext:(int64_t)a3 credentials:(id)a4 configuration:(id)a5 reporter:(id)a6;
- (id)_provisioningErrorWithNumberOfPassesFailed:(int64_t)a3 error:(id)a4;
- (void)_continueProvisioning;
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

@implementation PKPushableIdentityCredentialProvisioningViewController

- (PKPushableIdentityCredentialProvisioningViewController)initWithContext:(int64_t)a3 credentials:(id)a4 configuration:(id)a5 reporter:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PKPushableIdentityCredentialProvisioningViewController;
  v14 = [(PKPassShareRedemptionViewController *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_context = a3;
    objc_storeStrong(&v14->_credentials, a4);
    objc_storeStrong(&v15->_configuration, a5);
    objc_storeStrong(&v15->_reporter, a6);
    v15->_isRunningInForeground = 1;
    v15->_isUnifiedAccessPass = [(PKPushableIdentityCredentialProvisioningViewController *)v15 _unifiedAccessPassStatus];
    v16 = [(NSArray *)v15->_credentials firstObject];
    v17 = [v16 cardType];
    if (v17 <= 4)
    {
      a5 = **(&unk_1E8019BA0 + v17);
    }

    [(PKProvisioningAnalyticsSessionUIReporter *)v15->_reporter setProductType:a5 subtype:0];
  }

  return v15;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPushableIdentityCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v3 viewDidLoad];
  [(PKPushableIdentityCredentialProvisioningViewController *)self showStartingUI];
  [(PKPushableIdentityCredentialProvisioningViewController *)self _loadPassThumbnail];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPushableIdentityCredentialProvisioningViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPushableIdentityCredentialProvisioningViewController;
  [(PKPushableIdentityCredentialProvisioningViewController *)&v4 viewDidDisappear:a3];
  if ([(PKPushableIdentityCredentialProvisioningViewController *)self isMovingFromParentViewController])
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter resetProductTypes];
  }
}

- (void)cancelButtonPressed
{
  v4.receiver = self;
  v4.super_class = PKPushableIdentityCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v4 cancelButtonPressed];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
  [(PKPushableIdentityCredentialProvisioningViewController *)self _terminateSetupFlowWithPasses:0 error:v3];
}

- (void)continueButtonPressed
{
  v3.receiver = self;
  v3.super_class = PKPushableIdentityCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v3 continueButtonPressed];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  if (self->_hasConfiguredCredential)
  {
    [(PKPushableIdentityCredentialProvisioningViewController *)self _continueProvisioning];
  }

  else
  {
    [(PKPushableIdentityCredentialProvisioningViewController *)self _startProvisioning];
  }
}

- (void)_startProvisioning
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Pushable Identity Credential VC - starting provisioning", buf, 2u);
  }

  if ([(NSArray *)self->_credentials count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_coordinator);
    [WeakRetained startProvisioningWithCredentials:self->_credentials];
  }

  else if (self->_configuration)
  {
    [(PKPushableIdentityCredentialProvisioningViewController *)self showLoadingUI];
    objc_initWeak(buf, self);
    v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
    if (([(PKAddIdentityDocumentConfiguration *)self->_configuration hasRequiredDataForProvisioning]& 1) == 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke;
      v10[3] = &unk_1E8019B08;
      v10[4] = self;
      objc_copyWeak(&v11, buf);
      [v5 addOperation:v10];
      objc_destroyWeak(&v11);
    }

    v6 = [MEMORY[0x1E695DFB0] null];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_5;
    v8[3] = &unk_1E8019B30;
    objc_copyWeak(&v9, buf);
    v8[4] = self;
    v7 = [v5 evaluateWithInput:v6 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PKPushableIdentityCredentialProvisioningViewController *)self showStartingUI];
  }
}

void __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69B8A58] sharedInstance];
  v11 = *(a1 + 32);
  v12 = *(v11 + 1400);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_2;
  v15[3] = &unk_1E8019AE0;
  v15[4] = v11;
  objc_copyWeak(&v18, (a1 + 40));
  v13 = v9;
  v17 = v13;
  v14 = v8;
  v16 = v14;
  [v10 configurePushProvisioningConfigurationV2:v12 completion:v15];

  objc_destroyWeak(&v18);
}

void __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 identityDocumentConfiguration];
  v7 = v6;
  v8 = *(a1 + 32);
  if (v5 || !v6)
  {
    v9 = *(v8 + 1400);
    *(v8 + 1400) = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_3;
    block[3] = &unk_1E8019628;
    v11 = v5;
    objc_copyWeak(&v13, (a1 + 56));
    v12 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v13);
  }

  else
  {
    objc_storeStrong((v8 + 1400), v6);
  }

  (*(*(a1 + 48) + 16))();
}

void __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_3(uint64_t a1)
{
  v2 = PKSharingDisplayableError(*(a1 + 32));
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_4;
  v8 = &unk_1E80110E0;
  objc_copyWeak(&v10, (a1 + 48));
  v3 = v2;
  v9 = v3;
  v4 = PKAlertForDisplayableErrorWithHandlers(v3, &v5, 0, 0);
  if (v4)
  {
    [*(a1 + 40) presentViewController:v4 animated:1 completion:{0, v5, v6, v7, v8}];
  }

  objc_destroyWeak(&v10);
}

void __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _terminateSetupFlowWithPasses:0 error:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_6;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
}

void __76__PKPushableIdentityCredentialProvisioningViewController__startProvisioning__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([*(a1 + 32) isCanceled])
    {
      [v4 showStartingUI];
    }

    else
    {
      *(v4 + 1417) = 1;
      v3 = objc_loadWeakRetained(v4 + 181);
      [v3 startProvisioningWithConfiguration:*(*(a1 + 40) + 1400)];
    }

    WeakRetained = v4;
  }
}

- (void)_continueProvisioning
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Pushable Identity Credential VC - continuing provisioning", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  [WeakRetained continueProvisioning];
}

- (void)_loadPassThumbnail
{
  v3 = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [v3 showLoadingContent];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PKPushableIdentityCredentialProvisioningViewController__loadPassThumbnail__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (self->_provisioningTemplateIdentifier)
  {
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x1E69B90D8] sharedInstance];
    provisioningTemplateIdentifier = self->_provisioningTemplateIdentifier;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__PKPushableIdentityCredentialProvisioningViewController__loadPassThumbnail__block_invoke_3;
    v8[3] = &unk_1E8019B80;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [v6 cardArtworkForTemplateIdentifier:provisioningTemplateIdentifier completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __76__PKPushableIdentityCredentialProvisioningViewController__loadPassThumbnail__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[175];
  if (v3)
  {
    v4 = [v3 metadata];
    v5 = [v4 underlyingPreview];

    v6 = [v5 thumbnailURL];
    v7 = [v5 passThumbnailImage];
    if (v6)
    {
      objc_initWeak(&location, *(a1 + 32));
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__PKPushableIdentityCredentialProvisioningViewController__loadPassThumbnail__block_invoke_2;
      v15[3] = &unk_1E8019B58;
      objc_copyWeak(&v16, &location);
      PKCommonCachedImageFromURL(v6, v15);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v11 = *(a1 + 32);
      if (v7)
      {
        v12 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v7];
      }

      else
      {
        v12 = PKUIImageNamed(@"Generic-Shared-Key");
      }

      v13 = v12;
      [v11 setPassThumbnailImage:v12];
    }
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v14 = [*(*(a1 + 32) + 1392) firstObject];
    v9 = [v14 passThumbnailImageData];
    v10 = [v8 initWithData:v9];
    [v2 setPassThumbnailImage:v10];
  }
}

void __76__PKPushableIdentityCredentialProvisioningViewController__loadPassThumbnail__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPassThumbnailImage:v4];
}

void __76__PKPushableIdentityCredentialProvisioningViewController__loadPassThumbnail__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v3];
    [WeakRetained setPassThumbnailImage:v5];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
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
  v4.receiver = self;
  v4.super_class = PKPushableIdentityCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v4 showStartingUI];
  v3 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:64];
  [(PKPaymentSetupOptionsViewController *)self setPrivacyLink:v3];
  [(PKPushableIdentityCredentialProvisioningViewController *)self _setTitleAndBodyText];
  [(PKPushableIdentityCredentialProvisioningViewController *)self _setContinueButtonText];
  [(PKPassShareRedemptionViewController *)self showDismissButton:1];
}

- (void)_setTitleAndBodyText
{
  v3 = [MEMORY[0x1E69B90D8] sharedInstance];
  v4 = [v3 provisioningString:@"PROVISION_PUSHABLE_IDENTITY_PASS_TITLE" templateIdentifier:self->_provisioningTemplateIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = PKLocalizedIdentityString(&cfstr_ProvisionPusha.isa);
  }

  v12 = v6;

  [(PKPaymentSetupOptionsViewController *)self setTitleText:v12];
  v7 = [MEMORY[0x1E69B90D8] sharedInstance];
  v8 = [v7 provisioningString:@"PROVISION_PUSHABLE_IDENTITY_PASS_BODY" templateIdentifier:self->_provisioningTemplateIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = PKLocalizedIdentityString(&cfstr_ProvisionPusha_0.isa);
  }

  v11 = v10;

  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v11];
}

- (void)_setContinueButtonText
{
  v3 = [MEMORY[0x1E69B90D8] sharedInstance];
  v4 = [v3 provisioningString:@"ADD_PUSHABLE_IDENTITY_PASS_CONTINUE_TITLE" templateIdentifier:self->_provisioningTemplateIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = PKLocalizedIdentityString(&cfstr_AddPushableIde.isa);
  }

  v7 = v6;

  [(PKPassShareRedemptionViewController *)self setContinueButtonText:v7];
}

- (void)_showExitingLostModeUI
{
  [(PKPushableIdentityCredentialProvisioningViewController *)self showLoadingUI];
  v3 = [MEMORY[0x1E69B90D8] sharedInstance];
  v4 = [v3 provisioningString:@"EXITING_LOST_MODE_SHAREABLE_CREDENTIAL_PASS" templateIdentifier:self->_provisioningTemplateIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = PKLocalizedShareableCredentialString(&cfstr_ExitingLostMod.isa);
  }

  v7 = v6;

  [(PKPaymentSetupOptionsViewController *)self setTitleText:v7];
}

- (void)showLoadingUI
{
  v8.receiver = self;
  v8.super_class = PKPushableIdentityCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v8 showLoadingUI];
  v3 = [MEMORY[0x1E69B90D8] sharedInstance];
  v4 = [v3 provisioningString:@"ADDING_PUSHABLE_IDENTITY_PASS" templateIdentifier:self->_provisioningTemplateIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = PKLocalizedIdentityString(&cfstr_AddingPushable.isa);
  }

  v7 = v6;

  [(PKPaymentSetupOptionsViewController *)self setTitleText:v7];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:0];
  [(PKPassShareRedemptionViewController *)self showDismissButton:0];
}

- (void)showSuccessUI
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPassShareRedemptionViewController *)self analyticsReporter];
  v7 = *MEMORY[0x1E69BB5D0];
  v8[0] = *MEMORY[0x1E69BA7B0];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 sendEventForPage:2 specifics:v4];

  [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];
  v5 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v5 setShowCheckmark:1];

  v6 = PKLocalizedIdentityString(&cfstr_AddingPushable.isa);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v6];
}

- (void)showWithProvisioningError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (([v4 hasLocalizedTitleAndMessage] & 1) == 0)
  {
    v6 = [(NSArray *)self->_credentials count];
    v7 = [(PKAddIdentityDocumentConfiguration *)self->_configuration metadataProviders];
    v8 = fmax(v6, [v7 count]);

    v9 = [v4 underlyingError];
    v5 = [(PKPushableIdentityCredentialProvisioningViewController *)self _provisioningErrorWithNumberOfPassesFailed:v8 error:v9];
  }

  v10 = MEMORY[0x1E69DC650];
  v13[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__PKPushableIdentityCredentialProvisioningViewController_showWithProvisioningError___block_invoke_2;
  v14[3] = &unk_1E8010A10;
  v14[4] = self;
  v15 = v4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PKPushableIdentityCredentialProvisioningViewController_showWithProvisioningError___block_invoke_3;
  v13[3] = &unk_1E8010970;
  v11 = v4;
  v12 = [v10 alertForErrorWithError:v5 acknowledgeButtonText:0 exitButtonText:0 onAcknowledge:&__block_literal_global_113 onExit:v14 onTryAgain:v13];
  [(PKPushableIdentityCredentialProvisioningViewController *)self presentViewController:v12 animated:1 completion:0];
}

void __84__PKPushableIdentityCredentialProvisioningViewController_showWithProvisioningError___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) analyticsReporter];
  v3 = [*(a1 + 40) underlyingError];
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
  }

  v7 = *MEMORY[0x1E69BB5D0];
  v8[0] = *MEMORY[0x1E69BA7A8];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 sendEventForPage:2 error:v4 specifics:v5];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1448));
  [WeakRetained cancel];
}

- (void)didTransitionTo:(int64_t)a3 loading:(BOOL)a4
{
  if (a4)
  {
    if (a3 == 1)
    {
      [(PKPushableIdentityCredentialProvisioningViewController *)self _showExitingLostModeUI];
    }

    else
    {
      [(PKPushableIdentityCredentialProvisioningViewController *)self showLoadingUI];
    }
  }

  else if (a3 == 8)
  {
    [(PKPushableIdentityCredentialProvisioningViewController *)self showSuccessUI];
  }

  else
  {
    [(PKPushableIdentityCredentialProvisioningViewController *)self showStartingUI];
  }
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
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Pushable Identity Credential VC - Terminating setup flow with passes: %lu error: %@", buf, 0x16u);
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
  v7 = [(PKPushableIdentityCredentialProvisioningViewController *)self _accessPassType];
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