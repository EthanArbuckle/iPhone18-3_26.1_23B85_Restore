@interface PKAccountOtherCardNumbersViewController
- (BOOL)_isVirtualCardSupportedButNotEnabled;
- (PKAccountOtherCardNumbersViewController)initWithPaymentPass:(id)a3 account:(id)a4 context:(int64_t)a5 localAuthContext:(id)a6 supportsManualFPANEntry:(BOOL)a7 preferDefaultTitle:(BOOL)a8;
- (PKAccountOtherCardNumbersViewController)initWithPhysicalCard:(id)a3 paymentPass:(id)a4 account:(id)a5 context:(int64_t)a6 localAuthContext:(id)a7 supportsManualFPANEntry:(BOOL)a8 preferDefaultTitle:(BOOL)a9;
- (id)_analyticsPageTag;
- (id)_contentConfigurationForExpiredCardMessage;
- (id)_groupedFooterWithText:(id)a3 tableView:(id)a4;
- (id)_localizedStringForKey:(id)a3;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)_appendApplePayCardNumberSectionToConfiguration:(id)a3;
- (void)_appendCardManualEntrySectionToConfiguration:(id)a3;
- (void)_appendNetworkSectionToConfiguration:(id)a3;
- (void)_appendPhysicalCardExpiredMessageSectionToConfiguration:(id)a3;
- (void)_appendPhysicalCardNumberSectionToConfiguration:(id)a3;
- (void)_appendPinSectionToConfiguration:(id)a3;
- (void)_appendRemoveCardInformationSectionToConfiguration:(id)a3;
- (void)_appendSetUpVirtualCardSectionToConfiguration:(id)a3;
- (void)_beginReportingIfNecessary;
- (void)_editButtonPresed;
- (void)_endReportingIfNecessary;
- (void)_fetchFPANInformation;
- (void)_presentReplaceExpiredPhysicalCard;
- (void)_updateBarButtons;
- (void)_updateCardNumbersConfigurationAnimated:(BOOL)a3;
- (void)_updateSavedCardInformation;
- (void)addAutoFillCardFinishedWith:(id)a3 credential:(id)a4 viewController:(id)a5;
- (void)dealloc;
- (void)physicalCardsChanged:(id)a3 forAccountIdentifier:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)virtualCardEnrollmentViewController:(id)a3 didCompleteWithSuccess:(BOOL)a4;
@end

@implementation PKAccountOtherCardNumbersViewController

- (PKAccountOtherCardNumbersViewController)initWithPhysicalCard:(id)a3 paymentPass:(id)a4 account:(id)a5 context:(int64_t)a6 localAuthContext:(id)a7 supportsManualFPANEntry:(BOOL)a8 preferDefaultTitle:(BOOL)a9
{
  v9 = a8;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v29 = a7;
  v30.receiver = self;
  v30.super_class = PKAccountOtherCardNumbersViewController;
  v19 = -[PKAccountOtherCardNumbersViewController initWithStyle:](&v30, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_physicalCard, a3);
    objc_storeStrong(&v20->_paymentPass, a4);
    objc_storeStrong(&v20->_account, a5);
    v20->_context = a6;
    objc_storeStrong(&v20->_laContext, a7);
    v20->_preferDefaultTitle = a9;
    v21 = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v20->_accountService;
    v20->_accountService = v21;

    [(PKAccountService *)v20->_accountService registerObserver:v20];
    if ([(PKAccount *)v20->_account feature]== 2)
    {
      v23 = objc_alloc(MEMORY[0x1E695DEE8]);
      v24 = [v23 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      v25 = [(PKAccount *)v20->_account productTimeZone];
      [v24 setTimeZone:v25];

      v20->_isPhysicalCardExpired = [(PKPhysicalCard *)v20->_physicalCard isExpiredInCalendar:v24];
    }

    else
    {
      v20->_isPhysicalCardExpired = 0;
    }

    v26 = objc_alloc_init(MEMORY[0x1E69B8680]);
    cardManager = v20->_cardManager;
    v20->_cardManager = v26;

    v20->_supportsManualFPANEntry = v9;
    if (v9)
    {
      [(PKAccountOtherCardNumbersViewController *)v20 _fetchFPANInformation];
    }
  }

  return v20;
}

- (PKAccountOtherCardNumbersViewController)initWithPaymentPass:(id)a3 account:(id)a4 context:(int64_t)a5 localAuthContext:(id)a6 supportsManualFPANEntry:(BOOL)a7 preferDefaultTitle:(BOOL)a8
{
  v9 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v25.receiver = self;
  v25.super_class = PKAccountOtherCardNumbersViewController;
  v18 = -[PKAccountOtherCardNumbersViewController initWithStyle:](&v25, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_paymentPass, a3);
    objc_storeStrong(&v19->_account, a4);
    v19->_context = a5;
    objc_storeStrong(&v19->_laContext, a6);
    v19->_preferDefaultTitle = a8;
    v19->_isPhysicalCardExpired = 0;
    v20 = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v19->_accountService;
    v19->_accountService = v20;

    [(PKAccountService *)v19->_accountService registerObserver:v19];
    v22 = objc_alloc_init(MEMORY[0x1E69B8680]);
    cardManager = v19->_cardManager;
    v19->_cardManager = v22;

    v19->_supportsManualFPANEntry = v9;
    if (v9)
    {
      [(PKAccountOtherCardNumbersViewController *)v19 _fetchFPANInformation];
    }
  }

  return v19;
}

- (void)dealloc
{
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKAccountOtherCardNumbersViewController;
  [(PKAccountOtherCardNumbersViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v21[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PKAccountOtherCardNumbersViewController;
  [(PKSettingsTableViewController *)&v19 viewDidLoad];
  [(PKAccountOtherCardNumbersViewController *)self _updateCardNumbersConfigurationAnimated:1];
  v3 = [(PKAccountOtherCardNumbersViewController *)self navigationItem];
  v4 = PKLocalizedCardNumbersString(&cfstr_CardNumbersTit.isa);
  [v3 setTitle:v4];

  if (!self->_preferDefaultTitle)
  {
    v5 = [MEMORY[0x1E69B8EF8] sharedService];
    if (PKVirtualCardEnabledWithWebService() && ![(PKAccount *)self->_account feature])
    {
      v16 = [(PKPaymentPass *)self->_paymentPass hasActiveVirtualCard];

      if (v16)
      {
        v17 = [(PKAccountOtherCardNumbersViewController *)self navigationItem];
        v18 = PKLocalizedCardNumbersString(&cfstr_CardNumbersOth.isa);
        [v17 setTitle:v18];
      }
    }

    else
    {
    }

    if ([(PKAccount *)self->_account feature]== 2)
    {
      v6 = [(PKAccountOtherCardNumbersViewController *)self navigationItem];
      v7 = PKLocalizedCardNumbersString(&cfstr_CardNumbersOth.isa);
      [v6 setTitle:v7];
    }
  }

  v8 = [(PKAccountOtherCardNumbersViewController *)self tableView];
  [v8 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"footer"];

  if ([(PKAccountOtherCardNumbersViewController *)self _isVirtualCardSupportedButNotEnabled])
  {
    [(PKAccountOtherCardNumbersViewController *)self _beginReportingIfNecessary];
    v9 = MEMORY[0x1E69B8540];
    v10 = *MEMORY[0x1E69BB6F8];
    v11 = *MEMORY[0x1E69BA680];
    v21[0] = *MEMORY[0x1E69BA818];
    v12 = *MEMORY[0x1E69BABE8];
    v20[0] = v11;
    v20[1] = v12;
    v13 = [(PKAccountOtherCardNumbersViewController *)self _analyticsPageTag];
    v21[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v9 subject:v10 sendEvent:v14];
  }

  v15 = [(PKAccountOtherCardNumbersViewController *)self view];
  [v15 setAccessibilityIdentifier:*MEMORY[0x1E69B9408]];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKAccountOtherCardNumbersViewController;
  [(PKAccountOtherCardNumbersViewController *)&v4 viewWillAppear:a3];
  if (!self->_fetchingFPAN)
  {
    [(PKAccountOtherCardNumbersViewController *)self _fetchFPANInformation];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKAccountOtherCardNumbersViewController;
  [(PKAccountOtherCardNumbersViewController *)&v4 viewWillDisappear:a3];
  if ([(PKAccountOtherCardNumbersViewController *)self _isVirtualCardSupportedButNotEnabled])
  {
    [(PKAccountOtherCardNumbersViewController *)self _endReportingIfNecessary];
  }
}

- (BOOL)_isVirtualCardSupportedButNotEnabled
{
  v3 = [MEMORY[0x1E69B8EF8] sharedService];
  if (PKVirtualCardEnabledWithWebService() && [(PKPaymentPass *)self->_paymentPass supportsVirtualCardNumber])
  {
    v4 = [(PKPaymentPass *)self->_paymentPass hasActiveVirtualCard]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_analyticsPageTag
{
  if (self->_context == 3)
  {
    v2 = MEMORY[0x1E69BB670];
  }

  else
  {
    v2 = MEMORY[0x1E69BA498];
  }

  return *v2;
}

- (void)_beginReportingIfNecessary
{
  v3 = *MEMORY[0x1E69BB6F8];
  v4 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6F8]];

  if (!v4)
  {
    self->_didBeginPassManagementSubject = 1;
    v5 = MEMORY[0x1E69B8540];

    [v5 beginSubjectReporting:v3];
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginPassManagementSubject)
  {
    [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6F8]];
  }
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(PKSettingsTableViewController *)self indexOfSectionWithIdentifier:@"physicalCardNumber"]== a4)
  {
    v7 = @"ACCOUNT_SERVICE_CARD_NUMBERS_OTHER_NUMBERS_TITANIUM_SECONDARY";
LABEL_5:
    v8 = [(PKAccountOtherCardNumbersViewController *)self _localizedStringForKey:v7];
LABEL_6:
    v9 = v8;
    v10 = [(PKAccountOtherCardNumbersViewController *)self _groupedFooterWithText:v8 tableView:v6];

    goto LABEL_7;
  }

  if ([(PKSettingsTableViewController *)self indexOfSectionWithIdentifier:@"applePayCardNumber"]== a4)
  {
    v7 = @"ACCOUNT_SERVICE_CARD_NUMBERS_OTHER_NUMBERS_APPLE_PAY_SECONDARY";
    goto LABEL_5;
  }

  if ([(PKSettingsTableViewController *)self indexOfSectionWithIdentifier:@"PIN"]== a4)
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPin.isa);
    goto LABEL_6;
  }

  if ([(PKSettingsTableViewController *)self indexOfSectionWithIdentifier:@"setUpVirtualCard"]== a4)
  {
    if ([(PKPaymentPass *)self->_paymentPass associatedAccountFeatureIdentifier]== 1)
    {
      PKLocalizedCashVPANString(&cfstr_CardNumbersOth_0.isa);
    }

    else
    {
      PKLocalizedVirtualCardString(&cfstr_CardNumbersOth_1.isa);
    }
    v8 = ;
    goto LABEL_6;
  }

  if ([(PKSettingsTableViewController *)self indexOfSectionWithIdentifier:@"manualCardEntry"]== a4)
  {
    v12 = @"FPAN_PHYSICAL_DETAILS_FOOTER_TEXT";
LABEL_21:
    v8 = PKLocalizedPaymentString(&v12->isa);
    goto LABEL_6;
  }

  if ([(PKSettingsTableViewController *)self indexOfSectionWithIdentifier:@"removeManualCardEntry"]== a4)
  {
    v12 = @"FPAN_CARD_DETAILS_DELETE_CARD_BUTTON_FOOTER";
    goto LABEL_21;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)_updateCardNumbersConfigurationAnimated:(BOOL)a3
{
  v3 = a3;
  v16 = objc_alloc_init(PKSettingsTableViewConfiguration);
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  if (PKVirtualCardEnabledWithWebService())
  {
    v6 = [(PKPaymentPass *)self->_paymentPass hasActiveVirtualCard];

    if ((v6 & 1) == 0 && [(PKPaymentPass *)self->_paymentPass supportsVirtualCardNumber])
    {
      [(PKAccountOtherCardNumbersViewController *)self _appendSetUpVirtualCardSectionToConfiguration:v16];
    }
  }

  else
  {
  }

  if (self->_supportsManualFPANEntry)
  {
    [(PKAccountOtherCardNumbersViewController *)self _appendCardManualEntrySectionToConfiguration:v16];
  }

  if (self->_editing)
  {
    [(PKAccountOtherCardNumbersViewController *)self _appendRemoveCardInformationSectionToConfiguration:v16];
  }

  if (!self->_supportsManualFPANEntry && ![(PKAccount *)self->_account feature])
  {
    v7 = [MEMORY[0x1E69B8EF8] sharedService];
    if (PKVirtualCardEnabledWithWebService())
    {
      v8 = [(PKPaymentPass *)self->_paymentPass hasActiveVirtualCard];

      if ((v8 & 1) == 0)
      {
        [(PKAccountOtherCardNumbersViewController *)self _appendNetworkSectionToConfiguration:v16];
      }
    }

    else
    {
    }
  }

  if (!self->_supportsManualFPANEntry)
  {
    if (self->_physicalCard || !-[PKAccount feature](self->_account, "feature") && (-[PKPaymentPass primaryAccountNumberSuffix](self->_paymentPass, "primaryAccountNumberSuffix"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v15))
    {
      if (self->_isPhysicalCardExpired)
      {
        if ([(PKAccount *)self->_account supportsRequestPhysicalCard])
        {
          if ([(PKAccount *)self->_account state]== 1)
          {
            v9 = [(PKAccount *)self->_account accountIdentifier];
            v10 = [(PKPhysicalCard *)self->_physicalCard identifier];
            HasDismissedPhysicalCardExpiredCardNumbersMessage = PKAppleCardHasDismissedPhysicalCardExpiredCardNumbersMessage();

            if ((HasDismissedPhysicalCardExpiredCardNumbersMessage & 1) == 0)
            {
              [(PKAccountOtherCardNumbersViewController *)self _appendPhysicalCardExpiredMessageSectionToConfiguration:v16];
            }
          }
        }
      }

      [(PKAccountOtherCardNumbersViewController *)self _appendPhysicalCardNumberSectionToConfiguration:v16];
    }
  }

  if (self->_paymentPass)
  {
    [(PKAccountOtherCardNumbersViewController *)self _appendApplePayCardNumberSectionToConfiguration:v16];
    paymentPass = self->_paymentPass;
  }

  else
  {
    paymentPass = 0;
  }

  if ([(PKPaymentPass *)paymentPass hasAssociatedPeerPaymentAccount])
  {
    [(PKAccountOtherCardNumbersViewController *)self _appendPinSectionToConfiguration:v16];
  }

  v13 = v16;
  if (v16)
  {
    [(PKSettingsTableViewController *)self applyConfiguration:v16 animated:v3];
    v13 = v16;
  }

  if (self->_supportsManualFPANEntry)
  {
    [(PKAccountOtherCardNumbersViewController *)self _updateBarButtons];
    v13 = v16;
  }
}

- (void)_updateBarButtons
{
  if (self->_fpanCard && self->_fpanCardCredential)
  {
    v3 = objc_alloc(MEMORY[0x1E69DC708]);
    if (self->_editing)
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }

    v6 = [v3 initWithBarButtonSystemItem:v4 target:self action:sel__editButtonPresed];
    v5 = [(PKAccountOtherCardNumbersViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v6];
  }

  else
  {
    v6 = [(PKAccountOtherCardNumbersViewController *)self navigationItem];
    [v6 setRightBarButtonItem:0];
  }
}

- (void)_editButtonPresed
{
  editing = self->_editing;
  self->_editing = !editing;
  if (editing)
  {
    [(PKAccountOtherCardNumbersViewController *)self _updateSavedCardInformation];
  }

  [(PKAccountOtherCardNumbersViewController *)self _updateCardNumbersConfigurationAnimated:1];
}

- (void)_appendCardManualEntrySectionToConfiguration:(id)a3
{
  v41[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"manualCardEntry"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_fetchingFPAN)
  {
    v7 = [PKStackedTableViewSettingsRow alloc];
    v8 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_4.isa);
    v9 = [(PKStackedTableViewSettingsRow *)v7 initWithIdentifier:@"loadingItem" title:v8 subtitle:0];

    [(PKStackedTableViewSettingsRow *)v9 setShowSpinner:1];
    [v6 addObject:v9];
  }

  else if (self->_fpanCard && self->_fpanCardCredential)
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E69B8E18]);
    v11 = [(PKMutableAutofillCardCredential *)self->_fpanCardCredential primaryAccountNumber];
    [v10 setCurrentValue:v11];

    v12 = [PKFieldTableViewSettingsRow alloc];
    location[1] = MEMORY[0x1E69E9820];
    location[2] = 3221225472;
    location[3] = __88__PKAccountOtherCardNumbersViewController__appendCardManualEntrySectionToConfiguration___block_invoke;
    location[4] = &unk_1E8010A10;
    v39 = v10;
    v40 = self;
    v31 = v10;
    v33 = [PKFieldTableViewSettingsRow initWithIdentifier:v12 field:"initWithIdentifier:field:editing:onValueChange:" editing:@"physicalCardNumberItem" onValueChange:?];
    [(PKFieldTableViewSettingsRow *)v33 setRedact:1];
    [v35 addObject:v31];
    v34 = objc_alloc_init(MEMORY[0x1E69B8DF8]);
    [v34 setOptional:1];
    v13 = [(PKMutableAutofillCardCredential *)self->_fpanCardCredential cardholderName];
    [v34 setCurrentValue:v13];

    v30 = [[PKFieldTableViewSettingsRow alloc] initWithIdentifier:@"physicalCardNameItem" field:v34 editing:self->_editing onValueChange:0];
    [v35 addObject:v34];
    v14 = objc_alloc_init(MEMORY[0x1E69B8DE0]);
    [v14 setOptional:1];
    v15 = [(PKMutableAutofillCardCredential *)self->_fpanCardCredential expirationDate];
    [v14 setCurrentValue:v15];

    v32 = [[PKFieldTableViewSettingsRow alloc] initWithIdentifier:@"physicalCardExpirationItem" field:v14 editing:self->_editing onValueChange:0];
    [(PKFieldTableViewSettingsRow *)v32 setRedact:1];
    [v35 addObject:v14];
    v16 = objc_alloc_init(MEMORY[0x1E69B8DF0]);
    [v16 setOptional:1];
    v17 = [(PKMutableAutofillCardCredential *)self->_fpanCardCredential securityCode];
    [v16 setCurrentValue:v17];

    v18 = [[PKFieldTableViewSettingsRow alloc] initWithIdentifier:@"physicalCardCVVItem" field:v16 editing:self->_editing onValueChange:0];
    [(PKFieldTableViewSettingsRow *)v18 setRedact:1];
    [v35 addObject:v16];
    v19 = objc_alloc_init(MEMORY[0x1E69B8E08]);
    [v19 setOptional:1];
    v20 = PKLocalizedPaymentString(&cfstr_FpanCardDescri.isa);
    [v19 setLocalizedDisplayName:v20];

    v21 = [(PKFPANCardDescriptor *)self->_fpanCard cardNickname];
    [v19 setCurrentValue:v21];

    v22 = [[PKFieldTableViewSettingsRow alloc] initWithIdentifier:@"physicalCardDescription" field:v19 editing:self->_editing onValueChange:0];
    [(PKFieldTableViewSettingsRow *)v22 setRedact:1];
    [v35 addObject:v19];
    v23 = [v35 copy];
    fields = self->_fields;
    self->_fields = v23;

    v41[0] = v33;
    v41[1] = v30;
    v41[2] = v32;
    v41[3] = v18;
    v41[4] = v22;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:5];
    [v6 addObjectsFromArray:v25];
  }

  else
  {
    objc_initWeak(location, self);
    v26 = [PKMultiLineButtonTableViewSettingsRow alloc];
    v27 = PKLocalizedPaymentString(&cfstr_FpanAddPhysica.isa);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __88__PKAccountOtherCardNumbersViewController__appendCardManualEntrySectionToConfiguration___block_invoke_2;
    v36[3] = &unk_1E8017FC0;
    objc_copyWeak(&v37, location);
    v36[4] = self;
    v28 = [(PKButtonTableViewSettingsRow *)v26 initWithIdentifier:@"manualCardEntryAction" title:v27 tapHandler:v36];

    [(PKButtonTableViewSettingsRow *)v28 setEnabled:1];
    [v6 addObject:v28];

    objc_destroyWeak(&v37);
    objc_destroyWeak(location);
  }

  v29 = [v6 copy];
  [v4 appendSection:v5 rows:v29];
}

void __88__PKAccountOtherCardNumbersViewController__appendCardManualEntrySectionToConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentValue];
  v6 = v2;
  if (v2)
  {
    v3 = [v2 length] != 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 40) navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:v3];
}

void __88__PKAccountOtherCardNumbersViewController__appendCardManualEntrySectionToConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__PKAccountOtherCardNumbersViewController__appendCardManualEntrySectionToConfiguration___block_invoke_3;
    block[3] = &unk_1E8010970;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __88__PKAccountOtherCardNumbersViewController__appendCardManualEntrySectionToConfiguration___block_invoke_3(uint64_t a1)
{
  v2 = [PKAddAutoFillCardViewController alloc];
  v3 = [MEMORY[0x1E69B8EF8] sharedService];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1080);
  v6 = [*(v4 + 1064) primaryAccountIdentifier];
  v7 = [*(*(a1 + 32) + 1064) uniqueID];
  v8 = [*(*(a1 + 32) + 1064) devicePrimaryPaymentApplication];
  [v8 paymentNetworkIdentifier];
  v9 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
  v11 = [(PKAddAutoFillCardViewController *)v2 initWithWebService:v3 context:v5 delegate:v4 primaryAccountIdentifier:v6 passUniqueIdentifier:v7 displayablePaymentCredentialType:v9];

  v10 = [*(a1 + 32) navigationController];
  [v10 presentViewController:v11 animated:1 completion:0];
}

- (void)_appendRemoveCardInformationSectionToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"removeManualCardEntry"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v7 = [PKButtonTableViewSettingsRow alloc];
  v8 = PKLocalizedPaymentString(&cfstr_FpanCardDetail_4.isa);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__PKAccountOtherCardNumbersViewController__appendRemoveCardInformationSectionToConfiguration___block_invoke;
  v11[3] = &unk_1E8017FC0;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  v9 = [(PKButtonTableViewSettingsRow *)v7 initWithIdentifier:@"removeManualCardEntryButton" title:v8 tapHandler:v11];

  [(PKButtonTableViewSettingsRow *)v9 setStyle:1];
  [(PKButtonTableViewSettingsRow *)v9 setEnabled:1];
  [v6 addObject:v9];
  v10 = [v6 copy];
  [v4 appendSection:v5 rows:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __94__PKAccountOtherCardNumbersViewController__appendRemoveCardInformationSectionToConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E69DC650];
    v6 = PKLocalizedPaymentString(&cfstr_FpanCardDetail_4.isa);
    v7 = PKLocalizedPaymentString(&cfstr_FpanCardDetail_6.isa);
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:0];

    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedPaymentString(&cfstr_FpanCardDetail_7.isa);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__PKAccountOtherCardNumbersViewController__appendRemoveCardInformationSectionToConfiguration___block_invoke_2;
    v18[3] = &unk_1E8011310;
    v11 = *(a1 + 32);
    v18[4] = WeakRetained;
    v18[5] = v11;
    v12 = [v9 actionWithTitle:v10 style:2 handler:v18];
    [v8 addAction:v12];

    v13 = MEMORY[0x1E69DC648];
    v14 = PKLocalizedString(&cfstr_Cancel.isa);
    v15 = [v13 actionWithTitle:v14 style:1 handler:0];
    [v8 addAction:v15];

    v16 = [v3 sourceItem];
    if (v16)
    {
      v17 = [v8 popoverPresentationController];
      [v17 setSourceItem:v16];
    }

    [WeakRetained presentViewController:v8 animated:1 completion:0];
  }
}

uint64_t __94__PKAccountOtherCardNumbersViewController__appendRemoveCardInformationSectionToConfiguration___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1136) deleteFPANCardWithDescriptor:*(*(a1 + 40) + 1128) completion:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1120);
  *(v2 + 1120) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1128);
  *(v4 + 1128) = 0;

  *(*(a1 + 32) + 1144) = 0;
  v6 = *(a1 + 32);

  return [v6 _updateCardNumbersConfigurationAnimated:1];
}

- (void)_appendNetworkSectionToConfiguration:(id)a3
{
  v4 = a3;
  v12 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"network"];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(PKPaymentPass *)self->_paymentPass devicePrimaryPaymentApplication];
  [v6 paymentNetworkIdentifier];
  v7 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();

  v8 = [PKKeyValueTableViewSettingsRow alloc];
  v9 = PKLocalizedCardNumbersString(&cfstr_CardNumbersVir_5.isa);
  v10 = [(PKKeyValueTableViewSettingsRow *)v8 initWithIdentifier:@"network" title:v9 value:v7];

  [v5 addObject:v10];
  v11 = [v5 copy];
  [v4 appendSection:v12 rows:v11];
}

- (void)_appendSetUpVirtualCardSectionToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"setUpVirtualCard"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v7 = [PKButtonTableViewSettingsRow alloc];
  v8 = PKLocalizedVirtualCardString(&cfstr_CardNumbersOth_2.isa);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __89__PKAccountOtherCardNumbersViewController__appendSetUpVirtualCardSectionToConfiguration___block_invoke;
  v14 = &unk_1E8017FE8;
  objc_copyWeak(&v15, &location);
  v9 = [(PKButtonTableViewSettingsRow *)v7 initWithIdentifier:@"setUpVirtualCard" title:v8 tapHandler:&v11];

  [(PKButtonTableViewSettingsRow *)v9 setEnabled:1, v11, v12, v13, v14];
  [v6 addObject:v9];
  v10 = [v6 copy];
  [v4 appendSection:v5 rows:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __89__PKAccountOtherCardNumbersViewController__appendSetUpVirtualCardSectionToConfiguration___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PKVirtualCardEnrollmentViewController alloc] initWithPaymentPass:WeakRetained[133] context:WeakRetained[135] delegate:WeakRetained];
    v3 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v2];
    [v3 setModalPresentationStyle:2];
    [WeakRetained presentViewController:v3 animated:1 completion:0];
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6F8];
    v6 = *MEMORY[0x1E69BA680];
    v12[0] = *MEMORY[0x1E69BA6F0];
    v7 = *MEMORY[0x1E69BABE8];
    v11[0] = v6;
    v11[1] = v7;
    v8 = [WeakRetained _analyticsPageTag];
    v11[2] = *MEMORY[0x1E69BA440];
    v9 = *MEMORY[0x1E69BB1E8];
    v12[1] = v8;
    v12[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v4 subject:v5 sendEvent:v10];
  }
}

- (void)_appendPhysicalCardExpiredMessageSectionToConfiguration:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"physicalCardExpiredMessage"];
  v6 = [PKMessageTableViewSettingsRow alloc];
  v7 = [(PKAccountOtherCardNumbersViewController *)self _contentConfigurationForExpiredCardMessage];
  v8 = [(PKMessageTableViewSettingsRow *)v6 initWithIdentifier:@"physicalCardExpiredMessage" contentConfiguration:v7];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__PKAccountOtherCardNumbersViewController__appendPhysicalCardExpiredMessageSectionToConfiguration___block_invoke;
  v18[3] = &unk_1E8010998;
  objc_copyWeak(&v19, &location);
  [(PKMessageTableViewSettingsRow *)v8 setActionOnDismiss:v18];
  v9 = [PKButtonTableViewSettingsRow alloc];
  v10 = PKLocalizedFeatureString();
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __99__PKAccountOtherCardNumbersViewController__appendPhysicalCardExpiredMessageSectionToConfiguration___block_invoke_2;
  v16 = &unk_1E8017FE8;
  objc_copyWeak(&v17, &location);
  v11 = [(PKButtonTableViewSettingsRow *)v9 initWithIdentifier:@"physicalCardExpiredMessageAction" title:v10 tapHandler:&v13];

  [(PKButtonTableViewSettingsRow *)v11 setStyle:2, v13, v14, v15, v16];
  [(PKButtonTableViewSettingsRow *)v11 setEnabled:1];
  v21[0] = v8;
  v21[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  [v4 appendSection:v5 rows:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __99__PKAccountOtherCardNumbersViewController__appendPhysicalCardExpiredMessageSectionToConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[134] accountIdentifier];
    v3 = [v4[132] identifier];
    PKAppleCardSetHasDismissedPhysicalCardExpiredCardNumbersMessage();

    [v4 _updateCardNumbersConfigurationAnimated:1];
    WeakRetained = v4;
  }
}

void __99__PKAccountOtherCardNumbersViewController__appendPhysicalCardExpiredMessageSectionToConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _presentReplaceExpiredPhysicalCard];
    WeakRetained = v2;
  }
}

- (id)_contentConfigurationForExpiredCardMessage
{
  v2 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v3 = PKLocalizedFeatureString();
  [v2 setText:v3];

  v4 = [v2 textProperties];
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
  [v4 setFont:v5];

  v6 = PKLocalizedFeatureString();
  [v2 setSecondaryText:v6];

  v7 = [v2 secondaryTextProperties];
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
  [v7 setFont:v8];

  v9 = [v2 secondaryTextProperties];
  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v9 setColor:v10];

  [v2 setTextToSecondaryTextVerticalPadding:5.0];
  v11 = PKPassKitUIBundle();
  v12 = [v11 URLForResource:@"MessageAlert" withExtension:@"pdf"];
  v13 = PKUIScreenScale();
  v14 = PKUIImageFromPDF(v12, 42.0, 42.0, v13);

  [v2 setImage:v14];
  v15 = [v2 imageProperties];
  v16 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:42.0];
  [v15 setPreferredSymbolConfiguration:v16];

  [v2 setImageToTextPadding:12.0];
  v17 = [v2 imageProperties];
  [v17 setReservedLayoutSize:{42.0, 42.0}];

  [v2 setDirectionalLayoutMargins:{12.0, 20.0, 12.0, 20.0}];

  return v2;
}

- (void)_presentReplaceExpiredPhysicalCard
{
  objc_initWeak(&location, self);
  accountService = self->_accountService;
  v4 = [(PKAccount *)self->_account accountIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKAccountOtherCardNumbersViewController__presentReplaceExpiredPhysicalCard__block_invoke;
  v5[3] = &unk_1E8012468;
  objc_copyWeak(&v6, &location);
  [(PKAccountService *)accountService accountUsersForAccountWithIdentifier:v4 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __77__PKAccountOtherCardNumbersViewController__presentReplaceExpiredPhysicalCard__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:v3];
    v6 = [v5 currentAccountUser];
    v7 = *(WeakRetained + 137);
    v8 = [*(WeakRetained + 134) accountIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PKAccountOtherCardNumbersViewController__presentReplaceExpiredPhysicalCard__block_invoke_2;
    v10[3] = &unk_1E8018038;
    objc_copyWeak(&v12, (a1 + 32));
    v9 = v6;
    v11 = v9;
    [v7 physicalCardsForAccountWithIdentifier:v8 completion:v10];

    objc_destroyWeak(&v12);
  }
}

void __77__PKAccountOtherCardNumbersViewController__presentReplaceExpiredPhysicalCard__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [PKPhysicalCardController alloc];
    v4 = WeakRetained[137];
    v5 = WeakRetained[133];
    v6 = WeakRetained[134];
    v7 = *(a1 + 32);
    v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v9 = [(PKPhysicalCardController *)v3 initWithAccountService:v4 paymentPass:v5 account:v6 accountUser:v7 physicalCards:v8];

    v10 = WeakRetained[135];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PKAccountOtherCardNumbersViewController__presentReplaceExpiredPhysicalCard__block_invoke_3;
    v11[3] = &unk_1E8018010;
    v11[4] = WeakRetained;
    [(PKPhysicalCardController *)v9 replaceFlowViewControllerForReason:1 content:v10 currentPhysicalCard:0 completion:v11];
  }
}

void __77__PKAccountOtherCardNumbersViewController__presentReplaceExpiredPhysicalCard__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [[PKNavigationController alloc] initWithRootViewController:v7];
    [(PKNavigationController *)v6 setModalPresentationStyle:2];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
  }

  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];

LABEL_6:
}

- (void)_appendPhysicalCardNumberSectionToConfiguration:(id)a3
{
  v4 = a3;
  v22 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"physicalCardNumber"];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKAccount *)self->_account feature]== 2)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = PKPANMask();
    v8 = PKPANMask();
    v9 = [(PKPhysicalCard *)self->_physicalCard FPANSuffix];
    v10 = PKMaskedPaymentPAN();
    v11 = [v6 stringWithFormat:@"%@ %@ %@", v7, v8, v10];
    v12 = PKLTRString();
  }

  else
  {
    v7 = [(PKPaymentPass *)self->_paymentPass primaryAccountNumberSuffix];
    v12 = PKMaskedPaymentPAN();
  }

  v13 = [PKKeyValueTableViewSettingsRow alloc];
  v14 = [(PKAccountOtherCardNumbersViewController *)self _localizedStringForKey:@"ACCOUNT_SERVICE_CARD_NUMBERS_OTHER_NUMBERS_TITANIUM_TITLE"];
  v15 = [(PKKeyValueTableViewSettingsRow *)v13 initWithIdentifier:@"physicalCardNumber" title:v14 value:v12];

  [(PKKeyValueTableViewSettingsRow *)v15 setSensitive:1];
  [v5 addObject:v15];
  v16 = [(PKPhysicalCard *)self->_physicalCard formattedExpiration];
  if (v16)
  {
    v17 = [PKKeyValueTableViewSettingsRow alloc];
    v18 = [(PKAccountOtherCardNumbersViewController *)self _localizedStringForKey:@"ACCOUNT_SERVICE_CARD_NUMBERS_OTHER_NUMBERS_TITANIUM_EXPIRATION_TITLE"];
    v19 = [(PKKeyValueTableViewSettingsRow *)v17 initWithIdentifier:@"physicalCardExpiration" title:v18 value:v16];

    if (self->_isPhysicalCardExpired)
    {
      v20 = [MEMORY[0x1E69DC888] systemRedColor];
      [(PKKeyValueTableViewSettingsRow *)v19 setSecondaryTextColor:v20];
    }

    [v5 addObject:v19];
  }

  else
  {
    v19 = v15;
  }

  v21 = [v5 copy];
  [v4 appendSection:v22 rows:v21];
}

- (void)_appendApplePayCardNumberSectionToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"applePayCardNumber"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(PKPaymentPass *)self->_paymentPass devicePaymentApplications];
  v8 = [v7 allObjects];

  v9 = [(PKPaymentPass *)self->_paymentPass sortedPaymentApplications:v8 ascending:1];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__PKAccountOtherCardNumbersViewController__appendApplePayCardNumberSectionToConfiguration___block_invoke;
  v13[3] = &unk_1E8018060;
  v13[4] = self;
  v14 = v9;
  v15 = v6;
  v10 = v6;
  v11 = v9;
  [v11 enumerateObjectsUsingBlock:v13];
  v12 = [v10 copy];
  [v4 appendSection:v5 rows:v12];
}

void __91__PKAccountOtherCardNumbersViewController__appendApplePayCardNumberSectionToConfiguration___block_invoke(id *a1, void *a2)
{
  v17 = a2;
  v3 = PKSanitizedDeviceAccountNumberForPaymentApplication();
  if ([*(a1[4] + 134) feature] == 2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = PKPANMask();
    v6 = PKPANMask();
    v7 = [v4 stringWithFormat:@"%@ %@ %@", v5, v6, v3];
    v8 = PKLTRString();
  }

  else
  {
    v8 = v3;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [v17 applicationIdentifier];
  v11 = [v9 stringWithFormat:@"%@-%@", @"applePayCardNumber", v10];

  v12 = [a1[4] _localizedStringForKey:@"ACCOUNT_SERVICE_CARD_NUMBERS_OTHER_NUMBERS_APPLE_PAY_TITLE"];
  if ([a1[5] count] >= 2)
  {
    v13 = [v17 displayName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;

      v12 = v15;
    }
  }

  v16 = [[PKKeyValueTableViewSettingsRow alloc] initWithIdentifier:v11 title:v12 value:v8];
  [(PKKeyValueTableViewSettingsRow *)v16 setSensitive:1];
  [a1[6] addObject:v16];
}

- (void)_appendPinSectionToConfiguration:(id)a3
{
  v4 = a3;
  v14 = [[PKTableViewDiffableDataSourceSection alloc] initWithIdentifier:@"PIN"];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(PKPaymentPass *)self->_paymentPass localizedValueForFieldKey:*MEMORY[0x1E69BBBB0]];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPin_0.isa);
  }

  v9 = v8;

  v10 = [PKKeyValueTableViewSettingsRow alloc];
  v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPin_1.isa);
  v12 = [(PKKeyValueTableViewSettingsRow *)v10 initWithIdentifier:@"PIN" title:v11 value:v9];

  [v5 addObject:v12];
  v13 = [v5 copy];
  [v4 appendSection:v14 rows:v13];
}

- (id)_groupedFooterWithText:(id)a3 tableView:(id)a4
{
  v5 = a3;
  v6 = [a4 dequeueReusableHeaderFooterViewWithIdentifier:@"footer"];
  v7 = [MEMORY[0x1E69DCC28] groupedFooterConfiguration];
  [v7 setText:v5];

  [v7 directionalLayoutMargins];
  [v7 setDirectionalLayoutMargins:?];
  [v6 setContentConfiguration:v7];

  return v6;
}

- (id)_localizedStringForKey:(id)a3
{
  account = self->_account;
  v5 = a3;
  if ([(PKAccount *)account feature])
  {
    [(PKAccount *)self->_account feature];
    v6 = PKLocalizedFeatureString();
  }

  else
  {
    v7 = -[NSString substringFromIndex:](v5, "substringFromIndex:", [@"ACCOUNT_SERVICE_" length]);

    v6 = PKLocalizedCardNumbersString(v7);
    v5 = v7;
  }

  return v6;
}

- (void)_fetchFPANInformation
{
  self->_fetchingFPAN = 1;
  objc_initWeak(&location, self);
  cardManager = self->_cardManager;
  v4 = [(PKPaymentPass *)self->_paymentPass primaryAccountIdentifier];
  v5 = [(PKPaymentPass *)self->_paymentPass uniqueID];
  v6 = [(LAContext *)self->_laContext externalizedContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKAccountOtherCardNumbersViewController__fetchFPANInformation__block_invoke;
  v7[3] = &unk_1E8018088;
  objc_copyWeak(&v8, &location);
  [(PKAutoFillCardManager *)cardManager fpanCardAndCredentialForPrimaryAccountIdentifier:v4 passUniqueID:v5 authorization:v6 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __64__PKAccountOtherCardNumbersViewController__fetchFPANInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKAccountOtherCardNumbersViewController__fetchFPANInformation__block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __64__PKAccountOtherCardNumbersViewController__fetchFPANInformation__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    *(WeakRetained + 1113) = 0;
    v5 = WeakRetained;
    objc_storeStrong(WeakRetained + 141, a1[4]);
    v3 = [a1[5] mutableCopy];
    v4 = v5[140];
    v5[140] = v3;

    [v5 _updateCardNumbersConfigurationAnimated:1];
    WeakRetained = v5;
  }
}

- (void)addAutoFillCardFinishedWith:(id)a3 credential:(id)a4 viewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke;
  aBlock[3] = &unk_1E8011E88;
  objc_copyWeak(&v30, &location);
  aBlock[4] = self;
  v11 = v8;
  v27 = v11;
  v12 = v9;
  v28 = v12;
  v13 = v10;
  v29 = v13;
  v14 = _Block_copy(aBlock);
  cardManager = self->_cardManager;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_3;
  v20[3] = &unk_1E8018100;
  objc_copyWeak(&v25, &location);
  v20[4] = self;
  v16 = v11;
  v21 = v16;
  v17 = v12;
  v22 = v17;
  v18 = v14;
  v24 = v18;
  v19 = v13;
  v23 = v19;
  [(PKAutoFillCardManager *)cardManager canSaveFPANCardWithDescriptor:v16 credential:v17 completion:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_2;
  block[3] = &unk_1E8011E88;
  objc_copyWeak(&v10, (a1 + 64));
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_storeStrong((*(a1 + 32) + 1128), *(a1 + 40));
    v3 = [*(a1 + 48) mutableCopy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1120);
    *(v4 + 1120) = v3;

    [*(a1 + 56) dismissViewControllerAnimated:1 completion:0];
    [v6 _updateCardNumbersConfigurationAnimated:1];
    WeakRetained = v6;
  }
}

void __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_4;
  block[3] = &unk_1E80180D8;
  objc_copyWeak(&v15, (a1 + 72));
  v11 = v3;
  v9 = *(a1 + 32);
  v4 = *(&v9 + 1);
  v5 = *(a1 + 48);
  v14 = *(a1 + 64);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v15);
}

void __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if ([*(a1 + 32) savableFields] == 7)
    {
      v3 = *(a1 + 48);
      v4 = *(*(a1 + 40) + 1136);
      v5 = *(a1 + 56);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_5;
      v29[3] = &unk_1E8012C28;
      v6 = &v30;
      v30 = *(a1 + 72);
      [v4 insertFPANCardWithDescriptor:v3 credential:v5 completion:v29];
    }

    else
    {
      v7 = MEMORY[0x1E69DC648];
      v8 = PKLocalizedPaymentString(&cfstr_FpanCardDetail.isa);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_6;
      v25[3] = &unk_1E80180B0;
      v6 = &v26;
      v9 = *(a1 + 48);
      v10 = *(a1 + 32);
      v22 = *(a1 + 40);
      v11 = *(a1 + 56);
      *&v12 = v22;
      *(&v12 + 1) = v11;
      *&v13 = v9;
      *(&v13 + 1) = v10;
      v26 = v13;
      v27 = v12;
      v28 = *(a1 + 72);
      v14 = [v7 actionWithTitle:v8 style:0 handler:v25];

      v15 = MEMORY[0x1E69DC648];
      v16 = PKLocalizedString(&cfstr_Cancel.isa);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_8;
      v23[3] = &unk_1E80112E8;
      v24 = *(a1 + 64);
      v17 = [v15 actionWithTitle:v16 style:1 handler:v23];

      v18 = MEMORY[0x1E69DC650];
      v19 = PKLocalizedPaymentString(&cfstr_FpanCardDetail_0.isa);
      v20 = [v18 alertControllerWithTitle:0 message:v19 preferredStyle:0];

      [v20 addAction:v14];
      [v20 addAction:v17];
      v21 = [WeakRetained pkui_frontMostViewController];
      [v21 presentViewController:v20 animated:1 completion:0];
    }
  }
}

void __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) matchedCard];
  v4 = [v3 identifier];
  [v2 setIdentifier:v4];

  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 1136);
  v7 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__PKAccountOtherCardNumbersViewController_addAutoFillCardFinishedWith_credential_viewController___block_invoke_7;
  v8[3] = &unk_1E8012C28;
  v9 = *(a1 + 64);
  [v6 updateFPANCardWithDescriptor:v7 credential:v5 completion:v8];
}

- (void)_updateSavedCardInformation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PKMutableAutofillCardCredential *)self->_fpanCardCredential primaryAccountNumber];
  v4 = [v3 pk_zString];

  v23 = [(PKFPANCardDescriptor *)self->_fpanCard cardNickname];
  v5 = [(PKMutableAutofillCardCredential *)self->_fpanCardCredential cardholderName];
  v6 = [(PKMutableAutofillCardCredential *)self->_fpanCardCredential expirationDate];
  v7 = [(PKMutableAutofillCardCredential *)self->_fpanCardCredential securityCode];
  v24 = [v7 pk_zString];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = self;
  v8 = self->_fields;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 currentValue];
          v15 = v4;
          v4 = v14;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v13 currentValue];
            v15 = v5;
            v5 = v16;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v13 currentValue];
              v15 = v6;
              v6 = v17;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [v13 currentValue];
                v15 = v24;
                v24 = v18;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v19 = [v13 currentValue];
                v15 = v23;
                v23 = v19;
              }
            }
          }
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  if (v4 && [v4 length])
  {
    [(PKFPANCardDescriptor *)v22->_fpanCard setCardNickname:v23];
    v20 = [objc_alloc(MEMORY[0x1E69B89D0]) initWithCardholderName:v5 pan:v4 expirationDate:v6 securityCode:v24 billingAddress:0];
    fpanCardCredential = v22->_fpanCardCredential;
    v22->_fpanCardCredential = v20;

    [(PKAutoFillCardManager *)v22->_cardManager updateFPANCardWithDescriptor:v22->_fpanCard credential:v22->_fpanCardCredential completion:&__block_literal_global_463];
  }
}

void __70__PKAccountOtherCardNumbersViewController__updateSavedCardInformation__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 localizedDescription];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKAccountOtherCardNumbersViewController: encountered error when updating FPAN card: %@", &v5, 0xCu);
    }
  }
}

- (void)virtualCardEnrollmentViewController:(id)a3 didCompleteWithSuccess:(BOOL)a4
{
  v4 = a4;
  [(PKAccountOtherCardNumbersViewController *)self dismissViewControllerAnimated:1 completion:0];
  if (v4)
  {
    v7 = [(PKAccountOtherCardNumbersViewController *)self navigationController];
    v6 = [v7 popViewControllerAnimated:0];
  }
}

- (void)physicalCardsChanged:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PKAccountOtherCardNumbersViewController_physicalCardsChanged_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E8011828;
  objc_copyWeak(&v13, &location);
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __85__PKAccountOtherCardNumbersViewController_physicalCardsChanged_forAccountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 134);
    if (v4)
    {
      v14 = v3;
      v5 = *(a1 + 32);
      v6 = [v4 accountIdentifier];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (!v7 || !v8)
        {

LABEL_13:
          goto LABEL_14;
        }

        v10 = [v7 isEqualToString:v8];

        if ((v10 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v11 = v14[1090];

      v3 = v14;
      if (v11 == 1)
      {
        v12 = [*(a1 + 40) pk_hasObjectPassingTest:&__block_literal_global_466];
        v3 = v14;
        if (v12)
        {
          v14[1090] = 0;
          v13 = *(v14 + 132);
          *(v14 + 132) = 0;

          [v14 _updateCardNumbersConfigurationAnimated:1];
LABEL_14:
          v3 = v14;
        }
      }
    }
  }
}

uint64_t __85__PKAccountOtherCardNumbersViewController_physicalCardsChanged_forAccountIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = [v2 accountUserAltDSID];
    v4 = PKCurrentUserAltDSID();
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0;
      if (v5 && v6)
      {
        v8 = [v5 isEqualToString:v6];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end