@interface PKTransactionSupportTopicsViewController
- (BOOL)shouldShowSupportLink:(id)a3;
- (PKTransactionSupportTopicsViewController)initWithAccount:(id)a3 transaction:(id)a4 transactionSourceCollection:(id)a5 familyCollection:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8;
- (void)_cancelPaymentWithFallbackTopic:(id)a3;
- (void)_fetchSupportTopics;
- (void)_openBusinessChatForTopic:(id)a3;
- (void)_openBusinessChatWithContext:(id)a3;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 dismissAfter:(BOOL)a5;
- (void)_redirectUserToLegacyReportIssue;
- (void)_reloadSectionControllerWithTopics:(id)a3;
- (void)_setBarButtonSpinnerHidden:(BOOL)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)dealloc;
- (void)deselectCells;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)openBusinessChatForTopic:(id)a3;
- (void)reloadItem:(id)a3 animated:(BOOL)a4;
- (void)showExplanationForTopic:(id)a3;
- (void)showMerchantDetailsForTransaction;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKTransactionSupportTopicsViewController

- (PKTransactionSupportTopicsViewController)initWithAccount:(id)a3 transaction:(id)a4 transactionSourceCollection:(id)a5 familyCollection:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v28 = a7;
  v29.receiver = self;
  v29.super_class = PKTransactionSupportTopicsViewController;
  v18 = [(PKPaymentSetupOptionsViewController *)&v29 initWithContext:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_account, a3);
    objc_storeStrong(&v19->_transaction, a4);
    objc_storeStrong(&v19->_transactionSourceCollection, a5);
    objc_storeStrong(&v19->_familyCollection, a6);
    objc_storeStrong(&v19->_accountUserCollection, a7);
    v20 = [(NSSet *)v19->_physicalCards copy];
    physicalCards = v19->_physicalCards;
    v19->_physicalCards = v20;

    v19->_loadingTopics = 0;
    v22 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v19->_paymentService;
    v19->_paymentService = v22;

    [(PKPaymentService *)v19->_paymentService registerObserver:v19];
    v24 = [(PKTransactionSupportTopicsViewController *)v19 navigationItem];
    v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v19 action:sel__cancelTapped];
    [v24 setLeftBarButtonItem:v25];

    [v24 setBackButtonDisplayMode:2];
    v26 = PKLocalizedPaymentString(&cfstr_TransactionDet_44.isa);
    [v24 setTitle:v26];
  }

  return v19;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKTransactionSupportTopicsViewController;
  [(PKTransactionSupportTopicsViewController *)&v3 dealloc];
}

- (void)_fetchSupportTopics
{
  self->_loadingTopics = 1;
  [(PKTransactionSupportTopicsViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  v3 = objc_alloc_init(MEMORY[0x1E69B84D0]);
  v4 = [(PKAccount *)self->_account accountBaseURL];
  [v3 setBaseURL:v4];

  v5 = [(PKAccount *)self->_account accountIdentifier];
  [v3 setAccountIdentifier:v5];

  [v3 setTransaction:self->_transaction];
  objc_initWeak(&location, self);
  v6 = [MEMORY[0x1E69B8EF8] sharedService];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKTransactionSupportTopicsViewController__fetchSupportTopics__block_invoke;
  v7[3] = &unk_1E8014AD0;
  objc_copyWeak(&v8, &location);
  [v6 supportTopicsWithRequest:v3 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__PKTransactionSupportTopicsViewController__fetchSupportTopics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PKTransactionSupportTopicsViewController__fetchSupportTopics__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __63__PKTransactionSupportTopicsViewController__fetchSupportTopics__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(WeakRetained + 1392) = 0;
    v15 = WeakRetained;
    [WeakRetained _setNeedsUpdateContentUnavailableConfiguration];
    v3 = [*(a1 + 32) topics];

    if (v3)
    {
      v4 = [*(a1 + 32) topics];
      v5 = [v4 count];

      if (v5)
      {
        v6 = [*(a1 + 32) topics];
        [v15 _reloadSectionControllerWithTopics:v6];
      }

      else
      {
        v6 = [v15[166] accountUserForTransaction:v15[163]];
        v7 = v15[165];
        v8 = [v6 altDSID];
        v9 = [v7 familyMemberForAltDSID:v8];

        v10 = [v15[163] transactionType];
        if ((v10 - 13) < 2)
        {
          v11 = 11;
        }

        else if (v10 == 7)
        {
          if ([v15[163] adjustmentTypeReason] == 3)
          {
            v11 = 12;
          }

          else
          {
            v11 = 13;
          }
        }

        else if (v10 == 10)
        {
          v11 = 9;
        }

        else
        {
          v11 = 5;
        }

        v12 = [PKBusinessChatTransactionDisputeContext alloc];
        v13 = [v15[164] paymentPass];
        v14 = [(PKBusinessChatTransactionDisputeContext *)v12 initWithPaymentPass:v13 transaction:v15[163] account:v15[162] accountUser:v6 familyMember:v9 physicalCards:v15[167] intent:v11];

        [v15 _openBusinessChatWithContext:v14];
      }
    }

    else
    {
      [v15 _redirectUserToLegacyReportIssue];
    }

    WeakRetained = v15;
  }
}

- (void)_redirectUserToLegacyReportIssue
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [PKReportIssueViewController alloc];
  transaction = self->_transaction;
  transactionSourceCollection = self->_transactionSourceCollection;
  v6 = [(PKTransactionSourceCollection *)transactionSourceCollection paymentPass];
  v7 = [(PKReportIssueViewController *)v3 initWithTransaction:transaction transactionSourceCollection:transactionSourceCollection paymentPass:v6 familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection bankConnectInstitution:0 physicalCards:self->_physicalCards detailViewStyle:0 context:0];

  v8 = [(PKTransactionSupportTopicsViewController *)self navigationController];
  if (v8)
  {
    v10[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v8 setViewControllers:v9 animated:0];
  }
}

- (void)_reloadSectionControllerWithTopics:(id)a3
{
  v34[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [[PKDashboardPaymentTransactionItemPresenter alloc] initWithContext:5 detailViewStyle:0 avatarViewDelegate:self];
    v6 = [[PKDashboardPaymentTransactionItem alloc] initWithTransactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection transaction:self->_transaction account:self->_account accountUserCollection:self->_accountUserCollection bankConnectInstitution:0];
    v7 = [PKTransactionSupportTransactionSectionController alloc];
    v8 = [(PKDynamicCollectionViewController *)self collectionView];
    v32 = v5;
    v9 = [(PKTransactionSupportTransactionSectionController *)v7 initWithTransactionItem:v6 transactionItemPresenter:v5 collectionView:v8];
    transactionSectionController = self->_transactionSectionController;
    self->_transactionSectionController = v9;

    v11 = [PKAccountSupportTopicsSectionController alloc];
    account = self->_account;
    v13 = PKLocalizedFeatureString();
    v14 = [v13 localizedUppercaseString];
    v15 = [(PKAccountSupportTopicsSectionController *)v11 initWithAccount:account topics:v4 sectionTitle:v14 delegate:self];
    sectionTopicController = self->_sectionTopicController;
    self->_sectionTopicController = v15;

    v17 = [(PKPaymentTransaction *)self->_transaction merchant];
    v18 = [v17 rawName];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = [v17 name];
      if (!v19)
      {
        goto LABEL_11;
      }
    }

    v20 = [v17 displayName];
    v19 = v19;
    v21 = v20;
    v22 = v21;
    if (v19 == v21)
    {
    }

    else
    {
      if (!v21)
      {

LABEL_13:
        v28 = [[PKTransactionSupportStatementNameSectionController alloc] initWithMerchantStatementName:v19];
        merchantNameSectionController = self->_merchantNameSectionController;
        self->_merchantNameSectionController = v28;

        v30 = self->_merchantNameSectionController;
        v34[0] = self->_transactionSectionController;
        v34[1] = v30;
        v34[2] = self->_sectionTopicController;
        v25 = MEMORY[0x1E695DEC8];
        v26 = v34;
        v27 = 3;
        goto LABEL_14;
      }

      v23 = [v19 isEqualToString:v21];

      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    v24 = self->_sectionTopicController;
    v33[0] = self->_transactionSectionController;
    v33[1] = v24;
    v25 = MEMORY[0x1E695DEC8];
    v26 = v33;
    v27 = 2;
LABEL_14:
    v31 = [v25 arrayWithObjects:v26 count:v27];
    [(PKPaymentSetupOptionsViewController *)self setSections:v31 animated:1];

    goto LABEL_15;
  }

  [(PKTransactionSupportTopicsViewController *)self openBusinessChatForTopic:0];
LABEL_15:
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKTransactionSupportTopicsViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v3];

  [(PKTransactionSupportTopicsViewController *)self _fetchSupportTopics];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKTransactionSupportTopicsViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKDynamicCollectionViewController *)self collectionView];
    v4 = [(PKTransactionSupportTopicsViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  if (self->_loadingTopics)
  {
    v4 = MEMORY[0x1E69DC8C8];
    v5 = a3;
    v6 = [v4 loadingConfiguration];
    v7 = [v6 updatedConfigurationForState:v5];
  }

  else
  {
    v7 = 0;
  }

  [(PKTransactionSupportTopicsViewController *)self _setContentUnavailableConfiguration:v7];
}

- (void)showExplanationForTopic:(id)a3
{
  v11 = a3;
  v4 = [v11 issueType];
  if (v4 >= 4)
  {
    if (v4 != 4)
    {
      goto LABEL_6;
    }

    v6 = [PKReportIssueViewController alloc];
    transaction = self->_transaction;
    transactionSourceCollection = self->_transactionSourceCollection;
    v9 = [(PKTransactionSourceCollection *)transactionSourceCollection paymentPass];
    v5 = [(PKReportIssueViewController *)v6 initWithTransaction:transaction transactionSourceCollection:transactionSourceCollection paymentPass:v9 familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection bankConnectInstitution:0 physicalCards:self->_physicalCards detailViewStyle:0 context:1];
  }

  else
  {
    v5 = [[PKAccountSupportTopicExplanationViewController alloc] initWithAccount:self->_account topic:v11 delegate:self];
  }

  v10 = [(PKTransactionSupportTopicsViewController *)self navigationController];
  [v10 pushViewController:v5 animated:1];

LABEL_6:
}

- (void)deselectCells
{
  v2.receiver = self;
  v2.super_class = PKTransactionSupportTopicsViewController;
  [(PKDynamicCollectionViewController *)&v2 deselectCells];
}

- (void)reloadItem:(id)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = PKTransactionSupportTopicsViewController;
  [(PKDynamicCollectionViewController *)&v4 reloadItem:a3 animated:a4];
}

- (BOOL)shouldShowSupportLink:(id)a3
{
  if ([a3 action] != 1)
  {
    return 1;
  }

  v4 = [(PKPaymentTransaction *)self->_transaction merchant];
  v5 = 0;
  if (PKIsPhone() && v4)
  {
    if ([v4 shouldIgnoreMapsMatches])
    {
      v5 = 0;
    }

    else
    {
      v6 = [v4 mapsMerchant];
      v5 = v6 != 0;
    }
  }

  return v5;
}

- (void)showMerchantDetailsForTransaction
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!self->_loadingMapsViewController)
  {
    v3 = [(PKPaymentTransaction *)self->_transaction merchant];
    v4 = [v3 mapsMerchant];
    v5 = [v4 identifier];

    if (v5)
    {
      self->_loadingMapsViewController = 1;
      loadingMapsTimer = self->_loadingMapsTimer;
      if (loadingMapsTimer)
      {
        dispatch_source_cancel(loadingMapsTimer);
        v7 = self->_loadingMapsTimer;
        self->_loadingMapsTimer = 0;
      }

      objc_initWeak(&location, self);
      v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v9 = self->_loadingMapsTimer;
      self->_loadingMapsTimer = v8;

      v10 = self->_loadingMapsTimer;
      v11 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v12 = self->_loadingMapsTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __77__PKTransactionSupportTopicsViewController_showMerchantDetailsForTransaction__block_invoke;
      handler[3] = &unk_1E8010998;
      objc_copyWeak(&v20, &location);
      dispatch_source_set_event_handler(v12, handler);
      dispatch_resume(self->_loadingMapsTimer);
      v13 = objc_alloc_init(MEMORY[0x1E696F260]);
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
      v22[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v13 _setMuids:v15];

      v16 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v13];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__PKTransactionSupportTopicsViewController_showMerchantDetailsForTransaction__block_invoke_2;
      v17[3] = &unk_1E8016120;
      objc_copyWeak(v18, &location);
      v18[1] = v5;
      [v16 startWithCompletionHandler:v17];
      objc_destroyWeak(v18);

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

void __77__PKTransactionSupportTopicsViewController_showMerchantDetailsForTransaction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[177];
    v5 = v2;
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = v5[177];
      v5[177] = 0;

      v2 = v5;
    }

    [v2 _setBarButtonSpinnerHidden:0];
    v2 = v5;
  }
}

void __77__PKTransactionSupportTopicsViewController_showMerchantDetailsForTransaction__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PKTransactionSupportTopicsViewController_showMerchantDetailsForTransaction__block_invoke_3;
  v9[3] = &unk_1E80160F8;
  objc_copyWeak(v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v12[1] = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(v12);
}

void __77__PKTransactionSupportTopicsViewController_showMerchantDetailsForTransaction__block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[177];
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = v3[177];
      v3[177] = 0;
    }

    *(v3 + 1409) = 0;
    [v3 _setBarButtonSpinnerHidden:1];
    if (*(a1 + 32) || ([*(a1 + 40) mapItems], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = [v8 localizedDescription];
        }

        else
        {
          v9 = @"no map items.";
        }

        v23 = 134218242;
        v24 = v7;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKTransactionHistoryViewController: MKLocalSearch could not resolve merchant maps for mapsID: %llu. Error: %@", &v23, 0x16u);
        if (v8)
        {
        }
      }

      v17 = MEMORY[0x1E69DC650];
      v18 = PKLocalizedPaymentString(&cfstr_DashboardMapsM.isa);
      v19 = [v17 alertControllerWithTitle:0 message:v18 preferredStyle:1];

      v20 = MEMORY[0x1E69DC648];
      v21 = PKLocalizedPaymentString(&cfstr_DashboardMapsM_0.isa);
      v22 = [v20 actionWithTitle:v21 style:0 handler:0];
      [v19 addAction:v22];

      [v3 presentViewController:v19 animated:1 completion:0];
    }

    else
    {
      v12 = [PKMerchantMapViewController alloc];
      v13 = [*(a1 + 40) mapItems];
      v14 = [v13 firstObject];
      v15 = [(PKMerchantMapViewController *)v12 initWithMapItem:v14 configOptions:0x2000000000000];

      v16 = [v3 navigationController];
      [v16 pushViewController:v15 animated:1];
    }
  }
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 dismissAfter:(BOOL)a5
{
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedPaymentString(&cfstr_TransactionDet_45.isa);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PKTransactionSupportTopicsViewController__presentAlertWithTitle_message_dismissAfter___block_invoke;
  v11[3] = &unk_1E8016148;
  v12 = a5;
  v11[4] = self;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v11];
  [v7 addAction:v10];

  [(PKTransactionSupportTopicsViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __88__PKTransactionSupportTopicsViewController__presentAlertWithTitle_message_dismissAfter___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) presentingViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)openBusinessChatForTopic:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentTransaction *)self->_transaction accountIdentifier];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v8 = [v7 businessChatIdentifier];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [(PKPaymentTransaction *)self->_transaction payments];
  if (![v10 count])
  {

LABEL_7:
    goto LABEL_8;
  }

  v11 = [(PKPaymentTransaction *)self->_transaction payments];
  v12 = [v11 firstObject];
  v13 = [v12 isCurrentlyCancellable];

  if (!v13)
  {
LABEL_8:
    [(PKTransactionSupportTopicsViewController *)self _openBusinessChatForTopic:v4];
    goto LABEL_9;
  }

  self->_cancelingPayment = 1;
  [(PKTransactionSupportTopicsViewController *)self _setBarButtonSpinnerHidden:0];
  v14 = MEMORY[0x1E69DC650];
  v15 = PKLocalizedFeatureString();
  v16 = PKLocalizedFeatureString();
  v17 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

  v18 = MEMORY[0x1E69DC648];
  v19 = PKLocalizedFeatureString();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __69__PKTransactionSupportTopicsViewController_openBusinessChatForTopic___block_invoke;
  v31[3] = &unk_1E8011310;
  v31[4] = self;
  v20 = v4;
  v32 = v20;
  v21 = [v18 actionWithTitle:v19 style:2 handler:v31];
  [v17 addAction:v21];

  v22 = MEMORY[0x1E69DC648];
  v23 = PKLocalizedFeatureString();
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __69__PKTransactionSupportTopicsViewController_openBusinessChatForTopic___block_invoke_2;
  v28 = &unk_1E8011310;
  v29 = self;
  v30 = v20;
  v24 = [v22 actionWithTitle:v23 style:1 handler:&v25];
  [v17 addAction:{v24, v25, v26, v27, v28, v29}];

  [(PKTransactionSupportTopicsViewController *)self presentViewController:v17 animated:1 completion:0];
LABEL_9:
}

uint64_t __69__PKTransactionSupportTopicsViewController_openBusinessChatForTopic___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _openBusinessChatForTopic:*(a1 + 40)];
  *(*(a1 + 32) + 1408) = 0;
  return result;
}

- (void)_setBarButtonSpinnerHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PKTransactionSupportTopicsViewController *)self navigationItem];
    [v4 setRightBarButtonItem:0];

    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = 0;
  }

  else
  {
    v6 = self->_activityIndicator;
    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v8 = self->_activityIndicator;
      self->_activityIndicator = v7;

      v6 = self->_activityIndicator;
    }

    [(UIActivityIndicatorView *)v6 startAnimating];
    v10 = [(PKTransactionSupportTopicsViewController *)self navigationItem];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicator];
    [(UIActivityIndicatorView *)v10 setRightBarButtonItem:v9];

    activityIndicator = v10;
  }
}

- (void)_cancelPaymentWithFallbackTopic:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentTransaction *)self->_transaction payments];
  v6 = [v5 firstObject];

  v7 = objc_alloc_init(MEMORY[0x1E69B8480]);
  v8 = [(PKAccount *)self->_account accountIdentifier];
  [v7 setAccountIdentifier:v8];

  v9 = [(PKAccount *)self->_account accountBaseURL];
  [v7 setBaseURL:v9];

  v10 = [v6 referenceIdentifier];
  [v7 setPaymentReferenceIdentifier:v10];

  objc_initWeak(&location, self);
  paymentWebService = self->_paymentWebService;
  if (!paymentWebService)
  {
    v12 = [MEMORY[0x1E69B8EF8] sharedService];
    v13 = self->_paymentWebService;
    self->_paymentWebService = v12;

    paymentWebService = self->_paymentWebService;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke;
  v15[3] = &unk_1E8016198;
  objc_copyWeak(&v17, &location);
  v14 = v4;
  v16 = v14;
  [(PKPaymentWebService *)paymentWebService cancelPaymentWithRequest:v7 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Cancel Payment => %@:%@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke_87;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1408) = 0;
    [WeakRetained _setBarButtonSpinnerHidden:1];
    if (*(a1 + 32))
    {
      v4 = MEMORY[0x1E69DC650];
      v5 = PKLocalizedFeatureString();
      v6 = PKLocalizedFeatureString();
      v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

      v8 = MEMORY[0x1E69DC648];
      v9 = PKLocalizedFeatureString();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke_2;
      v17[3] = &unk_1E8011310;
      v17[4] = v3;
      v18 = *(a1 + 40);
      v10 = [v8 actionWithTitle:v9 style:0 handler:v17];
      [v7 addAction:v10];

      v11 = MEMORY[0x1E69DC648];
      v12 = PKLocalizedFeatureString();
      v13 = [v11 actionWithTitle:v12 style:1 handler:0];
      [v7 addAction:v13];

      [v3 presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      v7 = [MEMORY[0x1E69B8DB8] paymentService];
      v14 = v3[163];
      [v14 setTransactionStatus:5];
      v15 = [v14 transactionSourceIdentifier];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke_3;
      v16[3] = &unk_1E8016170;
      v16[4] = v3;
      [v7 insertOrUpdatePaymentTransaction:v14 forTransactionSourceIdentifier:v15 completion:v16];
    }
  }
}

void __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke_4;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__PKTransactionSupportTopicsViewController__cancelPaymentWithFallbackTopic___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [v1 presentingViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_openBusinessChatForTopic:(id)a3
{
  v11 = a3;
  v4 = [(PKAccountUserCollection *)self->_accountUserCollection accountUserForTransaction:self->_transaction];
  familyCollection = self->_familyCollection;
  v6 = [v4 altDSID];
  v7 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:v6];

  if (!v11)
  {
    v11 = [objc_alloc(MEMORY[0x1E69B8418]) initWithOtherTopicForAccount:self->_account];
  }

  v8 = [PKBusinessChatTransactionDisputeContext alloc];
  v9 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v10 = [(PKBusinessChatTransactionDisputeContext *)v8 initWithPaymentPass:v9 transaction:self->_transaction account:self->_account accountUser:v4 familyMember:v7 physicalCards:self->_physicalCards topic:v11];

  [(PKTransactionSupportTopicsViewController *)self _openBusinessChatWithContext:v10];
}

- (void)_openBusinessChatWithContext:(id)a3
{
  v4 = a3;
  if (!self->_businessChatController)
  {
    v5 = objc_alloc_init(PKBusinessChatController);
    businessChatController = self->_businessChatController;
    self->_businessChatController = v5;
  }

  objc_initWeak(&location, self);
  v7 = self->_businessChatController;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PKTransactionSupportTopicsViewController__openBusinessChatWithContext___block_invoke;
  v8[3] = &unk_1E8011338;
  objc_copyWeak(&v9, &location);
  [(PKBusinessChatController *)v7 openBusinessChatWithContext:v4 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __73__PKTransactionSupportTopicsViewController__openBusinessChatWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__PKTransactionSupportTopicsViewController__openBusinessChatWithContext___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __73__PKTransactionSupportTopicsViewController__openBusinessChatWithContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    if (v3)
    {
      v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      [v5 presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v4 = [WeakRetained presentingViewController];
      [v4 dismissViewControllerAnimated:1 completion:0];
    }

    WeakRetained = v5;
  }
}

- (void)didUpdateFamilyMembers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PKTransactionSupportTopicsViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __67__PKTransactionSupportTopicsViewController_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  obj = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 1320), obj);
    [*(a1 + 40) reloadDataForSection:*(*(a1 + 40) + 1368) animated:1];
  }
}

@end