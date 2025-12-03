@interface PKOrderPhysicalCardViewController
- (PKOrderPhysicalCardViewController)initWithController:(id)controller;
- (PKPaymentSetupViewControllerDelegate)delegate;
- (void)_handleNextStep;
- (void)_terminateSetupFlow;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PKOrderPhysicalCardViewController

- (PKOrderPhysicalCardViewController)initWithController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = PKOrderPhysicalCardViewController;
  v6 = [(PKExplanationViewController *)&v12 init];
  if (v6)
  {
    v6->_context = [controllerCopy paymentSetupContext];
    objc_storeStrong(&v6->_controller, controller);
    v6->_featureIdentifier = [controllerCopy featureIdentifier];
    nameOnCard = [controllerCopy nameOnCard];
    nameOnCard = v6->_nameOnCard;
    v6->_nameOnCard = nameOnCard;

    selectedArtworkOption = [controllerCopy selectedArtworkOption];
    artworkOption = v6->_artworkOption;
    v6->_artworkOption = selectedArtworkOption;

    v6->_unavailableToOrder = [(PKPhysicalCardArtworkOption *)v6->_artworkOption optionUnavailable];
  }

  return v6;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = PKOrderPhysicalCardViewController;
  [(PKExplanationViewController *)&v29 viewDidLoad];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  navigationItem = [(PKOrderPhysicalCardViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setDelegate:self];
  [explanationView setShowPrivacyView:0];
  [explanationView setForceShowSetupLaterButton:1];
  [explanationView setTitleHyphenationFactor:0.1];
  [explanationView setImageIgnoresTopSafeArea:1];
  v5 = objc_alloc_init(PKOrderPhysicalCardHeroView);
  physicalCardHeroView = self->_physicalCardHeroView;
  self->_physicalCardHeroView = v5;

  artworkView = [(PKOrderPhysicalCardHeroView *)self->_physicalCardHeroView artworkView];
  nameOnCard = [(PKOrderPhysicalCardController *)self->_controller nameOnCard];
  [artworkView setNameOnCard:nameOnCard];

  v9 = MEMORY[0x1E69DCAB8];
  frontFaceImage = [(PKPhysicalCardArtworkOption *)self->_artworkOption frontFaceImage];
  v11 = [v9 imageWithPKImage:frontFaceImage];
  [artworkView setArtworkImage:v11];

  [explanationView setHeroView:self->_physicalCardHeroView];
  if (self->_unavailableToOrder)
  {
    v12 = PKLocalizedFeatureString();
    v13 = PKLocalizedFeatureString();
  }

  else
  {
    titleOverride = self->_titleOverride;
    if (titleOverride)
    {
      v15 = titleOverride;
    }

    else
    {
      v15 = PKLocalizedFeatureString();
    }

    v12 = v15;
    bodyOverride = self->_bodyOverride;
    if (bodyOverride)
    {
      v17 = bodyOverride;
    }

    else
    {
      v17 = PKLocalizedFeatureString();
    }

    v13 = v17;
    primaryButtonTitleOverride = self->_primaryButtonTitleOverride;
    if (primaryButtonTitleOverride)
    {
      v19 = primaryButtonTitleOverride;
      goto LABEL_12;
    }
  }

  v19 = PKLocalizedFeatureString();
LABEL_12:
  v20 = v19;
  [explanationView setTitleText:v12];
  [explanationView setBodyText:v13];
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  [primaryButton setTitle:v20 forState:0];

  dockView2 = [explanationView dockView];
  footerView = [dockView2 footerView];

  [explanationView setForceShowSetupLaterButton:!self->_unavailableToOrder];
  if (!self->_unavailableToOrder)
  {
    setUpLaterButton = [footerView setUpLaterButton];
    v26 = setUpLaterButton;
    secondaryButtonTitleOverride = self->_secondaryButtonTitleOverride;
    if (secondaryButtonTitleOverride)
    {
      [setUpLaterButton setTitle:secondaryButtonTitleOverride forState:0];
    }

    else
    {
      v28 = PKLocalizedFeatureString();
      [v26 setTitle:v28 forState:0];
    }
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  if (self->_unavailableToOrder)
  {

    [(PKOrderPhysicalCardViewController *)self _handleNextStep];
  }

  else
  {
    v4 = [[PKOrderPhysicalCardAddressConfirmationViewController alloc] initWithOrderPhysicalCardController:self->_controller];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(PKOrderPhysicalCardAddressConfirmationViewController *)v4 setDelegate:WeakRetained];

    navigationController = [(PKOrderPhysicalCardViewController *)self navigationController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PKOrderPhysicalCardViewController_explanationViewDidSelectContinue___block_invoke;
    v7[3] = &unk_1E8011D28;
    v7[4] = self;
    [navigationController pk_presentPaymentSetupViewController:v4 animated:1 completion:v7];
  }
}

uint64_t __70__PKOrderPhysicalCardViewController_explanationViewDidSelectContinue___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _handleNextStep];
  }

  return result;
}

- (void)_handleNextStep
{
  [(PKExplanationViewController *)self showNavigationBarSpinner:1];
  controller = self->_controller;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PKOrderPhysicalCardViewController__handleNextStep__block_invoke;
  v4[3] = &unk_1E8011D00;
  v4[4] = self;
  [(PKOrderPhysicalCardController *)controller nextViewControllerWithCompletion:v4];
}

void __52__PKOrderPhysicalCardViewController__handleNextStep__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 pk_paymentSetupSetHideSetupLaterButton:1];
    v5 = [*(a1 + 32) navigationController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__PKOrderPhysicalCardViewController__handleNextStep__block_invoke_2;
    v6[3] = &unk_1E8011D28;
    v6[4] = *(a1 + 32);
    [v5 pk_presentPaymentSetupViewController:v4 animated:1 completion:v6];
  }

  else
  {
    [*(a1 + 32) showNavigationBarSpinner:0];
    [*(a1 + 32) _terminateSetupFlow];
  }
}

uint64_t __52__PKOrderPhysicalCardViewController__handleNextStep__block_invoke_2(uint64_t a1, char a2)
{
  result = [*(a1 + 32) showNavigationBarSpinner:0];
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 _terminateSetupFlow];
  }

  return result;
}

- (void)_terminateSetupFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKOrderPhysicalCardViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  artworkOption = self->_artworkOption;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__PKOrderPhysicalCardViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8011DC8;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [(PKPhysicalCardArtworkOption *)artworkOption artworkImage:v8];
}

void __61__PKOrderPhysicalCardViewController_preflightWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKOrderPhysicalCardViewController_preflightWithCompletion___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (PKPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end