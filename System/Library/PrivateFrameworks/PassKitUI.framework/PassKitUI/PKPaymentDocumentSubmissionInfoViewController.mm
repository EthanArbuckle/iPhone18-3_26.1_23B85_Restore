@interface PKPaymentDocumentSubmissionInfoViewController
- (PKPaymentDocumentSubmissionInfoViewController)initWithController:(id)controller context:(int64_t)context featureIdentifier:(unint64_t)identifier;
- (unint64_t)onPresentationRemoveViewControllersAfterMarker;
- (void)_reportViewDidAppear:(BOOL)appear;
- (void)_setupSecondaryButtonWithTitle:(id)title;
- (void)captureController:(id)controller didChangeStateTo:(int64_t)to;
- (void)captureController:(id)controller showLoading:(BOOL)loading;
- (void)didSelectSetupLater;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)updateUIWithState:(int64_t)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPaymentDocumentSubmissionInfoViewController

- (PKPaymentDocumentSubmissionInfoViewController)initWithController:(id)controller context:(int64_t)context featureIdentifier:(unint64_t)identifier
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PKPaymentDocumentSubmissionInfoViewController;
  v10 = [(PKExplanationViewController *)&v13 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    v10->_featureIdentifier = identifier;
    objc_storeStrong(&v10->_controller, controller);
    v11->_context = context;
    v11->_currentState = [(PKPaymentDocumentSubmissionController *)v11->_controller state];
    v11->_currentSide = [(PKPaymentDocumentSubmissionController *)v11->_controller side];
  }

  return v11;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPaymentDocumentSubmissionInfoViewController;
  [(PKExplanationViewController *)&v4 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setDelegate:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentDocumentSubmissionInfoViewController;
  [(PKPaymentDocumentSubmissionInfoViewController *)&v4 viewWillAppear:appear];
  [(PKPaymentDocumentSubmissionController *)self->_controller setState:self->_currentState];
  [(PKPaymentDocumentSubmissionController *)self->_controller setSide:self->_currentSide];
  [(PKPaymentDocumentSubmissionController *)self->_controller setDelegate:self];
  [(PKPaymentDocumentSubmissionInfoViewController *)self updateUIWithState:self->_currentState];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentDocumentSubmissionInfoViewController;
  [(PKPaymentDocumentSubmissionInfoViewController *)&v4 viewDidAppear:appear];
  [(PKPaymentDocumentSubmissionInfoViewController *)self _reportViewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentDocumentSubmissionInfoViewController;
  [(PKPaymentDocumentSubmissionInfoViewController *)&v4 viewDidDisappear:disappear];
  [(PKPaymentDocumentSubmissionInfoViewController *)self _reportViewDidAppear:0];
}

- (void)_reportViewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v5;
  v6 = MEMORY[0x1E69BA818];
  if (!appearCopy)
  {
    v6 = MEMORY[0x1E69BA820];
  }

  [v5 setObject:*v6 forKey:*MEMORY[0x1E69BA680]];
  [(PKPaymentDocumentSubmissionController *)self->_controller reportAnalyticsEvent:v7 pageTag:*MEMORY[0x1E69BA1C0]];
}

- (void)_setupSecondaryButtonWithTitle:(id)title
{
  titleCopy = title;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  secondaryActionButton = [footerView secondaryActionButton];

  [secondaryActionButton setTitle:titleCopy forState:0];
  titleLabel = [secondaryActionButton titleLabel];
  [titleLabel setNumberOfLines:0];

  [secondaryActionButton addTarget:self action:sel_didSelectSetupLater forControlEvents:64];
}

- (void)updateUIWithState:(int64_t)state
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  footerView = [dockView footerView];
  navigationItem = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationItem];
  [explanationView setImage:0];
  [explanationView setShowPrivacyView:0];
  [dockView setButtonExplanationText:0];
  preferredLanguage = [(PKPaymentDocumentSubmissionController *)self->_controller preferredLanguage];
  if (state <= 5)
  {
    if (state > 2)
    {
      if (state != 3)
      {
        if (state == 4)
        {
          goto LABEL_23;
        }

        v11 = PKLocalizedApplyFeatureString();
        [explanationView setTitleText:v11];

        [explanationView setBodyText:0];
        [explanationView setShowSpinner:1];
        [navigationItem setRightBarButtonItem:0];
        v12 = PKUIImageNamed(@"PhotoID");
        [explanationView setImage:v12];

        [primaryButton setHidden:1];
        [footerView setSecondaryActionButton:0];
        [(PKExplanationViewController *)self setShowCancelButton:0];
        navigationItem2 = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationItem];
        [navigationItem2 setHidesBackButton:1];

        goto LABEL_51;
      }

      v68 = dockView;
      side = [(PKPaymentDocumentSubmissionController *)self->_controller side];
      controller = self->_controller;
      v74 = navigationItem;
      if (side)
      {
        [(PKPaymentDocumentSubmissionController *)controller backID];
      }

      else
      {
        [(PKPaymentDocumentSubmissionController *)controller frontID];
      }
      v45 = ;
      v50 = PKLocalizedApplyFeatureString();
      [explanationView setTitleText:v50];

      v51 = PKLocalizedApplyFeatureString();
      [explanationView setBodyText:v51];

      v52 = v45;
      [v52 size];
      v53 = v52;
      if (v54 > 0.0)
      {
        [v52 size];
        v53 = v52;
        if (v55 > 0.0)
        {
          [v52 size];
          v57 = v56;
          [v52 size];
          height = v80.height;
          v80.width = v57;
          UIGraphicsBeginImageContextWithOptions(v80, 0, 1.0);
          v59 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v57, height, 30.0}];
          [v59 addClip];

          [v52 drawInRect:{0.0, 0.0, v57, height}];
          v53 = UIGraphicsGetImageFromCurrentImageContext();

          UIGraphicsEndImageContext();
        }
      }

      [explanationView setImage:v53];
      if (PKUIGetMinScreenWidthType() >= 5)
      {
        [explanationView setTopMargin:30.0];
      }

      [primaryButton setHidden:0];
      v60 = PKLocalizedApplyFeatureString();
      [primaryButton setTitle:v60 forState:0];

      v61 = PKLocalizedApplyFeatureString();
      [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:v61];

      [(PKExplanationViewController *)self showNavigationBarSpinner:0];
      featureIdentifier = self->_featureIdentifier;
      if (featureIdentifier == 1 && (PKRunningInPassbook() & 1) == 0 && (PKRunningInViewService() & 1) == 0 && os_variant_has_internal_ui() && PKCIPSaveImages())
      {
        objc_initWeak(&location, self);
        v63 = MEMORY[0x1E69DC628];
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __67__PKPaymentDocumentSubmissionInfoViewController_updateUIWithState___block_invoke;
        v76[3] = &unk_1E8012328;
        objc_copyWeak(&v78, &location);
        v77 = v52;
        v64 = [v63 actionWithHandler:v76];
        v65 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 primaryAction:v64];
        [v74 setRightBarButtonItem:v65];

        objc_destroyWeak(&v78);
        objc_destroyWeak(&location);
      }

      else
      {
        [(PKExplanationViewController *)self setShowCancelButton:featureIdentifier == 1];
      }

      navigationItem = v74;
LABEL_48:
      dockView = v68;
      goto LABEL_51;
    }

    if (!state)
    {
      v72 = navigationItem;
      v29 = PKLocalizedApplyFeatureString();
      [explanationView setTitleText:v29];

      v30 = PKLocalizedApplyFeatureString();
      [explanationView setBodyText:v30];

      [primaryButton setHidden:0];
      v31 = PKLocalizedApplyFeatureString();
      [primaryButton setTitle:v31 forState:0];

      v32 = self->_featureIdentifier;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:0];
          [explanationView setShowPrivacyView:0];
          v33 = PKLocalizedApplyFeatureString();
          [dockView setButtonExplanationText:v33];

          buttonExplanationTextView = [dockView buttonExplanationTextView];
          [buttonExplanationTextView setTextAlignment:0];
        }

        else
        {
          [dockView setButtonExplanationText:0];
          [explanationView setShowPrivacyView:1];
        }
      }

      [footerView setSecondaryActionButton:0];
      v66 = PKUIImageNamed(@"PhotoID");
      [explanationView setImage:v66];

      [(PKExplanationViewController *)self setShowCancelButton:1];
      navigationItem3 = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationItem];
      [navigationItem3 setHidesBackButton:1];

      [(PKExplanationViewController *)self showNavigationBarSpinner:0];
      navigationItem = v72;
      goto LABEL_51;
    }

    if (state != 1)
    {
      goto LABEL_33;
    }

    PKLocalizedApplyFeatureString();
    v69 = footerView;
    v25 = v24 = navigationItem;
    [explanationView setTitleText:v25];

    v26 = PKLocalizedApplyFeatureString();
    [explanationView setBodyText:v26];

    [primaryButton setHidden:0];
    v27 = PKLocalizedApplyFeatureString();
    [primaryButton setTitle:v27 forState:0];

    v28 = PKLocalizedApplyFeatureString();
    [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:v28];

    navigationItem = v24;
    footerView = v69;
    goto LABEL_32;
  }

  if (state > 8)
  {
    if (state != 9)
    {
      if (state == 10)
      {
LABEL_23:
        v73 = navigationItem;
        v39 = PKLocalizedApplyFeatureString();
        [explanationView setTitleText:v39];

        v40 = PKLocalizedApplyFeatureString();
        [explanationView setBodyText:v40];

        [primaryButton setHidden:0];
        v41 = PKLocalizedApplyFeatureString();
        [primaryButton setTitle:v41 forState:0];

        if (self->_featureIdentifier == 1)
        {
          v42 = PKLocalizedApplyFeatureString();
          [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:v42];
        }

        else
        {
          [footerView setSecondaryActionButton:0];
        }

        navigationItem = v73;
        goto LABEL_32;
      }

      if (state == 11)
      {
        goto LABEL_13;
      }

LABEL_33:
      [(PKExplanationViewController *)self setShowCancelButton:self->_featureIdentifier == 1];
      goto LABEL_51;
    }

    PKLocalizedApplyFeatureString();
    v70 = footerView;
    v47 = v46 = navigationItem;
    [explanationView setTitleText:v47];

    v48 = PKLocalizedApplyFeatureString();
    [explanationView setBodyText:v48];

    [primaryButton setHidden:0];
    v49 = PKLocalizedApplyFeatureString();
    [primaryButton setTitle:v49 forState:0];

    navigationItem = v46;
    footerView = v70;
    [v70 setSecondaryActionButton:0];
LABEL_32:
    [(PKExplanationViewController *)self setShowCancelButton:0];
    [(PKExplanationViewController *)self showNavigationBarSpinner:0];
    goto LABEL_51;
  }

  if (state == 6)
  {
LABEL_13:
    v68 = dockView;
    v14 = PKLocalizedApplyFeatureString();
    [explanationView setTitleText:v14];

    v15 = PKLocalizedApplyFeatureString();
    [explanationView setBodyText:v15];

    [explanationView showCheckmark:0 animated:0];
    [explanationView setShowSpinner:0];
    v71 = navigationItem;
    [navigationItem setRightBarButtonItem:0];
    v16 = PKUIImageNamed(@"PhotoID");
    [explanationView setImage:v16];

    [primaryButton setHidden:0];
    v17 = PKLocalizedApplyFeatureString();
    v18 = preferredLanguage;
    v19 = primaryButton;
    [primaryButton setTitle:v17 forState:0];

    [footerView setSecondaryActionButton:0];
    v20 = self->_featureIdentifier;
    if (v20 == 1)
    {
      v21 = footerView;
      v22 = v18;
      v23 = PKLocalizedApplyFeatureString();
      [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:v23];
    }

    else
    {
      v22 = v18;
      v21 = footerView;
      [footerView setSecondaryActionButton:0];
    }

    [(PKExplanationViewController *)self setShowCancelButton:v20 == 1];
    [(PKExplanationViewController *)self showNavigationBarSpinner:0];
    navigationItem = v71;
    footerView = v21;
    primaryButton = v19;
    preferredLanguage = v22;
    goto LABEL_48;
  }

  if (state != 7)
  {
    goto LABEL_23;
  }

  v35 = PKLocalizedApplyFeatureString();
  [explanationView setTitleText:v35];

  [explanationView setBodyText:0];
  [explanationView showCheckmark:1 animated:0];
  [explanationView setShowSpinner:0];
  [navigationItem setRightBarButtonItem:0];
  v36 = PKUIImageNamed(@"PhotoID");
  [explanationView setImage:v36];

  [primaryButton setHidden:1];
  [footerView setSecondaryActionButton:0];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  navigationItem4 = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationItem];
  [navigationItem4 setHidesBackButton:1];

  v38 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPaymentDocumentSubmissionInfoViewController_updateUIWithState___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_after(v38, MEMORY[0x1E69E96A0], block);
LABEL_51:
  self->_currentState = state;
  self->_currentSide = [(PKPaymentDocumentSubmissionController *)self->_controller side];
  PKPaymentSetupApplyContextAppearance(self->_context, explanationView);
}

void __67__PKPaymentDocumentSubmissionInfoViewController_updateUIWithState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = UIImageJPEGRepresentation(*(a1 + 32), 0.9);
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, 0}];
      v5 = [objc_alloc(MEMORY[0x1E69CD9F8]) initWithActivityItems:v4 applicationActivities:0];
      [v6 presentViewController:v5 animated:1 completion:0];
    }

    WeakRetained = v6;
  }
}

void __67__PKPaymentDocumentSubmissionInfoViewController_updateUIWithState___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1080) nextViewController];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 navigationController];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__PKPaymentDocumentSubmissionInfoViewController_updateUIWithState___block_invoke_3;
    v5[3] = &unk_1E8011D28;
    v5[4] = *(a1 + 32);
    [v4 pk_presentPaymentSetupViewController:v2 animated:1 completion:v5];
  }

  else
  {
    [v3[135] terminateSetupFlow];
  }
}

uint64_t __67__PKPaymentDocumentSubmissionInfoViewController_updateUIWithState___block_invoke_3(uint64_t result, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Error: Failed to present view controller terminating setup flow from: %@", &v6, 0xCu);
    }

    return [*(*(v2 + 32) + 1080) terminateSetupFlow];
  }

  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v8[1] = *MEMORY[0x1E69E9840];
  controller = self->_controller;
  v7 = *MEMORY[0x1E69BA440];
  v8[0] = *MEMORY[0x1E69BA500];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(PKPaymentDocumentSubmissionController *)controller reportAnalyticsEvent:v5 pageTag:*MEMORY[0x1E69BA1C0]];

  currentState = self->_currentState;
  if (currentState > 5)
  {
    if (currentState > 8)
    {
      if (currentState == 9)
      {
        [(PKPaymentDocumentSubmissionController *)self->_controller terminateSetupFlow];
        return;
      }

      if (currentState != 10)
      {
        if (currentState != 11)
        {
          return;
        }

LABEL_17:
        [(PKPaymentDocumentSubmissionController *)self->_controller tryUploadAgain];
        return;
      }

LABEL_10:
      [(PKPaymentDocumentSubmissionController *)self->_controller contactApplePressed];
      return;
    }

    if (currentState == 6)
    {
      goto LABEL_17;
    }

    if (currentState != 8)
    {
      return;
    }

    goto LABEL_16;
  }

  if (currentState <= 2)
  {
    if (!currentState)
    {
      [(PKPaymentDocumentSubmissionController *)self->_controller userWantsToContinue];
      return;
    }

    if (currentState != 1)
    {
      return;
    }

    goto LABEL_10;
  }

  if (currentState == 3)
  {
    [(PKPaymentDocumentSubmissionController *)self->_controller userApprovedCapturedID];
    return;
  }

  if (currentState == 4)
  {
LABEL_16:
    [(PKPaymentDocumentSubmissionController *)self->_controller scanAgain];
  }
}

- (void)didSelectSetupLater
{
  currentState = self->_currentState;
  if (currentState > 0xB)
  {
    goto LABEL_14;
  }

  if (((1 << currentState) & 0x503) != 0)
  {
    PKAnalyticsSendEventForFeature();
    controller = self->_controller;

    [(PKPaymentDocumentSubmissionController *)controller terminateSetupFlow];
    return;
  }

  if (((1 << currentState) & 0x840) != 0)
  {
    v5 = self->_controller;

    [(PKPaymentDocumentSubmissionController *)v5 userWantsToCancel];
    return;
  }

  if (currentState == 3)
  {
    v6 = self->_controller;

    [(PKPaymentDocumentSubmissionController *)v6 userRejectedCapturedID];
  }

  else
  {
LABEL_14:
    v7 = self->_controller;

    [(PKPaymentDocumentSubmissionController *)v7 scanAgain];
  }
}

- (void)captureController:(id)controller showLoading:(BOOL)loading
{
  loadingCopy = loading;
  [(PKExplanationViewController *)self showNavigationBarSpinner:loading];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:!loadingCopy];
}

- (void)captureController:(id)controller didChangeStateTo:(int64_t)to
{
  currentState = self->_currentState;
  if (currentState == 11 || currentState == 6)
  {
    if (to == 5)
    {
LABEL_7:

      [(PKPaymentDocumentSubmissionInfoViewController *)self updateUIWithState:to];
      return;
    }
  }

  else if (currentState == 5 && to <= 0xB && ((1 << to) & 0x8C0) != 0)
  {
    goto LABEL_7;
  }

  nextViewController = [(PKPaymentDocumentSubmissionController *)self->_controller nextViewController];
  if (nextViewController)
  {
    navigationController = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationController];
    [navigationController pk_presentPaymentSetupViewController:nextViewController animated:1 completion:0];
  }

  else
  {
    [(PKPaymentDocumentSubmissionInfoViewController *)self updateUIWithState:to];
  }
}

- (unint64_t)onPresentationRemoveViewControllersAfterMarker
{
  if (self->_currentState)
  {
    return 4;
  }

  if (self->_featureIdentifier == 2)
  {
    return 3;
  }

  return 0;
}

@end