@interface PKPaymentSetupCredentialsViewController
- (PKPaymentSetupCredentialsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 credentials:(id)a5 product:(id)a6 allowsManualEntry:(BOOL)a7 reporter:(id)a8;
- (PKPaymentSetupCredentialsViewControllerFlowDelegate)flowDelegate;
- (void)_beginReportingIfNecessary;
- (void)_configureAndUpdateDockView;
- (void)_continueButtonPressed;
- (void)_disableEditStateIfNecessary;
- (void)_endReportingIfNecessary;
- (void)_presentCredentialDoubleCheckAlert:(id)a3 continueHandler:(id)a4 setupLaterHandler:(id)a5;
- (void)_presentManualAddController;
- (void)_presentProvisioningFlowForCredentials:(id)a3;
- (void)_reportSelectedCredentials:(id)a3;
- (void)_requestAuthAndStartProvisioningForCredentials:(id)a3;
- (void)_requestExternalizedAuthIfNeededWithCompletion:(id)a3;
- (void)_setUserInteractionEnabled:(BOOL)a3;
- (void)_setupLaterTapped;
- (void)_terminateSetupFlow;
- (void)_toggleEdit;
- (void)_updateEditButtonVisibility;
- (void)dealloc;
- (void)presentRefundFlowForCredential:(id)a3;
- (void)presentUnavailableDetailsForCredential:(id)a3;
- (void)reloadAnimated:(BOOL)a3;
- (void)setShowNoResultsView:(BOOL)a3;
- (void)showCredentialDeletionError;
- (void)showDeleteConfirmationWithCredential:(id)a3 completion:(id)a4;
- (void)showMaxSelectionAlertForCredential:(id)a3;
- (void)showUnableToDeleteCredentialError;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPaymentSetupCredentialsViewController

- (PKPaymentSetupCredentialsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 credentials:(id)a5 product:(id)a6 allowsManualEntry:(BOOL)a7 reporter:(id)a8
{
  v9 = a7;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = PKPaymentSetupCredentialsViewController;
  v19 = [(PKPaymentSetupOptionsViewController *)&v24 initWithContext:a4];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_provisioningController, a3);
    v21 = [[PKPaymentSetupCredentialsSectionController alloc] initWithCredentials:v16 provisioningController:v15 context:a4 product:v17];
    sectionController = v20->_sectionController;
    v20->_sectionController = v21;

    [(PKPaymentSetupCredentialsSectionController *)v20->_sectionController setDelegate:v20];
    [(PKPaymentSetupCredentialsSectionController *)v20->_sectionController setDataChangeDelegate:v20];
    objc_storeStrong(&v20->_product, a6);
    [(PKPaymentSetupOptionsViewController *)v20 setAllowsManualEntry:v9];
    [(PKDynamicCollectionViewController *)v20 setUseItemIdentityWhenUpdating:1];
    objc_storeStrong(&v20->_reporter, a8);
  }

  return v20;
}

- (void)dealloc
{
  [(LAContext *)self->_localAuthenticationContext invalidate];
  v3.receiver = self;
  v3.super_class = PKPaymentSetupCredentialsViewController;
  [(PKPaymentSetupCredentialsViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPaymentSetupCredentialsViewController;
  [(PKPaymentSetupOptionsViewController *)&v15 viewDidLoad];
  v3 = [(PKDynamicCollectionViewController *)self collectionView];
  [v3 setAllowsMultipleSelection:1];
  [v3 setAllowsSelectionDuringEditing:1];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9A70]];
  v4 = [(PKPaymentSetupProduct *)self->_product configuration];
  v5 = [v4 type];

  if (v5 == 6)
  {
    v7 = PKLocalizedPaymentString(&cfstr_PaymentSetupBa.isa);
    v9 = [(PKPaymentSetupProduct *)self->_product displayName];
    v8 = PKLocalizedPaymentString(&cfstr_PaymentSetupBa_0.isa, &stru_1F3BD5BF0.isa, v9);
  }

  else
  {
    if (v5 != 11)
    {
      if (v5 == 9)
      {
        v6 = PKLocalizedAquamanString(&cfstr_AccountsOnFile.isa);
      }

      else
      {
        [(PKPaymentSetupOptionsViewController *)self context];
        if (PKPaymentSetupContextIsSetupAssistant())
        {
          v7 = PKLocalizedPaymentString(&cfstr_PaymentSetupYo_2.isa);
          v10 = @"PAYMENT_SETUP_YOUR_CARDS_SUBTITLE_SETUP_ASSISTANT";
LABEL_11:
          v8 = PKLocalizedPaymentString(&v10->isa);
          goto LABEL_12;
        }

        v6 = PKLocalizedPaymentString(&cfstr_PaymentSetupYo_4.isa);
      }

      v7 = v6;
      v10 = @"PAYMENT_SETUP_YOUR_CARDS_SUBTITLE";
      goto LABEL_11;
    }

    v7 = PKLocalizedPaymentString(&cfstr_PaymentSetupCa_0.isa);
    v8 = PKLocalizedPaymentString(&cfstr_PaymentSetupCa_1.isa);
    self->_showPrivacyDisclosure = 2;
  }

LABEL_12:
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v7];
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v8];
  [(PKPaymentSetupOptionsViewController *)self setNoResultsIcon:0];
  [(PKPaymentSetupOptionsViewController *)self setNoResultsTitle:0];
  v11 = PKLocalizedPaymentString(&cfstr_PaymentSetupYo_5.isa);
  [(PKPaymentSetupOptionsViewController *)self setNoResultsSubtitle:v11];

  [(PKPaymentSetupCredentialsViewController *)self _configureAndUpdateDockView];
  v16[0] = self->_sectionController;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(PKPaymentSetupOptionsViewController *)self setSections:v12 animated:0];

  [(PKPaymentSetupCredentialsViewController *)self _beginReportingIfNecessary];
  v13 = [(PKPaymentSetupOptionsViewController *)self context];
  v14 = [(PKPaymentSetupCredentialsViewController *)self view];
  PKPaymentSetupApplyContextAppearance(v13, v14);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupCredentialsViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:a3];
  [(PKPaymentSetupCredentialsSectionController *)self->_sectionController reloadCredentialStores];
  [(PKPaymentSetupCredentialsViewController *)self _updateEditButtonVisibility];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupCredentialsViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupCredentialsViewController;
  [(PKDynamicCollectionViewController *)&v4 viewWillDisappear:a3];
  [(PKPaymentSetupCredentialsViewController *)self _endReportingIfNecessary];
}

- (void)_beginReportingIfNecessary
{
  v3 = *MEMORY[0x1E69BB728];
  v4 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB728]];

  if (!v4)
  {
    self->_didBeginWalletProvisioningSubject = 1;
    v5 = MEMORY[0x1E69B8540];

    [v5 beginSubjectReporting:v3];
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginWalletProvisioningSubject)
  {
    self->_didBeginWalletProvisioningSubject = 0;
    [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB728]];
  }
}

- (void)reloadAnimated:(BOOL)a3
{
  v3 = a3;
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = self->_sectionController;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6.receiver = self;
  v6.super_class = PKPaymentSetupCredentialsViewController;
  [(PKPaymentSetupOptionsViewController *)&v6 setSections:v5 animated:v3];
}

- (void)presentRefundFlowForCredential:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(PKPaymentSetupCredentialsViewController *)self _presentProvisioningFlowForCredentials:v6, v7, v8];
}

- (void)presentUnavailableDetailsForCredential:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(PKPaymentSetupCredentialsViewController *)self _presentProvisioningFlowForCredentials:v6, v7, v8];
}

- (void)showMaxSelectionAlertForCredential:(id)a3
{
  product = self->_product;
  v5 = a3;
  v6 = [(PKPaymentSetupProduct *)product configuration];
  v7 = [v6 type];

  v8 = [(PKPaymentSetupCredentialsSectionController *)self->_sectionController maximumNumberOfSelectableCredentials];
  if (v8 == -1)
  {
    v9 = PKLocalizedPaymentString(&cfstr_MaxCardsSelect.isa);
  }

  else
  {
    if (v7 == 9)
    {
      PKLocalizedAquamanString(&cfstr_MaxAccountsSel.isa, &cfstr_Lu.isa, v8);
    }

    else
    {
      PKLocalizedString(&cfstr_MaxCardsSelect_0.isa, &cfstr_Lu.isa, v8);
    }
    v9 = ;
  }

  v16 = v9;
  v10 = [v5 longDescription];

  v11 = PKLocalizedPaymentString(&cfstr_MaxCardsSelect_1.isa, &stru_1F3BD5BF0.isa, v10);

  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v16 message:v11 preferredStyle:1];
  v13 = MEMORY[0x1E69DC648];
  v14 = PKLocalizedPaymentString(&cfstr_MaxCardsSelect_2.isa);
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v12 addAction:v15];

  [(PKPaymentSetupCredentialsViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)showDeleteConfirmationWithCredential:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PKPaymentSetupCredentialsViewController *)self presentedViewController];
    if (v8)
    {

LABEL_5:
      v7[2](v7, 0);
      goto LABEL_6;
    }

    v9 = [(PKPaymentSetupCredentialsViewController *)self navigationController];
    v10 = [v9 topViewController];

    if (v10 != self)
    {
      goto LABEL_5;
    }

    if ([v6 isFPANCredential])
    {
      v11 = @"DELETE_AUTOFILL_CARD_CONFIRMATION_ALERT_TITLE";
    }

    else
    {
      v11 = @"DELETE_CARD_CONFIRMATION_ALERT_TITLE";
    }

    v12 = PKLocalizedPaymentString(&v11->isa);
    v13 = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
    v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v12 preferredStyle:v13];
    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedPaymentString(&cfstr_DeleteCardConf_0.isa);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __91__PKPaymentSetupCredentialsViewController_showDeleteConfirmationWithCredential_completion___block_invoke;
    v27[3] = &unk_1E8011248;
    v17 = v7;
    v28 = v17;
    v18 = [v15 actionWithTitle:v16 style:2 handler:v27];
    [v14 addAction:v18];

    v19 = MEMORY[0x1E69DC648];
    v20 = PKLocalizedPaymentString(&cfstr_DeleteCardConf_1.isa);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __91__PKPaymentSetupCredentialsViewController_showDeleteConfirmationWithCredential_completion___block_invoke_2;
    v25 = &unk_1E8011248;
    v26 = v17;
    v21 = [v19 actionWithTitle:v20 style:1 handler:&v22];
    [v14 addAction:{v21, v22, v23, v24, v25}];

    [(PKPaymentSetupCredentialsViewController *)self presentViewController:v14 animated:1 completion:0];
  }

LABEL_6:
}

- (void)showUnableToDeleteCredentialError
{
  v3 = [(PKPaymentSetupCredentialsViewController *)self presentedViewController];
  if (!v3)
  {
    v4 = [(PKPaymentSetupCredentialsViewController *)self navigationController];
    v5 = [v4 topViewController];

    if (v5 != self)
    {
      return;
    }

    v11 = PKLocalizedPaymentString(&cfstr_UnableToDelete.isa);
    v6 = PKLocalizedPaymentString(&cfstr_UnableToDelete_0.isa);
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v6 preferredStyle:1];
    v8 = MEMORY[0x1E69DC648];
    v9 = PKLocalizedPaymentString(&cfstr_UnableToDelete_1.isa);
    v10 = [v8 actionWithTitle:v9 style:1 handler:0];
    [v7 addAction:v10];

    [(PKPaymentSetupCredentialsViewController *)self presentViewController:v7 animated:1 completion:0];
    v3 = v11;
  }
}

- (void)showCredentialDeletionError
{
  v3 = [(PKPaymentSetupCredentialsViewController *)self presentedViewController];
  if (!v3)
  {
    v4 = [(PKPaymentSetupCredentialsViewController *)self navigationController];
    v5 = [v4 topViewController];

    if (v5 != self)
    {
      return;
    }

    v11 = PKLocalizedPaymentString(&cfstr_DeleteCardErro.isa);
    v6 = PKLocalizedPaymentString(&cfstr_DeleteCardErro_0.isa);
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v6 preferredStyle:1];
    v8 = MEMORY[0x1E69DC648];
    v9 = PKLocalizedPaymentString(&cfstr_DeleteCardErro_1.isa);
    v10 = [v8 actionWithTitle:v9 style:1 handler:0];
    [v7 addAction:v10];

    [(PKPaymentSetupCredentialsViewController *)self presentViewController:v7 animated:1 completion:0];
    v3 = v11;
  }
}

- (void)setShowNoResultsView:(BOOL)a3
{
  [(PKPaymentSetupOptionsViewController *)self setShowNoResultsView:a3 animated:1];
  [(PKPaymentSetupCredentialsViewController *)self _updateEditButtonVisibility];

  [(PKPaymentSetupCredentialsViewController *)self _disableEditStateIfNecessary];
}

- (void)_configureAndUpdateDockView
{
  v3 = [(PKPaymentSetupCredentialsSectionController *)self->_sectionController credentialSelectionState];
  v4 = [(PKPaymentSetupOptionsViewController *)self allowsManualEntry];
  [(PKPaymentSetupOptionsViewController *)self context];
  IsExpressSetupAssistant = PKPaymentSetupContextIsExpressSetupAssistant();
  v6 = IsExpressSetupAssistant;
  if (!v3.var0 && !v4 && (IsExpressSetupAssistant & 1) == 0)
  {
    self->_isDockViewConfigured = 0;

    [(PKPaymentSetupOptionsViewController *)self removeSetupDockView];
    return;
  }

  v21 = [(PKPaymentSetupOptionsViewController *)self dockView];
  if (!self->_isDockViewConfigured)
  {
    self->_isDockViewConfigured = 1;
    v7 = [v21 primaryButton];
    [v7 setEnabled:1];
    [v7 addTarget:self action:sel__continueButtonPressed forControlEvents:0x2000];
    v8 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [v7 setTitle:v8 forState:0];

    [v21 setButtonsEnabled:1];
    v9 = [v21 footerView];
    v10 = v9;
    if (v6)
    {
      v11 = [v9 setUpLaterButton];
      [v11 addTarget:self action:sel__setupLaterTapped forControlEvents:0x2000];
    }

    if (v4)
    {
      v12 = [v10 manualEntryButton];
      [v12 addTarget:self action:sel__presentManualAddController forControlEvents:0x2000];
      v13 = [(PKPaymentSetupProduct *)self->_product configuration];
      v14 = [v13 type];

      if (v14 == 9)
      {
        PKLocalizedAquamanString(&cfstr_AddADifferentA.isa);
      }

      else
      {
        PKLocalizedPaymentString(&cfstr_AddANewCard.isa);
      }
      v15 = ;
      [v12 setTitle:v15 forState:0];

      [v10 setButtonsEnabled:1];
      if (v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      [v10 setButtonsEnabled:1];
      [v10 setManualEntryButton:0];
      if (v6)
      {
        goto LABEL_18;
      }
    }

    [v10 setSetUpLaterButton:0];
LABEL_18:
  }

  showPrivacyDisclosure = self->_showPrivacyDisclosure;
  if (showPrivacyDisclosure == 1 || !showPrivacyDisclosure && (PKPaymentSetupContextIsNonExpressSetupAssistant() & 1) == 0)
  {
    v17 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:223];
    [(PKPaymentSetupOptionsViewController *)self setPrivacyLink:v17];
  }

  v18 = [(PKDynamicCollectionViewController *)self collectionView];
  v19 = [v18 isEditing];

  LOBYTE(v18) = v19 ^ 1;
  [v21 setButtonsEnabled:v19 ^ 1u];
  v20 = [v21 primaryButton];
  [v20 setEnabled:v18 & ((*&v3 & 0x100) >> 8)];
}

- (void)_presentCredentialDoubleCheckAlert:(id)a3 continueHandler:(id)a4 setupLaterHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(PKPaymentSetupOptionsViewController *)self context];
  if (PKPaymentSetupContextIsiOSSetupAssistant())
  {
    v11 = [v8 accountCredential];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 account];
      v14 = MEMORY[0x1E69DC650];
      v15 = PKLocalizedFeatureString();
      v16 = PKLocalizedFeatureString();
      v17 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

      v18 = MEMORY[0x1E69DC648];
      v19 = PKLocalizedFeatureString();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __112__PKPaymentSetupCredentialsViewController__presentCredentialDoubleCheckAlert_continueHandler_setupLaterHandler___block_invoke;
      v28[3] = &unk_1E8016480;
      v28[4] = self;
      v29 = v8;
      v30 = v9;
      v20 = [v18 actionWithTitle:v19 style:0 handler:v28];
      [v17 addAction:v20];

      v21 = MEMORY[0x1E69DC648];
      v22 = PKLocalizedFeatureString();
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __112__PKPaymentSetupCredentialsViewController__presentCredentialDoubleCheckAlert_continueHandler_setupLaterHandler___block_invoke_2;
      v25[3] = &unk_1E8016458;
      v26 = v13;
      v27 = v10;
      v23 = v13;
      v24 = [v21 actionWithTitle:v22 style:1 handler:v25];
      [v17 addAction:v24];

      [(PKPaymentSetupCredentialsViewController *)self presentViewController:v17 animated:1 completion:0];
    }

    else if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    v10[2](v10);
  }
}

uint64_t __112__PKPaymentSetupCredentialsViewController__presentCredentialDoubleCheckAlert_continueHandler_setupLaterHandler___block_invoke(void *a1)
{
  [*(a1[4] + 1304) setCredential:a1[5] selected:1];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __112__PKPaymentSetupCredentialsViewController__presentCredentialDoubleCheckAlert_continueHandler_setupLaterHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B8400] sharedInstance];
  v3 = [*(a1 + 32) accountIdentifier];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __112__PKPaymentSetupCredentialsViewController__presentCredentialDoubleCheckAlert_continueHandler_setupLaterHandler___block_invoke_3;
  v4[3] = &unk_1E8010B50;
  v5 = *(a1 + 40);
  [v2 scheduleSetupReminderForAccountWithIdentifier:v3 completion:v4];
}

void __112__PKPaymentSetupCredentialsViewController__presentCredentialDoubleCheckAlert_continueHandler_setupLaterHandler___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__PKPaymentSetupCredentialsViewController__presentCredentialDoubleCheckAlert_continueHandler_setupLaterHandler___block_invoke_4;
  block[3] = &unk_1E8010B50;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __112__PKPaymentSetupCredentialsViewController__presentCredentialDoubleCheckAlert_continueHandler_setupLaterHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_continueButtonPressed
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKPaymentSetupCredentialsViewController__continueButtonPressed__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v3 = v4;
  PKRequestContactAccessWithCompletion();
}

void __65__PKPaymentSetupCredentialsViewController__continueButtonPressed__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1304) selectedCredentials];
  [*(a1 + 32) _requestAuthAndStartProvisioningForCredentials:v2];
}

void __65__PKPaymentSetupCredentialsViewController__continueButtonPressed__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1304) unselectedCredentialRequiringAction];
  v3 = v2;
  if (v2)
  {
    [*(a1 + 32) _presentCredentialDoubleCheckAlert:v2 continueHandler:*(a1 + 40) setupLaterHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_setupLaterTapped
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PKPaymentSetupCredentialsViewController__setupLaterTapped__block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PKPaymentSetupCredentialsViewController__setupLaterTapped__block_invoke_2;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = _Block_copy(v6);
  v5 = [(PKPaymentSetupCredentialsSectionController *)self->_sectionController availableCredentialRequiringAction];
  if (v5)
  {
    [(PKPaymentSetupCredentialsViewController *)self _presentCredentialDoubleCheckAlert:v5 continueHandler:v3 setupLaterHandler:v4];
  }

  else
  {
    v4[2](v4);
  }
}

void __60__PKPaymentSetupCredentialsViewController__setupLaterTapped__block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 1304) selectedCredentials];
  v2 = [v4 count];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _requestAuthAndStartProvisioningForCredentials:v4];
  }

  else
  {
    [v3 _terminateSetupFlow];
  }
}

- (void)_presentManualAddController
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:1];
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained credentialsViewControllerDidSelectManualEntry:self];
}

- (void)_reportSelectedCredentials:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v5 = *MEMORY[0x1E69BA680];
  v6[0] = *MEMORY[0x1E69BA6F8];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportEvent:v4];
}

- (void)_requestAuthAndStartProvisioningForCredentials:(id)a3
{
  v4 = a3;
  [(PKPaymentSetupCredentialsViewController *)self _setUserInteractionEnabled:0];
  [(PKPaymentSetupCredentialsViewController *)self _reportSelectedCredentials:v4];
  if ([(PKPaymentSetupCredentialsSectionController *)self->_sectionController doesContainCredentialThatRequiresAuth:v4])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __90__PKPaymentSetupCredentialsViewController__requestAuthAndStartProvisioningForCredentials___block_invoke;
    v5[3] = &unk_1E80228A8;
    v5[4] = self;
    v6 = v4;
    [(PKPaymentSetupCredentialsViewController *)self _requestExternalizedAuthIfNeededWithCompletion:v5];
  }

  else
  {
    [(PKPaymentSetupCredentialsViewController *)self _presentProvisioningFlowForCredentials:v4];
  }
}

void __90__PKPaymentSetupCredentialsViewController__requestAuthAndStartProvisioningForCredentials___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = *(a1 + 40);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [*(*(&v13 + 1) + 8 * v11) state];
            [v12 setExternalizedAuth:v6];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    [*(a1 + 32) _presentProvisioningFlowForCredentials:{*(a1 + 40), v13}];
  }

  else
  {
    [*(a1 + 32) _setUserInteractionEnabled:1];
  }
}

- (void)_presentProvisioningFlowForCredentials:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained credentialsViewController:self didSelectCredentials:v4];
}

- (void)_setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKDynamicCollectionViewController *)self collectionView];
  [v5 setUserInteractionEnabled:v3];

  v6 = [(PKPaymentSetupCredentialsViewController *)self view];
  [v6 setUserInteractionEnabled:v3];

  v7 = [(PKPaymentSetupCredentialsViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:v3];

  if (self->_isDockViewConfigured)
  {
    v14 = [(PKPaymentSetupOptionsViewController *)self dockView];
    v9 = [v14 footerView];
    [v9 setButtonsEnabled:v3];

    v10 = [v14 primaryButton];
    v11 = v10;
    if (v3)
    {
      v12 = [(PKPaymentSetupCredentialsSectionController *)self->_sectionController selectedCredentials];
      [v11 setEnabled:{objc_msgSend(v12, "count") != 0}];
    }

    else
    {
      [v10 setEnabled:0];
    }

    v13 = [v14 primaryButton];
    [v13 setShowSpinner:v3 ^ 1];
  }
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_flowDelegate);
    [v5 credentialsViewControllerDidTerminate:self];
  }

  else
  {
    [(PKPaymentSetupCredentialsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_requestExternalizedAuthIfNeededWithCompletion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentSetupOptionsViewController *)self context];
  if (PKPaymentSetupContextIsSetupAssistant() && ((v6 = [(PKPaymentProvisioningController *)self->_provisioningController hasExternalizedAuth], v7 = v6, v5 != 5) || v6))
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"N";
      if (v7)
      {
        v15 = @"Y";
      }

      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "CredentialsVC requestExternaliziedAuthIfNeededWithCompletion returning %@ for buddy.", buf, 0xCu);
    }

    v4[2](v4, 1, 0);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"N";
      if (v5 == 4)
      {
        v9 = @"Y";
      }

      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "CredentialsVC requestExternaliziedAuthIfNeededWithCompletion shouldGetAuthFromWatch %@.", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8010DD0;
    aBlock[4] = self;
    v10 = v4;
    v20 = v10;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (v5 == 4)
    {
      provisioningController = self->_provisioningController;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke_212;
      v16[3] = &unk_1E80228D0;
      v16[4] = self;
      v17 = v10;
      v18 = v12;
      [(PKPaymentProvisioningController *)provisioningController requestExternalizedAuthForWatchWithVisibleViewController:self completion:v16];
    }

    else
    {
      (*(v11 + 2))(v11);
    }
  }
}

void __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1328);
  *(v3 + 1328) = v2;

  v13[0] = &unk_1F3CC7E98;
  v5 = PKLocalizedShareableCredentialString(&cfstr_LocalAuthentic.isa);
  v13[1] = &unk_1F3CC7EB0;
  v14[0] = v5;
  v6 = PKLocalizedString(&cfstr_Wallet_1.isa);
  v14[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 1328);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke_210;
  v11[3] = &unk_1E8016C80;
  v11[4] = v9;
  v12 = v8;
  [v10 evaluatePolicy:1025 options:v7 reply:v11];
}

void __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke_210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (a2 && !a3)
  {
    v4 = [*(*(a1 + 32) + 1328) externalizedContext];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (a1[4])
    {
      v3 = @"Y";
    }

    else
    {
      v3 = @"N";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "CredentialsVC requestExternaliziedAuthIfNeededWithCompletion requested local auth and returning %@.", &v5, 0xCu);
  }

  if (a1[4])
  {
    [*(a1[5] + 1296) storeExternalizedAuth:?];
  }

  return (*(a1[6] + 16))();
}

void __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke_212(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke_2_213;
    block[3] = &unk_1E8014918;
    v9 = v5;
    v7 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __90__PKPaymentSetupCredentialsViewController__requestExternalizedAuthIfNeededWithCompletion___block_invoke_2_213(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "CredentialsVC requestExternalizedAuthForWatchWithVisibleViewController returning error: %@", &v7, 0xCu);
  }

  (*(a1[6] + 16))(a1[6], a1[4] == 0, 0);
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[5];
    v6 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
    [v5 presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_toggleEdit
{
  v4 = [(PKDynamicCollectionViewController *)self collectionView];
  v3 = [v4 isEditing];
  [v4 setEditing:v3 ^ 1u];
  [(PKPaymentSetupCredentialsSectionController *)self->_sectionController setEditing:v3 ^ 1u];
  [(PKPaymentSetupCredentialsViewController *)self _updateEditButtonVisibility];
  [(PKPaymentSetupCredentialsViewController *)self _configureAndUpdateDockView];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:5];
}

- (void)_updateEditButtonVisibility
{
  v8 = [(PKPaymentSetupCredentialsViewController *)self navigationItem];
  v3 = [v8 rightBarButtonItem];
  if ([(PKPaymentSetupCredentialsSectionController *)self->_sectionController shouldShowEditButton])
  {
    v4 = [(PKDynamicCollectionViewController *)self collectionView];
    v5 = [v4 isEditing];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }

    if (!v3 || [v3 systemItem] != v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v6 target:self action:sel__toggleEdit];
      [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9740]];
      [v8 setRightBarButtonItem:v7];
    }
  }

  else if (v3)
  {
    [v8 setRightBarButtonItem:0 animated:1];
  }
}

- (void)_disableEditStateIfNecessary
{
  v5 = [(PKDynamicCollectionViewController *)self collectionView];
  v3 = [v5 isEditing];
  v4 = [(PKPaymentSetupCredentialsSectionController *)self->_sectionController shouldShowEditButton];
  if (v3 && !v4)
  {
    [(PKPaymentSetupCredentialsSectionController *)self->_sectionController setEditing:0];
    [v5 setEditing:0];
    [(PKPaymentSetupCredentialsViewController *)self _configureAndUpdateDockView];
  }
}

- (PKPaymentSetupCredentialsViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end