@interface PKShareableCredentialProvisioningViewController
- (BOOL)_isProvisioningMultipleCredentials;
- (PKPushableCredentialProvisioningViewControllerCoordinator)coordinator;
- (PKShareableCredentialProvisioningViewController)initWithContext:(int64_t)context credentials:(id)credentials configuration:(id)configuration reporter:(id)reporter;
- (id)_provisioningErrorWithNumberOfPassesFailed:(int64_t)failed error:(id)error;
- (void)_continueProvisioning;
- (void)_loadPassThumbnail;
- (void)_showExitingLostModeUI;
- (void)_startProvisioning;
- (void)_terminateSetupFlowWithPasses:(id)passes error:(id)error;
- (void)activationCodeDidChangeToCode:(id)code;
- (void)cancelButtonPressed;
- (void)continueButtonPressed;
- (void)didTransitionTo:(int64_t)to loading:(BOOL)loading;
- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)result;
- (void)setInvitation:(id)invitation;
- (void)setPassThumbnailImage:(id)image;
- (void)showLoadingUI;
- (void)showStartingUI;
- (void)showSuccessUI;
- (void)showWithProvisioningError:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PKShareableCredentialProvisioningViewController

- (PKShareableCredentialProvisioningViewController)initWithContext:(int64_t)context credentials:(id)credentials configuration:(id)configuration reporter:(id)reporter
{
  credentialsCopy = credentials;
  configurationCopy = configuration;
  reporterCopy = reporter;
  v25.receiver = self;
  v25.super_class = PKShareableCredentialProvisioningViewController;
  v14 = [(PKPassShareRedemptionViewController *)&v25 init];
  v15 = v14;
  if (v14)
  {
    v14->_context = context;
    objc_storeStrong(&v14->_credentials, credentials);
    objc_storeStrong(&v15->_configuration, configuration);
    objc_storeStrong(&v15->_reporter, reporter);
    v15->_isRunningInForeground = 1;
    credentialsMetadata = [(PKAddShareablePassConfiguration *)v15->_configuration credentialsMetadata];
    firstObject = [credentialsMetadata firstObject];
    preview = [firstObject preview];
    provisioningTemplateIdentifier = [preview provisioningTemplateIdentifier];
    provisioningTemplateIdentifier = v15->_provisioningTemplateIdentifier;
    v15->_provisioningTemplateIdentifier = provisioningTemplateIdentifier;

    LOBYTE(credentialsMetadata) = [(NSArray *)v15->_credentials pk_containsObjectPassingTest:&__block_literal_global_254];
    credentialsMetadata2 = [(PKAddShareablePassConfiguration *)v15->_configuration credentialsMetadata];
    LOBYTE(preview) = [credentialsMetadata2 pk_containsObjectPassingTest:&__block_literal_global_67];

    v15->_isUnifiedAccessPass = (credentialsMetadata | preview) & 1;
    firstObject2 = [(NSArray *)v15->_credentials firstObject];
    cardType = [firstObject2 cardType];
    if (cardType <= 4)
    {
      credentialsMetadata2 = **(&unk_1E8026BA0 + cardType);
    }

    [(PKProvisioningAnalyticsSessionUIReporter *)v15->_reporter setProductType:credentialsMetadata2 subtype:0];
  }

  return v15;
}

BOOL __102__PKShareableCredentialProvisioningViewController_initWithContext_credentials_configuration_reporter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accountHash];
  v3 = v2 != 0;

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKShareableCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v3 viewDidLoad];
  [(PKShareableCredentialProvisioningViewController *)self showStartingUI];
  [(PKShareableCredentialProvisioningViewController *)self _loadPassThumbnail];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKShareableCredentialProvisioningViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKShareableCredentialProvisioningViewController;
  [(PKShareableCredentialProvisioningViewController *)&v4 viewDidDisappear:disappear];
  if ([(PKShareableCredentialProvisioningViewController *)self isMovingFromParentViewController])
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter resetProductTypes];
  }
}

- (void)setInvitation:(id)invitation
{
  invitationCopy = invitation;
  objc_storeStrong(&self->_invitation, invitation);
  activationOptions = [(PKSharingPushProvisioningInvitation *)self->_invitation activationOptions];
  [(PKPassShareRedemptionViewController *)self setActivationOptions:activationOptions];

  proprietaryData = [(PKSharingPushProvisioningInvitation *)self->_invitation proprietaryData];
  displayableSharedEntitlements = [proprietaryData displayableSharedEntitlements];
  [(PKPassShareRedemptionViewController *)self setDisplayableSharedEntitlements:displayableSharedEntitlements];

  [(PKPassShareRedemptionViewController *)self setAnalyticsEnabled:1];
  proprietaryData2 = [(PKSharingPushProvisioningInvitation *)self->_invitation proprietaryData];
  accessType = [proprietaryData2 accessType];

  analyticsReporter = [(PKPassShareRedemptionViewController *)self analyticsReporter];
  [analyticsReporter setAccessPassType:accessType];

  firstObject = [(NSArray *)self->_credentials firstObject];
  cardType = [firstObject cardType];
  if (cardType <= 4)
  {
    analyticsReporter = **(&unk_1E8026BA0 + cardType);
  }

  if (accessType >= 7)
  {
    v13 = *MEMORY[0x1E69BB3A8];
  }

  else
  {
    v13 = off_1E8026BC8[accessType];
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter setProductType:analyticsReporter subtype:v13];
}

- (void)cancelButtonPressed
{
  v4.receiver = self;
  v4.super_class = PKShareableCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v4 cancelButtonPressed];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
  [(PKShareableCredentialProvisioningViewController *)self _terminateSetupFlowWithPasses:0 error:v3];
}

- (void)continueButtonPressed
{
  v3.receiver = self;
  v3.super_class = PKShareableCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v3 continueButtonPressed];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  if (self->_hasConfiguredCredential)
  {
    [(PKShareableCredentialProvisioningViewController *)self _continueProvisioning];
  }

  else
  {
    [(PKShareableCredentialProvisioningViewController *)self _startProvisioning];
  }
}

- (void)activationCodeDidChangeToCode:(id)code
{
  v16 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  credentialsMetadata = [(PKAddShareablePassConfiguration *)self->_configuration credentialsMetadata];
  v6 = [credentialsMetadata countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(credentialsMetadata);
        }

        provisioningTarget = [*(*(&v11 + 1) + 8 * i) provisioningTarget];
        [provisioningTarget setVerificationCode:codeCopy];

        self->_hasConfiguredCredential = 0;
      }

      v7 = [credentialsMetadata countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_startProvisioning
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Shareable Credential VC - starting provisioning", buf, 2u);
  }

  if ([(PKAddShareablePassConfiguration *)self->_configuration primaryAction])
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Shareable Credential VC - presenting PKShareableCredentialsMessageComposeViewController", buf, 2u);
    }

    v4 = [[PKShareableCredentialsMessageComposeViewController alloc] initWithConfiguration:self->_configuration];
    messageComposeViewController = self->_messageComposeViewController;
    self->_messageComposeViewController = v4;

    [(PKShareableCredentialsMessageComposeViewController *)self->_messageComposeViewController setDelegate:self];
    [(PKShareableCredentialProvisioningViewController *)self showStartingUI];
    [(PKShareableCredentialProvisioningViewController *)self presentViewController:self->_messageComposeViewController animated:1 completion:0];
  }

  else if ([(NSArray *)self->_credentials count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_coordinator);
    [WeakRetained startProvisioningWithCredentials:self->_credentials];
  }

  else if (self->_configuration)
  {
    [(PKShareableCredentialProvisioningViewController *)self showLoadingUI];
    objc_initWeak(buf, self);
    v7 = objc_alloc_init(MEMORY[0x1E69B8658]);
    if (([(PKAddShareablePassConfiguration *)self->_configuration hasRequiredDataForProvisioning]& 1) == 0)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke;
      v12[3] = &unk_1E8019B08;
      v12[4] = self;
      objc_copyWeak(&v13, buf);
      [v7 addOperation:v12];
      objc_destroyWeak(&v13);
    }

    null = [MEMORY[0x1E695DFB0] null];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_5;
    v10[3] = &unk_1E8019B30;
    objc_copyWeak(&v11, buf);
    v10[4] = self;
    v9 = [v7 evaluateWithInput:null completion:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PKShareableCredentialProvisioningViewController *)self showStartingUI];
  }
}

void __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69B8A58] sharedInstance];
  v11 = *(a1 + 32);
  v12 = *(v11 + 1400);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_2;
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

void __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 shareablePassConfiguration];
  v7 = v6;
  v8 = *(a1 + 32);
  if (v5 || !v6)
  {
    v9 = *(v8 + 1400);
    *(v8 + 1400) = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_3;
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

void __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_3(uint64_t a1)
{
  v2 = PKSharingDisplayableError(*(a1 + 32));
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_4;
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

void __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _terminateSetupFlowWithPasses:0 error:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_6;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
}

void __69__PKShareableCredentialProvisioningViewController__startProvisioning__block_invoke_6(uint64_t a1)
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
      *(v4 + 1409) = 1;
      v3 = objc_loadWeakRetained(v4 + 182);
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
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Shareable Credential VC - continuing provisioning", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  [WeakRetained continueProvisioning];
}

- (void)_loadPassThumbnail
{
  cardHeaderView = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [cardHeaderView showLoadingContent];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PKShareableCredentialProvisioningViewController__loadPassThumbnail__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (self->_provisioningTemplateIdentifier)
  {
    objc_initWeak(&location, self);
    mEMORY[0x1E69B90D8] = [MEMORY[0x1E69B90D8] sharedInstance];
    provisioningTemplateIdentifier = self->_provisioningTemplateIdentifier;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKShareableCredentialProvisioningViewController__loadPassThumbnail__block_invoke_3;
    v8[3] = &unk_1E8019B80;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [mEMORY[0x1E69B90D8] cardArtworkForTemplateIdentifier:provisioningTemplateIdentifier completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __69__PKShareableCredentialProvisioningViewController__loadPassThumbnail__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[175];
  if (v3)
  {
    v4 = [v3 credentialsMetadata];
    v5 = [v4 firstObject];

    v6 = [v5 preview];
    v7 = [v6 thumbnailURL];

    v8 = [v5 preview];
    v9 = [v8 passThumbnailImage];

    if (v7)
    {
      objc_initWeak(&location, *(a1 + 32));
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __69__PKShareableCredentialProvisioningViewController__loadPassThumbnail__block_invoke_2;
      v17[3] = &unk_1E8019B58;
      objc_copyWeak(&v18, &location);
      PKCommonCachedImageFromURL(v7, v17);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v13 = *(a1 + 32);
      if (v9)
      {
        v14 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v9];
      }

      else
      {
        v14 = PKUIImageNamed(@"Generic-Shared-Key");
      }

      v15 = v14;
      [v13 setPassThumbnailImage:v14];
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v16 = [*(*(a1 + 32) + 1392) firstObject];
    v11 = [v16 passThumbnailImageData];
    v12 = [v10 initWithData:v11];
    [v2 setPassThumbnailImage:v12];
  }
}

void __69__PKShareableCredentialProvisioningViewController__loadPassThumbnail__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPassThumbnailImage:v4];
}

void __69__PKShareableCredentialProvisioningViewController__loadPassThumbnail__block_invoke_3(uint64_t a1, void *a2)
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
  v51.receiver = self;
  v51.super_class = PKShareableCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v51 showStartingUI];
  primaryAction = [(PKAddShareablePassConfiguration *)self->_configuration primaryAction];
  configuration = self->_configuration;
  if (configuration)
  {
    credentialsMetadata = [(PKAddShareablePassConfiguration *)configuration credentialsMetadata];
    v6 = [credentialsMetadata count];
  }

  else
  {
    v6 = [(NSArray *)self->_credentials count];
  }

  credentialsMetadata2 = [(PKAddShareablePassConfiguration *)self->_configuration credentialsMetadata];
  if (primaryAction == PKAddShareablePassConfigurationPrimaryActionShare)
  {
    mEMORY[0x1E69B90D8] = [MEMORY[0x1E69B90D8] sharedInstance];
    v9 = mEMORY[0x1E69B90D8];
    provisioningTemplateIdentifier = self->_provisioningTemplateIdentifier;
    if (v6 < 2)
    {
      v19 = [mEMORY[0x1E69B90D8] provisioningString:@"SHARE_ONE_SHAREABLE_CREDENTIAL_PASS" templateIdentifier:provisioningTemplateIdentifier];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = PKLocalizedShareableCredentialString(&cfstr_ShareOneSharea_1.isa);
      }

      v33 = v21;

      v34 = [credentialsMetadata2 objectAtIndexedSubscript:0];
      preview = [v34 preview];
      ownerDisplayName = [preview ownerDisplayName];
      v37 = PKStringWithValidatedFormat();
      [(PKPaymentSetupOptionsViewController *)self setTitleText:v37, ownerDisplayName];
    }

    else
    {
      v11 = [mEMORY[0x1E69B90D8] provisioningString:@"SHARE_CREDENTIAL_MULTIPLE_PASS_TITLE" templateIdentifier:provisioningTemplateIdentifier];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = PKLocalizedShareableCredentialString(&cfstr_ShareCredentia_0.isa);
      }

      v33 = v13;

      v34 = PKStringWithValidatedFormat();
      [(PKPaymentSetupOptionsViewController *)self setTitleText:v34, v6];
    }

    mEMORY[0x1E69B90D8]2 = [MEMORY[0x1E69B90D8] sharedInstance];
    v39 = [mEMORY[0x1E69B90D8]2 provisioningString:@"SHARE_CREDENTIAL_EXPLANATION" templateIdentifier:self->_provisioningTemplateIdentifier];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = PKLocalizedShareableCredentialString(&cfstr_ShareCredentia.isa);
    }

    v26 = v41;

    v50 = v6;
    v32 = PKStringWithValidatedFormat();
  }

  else
  {
    invitation = self->_invitation;
    if (invitation)
    {
      proprietaryData = [(PKSharingPushProvisioningInvitation *)self->_invitation proprietaryData];
      accessType = [proprietaryData accessType];

      if (accessType >= 7)
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v17 = off_1E8026C00[accessType];
        v18 = off_1E8026C38[accessType];
      }
    }

    else
    {
      if (v6 == 1)
      {
        v17 = @"ADD_SHAREABLE_CREDENTIAL_PASS_TITLE";
      }

      else
      {
        v17 = @"ADD_SHAREABLE_CREDENTIAL_PASS";
      }

      if (v6 == 1)
      {
        v18 = @"ADD_TO_WALLET_EXPLANATION";
      }

      else
      {
        v18 = @"ADD_TO_WALLET_EXPLANATION_MULTIPLE";
      }
    }

    mEMORY[0x1E69B90D8]3 = [MEMORY[0x1E69B90D8] sharedInstance];
    v23 = [mEMORY[0x1E69B90D8]3 provisioningString:v17 templateIdentifier:self->_provisioningTemplateIdentifier];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = PKLocalizedShareableCredentialString(&v17->isa);
    }

    v26 = v25;

    if (invitation)
    {
      [(PKPaymentSetupOptionsViewController *)self setTitleText:v26];
    }

    else
    {
      v27 = PKStringWithValidatedFormat();
      [(PKPaymentSetupOptionsViewController *)self setTitleText:v27, v6];
    }

    mEMORY[0x1E69B90D8]4 = [MEMORY[0x1E69B90D8] sharedInstance];
    v29 = [mEMORY[0x1E69B90D8]4 provisioningString:v18 templateIdentifier:self->_provisioningTemplateIdentifier];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = PKLocalizedShareableCredentialString(&v18->isa);
    }

    v32 = v31;
  }

  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v32, v50];

  v42 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:8];
  [(PKPaymentSetupOptionsViewController *)self setPrivacyLink:v42];
  if (primaryAction == PKAddShareablePassConfigurationPrimaryActionShare)
  {
    mEMORY[0x1E69B90D8]5 = [MEMORY[0x1E69B90D8] sharedInstance];
    mEMORY[0x1E69B90D8]6 = mEMORY[0x1E69B90D8]5;
    v45 = self->_provisioningTemplateIdentifier;
    if (v6 < 2)
    {
      v46 = [mEMORY[0x1E69B90D8]5 provisioningString:@"SHARE_SHAREABLE_CREDENTIAL_PASS_TITLE" templateIdentifier:v45];
      if (!v46)
      {
        v47 = @"SHARE_SHAREABLE_CREDENTIAL_PASS_TITLE";
        goto LABEL_47;
      }
    }

    else
    {
      v46 = [mEMORY[0x1E69B90D8]5 provisioningString:@"SHARE_SHAREABLE_CREDENTIAL_PASSES_TITLE" templateIdentifier:v45];
      if (!v46)
      {
        v47 = @"SHARE_SHAREABLE_CREDENTIAL_PASSES_TITLE";
LABEL_47:
        v49 = PKLocalizedShareableCredentialString(&v47->isa);
        v48 = 0;
        goto LABEL_48;
      }
    }
  }

  else
  {
    mEMORY[0x1E69B90D8]6 = [MEMORY[0x1E69B90D8] sharedInstance];
    v46 = [mEMORY[0x1E69B90D8]6 provisioningString:@"ADD_SHAREABLE_CREDENTIAL_PASS_CONTINUE_TITLE" templateIdentifier:self->_provisioningTemplateIdentifier];
    if (!v46)
    {
      v47 = @"ADD_SHAREABLE_CREDENTIAL_PASS_CONTINUE_TITLE";
      goto LABEL_47;
    }
  }

  v48 = v46;
  v49 = v48;
LABEL_48:

  [(PKPassShareRedemptionViewController *)self setContinueButtonText:v49];
  [(PKPassShareRedemptionViewController *)self showDismissButton:1];
}

- (void)_showExitingLostModeUI
{
  [(PKShareableCredentialProvisioningViewController *)self showLoadingUI];
  mEMORY[0x1E69B90D8] = [MEMORY[0x1E69B90D8] sharedInstance];
  v4 = [mEMORY[0x1E69B90D8] provisioningString:@"EXITING_LOST_MODE_SHAREABLE_CREDENTIAL_PASS" templateIdentifier:self->_provisioningTemplateIdentifier];
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
  v11.receiver = self;
  v11.super_class = PKShareableCredentialProvisioningViewController;
  [(PKPassShareRedemptionViewController *)&v11 showLoadingUI];
  _isProvisioningMultipleCredentials = [(PKShareableCredentialProvisioningViewController *)self _isProvisioningMultipleCredentials];
  v4 = @"ADDING_SHAREABLE_CREDENTIAL_PASS";
  if (_isProvisioningMultipleCredentials)
  {
    v4 = @"ADDING_SHAREABLE_CREDENTIAL_PASSES";
  }

  v5 = v4;
  mEMORY[0x1E69B90D8] = [MEMORY[0x1E69B90D8] sharedInstance];
  v7 = [mEMORY[0x1E69B90D8] provisioningString:v5 templateIdentifier:self->_provisioningTemplateIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = PKLocalizedShareableCredentialString(v5);
  }

  v10 = v9;

  [(PKPaymentSetupOptionsViewController *)self setTitleText:v10];
  [(PKPassShareRedemptionViewController *)self showDismissButton:0];
}

- (void)showSuccessUI
{
  v15[1] = *MEMORY[0x1E69E9840];
  analyticsReporter = [(PKPassShareRedemptionViewController *)self analyticsReporter];
  v14 = *MEMORY[0x1E69BB5D0];
  v15[0] = *MEMORY[0x1E69BA7B0];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [analyticsReporter sendEventForPage:2 specifics:v4];

  [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];
  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setShowCheckmark:1];

  _isProvisioningMultipleCredentials = [(PKShareableCredentialProvisioningViewController *)self _isProvisioningMultipleCredentials];
  v7 = @"ADDING_SHAREABLE_CREDENTIAL_PASS";
  if (_isProvisioningMultipleCredentials)
  {
    v7 = @"ADDING_SHAREABLE_CREDENTIAL_PASSES";
  }

  v8 = v7;
  mEMORY[0x1E69B90D8] = [MEMORY[0x1E69B90D8] sharedInstance];
  v10 = [mEMORY[0x1E69B90D8] provisioningString:v8 templateIdentifier:self->_provisioningTemplateIdentifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = PKLocalizedShareableCredentialString(v8);
  }

  v13 = v12;

  [(PKPaymentSetupOptionsViewController *)self setTitleText:v13];
}

- (BOOL)_isProvisioningMultipleCredentials
{
  if (self->_configuration)
  {
    credentialsMetadata = [(PKAddShareablePassConfiguration *)self->_configuration credentialsMetadata];
    v3 = [credentialsMetadata count];
  }

  else
  {
    v3 = [(NSArray *)self->_credentials count];
  }

  return v3 > 1;
}

- (void)showWithProvisioningError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (([errorCopy hasLocalizedTitleAndMessage] & 1) == 0)
  {
    v6 = [(NSArray *)self->_credentials count];
    credentialsMetadata = [(PKAddShareablePassConfiguration *)self->_configuration credentialsMetadata];
    v8 = fmax(v6, [credentialsMetadata count]);

    underlyingError = [errorCopy underlyingError];
    v5 = [(PKShareableCredentialProvisioningViewController *)self _provisioningErrorWithNumberOfPassesFailed:v8 error:underlyingError];
  }

  v10 = MEMORY[0x1E69DC650];
  v13[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__PKShareableCredentialProvisioningViewController_showWithProvisioningError___block_invoke_2;
  v14[3] = &unk_1E8010A10;
  v14[4] = self;
  v15 = errorCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKShareableCredentialProvisioningViewController_showWithProvisioningError___block_invoke_3;
  v13[3] = &unk_1E8010970;
  v11 = errorCopy;
  v12 = [v10 alertForErrorWithError:v11 acknowledgeButtonText:0 exitButtonText:0 onAcknowledge:&__block_literal_global_177 onExit:v14 onTryAgain:v13];
  [(PKShareableCredentialProvisioningViewController *)self presentViewController:v12 animated:1 completion:0];
}

void __77__PKShareableCredentialProvisioningViewController_showWithProvisioningError___block_invoke_2(uint64_t a1)
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

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1456));
  [WeakRetained cancel];
}

- (void)didTransitionTo:(int64_t)to loading:(BOOL)loading
{
  if (loading)
  {
    if (to == 1)
    {
      [(PKShareableCredentialProvisioningViewController *)self _showExitingLostModeUI];
    }

    else
    {
      [(PKShareableCredentialProvisioningViewController *)self showLoadingUI];
    }
  }

  else if (to == 8)
  {
    [(PKShareableCredentialProvisioningViewController *)self showSuccessUI];
  }

  else
  {
    [(PKShareableCredentialProvisioningViewController *)self showStartingUI];
  }
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
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Shareable Credential VC - Terminating setup flow with passes: %lu error: %@", buf, 0x16u);
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
  v17 = 1;
  proprietaryData = [(PKSharingPushProvisioningInvitation *)self->_invitation proprietaryData];
  accessType = [proprietaryData accessType];

  v9 = PKAddSEPassDisplayableError(errorCopy, failed, accessType, &v17);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = PKAddSEPassGenericDisplayableError(failed, accessType);
  }

  v12 = v11;

  if (v17)
  {
    v13 = 5;
  }

  else
  {
    v13 = 4;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = errorCopy;
  }

  v15 = [MEMORY[0x1E69B90E8] errorWithUnderlyingError:v14 defaultSeverity:v13];

  return v15;
}

- (void)messageComposeViewControllerDidFinishWithResult:(BOOL)result
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Shareable Credential VC - Terminate Setup flow", v7, 2u);
  }

  if (result)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:1 userInfo:0];
  }

  [(PKShareableCredentialProvisioningViewController *)self _terminateSetupFlowWithPasses:0 error:v6];
}

- (PKPushableCredentialProvisioningViewControllerCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

@end