@interface PKNewPaymentCredentialProvisioningViewController
- (BOOL)isComplete;
- (PKNewPaymentCredentialProvisioningViewController)initWithProvisioningController:(id)a3 webService:(id)a4 context:(int64_t)a5 paymentCredential:(id)a6 setupProduct:(id)a7 allowsManualEntry:(BOOL)a8 reporter:(id)a9;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_defaultHeaderViewSubTitleForLocalCredential;
- (id)_defaultHeaderViewSubTitleForLocalCredentialTransfer;
- (id)_remoteExistingCredentialDefaultHeaderViewSubTitle;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)readonlyFieldIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)visibleFieldIdentifiers;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_createPassSnapshotFromPaymentPass:(id)a3 completion:(id)a4;
- (void)_skipCard;
- (void)_updatePassSnapshotHeader;
- (void)addDifferentCard:(id)a3;
- (void)dealloc;
- (void)didTransitionTo:(int64_t)a3 loading:(BOOL)a4;
- (void)didUpdateFieldModel;
- (void)handleNextButtonTapped:(id)a3;
- (void)loadView;
- (void)paymentPassUpdatedOnCredential:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)showWithProvisioningError:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKNewPaymentCredentialProvisioningViewController

- (PKNewPaymentCredentialProvisioningViewController)initWithProvisioningController:(id)a3 webService:(id)a4 context:(int64_t)a5 paymentCredential:(id)a6 setupProduct:(id)a7 allowsManualEntry:(BOOL)a8 reporter:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v61 = a7;
  v62 = a9;
  v63.receiver = self;
  v63.super_class = PKNewPaymentCredentialProvisioningViewController;
  v18 = [(PKPaymentSetupProvisioningFieldsViewController *)&v63 initWithProvisioningController:v15 context:a5 setupDelegate:0];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_58;
  }

  objc_storeStrong(&v18->_provisioningController, a3);
  objc_storeStrong(&v19->_webService, a4);
  [v15 addDelegate:v19];
  objc_storeStrong(&v19->_setupProduct, a7);
  objc_storeStrong(&v19->_paymentCredential, a6);
  v20 = 1;
  v19->_displayType = 1;
  v19->_allowsManualEntry = a8;
  objc_storeStrong(&v19->_reporter, a9);
  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  IsExpressSetupAssistant = PKPaymentSetupContextIsExpressSetupAssistant();
  if (([v17 isHomeKeyCredential] & 1) == 0)
  {
    if ([v17 isShareableCredential] & 1) != 0 || (objc_msgSend(v17, "isDigitalIssuanceProductCredential") & 1) != 0 || (objc_msgSend(v17, "isFPANCredential") & 1) != 0 || (objc_msgSend(v17, "isPrecursorCredential") & 1) != 0 || (objc_msgSend(v17, "isRemoteCredential"))
    {
      v20 = 1;
    }

    else
    {
      v20 = [v17 couldSupportSuperEasyProvisioning] & IsSetupAssistant | IsExpressSetupAssistant;
    }
  }

  v23 = v17;
  v19->_shouldAutoProvision = v20 & 1;
  v24 = [(PKPaymentCredential *)v19->_paymentCredential isRemoteCredential];
  paymentCredential = v19->_paymentCredential;
  if (v24)
  {
    v26 = [(PKPaymentCredential *)paymentCredential remoteCredential];
    v27 = [v26 metadata];
    v28 = [v27 count];

    if (v28)
    {
      v19->_displayType = 2;
    }

    IsExpressSetupAssistant = [v26 remoteCredential];
    v29 = [IsExpressSetupAssistant status];

    if (v29 <= 1)
    {
      if ((v29 + 1) >= 2)
      {
        if (v29 == 1)
        {
          if ([(PKPaymentCredential *)v19->_paymentCredential credentialType]== 135)
          {
            v30 = 13;
          }

          else
          {
            v30 = 4;
          }

          goto LABEL_45;
        }

        goto LABEL_46;
      }
    }

    else if ((v29 - 3) >= 2)
    {
      if (v29 == 5)
      {
        v30 = 2;
        goto LABEL_45;
      }

      if (v29 == 2)
      {
        v30 = 3;
LABEL_45:
        v19->_credentialProvisioningType = v30;
      }

LABEL_46:

      goto LABEL_47;
    }

    v19->_credentialProvisioningType = 5;
    if (v19->_displayType == 1)
    {
      v19->_displayType = 0;
    }

    [(PKPaymentSetupFieldsViewController *)v19 setShowPrimaryButton:0];
    [(PKPaymentSetupProvisioningFieldsViewController *)v19 suppressFooterViewSkipCardButton];
    goto LABEL_46;
  }

  if (![(PKPaymentCredential *)paymentCredential isHomeKeyCredential])
  {
    if ([(PKPaymentCredential *)v19->_paymentCredential isAppleBalanceCredential])
    {
      v32 = 13;
      goto LABEL_22;
    }

    v33 = [(PKPaymentCredential *)v19->_paymentCredential isLocalPassCredential];
    v34 = v19->_paymentCredential;
    if (v33)
    {
      v35 = [(PKPaymentCredential *)v34 localPassCredential];
      IsExpressSetupAssistant = [v35 paymentPass];
      v36 = [IsExpressSetupAssistant requiresTransferSerialNumberBasedProvisioning];

      if (!v36)
      {
        v19->_credentialProvisioningType = 0;
        goto LABEL_47;
      }

      v31 = 1;
      goto LABEL_19;
    }

    v37 = [(PKPaymentCredential *)v34 isDigitalIssuanceProductCredential];
    v38 = v19->_paymentCredential;
    if (v37)
    {
      v39 = [(PKPaymentCredential *)v38 digitalIssuanceProductCredential];
      IsExpressSetupAssistant = [v39 metadata];
      v40 = [IsExpressSetupAssistant count];

      if (v40)
      {
        v19->_displayType = 2;
      }

      v19->_credentialProvisioningType = 7;
      goto LABEL_73;
    }

    v41 = [(PKPaymentCredential *)v38 isPurchasedProductCredential];
    v42 = v19->_paymentCredential;
    if (v41)
    {
      v39 = [(PKPaymentCredential *)v42 purchasedProductCredential];
      v43 = [v39 purchase];
      v44 = [v43 state];
      v45 = 8;
      if (v44 == 3)
      {
        v45 = 9;
      }

      v19->_credentialProvisioningType = v45;

      IsExpressSetupAssistant = [v39 metadata];
      v46 = [IsExpressSetupAssistant count];

      if (v46)
      {
        v47 = 2;
LABEL_72:
        v19->_displayType = v47;
        goto LABEL_73;
      }

      if (v19->_credentialProvisioningType == 9)
      {
        v47 = 0;
        goto LABEL_72;
      }
    }

    else
    {
      if (![(PKPaymentCredential *)v42 isIssuerProvisioningExtensionCredential])
      {
        if ([(PKPaymentCredential *)v19->_paymentCredential isFPANCredential])
        {
          v32 = 12;
        }

        else
        {
          if ([(PKPaymentCredential *)v19->_paymentCredential isPrecursorCredential])
          {
            v31 = 14;
            goto LABEL_19;
          }

          v32 = 6;
        }

LABEL_22:
        v19->_credentialProvisioningType = v32;
        goto LABEL_47;
      }

      v19->_credentialProvisioningType = 10;
      v19->_displayType = 2;
      IsExpressSetupAssistant = [(PKPaymentCredential *)v19->_paymentCredential issuerProvisioningExtensionCredential];
      v39 = [IsExpressSetupAssistant entry];

      v56 = CGImageRetain([v39 art]);
      if (v56)
      {
        IsExpressSetupAssistant = v56;
        v57 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v56];
        CGImageRelease(IsExpressSetupAssistant);
        if (v57)
        {
          passSnapshot = v19->_passSnapshot;
          v19->_passSnapshot = v57;
          IsExpressSetupAssistant = v57;

          v19->_passSnapshotNeedsCorners = 1;
        }
      }
    }

LABEL_73:

    goto LABEL_47;
  }

  v31 = 11;
LABEL_19:
  v19->_credentialProvisioningType = v31;
  v19->_displayType = 0;
LABEL_47:
  v48 = [*(&v19->super.super.super.super.super.super.isa + v59) configuration];
  if ([v48 type] == 9 || -[PKPaymentCredential credentialType](v19->_paymentCredential, "credentialType") == 123)
  {

LABEL_50:
    v49 = 2;
    goto LABEL_51;
  }

  IsExpressSetupAssistant = [(PKPaymentCredential *)v19->_paymentCredential issuerProvisioningExtensionCredential];
  v53 = [IsExpressSetupAssistant entry];
  v54 = [v53 addRequestConfiguration];
  v55 = [v54 isPaymentAccount];

  if (v55)
  {
    goto LABEL_50;
  }

  if (v19->_credentialProvisioningType != 11)
  {
    v19->_category = 0;
    goto LABEL_52;
  }

  v49 = 1;
LABEL_51:
  v19->_category = v49;
LABEL_52:
  [(PKPaymentSetupProvisioningFieldsViewController *)v19 setIgnoreProgressDescriptionUpdates:1];
  v50 = [(PKPaymentCredential *)v19->_paymentCredential underlyingPaymentPass];
  if (v50)
  {
    [v62 setPass:v50];
  }

  else
  {
    v51 = [(PKPaymentCredential *)v19->_paymentCredential cardType];
    if (v51 <= 4)
    {
      IsExpressSetupAssistant = **(&unk_1E80220A0 + v51);
    }

    [v62 setProductType:IsExpressSetupAssistant subtype:0];
  }

  v17 = v23;
LABEL_58:

  return v19;
}

- (void)dealloc
{
  [(PKPaymentProvisioningController *)self->_provisioningController removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKNewPaymentCredentialProvisioningViewController;
  [(PKPaymentSetupProvisioningFieldsViewController *)&v3 dealloc];
}

- (void)loadView
{
  v24.receiver = self;
  v24.super_class = PKNewPaymentCredentialProvisioningViewController;
  [(PKPaymentSetupFieldsViewController *)&v24 loadView];
  credentialProvisioningType = self->_credentialProvisioningType;
  if (credentialProvisioningType == 7)
  {
    [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:0];
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v4 = [(PKPaymentSetupTableViewController *)self dockView];
    v5 = [v4 footerView];
  }

  else
  {
    v5 = [(PKPaymentSetupProvisioningFieldsViewController *)self footerView];
  }

  if (credentialProvisioningType == 7 || self->_showSkipButton)
  {
    v6 = [v5 skipCardButton];
    [v6 addTarget:self action:sel__skipCard forControlEvents:0x2000];

    category = self->_category;
    if (category == 2)
    {
      v8 = [v5 skipCardButton];
      v10 = PKLocalizedAquamanString(&cfstr_AddAccountToWa.isa);
    }

    else
    {
      if (category == 1)
      {
        v8 = [v5 skipCardButton];
        v9 = @"ADD_TO_WALLET_LATER_KEY";
      }

      else
      {
        if (category)
        {
          goto LABEL_16;
        }

        v8 = [v5 skipCardButton];
        v9 = @"ADD_TO_WALLET_LATER";
      }

      v10 = PKLocalizedPaymentString(&v9->isa);
    }

    v11 = v10;
    [v8 setTitle:v10 forState:0];
  }

LABEL_16:
  if (!self->_allowsManualEntry)
  {
    [(PKPaymentSetupProvisioningFieldsViewController *)self suppressFooterViewManualEntryButton];
    goto LABEL_28;
  }

  v12 = self->_category;
  if (v12 == 2)
  {
    v14 = PKLocalizedAquamanString(&cfstr_AddADifferentA.isa);
  }

  else
  {
    if (v12 == 1)
    {
      v13 = @"ADD_A_NEW_KEY";
    }

    else
    {
      if (v12)
      {
        v15 = 0;
        goto LABEL_27;
      }

      v13 = @"ADD_A_NEW_CARD";
    }

    v14 = PKLocalizedPaymentString(&v13->isa);
  }

  v15 = v14;
LABEL_27:
  v16 = [v5 manualEntryButton];
  [v16 setTitle:v15 forState:0];
  [v16 addTarget:self action:sel_addDifferentCard_ forControlEvents:0x2000];

LABEL_28:
  if (self->_displayType == 2)
  {
    if ((self->_credentialProvisioningType & 0xFFFFFFFFFFFFFFFELL) == 8)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    v18 = [PKPaymentCredentialMetadataTableController alloc];
    v19 = [(PKPaymentCredential *)self->_paymentCredential metadata];
    v20 = [(PKPaymentCredentialMetadataTableController *)v18 initWithMetadata:v19 setupContext:[(PKPaymentSetupTableViewController *)self context] cellStyle:v17];
    metadataController = self->_metadataController;
    self->_metadataController = v20;
  }

  v22 = self->_credentialProvisioningType;
  if (v22 == 9)
  {
    [(PKPaymentSetupFieldsViewController *)self setShowPrimaryButton:0];
    [(PKPaymentSetupProvisioningFieldsViewController *)self suppressFooterViewSkipCardButton];
    v22 = self->_credentialProvisioningType;
  }

  if ((v22 & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v23 = PKLocalizedPaymentString(&cfstr_SetupPurchaseC.isa);
    [(PKPaymentSetupProvisioningFieldsViewController *)self setNotificationTextInFooterView:v23];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PKNewPaymentCredentialProvisioningViewController;
  [(PKPaymentSetupProvisioningFieldsViewController *)&v12 viewWillAppear:a3];
  if (PKShowFakePaymentSetupFields())
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Showing fake payment setup fields", v11, 2u);
    }

    v5 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
    v6 = [MEMORY[0x1E69B8E38] fakePaymentSetupProvisioningFields];
    [v5 updateWithPaymentSetupFields:v6];
  }

  v7 = [(PKNewPaymentCredentialProvisioningViewController *)self isComplete];
  [(PKPaymentSetupFieldsViewController *)self _setPrimaryButtonEnabled:v7];
  [(PKPaymentSetupFieldsViewController *)self noteFieldIdentifiersChangedAndUpdateHeaders];
  [(PKNewPaymentCredentialProvisioningViewController *)self _updatePassSnapshotHeader];
  if (v7 && self->_shouldAutoProvision)
  {
    v8 = [(PKPaymentCredentialProvisioningViewControllerCoordinator *)self->_coordinator provisionedPass];

    if (!v8)
    {
      [(PKNewPaymentCredentialProvisioningViewController *)self didTransitionTo:4 loading:1];
      coordinator = self->_coordinator;
      v10 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
      [(PKPaymentCredentialProvisioningViewControllerCoordinator *)coordinator continueWithFieldModel:v10];
    }
  }

  self->_shouldAutoProvision = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKNewPaymentCredentialProvisioningViewController;
  [(PKPaymentSetupFieldsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKNewPaymentCredentialProvisioningViewController;
  [(PKNewPaymentCredentialProvisioningViewController *)&v4 viewDidDisappear:a3];
  if ([(PKNewPaymentCredentialProvisioningViewController *)self isMovingFromParentViewController])
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter resetProductTypes];
  }
}

- (void)addDifferentCard:(id)a3
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:1];
  v4 = [(PKPaymentSetupProvisioningFieldsViewController *)self flowItemDelegate];
  [v4 provisioningViewControllerDidSelectManualEntry:self];
}

- (void)handleNextButtonTapped:(id)a3
{
  [(PKPaymentSetupProvisioningFieldsViewController *)self updateLocationAuthorization];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  coordinator = self->_coordinator;
  v5 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  [(PKPaymentCredentialProvisioningViewControllerCoordinator *)coordinator continueWithFieldModel:v5];
}

- (void)_skipCard
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Skipping to next credential", v6, 2u);
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];
  [(PKPaymentSetupFieldsViewController *)self showActivitySpinnerWithTitle:0 subtitle:0];
  [(PKPaymentSetupFieldsViewController *)self resetCellStyling];
  coordinator = self->_coordinator;
  if (coordinator)
  {
    [(PKPaymentCredentialProvisioningViewControllerCoordinator *)coordinator terminate];
  }

  else
  {
    v5 = [(PKPaymentSetupProvisioningFieldsViewController *)self flowItemDelegate];
    [v5 provisioningViewController:self didFinishWithSuccess:0];
  }
}

- (void)_createPassSnapshotFromPaymentPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      objc_initWeak(location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __98__PKNewPaymentCredentialProvisioningViewController__createPassSnapshotFromPaymentPass_completion___block_invoke;
      v9[3] = &unk_1E80111F8;
      objc_copyWeak(&v12, location);
      v10 = v6;
      v11 = v7;
      [v10 loadImageSetAsync:0 preheat:1 withCompletion:v9];

      objc_destroyWeak(&v12);
      objc_destroyWeak(location);
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "No payment pass to generate snapshot", location, 2u);
      }

      (*(v7 + 2))(v7, 0);
    }
  }
}

void __98__PKNewPaymentCredentialProvisioningViewController__createPassSnapshotFromPaymentPass_completion___block_invoke(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKNewPaymentCredentialProvisioningViewController__createPassSnapshotFromPaymentPass_completion___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v5, a1 + 6);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
}

void __98__PKNewPaymentCredentialProvisioningViewController__createPassSnapshotFromPaymentPass_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [[PKPassView alloc] initWithPass:*(a1 + 32) content:5 suppressedContent:4087];
    v4 = [(PKPassView *)v3 snapshotOfFrontFace];
    (*(*(a1 + 40) + 16))();

    WeakRetained = v5;
  }
}

- (void)_updatePassSnapshotHeader
{
  credentialProvisioningType = self->_credentialProvisioningType;
  v4 = [(PKPaymentSetupFieldsViewController *)self headerView];
  v5 = v4;
  if (credentialProvisioningType != 12 && v4 != 0)
  {
    PKUIGetMinScreenWidthType();
    passSnapshotPlaceHolder = self->_passSnapshotPlaceHolder;
    if (self->_passSnapshot)
    {
      v8 = passSnapshotPlaceHolder != 0;
      self->_passSnapshotPlaceHolder = 0;

      [v5 setPassSnapshot:self->_passSnapshot withSize:v8 animated:self->_passSnapshotNeedsCorners needsCorners:{130.0, 82.0}];
    }

    else
    {
      if (!passSnapshotPlaceHolder)
      {
        v9 = PKUIImageNamed(@"PlaceholderCardArt_Large");
        v10 = self->_passSnapshotPlaceHolder;
        self->_passSnapshotPlaceHolder = v9;

        passSnapshotPlaceHolder = self->_passSnapshotPlaceHolder;
      }

      [v5 setImageViewImage:passSnapshotPlaceHolder withSize:0 animated:{130.0, 82.0}];
      v11 = [(PKPaymentCredential *)self->_paymentCredential underlyingPaymentPass];
      if (v11)
      {
        v12 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
        v13 = [v12 targetDevice];

        v14 = MEMORY[0x1E69B8810];
        v15 = [v13 secureElementIdentifiers];
        v16 = [v14 cardArtConfigurationWithSEIDs:v15];

        if ([v11 remoteAssetsDownloadedForConfiguration:v16])
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __77__PKNewPaymentCredentialProvisioningViewController__updatePassSnapshotHeader__block_invoke;
          v18[3] = &unk_1E8010A38;
          v18[4] = self;
          [(PKNewPaymentCredentialProvisioningViewController *)self _createPassSnapshotFromPaymentPass:v11 completion:v18];
        }
      }
    }

    [v5 sizeToFit];
    v17 = [(PKPaymentSetupTableViewController *)self tableView];
    [v5 bounds];
    [v17 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v19)];
  }
}

void __77__PKNewPaymentCredentialProvisioningViewController__updatePassSnapshotHeader__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(a1 + 32) + 1392), a2);
    [*(a1 + 32) _updatePassSnapshotHeader];
    v4 = v5;
  }
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  if (self->_metadataController)
  {
    v5 = [(PKPaymentCredentialMetadataTableController *)self->_metadataController tableView:a3 contextMenuConfigurationForRowAtIndexPath:a4 point:a5.x, a5.y];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PKNewPaymentCredentialProvisioningViewController;
    v5 = [(PKPaymentSetupTableViewController *)&v7 tableView:a3 contextMenuConfigurationForRowAtIndexPath:a4 point:a5.x, a5.y];
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_metadataController)
  {
    metadataController = self->_metadataController;

    return [(PKPaymentCredentialMetadataTableController *)metadataController numberOfRowsInSection:a4];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = PKNewPaymentCredentialProvisioningViewController;
    return [(PKPaymentSetupFieldsViewController *)&v8 tableView:a3 numberOfRowsInSection:a4];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  if (self->_metadataController)
  {
    metadataController = self->_metadataController;

    [(PKPaymentCredentialMetadataTableController *)metadataController willDisplayCell:a4 forRowAtIndexPath:a5];
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v8.receiver = self;
    v8.super_class = PKNewPaymentCredentialProvisioningViewController;
    [(PKPaymentSetupFieldsViewController *)&v8 tableView:a3 willDisplayCell:a4 forRowAtIndexPath:a5];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  if (self->_metadataController)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = PKNewPaymentCredentialProvisioningViewController;
  [(PKPaymentSetupFieldsViewController *)&v7 tableView:a3 heightForRowAtIndexPath:a4];
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  metadataController = self->_metadataController;
  if (metadataController)
  {
    v6 = [(PKPaymentCredentialMetadataTableController *)metadataController cellForRowAtIndexPath:a4];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PKNewPaymentCredentialProvisioningViewController;
    v6 = [(PKPaymentSetupFieldsViewController *)&v12 tableView:a3 cellForRowAtIndexPath:a4];
    v7 = [v6 paymentSetupField];
    v8 = [v7 identifier];
    v9 = [v8 isEqualToString:*MEMORY[0x1E69BC1B8]];

    if (v9)
    {
      paymentCredential = self->_paymentCredential;
      v6 = v6;
      [v6 setPaymentCredentialType:{-[PKPaymentCredential credentialType](paymentCredential, "credentialType")}];
    }
  }

  return v6;
}

- (void)preflightWithCompletion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543362;
    v28 = v7;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Preflighting: %{public}@", buf, 0xCu);
  }

  v8 = [(PKPaymentCredential *)self->_paymentCredential localPassCredential];
  v9 = [v8 paymentPass];

  v10 = [(PKPaymentCredential *)self->_paymentCredential isPurchasedProductCredential];
  paymentCredential = self->_paymentCredential;
  if (v10)
  {
    v12 = [(PKPaymentCredential *)paymentCredential purchasedProductCredential];
LABEL_7:
    v13 = v12;
    v14 = [v12 product];

    goto LABEL_9;
  }

  if ([(PKPaymentCredential *)paymentCredential isDigitalIssuanceProductCredential])
  {
    v12 = [(PKPaymentCredential *)self->_paymentCredential digitalIssuanceProductCredential];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:
  v15 = dispatch_group_create();
  if ([v9 isTransitPass])
  {
    v16 = [(PKPaymentWebService *)self->_webService targetDevice];
    if (objc_opt_respondsToSelector())
    {
      dispatch_group_enter(v15);
      v17 = [v9 uniqueID];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __76__PKNewPaymentCredentialProvisioningViewController_preflightWithCompletion___block_invoke;
      v24[3] = &unk_1E8022060;
      v24[4] = self;
      v25 = v9;
      v26 = v15;
      [v16 plansForPaymentPassWithUniqueIdentifier:v17 completion:v24];
    }
  }

  if (v14)
  {
    dispatch_group_enter(v15);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__PKNewPaymentCredentialProvisioningViewController_preflightWithCompletion___block_invoke_2;
    v22[3] = &unk_1E8012968;
    v22[4] = self;
    v23 = v15;
    v18 = [v14 digitalCardCachedImage:v22];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__PKNewPaymentCredentialProvisioningViewController_preflightWithCompletion___block_invoke_3;
  v20[3] = &unk_1E8010B50;
  v21 = v4;
  v19 = v4;
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v20);
}

void __76__PKNewPaymentCredentialProvisioningViewController_preflightWithCompletion___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69B9308];
  v4 = a2;
  v5 = [[v3 alloc] initWithPass:a1[5]];
  v6 = a1[4];
  v7 = *(v6 + 1424);
  *(v6 + 1424) = v5;

  [*(a1[4] + 1424) updateWithDynamicCommutePlans:v4];
  v8 = a1[6];

  dispatch_group_leave(v8);
}

void __76__PKNewPaymentCredentialProvisioningViewController_preflightWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(a1 + 32) + 1392), a3);
    *(*(a1 + 32) + 1400) = 1;
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __76__PKNewPaymentCredentialProvisioningViewController_preflightWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (id)visibleFieldIdentifiers
{
  if (self->_displayType == 1)
  {
    v2 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
    v3 = [v2 visibleSetupFieldIdentifiers];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)readonlyFieldIdentifiers
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_credentialProvisioningType == 13)
  {
    v6[0] = *MEMORY[0x1E69BC1A8];
    v2 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E69BC1B8];
    v2 = &v5;
  }

  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];

  return v3;
}

- (BOOL)isComplete
{
  credentialProvisioningType = self->_credentialProvisioningType;
  if (credentialProvisioningType == 5 || credentialProvisioningType == 9)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v7.receiver = self;
  v7.super_class = PKNewPaymentCredentialProvisioningViewController;
  return [(PKPaymentSetupFieldsViewController *)&v7 isComplete];
}

- (void)didUpdateFieldModel
{
  [(PKPaymentSetupFieldsViewController *)self _setPrimaryButtonEnabled:[(PKNewPaymentCredentialProvisioningViewController *)self isComplete]];

  [(PKPaymentSetupFieldsViewController *)self noteFieldIdentifiersChanged];
}

- (void)showWithProvisioningError:(id)a3
{
  v4 = a3;
  credentialProvisioningType = self->_credentialProvisioningType;
  if (([v4 hasLocalizedTitleAndMessage] & 1) == 0)
  {
    if (credentialProvisioningType == 13)
    {
      v6 = PKLocalizedAppleBalanceString(&cfstr_CouldNotAddCar.isa);
      v7 = PKLocalizedAppleBalanceString(&cfstr_CouldNotAddCar_0.isa);
    }

    else
    {
      category = self->_category;
      if (category == 2)
      {
        v6 = PKLocalizedAquamanString(&cfstr_CouldNotAddAcc.isa);
        v7 = PKLocalizedAquamanString(&cfstr_CouldNotAddAcc_0.isa);
      }

      else
      {
        if (category == 1)
        {
          v6 = PKLocalizedPaymentString(&cfstr_CouldNotAddKey.isa);
          v9 = @"COULD_NOT_ADD_HOME_KEY_MESSAGE";
        }

        else
        {
          if (category)
          {
            v10 = 0;
            v6 = 0;
            goto LABEL_12;
          }

          v6 = PKLocalizedPaymentString(&cfstr_CouldNotAddCar.isa);
          v9 = @"COULD_NOT_ADD_CARD_MESSAGE";
        }

        v7 = PKLocalizedPaymentString(&v9->isa);
      }
    }

    v10 = v7;
LABEL_12:
    [v4 setLocalizedTitle:v6];
    [v4 setLocalizedMessage:v10];
  }

  if (self->_hasRemainingCredentialsToProvision)
  {
    v11 = self->_category;
    if (v11 != 2)
    {
      if (v11 == 1)
      {
        v12 = @"ADD_TO_WALLET_LATER_KEY";
        goto LABEL_23;
      }

      if (!v11)
      {
        v12 = @"ADD_TO_WALLET_LATER";
LABEL_23:
        v13 = PKLocalizedPaymentString(&v12->isa);
        goto LABEL_26;
      }

LABEL_32:
      v15 = 0;
      goto LABEL_27;
    }

    v14 = @"ADD_ACCOUNT_TO_WALLET_LATER";
    goto LABEL_25;
  }

  [(PKPaymentSetupTableViewController *)self context];
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    v12 = @"SET_UP_LATER_BUTTON_TITLE";
    goto LABEL_23;
  }

  if (credentialProvisioningType != 13)
  {
    v17 = self->_category;
    if (v17 != 2)
    {
      if (v17 == 1)
      {
        v12 = @"COULD_NOT_ADD_KEY_ADD_LATER";
        goto LABEL_23;
      }

      if (!v17)
      {
        v12 = @"COULD_NOT_ADD_CARD_ADD_LATER";
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    v14 = @"COULD_NOT_ADD_ACCOUNT_ADD_LATER";
LABEL_25:
    v13 = PKLocalizedAquamanString(&v14->isa);
    goto LABEL_26;
  }

  v13 = PKLocalizedAppleBalanceString(&cfstr_OkButtonTitle.isa);
LABEL_26:
  v15 = v13;
LABEL_27:
  v18[4] = self;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __78__PKNewPaymentCredentialProvisioningViewController_showWithProvisioningError___block_invoke_2;
  v19[3] = &unk_1E8010970;
  v19[4] = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__PKNewPaymentCredentialProvisioningViewController_showWithProvisioningError___block_invoke_3;
  v18[3] = &unk_1E8010970;
  v16 = [MEMORY[0x1E69DC650] alertForErrorWithError:v4 acknowledgeButtonText:0 exitButtonText:v15 onAcknowledge:&__block_literal_global_215 onExit:v19 onTryAgain:v18];
  [(PKNewPaymentCredentialProvisioningViewController *)self presentViewController:v16 animated:1 completion:0];
}

void __78__PKNewPaymentCredentialProvisioningViewController_showWithProvisioningError___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[181];
  v3 = [v1 fieldsModel];
  [v2 continueWithFieldModel:v3];
}

- (void)didTransitionTo:(int64_t)a3 loading:(BOOL)a4
{
  if (a4)
  {
    credentialProvisioningType = self->_credentialProvisioningType;
    if ((a3 - 1) < 5)
    {
      if (credentialProvisioningType - 1 <= 1)
      {
        v6 = @"SETTINGS_TRANSFER_PASS_MOVING";
LABEL_5:
        v24 = PKLocalizedPaymentString(&v6->isa);
        v7 = @"PROGRESS_CONTACTING_ISSUER";
LABEL_6:
        v8 = PKLocalizedPaymentString(&v7->isa);
LABEL_25:
        v14 = v24;
        v10 = v8;
LABEL_43:
        v25 = v14;
        [(PKPaymentSetupFieldsViewController *)self showActivitySpinnerWithTitle:v14 subtitle:v10];
        goto LABEL_44;
      }

      if (credentialProvisioningType == 13)
      {
LABEL_17:
        v24 = PKLocalizedPaymentString(&cfstr_AddingCard.isa);
        v8 = PKLocalizedAppleBalanceString(&cfstr_AddingCardBody.isa);
        goto LABEL_25;
      }

      category = self->_category;
      if (category != 2)
      {
        if (category == 1)
        {
          v24 = PKLocalizedPaymentString(&cfstr_AddingKey.isa);
          v7 = @"PROGRESS_CONTACTING_ISSUER_KEY";
          goto LABEL_6;
        }

        if (!category)
        {
          v6 = @"ADDING_CARD";
          goto LABEL_5;
        }

LABEL_31:
        v10 = 0;
        v14 = 0;
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    if (a3 == 6)
    {
      if (credentialProvisioningType - 1 > 1)
      {
        if (credentialProvisioningType == 13)
        {
          goto LABEL_17;
        }

        v15 = self->_category;
        if (v15 == 2)
        {
LABEL_37:
          v26 = PKLocalizedAquamanString(&cfstr_AddingAccount.isa);
          v18 = [(PKPaymentCredential *)self->_paymentCredential longDescription];
          v17 = v18;
          if (v18)
          {
            PKLocalizedAquamanString(&cfstr_ProgressSettin_0.isa, &stru_1F3BD5BF0.isa, v18);
          }

          else
          {
            PKLocalizedAquamanString(&cfstr_ProgressSettin.isa);
          }
          v19 = ;
          goto LABEL_42;
        }

        if (v15 == 1)
        {
          v26 = PKLocalizedPaymentString(&cfstr_AddingKey.isa);
          v17 = [(PKPaymentCredential *)self->_paymentCredential longDescription];
          v19 = PKLocalizedPaymentString(&cfstr_SettupUpPass.isa, &stru_1F3BD5BF0.isa, v17);
          goto LABEL_42;
        }

        if (v15)
        {
          goto LABEL_31;
        }

        v13 = @"ADDING_CARD";
      }

      else
      {
        v13 = @"SETTINGS_TRANSFER_PASS_MOVING";
      }

      v24 = PKLocalizedPaymentString(&v13->isa);
      v8 = PKCoreLocalizedString(&cfstr_ProgressEnabli.isa);
      goto LABEL_25;
    }

    if (a3 != 7)
    {
      goto LABEL_31;
    }

    if (credentialProvisioningType - 1 > 1)
    {
      if (credentialProvisioningType != 13)
      {
        v23 = self->_category;
        if (v23 == 2)
        {
          v16 = PKLocalizedAquamanString(&cfstr_AddingAccount.isa);
LABEL_35:
          v26 = v16;
          if (!self->_category)
          {
            v20 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
            v21 = [v20 targetDevice];
            v22 = [v21 deviceName];

            v17 = PKDeviceSpecificLocalizedStringKeyForKey(@"PROGRESS_DOWNLOADING_CARD", [v22 isEqualToString:@"Apple Watch"]);

            goto LABEL_41;
          }

LABEL_36:
          v17 = @"PROGRESS_DOWNLOADING_CARD_IPHONE";
LABEL_41:
          v19 = PKCoreLocalizedString(&v17->isa);
LABEL_42:
          v10 = v19;

          v14 = v26;
          goto LABEL_43;
        }

        if (v23 == 1)
        {
          v11 = @"ADDING_KEY";
          goto LABEL_34;
        }

        if (v23)
        {
          v26 = 0;
          goto LABEL_36;
        }
      }

      v11 = @"ADDING_CARD";
    }

    else
    {
      v11 = @"SETTINGS_TRANSFER_PASS_MOVING";
    }

LABEL_34:
    v16 = PKLocalizedPaymentString(&v11->isa);
    goto LABEL_35;
  }

  if (a3 != 8)
  {
    v25 = [(PKNewPaymentCredentialProvisioningViewController *)self defaultHeaderViewTitle];
    v10 = [(PKNewPaymentCredentialProvisioningViewController *)self defaultHeaderViewSubTitle];
    [(PKPaymentSetupFieldsViewController *)self hideActivitySpinnerWithTitle:v25 subtitle:v10 animated:1];
LABEL_44:

    goto LABEL_45;
  }

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [(PKPaymentSetupFieldsViewController *)self setShowPrimaryButton:0];
  }

  v25 = [(PKPaymentCredentialProvisioningViewControllerCoordinator *)self->_coordinator provisionedPass];
  v9 = [v25 paymentPass];
  [(PKPaymentSetupProvisioningFieldsViewController *)self showVerifiedUIForPass:v9];

  [(PKPaymentSetupFieldsViewController *)self setHidesBackButton:1 animated:1];
LABEL_45:
}

- (id)defaultHeaderViewTitle
{
  v3 = 0;
  credentialProvisioningType = self->_credentialProvisioningType;
  if (credentialProvisioningType <= 7)
  {
    if (credentialProvisioningType <= 2)
    {
      if ((credentialProvisioningType - 1) < 2)
      {
        if ([(PKTransitBalanceModel *)self->_transitBalanceModel hasDeviceBoundCommutePlans])
        {
          v7 = [(PKPaymentCredential *)self->_paymentCredential localPassCredential];
          v8 = [v7 paymentPass];

          v3 = PKPassLocalizedStringWithFormat();

          goto LABEL_34;
        }

        v6 = @"SETTINGS_TRANSFER_PASS_TITLE";
        goto LABEL_32;
      }

      if (credentialProvisioningType)
      {
        goto LABEL_34;
      }
    }

    else if ((credentialProvisioningType - 3) >= 2 && (credentialProvisioningType - 6) >= 2)
    {
      if (credentialProvisioningType != 5)
      {
        goto LABEL_34;
      }

      category = self->_category;
      if (category != 2)
      {
        if (category == 1)
        {
          v6 = @"UNABLE_TO_ADD_Key";
          goto LABEL_32;
        }

        if (!category)
        {
          v6 = @"UNABLE_TO_ADD_CARD";
LABEL_32:
          v15 = PKLocalizedPaymentString(&v6->isa);
          goto LABEL_33;
        }

        goto LABEL_41;
      }

      v14 = @"ACCOUNT_UNAVAILABLE";
LABEL_28:
      v15 = PKLocalizedAquamanString(&v14->isa);
LABEL_33:
      v3 = v15;
      goto LABEL_34;
    }

LABEL_22:
    v13 = self->_category;
    if (v13 == 2)
    {
      v14 = @"ADD_ACCOUNT";
      goto LABEL_28;
    }

    if (v13 != 1)
    {
      if (!v13)
      {
        v6 = @"ADD_CARD";
        goto LABEL_32;
      }

      goto LABEL_41;
    }

LABEL_26:
    v6 = @"ADD_KEY";
    goto LABEL_32;
  }

  if (credentialProvisioningType <= 10)
  {
    if (credentialProvisioningType == 8)
    {
      v6 = @"PENDING_PURCHASE";
      goto LABEL_32;
    }

    if (credentialProvisioningType == 9)
    {
      v6 = @"REFUNDED_PURCHASE";
      goto LABEL_32;
    }

    v9 = [(PKPaymentCredential *)self->_paymentCredential issuerProvisioningExtensionCredential];
    v10 = [v9 entry];
    v11 = [v10 addRequestConfiguration];
    v12 = [v11 style];

    if (v12 == 1)
    {
      v6 = @"ISSUER_ADD_CARD_WALLET";
      goto LABEL_32;
    }

    v17 = self->_category;
    switch(v17)
    {
      case 2uLL:
        v14 = @"ISSUER_ADD_ACCOUNT_WALLET";
        goto LABEL_28;
      case 1uLL:
        v6 = @"ISSUER_ADD_KEY";
        goto LABEL_32;
      case 0uLL:
        v6 = @"ISSUER_ADD_CARD";
        goto LABEL_32;
    }

LABEL_41:
    v3 = 0;
    goto LABEL_34;
  }

  if ((credentialProvisioningType - 12) < 3)
  {
    goto LABEL_22;
  }

  if (credentialProvisioningType == 11)
  {
    goto LABEL_26;
  }

LABEL_34:

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  v3 = 0;
  credentialProvisioningType = self->_credentialProvisioningType;
  if (credentialProvisioningType <= 5)
  {
    if (credentialProvisioningType <= 2)
    {
      if (credentialProvisioningType)
      {
        if (credentialProvisioningType != 1)
        {
          if (credentialProvisioningType != 2)
          {
            goto LABEL_47;
          }

          v5 = [(PKPaymentCredential *)self->_paymentCredential remoteCredential];
          v6 = [v5 transferableFromDevices];
          v7 = [v6 firstObject];
          v8 = [v7 name];

          [(PKPaymentSetupTableViewController *)self context];
          if (PKPaymentSetupContextIsBridge())
          {
            if (v8)
            {
              PKLocalizedPaymentString(&cfstr_SettingsTransf_1.isa, &stru_1F3BD6370.isa, v8, v8);
              v16 = LABEL_32:;
LABEL_45:
              v3 = v16;
              goto LABEL_46;
            }

            v18 = @"SETTINGS_TRANSFER_PASS_SUBTITLE_REMOTE_TO_WATCH";
LABEL_44:
            v16 = PKLocalizedPaymentString(&v18->isa);
            goto LABEL_45;
          }

          if (v8)
          {
            PKLocalizedPaymentString(&cfstr_SettingsTransf_3.isa, &stru_1F3BD6370.isa, v8, v8);
            goto LABEL_32;
          }

          v19 = [(PKPaymentCredential *)self->_paymentCredential remoteCredential];
          v9 = [v19 paymentPass];

          v20 = [v9 paymentApplications];
          v21 = [v20 pk_hasObjectPassingTest:&__block_literal_global_282_1];

          if (v21)
          {
            PKPassLocalizedStringWithFormat();
          }

          else
          {
            PKLocalizedPaymentString(&cfstr_SettingsTransf_4.isa);
          }
          v10 = ;
LABEL_16:
          v3 = v10;

LABEL_46:
          goto LABEL_47;
        }

        v12 = [(PKNewPaymentCredentialProvisioningViewController *)self _defaultHeaderViewSubTitleForLocalCredentialTransfer];
      }

      else
      {
        v12 = [(PKNewPaymentCredentialProvisioningViewController *)self _defaultHeaderViewSubTitleForLocalCredential];
      }

LABEL_23:
      v3 = v12;
      goto LABEL_47;
    }

    if ((credentialProvisioningType - 3) >= 2)
    {
      if (credentialProvisioningType == 5)
      {
        v11 = [(PKPaymentCredential *)self->_paymentCredential remoteCredential];
        v3 = [v11 statusDescription];
      }

      goto LABEL_47;
    }

LABEL_22:
    v12 = [(PKNewPaymentCredentialProvisioningViewController *)self _remoteExistingCredentialDefaultHeaderViewSubTitle];
    goto LABEL_23;
  }

  if (credentialProvisioningType > 10)
  {
    if (credentialProvisioningType > 12)
    {
      if (credentialProvisioningType == 13)
      {
        v12 = PKLocalizedAppleBalanceString(&cfstr_AddCardBody.isa);
        goto LABEL_23;
      }

      if (credentialProvisioningType != 14)
      {
        goto LABEL_47;
      }
    }

    else if (credentialProvisioningType != 11)
    {
      v8 = [(PKPaymentCredential *)self->_paymentCredential longDescription];
      if (![v8 length])
      {
        v16 = PKLocalizedVirtualCardString(&cfstr_ProvisioningAd_0.isa);
        goto LABEL_45;
      }

      v9 = [(PKPaymentCredential *)self->_paymentCredential longDescription];
      v10 = PKLocalizedVirtualCardString(&cfstr_ProvisioningAd.isa, &stru_1F3BD5BF0.isa, v9);
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if ((credentialProvisioningType - 6) < 4)
  {
    v3 = &stru_1F3BD7330;
    goto LABEL_47;
  }

  if (credentialProvisioningType == 10)
  {
    v13 = [(PKPaymentCredential *)self->_paymentCredential issuerProvisioningExtensionCredential];
    v14 = [v13 entry];
    v15 = [v14 addRequestConfiguration];
    v8 = [v15 localizedDescription];

    if ([v8 length])
    {
      PKLocalizedPaymentString(&cfstr_IssuerAddDescr_0.isa, &stru_1F3BD5BF0.isa, v8);
      goto LABEL_32;
    }

    category = self->_category;
    if (category == 2)
    {
      v16 = PKLocalizedAquamanString(&cfstr_IssuerAddAccou_0.isa);
      goto LABEL_45;
    }

    if (category == 1)
    {
      v18 = @"ISSUER_ADD_DESCRIPTION_GENERIC_KEY";
    }

    else
    {
      if (category)
      {
        v3 = 0;
        goto LABEL_46;
      }

      v18 = @"ISSUER_ADD_DESCRIPTION_GENERIC";
    }

    goto LABEL_44;
  }

LABEL_47:

  return v3;
}

- (id)_remoteExistingCredentialDefaultHeaderViewSubTitle
{
  if (self->_displayType != 1)
  {
    v18 = &stru_1F3BD7330;
    goto LABEL_45;
  }

  credentialProvisioningType = self->_credentialProvisioningType;
  [(PKPaymentSetupTableViewController *)self context];
  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  v5 = [(PKNewPaymentCredentialProvisioningViewController *)self visibleFieldIdentifiers];
  v6 = [(PKNewPaymentCredentialProvisioningViewController *)self readonlyFieldIdentifiers];
  v7 = [v5 pk_arrayByRemovingObjectsInArray:v6];

  v8 = [(PKPaymentCredential *)self->_paymentCredential state];
  v9 = [v8 requirementsResponse];
  v10 = [v9 requiredPaymentSetupFields];
  v11 = [v10 count];

  if ([v7 count] == 1 && objc_msgSend(v7, "containsObject:", *MEMORY[0x1E69BC1C8]))
  {
    category = self->_category;
    v13 = @"ENTER_ON_FILE_CARD_SECURITY_CODE_";
    if (IsSetupAssistant)
    {
      v13 = @"ENTER_ON_FILE_CARD_SECURITY_CODE_SETUP_ASSISTANT_";
      v14 = @"ENTER_ON_FILE_ACCOUNT_SECURITY_CODE_SETUP_ASSISTANT_";
    }

    else
    {
      v14 = @"ENTER_ON_FILE_ACCOUNT_SECURITY_CODE_";
    }

    v15 = category >= 2;
    if (category == 2)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v13;
    }
  }

  else
  {
    v19 = [v7 count];
    v20 = self->_category;
    if (v19)
    {
      v21 = @"VERIFY_AND_COMPLETE_ON_FILE_CARD_INFO_";
      v22 = v20 >= 2;
      v23 = v20 == 2;
      v24 = @"VERIFY_AND_COMPLETE_ON_FILE_ACCOUNT_INFO_";
    }

    else
    {
      if (v20 != 2 && credentialProvisioningType != 3 && !v11)
      {
        v25 = 1;
        v17 = @"CONFIRM_ADDING_ON_FILE_CARD_INFO_";
        goto LABEL_28;
      }

      v21 = @"VERIFY_ON_FILE_CARD_INFO_";
      v22 = v20 >= 2;
      v23 = v20 == 2;
      v24 = @"VERIFY_ON_FILE_ACCOUNT_INFO_";
    }

    if (!v23)
    {
      v24 = 0;
    }

    if (v22)
    {
      v17 = v24;
    }

    else
    {
      v17 = v21;
    }
  }

  if (credentialProvisioningType != 3)
  {
    v25 = 0;
LABEL_28:
    v26 = [(PKPaymentCredential *)self->_paymentCredential longDescription];
    if (v26)
    {
      v17 = [(__CFString *)v17 stringByAppendingString:@"APPLE_PAY"];
      if (v25)
      {
        [(PKPaymentSetupTableViewController *)self context];
        IsBridge = PKPaymentSetupContextIsBridge();
        v28 = PKDeviceSpecificLocalizedStringKeyForKey(v17, IsBridge);

        v17 = v28;
      }

      v29 = self->_category;
      if (v29 < 2)
      {
        v30 = PKLocalizedPaymentString(&v17->isa, &stru_1F3BD5BF0.isa, v26);
LABEL_41:
        v18 = v30;
LABEL_43:

        goto LABEL_44;
      }

      if (v29 == 2)
      {
        v30 = PKLocalizedAquamanString(&v17->isa, &stru_1F3BD5BF0.isa, v26);
        goto LABEL_41;
      }
    }

    v18 = &stru_1F3BD7330;
    goto LABEL_43;
  }

  v31 = [(__CFString *)v17 stringByAppendingString:@"IDMS"];
  v17 = v31;
  v32 = self->_category;
  if (v32 < 2)
  {
    v33 = PKLocalizedPaymentString(v31);
LABEL_38:
    v18 = v33;
    goto LABEL_44;
  }

  if (v32 == 2)
  {
    v33 = PKLocalizedAquamanString(v31);
    goto LABEL_38;
  }

  v18 = &stru_1F3BD7330;
LABEL_44:

LABEL_45:

  return v18;
}

- (id)_defaultHeaderViewSubTitleForLocalCredentialTransfer
{
  v3 = [(PKPaymentCredential *)self->_paymentCredential localPassCredential];
  v4 = [v3 paymentPass];

  v5 = [(PKTransitBalanceModel *)self->_transitBalanceModel hasDeviceBoundCommutePlans];
  v6 = [v4 devicePrimaryPaymentApplication];
  v7 = [v6 paymentNetworkIdentifier];

  if ([v4 isRemotePass])
  {
    if (v7 == 131)
    {
      goto LABEL_5;
    }

    v9 = @"SETTINGS_TRANSFER_PASS_SUBTITLE_WATCH_TO_IPHONE";
  }

  else
  {
    if (v5)
    {
LABEL_5:
      v8 = PKPassLocalizedStringWithFormat();
      goto LABEL_9;
    }

    v9 = @"SETTINGS_TRANSFER_PASS_SUBTITLE_IPHONE_TO_WATCH";
  }

  v8 = PKLocalizedPaymentString(&v9->isa);
LABEL_9:
  v10 = v8;

  return v10;
}

- (id)_defaultHeaderViewSubTitleForLocalCredential
{
  [(PKPaymentCredential *)self->_paymentCredential credentialType];
  v3 = [(PKNewPaymentCredentialProvisioningViewController *)self visibleFieldIdentifiers];
  v4 = [(PKNewPaymentCredentialProvisioningViewController *)self readonlyFieldIdentifiers];
  v5 = [v3 pk_arrayByRemovingObjectsInArray:v4];

  if ([v5 count] == 1 && (objc_msgSend(v5, "containsObject:", *MEMORY[0x1E69BC1C8]) & 1) != 0)
  {
    v6 = @"ENTER_LOCAL_PASS_SECURITY_CODE_APPLE_WATCH";
  }

  else if ([v5 count])
  {
    v6 = @"VERIFY_AND_COMPLETE_LOCAL_PASS_INFO_APPLE_WATCH";
  }

  else if ([v3 count])
  {
    v6 = @"VERIFY_LOCAL_PASS_INFO_APPLE_WATCH";
  }

  else
  {
    v6 = @"CONFIRM_ADDING_LOCAL_PASS_APPLE_WATCH";
  }

  v7 = PKDisplayablePaymentNetworkCardNameForPaymentCredentialType();
  v8 = PKLocalizedPaymentString(&v6->isa, &stru_1F3BD5BF0.isa, v7);

  return v8;
}

- (void)paymentPassUpdatedOnCredential:(id)a3
{
  if ([a3 isEqual:self->_paymentCredential])
  {

    [(PKNewPaymentCredentialProvisioningViewController *)self _updatePassSnapshotHeader];
  }
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    [(PKPaymentSetupFieldsViewController *)self endUserInteraction:a3];
  }
}

@end