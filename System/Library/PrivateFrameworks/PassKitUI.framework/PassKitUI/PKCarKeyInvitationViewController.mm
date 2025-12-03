@interface PKCarKeyInvitationViewController
- (PKCarKeyInvitationViewController)initWithContext:(int64_t)context invitation:(id)invitation delegate:(id)delegate;
- (id)_bodyText;
- (id)_localizedIssuerName;
- (id)_titleText;
- (void)activationCodeDidChangeToCode:(id)code;
- (void)continueButtonPressed;
- (void)continueLaterButtonPressed;
- (void)didTransitionTo:(int64_t)to loading:(BOOL)loading;
- (void)resetState;
- (void)showWithProvisioningError:(id)error;
- (void)viewDidLoad;
@end

@implementation PKCarKeyInvitationViewController

- (PKCarKeyInvitationViewController)initWithContext:(int64_t)context invitation:(id)invitation delegate:(id)delegate
{
  invitationCopy = invitation;
  delegateCopy = delegate;
  v11 = [(PKPassShareRedemptionViewController *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_setupContext = context;
    objc_storeStrong(&v11->_invitation, invitation);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    [(PKPassShareRedemptionViewController *)v12 setAnalyticsEnabled:1];
    analyticsReporter = [(PKPassShareRedemptionViewController *)v12 analyticsReporter];
    [analyticsReporter setAccessPassType:4];
  }

  return v12;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PKCarKeyInvitationViewController;
  [(PKPassShareRedemptionViewController *)&v24 viewDidLoad];
  navigationItem = [(PKCarKeyInvitationViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  cardHeaderView = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  v5 = MEMORY[0x1E69DCAB8];
  v6 = PKPassKitUIBundle();
  v7 = [v5 imageNamed:@"SubcredentialInvitation" inBundle:v6];

  displayInformation = [(PKSharingCarKeyInvitation *)self->_invitation displayInformation];
  imageURL = [displayInformation imageURL];

  if (imageURL)
  {
    [cardHeaderView showLoadingContent];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __47__PKCarKeyInvitationViewController_viewDidLoad__block_invoke;
    v21 = &unk_1E8012968;
    v22 = cardHeaderView;
    v23 = v7;
    PKCommonCachedImageFromURL(imageURL, &v18);
  }

  else
  {
    [cardHeaderView setCardImage:v7];
  }

  v10 = [(PKCarKeyInvitationViewController *)self _titleText:v18];
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v10];

  _bodyText = [(PKCarKeyInvitationViewController *)self _bodyText];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:_bodyText];

  v12 = PKLocalizedCredentialString(&cfstr_AddCarKey.isa);
  [(PKPassShareRedemptionViewController *)self setContinueButtonText:v12];

  v13 = PKLocalizedCredentialString(&cfstr_NotNow.isa);
  [(PKPassShareRedemptionViewController *)self setContinueLaterText:v13];

  proprietaryData = [(PKSharingCarKeyInvitation *)self->_invitation proprietaryData];
  displayableSharedEntitlements = [proprietaryData displayableSharedEntitlements];
  [(PKPassShareRedemptionViewController *)self setDisplayableSharedEntitlements:displayableSharedEntitlements];

  activationOptions = [(PKSharingCarKeyInvitation *)self->_invitation activationOptions];
  [(PKPassShareRedemptionViewController *)self setActivationOptions:activationOptions];

  v17 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:8];
  [(PKPaymentSetupOptionsViewController *)self setPrivacyLink:v17];
  [(PKPassShareRedemptionViewController *)self showStartingUI];
}

uint64_t __47__PKCarKeyInvitationViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a3)
  {
    a3 = *(a1 + 40);
  }

  [v4 setCardImage:a3];
  v5 = *(a1 + 32);

  return [v5 hideLoadingContent];
}

- (void)resetState
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Reseting state of accept invitaiton view controller", v4, 2u);
  }

  [(PKPassShareRedemptionViewController *)self showStartingUI];
}

- (id)_titleText
{
  if (self->_isShareActivation)
  {
    v2 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_5.isa);
  }

  else
  {
    vehicleIssuer = [(PKSharingCarKeyInvitation *)self->_invitation vehicleIssuer];
    v4 = vehicleIssuer;
    if (vehicleIssuer)
    {
      PKLocalizedCredentialString(&cfstr_InvitationTitl_0.isa, &stru_1F3BD5BF0.isa, vehicleIssuer);
    }

    else
    {
      PKLocalizedCredentialString(&cfstr_InvitationTitl.isa);
    }
    v2 = ;
  }

  return v2;
}

- (id)_bodyText
{
  if (self->_isShareActivation)
  {
    v2 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_6.isa);
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E69B85A8]) initWithCrossPlatformInvitation:self->_invitation];
    [v3 entitlement];
    v4 = PKAppletSubcredentialEntitlementTypeFromValue();
    if (v4 > 6)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_1E801B5F8[v4];
    }

    v2 = PKLocalizedCredentialString(&v5->isa);
  }

  return v2;
}

- (id)_localizedIssuerName
{
  vehicleIssuer = [(PKSharingCarKeyInvitation *)self->_invitation vehicleIssuer];
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v4 = [mEMORY[0x1E69B8EF8] supportedRegionFeatureOfType:2 didFailOSVersionRequirements:0];
  v5 = [v4 localizedNameForIssuerWithIdentifier:vehicleIssuer];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = PKLocalizedCredentialString(&cfstr_GenericPartner.isa);
  }

  v8 = v7;

  return v8;
}

- (void)continueButtonPressed
{
  v4.receiver = self;
  v4.super_class = PKCarKeyInvitationViewController;
  [(PKPassShareRedemptionViewController *)&v4 continueButtonPressed];
  [(PKPassShareRedemptionViewController *)self showLoadingUI];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained carKeyInvitationViewControllerDidRequestStart:self];
}

- (void)continueLaterButtonPressed
{
  v4.receiver = self;
  v4.super_class = PKCarKeyInvitationViewController;
  [(PKPassShareRedemptionViewController *)&v4 continueLaterButtonPressed];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained carKeyInvitationViewControllerDidCancel:self];
}

- (void)activationCodeDidChangeToCode:(id)code
{
  codeCopy = code;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained carKeyInvitationViewController:self didEnterActivationCode:codeCopy];
}

- (void)showWithProvisioningError:(id)error
{
  errorCopy = error;
  if (([errorCopy hasLocalizedTitleAndMessage] & 1) == 0)
  {
    v5 = PKLocalizedCredentialString(&cfstr_CarkeyCannotAd.isa);
    [errorCopy setLocalizedTitle:v5];

    _localizedIssuerName = [(PKCarKeyInvitationViewController *)self _localizedIssuerName];
    v7 = PKLocalizedCredentialString(&cfstr_CarkeyFailedAd.isa, &stru_1F3BD5BF0.isa, _localizedIssuerName);
    [errorCopy setLocalizedMessage:v7];
  }

  v8 = MEMORY[0x1E69DC650];
  v11[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PKCarKeyInvitationViewController_showWithProvisioningError___block_invoke_2;
  v12[3] = &unk_1E8010A10;
  v12[4] = self;
  v13 = errorCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PKCarKeyInvitationViewController_showWithProvisioningError___block_invoke_3;
  v11[3] = &unk_1E8010970;
  v9 = errorCopy;
  v10 = [v8 alertForErrorWithError:v9 acknowledgeButtonText:0 exitButtonText:0 onAcknowledge:&__block_literal_global_133 onExit:v12 onTryAgain:v11];
  [(PKCarKeyInvitationViewController *)self presentViewController:v10 animated:1 completion:0];
}

void __62__PKCarKeyInvitationViewController_showWithProvisioningError___block_invoke_2(uint64_t a1)
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

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1400));
  [WeakRetained carKeyInvitationViewControllerDidCancel:*(a1 + 32)];
}

- (void)didTransitionTo:(int64_t)to loading:(BOOL)loading
{
  if (loading)
  {
    [(PKPassShareRedemptionViewController *)self showLoadingUI];
  }

  else if (to == 8)
  {
    [(PKPassShareRedemptionViewController *)self showSuccessUI];
  }

  else
  {
    [(PKPassShareRedemptionViewController *)self showStartingUI];
  }
}

@end