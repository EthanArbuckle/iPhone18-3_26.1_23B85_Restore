@interface PKPaymentDocumentSubmissionInfoViewController
- (PKPaymentDocumentSubmissionInfoViewController)initWithController:(id)a3 context:(int64_t)a4 featureIdentifier:(unint64_t)a5;
- (unint64_t)onPresentationRemoveViewControllersAfterMarker;
- (void)_reportViewDidAppear:(BOOL)a3;
- (void)_setupSecondaryButtonWithTitle:(id)a3;
- (void)captureController:(id)a3 didChangeStateTo:(int64_t)a4;
- (void)captureController:(id)a3 showLoading:(BOOL)a4;
- (void)didSelectSetupLater;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)updateUIWithState:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPaymentDocumentSubmissionInfoViewController

- (PKPaymentDocumentSubmissionInfoViewController)initWithController:(id)a3 context:(int64_t)a4 featureIdentifier:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentDocumentSubmissionInfoViewController;
  v10 = [(PKExplanationViewController *)&v13 initWithContext:a4];
  v11 = v10;
  if (v10)
  {
    v10->_featureIdentifier = a5;
    objc_storeStrong(&v10->_controller, a3);
    v11->_context = a4;
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
  v3 = [(PKExplanationViewController *)self explanationView];
  [v3 setDelegate:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentDocumentSubmissionInfoViewController;
  [(PKPaymentDocumentSubmissionInfoViewController *)&v4 viewWillAppear:a3];
  [(PKPaymentDocumentSubmissionController *)self->_controller setState:self->_currentState];
  [(PKPaymentDocumentSubmissionController *)self->_controller setSide:self->_currentSide];
  [(PKPaymentDocumentSubmissionController *)self->_controller setDelegate:self];
  [(PKPaymentDocumentSubmissionInfoViewController *)self updateUIWithState:self->_currentState];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentDocumentSubmissionInfoViewController;
  [(PKPaymentDocumentSubmissionInfoViewController *)&v4 viewDidAppear:a3];
  [(PKPaymentDocumentSubmissionInfoViewController *)self _reportViewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentDocumentSubmissionInfoViewController;
  [(PKPaymentDocumentSubmissionInfoViewController *)&v4 viewDidDisappear:a3];
  [(PKPaymentDocumentSubmissionInfoViewController *)self _reportViewDidAppear:0];
}

- (void)_reportViewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v5;
  v6 = MEMORY[0x1E69BA818];
  if (!v3)
  {
    v6 = MEMORY[0x1E69BA820];
  }

  [v5 setObject:*v6 forKey:*MEMORY[0x1E69BA680]];
  [(PKPaymentDocumentSubmissionController *)self->_controller reportAnalyticsEvent:v7 pageTag:*MEMORY[0x1E69BA1C0]];
}

- (void)_setupSecondaryButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(PKExplanationViewController *)self explanationView];
  v6 = [v5 dockView];
  v7 = [v6 footerView];
  v9 = [v7 secondaryActionButton];

  [v9 setTitle:v4 forState:0];
  v8 = [v9 titleLabel];
  [v8 setNumberOfLines:0];

  [v9 addTarget:self action:sel_didSelectSetupLater forControlEvents:64];
}

- (void)updateUIWithState:(int64_t)a3
{
  v5 = [(PKExplanationViewController *)self explanationView];
  v6 = [v5 dockView];
  v7 = [v6 primaryButton];
  v8 = [v6 footerView];
  v9 = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationItem];
  [v5 setImage:0];
  [v5 setShowPrivacyView:0];
  [v6 setButtonExplanationText:0];
  v10 = [(PKPaymentDocumentSubmissionController *)self->_controller preferredLanguage];
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          goto LABEL_23;
        }

        v11 = PKLocalizedApplyFeatureString();
        [v5 setTitleText:v11];

        [v5 setBodyText:0];
        [v5 setShowSpinner:1];
        [v9 setRightBarButtonItem:0];
        v12 = PKUIImageNamed(@"PhotoID");
        [v5 setImage:v12];

        [v7 setHidden:1];
        [v8 setSecondaryActionButton:0];
        [(PKExplanationViewController *)self setShowCancelButton:0];
        v13 = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationItem];
        [v13 setHidesBackButton:1];

        goto LABEL_51;
      }

      v68 = v6;
      v43 = [(PKPaymentDocumentSubmissionController *)self->_controller side];
      controller = self->_controller;
      v74 = v9;
      if (v43)
      {
        [(PKPaymentDocumentSubmissionController *)controller backID];
      }

      else
      {
        [(PKPaymentDocumentSubmissionController *)controller frontID];
      }
      v45 = ;
      v50 = PKLocalizedApplyFeatureString();
      [v5 setTitleText:v50];

      v51 = PKLocalizedApplyFeatureString();
      [v5 setBodyText:v51];

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

      [v5 setImage:v53];
      if (PKUIGetMinScreenWidthType() >= 5)
      {
        [v5 setTopMargin:30.0];
      }

      [v7 setHidden:0];
      v60 = PKLocalizedApplyFeatureString();
      [v7 setTitle:v60 forState:0];

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

      v9 = v74;
LABEL_48:
      v6 = v68;
      goto LABEL_51;
    }

    if (!a3)
    {
      v72 = v9;
      v29 = PKLocalizedApplyFeatureString();
      [v5 setTitleText:v29];

      v30 = PKLocalizedApplyFeatureString();
      [v5 setBodyText:v30];

      [v7 setHidden:0];
      v31 = PKLocalizedApplyFeatureString();
      [v7 setTitle:v31 forState:0];

      v32 = self->_featureIdentifier;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:0];
          [v5 setShowPrivacyView:0];
          v33 = PKLocalizedApplyFeatureString();
          [v6 setButtonExplanationText:v33];

          v34 = [v6 buttonExplanationTextView];
          [v34 setTextAlignment:0];
        }

        else
        {
          [v6 setButtonExplanationText:0];
          [v5 setShowPrivacyView:1];
        }
      }

      [v8 setSecondaryActionButton:0];
      v66 = PKUIImageNamed(@"PhotoID");
      [v5 setImage:v66];

      [(PKExplanationViewController *)self setShowCancelButton:1];
      v67 = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationItem];
      [v67 setHidesBackButton:1];

      [(PKExplanationViewController *)self showNavigationBarSpinner:0];
      v9 = v72;
      goto LABEL_51;
    }

    if (a3 != 1)
    {
      goto LABEL_33;
    }

    PKLocalizedApplyFeatureString();
    v69 = v8;
    v25 = v24 = v9;
    [v5 setTitleText:v25];

    v26 = PKLocalizedApplyFeatureString();
    [v5 setBodyText:v26];

    [v7 setHidden:0];
    v27 = PKLocalizedApplyFeatureString();
    [v7 setTitle:v27 forState:0];

    v28 = PKLocalizedApplyFeatureString();
    [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:v28];

    v9 = v24;
    v8 = v69;
    goto LABEL_32;
  }

  if (a3 > 8)
  {
    if (a3 != 9)
    {
      if (a3 == 10)
      {
LABEL_23:
        v73 = v9;
        v39 = PKLocalizedApplyFeatureString();
        [v5 setTitleText:v39];

        v40 = PKLocalizedApplyFeatureString();
        [v5 setBodyText:v40];

        [v7 setHidden:0];
        v41 = PKLocalizedApplyFeatureString();
        [v7 setTitle:v41 forState:0];

        if (self->_featureIdentifier == 1)
        {
          v42 = PKLocalizedApplyFeatureString();
          [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:v42];
        }

        else
        {
          [v8 setSecondaryActionButton:0];
        }

        v9 = v73;
        goto LABEL_32;
      }

      if (a3 == 11)
      {
        goto LABEL_13;
      }

LABEL_33:
      [(PKExplanationViewController *)self setShowCancelButton:self->_featureIdentifier == 1];
      goto LABEL_51;
    }

    PKLocalizedApplyFeatureString();
    v70 = v8;
    v47 = v46 = v9;
    [v5 setTitleText:v47];

    v48 = PKLocalizedApplyFeatureString();
    [v5 setBodyText:v48];

    [v7 setHidden:0];
    v49 = PKLocalizedApplyFeatureString();
    [v7 setTitle:v49 forState:0];

    v9 = v46;
    v8 = v70;
    [v70 setSecondaryActionButton:0];
LABEL_32:
    [(PKExplanationViewController *)self setShowCancelButton:0];
    [(PKExplanationViewController *)self showNavigationBarSpinner:0];
    goto LABEL_51;
  }

  if (a3 == 6)
  {
LABEL_13:
    v68 = v6;
    v14 = PKLocalizedApplyFeatureString();
    [v5 setTitleText:v14];

    v15 = PKLocalizedApplyFeatureString();
    [v5 setBodyText:v15];

    [v5 showCheckmark:0 animated:0];
    [v5 setShowSpinner:0];
    v71 = v9;
    [v9 setRightBarButtonItem:0];
    v16 = PKUIImageNamed(@"PhotoID");
    [v5 setImage:v16];

    [v7 setHidden:0];
    v17 = PKLocalizedApplyFeatureString();
    v18 = v10;
    v19 = v7;
    [v7 setTitle:v17 forState:0];

    [v8 setSecondaryActionButton:0];
    v20 = self->_featureIdentifier;
    if (v20 == 1)
    {
      v21 = v8;
      v22 = v18;
      v23 = PKLocalizedApplyFeatureString();
      [(PKPaymentDocumentSubmissionInfoViewController *)self _setupSecondaryButtonWithTitle:v23];
    }

    else
    {
      v22 = v18;
      v21 = v8;
      [v8 setSecondaryActionButton:0];
    }

    [(PKExplanationViewController *)self setShowCancelButton:v20 == 1];
    [(PKExplanationViewController *)self showNavigationBarSpinner:0];
    v9 = v71;
    v8 = v21;
    v7 = v19;
    v10 = v22;
    goto LABEL_48;
  }

  if (a3 != 7)
  {
    goto LABEL_23;
  }

  v35 = PKLocalizedApplyFeatureString();
  [v5 setTitleText:v35];

  [v5 setBodyText:0];
  [v5 showCheckmark:1 animated:0];
  [v5 setShowSpinner:0];
  [v9 setRightBarButtonItem:0];
  v36 = PKUIImageNamed(@"PhotoID");
  [v5 setImage:v36];

  [v7 setHidden:1];
  [v8 setSecondaryActionButton:0];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  v37 = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationItem];
  [v37 setHidesBackButton:1];

  v38 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPaymentDocumentSubmissionInfoViewController_updateUIWithState___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_after(v38, MEMORY[0x1E69E96A0], block);
LABEL_51:
  self->_currentState = a3;
  self->_currentSide = [(PKPaymentDocumentSubmissionController *)self->_controller side];
  PKPaymentSetupApplyContextAppearance(self->_context, v5);
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

- (void)explanationViewDidSelectContinue:(id)a3
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

- (void)captureController:(id)a3 showLoading:(BOOL)a4
{
  v4 = a4;
  [(PKExplanationViewController *)self showNavigationBarSpinner:a4];
  v7 = [(PKExplanationViewController *)self explanationView];
  v6 = [v7 dockView];
  [v6 setButtonsEnabled:!v4];
}

- (void)captureController:(id)a3 didChangeStateTo:(int64_t)a4
{
  currentState = self->_currentState;
  if (currentState == 11 || currentState == 6)
  {
    if (a4 == 5)
    {
LABEL_7:

      [(PKPaymentDocumentSubmissionInfoViewController *)self updateUIWithState:a4];
      return;
    }
  }

  else if (currentState == 5 && a4 <= 0xB && ((1 << a4) & 0x8C0) != 0)
  {
    goto LABEL_7;
  }

  v11 = [(PKPaymentDocumentSubmissionController *)self->_controller nextViewController];
  if (v11)
  {
    v10 = [(PKPaymentDocumentSubmissionInfoViewController *)self navigationController];
    [v10 pk_presentPaymentSetupViewController:v11 animated:1 completion:0];
  }

  else
  {
    [(PKPaymentDocumentSubmissionInfoViewController *)self updateUIWithState:a4];
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